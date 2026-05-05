import katex from 'katex';

// Load the custom macros from website-macros.json
import websiteMacros from '../data/website-macros.json';

// Base macros for common math notation
const baseMacros: Record<string, string> = {
  '\\slashed': '\\not{#1}',
  '\\bra': '\\langle #1 |',
  '\\ket': '| #1 \\rangle',
  '\\braket': '\\langle #1 | #2 \\rangle',
  '\\Tr': '\\operatorname{Tr}',
  '\\Lan': '\\operatorname{Lan}',
  '\\Ran': '\\operatorname{Ran}',
  '\\abs': '\\left| #1 \\right|',
  '\\norm': '\\left\\| #1 \\right\\|',
  // Override some website macros that use #1 syntax
};

// Merge: base macros + website macros (website macros take precedence)
const allMacros: Record<string, string> = {
  ...baseMacros,
  ...(websiteMacros as Record<string, string>),
};

function decodeHtmlEntities(s: string): string {
  return s
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&amp;/g, '&')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/&nbsp;/g, ' ');
}

function renderMathString(tex: string, displayMode: boolean): string {
  const decoded = decodeHtmlEntities(tex);
  try {
    return katex.renderToString(decoded, {
      displayMode,
      throwOnError: false,
      trust: true,
      strict: false,
      output: 'html',
      macros: allMacros,
    });
  } catch {
    return `<span class="math-error">${decoded}</span>`;
  }
}

export function renderMath(html: string): string {
  let result = html;

  // 1. Display math: \[...\]
  result = result.replace(/\\\[([\s\S]*?)\\\]/g, (_match, tex) => {
    return renderMathString(tex, true);
  });

  // 2. Display math: $$...$$
  result = result.replace(/\$\$([\s\S]*?)\$\$/g, (_match, tex) => {
    return renderMathString(tex, true);
  });

  // 3. Inline math: \(...\)
  result = result.replace(/\\\(([\s\S]*?)\\\)/g, (_match, tex) => {
    return renderMathString(tex, false);
  });

  // 4. Inline math from pandoc: <span class="math inline">\(...\)</span>
  result = result.replace(
    /<span class="math inline">\\\(([\s\S]*?)\\\)<\/span>/g,
    (_match, tex) => {
      return renderMathString(tex, false);
    }
  );

  // 5. Display math from pandoc: <span class="math display">\[...\]</span>
  result = result.replace(
    /<span class="math display">\\\[([\s\S]*?)\\\]<\/span>/g,
    (_match, tex) => {
      return renderMathString(tex, true);
    }
  );

  return result;
}

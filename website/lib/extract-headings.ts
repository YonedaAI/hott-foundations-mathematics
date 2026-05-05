export interface Heading {
  id: string;
  text: string;
  level: number;
}

/**
 * Extract h1/h2/h3 headings (with id attributes) from pandoc-generated HTML.
 * Strips nested HTML tags to get plain text.
 */
export function extractHeadings(html: string): Heading[] {
  const headings: Heading[] = [];

  const re = /<h([123])[^>]*\sid="([^"]+)"[^>]*>([\s\S]*?)<\/h[123]>/gi;
  let match;

  while ((match = re.exec(html)) !== null) {
    const level = parseInt(match[1], 10);
    const id = match[2];
    const rawHtml = match[3];

    let cleaned = rawHtml;
    // Strip pandoc math wrapper but keep raw \(...\) so we can fall through.
    cleaned = cleaned.replace(/<span class="math (?:inline|display)">([\s\S]*?)<\/span>/g, '$1');
    // Drop KaTeX MathML annotations entirely (they are raw LaTeX).
    cleaned = cleaned.replace(/<span class="katex-mathml">[\s\S]*?<\/span>/g, '');
    cleaned = cleaned.replace(/<annotation[^>]*>[\s\S]*?<\/annotation>/g, '');
    // Strip any remaining \( \) \[ \] math markers — symbol contents will be human-readable.
    cleaned = cleaned.replace(/\\[()\[\]]/g, '');
    const text = cleaned
      .replace(/<[^>]+>/g, '')
      .replace(/&amp;/g, '&')
      .replace(/&lt;/g, '<')
      .replace(/&gt;/g, '>')
      .replace(/&quot;/g, '"')
      .replace(/&#39;/g, "'")
      .replace(/\s+/g, ' ')
      .trim();

    if (id && text) {
      headings.push({ id, level, text });
    }
  }

  return headings;
}

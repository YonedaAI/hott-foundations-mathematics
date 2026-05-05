import type { Metadata } from 'next';
import { notFound } from 'next/navigation';
import { readFileSync } from 'fs';
import { join } from 'path';
import papers from '../../../data/papers.json';
import { renderMath } from '../../../lib/render-math';
import { extractHeadings } from '../../../lib/extract-headings';
import { TableOfContents } from '../../components/TableOfContents';

interface Props {
  params: { slug: string };
}

export function generateStaticParams() {
  return papers.map((p) => ({ slug: p.slug }));
}

function cleanTitle(title: string): string {
  return title
    .replace(/\\\\/g, ' ')
    .replace(/\\large\s*/g, '')
    .replace(/\$([^$]+)\$/g, '$1')
    .replace(/\s+/g, ' ')
    .trim();
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const paper = papers.find((p) => p.slug === params.slug);
  if (!paper) return {};

  const title = cleanTitle(paper.title);
  const description = paper.abstract.replace(/\$([^$]+)\$/g, (_, m) => m).slice(0, 300);

  return {
    title,
    description,
    openGraph: {
      title,
      description,
      type: 'article',
      url: `/papers/${paper.slug}/`,
      images: [{ url: `/og/og-${paper.slug}.png`, width: 1200, height: 630 }],
    },
    twitter: {
      card: 'summary_large_image',
      title,
      description,
      images: [`/og/og-${paper.slug}.png`],
    },
  };
}

export default function PaperPage({ params }: Props) {
  const paperIndex = papers.findIndex((p) => p.slug === params.slug);
  if (paperIndex === -1) notFound();

  const paper = papers[paperIndex];
  const prevPaper = paperIndex > 0 ? papers[paperIndex - 1] : null;
  const nextPaper = paperIndex < papers.length - 1 ? papers[paperIndex + 1] : null;

  // Read HTML at build time
  const htmlPath = join(process.cwd(), 'docs', 'papers', `${paper.slug}.html`);

  let rawHtml: string;
  try {
    rawHtml = readFileSync(htmlPath, 'utf-8');
  } catch {
    notFound();
  }

  // Pre-render math server-side at build time
  const renderedHtml = renderMath(rawHtml);

  // Extract TOC headings
  const headings = extractHeadings(renderedHtml);

  const cleanedTitle = cleanTitle(paper.title);

  return (
    <>
      {/* PDF download button (fixed position) */}
      <a
        href={paper.pdfPath}
        target="_blank"
        rel="noopener noreferrer"
        className="pdf-download-btn"
        aria-label={`Download PDF of ${cleanedTitle}`}
      >
        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" aria-hidden="true">
          <path
            d="M8 1v9M5 7l3 3 3-3M2 11v2a1 1 0 001 1h10a1 1 0 001-1v-2"
            stroke="currentColor"
            strokeWidth="1.5"
            strokeLinecap="round"
            strokeLinejoin="round"
          />
        </svg>
        PDF
      </a>

      <div className="paper-layout">
        {/* TOC sidebar (client component for active tracking) */}
        <aside>
          <TableOfContents headings={headings} />
        </aside>

        {/* Main content column */}
        <div>
          {/* Paper header */}
          <header
            style={{
              marginBottom: '2rem',
              paddingBottom: '1.5rem',
              borderBottom: '1px solid var(--border)',
            }}
          >
            <div
              style={{
                display: 'flex',
                alignItems: 'center',
                gap: '0.75rem',
                marginBottom: '0.75rem',
                flexWrap: 'wrap',
              }}
            >
              <span className="part-badge">Part {paper.part}</span>
              <span
                style={{
                  fontFamily: 'Inter, sans-serif',
                  fontSize: '0.78rem',
                  color: 'var(--text-dim)',
                }}
              >
                {paper.pages} pages
              </span>
            </div>

            <h1
              style={{
                fontFamily: 'Inter, sans-serif',
                fontSize: 'clamp(1.5rem, 3vw, 2rem)',
                fontWeight: 700,
                lineHeight: 1.25,
                color: 'var(--text)',
                marginBottom: '1rem',
              }}
            >
              {cleanedTitle}
            </h1>

            <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap' }}>
              <a
                href={paper.pdfPath}
                target="_blank"
                rel="noopener noreferrer"
                className="card-btn card-btn-ghost"
              >
                Download PDF
              </a>
              {paper.hasHaskell && (
                <a
                  href={`https://github.com/YonedaAI/${paper.slug}`}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="card-btn card-btn-ghost"
                >
                  Haskell Code
                </a>
              )}
              {paper.hasLean && (
                <a
                  href={`https://github.com/YonedaAI/${paper.slug}-lean`}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="card-btn card-btn-ghost"
                >
                  Lean Proofs
                </a>
              )}
            </div>
          </header>

          {/* Paper HTML — rendered server-side, math pre-computed with KaTeX */}
          <article
            className="paper-content"
            dangerouslySetInnerHTML={{ __html: renderedHtml }}
          />

          {/* Prev / Next navigation */}
          <nav className="paper-nav" aria-label="Paper navigation">
            {prevPaper ? (
              <a href={`/papers/${prevPaper.slug}/`} className="paper-nav-item">
                <span className="paper-nav-label">Previous</span>
                <span className="paper-nav-title">
                  Part {prevPaper.part}: {cleanTitle(prevPaper.title)}
                </span>
              </a>
            ) : (
              <div />
            )}
            {nextPaper ? (
              <a href={`/papers/${nextPaper.slug}/`} className="paper-nav-item next">
                <span className="paper-nav-label">Next</span>
                <span className="paper-nav-title">
                  Part {nextPaper.part}: {cleanTitle(nextPaper.title)}
                </span>
              </a>
            ) : (
              <div />
            )}
          </nav>
        </div>
      </div>
    </>
  );
}

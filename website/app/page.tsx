import type { Metadata } from 'next';
import Image from 'next/image';
import papers from '../data/papers.json';

export const metadata: Metadata = {
  title: 'HoTT Foundations of Mathematics, Volume II',
  description:
    'Six open problems in homotopy type theory, unified toward ζ(s)=0 as a HoTT-native statement. Analytic number theory reformulated in HoTT.',
  openGraph: {
    title: 'HoTT Foundations of Mathematics, Volume II',
    description:
      'Six open problems in homotopy type theory, unified toward ζ(s)=0 as a HoTT-native statement.',
    type: 'website',
    url: '/',
    images: [{ url: '/og/og-default.png', width: 1200, height: 630 }],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'HoTT Foundations of Mathematics, Volume II',
    description:
      'Six open problems in HoTT unified toward ζ(s)=0 as a HoTT-native statement.',
    images: ['/og/og-default.png'],
  },
};

function getCategoryClass(paper: { slug: string }): string {
  const slug = paper.slug;
  if (slug === 'langlands-analytic-number-theory' || slug === 'synthesis') return 'math-nt';
  if (slug === 'etcs-izf-folds' || slug === 'infinity-nno' || slug === 'directed-univalence') return 'math-ct';
  return 'math-lo';
}

function getCategoryLabel(paper: { slug: string }): string {
  const slug = paper.slug;
  if (slug === 'langlands-analytic-number-theory' || slug === 'synthesis') return 'math.NT';
  if (slug === 'etcs-izf-folds' || slug === 'infinity-nno' || slug === 'directed-univalence') return 'math.CT';
  return 'math.LO';
}

function cleanTitle(title: string): string {
  // Remove LaTeX line breaks and clean up
  return title
    .replace(/\\\\/g, ' ')
    .replace(/\\large\s*/g, '')
    .replace(/\$([^$]+)\$/g, '$1')
    .replace(/\s+/g, ' ')
    .trim();
}

function cleanAbstract(abstract: string): string {
  return abstract
    .replace(/\$([^$]+)\$/g, (_, m) => m)
    .replace(/\\([a-zA-Z]+)/g, '')
    .replace(/\s+/g, ' ')
    .trim();
}

export default function HomePage() {
  return (
    <>
      {/* Hero */}
      <section className="hero" style={{ position: 'relative', zIndex: 1 }}>
        {/* Decorative zeta symbol */}
        <div
          aria-hidden
          style={{
            position: 'absolute',
            top: '50%',
            left: '50%',
            transform: 'translate(-50%, -50%)',
            fontSize: 'clamp(8rem, 20vw, 18rem)',
            fontFamily: 'Georgia, serif',
            fontWeight: 700,
            color: 'rgba(251,191,36,0.04)',
            userSelect: 'none',
            pointerEvents: 'none',
            lineHeight: 1,
          }}
        >
          ζ
        </div>

        <div style={{ position: 'relative', zIndex: 1, maxWidth: '800px', marginInline: 'auto' }}>
          <div
            style={{
              display: 'inline-flex',
              alignItems: 'center',
              gap: '0.5rem',
              padding: '0.3rem 1rem',
              background: 'rgba(251,191,36,0.1)',
              border: '1px solid rgba(251,191,36,0.25)',
              borderRadius: '9999px',
              fontFamily: 'Inter, sans-serif',
              fontSize: '0.78rem',
              fontWeight: 600,
              letterSpacing: '0.1em',
              textTransform: 'uppercase',
              color: 'var(--accent)',
              marginBottom: '1.5rem',
            }}
          >
            Volume II — Seven Papers
          </div>

          <h1
            style={{
              fontSize: 'clamp(2rem, 5vw, 3.25rem)',
              fontFamily: 'Inter, sans-serif',
              fontWeight: 700,
              letterSpacing: '-0.02em',
              lineHeight: 1.15,
              color: 'var(--text)',
              marginBottom: '1.25rem',
            }}
          >
            HoTT Foundations of{' '}
            <span
              style={{
                background: 'linear-gradient(135deg, var(--accent) 0%, var(--accent-secondary) 100%)',
                WebkitBackgroundClip: 'text',
                WebkitTextFillColor: 'transparent',
                backgroundClip: 'text',
              }}
            >
              Mathematics
            </span>
          </h1>

          <p
            style={{
              fontSize: 'clamp(1rem, 2vw, 1.2rem)',
              fontFamily: 'Crimson Pro, Georgia, serif',
              color: 'var(--text-muted)',
              lineHeight: 1.7,
              maxWidth: '640px',
              marginInline: 'auto',
              marginBottom: '2rem',
            }}
          >
            Six open problems in homotopy type theory, unified toward{' '}
            <span style={{ color: 'var(--accent)', fontStyle: 'italic' }}>ζ(s)=0</span> as a
            HoTT-native statement. Analytic number theory reformulated through coinductive
            structures, cubical type theory, and categorical foundations.
          </p>

          {/* Stats row */}
          <div
            style={{
              display: 'flex',
              justifyContent: 'center',
              gap: '2.5rem',
              flexWrap: 'wrap',
            }}
          >
            {[
              { value: '7', label: 'Papers' },
              {
                value: `${papers.reduce((s, p) => s + p.pages, 0)}`,
                label: 'Pages',
              },
              { value: '98', label: 'Custom Macros' },
              { value: '∞', label: 'Open Problems' },
            ].map(({ value, label }) => (
              <div key={label} style={{ textAlign: 'center' }}>
                <div
                  style={{
                    fontSize: '1.75rem',
                    fontFamily: 'Inter, sans-serif',
                    fontWeight: 700,
                    color: 'var(--accent)',
                    lineHeight: 1,
                  }}
                >
                  {value}
                </div>
                <div
                  style={{
                    fontSize: '0.78rem',
                    fontFamily: 'Inter, sans-serif',
                    color: 'var(--text-dim)',
                    marginTop: '0.25rem',
                    letterSpacing: '0.05em',
                  }}
                >
                  {label}
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Papers grid */}
      <section
        style={{
          maxWidth: '1280px',
          marginInline: 'auto',
          padding: '3rem 1.5rem',
          position: 'relative',
          zIndex: 1,
        }}
      >
        <div
          style={{
            display: 'grid',
            gridTemplateColumns: 'repeat(auto-fill, minmax(340px, 1fr))',
            gap: '1.5rem',
          }}
        >
          {papers.map((paper) => {
            const catClass = getCategoryClass(paper);
            const catLabel = getCategoryLabel(paper);
            const cleanedTitle = cleanTitle(paper.title);
            const abstract = cleanAbstract(paper.abstract).slice(0, 200);

            return (
              <article key={paper.slug} className="paper-card">
                {/* Cover image */}
                <div
                  style={{
                    position: 'relative',
                    width: '100%',
                    aspectRatio: '16/9',
                    overflow: 'hidden',
                    background: 'var(--code-bg)',
                  }}
                >
                  <Image
                    src={paper.imagePath}
                    alt={`Cover for ${cleanedTitle}`}
                    fill
                    style={{ objectFit: 'cover' }}
                    sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
                  />
                </div>

                {/* Card body */}
                <div style={{ padding: '1.25rem', display: 'flex', flexDirection: 'column', gap: '0.75rem', flex: 1 }}>
                  {/* Header row */}
                  <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: '0.5rem' }}>
                    <span className="part-badge">Part {paper.part}</span>
                    <span className={`tag-pill ${catClass}`}>{catLabel}</span>
                  </div>

                  {/* Title */}
                  <h2
                    style={{
                      fontFamily: 'Inter, sans-serif',
                      fontSize: '1rem',
                      fontWeight: 600,
                      lineHeight: 1.35,
                      color: 'var(--text)',
                      margin: 0,
                    }}
                  >
                    {cleanedTitle}
                  </h2>

                  {/* Abstract excerpt */}
                  <p
                    style={{
                      fontFamily: 'Crimson Pro, Georgia, serif',
                      fontSize: '0.95rem',
                      color: 'var(--text-muted)',
                      lineHeight: 1.6,
                      margin: 0,
                      flex: 1,
                    }}
                  >
                    {abstract}
                    {paper.abstract.length > 200 ? '…' : ''}
                  </p>

                  {/* Meta */}
                  <div
                    style={{
                      display: 'flex',
                      alignItems: 'center',
                      gap: '0.75rem',
                      fontSize: '0.78rem',
                      fontFamily: 'Inter, sans-serif',
                      color: 'var(--text-dim)',
                    }}
                  >
                    <span>{paper.pages} pp</span>
                    {paper.hasHaskell && <span style={{ color: 'var(--accent-secondary)' }}>Haskell</span>}
                    {paper.hasLean && <span style={{ color: 'var(--success)' }}>Lean</span>}
                  </div>

                  {/* Action buttons */}
                  <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap', marginTop: 'auto', paddingTop: '0.25rem' }}>
                    <a
                      href={`/papers/${paper.slug}/`}
                      className="card-btn card-btn-primary"
                    >
                      Read
                    </a>
                    <a
                      href={paper.pdfPath}
                      target="_blank"
                      rel="noopener noreferrer"
                      className="card-btn card-btn-ghost"
                    >
                      PDF
                    </a>
                    {paper.hasHaskell && (
                      <a
                        href={`https://github.com/YonedaAI/${paper.slug}`}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="card-btn card-btn-ghost"
                      >
                        Haskell
                      </a>
                    )}
                    {paper.hasLean && (
                      <a
                        href={`https://github.com/YonedaAI/${paper.slug}-lean`}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="card-btn card-btn-ghost"
                      >
                        Lean
                      </a>
                    )}
                  </div>
                </div>
              </article>
            );
          })}
        </div>
      </section>
    </>
  );
}

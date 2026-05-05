import type { Metadata } from 'next';
import { Inter } from 'next/font/google';
import './globals.css';

const inter = Inter({
  subsets: ['latin'],
  variable: '--font-inter',
  display: 'swap',
});

const siteUrl = process.env.VERCEL_PROJECT_PRODUCTION_URL
  ? `https://${process.env.VERCEL_PROJECT_PRODUCTION_URL}`
  : process.env.NEXT_PUBLIC_SITE_URL || 'https://hott-foundations-mathematics.vercel.app';

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: {
    default: 'HoTT Foundations of Mathematics, Volume II',
    template: '%s | HoTT Foundations of Mathematics',
  },
  description:
    'Six open problems in homotopy type theory, unified toward ζ(s)=0 as a HoTT-native statement. Analytic number theory reformulated in HoTT.',
  openGraph: {
    type: 'website',
    siteName: 'HoTT Foundations of Mathematics',
    images: [{ url: '/images/og/og-image.png', width: 1200, height: 630 }],
  },
  twitter: {
    card: 'summary_large_image',
    images: ['/images/og/og-image.png'],
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className={inter.variable}>
      <head>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        <link
          href="https://fonts.googleapis.com/css2?family=Crimson+Pro:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500&family=Inter:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap"
          rel="stylesheet"
        />
      </head>
      <body style={{ position: 'relative', zIndex: 1 }}>
        {/* Site Header */}
        <header className="site-header">
          <div
            style={{
              maxWidth: '1280px',
              marginInline: 'auto',
              paddingInline: '1.5rem',
              width: '100%',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'space-between',
              gap: '1rem',
            }}
          >
            <a
              href="/"
              style={{
                display: 'flex',
                alignItems: 'center',
                gap: '0.6rem',
                color: 'var(--text)',
                fontFamily: 'Inter, sans-serif',
                fontWeight: 600,
                fontSize: '0.95rem',
                letterSpacing: '-0.01em',
              }}
            >
              <span
                style={{
                  background: 'linear-gradient(135deg, var(--accent) 0%, var(--accent-secondary) 100%)',
                  WebkitBackgroundClip: 'text',
                  WebkitTextFillColor: 'transparent',
                  backgroundClip: 'text',
                  fontSize: '1.1rem',
                  fontWeight: 700,
                }}
              >
                ζ
              </span>
              <span>HoTT Foundations</span>
            </a>

            <nav
              style={{
                display: 'flex',
                alignItems: 'center',
                gap: '1.25rem',
              }}
            >
              <a
                href="/"
                style={{
                  fontFamily: 'Inter, sans-serif',
                  fontSize: '0.85rem',
                  color: 'var(--text-muted)',
                }}
              >
                Papers
              </a>
              <a
                href="https://github.com/YonedaAI"
                target="_blank"
                rel="noopener noreferrer"
                style={{
                  fontFamily: 'Inter, sans-serif',
                  fontSize: '0.85rem',
                  color: 'var(--text-muted)',
                }}
              >
                GitHub
              </a>
            </nav>
          </div>
        </header>

        {/* Main content */}
        <main style={{ position: 'relative', zIndex: 1 }}>{children}</main>

        {/* Site Footer */}
        <footer className="site-footer" style={{ position: 'relative', zIndex: 1 }}>
          <div
            style={{
              maxWidth: '1280px',
              marginInline: 'auto',
              display: 'flex',
              flexDirection: 'column',
              gap: '0.5rem',
              alignItems: 'center',
              textAlign: 'center',
            }}
          >
            <p
              style={{
                fontFamily: 'Inter, sans-serif',
                fontSize: '0.85rem',
                color: 'var(--text-dim)',
                margin: 0,
              }}
            >
              <span style={{ color: 'var(--accent)' }}>HoTT Foundations of Mathematics, Volume II</span>
              {' — '}Seven papers on homotopy type theory, category theory, and analytic number theory.
            </p>
            <p
              style={{
                fontFamily: 'Inter, sans-serif',
                fontSize: '0.8rem',
                color: 'var(--text-dim)',
                margin: 0,
              }}
            >
              <a
                href="https://github.com/YonedaAI"
                target="_blank"
                rel="noopener noreferrer"
                style={{ color: 'var(--accent-secondary)' }}
              >
                YonedaAI
              </a>
              {' · '}
              <a
                href="https://arxiv.org"
                target="_blank"
                rel="noopener noreferrer"
                style={{ color: 'var(--accent-secondary)' }}
              >
                arXiv
              </a>
            </p>
          </div>
        </footer>
      </body>
    </html>
  );
}

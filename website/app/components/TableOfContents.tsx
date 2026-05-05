'use client';
import { useState, useEffect } from 'react';

interface Heading {
  id: string;
  text: string;
  level: number;
}

interface Props {
  headings: Heading[];
}

export function TableOfContents({ headings }: Props) {
  const [activeId, setActiveId] = useState('');
  const [isOpen, setIsOpen] = useState(false);

  useEffect(() => {
    const onScroll = () => {
      const scrollY = window.scrollY + 100; // offset for sticky header
      let current = '';
      for (const { id } of headings) {
        const el = document.getElementById(id);
        if (el && el.offsetTop <= scrollY) {
          current = id;
        }
      }
      setActiveId(current);
    };

    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll(); // set initial state
    return () => window.removeEventListener('scroll', onScroll);
  }, [headings]);

  if (headings.length === 0) return null;

  return (
    <>
      {/* Mobile toggle */}
      <button
        className="toc-toggle"
        onClick={() => setIsOpen(!isOpen)}
        aria-expanded={isOpen}
        aria-controls="toc-nav"
      >
        <svg
          width="16"
          height="16"
          viewBox="0 0 16 16"
          fill="none"
          aria-hidden
        >
          <rect x="1" y="3" width="14" height="1.5" rx="0.75" fill="currentColor" />
          <rect x="1" y="7.25" width="10" height="1.5" rx="0.75" fill="currentColor" />
          <rect x="1" y="11.5" width="12" height="1.5" rx="0.75" fill="currentColor" />
        </svg>
        Contents
      </button>

      {/* TOC nav */}
      <nav
        id="toc-nav"
        className={`toc-sidebar ${!isOpen ? 'toc-hidden' : ''}`}
        aria-label="Table of contents"
        style={{ display: undefined }} // reset any inline display
      >
        <div className="toc-title">Contents</div>
        {headings.map(({ id, text, level }) => (
          <a
            key={id}
            href={`#${id}`}
            className={`toc-item${level === 3 ? ' toc-sub' : ''}${activeId === id ? ' toc-active' : ''}`}
            onClick={() => setIsOpen(false)}
          >
            {text}
          </a>
        ))}
      </nav>
    </>
  );
}

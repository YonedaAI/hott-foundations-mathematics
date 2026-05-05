'use client';
import { useCallback } from 'react';

interface Props {
  html: string;
}

export function PaperContent({ html }: Props) {
  const contentRef = useCallback(
    (node: HTMLDivElement | null) => {
      if (node) {
        // eslint-disable-next-line no-param-reassign
        node.textContent = '';
        const tmp = document.createElement('div');
        tmp.setAttribute('data-static-content', '1');
        tmp.innerHTML = html;
        while (tmp.firstChild) {
          node.appendChild(tmp.firstChild);
        }
      }
    },
    [html]
  );

  return (
    <div
      ref={contentRef}
      className="paper-content"
      suppressHydrationWarning
    />
  );
}

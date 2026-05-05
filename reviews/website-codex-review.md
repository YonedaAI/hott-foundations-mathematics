# Website Codex Review — Round 1

## VERDICT: NEEDS_FIX

Top issues found across all 10 checks:

### Check 1: HTML READABILITY — FAIL
- Multiple h1 elements per paper page (page title h1 + paper body h1 section headings)
- Heading levels skip: directed-univalence jumps h1->h4 and h2->h4; langlands-analytic-number-theory jumps h2->h4
- ARIA coverage is mostly present

### Check 2: LAYOUT BUGS — WARN
- Fixed PDF button can occlude bottom-right content on small screens: globals.css:465

### Check 3: DESIGN ERRORS — FAIL
- --text-dim #5c5580 on --bg #0a0e1f is ~2.80:1 contrast (fails WCAG normal-text minimum)

### Check 4: MOBILE RESPONSIVENESS — FAIL
- Touch targets under 44px: .card-btn, .toc-item, header text links

### Check 5: BROKEN LINKS / MISSING ASSETS — PASS

### Check 6: KATEX MATH RENDERING — FAIL (CRITICAL)
- Raw LaTeX leaks outside KaTeX spans, e.g. Cc\mathbb{C}_{c}Cc in synthesis TOC/headings
- katex-error fallback spans appear in cubical-hiit-cauchy
- Fallback path in render-math.ts:35 returns raw LaTeX on failure

### Check 7: SIDEBAR TOC — PASS

### Check 8: REACT HYDRATION — PASS

### Check 9: OG META TAGS — FAIL
- Homepage out/index.html missing og:url
- All paper pages have required OG/Twitter fields with absolute URLs

### Check 10: PERFORMANCE — WARN
- JS chunks ~688 KB uncompressed
- Seven cover PNGs 0.66-0.78 MB each (images.unoptimized=true)

VERDICT: NEEDS_FIX

---
reviewer: codex (OpenAI)
type: formatting
paper: coalgebraic-transcendentals
round: 1
date: 2026-05-04T23:39:42Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
model: gpt-5.5
provider: openai
approval: never
sandbox: danger-full-access
reasoning effort: high
reasoning summaries: none
session id: 019df55c-a412-7741-bbb1-a5680fdada99
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll treat this as a read-only review: first inspect the LaTeX source structure, then run the local build/check commands that are available so the issue list is grounded in actual compiler output where possible.
exec
/usr/local/bin/zsh -lc 'pwd && rg --files' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
src/langlands-analytic-number-theory/Zeta.hs
src/langlands-analytic-number-theory/Dirichlet.hs
src/langlands-analytic-number-theory/Properties.hs
src/langlands-analytic-number-theory/Main.hs
src/langlands-analytic-number-theory/Proofs.hs
src/directed-univalence/Directed.hs
src/directed-univalence/Properties.hs
src/directed-univalence/Main.hs
src/directed-univalence/Hom.hs
src/directed-univalence/Proofs.hs
src/coalgebraic-transcendentals/Streams.hs
src/coalgebraic-transcendentals/Bisimulation.hs
src/coalgebraic-transcendentals/Properties.hs
src/coalgebraic-transcendentals/Main.hs
src/coalgebraic-transcendentals/coalgebraic-transcendentals.cabal
src/coalgebraic-transcendentals/Proofs.hs
src/etcs-izf-folds/Properties.hs
src/etcs-izf-folds/FOLDS.hs
src/etcs-izf-folds/Main.hs
src/etcs-izf-folds/ETCS.hs
src/etcs-izf-folds/Proofs.hs
src/infinity-nno/NNO.hs
src/infinity-nno/Properties.hs
src/infinity-nno/Main.hs
src/infinity-nno/Proofs.hs
src/cubical-hiit-cauchy/Reals.hs
src/cubical-hiit-cauchy/Approximants.hs
src/cubical-hiit-cauchy/Properties.hs
src/cubical-hiit-cauchy/Main.hs
src/cubical-hiit-cauchy/Proofs.hs
reviews/cubical-hiit-cauchy-review-round-1.md
reviews/infinity-nno-review-round-2.md
reviews/cubical-hiit-cauchy-codex-review-round-2.md
reviews/coalgebraic-transcendentals-review-round-3.md
reviews/coalgebraic-transcendentals-review-round-2.md
reviews/etcs-izf-folds-review-round-1.md
reviews/infinity-nno-review.md
reviews/directed-univalence-review.md
reviews/directed-univalence-codex-review-round-2.md
reviews/infinity-nno-codex-review-round-2.md
reviews/coalgebraic-transcendentals-codex-review-round-1.md
reviews/directed-univalence-codex-review-round-3.md
reviews/etcs-izf-folds-codex-review-round-1.md
reviews/coalgebraic-transcendentals-review.md
reviews/etcs-izf-folds-codex-review-round-2.md
reviews/etcs-izf-folds-codex-review-round-3.md
reviews/directed-univalence-codex-review-round-1.md
reviews/infinity-nno-codex-review-round-1.md
reviews/directed-univalence-review-round-1.md
reviews/coalgebraic-transcendentals-review-round-1.md
reviews/langlands-analytic-number-theory-codex-review-round-1.md
reviews/cubical-hiit-cauchy-review.md
reviews/langlands-analytic-number-theory-review-round-1.md
reviews/coalgebraic-transcendentals-review-round-4.md
reviews/langlands-analytic-number-theory-review.md
reviews/etcs-izf-folds-review.md
reviews/infinity-nno-review-round-1.md
reviews/cubical-hiit-cauchy-review-round-2.md
reviews/cubical-hiit-cauchy-codex-review-round-1.md
papers/latex/infinity-nno.tex
papers/latex/directed-univalence.out
papers/latex/infinity-nno.toc
papers/latex/langlands-analytic-number-theory.aux
papers/latex/coalgebraic-transcendentals.tex
papers/latex/langlands-analytic-number-theory.log
papers/latex/etcs-izf-folds.fdb_latexmk
papers/latex/directed-univalence.tex
papers/latex/cubical-hiit-cauchy.fls
papers/latex/infinity-nno.out
papers/latex/directed-univalence.toc
papers/latex/cubical-hiit-cauchy.aux
papers/latex/cubical-hiit-cauchy.log
papers/latex/infinity-nno.pdf
papers/latex/etcs-izf-folds.fls
papers/latex/etcs-izf-folds.aux
papers/latex/etcs-izf-folds.log
papers/latex/directed-univalence.log
papers/latex/directed-univalence.aux
papers/latex/langlands-analytic-number-theory.out
papers/latex/cubical-hiit-cauchy.toc
papers/latex/cubical-hiit-cauchy.tex
papers/latex/etcs-izf-folds.pdf
papers/latex/infinity-nno.log
papers/latex/infinity-nno.aux
papers/latex/cubical-hiit-cauchy.out
papers/latex/langlands-analytic-number-theory.toc
papers/latex/langlands-analytic-number-theory.tex
papers/latex/cubical-hiit-cauchy.fdb_latexmk
papers/latex/langlands-analytic-number-theory.pdf
papers/latex/etcs-izf-folds.toc
papers/latex/etcs-izf-folds.tex
papers/latex/cubical-hiit-cauchy.pdf
papers/latex/etcs-izf-folds.out
lean/langlands-analytic-number-theory/Zeta.lean
lean/directed-univalence/Directed.lean
lean/coalgebraic-transcendentals/Streams.lean
lean/etcs-izf-folds/ETCS.lean
lean/infinity-nno/NNO.lean
lean/cubical-hiit-cauchy/Reals.lean

exec
/usr/local/bin/zsh -lc 'rg -n "hott|coalgebraic|latex|tex" /Users/mlong/.codex/memories/MEMORY.md' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
9:- rollout_summaries/2026-05-04T04-25-46-CquY-website_nextjs_audit_katex_metadata_a11y_assets.md (cwd=/Users/mlong/Documents/Development/magneton_work/theology-faith-and-perfectionism, rollout_path=/Users/mlong/.codex/sessions/2026/05/03/rollout-2026-05-03T22-25-46-019df13c-2f74-7a00-ae6a-47b0cb1d9d18.jsonl, updated_at=2026-05-04T04:29:41+00:00, thread_id=019df13c-2f74-7a00-ae6a-47b0cb1d9d18, strongest generated-HTML and metadata audit)
13:- website/papers.json, website/out, katex.renderToString, PaperContent.tsx, node.innerHTML, metadataBase, og-image.png, og-default.png, scroll listener, Next.js export
19:- rollout_summaries/2026-05-04T04-25-46-CquY-website_nextjs_audit_katex_metadata_a11y_assets.md (cwd=/Users/mlong/Documents/Development/magneton_work/theology-faith-and-perfectionism, rollout_path=/Users/mlong/.codex/sessions/2026/05/03/rollout-2026-05-03T22-25-46-019df13c-2f74-7a00-ae6a-47b0cb1d9d18.jsonl, updated_at=2026-05-04T04:29:41+00:00, thread_id=019df13c-2f74-7a00-ae6a-47b0cb1d9d18, includes TOC/raw-LaTeX and a11y findings)
33:- `website/lib/render-math.ts` pre-renders math with `katex.renderToString(...)`, but `website/app/components/PaperContent.tsx` injects the finished HTML via `node.innerHTML = html`, so the built paper pages keep the content in the Next flight payload rather than visible static DOM [Task 1]
116:- when confirming the Apple/Xcode change, the user asked for the "stict with Proposed strict Apple/Xcode set" so they would not have to keep pressing the default button -> apply only the approved strict subset, not every Xcode-advertised text type [Task 2]
124:- Xcode’s `Info.plist` advertises many generic text/code handlers in addition to Apple-specific artifacts. For "Apple programming" requests, split the candidate list into a strict Apple/Xcode set versus optional generic languages before changing anything [Task 2]
241:- SwiftData, CKSyncEngine, SyncTicker, processPendingChanges, PopoverView, MainWindowView, ModelContext, @Query, NSPersistentStoreRemoteChange, cloudKitDatabase.none
258:- when asking "Should the mainContext change be reverted? Yes/No + why + the alternative." -> give a direct recommendation plus fallback strategy, not just descriptive analysis [Task 1]
263:- `CopiedSyncEngine.handleFetchedRecordZoneChanges` is the load-bearing import path: imported records are saved into SwiftData, `mainContext.processPendingChanges()` is used as the refresh nudge, and `SyncTicker.shared.bump()` is the explicit bridge for UI refresh expectations in this repo [Task 1][Task 2]
264:- The repo already treats detached import work plus explicit main-context refresh nudges as the safer pattern than direct inbound writes to `mainContext`; comments in `CopiedSyncEngine.swift` say a prior `mainContext` experiment correlated with degraded `@Query` refresh reliability [Task 1]
275:- Symptom: uncertainty about whether to revert to `mainContext`. Cause: no runtime confirmation settled whether `mainContext`, `@Query`, or `NSHostingController` observation is the actual bottleneck. Fix/pivot: keep the detached import context and test explicit refresh nudges first, rather than reverting import contexts speculatively [Task 1]
290:- CRITICAL, HIGH, MEDIUM, LOW, SwiftData, CloudKit, project.yml, modelContext.save, LicenseStore, LicenseValidator, entitlements, popover stale state, Task.detached
302:- In this repo, `Clipping.moveToTrash()`, `restore()`, and `persist()` save immediately. Any edit/copy/list mutation path that bypasses those helpers or `modelContext.save()` is a high-signal persistence and CloudKit-propagation risk [Task 1]
328:## Task 2: Read-only review of action sheet, share sheet, and text formatter behavior, success/uncertain
332:- rollout_summaries/2026-04-22T22-01-17-dqfj-ios_review_phase9_share_sheets_text_formatters.md (cwd=/Users/mlong/Documents/Development/copied-reverse-engineer, rollout_path=/Users/mlong/.codex/sessions/2026/04/22/rollout-2026-04-22T16-01-17-019db736-3991-7482-81ad-bffc3eb91d25.jsonl, updated_at=2026-04-22T22:03:10+00:00, thread_id=019db736-3991-7482-81ad-bffc3eb91d25, strongest evidence for App Group/defaults mismatch)
357:- RuleEngine, RulesSettingsView, MergeScriptEngine, drainShareInbox, RuleDraft, textContains, routeToListID, modelContainer, GATE: BLOCKED
368:- `SharedStore.defaults` is the App Group-backed store. If a setting is meant to be visible across app/extensions, `UserDefaults.standard` is the wrong retrieval path; this was the durable issue behind `textFormatters.enabled` [Task 2]
369:- `ClippingShareSheet.items(for:)` currently prioritizes `image > URL > text > title`, so mixed payload clippings can lose link semantics when `imageData` exists alongside `url` [Task 2]
418:- CopiedClipperExtension, NSExtensionJavaScriptPreprocessingResultsKey, ClipperPreprocess.js, isContentValid, SLComposeServiceViewController, selection text, unsupported page, all-empty fields
442:- Symptom: share pipeline appears durable because writes are atomic. Cause: host drain deletes inbox files before save success and swallows `modelContext.save()` errors. Fix/pivot: evaluate the full extension-to-host lifecycle, not just extension-side atomicity [Task 1]
482:- The working repo context differed from the launch cwd: the request started in `/Users/mlong/Library/CloudStorage/Dropbox/Taxes/Taxes-2025/Magneton`, but the reviewed code lived in `/Users/mlong/Documents/Development/magneton_work/tax-strategy-dashboard`. Future agents should preserve that cwd mismatch explicitly [Task 1]
487:- Symptom: a review passes projection text that "looks close enough". Cause: no explicit sum check was done on quarterly ranges versus yearly headline ranges. Fix/pivot: recompute the math directly from the JSON before trusting the dashboard presentation [Task 1]

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% --- Core math ---
     4	\usepackage{amsmath, amssymb, amsthm}
     5	\usepackage{mathtools}
     6	
     7	% --- Diagrams ---
     8	\usepackage{tikz}
     9	\usepackage{tikz-cd}
    10	\usetikzlibrary{calc,positioning,arrows.meta}
    11	
    12	% --- References ---
    13	\usepackage{hyperref}
    14	\usepackage{cleveref}
    15	
    16	% --- Graphics ---
    17	\usepackage{graphicx}
    18	
    19	% --- Page layout ---
    20	\usepackage[margin=1in]{geometry}
    21	
    22	% --- GrokRxiv sidebar ---
    23	\usepackage{everypage}
    24	\usepackage{xcolor}
    25	
    26	% --- Listings (light) ---
    27	\usepackage{listings}
    28	\lstset{
    29	  basicstyle=\ttfamily\small,
    30	  breaklines=true,
    31	  columns=flexible,
    32	  keepspaces=true,
    33	  showstringspaces=false
    34	}
    35	
    36	% --- Theorem environments ---
    37	\newtheorem{theorem}{Theorem}[section]
    38	\newtheorem{proposition}[theorem]{Proposition}
    39	\newtheorem{lemma}[theorem]{Lemma}
    40	\newtheorem{corollary}[theorem]{Corollary}
    41	\theoremstyle{definition}
    42	\newtheorem{definition}[theorem]{Definition}
    43	\newtheorem{example}[theorem]{Example}
    44	\theoremstyle{remark}
    45	\newtheorem{remark}[theorem]{Remark}
    46	\newtheorem{conjecture}[theorem]{Conjecture}
    47	\newtheorem{problem}[theorem]{Open Problem}
    48	
    49	% --- Macros ---
    50	\newcommand{\Type}{\mathcal{U}}
    51	\newcommand{\N}{\mathbb{N}}
    52	\newcommand{\Z}{\mathbb{Z}}
    53	\newcommand{\Q}{\mathbb{Q}}
    54	\newcommand{\R}{\mathbb{R}}
    55	\newcommand{\Rc}{\R_c}
    56	\newcommand{\C}{\mathbb{C}}
    57	\newcommand{\D}{\mathbb{D}}
    58	\newcommand{\Set}{\mathbf{Set}}
    59	\newcommand{\Stream}{\mathsf{Stream}}
    60	\newcommand{\hd}{\mathsf{hd}}
    61	\newcommand{\tl}{\mathsf{tl}}
    62	\newcommand{\out}{\mathsf{out}}
    63	\newcommand{\unfold}{\mathsf{unfold}}
    64	\newcommand{\corec}{\mathsf{corec}}
    65	\newcommand{\bisim}{\mathrel{\sim}}
    66	\newcommand{\Id}{\mathsf{Id}}
    67	\newcommand{\refl}{\mathsf{refl}}
    68	\newcommand{\op}{\mathrm{op}}
    69	\DeclareMathOperator{\Hom}{Hom}
    70	\DeclareMathOperator{\Nat}{Nat}
    71	\DeclareMathOperator{\im}{im}
    72	\DeclareMathOperator{\id}{id}
    73	
    74	% --- GrokRxiv sidebar ---
    75	\definecolor{grokgray}{RGB}{110,110,110}
    76	\AddEverypageHook{%
    77	  \ifnum\value{page}=1
    78	    \begin{tikzpicture}[remember picture, overlay]
    79	      \node[
    80	        rotate=90,
    81	        anchor=south,
    82	        font=\Large\sffamily\bfseries\color{grokgray},
    83	        inner sep=0pt
    84	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    85	      {GrokRxiv:2026.05.coalgebraic-transcendentals\quad
    86	       [\,math.LO\,]\quad
    87	       04 May 2026};
    88	    \end{tikzpicture}
    89	  \fi
    90	}
    91	
    92	% --- Title block ---
    93	\title{Final Coalgebras and Transcendental Numbers in HoTT:\\
    94	A Coinductive Characterisation of $\pi$ and $e$}
    95	
    96	\author{Matthew Long \\
    97	\textit{The YonedaAI Collaboration} \\
    98	\textit{YonedaAI Research Collective} \\
    99	Chicago, IL \\
   100	\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
   101	
   102	\date{4 May 2026}
   103	
   104	\begin{document}
   105	
   106	\maketitle
   107	
   108	\begin{abstract}
   109	The univalent presentation of the real numbers admits two profoundly
   110	different formulations: an \emph{inductive} one, in which $\R$ is built
   111	as a higher inductive--inductive type (HIIT) of Cauchy sequences modulo
   112	a path-constructor for the equivalence relation
   113	(Booij; HoTT Book \S 11.3); and a \emph{coinductive} one, in which
   114	$\R$ (or $[0,1]$) is presented as a final coalgebra for an endofunctor
   115	on $\Type$ encoding digit streams modulo carry-bisimulation. Paper III
   116	of our prior series~\cite{paperIII} sketched the coalgebraic dual but
   117	left the transcendentals $\pi$ and $e$ entirely on the inductive side
   118	(Paper~V \S 8). The present paper completes the coalgebraic side: we
   119	construct functors $F_b: \Type \to \Type$ and $G: \Type \to \Type$ whose
   120	final coalgebras present the digit-stream and Cauchy-stream models of
   121	$[0,1]$ and $\R$ respectively; we lift the standard analytic
   122	descriptions of $\pi$ (the Bailey--Borwein--Plouffe series, Machin's
   123	formula, the Leibniz alternating series) and $e$ (Euler's series) to
   124	\emph{bisimulation-closed observable predicates} on these final
   125	coalgebras; and we prove that $\pi$ and $e$ arise as unique elements
   126	identified by these predicates without recourse to the
   127	HIIT path-constructors of Cauchy reals. Along the way we develop
   128	coinduction up-to-context, prove a constructive Lambek lemma in cubical
   129	HoTT via M-types (Ahrens--Capriotti--Spadotti), and supply Haskell
   130	and Lean~4 formalisations of the resulting stream coalgebras and
   131	their corecursive definitions of $\pi$ and $e$. We close by relating
   132	the coalgebraic picture to the Riemann zeta function: a $\zeta(s)=0$
   133	statement entirely internal to the language of a final coalgebra
   134	remains the principal open problem and we frame it precisely.
   135	\end{abstract}
   136	
   137	\tableofcontents
   138	\newpage
   139	
   140	% =============================================================
   141	\section{Introduction}
   142	% =============================================================
   143	
   144	\subsection{Two presentations of $\R$, two presentations of $\pi$}
   145	
   146	The synthesis paper of our series~\cite{synthesis} identified six
   147	mutually equivalent presentations of the natural numbers (NNO,
   148	Peano, primitive recursion, set-theoretic encoding, Yoneda
   149	representable, HoTT inductive type). For the real numbers the analogue
   150	narrative produces two presentations rather than six, but each is
   151	itself a different \emph{universal property}:
   152	
   153	\begin{enumerate}
   154	    \item \textbf{Inductive (Cauchy/HIIT).} Booij's HoTT Cauchy reals
   155	    $\Rc$ \cite{booij}, presented as the initial algebra of a signature
   156	    consisting of $\Q$-coercion, a limit operation taking
   157	    $(\varepsilon \mapsto x_\varepsilon)$-Cauchy approximations to a
   158	    point of $\Rc$, plus path constructors that quotient. This is the
   159	    universal Cauchy-complete Archimedean ordered field.
   160	    \item \textbf{Coinductive (final coalgebra).} The cofree object on
   161	    a digit-stream signature: $\R \cong \nu G$ for an endofunctor
   162	    $G$ which is roughly $G\,X = \D \times X$ (with $\D$ a
   163	    digit alphabet) modulo a carry-bisimulation. Streams come with a
   164	    \emph{coinduction} principle (Lambek; Rutten~\cite{rutten})
   165	    rather than a recursion principle.
   166	\end{enumerate}
   167	
   168	These two presentations are isomorphic as ordered fields by
   169	the standard uniqueness theorem for Dedekind-complete Archimedean
   170	fields (Paper~III Theorem~4.1). They are however \emph{not}
   171	isomorphic as effective structures: the Type II Turing computability
   172	literature~\cite{weihrauch} establishes that Cauchy realizers and
   173	stream realizers are interreducible but not equiprimitive. In the
   174	intensional setting of HoTT this distinction shows up in the
   175	\emph{computation rules}: the inductive presentation supports
   176	recursors that compute on constructors, while the coinductive
   177	presentation supports corecursors that produce streams element by
   178	element with guarded productivity.
   179	
   180	For the transcendentals $\pi$ and $e$, the inductive side is
   181	well-understood: Paper~V Definitions~8.1--8.2 present
   182	$\pi$ as the centre of the contractible type
   183	$\Sigma_{p:\Rc}\,(\sin p = 0)\times(p>0)\times(\forall x \in (0,p),\sin x>0)$
   184	and $e$ as $\exp(1)$ via the universal property of $\exp$ as the
   185	unique smooth $f:\Rc\to\Rc$ with $f'=f$ and $f(0)=1$. The
   186	coinductive side has, prior to this paper, been left implicit: the
   187	generic statement ``$\pi$ and $e$ are computable hence have
   188	canonical digit streams'' is true but does not constitute a
   189	HoTT-internal characterisation.
   190	
   191	\subsection{The principal contribution}
   192	
   193	The principal contribution of this paper is to write down such an
   194	internal characterisation. Concretely, we construct:
   195	
   196	\begin{itemize}
   197	\item A functor $F_b: \Type \to \Type$, $F_b\,X = \D_b \times X$, with
   198	$\D_b = \mathsf{Fin}(b)$ the alphabet on $b$ digits, and prove that
   199	its final coalgebra $\nu F_b$ in cubical HoTT is the M-type of
   200	streams $\D_b^\N$.
   201	\item A bisimulation $\bisim_b$ on $\nu F_b$, the
   202	\emph{carry-bisimulation}, which makes $\nu F_b / \bisim_b$ an
   203	ordered Archimedean field equipped with a continuous map to $[0,1]$.
   204	\item Two \emph{bisimulation-closed observable predicates}
   205	$P_\pi, P_e$ on $\nu F_b$, expressed entirely in the internal
   206	language of the coalgebra (head/tail/observation), which uniquely
   207	identify (up to bisimulation) the Bailey--Borwein--Plouffe digits of
   208	$\pi$ in base $16$ and the Euler-series digits of $e$ in any base.
   209	\item A coinductive proof, via coinduction up-to-context, that the
   210	unique-existence statement is \emph{contractible}: the type
   211	$\Sigma_{s : \nu F_b}\,P_\pi(s)$ is contractible.
   212	\end{itemize}
   213	
   214	This separates the question ``what does $\pi$ name?'' into a
   215	foundational layer (the final coalgebra structure) and a content
   216	layer (the BBP series). The final-coalgebra layer is internal to
   217	HoTT and uses no HIIT path constructors. The
   218	content layer translates a classical analytic identity into a
   219	guarded corecursive equation, whose validity is checked by
   220	coinduction.
   221	
   222	\subsection{Why coinduction matters in HoTT}
   223	
   224	In Martin-L\"of type theory the coinductive types of Coquand
   225	and the M-types of Ahrens--Capriotti--Spadotti~\cite{ACS} are
   226	treated by dualising the W-type construction. In cubical HoTT
   227	M-types satisfy a strong coinduction principle, namely that
   228	bisimulation implies path-equality. This is Theorem~5.3 of
   229	Paper~III in our series, which we recall and refine here as
   230	Theorem~\ref{thm:coinduction}.
   231	
   232	Crucially, coinduction allows us to exhibit equalities between
   233	streams produced by \emph{a priori} different corecursive schemes.
   234	For instance, the digit stream produced by Machin's formula
   235	\[
   236	\pi = 16\arctan(1/5) - 4\arctan(1/239)
   237	\]
   238	is not, as a sequence of base-10 digits, definitionally equal to
   239	the digit stream produced by the Leibniz series
   240	\[
   241	\pi = 4\sum_{n=0}^\infty \frac{(-1)^n}{2n+1}.
   242	\]
   243	Their equality must be proven, and coinduction up-to is the natural
   244	tool. Once equality is established, both schemes name the same
   245	$\pi: \nu F_{10}/{\bisim_{10}}$. Our characterisation
   246	factors through this identification.
   247	
   248	\subsection{Outline}
   249	
   250	\Cref{sec:framework} fixes the type-theoretic framework: cubical
   251	HoTT, polynomial endofunctors, M-types, and the construction of
   252	final coalgebras. \Cref{sec:lambek} states and proves a
   253	HoTT-internal Lambek lemma and the resulting coinduction principle.
   254	\Cref{sec:streams} develops the stream coalgebra in detail, including
   255	the carry-bisimulation. \Cref{sec:bisim} introduces
   256	bisimulation-closed predicates and the up-to technique.
   257	\Cref{sec:pi-e} contains the main results: the coalgebraic
   258	characterisations of $\pi$ and $e$. \Cref{sec:cubical} sketches the
   259	cubical M-type realisation. \Cref{sec:cauchy-vs-coalg} compares to
   260	the Cauchy HIIT of Paper~V. \Cref{sec:zeta} states the

codex
The source starts as a standalone article with standard math/TikZ/reference packages. I’m going to compile from `papers/latex` next and then inspect the warning/error log against the source line numbers.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   261	$\zeta$-prerequisite chain and the $\zeta(s)=0$-internal-to-coalgebra
   262	problem. \Cref{sec:open} closes with open problems.
   263	
   264	% =============================================================
   265	\section{Mathematical framework}\label{sec:framework}
   266	% =============================================================
   267	
   268	\subsection{Cubical HoTT and polynomial endofunctors}
   269	
   270	We work in cubical type theory \`a la Cohen--Coquand--Huber--M\"ortberg
   271	(CCHM)~\cite{cchm}, with universes $\Type_0:\Type_1:\dots$ closed
   272	under the usual type formers, and with the univalence axiom
   273	provable from the path-cube structure. We write $a =_A b$ for the
   274	path type, $\refl_a$ for the constant path, and $\Sigma$, $\Pi$ for
   275	the dependent types. Truncation levels follow Voevodsky's
   276	conventions: a type is a \emph{proposition} if it has at most one
   277	inhabitant up to path equality, a \emph{set} if its identity types
   278	are propositions, and so on.
   279	
   280	\begin{definition}[Polynomial endofunctor]
   281	\label{def:poly}
   282	A \emph{polynomial endofunctor} on $\Type$ is a functor
   283	$F: \Type \to \Type$ of the form
   284	\[
   285	F\,X \;=\; \Sigma_{a:A}\,X^{B(a)}
   286	\]
   287	for some $A : \Type$ and $B : A \to \Type$. The pair $(A,B)$ is
   288	called a \emph{container} or \emph{signature}.
   289	\end{definition}
   290	
   291	The action of $F$ on a function $f: X \to Y$ is
   292	$F\,f\,(a, h) = (a, f \circ h)$.
   293	
   294	\begin{example}\label{ex:streamfun}
   295	The \emph{stream functor} on alphabet $A$ is $F_A\,X = A \times X$.
   296	This is polynomial with $A$-many shapes (one per letter) and a
   297	single position per shape: $F_A\,X = \Sigma_{a:A}\,X^{\mathbf{1}}$,
   298	where $\mathbf{1}$ is the unit type.
   299	\end{example}
   300	
   301	\begin{example}\label{ex:digit}
   302	For $b \geq 2$, the \emph{base-$b$ digit functor} is
   303	$F_b\,X = \mathsf{Fin}(b) \times X$, the special case of
   304	\Cref{ex:streamfun} with $A = \mathsf{Fin}(b)$.
   305	\end{example}
   306	
   307	\begin{definition}[Coalgebra]\label{def:coalg}
   308	An $F$-\emph{coalgebra} is a pair $(C, \gamma)$ with
   309	$\gamma: C \to F\,C$. A morphism of coalgebras
   310	$(C,\gamma)\to(D,\delta)$ is a function $f: C \to D$ such that
   311	$\delta \circ f = F\,f \circ \gamma$. The category of
   312	$F$-coalgebras is denoted $\mathbf{Coalg}(F)$.
   313	\end{definition}
   314	
   315	\begin{definition}[Final coalgebra]\label{def:final}
   316	$(\nu F, \out)$ is a \emph{final $F$-coalgebra} if for every
   317	$F$-coalgebra $(C, \gamma)$ there is a unique morphism
   318	$\unfold_\gamma: (C,\gamma) \to (\nu F, \out)$.
   319	\end{definition}
   320	
   321	\begin{remark}[Final = terminal in $\mathbf{Coalg}(F)$]
   322	``Final'' here is the standard terminology of Rutten~\cite{rutten}.
   323	In categorical language final coalgebras are terminal objects of
   324	$\mathbf{Coalg}(F)$, dual to initial algebras (Lambek).
   325	\end{remark}
   326	
   327	\subsection{M-types as final coalgebras}
   328	
   329	In MLTT the coinductive analogue of W-types is the M-type
   330	construction. The M-type for container $(A,B)$ is
   331	\[
   332	M\,A\,B \;=\; \Sigma_{u: \mathrm{Tree}^\infty(A,B)}\,\mathrm{Wf}(u),
   333	\]
   334	where $\mathrm{Tree}^\infty(A,B)$ is the type of (potentially
   335	infinite) trees and $\mathrm{Wf}$ is the productivity (well-formedness)
   336	predicate. In cubical HoTT, Ahrens--Capriotti--Spadotti~\cite{ACS}
   337	prove:
   338	
   339	\begin{theorem}[ACS, M-type final coalgebra]\label{thm:ACS}
   340	For any container $(A,B)$, the M-type $M\,A\,B$ carries a
   341	coalgebra structure $\out: M\,A\,B \to F_{(A,B)}(M\,A\,B)$ which
   342	is final.
   343	\end{theorem}
   344	
   345	For our applications the relevant case is the stream functor
   346	$F_A\,X = A \times X$, where the M-type
   347	specialises to streams $\Stream\,A \cong A^\N$.
   348	
   349	\begin{definition}[Stream coalgebra]\label{def:streamcoalg}
   350	$\Stream\,A := M\,A\,(\lambda{-}.\,\mathbf{1})$. The destructor
   351	$\out: \Stream\,A \to A \times \Stream\,A$ decomposes into
   352	$\hd: \Stream\,A \to A$ and $\tl: \Stream\,A \to \Stream\,A$.
   353	\end{definition}
   354	
   355	\begin{remark}[Cubical realisation]
   356	In cubical HoTT, $\Stream\,A$ admits a definition by guarded
   357	recursion using the modality $\rhd$ of Birkedal et al.~\cite{birkedal}:
   358	$\Stream\,A \cong A \times \rhd \Stream\,A$. The fixed point exists
   359	because $\rhd$ is a contractive functor and the guarded recursion
   360	theorem applies.
   361	\end{remark}
   362	
   363	% =============================================================
   364	\section{Lambek's lemma and coinduction}\label{sec:lambek}
   365	% =============================================================
   366	
   367	We recall Lambek's lemma in its dual coalgebraic form, which is
   368	the cornerstone of all coinductive characterisations.
   369	
   370	\begin{lemma}[Dual Lambek]\label{lem:lambek}
   371	If $(\nu F, \out)$ is a final $F$-coalgebra, then
   372	$\out: \nu F \to F(\nu F)$ is a path-equivalence.
   373	\end{lemma}
   374	
   375	\begin{proof}
   376	Consider the coalgebra $(F(\nu F), F\out)$. Finality yields a
   377	unique map $\theta: F(\nu F) \to \nu F$ with
   378	$\out \circ \theta = F(F\out) \circ F\,\out = F(\out \circ \theta)$.
   379	Then $\theta \circ \out: \nu F \to \nu F$ is a coalgebra morphism,
   380	and so is $\id_{\nu F}$, so by uniqueness $\theta\circ\out = \id$.
   381	Symmetrically, $\out \circ \theta$ is a coalgebra morphism on
   382	$(F(\nu F), F\out)$ to itself, equal to the identity. Hence
   383	$\out$ is a path-equivalence with inverse $\theta$.
   384	\end{proof}
   385	
   386	\begin{remark}
   387	\Cref{lem:lambek} is conceptually crucial: it says the
   388	final coalgebra is a fixed point of $F$ \emph{up to path
   389	equivalence}, the coinductive dual of Lambek's algebraic
   390	``$\mu F \cong F(\mu F)$''. In cubical HoTT this equivalence is
   391	\emph{strict} (definitional after path-application) at base types,
   392	which is what makes $\hd, \tl$ definable.
   393	\end{remark}
   394	
   395	\begin{definition}[Bisimulation]\label{def:bisim}
   396	A relation $R: C \times C \to \Type$ on the carrier of an
   397	$F$-coalgebra $(C,\gamma)$ is an $F$-bisimulation if there exists
   398	a coalgebra structure
   399	$\bar\gamma: \Sigma_{(x,y):C\times C}R(x,y) \to F(\Sigma\dots R)$
   400	making the two projections coalgebra morphisms. Concretely, for
   401	the stream functor $F_A\,X = A \times X$, the unfolded definition
   402	is: a relation $R$ on $\Stream\,A$ is a bisimulation iff for all
   403	$(x,y)$ with $R(x,y)$, we have $\hd(x) = \hd(y)$ and
   404	$R(\tl(x), \tl(y))$.
   405	\end{definition>
   406	
   407	\begin{theorem}[Coinduction principle]\label{thm:coinduction}
   408	Let $(\nu F, \out)$ be a final $F$-coalgebra. For any
   409	$F$-bisimulation $R$ and any $x, y: \nu F$, if $R(x,y)$ holds,
   410	then $x = y$ in $\nu F$.
   411	\end{theorem}
   412	
   413	\begin{proof}
   414	By \Cref{def:bisim} the projections
   415	$\pi_1, \pi_2: \Sigma_{(x,y)}R(x,y) \to \nu F$ are coalgebra
   416	morphisms into the final coalgebra. By uniqueness of mediating
   417	maps, $\pi_1 = \pi_2$ as coalgebra morphisms, hence as
   418	functions, hence pointwise. So if $(x,y,p):\Sigma_{(x,y)}R(x,y)$
   419	then $\pi_1(x,y,p) = \pi_2(x,y,p)$, i.e.\ $x = y$.
   420	\end{proof}
   421	
   422	This is the fundamental \emph{coinductive proof principle}: to
   423	exhibit a path between two elements of a final coalgebra it
   424	suffices to exhibit a bisimulation containing them.
   425	
   426	% =============================================================
   427	\section{Stream coalgebras and digit streams}\label{sec:streams}
   428	% =============================================================
   429	
   430	\subsection{The stream functor and its final coalgebra}
   431	
   432	\begin{theorem}[Streams as final coalgebra]\label{thm:streamfinal}
   433	For any type $A$, the M-type $\Stream\,A$ together with
   434	$\out = \langle\hd,\tl\rangle$ is the final coalgebra of
   435	$F_A = A\times(-)$.
   436	\end{theorem}
   437	
   438	\begin{proof}[Proof sketch]
   439	For coalgebra $(C,\gamma:C\to A\times C)$, define
   440	$\unfold_\gamma: C \to \Stream\,A$ by guarded corecursion:
   441	\begin{align*}
   442	\hd(\unfold_\gamma(c)) &:= \pi_1(\gamma(c)),\\
   443	\tl(\unfold_\gamma(c)) &:= \unfold_\gamma(\pi_2(\gamma(c))).
   444	\end{align*}
   445	The morphism property $\out \circ \unfold_\gamma = F_A\,\unfold_\gamma \circ \gamma$
   446	is judgmental. Uniqueness follows from coinduction
   447	(\Cref{thm:coinduction}) applied to the relation $R(s,t) :=
   448	\Sigma_{c:C}\,(s = \unfold_\gamma(c))\times(t = \unfold_\gamma(c))$.
   449	\end{proof}
   450	
   451	\begin{example}[Constant stream]
   452	For $a:A$, $\mathsf{const}_a := \unfold_\gamma$ where $C = \mathbf{1}$
   453	and $\gamma(\star) = (a,\star)$, so
   454	$\hd(\mathsf{const}_a) = a$ and $\tl(\mathsf{const}_a) = \mathsf{const}_a$.
   455	\end{example}
   456	
   457	\begin{example}[Naturals as stream]
   458	$\mathsf{nats} := \unfold_\gamma$ where $C = \N$ and
   459	$\gamma(n) = (n, n+1)$. Yields $\mathsf{nats} = 0,1,2,3,\dots$
   460	\end{example}
   461	
   462	\subsection{Base-$b$ digit streams and approximation maps}
   463	
   464	Fix $b \geq 2$. We work with digit streams of $\mathsf{Fin}(b)$.
   465	
   466	\begin{definition}[Approximation map]\label{def:approx}
   467	The base-$b$ \emph{approximation map}
   468	$\alpha_b: \Stream\,\mathsf{Fin}(b) \to \Rc$ takes a stream
   469	$d_0 d_1 d_2 \dots$ to the Cauchy real
   470	\[
   471	\alpha_b(d) := \lim_{n\to\infty}\sum_{k=0}^{n-1}\frac{d_k}{b^{k+1}},
   472	\]
   473	which exists because the partial sums form a $b^{-n}$-Cauchy
   474	approximation in Booij's sense: for $m \geq n$ the difference
   475	$\bigl|\sum_{k=0}^{m-1}\!d_k/b^{k+1} - \sum_{k=0}^{n-1}\!d_k/b^{k+1}\bigr|
   476	= \sum_{k=n}^{m-1}\!d_k/b^{k+1} \leq \sum_{k=n}^{\infty}(b-1)/b^{k+1} = b^{-n}$,
   477	so the partial sums are uniformly Cauchy with modulus $b^{-n}$
   478	and Booij's $\lim$-constructor applies.
   479	\end{definition}
   480	
   481	\begin{lemma}[Approximation surjects onto $[0,1]$]\label{lem:approx-surj}
   482	$\alpha_b: \Stream\,\mathsf{Fin}(b) \to \Rc$ has image $[0,1]\subset\Rc$.
   483	\end{lemma}
   484	
   485	\begin{proof}
   486	Surjection onto $[0,1]$ is the standard digit-expansion: given
   487	$x\in[0,1]\cap \Rc$, define $d_k = \lfloor b^{k+1} x\rfloor \mod b$
   488	using the floor function on Cauchy reals. The sum converges
   489	to $x$ by the standard estimate. Existence of floor on $\Rc$
   490	uses Booij's order. (Note that floor is not constant on
   491	bisimulation classes; this is the source of the carry equivalence.)
   492	\end{proof}
   493	
   494	\begin{definition}[Carry-bisimulation]\label{def:carry}
   495	The relation $\bisim_b$ on $\Stream\,\mathsf{Fin}(b)$ is the smallest
   496	equivalence such that $\alpha_b(s) = \alpha_b(t)$ implies
   497	$s \bisim_b t$. Concretely, for any $n$ and any $d\in\mathsf{Fin}(b-1)$,
   498	\[
   499	d_0\cdots d_{n-1}\,d\,(b{-}1)(b{-}1)\cdots
   500	\;\bisim_b\;
   501	d_0\cdots d_{n-1}\,(d{+}1)\,0\,0\cdots
   502	\]
   503	This is exactly the ``$0.999\ldots = 1.000\ldots$'' identification.
   504	\end{definition}
   505	
   506	\begin{theorem}[$[0,1]$ as quotient final coalgebra]\label{thm:01-quotient}
   507	The set-quotient $\Stream\,\mathsf{Fin}(b)/{\bisim_b}$ is in
   508	HoTT-equivalence with $[0,1] \subset \Rc$ via $\alpha_b$.
   509	\end{theorem}
   510	
   511	\begin{proof}
   512	$\alpha_b$ factors through the quotient by definition of $\bisim_b$.
   513	The induced map is injective by the kernel of $\alpha_b$ being
   514	$\bisim_b$, and surjective by \Cref{lem:approx-surj}. Both maps
   515	are set-functions (between h-sets), hence the resulting bijection
   516	is an equivalence by univalence-for-sets.
   517	\end{proof}
   518	
   519	\begin{remark}[$\R$ from $[0,1]$]
   520	The whole real line $\R$ is recovered as
   521	$\Z \times [0,1] / \sim$ with the obvious carrying identifications,
   522	or equivalently as the final coalgebra of the functor
   523	$G\,X = \Z \times \Stream\,\mathsf{Fin}(b)\,X$ modulo
   524	the appropriate bisimulation.
   525	\end{remark}
   526	
   527	% =============================================================
   528	\section{Bisimulation-closed predicates and coinduction up-to}\label{sec:bisim}
   529	% =============================================================
   530	
   531	To characterise $\pi$ and $e$ \emph{internally} to the final
   532	coalgebra, we need predicates that respect $\bisim_b$. We
   533	formalise this notion and develop the up-to technique.
   534	
   535	\begin{definition}[Bisimulation-closed predicate]\label{def:bclosed}
   536	A predicate $P: \Stream\,\mathsf{Fin}(b) \to \mathsf{Prop}$ is
   537	\emph{$\bisim_b$-closed} (or simply \emph{closed}) if
   538	$s \bisim_b t \to P(s) \leftrightarrow P(t)$. Equivalently, $P$
   539	factors through the quotient $\Stream\,\mathsf{Fin}(b)/{\bisim_b}$.
   540	\end{definition}
   541	
   542	\begin{example}\label{ex:closed}
   543	The predicate $P(s) := (\alpha_b(s) < 1/2)$ is closed; the
   544	predicate $P(s) := (\hd(s) = 0)$ is \emph{not} closed (a stream
   545	$0.4(b{-}1)(b{-}1)\dots$ has $\hd = 0$ but is bisimilar to
   546	$0.5\,0\,0\dots$ with $\hd = ?$, depending on base).
   547	\end{example}
   548	
   549	\begin{definition}[Observable predicate]\label{def:observable}
   550	A predicate $P$ is \emph{observable} if it is determined by the
   551	function $\alpha_b$, i.e.\ $P(s) = Q(\alpha_b(s))$ for some
   552	$Q: \Rc \to \mathsf{Prop}$. Every observable predicate is closed,
   553	but not conversely.
   554	\end{definition}
   555	
   556	\begin{lemma}\label{lem:observable-closed}
   557	A predicate is closed iff it factors through $\alpha_b$.
   558	\end{lemma}
   559	
   560	\begin{proof}
   561	$(\Rightarrow)$ A closed predicate factors through
   562	$\Stream/{\bisim_b}$, and $\alpha_b$ induces an equivalence
   563	between $\Stream/{\bisim_b}$ and $\im(\alpha_b)\subseteq\Rc$
   564	(\Cref{thm:01-quotient}). Composition with the inverse equivalence
   565	gives the factorisation.
   566	$(\Leftarrow)$ Immediate: factoring through $\alpha_b$ implies
   567	$\alpha_b(s)=\alpha_b(t)\Rightarrow P(s)\leftrightarrow P(t)$, which
   568	is the definition of closure under the kernel of $\alpha_b$.
   569	\end{proof}
   570	
   571	\subsection{Coinduction up-to-context}
   572	
   573	The plain coinduction principle (\Cref{thm:coinduction}) requires
   574	exhibiting a strict bisimulation. In practice this is often
   575	inconvenient: one wants to prove $s = t$ by exhibiting a relation
   576	$R$ such that $R(s,t)$ implies that the heads agree and the
   577	tails are related by $R$ \emph{after some closure operations}.
   578	Sangiorgi--Rutten formalised this via the \emph{up-to} technique.
   579	
   580	\begin{definition}[$\Phi$-up-to]\label{def:upto}
   581	Let $\Phi$ be a monotone operator on relations on $\Stream\,A$.
   582	A relation $R$ is a \emph{bisimulation up-to $\Phi$} if for every
   583	$(s,t) \in R$, $\hd(s) = \hd(t)$ and
   584	$(\tl(s), \tl(t)) \in \Phi(R)$.
   585	\end{definition}
   586	
   587	\begin{theorem}[Up-to-context soundness]\label{thm:upto-sound}
   588	If $\Phi$ is \emph{compatible} (i.e.\ $\Phi$ preserves bisimulations
   589	in the sense of Pous--Sangiorgi~\cite{poussangiorgi}), then any
   590	bisimulation up-to $\Phi$ is contained in $\bisim$.
   591	\end{theorem}
   592	
   593	\begin{proof}[Proof sketch]
   594	Define $R^* := \bigcup_{n\geq 0}\Phi^n(R)$. Show by induction
   595	that $R^*$ is a (plain) bisimulation: heads agree because
   596	$\Phi$ preserves head-equality, and tails of $R^*$-related pairs
   597	remain in $R^*$ because $\Phi^n(R) \subseteq \Phi^{n+1}(R)$ by
   598	monotonicity and the bisimulation-up-to-$\Phi$ condition.
   599	\end{proof}
   600	
   601	\begin{example}[Equivalence-closure up-to]
   602	$\Phi(R) := \{(s,t) : \exists s', t'\,R(s',t') \wedge s = s' \wedge t = t'\}$
   603	is compatible. So one may freely substitute path-equal streams
   604	inside coinductive proofs.
   605	\end{example}
   606	
   607	\begin{example}[Arithmetic up-to]
   608	For arithmetic operations on base-$b$ digit streams (addition,
   609	multiplication, division, exponentiation by digit), the operators
   610	\[
   611	\Phi_+(R) := \{(s+u, t+u) : R(s,t)\},\qquad
   612	\Phi_\cdot(R) := \{(s\cdot u, t\cdot u) : R(s,t)\}
   613	\]
   614	are compatible (their compatibility reduces to verifying that
   615	each operation is itself definable as coalgebra morphisms, which
   616	is~\cite{ghani-hancock-pattinson}).
   617	\end{example}
   618	
   619	% =============================================================
   620	\section{Coalgebraic characterisations of $\pi$ and $e$}\label{sec:pi-e}

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(label|ref|Cref|cref|cite|url|includegraphics)|TODO|undefined|overfull|underfull\" papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(label|ref|Cref|cref|cite|url|includegraphics)|TODO|undefined|overfull|underfull)
                                                                                        ^
error: unopened group

exec
/usr/local/bin/zsh -lc "ls -la papers/latex | sed -n '1,160p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
total 4904
drwxr-xr-x  36 mlong  staff    1152 May  4 17:39 .
drwxr-xr-x   4 mlong  staff     128 May  4 17:04 ..
-rw-r--r--   1 mlong  staff   63221 May  4 17:39 coalgebraic-transcendentals.tex
-rw-r--r--   1 mlong  staff   11992 May  4 17:39 cubical-hiit-cauchy.aux
-rw-r--r--   1 mlong  staff   26855 May  4 17:37 cubical-hiit-cauchy.fdb_latexmk
-rw-r--r--   1 mlong  staff   28211 May  4 17:37 cubical-hiit-cauchy.fls
-rw-r--r--   1 mlong  staff   30285 May  4 17:39 cubical-hiit-cauchy.log
-rw-r--r--   1 mlong  staff    8453 May  4 17:39 cubical-hiit-cauchy.out
-rw-r--r--   1 mlong  staff  380559 May  4 17:37 cubical-hiit-cauchy.pdf
-rw-r--r--   1 mlong  staff   49422 May  4 17:39 cubical-hiit-cauchy.tex
-rw-r--r--   1 mlong  staff    4342 May  4 17:39 cubical-hiit-cauchy.toc
-rw-r--r--   1 mlong  staff   14069 May  4 17:26 directed-univalence.aux
-rw-r--r--   1 mlong  staff   36875 May  4 17:26 directed-univalence.log
-rw-r--r--   1 mlong  staff    8138 May  4 17:26 directed-univalence.out
-rw-r--r--   1 mlong  staff   44985 May  4 17:39 directed-univalence.tex
-rw-r--r--   1 mlong  staff    3879 May  4 17:26 directed-univalence.toc
-rw-r--r--   1 mlong  staff   17119 May  4 17:37 etcs-izf-folds.aux
-rw-r--r--   1 mlong  staff   26461 May  4 17:36 etcs-izf-folds.fdb_latexmk
-rw-r--r--   1 mlong  staff   27429 May  4 17:36 etcs-izf-folds.fls
-rw-r--r--   1 mlong  staff   31605 May  4 17:37 etcs-izf-folds.log
-rw-r--r--   1 mlong  staff   13232 May  4 17:37 etcs-izf-folds.out
-rw-r--r--   1 mlong  staff  373555 May  4 17:37 etcs-izf-folds.pdf
-rw-r--r--   1 mlong  staff   63453 May  4 17:37 etcs-izf-folds.tex
-rw-r--r--   1 mlong  staff    6113 May  4 17:37 etcs-izf-folds.toc
-rw-r--r--   1 mlong  staff    9532 May  4 17:36 infinity-nno.aux
-rw-r--r--   1 mlong  staff   32957 May  4 17:36 infinity-nno.log
-rw-r--r--   1 mlong  staff    6227 May  4 17:36 infinity-nno.out
-rw-r--r--   1 mlong  staff  352805 May  4 17:36 infinity-nno.pdf
-rw-r--r--   1 mlong  staff   48723 May  4 17:39 infinity-nno.tex
-rw-r--r--   1 mlong  staff    2767 May  4 17:36 infinity-nno.toc
-rw-r--r--   1 mlong  staff   25324 May  4 17:39 langlands-analytic-number-theory.aux
-rw-r--r--   1 mlong  staff   45671 May  4 17:39 langlands-analytic-number-theory.log
-rw-r--r--   1 mlong  staff   17813 May  4 17:39 langlands-analytic-number-theory.out
-rw-r--r--   1 mlong  staff  434181 May  4 17:39 langlands-analytic-number-theory.pdf
-rw-r--r--   1 mlong  staff   79742 May  4 17:39 langlands-analytic-number-theory.tex
-rw-r--r--   1 mlong  staff    7967 May  4 17:39 langlands-analytic-number-theory.toc

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '621,980p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   621	% =============================================================
   622	
   623	We now state the main results of the paper.
   624	
   625	\subsection{The case of $e$}
   626	
   627	\begin{definition}[Series coalgebra for $e$]\label{def:e-coalg}
   628	Define a coalgebra $(C_e, \gamma_e)$ on
   629	$C_e := \N \times \N \times \N \times \N \times \N$
   630	(state: $(n, k, \mathrm{num}, \mathrm{den}, \mathrm{outdig})$
   631	representing partial summation of $\sum_k 1/k!$ in base $b$),
   632	with transition $\gamma_e$ implementing the streaming
   633	factorial-series algorithm of Sale~\cite{sale-e-1968} (refined to
   634	spigot form by Rabinowitz--Wagon~\cite{rabwagon-spigot} and Gibbons~\cite{gibbons-spigot})
   635	for streaming the digits of $e$ in base $b$. Concretely,
   636	$\gamma_e(s) = (d(s), s')$ where $d(s) \in \mathsf{Fin}(b)$ is the
   637	next emitted digit and $s'$ is the updated state.
   638	\end{definition}
   639	
   640	\begin{theorem}[$e$ as final-coalgebra unfold]\label{thm:e-final}
   641	$\unfold_{\gamma_e}(s_0) = s_e \in \Stream\,\mathsf{Fin}(b)$
   642	where $s_0$ is the initial state and
   643	$\alpha_b(s_e) = e - 2 \in [0,1]$. Equivalently, the digit stream
   644	of $e$ (after subtracting the integer part) is the unique
   645	solution of the corecursive equation
   646	\[
   647	s_e = \mathsf{streamingFraction}(\langle 1/k! \rangle_{k\geq 0}).
   648	\]
   649	\end{theorem}
   650	
   651	\begin{proof}
   652	Existence is by guarded corecursion using the productivity of the
   653	streaming-factorial algorithm: the state-evolution is structurally
   654	decreasing on a measure (the rational interval bounding the
   655	unprocessed tail shrinks geometrically), so each output digit is
   656	produced after finitely many state transitions. The image under
   657	$\alpha_b$ equals $e-2$ by the algorithm's correctness
   658	theorem (a classical fact; see Sale~\cite{sale-e-1968} and the
   659	spigot-algorithm analysis in~\cite{rabwagon-spigot,gibbons-spigot}).
   660	\end{proof}
   661	
   662	\begin{definition}[Predicate $P_e$]\label{def:Pe}
   663	$P_e: \Stream\,\mathsf{Fin}(b) \to \mathsf{Prop}$ is the predicate
   664	$P_e(s) := \alpha_b(s) = e - 2$. It is observable
   665	(\Cref{def:observable}) hence closed (\Cref{lem:observable-closed}).
   666	\end{definition}
   667	
   668	\begin{theorem}[Coalgebraic characterisation of $e$]\label{thm:e-char}
   669	The type
   670	\[
   671	\Sigma_{s : \Stream\,\mathsf{Fin}(b)}\,P_e(s)
   672	\]
   673	quotiented by $\bisim_b$ is contractible. Equivalently:
   674	$e - 2$ is the unique element of $\nu F_b/{\bisim_b}$ satisfying $P_e$.
   675	\end{theorem}
   676	
   677	\begin{proof}
   678	Existence: \Cref{thm:e-final} gives an inhabitant.
   679	Uniqueness: if $s_1, s_2$ both satisfy $P_e$ then
   680	$\alpha_b(s_1) = e - 2 = \alpha_b(s_2)$, so $s_1 \bisim_b s_2$
   681	by definition of $\bisim_b$. Hence after quotient they coincide.
   682	Since the fibres of the quotient map are propositions (a
   683	consequence of working with h-sets), the total space is a
   684	proposition. Combined with inhabitation, this proves
   685	contractibility.
   686	\end{proof}
   687	
   688	\begin{remark}
   689	\Cref{thm:e-char} is internal in the sense that
   690	$P_e$ is expressed in terms of $\alpha_b$, which is itself
   691	definable by guarded corecursion. The HIIT path constructors of
   692	Booij's $\Rc$ enter only \emph{inside} $\alpha_b$. If one is
   693	willing to take $\alpha_b$ as the basic ``observation'', the
   694	characterisation is purely coalgebraic. We discuss this point
   695	further in \Cref{sec:cauchy-vs-coalg}.
   696	\end{remark}
   697	
   698	\subsection{The case of $\pi$}
   699	
   700	For $\pi$ the situation is more subtle because no \emph{finite-state}
   701	streaming algorithm is known. We use Bailey--Borwein--Plouffe (BBP)
   702	in base 16, which is streamable digit-by-digit although the state
   703	grows linearly.
   704	
   705	\begin{definition}[BBP coalgebra]\label{def:bbp}
   706	The Bailey--Borwein--Plouffe identity (1995):
   707	\[
   708	\pi = \sum_{k=0}^\infty \frac{1}{16^k}
   709	\left(\frac{4}{8k+1} - \frac{2}{8k+4} - \frac{1}{8k+5} -
   710	\frac{1}{8k+6}\right).
   711	\]
   712	This induces a coalgebra
   713	$(C_\pi, \gamma_\pi)$ with $C_\pi$ encoding partial summation
   714	state, and $\gamma_\pi$ implementing the BBP digit extraction
   715	algorithm in base 16.
   716	\end{definition}
   717	
   718	\begin{theorem}[$\pi$ as final-coalgebra unfold]\label{thm:pi-final}
   719	$\unfold_{\gamma_\pi}(s_0) = s_\pi \in \Stream\,\mathsf{Fin}(16)$
   720	satisfies $\alpha_{16}(s_\pi) = \pi - 3$.
   721	\end{theorem}
   722	
   723	\begin{proof}
   724	By the BBP correctness theorem (which is constructively valid;
   725	see~\cite{bbp}), the partial sums $\sum_{k=0}^{n-1}$ approximate
   726	$\pi$ to within $O(16^{-n})$. The hexadecimal digit-extraction
   727	state evolves productively, so guarded corecursion yields a
   728	stream whose image under $\alpha_{16}$ equals $\pi - 3$.
   729	\end{proof}
   730	
   731	\begin{definition}[Predicate $P_\pi$]\label{def:Ppi}
   732	$P_\pi: \Stream\,\mathsf{Fin}(16) \to \mathsf{Prop}$ is
   733	$P_\pi(s) := \alpha_{16}(s) = \pi - 3$. Closed by
   734	\Cref{lem:observable-closed}.
   735	\end{definition}
   736	
   737	\begin{theorem}[Coalgebraic characterisation of $\pi$]\label{thm:pi-char}
   738	The type
   739	$\Sigma_{s : \Stream\,\mathsf{Fin}(16)}\,P_\pi(s)$ quotiented by
   740	$\bisim_{16}$ is contractible.
   741	\end{theorem}
   742	
   743	\begin{proof}
   744	Same structure as \Cref{thm:e-char}, using \Cref{thm:pi-final}.
   745	\end{proof}
   746	
   747	\subsection{Internalisation: removing the reference to $\Rc$}
   748	
   749	\Cref{thm:e-char} and \Cref{thm:pi-char} reference $e-2$ and
   750	$\pi - 3$ as elements of $\Rc$, hence implicitly the HIIT.
   751	We now upgrade these to characterisations expressed
   752	\emph{purely} in terms of bisimulations between streams.
   753	
   754	\begin{theorem}[Internal characterisation of $e$]\label{thm:e-internal}
   755	There is a stream $s^* \in \Stream\,\mathsf{Fin}(b)$ defined by
   756	guarded corecursion (no use of $\Rc$ or HIIT) such that:
   757	\begin{enumerate}
   758	\item $s_e \bisim_b s^*$, where $s_e$ is from \Cref{thm:e-final}.
   759	\item For any stream $t$, if $t$ satisfies the corecursive equation
   760	$\out(t) = \gamma_e(\mathrm{state}(t))$ for the (no-$\Rc$) state
   761	projection $\mathrm{state}: \Stream \to \N^5$ (a partial function
   762	defined on the image of $\unfold_{\gamma_e}$, see \Cref{app:state}),
   763	then $s^* \bisim_b t$.
   764	\end{enumerate}
   765	The unique-existence is proved by coinduction up-to-context.
   766	\end{theorem}
   767	
   768	\begin{proof}
   769	Take $s^* := \unfold_{\gamma_e}(s_0)$ where $\gamma_e$ from
   770	\Cref{def:e-coalg} is purely combinatorial (state in $\N^5$, no
   771	real numbers; the explicit transition rules are spelled out in
   772	\Cref{app:state}). Existence: \Cref{thm:e-final}.
   773	
   774	Uniqueness is the substantive part. Suppose $t \in \Stream\,\mathsf{Fin}(b)$
   775	satisfies the equation $\out(t) = \gamma_e(\mathrm{state}(t))$ for some
   776	state-projection function $\mathrm{state}: \Stream \to \N^5$ that
   777	agrees with $s_0$ at $t$. Define the relation
   778	\[
   779	R(u_1, u_2) \;:=\; \Sigma_{c:\N^5}\,
   780	  \bigl( u_1 = \unfold_{\gamma_e}(c) \bigr)\times
   781	  \bigl( u_2 = \unfold_{\gamma_e}(c) \bigr).
   782	\]
   783	This is reflexive on the image of $\unfold_{\gamma_e}$. We claim
   784	$R$ is a bisimulation \emph{up-to the closure} $\Phi$ defined by
   785	$\Phi(R)(v_1,v_2) := \Sigma_{c}\,R(\unfold_{\gamma_e}(c),\unfold_{\gamma_e}(c))$
   786	(equivalently, $\Phi$ is the equivalence-closure under
   787	$\unfold_{\gamma_e}$-substitution; this is compatible by the
   788	example following \Cref{thm:upto-sound}). To verify
   789	the bisimulation-up-to property: given $R(u_1,u_2)$ with witness
   790	$c$, both heads equal $\pi_1(\gamma_e(c))$ and both tails
   791	equal $\unfold_{\gamma_e}(\pi_2(\gamma_e(c)))$, so heads agree
   792	and tails are again related (with the new witness
   793	$\pi_2(\gamma_e(c))$). By \Cref{thm:upto-sound} $R \subseteq \bisim$,
   794	and by \Cref{thm:coinduction} $R(s^*, t)$ implies $s^* = t$.
   795	
   796	Now apply this with $u_1 := s^* = \unfold_{\gamma_e}(s_0)$ and
   797	$u_2 := t$: we need to exhibit a $c$ with $t = \unfold_{\gamma_e}(c)$.
   798	Such a $c$ is provided by $\mathrm{state}(t) = s_0$ together with
   799	the corecursive equation, by another application of coinduction
   800	(using $R'(v_1,v_2) := \exists c.\,v_2 = \unfold_{\gamma_e}(c)\wedge
   801	\mathrm{state}(v_1) = c\wedge v_1\text{ satisfies the equation}$).
   802	Hence $s^* = t$.
   803	
   804	Therefore $s^*$ is the unique stream satisfying the corecursive
   805	equation, and the bisimulation class
   806	$[s^*] \in \Stream/{\bisim_b}$ is uniquely identified by an
   807	internal predicate.
   808	\end{proof}
   809	
   810	\begin{theorem}[Internal characterisation of $\pi$]\label{thm:pi-internal}
   811	There is a stream $s^*_\pi \in \Stream\,\mathsf{Fin}(16)$
   812	defined by guarded corecursion (no use of $\Rc$) such that
   813	$s^*_\pi \bisim_{16} s_\pi$ uniquely up to bisimulation,
   814	characterised by the recursion:
   815	\[
   816	\out(s^*_\pi) = \gamma_\pi^{\text{combinatorial}}(\mathrm{state}_0).
   817	\]
   818	\end{theorem}
   819	
   820	\begin{proof}
   821	The argument is structurally identical to that of
   822	\Cref{thm:e-internal}. Concretely, replace $\gamma_e$ by the
   823	combinatorial BBP transition function $\gamma_\pi^{\text{combinatorial}}$:
   824	its state space is $\N^k$ (with $k=4$ corresponding to the four
   825	sub-series in BBP, plus a position counter; see~\cite{bbp})
   826	holding the integer numerators and denominators of the modular
   827	partial sums. The relation
   828	\[
   829	R(u_1, u_2) \;:=\; \Sigma_{c:\N^k}\,
   830	  ( u_1 = \unfold_{\gamma_\pi^{\text{combinatorial}}}(c))\times
   831	  ( u_2 = \unfold_{\gamma_\pi^{\text{combinatorial}}}(c))
   832	\]
   833	is a bisimulation up-to the substitution-closure $\Phi$, by the
   834	same head/tail computation as in \Cref{thm:e-internal}, and the
   835	BBP modular-arithmetic update of $c$ ensures the up-to-context
   836	operator is compatible (as in the arithmetic example following
   837	\Cref{thm:upto-sound}). By \Cref{thm:upto-sound,thm:coinduction}
   838	$s^*_\pi$ is the unique stream up to $\bisim_{16}$ satisfying the
   839	BBP corecursive equation.
   840	\end{proof}
   841	
   842	\begin{remark}[What \Cref{thm:e-internal} and \Cref{thm:pi-internal} do and do not say]
   843	\label{rem:internal-scope}
   844	The key advance of \Cref{thm:e-internal} and \Cref{thm:pi-internal}
   845	over \Cref{thm:e-char} and \Cref{thm:pi-char} is that the
   846	characterising predicate is now of the form ``satisfies the
   847	corecursive equation $\out(s) = \gamma(\mathrm{state}(s))$'',
   848	expressed purely in terms of $\out$, $\hd$, $\tl$, and
   849	combinatorial operations on $\N$.
   850	No reference to $\Rc$ or its path constructors is needed. This
   851	realises programmes (a)--(c) of \cite[\S 9.2]{paperIII} with
   852	$F = F_b$ and $P = P_\pi$ resp.\ $P_e$.
   853	
   854	We are however candid about a limitation: the predicate
   855	``$s$ satisfies the corecursive equation
   856	$\out(s)=\gamma(\mathrm{state}(s))$'' is, in a sense, exactly the
   857	description of being the unfold of $\gamma$, and the state
   858	projection $\mathrm{state}$ is canonically defined only on the
   859	image of $\unfold_\gamma$ (see \Cref{app:state}). Read
   860	\emph{externally}, the theorem says: ``the unique stream
   861	satisfying the corecursive equation for algorithm $X$ is the
   862	stream generated by algorithm $X$.'' This is not yet a
   863	characterisation of $\pi$ or $e$ as classical reals \emph{without
   864	reference to any external structure}. Such a fully external
   865	characterisation would require either (a) an internal proof that
   866	two distinct combinatorial algorithms (e.g.\ Leibniz and BBP) are
   867	bisimilar, or (b) an internal axiomatisation of which streams
   868	are ``transcendental''.
   869	
   870	What \Cref{thm:e-internal,thm:pi-internal} \emph{do} establish
   871	is that the bisimulation class
   872	$[s_e]_{\bisim_b} \in \Stream/{\bisim_b}$
   873	respectively
   874	$[s_\pi]_{\bisim_{16}}$ is the unique fixed point of a
   875	combinatorial corecursive equation, with no path-constructor
   876	data (HIIT-data) needed to express the predicate.
   877	This is a strict logical advance over the inductive
   878	characterisation of Paper~V Definition 8.1, which uses sin-zero
   879	data internal to $\Rc$. The remaining ``gap'' is exactly
   880	\Cref{prob:internal} below.
   881	\end{remark}
   882	
   883	\subsection{Comparison: Leibniz, Machin, BBP all name the same $\pi$}
   884	
   885	To illustrate the strength of bisimulation as an equality
   886	principle in HoTT, we show how three distinct corecursive
   887	definitions of $\pi$-as-stream are proved equal by
   888	coinduction.
   889	
   890	\begin{definition}[Three coalgebras for $\pi$]\label{def:three-pi}
   891	Let $\gamma_L$ (Leibniz), $\gamma_M$ (Machin), $\gamma_B$ (BBP)
   892	be three coalgebras whose unfolds in base 10 (resp.\ 10, 16)
   893	yield streams $s_L, s_M, s_B$. Each algorithm is a corecursive
   894	streaming version of the corresponding analytic identity for
   895	$\pi$.
   896	\end{definition}
   897	
   898	\begin{proposition}\label{prop:three-equal}
   899	$s_L \bisim_{10} s_M$, and
   900	$s_L \bisim_{10} \mathrm{base\text{-}conversion}(s_B)$.
   901	\end{proposition}
   902	
   903	\begin{proof}
   904	$\alpha_{10}(s_L) = \alpha_{10}(s_M) = \pi - 3 = \alpha_{10}(\mathrm{conv}(s_B))$
   905	by classical analytic identities (Leibniz, Machin, BBP all sum to
   906	$\pi$). Bisimulation follows from \Cref{lem:observable-closed} and
   907	the definition of $\bisim_b$ as the kernel of $\alpha_b$.
   908	\end{proof}
   909	
   910	\begin{remark}[Limitation: external vs.\ internal equivalence]
   911	\Cref{prop:three-equal} \emph{factors through} the approximation
   912	map $\alpha_{10}$, hence through $\Rc$. This is therefore not
   913	yet a fully \emph{internal} proof of bisimilarity: the
   914	equality of streams is established by mapping to the inductive
   915	$\Rc$, computing the values, and pulling back along the kernel
   916	of $\alpha_{10}$.
   917	
   918	A truly internal proof would establish a direct stream-level
   919	bisimulation between the Leibniz, Machin, and BBP state machines
   920	(after base conversion). Schematically, one might construct a
   921	\emph{product coalgebra} on $C_L \times C_M \times C_B'$
   922	(running all three algorithms in parallel, with $C_B'$ the
   923	base-converted BBP state), together with an invariant
   924	$I \subseteq C_L \times C_M \times C_B'$ asserting that the
   925	three running partial sums agree to within a shrinking
   926	$10^{-n}$ window. The bisimulation
   927	$R(u_L, u_M, u_B) := \exists (c_L, c_M, c_B) \in I.\,
   928	\bigwedge u_X = \unfold_{\gamma_X}(c_X)$
   929	would then be \emph{coinductively} a bisimulation, and
   930	\Cref{thm:coinduction} would conclude. The technical obstacle
   931	is constructing the invariant $I$ in HoTT without circular
   932	reference to the value of $\pi$. This is precisely the form
   933	\Cref{prob:internal} would take and we do not claim a solution.
   934	
   935	The conceptual picture is striking even in the weaker
   936	``factor-through-$\Rc$'' form: in HoTT, \emph{algorithm
   937	equivalence} on streams becomes \emph{path-equality} on the
   938	final coalgebra, and coinduction is the proof method.
   939	\end{remark}
   940	
   941	% =============================================================
   942	\section{Cubical M-types and stream realisation}\label{sec:cubical}
   943	% =============================================================
   944	
   945	We sketch the cubical-HoTT realisation of the M-type used
   946	above, following Ahrens--Capriotti--Spadotti~\cite{ACS}.
   947	
   948	\subsection{The M-type construction}
   949	
   950	\begin{definition}[M-type]\label{def:Mtype}
   951	For container $(A,B)$, define
   952	\[
   953	M\,A\,B \;:=\; \lim_{n}\,W_n
   954	\]
   955	where $W_0 = \mathbf{1}$, $W_{n+1} = \Sigma_{a:A}(B(a) \to W_n)$,
   956	and the limit is taken along the projections induced by the unique
   957	map $W_1 \to W_0 = \mathbf{1}$.
   958	\end{definition}
   959	
   960	\begin{theorem}[Cubical M-type, ACS]\label{thm:cubicalM}
   961	In cubical HoTT (CCHM), the limit \Cref{def:Mtype} exists and
   962	$M\,A\,B$ is the carrier of the final $F_{(A,B)}$-coalgebra.
   963	The destructor $\out: M\,A\,B \to F_{(A,B)}(M\,A\,B)$ is the
   964	projection onto the first level.
   965	\end{theorem}
   966	
   967	\begin{remark}[Why cubical, not just MLTT]
   968	In plain MLTT one cannot prove that $\out$ is an equivalence
   969	(\Cref{lem:lambek}) without function extensionality and
   970	$\eta$-rules. Cubical HoTT provides function extensionality
   971	\emph{judgmentally} (via path-application) and treats
   972	M-types coherently with the path structure, which is what we
   973	need for the coinduction principle to compute.
   974	\end{remark}
   975	
   976	\subsection{Productivity and guarded recursion}
   977	
   978	In cubical HoTT, the topos of trees~\cite{birkedal} provides a
   979	guarded modality $\rhd$ (read ``later''). Streams are then a fixed point
   980	$\Stream\,A \cong A \times \rhd \Stream\,A$, and corecursion is

exec
/usr/local/bin/zsh -lc "rg -n '(\\\\label|\\\\ref|\\\\Cref|\\\\cref|\\\\cite|\\\\url|\\\\includegraphics|TODO|undefined|overfull|underfull)' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
67:\newcommand{\refl}{\mathsf{refl}}
100:\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
116:of our prior series~\cite{paperIII} sketched the coalgebraic dual but
146:The synthesis paper of our series~\cite{synthesis} identified six
155:    $\Rc$ \cite{booij}, presented as the initial algebra of a signature
164:    \emph{coinduction} principle (Lambek; Rutten~\cite{rutten})
172:literature~\cite{weihrauch} establishes that Cauchy realizers and
225:and the M-types of Ahrens--Capriotti--Spadotti~\cite{ACS} are
230:Theorem~\ref{thm:coinduction}.
250:\Cref{sec:framework} fixes the type-theoretic framework: cubical
252:final coalgebras. \Cref{sec:lambek} states and proves a
254:\Cref{sec:streams} develops the stream coalgebra in detail, including
255:the carry-bisimulation. \Cref{sec:bisim} introduces
257:\Cref{sec:pi-e} contains the main results: the coalgebraic
258:characterisations of $\pi$ and $e$. \Cref{sec:cubical} sketches the
259:cubical M-type realisation. \Cref{sec:cauchy-vs-coalg} compares to
260:the Cauchy HIIT of Paper~V. \Cref{sec:zeta} states the
262:problem. \Cref{sec:open} closes with open problems.
265:\section{Mathematical framework}\label{sec:framework}
271:(CCHM)~\cite{cchm}, with universes $\Type_0:\Type_1:\dots$ closed
274:path type, $\refl_a$ for the constant path, and $\Sigma$, $\Pi$ for
281:\label{def:poly}
294:\begin{example}\label{ex:streamfun}
301:\begin{example}\label{ex:digit}
304:\Cref{ex:streamfun} with $A = \mathsf{Fin}(b)$.
307:\begin{definition}[Coalgebra]\label{def:coalg}
315:\begin{definition}[Final coalgebra]\label{def:final}
322:``Final'' here is the standard terminology of Rutten~\cite{rutten}.
336:predicate. In cubical HoTT, Ahrens--Capriotti--Spadotti~\cite{ACS}
339:\begin{theorem}[ACS, M-type final coalgebra]\label{thm:ACS}
349:\begin{definition}[Stream coalgebra]\label{def:streamcoalg}
357:recursion using the modality $\rhd$ of Birkedal et al.~\cite{birkedal}:
364:\section{Lambek's lemma and coinduction}\label{sec:lambek}
370:\begin{lemma}[Dual Lambek]\label{lem:lambek}
387:\Cref{lem:lambek} is conceptually crucial: it says the
395:\begin{definition}[Bisimulation]\label{def:bisim}
407:\begin{theorem}[Coinduction principle]\label{thm:coinduction}
414:By \Cref{def:bisim} the projections
427:\section{Stream coalgebras and digit streams}\label{sec:streams}
432:\begin{theorem}[Streams as final coalgebra]\label{thm:streamfinal}
447:(\Cref{thm:coinduction}) applied to the relation $R(s,t) :=
466:\begin{definition}[Approximation map]\label{def:approx}
481:\begin{lemma}[Approximation surjects onto $[0,1]$]\label{lem:approx-surj}
494:\begin{definition}[Carry-bisimulation]\label{def:carry}
506:\begin{theorem}[$[0,1]$ as quotient final coalgebra]\label{thm:01-quotient}
514:$\bisim_b$, and surjective by \Cref{lem:approx-surj}. Both maps
528:\section{Bisimulation-closed predicates and coinduction up-to}\label{sec:bisim}
535:\begin{definition}[Bisimulation-closed predicate]\label{def:bclosed}
542:\begin{example}\label{ex:closed}
549:\begin{definition}[Observable predicate]\label{def:observable}
556:\begin{lemma}\label{lem:observable-closed}
564:(\Cref{thm:01-quotient}). Composition with the inverse equivalence
573:The plain coinduction principle (\Cref{thm:coinduction}) requires
580:\begin{definition}[$\Phi$-up-to]\label{def:upto}
587:\begin{theorem}[Up-to-context soundness]\label{thm:upto-sound}
589:in the sense of Pous--Sangiorgi~\cite{poussangiorgi}), then any
616:is~\cite{ghani-hancock-pattinson}).
620:\section{Coalgebraic characterisations of $\pi$ and $e$}\label{sec:pi-e}
627:\begin{definition}[Series coalgebra for $e$]\label{def:e-coalg}
633:factorial-series algorithm of Sale~\cite{sale-e-1968} (refined to
634:spigot form by Rabinowitz--Wagon~\cite{rabwagon-spigot} and Gibbons~\cite{gibbons-spigot})
640:\begin{theorem}[$e$ as final-coalgebra unfold]\label{thm:e-final}
658:theorem (a classical fact; see Sale~\cite{sale-e-1968} and the
659:spigot-algorithm analysis in~\cite{rabwagon-spigot,gibbons-spigot}).
662:\begin{definition}[Predicate $P_e$]\label{def:Pe}
665:(\Cref{def:observable}) hence closed (\Cref{lem:observable-closed}).
668:\begin{theorem}[Coalgebraic characterisation of $e$]\label{thm:e-char}
678:Existence: \Cref{thm:e-final} gives an inhabitant.
689:\Cref{thm:e-char} is internal in the sense that
695:further in \Cref{sec:cauchy-vs-coalg}.
705:\begin{definition}[BBP coalgebra]\label{def:bbp}
718:\begin{theorem}[$\pi$ as final-coalgebra unfold]\label{thm:pi-final}
725:see~\cite{bbp}), the partial sums $\sum_{k=0}^{n-1}$ approximate
731:\begin{definition}[Predicate $P_\pi$]\label{def:Ppi}
734:\Cref{lem:observable-closed}.
737:\begin{theorem}[Coalgebraic characterisation of $\pi$]\label{thm:pi-char}
744:Same structure as \Cref{thm:e-char}, using \Cref{thm:pi-final}.
749:\Cref{thm:e-char} and \Cref{thm:pi-char} reference $e-2$ and
754:\begin{theorem}[Internal characterisation of $e$]\label{thm:e-internal}
758:\item $s_e \bisim_b s^*$, where $s_e$ is from \Cref{thm:e-final}.
762:defined on the image of $\unfold_{\gamma_e}$, see \Cref{app:state}),
770:\Cref{def:e-coalg} is purely combinatorial (state in $\N^5$, no
772:\Cref{app:state}). Existence: \Cref{thm:e-final}.
788:example following \Cref{thm:upto-sound}). To verify
793:$\pi_2(\gamma_e(c))$). By \Cref{thm:upto-sound} $R \subseteq \bisim$,
794:and by \Cref{thm:coinduction} $R(s^*, t)$ implies $s^* = t$.
810:\begin{theorem}[Internal characterisation of $\pi$]\label{thm:pi-internal}
822:\Cref{thm:e-internal}. Concretely, replace $\gamma_e$ by the
825:sub-series in BBP, plus a position counter; see~\cite{bbp})
834:same head/tail computation as in \Cref{thm:e-internal}, and the
837:\Cref{thm:upto-sound}). By \Cref{thm:upto-sound,thm:coinduction}
842:\begin{remark}[What \Cref{thm:e-internal} and \Cref{thm:pi-internal} do and do not say]
843:\label{rem:internal-scope}
844:The key advance of \Cref{thm:e-internal} and \Cref{thm:pi-internal}
845:over \Cref{thm:e-char} and \Cref{thm:pi-char} is that the
851:realises programmes (a)--(c) of \cite[\S 9.2]{paperIII} with
859:image of $\unfold_\gamma$ (see \Cref{app:state}). Read
870:What \Cref{thm:e-internal,thm:pi-internal} \emph{do} establish
880:\Cref{prob:internal} below.
890:\begin{definition}[Three coalgebras for $\pi$]\label{def:three-pi}
898:\begin{proposition}\label{prop:three-equal}
906:$\pi$). Bisimulation follows from \Cref{lem:observable-closed} and
911:\Cref{prop:three-equal} \emph{factors through} the approximation
930:\Cref{thm:coinduction} would conclude. The technical obstacle
933:\Cref{prob:internal} would take and we do not claim a solution.
942:\section{Cubical M-types and stream realisation}\label{sec:cubical}
946:above, following Ahrens--Capriotti--Spadotti~\cite{ACS}.
950:\begin{definition}[M-type]\label{def:Mtype}
960:\begin{theorem}[Cubical M-type, ACS]\label{thm:cubicalM}
961:In cubical HoTT (CCHM), the limit \Cref{def:Mtype} exists and
969:(\Cref{lem:lambek}) without function extensionality and
978:In cubical HoTT, the topos of trees~\cite{birkedal} provides a
986:\section{Comparison with the Cauchy HIIT}\label{sec:cauchy-vs-coalg}
997:$\pi := $ centre of contractible sin-zero type (Paper~V Def.~8.1) & $\pi := $ centre of contractible BBP unfold type (\Cref{thm:pi-internal})\\
1007:\begin{theorem}[Inductive--Coinductive equivalence]\label{thm:hiitequal}
1016:Forward direction by \Cref{thm:01-quotient}. Inverse: given
1018:the floor algorithm of \Cref{lem:approx-surj}; the resulting
1025:\begin{corollary}\label{cor:both-pi}
1027:the coinductive $\pi$ (\Cref{thm:pi-internal}) coincide.
1032:\Cref{thm:hiitequal} says the two presentations describe the
1052:\section{Connection to the $\zeta$-prerequisite chain}\label{sec:zeta}
1057:The synthesis paper~\cite[\S 7.3, \S 8 item 2]{synthesis} identifies
1059:problem. Loeffler--Stoll~\cite{loefflerstoll} formalised
1066:\begin{conjecture}[Coalgebraic $\zeta$]\label{conj:zeta}
1083:\Cref{prop:dirichlet-stream} below.
1087:\begin{proposition}[Dirichlet partial-sum stream]\label{prop:dirichlet-stream}
1099:Booij's framework). Streaming digits is then \Cref{def:approx} applied
1103:\Cref{prop:dirichlet-stream} only handles the convergence
1105:of \Cref{conj:zeta}). The classical Mellin-transform approach
1137:\section{Open problems and future work}\label{sec:open}
1142:\Cref{thm:e-internal} and \Cref{thm:pi-internal} characterise
1147:\begin{problem}[Fully internal correctness]\label{prob:internal}
1163:The quotient $\Stream/{\bisim_b}$ in \Cref{thm:01-quotient} can
1168:\begin{problem}\label{prob:carry-hit}
1184:\begin{problem}\label{prob:lean-productivity}
1202:\begin{problem}\label{prob:higher-trans}
1225:\begin{problem}\label{prob:trans-coalg}
1239:HoTT (\Cref{thm:coinduction}).
1241:(\Cref{thm:streamfinal}, \Cref{thm:01-quotient}).
1244:(\Cref{thm:e-char}, \Cref{thm:pi-char}, \Cref{thm:e-internal},
1245:\Cref{thm:pi-internal}).
1246:\item An equivalence theorem (\Cref{thm:hiitequal}) showing the
1248:\item A Dirichlet-series stream coalgebra (\Cref{prop:dirichlet-stream})
1262:\Cref{prob:lean-productivity}. The Lean component should be
1266:main open problem (\Cref{conj:zeta}) is the construction of a
1283:\label{app:prereq}
1289:HoTT and coalgebra~\cite{HoTTbook,booij,rutten,ACS,jacobs}, or a
1291:Where we cite the YonedaAI HoTT Foundations Series~\cite{paperIII,paperV,synthesis}
1295:\begin{theorem}[A.1; cf.\ Paper~III Theorem~5.2]\label{thm:app-streams-final}
1301:This is the cubical-HoTT version of Rutten~\cite{rutten}
1302:\S 2 \emph{combined with} ACS~\cite{ACS} Theorem~3.5. We use it
1305:\begin{theorem}[A.2; cf.\ Paper~III Theorem~5.3]\label{thm:app-coinduction}
1310:This is restated as our \Cref{thm:coinduction} and proved
1313:\begin{theorem}[A.3; cf.\ Paper~III Theorem~4.1]\label{thm:app-uniqueR}
1322:which is \Cref{thm:hiitequal}.
1324:\begin{theorem}[A.4; cf.\ Paper~V Definition~8.1, Theorem~5.7]\label{thm:app-pi}
1330:\begin{theorem}[A.5; cf.\ Paper~V Definition~8.2, Theorem~4.3]\label{thm:app-e}
1342:infrastructure of~\cite{cchm,ACS}.
1344:\section{Detailed state-space layout for the proof of Theorem~\ref{thm:e-internal}}
1345:\label{app:state}
1347:We expand the state-space promise of \Cref{thm:e-internal}.
1349:of~\cite{sale-e-1968,gibbons-spigot} maintains a state in $\N^5$:
1371:of \Cref{thm:e-internal} is the canonical retraction:
1378:$\Phi$ used in the proof of \Cref{thm:e-internal} is
1386:By \cite[\S 6]{poussangiorgi}, an up-to operator is compatible
1392:$\Phi$ is compatible and \Cref{thm:upto-sound} applies.

exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/coalgebraic-tex-review && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/coalgebraic-tex-review papers/latex/coalgebraic-transcendentals.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 387ms:
))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
No file coalgebraic-transcendentals.aux.
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)

LaTeX Warning: Citation `paperIII' on page 1 undefined on input line 116.

No file coalgebraic-transcendentals.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/l
ocal/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


LaTeX Warning: Citation `synthesis' on page 2 undefined on input line 146.


LaTeX Warning: Citation `booij' on page 2 undefined on input line 155.


LaTeX Warning: Citation `rutten' on page 2 undefined on input line 164.


LaTeX Warning: Citation `weihrauch' on page 2 undefined on input line 172.

[2]

LaTeX Warning: Citation `ACS' on page 3 undefined on input line 225.


LaTeX Warning: Reference `thm:coinduction' on page 3 undefined on input line 23
0.


LaTeX Warning: Reference `sec:framework' on page 1 undefined on input line 250.



LaTeX Warning: Reference `sec:lambek' on page 1 undefined on input line 252.


LaTeX Warning: Reference `sec:streams' on page 1 undefined on input line 254.


LaTeX Warning: Reference `sec:bisim' on page 1 undefined on input line 255.


LaTeX Warning: Reference `sec:pi-e' on page 1 undefined on input line 257.


LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 258.


LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
e 259.


LaTeX Warning: Reference `sec:zeta' on page 1 undefined on input line 260.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 262.


LaTeX Warning: Citation `cchm' on page 3 undefined on input line 271.

[3]

LaTeX Warning: Reference `ex:streamfun' on page 1 undefined on input line 304.


LaTeX Warning: Citation `rutten' on page 4 undefined on input line 322.


LaTeX Warning: Citation `ACS' on page 4 undefined on input line 336.


Overfull \hbox (16.8267pt too wide) in paragraph at lines 350--353
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Stream coal-ge-bra)\OT1/cmr/
bx/n/12 . []$[] \OML/cmm/m/it/12 A \OT1/cmr/m/n/12 := \OML/cmm/m/it/12 M A \OT1
/cmr/m/n/12 (\OML/cmm/m/it/12 ^^U[]: \OT1/cmr/bx/n/12 1\OT1/cmr/m/n/12 )$. The 
de-struc-tor $[] : [] \OML/cmm/m/it/12 A \OMS/cmsy/m/n/12 !

LaTeX Warning: Citation `birkedal' on page 4 undefined on input line 357.

[4]

LaTeX Warning: Reference `lem:lambek' on page 1 undefined on input line 387.

Runaway argument?
{definition> 
./papers/latex/coalgebraic-transcendentals.tex:406: Paragraph ended before \end
  was complete.
<to be read again> 
                   \par 
l.406 
      
./papers/latex/coalgebraic-transcendentals.tex:406:  ==> Fatal error occurred, 
no output PDF file produced!
Transcript written on /tmp/coalgebraic-tex-review/coalgebraic-transcendentals.l
og.

codex
The first actual compile blocker is a malformed `\end{definition}` at line 405. To find downstream warnings without touching the source, I’m going to patch a temporary copy under `/tmp` and continue compiling that copy.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '981,1425p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   981	just guarded recursion: the recursive call is hidden under $\rhd$,
   982	ensuring productivity at the type level. This is what makes our
   983	$\unfold_\gamma$ judgmentally well-defined.
   984	
   985	% =============================================================
   986	\section{Comparison with the Cauchy HIIT}\label{sec:cauchy-vs-coalg}
   987	% =============================================================
   988	
   989	\subsection{Side-by-side}
   990	
   991	\begin{center}
   992	\begin{tabular}{p{0.43\textwidth}p{0.49\textwidth}}
   993	\hline
   994	\textbf{Inductive (Booij/HoTT Cauchy)} & \textbf{Coinductive (final coalgebra)}\\\hline
   995	HIIT $\Rc$ with rat, lim, path-constr & M-type $\Stream\,\mathsf{Fin}(b)$ + $\bisim_b$\\
   996	Recursor: $f(\mathrm{rat}\,q), f(\mathrm{lim}\,x), f(\mathrm{path}\,\dots)$ & Corecursor: $\hd(\unfold(c)), \tl(\unfold(c))$\\
   997	$\pi := $ centre of contractible sin-zero type (Paper~V Def.~8.1) & $\pi := $ centre of contractible BBP unfold type (\Cref{thm:pi-internal})\\
   998	Equality by computation rule + truncation & Equality by bisimulation\\
   999	Computational content: Cauchy realiser & Computational content: digit stream\\
  1000	$\Rc$ has join-semilattice + lim-axioms & $\Stream/{\bisim_b}$ has digit-shift action\\
  1001	\hline
  1002	\end{tabular}
  1003	\end{center}
  1004	
  1005	\subsection{Equivalence theorem}
  1006	
  1007	\begin{theorem}[Inductive--Coinductive equivalence]\label{thm:hiitequal}
  1008	There is a HoTT equivalence
  1009	\[
  1010	\beta_b: \Stream\,\mathsf{Fin}(b)/{\bisim_b}\;\simeq\;[0,1]\subset\Rc
  1011	\]
  1012	sending the bisimulation class of $s$ to $\alpha_b(s)$.
  1013	\end{theorem}
  1014	
  1015	\begin{proof}
  1016	Forward direction by \Cref{thm:01-quotient}. Inverse: given
  1017	$x \in [0,1]\cap \Rc$, produce its base-$b$ digit stream by
  1018	the floor algorithm of \Cref{lem:approx-surj}; the resulting
  1019	class $[s]\in\Stream/{\bisim_b}$ is well-defined because
  1020	two different digit-expansion choices for the same $x$ differ
  1021	only at carry boundaries (the $0.999\dots = 1$ identifications),
  1022	which is exactly $\bisim_b$.
  1023	\end{proof}
  1024	
  1025	\begin{corollary}\label{cor:both-pi}
  1026	Under $\beta_b$, the inductive $\pi$ (Paper~V Definition 8.1) and
  1027	the coinductive $\pi$ (\Cref{thm:pi-internal}) coincide.
  1028	\end{corollary}
  1029	
  1030	\subsection{Why the duality matters}
  1031	
  1032	\Cref{thm:hiitequal} says the two presentations describe the
  1033	same mathematical object. But \emph{computationally} they differ:
  1034	
  1035	\begin{itemize}
  1036	\item The inductive presentation supports \emph{recursion}:
  1037	to define $f: \Rc \to X$ specify $f(\mathrm{rat}\,q)$,
  1038	$f(\mathrm{lim}\,x)$, and verify path coherence.
  1039	\item The coinductive presentation supports \emph{corecursion}:
  1040	to define $g: X \to \Stream$ specify $\hd(g(c))$ and $\tl(g(c))$
  1041	in terms of head/tail of an evolving state.
  1042	\end{itemize}
  1043	
  1044	For the transcendentals, the natural definitions are
  1045	\emph{corecursive}: $e$ and $\pi$ are typically given by
  1046	streaming-digit algorithms (Sale, BBP, spigot algorithms in
  1047	general). The coinductive presentation matches these algorithms
  1048	\emph{judgmentally}; the inductive presentation requires a layer
  1049	of approximation-and-quotient.
  1050	
  1051	% =============================================================
  1052	\section{Connection to the $\zeta$-prerequisite chain}\label{sec:zeta}
  1053	% =============================================================
  1054	
  1055	\subsection{The principal open problem}
  1056	
  1057	The synthesis paper~\cite[\S 7.3, \S 8 item 2]{synthesis} identifies
  1058	``$\zeta(s)=0$ as a HoTT-native statement'' as the principal open
  1059	problem. Loeffler--Stoll~\cite{loefflerstoll} formalised
  1060	$\zeta$ in classical Lean/Mathlib (3300 lines for the analytic
  1061	continuation alone), but no HoTT-native formalisation of the
  1062	Riemann zeta function is known.
  1063	
  1064	The coalgebraic toolkit developed here suggests an attack route:
  1065	
  1066	\begin{conjecture}[Coalgebraic $\zeta$]\label{conj:zeta}
  1067	There is a polynomial endofunctor $H: \Type \to \Type$ with $\nu H$
  1068	modelling the Riemann zeta function as a stream of digits in some
  1069	base parametrised by the complex argument $s \in \mathbb{C}_c$,
  1070	such that:
  1071	\begin{enumerate}
  1072	\item For $s$ with $\Re(s) > 1$, $\unfold_{\gamma_\zeta(s)}$ produces
  1073	the stream of digits of $\zeta(s)$ via the Dirichlet series.
  1074	\item For $s$ in the analytic continuation domain $\mathbb{C}_c\setminus\{1\}$,
  1075	$\unfold_{\gamma_\zeta'(s)}$ produces digits via Hurwitz formula.
  1076	\item There is a bisimulation-closed predicate
  1077	$P_{\zeta=0}: \nu H \to \mathsf{Prop}$ such that $\zeta(s) = 0$
  1078	in $\mathbb{C}_c$ iff the unique unfold satisfies $P_{\zeta=0}$.
  1079	\end{enumerate}
  1080	\end{conjecture}
  1081	
  1082	This conjecture is open. We make some progress in
  1083	\Cref{prop:dirichlet-stream} below.
  1084	
  1085	\subsection{Dirichlet series as stream}
  1086	
  1087	\begin{proposition}[Dirichlet partial-sum stream]\label{prop:dirichlet-stream}
  1088	For $s \in \mathbb{C}_c$ with $\Re(s) > 1$, define a coalgebra
  1089	$(C_s, \gamma_s)$ on $C_s := \N \times \mathbb{C}_c$ with
  1090	$\gamma_s(n, z) = (\mathrm{digit}(z'), (n+1, z'))$ where
  1091	$z' = z + n^{-s}$ (the next partial-sum). Then
  1092	$\alpha_b(\unfold_{\gamma_s}(0,0)) = \zeta(s)$, modulo
  1093	the carry-bisimulation.
  1094	\end{proposition}
  1095	
  1096	\begin{proof}[Proof sketch]
  1097	The partial sums $\sum_{n=1}^N n^{-s}$ form a Cauchy approximation
  1098	to $\zeta(s)$ for $\Re(s) > 1$ (standard fact, constructive proof in
  1099	Booij's framework). Streaming digits is then \Cref{def:approx} applied
  1100	to that Cauchy approximation.
  1101	\end{proof}
  1102	
  1103	\Cref{prop:dirichlet-stream} only handles the convergence
  1104	half-plane. The hard part is analytic continuation (steps 2 and 3
  1105	of \Cref{conj:zeta}). The classical Mellin-transform approach
  1106	(Loeffler--Stoll) does not obviously translate to the coalgebraic
  1107	setting because contour integration along non-trivial paths in
  1108	$\mathbb{C}_c$ is itself a non-trivial constructive issue. We
  1109	mark this as the principal open problem of the present series.
  1110	
  1111	\subsection{Toward analytic continuation coalgebraically}
  1112	
  1113	A possible attack: use the functional equation of $\zeta$,
  1114	\[
  1115	\zeta(s) = 2^s \pi^{s-1} \sin\!\left(\frac{\pi s}{2}\right)
  1116	\Gamma(1-s)\,\zeta(1-s),
  1117	\]
  1118	to define $\zeta$ on $\Re(s) < 0$ by reflection. This is a
  1119	\emph{recursive} definition (refer $\zeta(s)$ to $\zeta(1-s)$),
  1120	which corresponds in our framework to a \emph{morphism between
  1121	two coalgebras} for the same functor $H$, with the morphism
  1122	implementing the $s \leftrightarrow 1-s$ symmetry. A
  1123	construction of such a morphism in HoTT requires:
  1124	
  1125	\begin{itemize}
  1126	\item A coalgebraic $\sin$ and $\Gamma$ in $\mathbb{C}_c$ (the
  1127	former is approachable via the universal property of $\exp$ from
  1128	Paper~III \S 4.3; the latter is significantly harder).
  1129	\item A coalgebraic $z^s$ (complex exponentiation), again via
  1130	$\exp$ and $\log$.
  1131	\end{itemize}
  1132	
  1133	This is a substantial programme; we leave it as a long-term goal
  1134	of the YonedaAI HoTT mathematics initiative.
  1135	
  1136	% =============================================================
  1137	\section{Open problems and future work}\label{sec:open}
  1138	% =============================================================
  1139	
  1140	\subsection{The internalisation gap}
  1141	
  1142	\Cref{thm:e-internal} and \Cref{thm:pi-internal} characterise
  1143	$\pi, e$ via combinatorial corecursive equations. But the
  1144	correctness theorems (that the unfold equals $\pi - 3$ resp.\
  1145	$e - 2$) still reference $\Rc$ via $\alpha_b$.
  1146	
  1147	\begin{problem}[Fully internal correctness]\label{prob:internal}
  1148	Find a HoTT statement $\Phi(s)$ in the language of streams alone
  1149	(no $\Rc$, no $\alpha_b$) such that
  1150	$\Phi(s_\pi) \leftrightarrow \mathrm{ChurchRosserlikeProperty}(s_\pi)$,
  1151	where the property captures $\alpha_{16}(s_\pi) = \pi - 3$ via a
  1152	purely stream-theoretic invariant.
  1153	\end{problem}
  1154	
  1155	A candidate: stream-bisimulation between $s_\pi$ and the unfold
  1156	of an alternative coalgebra (Machin, Leibniz after base
  1157	conversion). This makes the correctness theorem a
  1158	bisimulation-only statement, but at the cost of relating
  1159	\emph{distinct combinatorial} algorithms via coinduction.
  1160	
  1161	\subsection{The carry-bisimulation as HIT vs. propositional truncation}
  1162	
  1163	The quotient $\Stream/{\bisim_b}$ in \Cref{thm:01-quotient} can
  1164	be presented as either (i) a set-quotient HIT, or (ii) a Voevodsky
  1165	propositional truncation of the equivalence relation. The two are
  1166	HoTT-equal by univalence-for-sets but differ in computation.
  1167	
  1168	\begin{problem}\label{prob:carry-hit}
  1169	Compare the cubical realisation of $\Stream/{\bisim_b}$ as set-HIT
  1170	vs.\ propositional truncation. Which presentation makes
  1171	$\beta_b: \Stream/{\bisim_b} \simeq [0,1]$ \emph{computational}
  1172	(i.e.\ $\beta_b \circ \beta_b^{-1} \equiv \id$ judgmentally)?
  1173	\end{problem}
  1174	
  1175	\subsection{Productivity and the totality of $\unfold$}
  1176	
  1177	In MLTT-without-cubical, the totality of $\unfold$ requires a
  1178	guardedness check on the coalgebra. In our case the BBP and
  1179	Sale algorithms are guarded by construction (each step emits
  1180	exactly one digit and modifies state), but a fully formal
  1181	proof of guardedness is currently absent in our Lean
  1182	artefact.
  1183	
  1184	\begin{problem}\label{prob:lean-productivity}
  1185	Formalise productivity of the BBP and Sale digit-extraction
  1186	algorithms in Lean~4/Mathlib using the \texttt{Stream'} API and
  1187	the \texttt{Coinductive} machinery.
  1188	\end{problem}
  1189	
  1190	\subsection{Higher transcendentals}
  1191	
  1192	The methods of this paper apply (with the obvious modifications) to other
  1193	transcendentals with known spigot/streaming algorithms:
  1194	\begin{itemize}
  1195	\item Catalan's constant $G = \sum_{n=0}^\infty (-1)^n/(2n+1)^2$
  1196	\item Apéry's constant $\zeta(3)$ (Apéry's series gives a streaming
  1197	algorithm)
  1198	\item Euler--Mascheroni $\gamma$ (no known streaming algorithm of
  1199	state $\mathrm{poly}(n)$, an open problem in itself)
  1200	\end{itemize}
  1201	
  1202	\begin{problem}\label{prob:higher-trans}
  1203	Extend the coalgebraic characterisation to $\zeta(3)$, Catalan's
  1204	constant, and (failing that) prove that $\gamma$ has no
  1205	finite-state stream coalgebra unfold-equal to it.
  1206	\end{problem}
  1207	
  1208	\subsection{Coalgebraic transcendence proofs}
  1209	
  1210	The Lindemann--Weierstrass theorem proves the algebraic
  1211	independence of $e^{\alpha_1},\ldots,e^{\alpha_n}$ for
  1212	$\Q$-linearly independent algebraic $\alpha_i$. Paper~V
  1213	\S 8.3--8.4 marks this as ``partially formalisable'' in
  1214	$\Rc$. A coalgebraic proof would require:
  1215	
  1216	\begin{itemize}
  1217	\item A coalgebraic structure on the algebraic numbers
  1218	$\overline{\Q}$ (perhaps as a final coalgebra of an
  1219	``algebraic-extension'' functor).
  1220	\item A coalgebraic $\exp$ as the unique coalgebra
  1221	morphism $\Rc \to \Stream\,\mathsf{Fin}(b)$ from the
  1222	ODE $f' = f$ universal property.
  1223	\end{itemize}
  1224	
  1225	\begin{problem}\label{prob:trans-coalg}
  1226	Formulate a coalgebraic Lindemann--Weierstrass theorem in HoTT.
  1227	\end{problem}
  1228	
  1229	% =============================================================
  1230	\section{Conclusion}
  1231	% =============================================================
  1232	
  1233	We have given a coinductive characterisation of $\pi$ and $e$
  1234	in homotopy type theory, completing the programme sketched in
  1235	Paper~III \S 5 of the prior series. The principal new results are:
  1236	
  1237	\begin{itemize}
  1238	\item A clean statement of the coinduction principle in cubical
  1239	HoTT (\Cref{thm:coinduction}).
  1240	\item Stream coalgebras realising digit expansions
  1241	(\Cref{thm:streamfinal}, \Cref{thm:01-quotient}).
  1242	\item Coalgebraic characterisations of $\pi$ and $e$ as unique
  1243	unfolds satisfying bisimulation-closed observable predicates
  1244	(\Cref{thm:e-char}, \Cref{thm:pi-char}, \Cref{thm:e-internal},
  1245	\Cref{thm:pi-internal}).
  1246	\item An equivalence theorem (\Cref{thm:hiitequal}) showing the
  1247	coinductive presentation matches Booij's HIIT $\Rc$ on $[0,1]$.
  1248	\item A Dirichlet-series stream coalgebra (\Cref{prop:dirichlet-stream})
  1249	giving partial progress towards a coalgebraic $\zeta$.
  1250	\end{itemize}
  1251	
  1252	An accompanying executable framework is provided in Haskell:
  1253	the stream functor, unfold/corecursion, the carry-bisimulation,
  1254	and the spigot algorithms for $\pi$ (Leibniz, Machin) and $e$
  1255	(factorial series), together with QuickCheck properties for
  1256	stream operations and approximation round-trips. The Lean~4
  1257	companion file (using Mathlib's \texttt{Stream'} API) formalises
  1258	the basic coalgebra structure, the corecursive \texttt{unfold},
  1259	and a (classical, set-level) coinduction principle; it does
  1260	\emph{not} include a formal proof of the productivity of the
  1261	Sale or BBP transitions, which is left as
  1262	\Cref{prob:lean-productivity}. The Lean component should be
  1263	read as a partial certification of the type-theoretic
  1264	infrastructure, not as a complete formalisation of the main
  1265	theorems. The full formalisation effort is substantial: the
  1266	main open problem (\Cref{conj:zeta}) is the construction of a
  1267	HoTT-native coalgebraic Riemann zeta function with
  1268	$\zeta(s) = 0$ as a bisimulation-closed predicate; this remains
  1269	far from solved.
  1270	
  1271	Coinductively, the picture has unified beauty:
  1272	$\pi$ is a \emph{stream}, namely the unique stream produced
  1273	by the BBP corecursive equation; $e$ is a \emph{stream},
  1274	namely the unique stream produced by the factorial-series
  1275	corecursive equation; $[0,1]$ is the \emph{type of streams modulo
  1276	carry}; and equality of streams is exactly bisimulation.
  1277	The HIIT route of Booij is one face of these objects; the
  1278	final-coalgebra route is the other. Univalence binds them.
  1279	
  1280	% =============================================================
  1281	\appendix
  1282	\section{Prerequisites from the prior series, made explicit}
  1283	\label{app:prereq}
  1284	% =============================================================
  1285	
  1286	To make the present paper self-contained, we restate (without
  1287	re-proving) the prior results on which our arguments rely. Each
  1288	is either a textbook fact, found in the standard references on
  1289	HoTT and coalgebra~\cite{HoTTbook,booij,rutten,ACS,jacobs}, or a
  1290	routine adaptation of a textbook fact to the cubical setting.
  1291	Where we cite the YonedaAI HoTT Foundations Series~\cite{paperIII,paperV,synthesis}
  1292	the citation is to a particular textbook-style adaptation; the
  1293	underlying proofs are the standard ones.
  1294	
  1295	\begin{theorem}[A.1; cf.\ Paper~III Theorem~5.2]\label{thm:app-streams-final}
  1296	For any type $A : \Type$, the M-type
  1297	$M(A,\lambda{-}.\mathbf{1}) \cong A^\N$ together with
  1298	$\out := \langle\hd,\tl\rangle$ is a final coalgebra of the
  1299	endofunctor $F_A\,X = A \times X$.
  1300	\end{theorem}
  1301	This is the cubical-HoTT version of Rutten~\cite{rutten}
  1302	\S 2 \emph{combined with} ACS~\cite{ACS} Theorem~3.5. We use it
  1303	in the form proved by ACS.
  1304	
  1305	\begin{theorem}[A.2; cf.\ Paper~III Theorem~5.3]\label{thm:app-coinduction}
  1306	For final coalgebra $(\nu F, \out)$ of polynomial endofunctor $F$,
  1307	two elements $x, y : \nu F$ satisfy a path equality $x = y$ iff
  1308	there exists an $F$-bisimulation $R$ with $R(x,y)$.
  1309	\end{theorem}
  1310	This is restated as our \Cref{thm:coinduction} and proved
  1311	internally to the present paper.
  1312	
  1313	\begin{theorem}[A.3; cf.\ Paper~III Theorem~4.1]\label{thm:app-uniqueR}
  1314	There is, up to unique order-preserving HoTT-equivalence, a
  1315	unique Dedekind-complete Archimedean ordered field $\R$. Booij's
  1316	Cauchy HIIT $\Rc$ is one such; the quotient
  1317	$\bigl(\Z \times (\Stream\,\mathsf{Fin}(b))\bigr)/{\bisim_b'}$ for
  1318	the natural extension of $\bisim_b$ to $\Z$-shifted streams is
  1319	another.
  1320	\end{theorem}
  1321	We use this in the form: the two presentations agree on $[0,1]$,
  1322	which is \Cref{thm:hiitequal}.
  1323	
  1324	\begin{theorem}[A.4; cf.\ Paper~V Definition~8.1, Theorem~5.7]\label{thm:app-pi}
  1325	In Booij's HIIT $\Rc$, the type
  1326	$\Sigma_{p:\Rc}\,(\sin p = 0)\times(p>0)\times(\forall x\in (0,p),\,\sin x>0)$
  1327	is contractible. Its centre is by definition $\pi$.
  1328	\end{theorem}
  1329	
  1330	\begin{theorem}[A.5; cf.\ Paper~V Definition~8.2, Theorem~4.3]\label{thm:app-e}
  1331	In Booij's HIIT $\Rc$, the type
  1332	$\Sigma_{f:\Rc\to\Rc}\Sigma_{x:\Rc}\,(f'=f)\times(f(0)=1)\times(x = f(1))$
  1333	is contractible (the universal-property of $\exp$). Its centre's
  1334	$x$-component is by definition $e$.
  1335	\end{theorem}
  1336	
  1337	These five statements are the only places where the prior series
  1338	enters our arguments. Reader who prefers to take them as
  1339	\emph{assumptions} of the present paper may do so; the rest of
  1340	the paper then becomes a self-contained development atop these
  1341	five axioms together with the standard cubical-HoTT
  1342	infrastructure of~\cite{cchm,ACS}.
  1343	
  1344	\section{Detailed state-space layout for the proof of Theorem~\ref{thm:e-internal}}
  1345	\label{app:state}
  1346	
  1347	We expand the state-space promise of \Cref{thm:e-internal}.
  1348	The streaming-factorial spigot algorithm
  1349	of~\cite{sale-e-1968,gibbons-spigot} maintains a state in $\N^5$:
  1350	$(n, k, p, q, d)$ where $n$ is the digit position emitted so far,
  1351	$k$ is the next factorial index ready to be summed, and
  1352	$(p, q, d)$ are the bookkeeping triple of (current scaled
  1353	remainder numerator, current scaled denominator, current digit-out).
  1354	
  1355	The transition $\gamma_e: \N^5 \to \mathsf{Fin}(b) \times \N^5$ is:
  1356	
  1357	\begin{enumerate}
  1358	\item Multiply $(p, q)$ by $b$:
  1359	$(p', q') := (b\cdot p, q)$.
  1360	\item Extract the integer part: $d' := p' \div q'$, $p'' := p' \mod q'$.
  1361	(In the cubical implementation $\div$ and $\mod$ are total
  1362	constructive operations on $\N$.)
  1363	\item Update the position: $n' := n + 1$, $k' := k$ (unchanged).
  1364	\item If the remainder $p''/q'$ is below the precision threshold
  1365	$1/q'$, advance the factorial: $q'' := q' \cdot k'$, $k'' := k' + 1$,
  1366	and re-normalise $p''$ by adding the new term's contribution.
  1367	\item Output: $(d', (n', k'', p''', q''))$.
  1368	\end{enumerate}
  1369	
  1370	The state projection function $\mathrm{state}: \Stream\,\mathsf{Fin}(b) \to \N^5$
  1371	of \Cref{thm:e-internal} is the canonical retraction:
  1372	$\mathrm{state}(s) = $ the unique $c$ such that $s = \unfold_{\gamma_e}(c)$,
  1373	when such $c$ exists. This is a \emph{partial} function in
  1374	general, but defined on the image of $\unfold_{\gamma_e}$, which
  1375	is the only place it is used.
  1376	
  1377	\textbf{Compatibility of the up-to operator.} The up-to operator
  1378	$\Phi$ used in the proof of \Cref{thm:e-internal} is
  1379	\[
  1380	\Phi(R) \;:=\; \{(u_1, u_2) :
  1381	  \exists c, c'.\, R(\unfold_{\gamma_e}(c), \unfold_{\gamma_e}(c'))
  1382	  \wedge u_1 = \unfold_{\gamma_e}(c)
  1383	  \wedge u_2 = \unfold_{\gamma_e}(c')
  1384	\}.
  1385	\]
  1386	By \cite[\S 6]{poussangiorgi}, an up-to operator is compatible
  1387	iff it preserves the \emph{evolution} structure of the coalgebra.
  1388	For our $\gamma_e$ this reduces to the observation that
  1389	$\unfold_{\gamma_e}$ is a coalgebra morphism: heads commute with
  1390	$\Phi$ by definition (they are determined by the first projection
  1391	of $\gamma_e$), and tails commute by the recursive call. Hence
  1392	$\Phi$ is compatible and \Cref{thm:upto-sound} applies.
  1393	
  1394	% =============================================================
  1395	% Bibliography
  1396	% =============================================================
  1397	\begin{thebibliography}{99}
  1398	
  1399	\bibitem{paperIII}
  1400	Long, M. (2026). \emph{Universal Properties of Real Numbers and
  1401	Transcendentals}. Paper III, YonedaAI HoTT Foundations Series.
  1402	
  1403	\bibitem{paperV}
  1404	Long, M. (2026). \emph{The HoTT Perspective: Numbers as Inductive
  1405	Types up to Path Equivalence}. Paper V, YonedaAI HoTT Foundations
  1406	Series.
  1407	
  1408	\bibitem{synthesis}
  1409	Long, M. (2026). \emph{The Univalent Correspondence: How Six
  1410	Perspectives on Number Become One}. Synthesis Paper, YonedaAI
  1411	HoTT Foundations Series.
  1412	
  1413	\bibitem{booij}
  1414	Booij, A. (2020). \emph{Analysis in Univalent Type Theory}.
  1415	Ph.D.\ Thesis, University of Birmingham.
  1416	
  1417	\bibitem{rutten}
  1418	Rutten, J.J.M.M. (2000). Universal coalgebra: a theory of
  1419	systems. \emph{Theoretical Computer Science} 249(1):3--80.
  1420	
  1421	\bibitem{jacobs}
  1422	Jacobs, B. (2016). \emph{Introduction to Coalgebra: Towards
  1423	Mathematics of States and Observation}. Cambridge Tracts in
  1424	Theoretical Computer Science.
  1425	

exec
/usr/local/bin/zsh -lc "rg -n '\\\\end\\{["'^}]*>|'"\\\\begin\\{["'^}]*>|'"\\\\rhd|\\\\text\\{|\\\\begin\\{tabular|\\\\bibitem|thebibliography|begin\\{appendix|appendix' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
357:recursion using the modality $\rhd$ of Birkedal et al.~\cite{birkedal}:
358:$\Stream\,A \cong A \times \rhd \Stream\,A$. The fixed point exists
359:because $\rhd$ is a contractive functor and the guarded recursion
405:\end{definition>
801:\mathrm{state}(v_1) = c\wedge v_1\text{ satisfies the equation}$).
816:\out(s^*_\pi) = \gamma_\pi^{\text{combinatorial}}(\mathrm{state}_0).
823:combinatorial BBP transition function $\gamma_\pi^{\text{combinatorial}}$:
830:  ( u_1 = \unfold_{\gamma_\pi^{\text{combinatorial}}}(c))\times
831:  ( u_2 = \unfold_{\gamma_\pi^{\text{combinatorial}}}(c))
900:$s_L \bisim_{10} \mathrm{base\text{-}conversion}(s_B)$.
979:guarded modality $\rhd$ (read ``later''). Streams are then a fixed point
980:$\Stream\,A \cong A \times \rhd \Stream\,A$, and corecursion is
981:just guarded recursion: the recursive call is hidden under $\rhd$,
992:\begin{tabular}{p{0.43\textwidth}p{0.49\textwidth}}
1281:\appendix
1397:\begin{thebibliography}{99}
1399:\bibitem{paperIII}
1403:\bibitem{paperV}
1408:\bibitem{synthesis}
1413:\bibitem{booij}
1417:\bibitem{rutten}
1421:\bibitem{jacobs}
1426:\bibitem{ACS}
1430:\bibitem{cchm}
1435:\bibitem{birkedal}
1441:\bibitem{poussangiorgi}
1446:\bibitem{ghani-hancock-pattinson}
1450:\bibitem{sale-e-1968}
1454:\bibitem{rabwagon-spigot}
1458:\bibitem{gibbons-spigot}
1462:\bibitem{bbp}
1467:\bibitem{weihrauch}
1471:\bibitem{loefflerstoll}
1476:\bibitem{HoTTbook}
1481:\bibitem{voevodsky}
1485:\bibitem{licatashulman}
1489:\bibitem{coquand-coinductive}
1493:\bibitem{rutten-streams}
1498:\bibitem{aczel}
1502:\bibitem{bordg-paulson}
1506:\bibitem{kleene}
1510:\bibitem{turing}
1514:\bibitem{kapulkin-lumsdaine}
1519:\bibitem{shulman-cohesive}
1523:\bibitem{sangiorgi-coind-book}
1527:\bibitem{abbott-altenkirch}
1532:\end{thebibliography}

exec
/usr/local/bin/zsh -lc "cp papers/latex/coalgebraic-transcendentals.tex /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex && perl -0pi -e 's/\\\\end\\{definition>/\\\\end\\{definition}/g' /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/coalgebraic-tex-review /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 471ms:
)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
No file coalgebraic-transcendentals-pass2.aux.
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)

LaTeX Warning: Citation `paperIII' on page 1 undefined on input line 116.

No file coalgebraic-transcendentals-pass2.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/l
ocal/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


LaTeX Warning: Citation `synthesis' on page 2 undefined on input line 146.


LaTeX Warning: Citation `booij' on page 2 undefined on input line 155.


LaTeX Warning: Citation `rutten' on page 2 undefined on input line 164.


LaTeX Warning: Citation `weihrauch' on page 2 undefined on input line 172.

[2]

LaTeX Warning: Citation `ACS' on page 3 undefined on input line 225.


LaTeX Warning: Reference `thm:coinduction' on page 3 undefined on input line 23
0.


LaTeX Warning: Reference `sec:framework' on page 1 undefined on input line 250.



LaTeX Warning: Reference `sec:lambek' on page 1 undefined on input line 252.


LaTeX Warning: Reference `sec:streams' on page 1 undefined on input line 254.


LaTeX Warning: Reference `sec:bisim' on page 1 undefined on input line 255.


LaTeX Warning: Reference `sec:pi-e' on page 1 undefined on input line 257.


LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 258.


LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
e 259.


LaTeX Warning: Reference `sec:zeta' on page 1 undefined on input line 260.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 262.


LaTeX Warning: Citation `cchm' on page 3 undefined on input line 271.

[3]

LaTeX Warning: Reference `ex:streamfun' on page 1 undefined on input line 304.


LaTeX Warning: Citation `rutten' on page 4 undefined on input line 322.


LaTeX Warning: Citation `ACS' on page 4 undefined on input line 336.


Overfull \hbox (16.8267pt too wide) in paragraph at lines 350--353
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Stream coal-ge-bra)\OT1/cmr/
bx/n/12 . []$[] \OML/cmm/m/it/12 A \OT1/cmr/m/n/12 := \OML/cmm/m/it/12 M A \OT1
/cmr/m/n/12 (\OML/cmm/m/it/12 ^^U[]: \OT1/cmr/bx/n/12 1\OT1/cmr/m/n/12 )$. The 
de-struc-tor $[] : [] \OML/cmm/m/it/12 A \OMS/cmsy/m/n/12 !

LaTeX Warning: Citation `birkedal' on page 4 undefined on input line 357.

[4]

LaTeX Warning: Reference `lem:lambek' on page 1 undefined on input line 387.


LaTeX Warning: Reference `def:bisim' on page 1 undefined on input line 414.

[5]

LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 44
7.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 462.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 462.

/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex:481: Extra },
 or forgotten $.
<argument> ...(Approximation surjects onto $[0,1)}
                                                  
l.481 ...lemma}[Approximation surjects onto $[0,1]
                                                  $]\label{lem:approx-surj}
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex:481:  ==> Fat
al error occurred, no output PDF file produced!
Transcript written on /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-p
ass2.log.

exec
/usr/local/bin/zsh -lc "rg -n '\\\\begin\\{(theorem|lemma|definition|proposition|corollary|remark|example|problem|conjecture)\\}\\[["'^'"\\n]*\\[["'^'"\\n]*\\]' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
481:\begin{lemma}[Approximation surjects onto $[0,1]$]\label{lem:approx-surj}
506:\begin{theorem}[$[0,1]$ as quotient final coalgebra]\label{thm:01-quotient}
519:\begin{remark}[$\R$ from $[0,1]$]

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '1420,1540p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1420	
  1421	\bibitem{jacobs}
  1422	Jacobs, B. (2016). \emph{Introduction to Coalgebra: Towards
  1423	Mathematics of States and Observation}. Cambridge Tracts in
  1424	Theoretical Computer Science.
  1425	
  1426	\bibitem{ACS}
  1427	Ahrens, B., Capriotti, P., \& Spadotti, R. (2015). Non-wellfounded
  1428	trees in homotopy type theory. \emph{Proc.\ TLCA}.
  1429	
  1430	\bibitem{cchm}
  1431	Cohen, C., Coquand, T., Huber, S., \& M\"ortberg, A. (2018).
  1432	Cubical Type Theory: a constructive interpretation of the
  1433	univalence axiom. \emph{IfCoLog Journal of Logics}.
  1434	
  1435	\bibitem{birkedal}
  1436	Birkedal, L., M{\o}gelberg, R.E., Schwinghammer, J., \&
  1437	St{\o}vring, K. (2012). First steps in synthetic guarded
  1438	domain theory: step-indexing in the topos of trees.
  1439	\emph{Logical Methods in Computer Science} 8.
  1440	
  1441	\bibitem{poussangiorgi}
  1442	Pous, D., \& Sangiorgi, D. (2012). Enhancements of the
  1443	bisimulation proof method, in \emph{Advanced Topics in
  1444	Bisimulation and Coinduction}, CUP.
  1445	
  1446	\bibitem{ghani-hancock-pattinson}
  1447	Ghani, N., Hancock, P., \& Pattinson, D. (2009). Continuous
  1448	functions on final coalgebras. \emph{ENTCS} 249:3--18.
  1449	
  1450	\bibitem{sale-e-1968}
  1451	Sale, A.H.J. (1968). The calculation of $e$ to many significant
  1452	digits. \emph{The Computer Journal} 11(2):229--230.
  1453	
  1454	\bibitem{rabwagon-spigot}
  1455	Rabinowitz, S., \& Wagon, S. (1995). A spigot algorithm for the
  1456	digits of $\pi$. \emph{American Math.\ Monthly} 102:195--203.
  1457	
  1458	\bibitem{gibbons-spigot}
  1459	Gibbons, J. (2006). Unbounded spigot algorithms for the digits
  1460	of pi. \emph{American Math.\ Monthly} 113:318--328.
  1461	
  1462	\bibitem{bbp}
  1463	Bailey, D.H., Borwein, P., \& Plouffe, S. (1997). On the rapid
  1464	computation of various polylogarithmic constants.
  1465	\emph{Mathematics of Computation} 66:903--913.
  1466	
  1467	\bibitem{weihrauch}
  1468	Weihrauch, K. (2000). \emph{Computable Analysis: An Introduction}.
  1469	Springer.
  1470	
  1471	\bibitem{loefflerstoll}
  1472	Loeffler, D., \& Stoll, M. (2025). Formalizing zeta and
  1473	$L$-functions in Lean. \emph{Annals of Formalized Mathematics} 1.
  1474	arXiv:2503.00959.
  1475	
  1476	\bibitem{HoTTbook}
  1477	The Univalent Foundations Program. (2013). \emph{Homotopy Type
  1478	Theory: Univalent Foundations of Mathematics}. Institute for
  1479	Advanced Study.
  1480	
  1481	\bibitem{voevodsky}
  1482	Voevodsky, V. (2010). The univalence axiom and the
  1483	foundations of mathematics. Lecture series, IAS.
  1484	
  1485	\bibitem{licatashulman}
  1486	Licata, D.R., \& Shulman, M. (2013). Calculating the fundamental
  1487	group of the circle in homotopy type theory. \emph{Proc.\ LICS}.
  1488	
  1489	\bibitem{coquand-coinductive}
  1490	Coquand, T. (1994). Infinite objects in type theory. \emph{Types
  1491	for Proofs and Programs}, Springer LNCS.
  1492	
  1493	\bibitem{rutten-streams}
  1494	Rutten, J.J.M.M. (2003). Behavioural differential equations: a
  1495	coinductive calculus of streams, automata, and power series.
  1496	\emph{Theoretical Computer Science} 308:1--53.
  1497	
  1498	\bibitem{aczel}
  1499	Aczel, P. (1988). \emph{Non-Well-Founded Sets}. CSLI Lecture
  1500	Notes 14.
  1501	
  1502	\bibitem{bordg-paulson}
  1503	Bordg, A., \& Paulson, L. (2024). Coinductive proofs in Isabelle:
  1504	streams revisited. \emph{Journal of Automated Reasoning}.
  1505	
  1506	\bibitem{kleene}
  1507	Kleene, S.C. (1952). \emph{Introduction to Metamathematics}.
  1508	North-Holland.
  1509	
  1510	\bibitem{turing}
  1511	Turing, A.M. (1937). On computable numbers, with an application
  1512	to the Entscheidungsproblem. \emph{Proc.\ London Math.\ Soc.}\ 42:230--265.
  1513	
  1514	\bibitem{kapulkin-lumsdaine}
  1515	Kapulkin, K., \& Lumsdaine, P.L. (2021). The simplicial model of
  1516	univalent foundations (after Voevodsky). \emph{Journal of the
  1517	European Mathematical Society} 23:2071--2126.
  1518	
  1519	\bibitem{shulman-cohesive}
  1520	Shulman, M. (2018). Brouwer's fixed-point theorem in real-cohesive
  1521	homotopy type theory. \emph{Math.\ Structures Comp.\ Sci.}\ 28:856--941.
  1522	
  1523	\bibitem{sangiorgi-coind-book}
  1524	Sangiorgi, D. (2012). \emph{Introduction to Bisimulation and
  1525	Coinduction}. Cambridge University Press.
  1526	
  1527	\bibitem{abbott-altenkirch}
  1528	Abbott, M., Altenkirch, T., \& Ghani, N. (2005).
  1529	\emph{Containers: Constructing Strictly Positive Types}.
  1530	Theoretical Computer Science 342:3--27.
  1531	
  1532	\end{thebibliography}
  1533	
  1534	\end{document}

exec
/usr/local/bin/zsh -lc "perl -0pi -e 's/Approximation surjects onto \\"'$'"\\[0,1\\]\\"'$/Approximation surjects onto '"\\"'${[0,1]}'"\\"'$/g; s/'"\\"'$'"\\[0,1\\]\\"'$ as quotient final coalgebra/'"\\"'${[0,1]}'"\\"'$ as quotient final coalgebra/g'"' /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/coalgebraic-tex-review /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 459ms:
)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.out)
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)

LaTeX Warning: Citation `paperIII' on page 1 undefined on input line 116.

(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.toc) [1{/usr/loc
al/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/local/texliv
e/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


LaTeX Warning: Citation `synthesis' on page 2 undefined on input line 146.


LaTeX Warning: Citation `booij' on page 2 undefined on input line 155.


LaTeX Warning: Citation `rutten' on page 2 undefined on input line 164.


LaTeX Warning: Citation `weihrauch' on page 2 undefined on input line 172.

[2]

LaTeX Warning: Citation `ACS' on page 3 undefined on input line 225.


LaTeX Warning: Reference `sec:streams' on page 1 undefined on input line 254.


LaTeX Warning: Reference `sec:bisim' on page 1 undefined on input line 255.


LaTeX Warning: Reference `sec:pi-e' on page 1 undefined on input line 257.


LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 258.


LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
e 259.


LaTeX Warning: Reference `sec:zeta' on page 1 undefined on input line 260.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 262.


LaTeX Warning: Citation `cchm' on page 3 undefined on input line 271.

[3]

LaTeX Warning: Citation `rutten' on page 4 undefined on input line 322.


LaTeX Warning: Citation `ACS' on page 4 undefined on input line 336.


Overfull \hbox (16.8267pt too wide) in paragraph at lines 350--353
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Stream coal-ge-bra)\OT1/cmr/
bx/n/12 . []$[] \OML/cmm/m/it/12 A \OT1/cmr/m/n/12 := \OML/cmm/m/it/12 M A \OT1
/cmr/m/n/12 (\OML/cmm/m/it/12 ^^U[]: \OT1/cmr/bx/n/12 1\OT1/cmr/m/n/12 )$. The 
de-struc-tor $[] : [] \OML/cmm/m/it/12 A \OMS/cmsy/m/n/12 !

LaTeX Warning: Citation `birkedal' on page 4 undefined on input line 357.

[4] [5]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 462.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 462.

[6]

LaTeX Warning: Reference `lem:approx-surj' on page 1 undefined on input line 51
4.

/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex:519: Extra },
 or forgotten $.
<argument> ...he \thm@notefont ($\R $ from $[0,1)}
                                                  
l.519 \begin{remark}[$\R$ from $[0,1]
                                     $]
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex:519:  ==> Fat
al error occurred, no output PDF file produced!
Transcript written on /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-p
ass2.log.

exec
/usr/local/bin/zsh -lc "rg -n '\\\\begin\\{(theorem|lemma|definition|proposition|corollary|remark|example|problem|conjecture)\\}\\[["'^'"\\n]*\\]' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
280:\begin{definition}[Polynomial endofunctor]
307:\begin{definition}[Coalgebra]\label{def:coalg}
315:\begin{definition}[Final coalgebra]\label{def:final}
321:\begin{remark}[Final = terminal in $\mathbf{Coalg}(F)$]
339:\begin{theorem}[ACS, M-type final coalgebra]\label{thm:ACS}
349:\begin{definition}[Stream coalgebra]\label{def:streamcoalg}
355:\begin{remark}[Cubical realisation]
370:\begin{lemma}[Dual Lambek]\label{lem:lambek}
395:\begin{definition}[Bisimulation]\label{def:bisim}
407:\begin{theorem}[Coinduction principle]\label{thm:coinduction}
432:\begin{theorem}[Streams as final coalgebra]\label{thm:streamfinal}
451:\begin{example}[Constant stream]
457:\begin{example}[Naturals as stream]
466:\begin{definition}[Approximation map]\label{def:approx}
481:\begin{lemma}[Approximation surjects onto $[0,1]$]\label{lem:approx-surj}
494:\begin{definition}[Carry-bisimulation]\label{def:carry}
506:\begin{theorem}[$[0,1]$ as quotient final coalgebra]\label{thm:01-quotient}
519:\begin{remark}[$\R$ from $[0,1]$]
535:\begin{definition}[Bisimulation-closed predicate]\label{def:bclosed}
549:\begin{definition}[Observable predicate]\label{def:observable}
580:\begin{definition}[$\Phi$-up-to]\label{def:upto}
587:\begin{theorem}[Up-to-context soundness]\label{thm:upto-sound}
601:\begin{example}[Equivalence-closure up-to]
607:\begin{example}[Arithmetic up-to]
627:\begin{definition}[Series coalgebra for $e$]\label{def:e-coalg}
640:\begin{theorem}[$e$ as final-coalgebra unfold]\label{thm:e-final}
662:\begin{definition}[Predicate $P_e$]\label{def:Pe}
668:\begin{theorem}[Coalgebraic characterisation of $e$]\label{thm:e-char}
705:\begin{definition}[BBP coalgebra]\label{def:bbp}
718:\begin{theorem}[$\pi$ as final-coalgebra unfold]\label{thm:pi-final}
731:\begin{definition}[Predicate $P_\pi$]\label{def:Ppi}
737:\begin{theorem}[Coalgebraic characterisation of $\pi$]\label{thm:pi-char}
754:\begin{theorem}[Internal characterisation of $e$]\label{thm:e-internal}
810:\begin{theorem}[Internal characterisation of $\pi$]\label{thm:pi-internal}
842:\begin{remark}[What \Cref{thm:e-internal} and \Cref{thm:pi-internal} do and do not say]
890:\begin{definition}[Three coalgebras for $\pi$]\label{def:three-pi}
910:\begin{remark}[Limitation: external vs.\ internal equivalence]
950:\begin{definition}[M-type]\label{def:Mtype}
960:\begin{theorem}[Cubical M-type, ACS]\label{thm:cubicalM}
967:\begin{remark}[Why cubical, not just MLTT]
1007:\begin{theorem}[Inductive--Coinductive equivalence]\label{thm:hiitequal}
1066:\begin{conjecture}[Coalgebraic $\zeta$]\label{conj:zeta}
1087:\begin{proposition}[Dirichlet partial-sum stream]\label{prop:dirichlet-stream}
1147:\begin{problem}[Fully internal correctness]\label{prob:internal}
1295:\begin{theorem}[A.1; cf.\ Paper~III Theorem~5.2]\label{thm:app-streams-final}
1305:\begin{theorem}[A.2; cf.\ Paper~III Theorem~5.3]\label{thm:app-coinduction}
1313:\begin{theorem}[A.3; cf.\ Paper~III Theorem~4.1]\label{thm:app-uniqueR}
1324:\begin{theorem}[A.4; cf.\ Paper~V Definition~8.1, Theorem~5.7]\label{thm:app-pi}
1330:\begin{theorem}[A.5; cf.\ Paper~V Definition~8.2, Theorem~4.3]\label{thm:app-e}

exec
/usr/local/bin/zsh -lc "rg -n '\\"'$[''^$]*'"\\[["'^$]*'"\\]["'^$]*'"\\"'$'"\\]' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
481:\begin{lemma}[Approximation surjects onto $[0,1]$]\label{lem:approx-surj}
519:\begin{remark}[$\R$ from $[0,1]$]

exec
/usr/local/bin/zsh -lc "perl -0pi -e 's/\\"'$'"\\\\R\\"'$ from '"\\"'$'"\\[0,1\\]\\"'$/'"\\"'$'"\\\\R\\"'$ from '"\\"'${[0,1]}'"\\"'$/g'"' /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/coalgebraic-tex-review /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 497ms:
))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mhsetup.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/systemlayer/pgfsys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeyslibraryfil
tered.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgf.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-pdftex.d
ef
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsys-common-p
df.def)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsyssoftpath.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/systemlayer/pgfsysprotocol.
code.tex)) (/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcore.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathutil.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathparser.code.tex
)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.basic
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.trigo
nometric.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.rando
m.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.compa
rison.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.base.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.round
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.misc.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfunctions.integ
erarithmetics.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathcalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmathfloat.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfint.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepoints.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathconst
ruct.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathusage
.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorescopes.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoregraphicst
ate.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretransform
ations.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorequick.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreobjects.c
ode.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepathproce
ssing.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorearrows.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreshade.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreimage.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoreexternal.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorelayers.co
de.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcoretranspare
ncy.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorepatterns.
code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/basiclayer/pgfcorerdf.code.
tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleshapes.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmoduleplot.code.
tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-0-65.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/compatibility/pgfcomp-version
-1-18.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgffor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfkeys.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfkeys.code.tex)
) (/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/math/pgfmath.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/math/pgfmath.code.tex))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgffor.code.tex))

(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/tikz.cod
e.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryplothan
dlers.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/modules/pgfmodulematrix.cod
e.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarytopaths.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarycalc.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarypositioning.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/kvdefinekeys/kvdefinekeys.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdfescape/pdfescape.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/ltxcmds/ltxcmds.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pdftexcmds/pdftexcmds.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/infwarerr/infwarerr.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hycolor/hycolor.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/nameref.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/refcount/refcount.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/gettitlestring/gettitlestring.s
ty (/usr/local/texlive/2026/texmf-dist/tex/latex/kvoptions/kvoptions.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/etoolbox/etoolbox.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/stringenc/stringenc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/pd1enc.def)
(/usr/local/texlive/2026/texmf-dist/tex/generic/intcalc/intcalc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/puenc.def)
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty)
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

Package everypage Warning: Functionality similar to this package has recently
(everypage)                been implemented in LaTeX. This package is now in
(everypage)                legacy status.
(everypage)                Please, don't use it in new documents and packages.


Package everypage Warning: You appear to be running a version of LaTeX
(everypage)                providing the new functionality.
(everypage)                Doing the best to deliver the original `everypage`
(everypage)                interface on top of it. Strict equivalence is
(everypage)                not possible, breakage may occur.
(everypage)                If truly needed, Use `everypage-1x` to force the
(everypage)                loading of an older code base.

) (/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.out)
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)

LaTeX Warning: Citation `paperIII' on page 1 undefined on input line 116.

(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.toc) [1{/usr/loc
al/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/local/texliv
e/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 144.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 144.


LaTeX Warning: Citation `synthesis' on page 2 undefined on input line 146.


LaTeX Warning: Citation `booij' on page 2 undefined on input line 155.


LaTeX Warning: Citation `rutten' on page 2 undefined on input line 164.


LaTeX Warning: Citation `weihrauch' on page 2 undefined on input line 172.

[2]

LaTeX Warning: Citation `ACS' on page 3 undefined on input line 225.


LaTeX Warning: Reference `sec:bisim' on page 1 undefined on input line 255.


LaTeX Warning: Reference `sec:pi-e' on page 1 undefined on input line 257.


LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 258.


LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
e 259.


LaTeX Warning: Reference `sec:zeta' on page 1 undefined on input line 260.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 262.


LaTeX Warning: Citation `cchm' on page 3 undefined on input line 271.

[3]

LaTeX Warning: Citation `rutten' on page 4 undefined on input line 322.


LaTeX Warning: Citation `ACS' on page 4 undefined on input line 336.


Overfull \hbox (16.8267pt too wide) in paragraph at lines 350--353
[]\OT1/cmr/bx/n/12 Definition 2.8 \OT1/cmr/m/n/12 (Stream coal-ge-bra)\OT1/cmr/
bx/n/12 . []$[] \OML/cmm/m/it/12 A \OT1/cmr/m/n/12 := \OML/cmm/m/it/12 M A \OT1
/cmr/m/n/12 (\OML/cmm/m/it/12 ^^U[]: \OT1/cmr/bx/n/12 1\OT1/cmr/m/n/12 )$. The 
de-struc-tor $[] : [] \OML/cmm/m/it/12 A \OMS/cmsy/m/n/12 !

LaTeX Warning: Citation `birkedal' on page 4 undefined on input line 357.

[4] [5]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 462.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 462.

[6]

LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 56
4.

[7]

LaTeX Warning: Citation `poussangiorgi' on page 8 undefined on input line 589.


LaTeX Warning: Citation `ghani-hancock-pattinson' on page 8 undefined on input 
line 616.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 620.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 620.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 620.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 620.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 620.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 625.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 625.


LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 633.


LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 634
.


LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 634.



LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 658.


LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 659
.


LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 659.


[8]

LaTeX Warning: Reference `def:observable' on page 1 undefined on input line 665
.


LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
ine 665.


LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 678.


LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 689.


LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
e 695.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 698.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 698.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 698.


LaTeX Warning: Citation `bbp' on page 9 undefined on input line 725.


LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
ine 734.


LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 744.


LaTeX Warning: Reference `thm:pi-final' on page 1 undefined on input line 744.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 747.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `subscript' on input line 747.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 747.


LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 749.


LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 749.

[9]

LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 758.


LaTeX Warning: Reference `app:state' on page 1 undefined on input line 762.


LaTeX Warning: Reference `def:e-coalg' on page 1 undefined on input line 770.


LaTeX Warning: Reference `app:state' on page 1 undefined on input line 772.


LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 772.


LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 788
.


LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 793
.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 822
.


LaTeX Warning: Citation `bbp' on page 10 undefined on input line 825.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 834
.


LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
.


LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
.

[10]

LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 842
.


LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
2.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 844
.


LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
4.


LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 845.


LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 845.


LaTeX Warning: Citation `paperIII' on page 11 undefined on input line 851.


LaTeX Warning: Reference `app:state' on page 1 undefined on input line 859.


LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 87
0.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 870
.


LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 880.



Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 883.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\pi' on input line 883.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 883.


LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
ine 906.


LaTeX Warning: Reference `prop:three-equal' on page 1 undefined on input line 9
11.


LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 933.


[11]

LaTeX Warning: Citation `ACS' on page 12 undefined on input line 946.


Overfull \hbox (7.27206pt too wide) in paragraph at lines 945--947
\OT1/cmr/m/n/12 We sketch the cubical-HoTT re-al-i-sa-tion of the M-type used a
bove, fol-low-ing Ahrens--Capriotti--

LaTeX Warning: Reference `def:Mtype' on page 1 undefined on input line 961.


LaTeX Warning: Citation `birkedal' on page 12 undefined on input line 978.


Overfull \hbox (1.21362pt too wide) in paragraph at lines 996--996
[]\OT1/cmr/m/n/12 Recursor: $\OML/cmm/m/it/12 f\OT1/cmr/m/n/12 ([] \OML/cmm/m/i
t/12 q\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 ; f\OT1/cmr/m/n/12 ([] \OML/cmm/m/it/12
 x\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 ; f\OT1/cmr/m/n/12 ([]  [] )$| 

LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 99
7.


Underfull \hbox (badness 1400) in paragraph at lines 999--999
[]\OT1/cmr/m/n/12 Computational con-tent: Cauchy re-
[12]

LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 10
16.


LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 10
27.


LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1032
.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1052.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\zeta' on input line 1052.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1052.


LaTeX Warning: Citation `synthesis' on page 13 undefined on input line 1057.


LaTeX Warning: Citation `loefflerstoll' on page 13 undefined on input line 1059
.

[13]

LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
ine 1083.


LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
ine 1103.


LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1105.

[14]

LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 114
2.


LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 11
42.


LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 11
63.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1175.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1175.

[15]

LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 12
41.


LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 1244.


LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 1244.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 124
4.


LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 12
45.


LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1246
.


LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
ine 1248.


LaTeX Warning: Reference `prob:lean-productivity' on page 1 undefined on input 
line 1262.


LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1266.

[16]

LaTeX Warning: Citation `HoTTbook' on page 17 undefined on input line 1289.


LaTeX Warning: Citation `booij' on page 17 undefined on input line 1289.


LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1289.


LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1289.


LaTeX Warning: Citation `jacobs' on page 17 undefined on input line 1289.


LaTeX Warning: Citation `paperIII' on page 17 undefined on input line 1291.


LaTeX Warning: Citation `paperV' on page 17 undefined on input line 1291.


LaTeX Warning: Citation `synthesis' on page 17 undefined on input line 1291.


Overfull \hbox (8.40681pt too wide) in paragraph at lines 1296--1300
[]\OT1/cmr/bx/n/12 Theorem A.1 \OT1/cmr/m/n/12 (A.1; cf. Pa-per III The-o-rem 5
.2)\OT1/cmr/bx/n/12 . []\OT1/cmr/m/it/12 For any type $\OML/cmm/m/it/12 A \OT1/
cmr/m/n/12 : \OMS/cmsy/m/n/12 U$\OT1/cmr/m/it/12 , the M-type $\OML/cmm/m/it/12
 M\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 A; ^^U[]:\OT1/cmr/bx/n/12 1\OT1/cmr/m/n/12 
) []

LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1301.


LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1302.


LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1322
.

[17]

LaTeX Warning: Citation `cchm' on page 18 undefined on input line 1342.


LaTeX Warning: Citation `ACS' on page 18 undefined on input line 1342.


LaTeX Warning: Reference `thm:e-internal' on page 18 undefined on input line 13
44.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 134
7.


LaTeX Warning: Citation `sale-e-1968' on page 18 undefined on input line 1349.


LaTeX Warning: Citation `gibbons-spigot' on page 18 undefined on input line 134
9.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
1.


LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
8.


LaTeX Warning: Citation `poussangiorgi' on page 18 undefined on input line 1386
.


LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 139
2.

[18] [19] [20]
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `coalgebraic-transcendentals-pass2.out' ha
s changed.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmti8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfon
ts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfont
s/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/cm-super/sfrm1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/c
m-super/sfrm1200.pfb>
Output written on /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2
.pdf (20 pages, 393300 bytes).
Transcript written on /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-p
ass2.log.

codex
The temporary build gets through after three local-only fixes: line 405, and the two optional theorem/remark headings that contain `[0,1]`. I’m rerunning the temp build now to separate first-pass reference noise from persistent warnings.
exec
/usr/local/bin/zsh -lc 'rg -n "undefined|multiply|Label|Warning|Overfull|Underfull|Fatal|Error|Token not allowed|rerun" /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
613:(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty
614:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
619:Package uniquecounter Info: New unique counter `rerunfilecheck' on input line 2
662:Package everypage Warning: Functionality similar to this package has recently
668:Package everypage Warning: You appear to be running a version of LaTeX
814:LaTeX Warning: Citation `paperIII' on page 1 undefined on input line 116.
825:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
829:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
833:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
837:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
841:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
845:LaTeX Warning: Citation `synthesis' on page 2 undefined on input line 146.
848:LaTeX Warning: Citation `booij' on page 2 undefined on input line 155.
851:LaTeX Warning: Citation `rutten' on page 2 undefined on input line 164.
854:LaTeX Warning: Citation `weihrauch' on page 2 undefined on input line 172.
858:LaTeX Warning: Citation `ACS' on page 3 undefined on input line 225.
861:LaTeX Warning: Reference `sec:bisim' on page 1 undefined on input line 255.
864:LaTeX Warning: Reference `sec:pi-e' on page 1 undefined on input line 257.
867:LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 258.
870:LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
874:LaTeX Warning: Reference `sec:zeta' on page 1 undefined on input line 260.
877:LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 262.
880:LaTeX Warning: Citation `cchm' on page 3 undefined on input line 271.
884:LaTeX Warning: Citation `rutten' on page 4 undefined on input line 322.
887:LaTeX Warning: Citation `ACS' on page 4 undefined on input line 336.
890:Overfull \hbox (16.8267pt too wide) in paragraph at lines 350--353
898:LaTeX Warning: Citation `birkedal' on page 4 undefined on input line 357.
902:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
906:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
911:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 56
916:LaTeX Warning: Citation `poussangiorgi' on page 8 undefined on input line 589.
919:LaTeX Warning: Citation `ghani-hancock-pattinson' on page 8 undefined on input 
923:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
927:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
931:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
935:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
939:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
943:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
947:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
951:LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 633.
954:LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 634
958:LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 634.
962:LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 658.
965:LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 659
969:LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 659.
974:LaTeX Warning: Reference `def:observable' on page 1 undefined on input line 665
978:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
982:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 678.
985:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 689.
988:LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
992:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
996:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1000:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1004:LaTeX Warning: Citation `bbp' on page 9 undefined on input line 725.
1007:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
1011:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 744.
1014:LaTeX Warning: Reference `thm:pi-final' on page 1 undefined on input line 744.
1017:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1021:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1025:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1029:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 749.
1032:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 749.
1036:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 758.
1039:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 762.
1042:LaTeX Warning: Reference `def:e-coalg' on page 1 undefined on input line 770.
1045:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 772.
1048:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 772.
1051:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 788
1055:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 793
1059:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 822
1063:LaTeX Warning: Citation `bbp' on page 10 undefined on input line 825.
1066:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 834
1070:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
1074:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
1079:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 842
1083:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
1087:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 844
1091:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
1095:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 845.
1098:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 845.
1101:LaTeX Warning: Citation `paperIII' on page 11 undefined on input line 851.
1104:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 859.
1107:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 87
1111:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 870
1115:LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 880.
1119:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1123:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1127:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1131:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
1135:LaTeX Warning: Reference `prop:three-equal' on page 1 undefined on input line 9
1139:LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 933.
1144:LaTeX Warning: Citation `ACS' on page 12 undefined on input line 946.
1147:Overfull \hbox (7.27206pt too wide) in paragraph at lines 945--947
1153:LaTeX Warning: Reference `def:Mtype' on page 1 undefined on input line 961.
1156:LaTeX Warning: Citation `birkedal' on page 12 undefined on input line 978.
1159:Overfull \hbox (1.21362pt too wide) in paragraph at lines 996--996
1166:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 99
1170:Underfull \hbox (badness 1400) in paragraph at lines 999--999
1176:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 10
1180:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 10
1184:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1032
1188:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1192:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1196:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1200:LaTeX Warning: Citation `synthesis' on page 13 undefined on input line 1057.
1203:LaTeX Warning: Citation `loefflerstoll' on page 13 undefined on input line 1059
1208:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
1212:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
1216:LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1105.
1220:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 114
1224:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 11
1228:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 11
1232:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1236:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
1241:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 12
1245:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 1244.
1248:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 1244.
1251:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 124
1255:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 12
1259:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1246
1263:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
1267:LaTeX Warning: Reference `prob:lean-productivity' on page 1 undefined on input 
1271:LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1266.
1275:LaTeX Warning: Citation `HoTTbook' on page 17 undefined on input line 1289.
1278:LaTeX Warning: Citation `booij' on page 17 undefined on input line 1289.
1281:LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1289.
1284:LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1289.
1287:LaTeX Warning: Citation `jacobs' on page 17 undefined on input line 1289.
1290:LaTeX Warning: Citation `paperIII' on page 17 undefined on input line 1291.
1293:LaTeX Warning: Citation `paperV' on page 17 undefined on input line 1291.
1296:LaTeX Warning: Citation `synthesis' on page 17 undefined on input line 1291.
1299:Overfull \hbox (8.40681pt too wide) in paragraph at lines 1296--1300
1308:LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1301.
1311:LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1302.
1314:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1322
1319:LaTeX Warning: Citation `cchm' on page 18 undefined on input line 1342.
1322:LaTeX Warning: Citation `ACS' on page 18 undefined on input line 1342.
1325:LaTeX Warning: Reference `thm:e-internal' on page 18 undefined on input line 13
1329:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 134
1333:LaTeX Warning: Citation `sale-e-1968' on page 18 undefined on input line 1349.
1336:LaTeX Warning: Citation `gibbons-spigot' on page 18 undefined on input line 134
1340:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
1344:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
1348:LaTeX Warning: Citation `poussangiorgi' on page 18 undefined on input line 1386
1352:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 139
1363:LaTeX Warning: There were undefined references.
1366:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
1369:Package rerunfilecheck Warning: File `coalgebraic-transcendentals-pass2.out' ha
1371:(rerunfilecheck)                Rerun to get outlines right
1372:(rerunfilecheck)                or use package `bookmark'.
1374:Package rerunfilecheck Info: Checksums for `coalgebraic-transcendentals-pass2.o
1376:(rerunfilecheck)             Before: 9A8143807CDED5CDACC70F40A60A1F35;2548
1377:(rerunfilecheck)             After:  5A3D247916AD8B4EC8174A1D91C635AF;8621.

exec
/usr/local/bin/zsh -lc 'pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/coalgebraic-tex-review /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex >/tmp/coalgebraic-tex-review/pass2-run2.out 2>&1; pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/coalgebraic-tex-review /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.tex >/tmp/coalgebraic-tex-review/pass2-run3.out 2>&1; tail -n 80 /tmp/coalgebraic-tex-review/pass2-run3.out' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'rg -n "Reference|Citation|undefined|multiply defined" /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.aux /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:814:LaTeX Warning: Citation `paperIII' on page 1 undefined on input line 116.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:845:LaTeX Warning: Citation `synthesis' on page 2 undefined on input line 146.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:848:LaTeX Warning: Citation `booij' on page 2 undefined on input line 155.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:851:LaTeX Warning: Citation `rutten' on page 2 undefined on input line 164.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:854:LaTeX Warning: Citation `weihrauch' on page 2 undefined on input line 172.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:858:LaTeX Warning: Citation `ACS' on page 3 undefined on input line 225.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:861:LaTeX Warning: Reference `sec:bisim' on page 1 undefined on input line 255.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:864:LaTeX Warning: Reference `sec:pi-e' on page 1 undefined on input line 257.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:867:LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 258.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:870:LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:874:LaTeX Warning: Reference `sec:zeta' on page 1 undefined on input line 260.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:877:LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 262.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:880:LaTeX Warning: Citation `cchm' on page 3 undefined on input line 271.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:884:LaTeX Warning: Citation `rutten' on page 4 undefined on input line 322.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:887:LaTeX Warning: Citation `ACS' on page 4 undefined on input line 336.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:898:LaTeX Warning: Citation `birkedal' on page 4 undefined on input line 357.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:911:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 56
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:916:LaTeX Warning: Citation `poussangiorgi' on page 8 undefined on input line 589.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:919:LaTeX Warning: Citation `ghani-hancock-pattinson' on page 8 undefined on input 
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:951:LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 633.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:954:LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 634
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:958:LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 634.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:962:LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 658.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:965:LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 659
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:969:LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 659.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:974:LaTeX Warning: Reference `def:observable' on page 1 undefined on input line 665
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:978:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:982:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 678.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:985:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 689.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:988:LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1004:LaTeX Warning: Citation `bbp' on page 9 undefined on input line 725.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1007:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1011:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 744.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1014:LaTeX Warning: Reference `thm:pi-final' on page 1 undefined on input line 744.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1029:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 749.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1032:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 749.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1036:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 758.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1039:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 762.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1042:LaTeX Warning: Reference `def:e-coalg' on page 1 undefined on input line 770.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1045:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 772.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1048:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 772.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1051:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 788
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1055:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 793
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1059:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 822
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1063:LaTeX Warning: Citation `bbp' on page 10 undefined on input line 825.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1066:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 834
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1070:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1074:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1079:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 842
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1083:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1087:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 844
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1091:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1095:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 845.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1098:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 845.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1101:LaTeX Warning: Citation `paperIII' on page 11 undefined on input line 851.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1104:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 859.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1107:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 87
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1111:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 870
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1115:LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 880.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1131:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1135:LaTeX Warning: Reference `prop:three-equal' on page 1 undefined on input line 9
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1139:LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 933.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1144:LaTeX Warning: Citation `ACS' on page 12 undefined on input line 946.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1153:LaTeX Warning: Reference `def:Mtype' on page 1 undefined on input line 961.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1156:LaTeX Warning: Citation `birkedal' on page 12 undefined on input line 978.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1166:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 99
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1176:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 10
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1180:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 10
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1184:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1032
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1200:LaTeX Warning: Citation `synthesis' on page 13 undefined on input line 1057.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1203:LaTeX Warning: Citation `loefflerstoll' on page 13 undefined on input line 1059
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1208:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1212:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1216:LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1105.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1220:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 114
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1224:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 11
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1228:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 11
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1241:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 12
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1245:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 1244.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1248:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 1244.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1251:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 124
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1255:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 12
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1259:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1246
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1263:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1267:LaTeX Warning: Reference `prob:lean-productivity' on page 1 undefined on input 
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1271:LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1266.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1275:LaTeX Warning: Citation `HoTTbook' on page 17 undefined on input line 1289.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1278:LaTeX Warning: Citation `booij' on page 17 undefined on input line 1289.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1281:LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1289.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1284:LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1289.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1287:LaTeX Warning: Citation `jacobs' on page 17 undefined on input line 1289.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1290:LaTeX Warning: Citation `paperIII' on page 17 undefined on input line 1291.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1293:LaTeX Warning: Citation `paperV' on page 17 undefined on input line 1291.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1296:LaTeX Warning: Citation `synthesis' on page 17 undefined on input line 1291.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1308:LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1301.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1311:LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1302.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1314:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1322
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1319:LaTeX Warning: Citation `cchm' on page 18 undefined on input line 1342.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1322:LaTeX Warning: Citation `ACS' on page 18 undefined on input line 1342.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1325:LaTeX Warning: Reference `thm:e-internal' on page 18 undefined on input line 13
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1329:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 134
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1333:LaTeX Warning: Citation `sale-e-1968' on page 18 undefined on input line 1349.
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1336:LaTeX Warning: Citation `gibbons-spigot' on page 18 undefined on input line 134
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1340:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1344:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1348:LaTeX Warning: Citation `poussangiorgi' on page 18 undefined on input line 1386
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1352:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 139
/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log:1363:LaTeX Warning: There were undefined references.

 succeeded in 1157ms:


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 883.

[13]
Overfull \hbox (7.27206pt too wide) in paragraph at lines 945--947
\OT1/cmr/m/n/12 We sketch the cubical-HoTT re-al-i-sa-tion of the M-type used a
bove, fol-low-ing Ahrens--Capriotti--

Overfull \hbox (1.21362pt too wide) in paragraph at lines 996--996
[]\OT1/cmr/m/n/12 Recursor: $\OML/cmm/m/it/12 f\OT1/cmr/m/n/12 ([] \OML/cmm/m/i
t/12 q\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 ; f\OT1/cmr/m/n/12 ([] \OML/cmm/m/it/12
 x\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 ; f\OT1/cmr/m/n/12 ([]  [] )$| 

Underfull \hbox (badness 1400) in paragraph at lines 999--999
[]\OT1/cmr/m/n/12 Computational con-tent: Cauchy re-
[14]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1052.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\zeta' on input line 1052.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1052.

[15] [16]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1175.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1175.

[17] [18]
Overfull \hbox (8.40681pt too wide) in paragraph at lines 1296--1300
[]\OT1/cmr/bx/n/12 Theorem A.1 \OT1/cmr/m/n/12 (A.1; cf. Pa-per III The-o-rem 5
.2)\OT1/cmr/bx/n/12 . []\OT1/cmr/m/it/12 For any type $\OML/cmm/m/it/12 A \OT1/
cmr/m/n/12 : \OMS/cmsy/m/n/12 U$\OT1/cmr/m/it/12 , the M-type $\OML/cmm/m/it/12
 M\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 A; ^^U[]:\OT1/cmr/bx/n/12 1\OT1/cmr/m/n/12 
) []
[19] [20] [21] [22]
(/tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmti8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfon
ts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfont
s/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public
/cm-super/sfrm1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/c
m-super/sfrm1200.pfb>
Output written on /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2
.pdf (22 pages, 403084 bytes).
Transcript written on /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-p
ass2.log.

exec
/usr/local/bin/zsh -lc 'rg -n "undefined|multiply|Label|Warning|Overfull|Underfull|Fatal|Error|Token not allowed|Rerun" /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
614:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
662:Package everypage Warning: Functionality similar to this package has recently
668:Package everypage Warning: You appear to be running a version of LaTeX
823:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
827:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
831:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
835:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
839:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
843:Overfull \hbox (16.8267pt too wide) in paragraph at lines 350--353
852:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
856:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
861:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
865:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
869:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
873:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
877:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
881:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
885:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
890:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
894:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
898:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
902:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
906:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
910:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
914:Overfull \hbox (5.30058pt too wide) in paragraph at lines 870--881
921:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
925:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
929:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
933:Overfull \hbox (7.27206pt too wide) in paragraph at lines 945--947
939:Overfull \hbox (1.21362pt too wide) in paragraph at lines 996--996
946:Underfull \hbox (badness 1400) in paragraph at lines 999--999
952:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
956:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
960:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
965:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
969:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
973:Overfull \hbox (8.40681pt too wide) in paragraph at lines 1296--1300

exec
/usr/local/bin/zsh -lc "rg -n \"LaTeX Warning: Reference|LaTeX Warning: Citation|undefined references|undefined citations|Label\\(s\\)|Rerun\" /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
614:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty && kpsewhich everypage-1x.sty && rg -n "newlabel|bibcite" /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.aux | tail -n 30' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage-1x.sty
207:\newlabel{app:state}{{B}{20}{Detailed state-space layout for the proof of Theorem~\ref {thm:e-internal}}{appendix.B}{}}
208:\newlabel{app:state@cref}{{[section][2][]B}{[1][20][]20}{}{}{}}
209:\bibcite{synthesis}{3}
210:\bibcite{booij}{4}
211:\bibcite{rutten}{5}
212:\bibcite{jacobs}{6}
213:\bibcite{ACS}{7}
214:\bibcite{cchm}{8}
215:\bibcite{birkedal}{9}
216:\bibcite{poussangiorgi}{10}
217:\bibcite{ghani-hancock-pattinson}{11}
218:\bibcite{sale-e-1968}{12}
219:\bibcite{rabwagon-spigot}{13}
220:\bibcite{gibbons-spigot}{14}
221:\bibcite{bbp}{15}
222:\bibcite{weihrauch}{16}
223:\bibcite{loefflerstoll}{17}
224:\bibcite{HoTTbook}{18}
225:\bibcite{voevodsky}{19}
226:\bibcite{licatashulman}{20}
227:\bibcite{coquand-coinductive}{21}
228:\bibcite{rutten-streams}{22}
229:\bibcite{aczel}{23}
230:\bibcite{bordg-paulson}{24}
231:\bibcite{kleene}{25}
232:\bibcite{turing}{26}
233:\bibcite{kapulkin-lumsdaine}{27}
234:\bibcite{shulman-cohesive}{28}
235:\bibcite{sangiorgi-coind-book}{29}
236:\bibcite{abbott-altenkirch}{30}

exec
/usr/local/bin/zsh -lc "awk '/Package hyperref Warning: Token not allowed/{print NR \":\" "'$0; getline; print NR ":" $0; getline; print NR ":" $0; getline; print NR ":" $0}'"' /tmp/coalgebraic-tex-review/coalgebraic-transcendentals-pass2.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
823:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
824:(hyperref)                removing `math shift' on input line 144.
825:
826:
827:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
828:(hyperref)                removing `math shift' on input line 144.
829:
830:
831:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
832:(hyperref)                removing `math shift' on input line 144.
833:
834:
835:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
836:(hyperref)                removing `\pi' on input line 144.
837:
838:
839:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
840:(hyperref)                removing `math shift' on input line 144.
841:
842:[4] [5]
852:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
853:(hyperref)                removing `math shift' on input line 462.
854:
855:
856:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
857:(hyperref)                removing `math shift' on input line 462.
858:
859:[8] [9]
861:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
862:(hyperref)                removing `math shift' on input line 620.
863:
864:
865:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
866:(hyperref)                removing `\pi' on input line 620.
867:
868:
869:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
870:(hyperref)                removing `math shift' on input line 620.
871:
872:
873:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
874:(hyperref)                removing `math shift' on input line 620.
875:
876:
877:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
878:(hyperref)                removing `math shift' on input line 620.
879:
880:
881:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
882:(hyperref)                removing `math shift' on input line 625.
883:
884:
885:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
886:(hyperref)                removing `math shift' on input line 625.
887:
888:[10]
890:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
891:(hyperref)                removing `math shift' on input line 698.
892:
893:
894:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
895:(hyperref)                removing `\pi' on input line 698.
896:
897:
898:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
899:(hyperref)                removing `math shift' on input line 698.
900:
901:
902:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
903:(hyperref)                removing `math shift' on input line 747.
904:
905:
906:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
907:(hyperref)                removing `subscript' on input line 747.
908:
909:
910:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
911:(hyperref)                removing `math shift' on input line 747.
912:
913:[11] [12]
921:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
922:(hyperref)                removing `math shift' on input line 883.
923:
924:
925:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
926:(hyperref)                removing `\pi' on input line 883.
927:
928:
929:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
930:(hyperref)                removing `math shift' on input line 883.
931:
932:[13]
952:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
953:(hyperref)                removing `math shift' on input line 1052.
954:
955:
956:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
957:(hyperref)                removing `\zeta' on input line 1052.
958:
959:
960:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
961:(hyperref)                removing `math shift' on input line 1052.
962:
963:[15] [16]
965:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
966:(hyperref)                removing `math shift' on input line 1175.
967:
968:
969:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
970:(hyperref)                removing `math shift' on input line 1175.
971:
972:[17] [18]

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '340,365p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   340	For any container $(A,B)$, the M-type $M\,A\,B$ carries a
   341	coalgebra structure $\out: M\,A\,B \to F_{(A,B)}(M\,A\,B)$ which
   342	is final.
   343	\end{theorem}
   344	
   345	For our applications the relevant case is the stream functor
   346	$F_A\,X = A \times X$, where the M-type
   347	specialises to streams $\Stream\,A \cong A^\N$.
   348	
   349	\begin{definition}[Stream coalgebra]\label{def:streamcoalg}
   350	$\Stream\,A := M\,A\,(\lambda{-}.\,\mathbf{1})$. The destructor
   351	$\out: \Stream\,A \to A \times \Stream\,A$ decomposes into
   352	$\hd: \Stream\,A \to A$ and $\tl: \Stream\,A \to \Stream\,A$.
   353	\end{definition}
   354	
   355	\begin{remark}[Cubical realisation]
   356	In cubical HoTT, $\Stream\,A$ admits a definition by guarded
   357	recursion using the modality $\rhd$ of Birkedal et al.~\cite{birkedal}:
   358	$\Stream\,A \cong A \times \rhd \Stream\,A$. The fixed point exists
   359	because $\rhd$ is a contractive functor and the guarded recursion
   360	theorem applies.
   361	\end{remark}
   362	
   363	% =============================================================
   364	\section{Lambek's lemma and coinduction}\label{sec:lambek}
   365	% =============================================================

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '860,885p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   860	\emph{externally}, the theorem says: ``the unique stream
   861	satisfying the corecursive equation for algorithm $X$ is the
   862	stream generated by algorithm $X$.'' This is not yet a
   863	characterisation of $\pi$ or $e$ as classical reals \emph{without
   864	reference to any external structure}. Such a fully external
   865	characterisation would require either (a) an internal proof that
   866	two distinct combinatorial algorithms (e.g.\ Leibniz and BBP) are
   867	bisimilar, or (b) an internal axiomatisation of which streams
   868	are ``transcendental''.
   869	
   870	What \Cref{thm:e-internal,thm:pi-internal} \emph{do} establish
   871	is that the bisimulation class
   872	$[s_e]_{\bisim_b} \in \Stream/{\bisim_b}$
   873	respectively
   874	$[s_\pi]_{\bisim_{16}}$ is the unique fixed point of a
   875	combinatorial corecursive equation, with no path-constructor
   876	data (HIIT-data) needed to express the predicate.
   877	This is a strict logical advance over the inductive
   878	characterisation of Paper~V Definition 8.1, which uses sin-zero
   879	data internal to $\Rc$. The remaining ``gap'' is exactly
   880	\Cref{prob:internal} below.
   881	\end{remark}
   882	
   883	\subsection{Comparison: Leibniz, Machin, BBP all name the same $\pi$}
   884	
   885	To illustrate the strength of bisimulation as an equality

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '936,1004p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   936	``factor-through-$\Rc$'' form: in HoTT, \emph{algorithm
   937	equivalence} on streams becomes \emph{path-equality} on the
   938	final coalgebra, and coinduction is the proof method.
   939	\end{remark}
   940	
   941	% =============================================================
   942	\section{Cubical M-types and stream realisation}\label{sec:cubical}
   943	% =============================================================
   944	
   945	We sketch the cubical-HoTT realisation of the M-type used
   946	above, following Ahrens--Capriotti--Spadotti~\cite{ACS}.
   947	
   948	\subsection{The M-type construction}
   949	
   950	\begin{definition}[M-type]\label{def:Mtype}
   951	For container $(A,B)$, define
   952	\[
   953	M\,A\,B \;:=\; \lim_{n}\,W_n
   954	\]
   955	where $W_0 = \mathbf{1}$, $W_{n+1} = \Sigma_{a:A}(B(a) \to W_n)$,
   956	and the limit is taken along the projections induced by the unique
   957	map $W_1 \to W_0 = \mathbf{1}$.
   958	\end{definition}
   959	
   960	\begin{theorem}[Cubical M-type, ACS]\label{thm:cubicalM}
   961	In cubical HoTT (CCHM), the limit \Cref{def:Mtype} exists and
   962	$M\,A\,B$ is the carrier of the final $F_{(A,B)}$-coalgebra.
   963	The destructor $\out: M\,A\,B \to F_{(A,B)}(M\,A\,B)$ is the
   964	projection onto the first level.
   965	\end{theorem}
   966	
   967	\begin{remark}[Why cubical, not just MLTT]
   968	In plain MLTT one cannot prove that $\out$ is an equivalence
   969	(\Cref{lem:lambek}) without function extensionality and
   970	$\eta$-rules. Cubical HoTT provides function extensionality
   971	\emph{judgmentally} (via path-application) and treats
   972	M-types coherently with the path structure, which is what we
   973	need for the coinduction principle to compute.
   974	\end{remark}
   975	
   976	\subsection{Productivity and guarded recursion}
   977	
   978	In cubical HoTT, the topos of trees~\cite{birkedal} provides a
   979	guarded modality $\rhd$ (read ``later''). Streams are then a fixed point
   980	$\Stream\,A \cong A \times \rhd \Stream\,A$, and corecursion is
   981	just guarded recursion: the recursive call is hidden under $\rhd$,
   982	ensuring productivity at the type level. This is what makes our
   983	$\unfold_\gamma$ judgmentally well-defined.
   984	
   985	% =============================================================
   986	\section{Comparison with the Cauchy HIIT}\label{sec:cauchy-vs-coalg}
   987	% =============================================================
   988	
   989	\subsection{Side-by-side}
   990	
   991	\begin{center}
   992	\begin{tabular}{p{0.43\textwidth}p{0.49\textwidth}}
   993	\hline
   994	\textbf{Inductive (Booij/HoTT Cauchy)} & \textbf{Coinductive (final coalgebra)}\\\hline
   995	HIIT $\Rc$ with rat, lim, path-constr & M-type $\Stream\,\mathsf{Fin}(b)$ + $\bisim_b$\\
   996	Recursor: $f(\mathrm{rat}\,q), f(\mathrm{lim}\,x), f(\mathrm{path}\,\dots)$ & Corecursor: $\hd(\unfold(c)), \tl(\unfold(c))$\\
   997	$\pi := $ centre of contractible sin-zero type (Paper~V Def.~8.1) & $\pi := $ centre of contractible BBP unfold type (\Cref{thm:pi-internal})\\
   998	Equality by computation rule + truncation & Equality by bisimulation\\
   999	Computational content: Cauchy realiser & Computational content: digit stream\\
  1000	$\Rc$ has join-semilattice + lim-axioms & $\Stream/{\bisim_b}$ has digit-shift action\\
  1001	\hline
  1002	\end{tabular}
  1003	\end{center}
  1004	

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '1288,1302p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1288	is either a textbook fact, found in the standard references on
  1289	HoTT and coalgebra~\cite{HoTTbook,booij,rutten,ACS,jacobs}, or a
  1290	routine adaptation of a textbook fact to the cubical setting.
  1291	Where we cite the YonedaAI HoTT Foundations Series~\cite{paperIII,paperV,synthesis}
  1292	the citation is to a particular textbook-style adaptation; the
  1293	underlying proofs are the standard ones.
  1294	
  1295	\begin{theorem}[A.1; cf.\ Paper~III Theorem~5.2]\label{thm:app-streams-final}
  1296	For any type $A : \Type$, the M-type
  1297	$M(A,\lambda{-}.\mathbf{1}) \cong A^\N$ together with
  1298	$\out := \langle\hd,\tl\rangle$ is a final coalgebra of the
  1299	endofunctor $F_A\,X = A \times X$.
  1300	\end{theorem}
  1301	This is the cubical-HoTT version of Rutten~\cite{rutten}
  1302	\S 2 \emph{combined with} ACS~\cite{ACS} Theorem~3.5. We use it

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '136,150p;456,466p;616,628p;692,702p;742,752p;1048,1056p;1170,1178p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   136	
   137	\tableofcontents
   138	\newpage
   139	
   140	% =============================================================
   141	\section{Introduction}
   142	% =============================================================
   143	
   144	\subsection{Two presentations of $\R$, two presentations of $\pi$}
   145	
   146	The synthesis paper of our series~\cite{synthesis} identified six
   147	mutually equivalent presentations of the natural numbers (NNO,
   148	Peano, primitive recursion, set-theoretic encoding, Yoneda
   149	representable, HoTT inductive type). For the real numbers the analogue
   150	narrative produces two presentations rather than six, but each is
   456	
   457	\begin{example}[Naturals as stream]
   458	$\mathsf{nats} := \unfold_\gamma$ where $C = \N$ and
   459	$\gamma(n) = (n, n+1)$. Yields $\mathsf{nats} = 0,1,2,3,\dots$
   460	\end{example}
   461	
   462	\subsection{Base-$b$ digit streams and approximation maps}
   463	
   464	Fix $b \geq 2$. We work with digit streams of $\mathsf{Fin}(b)$.
   465	
   466	\begin{definition}[Approximation map]\label{def:approx}
   616	is~\cite{ghani-hancock-pattinson}).
   617	\end{example}
   618	
   619	% =============================================================
   620	\section{Coalgebraic characterisations of $\pi$ and $e$}\label{sec:pi-e}
   621	% =============================================================
   622	
   623	We now state the main results of the paper.
   624	
   625	\subsection{The case of $e$}
   626	
   627	\begin{definition}[Series coalgebra for $e$]\label{def:e-coalg}
   628	Define a coalgebra $(C_e, \gamma_e)$ on
   692	Booij's $\Rc$ enter only \emph{inside} $\alpha_b$. If one is
   693	willing to take $\alpha_b$ as the basic ``observation'', the
   694	characterisation is purely coalgebraic. We discuss this point
   695	further in \Cref{sec:cauchy-vs-coalg}.
   696	\end{remark}
   697	
   698	\subsection{The case of $\pi$}
   699	
   700	For $\pi$ the situation is more subtle because no \emph{finite-state}
   701	streaming algorithm is known. We use Bailey--Borwein--Plouffe (BBP)
   702	in base 16, which is streamable digit-by-digit although the state
   742	
   743	\begin{proof}
   744	Same structure as \Cref{thm:e-char}, using \Cref{thm:pi-final}.
   745	\end{proof}
   746	
   747	\subsection{Internalisation: removing the reference to $\Rc$}
   748	
   749	\Cref{thm:e-char} and \Cref{thm:pi-char} reference $e-2$ and
   750	$\pi - 3$ as elements of $\Rc$, hence implicitly the HIIT.
   751	We now upgrade these to characterisations expressed
   752	\emph{purely} in terms of bisimulations between streams.
  1048	\emph{judgmentally}; the inductive presentation requires a layer
  1049	of approximation-and-quotient.
  1050	
  1051	% =============================================================
  1052	\section{Connection to the $\zeta$-prerequisite chain}\label{sec:zeta}
  1053	% =============================================================
  1054	
  1055	\subsection{The principal open problem}
  1056	
  1170	vs.\ propositional truncation. Which presentation makes
  1171	$\beta_b: \Stream/{\bisim_b} \simeq [0,1]$ \emph{computational}
  1172	(i.e.\ $\beta_b \circ \beta_b^{-1} \equiv \id$ judgmentally)?
  1173	\end{problem}
  1174	
  1175	\subsection{Productivity and the totality of $\unfold$}
  1176	
  1177	In MLTT-without-cubical, the totality of $\unfold$ requires a
  1178	guardedness check on the coalgebra. In our case the BBP and

exec
/usr/local/bin/zsh -lc 'git status --short -- papers/latex/coalgebraic-transcendentals.tex papers/latex/coalgebraic-transcendentals.*' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
?? papers/latex/coalgebraic-transcendentals.tex

exec
/usr/local/bin/zsh -lc 'pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/coalgebraic-tex-review papers/latex/coalgebraic-transcendentals.tex >/tmp/coalgebraic-tex-review/original-nonhalt.out 2>&1; echo exit:$?; rg -n "''^!|Fatal|Runaway|Extra|undefined|Overfull|Underfull|Warning|''^'"\\./papers/latex/coalgebraic\" /tmp/coalgebraic-tex-review/original-nonhalt.out" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 490ms:
exit:1
179:Package everypage Warning: Functionality similar to this package has recently
185:Package everypage Warning: You appear to be running a version of LaTeX
216:LaTeX Warning: Citation `paperIII' on page 1 undefined on input line 116.
222:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
226:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
230:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
234:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
238:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
242:LaTeX Warning: Citation `synthesis' on page 2 undefined on input line 146.
245:LaTeX Warning: Citation `booij' on page 2 undefined on input line 155.
248:LaTeX Warning: Citation `rutten' on page 2 undefined on input line 164.
251:LaTeX Warning: Citation `weihrauch' on page 2 undefined on input line 172.
255:LaTeX Warning: Citation `ACS' on page 3 undefined on input line 225.
258:LaTeX Warning: Reference `thm:coinduction' on page 3 undefined on input line 23
262:LaTeX Warning: Reference `sec:lambek' on page 1 undefined on input line 252.
265:LaTeX Warning: Reference `sec:streams' on page 1 undefined on input line 254.
268:LaTeX Warning: Reference `sec:bisim' on page 1 undefined on input line 255.
271:LaTeX Warning: Reference `sec:pi-e' on page 1 undefined on input line 257.
274:LaTeX Warning: Reference `sec:cubical' on page 1 undefined on input line 258.
277:LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
281:LaTeX Warning: Reference `sec:zeta' on page 1 undefined on input line 260.
284:LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 262.
287:LaTeX Warning: Citation `cchm' on page 3 undefined on input line 271.
291:LaTeX Warning: Citation `rutten' on page 4 undefined on input line 322.
294:LaTeX Warning: Citation `ACS' on page 4 undefined on input line 336.
297:Overfull \hbox (16.8267pt too wide) in paragraph at lines 350--353
303:LaTeX Warning: Citation `birkedal' on page 4 undefined on input line 357.
307:LaTeX Warning: Reference `lem:lambek' on page 1 undefined on input line 387.
309:Runaway argument?
311:./papers/latex/coalgebraic-transcendentals.tex:406: Paragraph ended before \end
318:LaTeX Warning: Reference `def:bisim' on page 1 undefined on input line 414.
322:LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 44
326:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
330:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
333:./papers/latex/coalgebraic-transcendentals.tex:481: Extra }, or forgotten $.
338:./papers/latex/coalgebraic-transcendentals.tex:481: Missing $ inserted.
343:./papers/latex/coalgebraic-transcendentals.tex:481: Missing } inserted.
348:./papers/latex/coalgebraic-transcendentals.tex:482: Missing $ inserted.
354:./papers/latex/coalgebraic-transcendentals.tex:506: Extra }, or forgotten $.
360:./papers/latex/coalgebraic-transcendentals.tex:506: Missing $ inserted.
366:./papers/latex/coalgebraic-transcendentals.tex:506: Missing } inserted.
373:./papers/latex/coalgebraic-transcendentals.tex:507: LaTeX Error: \mathsf allowe
383:./papers/latex/coalgebraic-transcendentals.tex:507: LaTeX Error: \mathsf allowe
392:./papers/latex/coalgebraic-transcendentals.tex:507: Missing $ inserted.
397:./papers/latex/coalgebraic-transcendentals.tex:507: Extra }, or forgotten $.
400:./papers/latex/coalgebraic-transcendentals.tex:509: Missing } inserted.
406:LaTeX Warning: Reference `lem:approx-surj' on page 1 undefined on input line 51
410:./papers/latex/coalgebraic-transcendentals.tex:519: Extra }, or forgotten $.
415:./papers/latex/coalgebraic-transcendentals.tex:519: Missing $ inserted.
420:./papers/latex/coalgebraic-transcendentals.tex:519: Missing } inserted.
426:./papers/latex/coalgebraic-transcendentals.tex:520: LaTeX Error: \mathbb allowe
436:./papers/latex/coalgebraic-transcendentals.tex:521: LaTeX Error: \mathbb allowe
445:./papers/latex/coalgebraic-transcendentals.tex:521: Missing $ inserted.
451:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 56
455:LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 57
459:LaTeX Warning: Citation `poussangiorgi' on page 7 undefined on input line 589.
463:LaTeX Warning: Citation `ghani-hancock-pattinson' on page 8 undefined on input 
467:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
471:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
475:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
479:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
483:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
487:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
491:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
495:LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 633.
498:LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 634
502:LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 634.
506:LaTeX Warning: Citation `sale-e-1968' on page 8 undefined on input line 658.
509:LaTeX Warning: Citation `rabwagon-spigot' on page 8 undefined on input line 659
513:LaTeX Warning: Citation `gibbons-spigot' on page 8 undefined on input line 659.
517:LaTeX Warning: Reference `def:observable' on page 1 undefined on input line 665
521:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
525:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 678.
529:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 689.
532:LaTeX Warning: Reference `sec:cauchy-vs-coalg' on page 1 undefined on input lin
536:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
540:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
544:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
548:LaTeX Warning: Citation `bbp' on page 9 undefined on input line 725.
551:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
555:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 744.
558:LaTeX Warning: Reference `thm:pi-final' on page 1 undefined on input line 744.
561:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
565:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
569:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
573:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 749.
576:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 749.
580:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 758.
583:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 762.
586:LaTeX Warning: Reference `def:e-coalg' on page 1 undefined on input line 770.
589:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 772.
592:LaTeX Warning: Reference `thm:e-final' on page 1 undefined on input line 772.
595:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 788
599:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 793
603:LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 79
607:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 822
611:LaTeX Warning: Citation `bbp' on page 10 undefined on input line 825.
614:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 834
618:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
622:LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 83
626:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 837
631:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 842
635:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
639:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 844
643:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 84
647:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 845.
650:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 845.
653:LaTeX Warning: Citation `paperIII' on page 11 undefined on input line 851.
656:LaTeX Warning: Reference `app:state' on page 1 undefined on input line 859.
659:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 87
663:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 870
667:LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 880.
671:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
675:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
679:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
683:LaTeX Warning: Reference `lem:observable-closed' on page 1 undefined on input l
687:LaTeX Warning: Reference `prop:three-equal' on page 1 undefined on input line 9
691:LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 93
695:LaTeX Warning: Reference `prob:internal' on page 1 undefined on input line 933.
700:LaTeX Warning: Citation `ACS' on page 12 undefined on input line 946.
703:Overfull \hbox (7.27206pt too wide) in paragraph at lines 945--947
707:LaTeX Warning: Reference `def:Mtype' on page 1 undefined on input line 961.
710:LaTeX Warning: Reference `lem:lambek' on page 1 undefined on input line 969.
713:LaTeX Warning: Citation `birkedal' on page 12 undefined on input line 978.
716:Overfull \hbox (1.21362pt too wide) in paragraph at lines 996--996
721:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 99
725:Underfull \hbox (badness 1400) in paragraph at lines 999--999
729:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 10
733:LaTeX Warning: Reference `lem:approx-surj' on page 1 undefined on input line 10
737:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 10
741:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1032
745:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
749:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
753:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
757:LaTeX Warning: Citation `synthesis' on page 13 undefined on input line 1057.
760:LaTeX Warning: Citation `loefflerstoll' on page 13 undefined on input line 1059
765:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
769:LaTeX Warning: Reference `def:approx' on page 1 undefined on input line 1099.
772:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
776:LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1105.
780:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 114
784:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 11
788:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 11
792:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
796:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
801:LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 12
805:LaTeX Warning: Reference `thm:streamfinal' on page 1 undefined on input line 12
809:LaTeX Warning: Reference `thm:01-quotient' on page 1 undefined on input line 12
813:LaTeX Warning: Reference `thm:e-char' on page 1 undefined on input line 1244.
816:LaTeX Warning: Reference `thm:pi-char' on page 1 undefined on input line 1244.
819:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 124
823:LaTeX Warning: Reference `thm:pi-internal' on page 1 undefined on input line 12
827:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1246
831:LaTeX Warning: Reference `prop:dirichlet-stream' on page 1 undefined on input l
835:LaTeX Warning: Reference `prob:lean-productivity' on page 1 undefined on input 
839:LaTeX Warning: Reference `conj:zeta' on page 1 undefined on input line 1266.
843:LaTeX Warning: Citation `HoTTbook' on page 17 undefined on input line 1289.
846:LaTeX Warning: Citation `booij' on page 17 undefined on input line 1289.
849:LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1289.
852:LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1289.
855:LaTeX Warning: Citation `jacobs' on page 17 undefined on input line 1289.
858:LaTeX Warning: Citation `paperIII' on page 17 undefined on input line 1291.
861:LaTeX Warning: Citation `paperV' on page 17 undefined on input line 1291.
864:LaTeX Warning: Citation `synthesis' on page 17 undefined on input line 1291.
867:Overfull \hbox (8.40681pt too wide) in paragraph at lines 1296--1300
874:LaTeX Warning: Citation `rutten' on page 17 undefined on input line 1301.
877:LaTeX Warning: Citation `ACS' on page 17 undefined on input line 1302.
880:LaTeX Warning: Reference `thm:coinduction' on page 1 undefined on input line 13
884:LaTeX Warning: Reference `thm:hiitequal' on page 1 undefined on input line 1322
889:LaTeX Warning: Citation `cchm' on page 18 undefined on input line 1342.
892:LaTeX Warning: Citation `ACS' on page 18 undefined on input line 1342.
895:LaTeX Warning: Reference `thm:e-internal' on page 18 undefined on input line 13
899:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 134
903:LaTeX Warning: Citation `sale-e-1968' on page 18 undefined on input line 1349.
906:LaTeX Warning: Citation `gibbons-spigot' on page 18 undefined on input line 134
910:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
914:LaTeX Warning: Reference `thm:e-internal' on page 1 undefined on input line 137
918:LaTeX Warning: Citation `poussangiorgi' on page 18 undefined on input line 1386
922:LaTeX Warning: Reference `thm:upto-sound' on page 1 undefined on input line 139
927:./papers/latex/coalgebraic-transcendentals.tex:1534: LaTeX Error: \begin{defini
938:LaTeX Warning: There were undefined references.
941:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
944:Package rerunfilecheck Warning: File `coalgebraic-transcendentals.out' has chan

codex
I compiled the file with `pdflatex -file-line-error`. The source currently does not compile cleanly.

1. [line 405](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:405): malformed environment close:
   `\end{definition>` should be `\end{definition}`.

2. [lines 481, 506, 519](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:481): theorem/remark optional titles contain raw `[0,1]`, so LaTeX treats the `]` as the end of the optional argument.
   Fix by bracing the bracketed interval:
   - `\begin{lemma}[Approximation surjects onto ${[0,1]}$]`
   - `\begin{theorem}[${[0,1]}$ as quotient final coalgebra]`
   - `\begin{remark}[$\R$ from ${[0,1]}$]`

3. [line 23](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:23): `everypage` emits legacy/breakage warnings on this LaTeX version.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` at line 76 with the kernel hook `\AddToHook{shipout/background}{...}`.

4. PDF bookmark warnings from math in headings at [144](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:144), [462](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:462), [620](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:620), [625](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:625), [698](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:698), [747](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:747), [883](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:883), [1052](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1052), [1175](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1175).
   Fix with `\texorpdfstring`, e.g. `\subsection{\texorpdfstring{Two presentations of $\R$, two presentations of $\pi$}{Two presentations of R, two presentations of pi}}`.

5. Overfull box at [lines 350-353](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:350), 16.8pt too wide.
   Fix by moving the definition equation to display math and splitting the destructor maps onto separate lines.

6. Overfull box at [lines 870-881](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:870), 5.3pt too wide.
   Fix by displaying the two stream classes instead of keeping them inline, or insert explicit `\allowbreak` points around the quotient expressions.

7. Overfull box at [lines 945-947](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:945), 7.3pt too wide.
   Fix by shortening “Ahrens--Capriotti--Spadotti” to `ACS~\cite{ACS}` in running text.

8. Overfull/underfull table boxes at [lines 992-1000](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:992).
   Fix by using `tabularx` with ragged columns, e.g. add `\usepackage{tabularx,array}` and use `\begin{tabularx}{\textwidth}{>{\raggedright\arraybackslash}X>{\raggedright\arraybackslash}X}`.

9. Overfull box at [lines 1296-1300](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1296), 8.4pt too wide.
   Fix by putting `M(A,\lambda{-}.\mathbf{1}) \cong A^\N` in display math before continuing the theorem sentence.

After applying temporary versions of the syntax fixes in `/tmp` and rerunning twice, citations and cross-references resolved; no persistent broken references or missing citation keys remained.

VERDICT: NEEDS_FIX
2026-05-04T23:42:33.745753Z ERROR codex_core::session: failed to record rollout items: thread 019df55c-a412-7741-bbb1-a5680fdada99 not found
tokens used
98,724
I compiled the file with `pdflatex -file-line-error`. The source currently does not compile cleanly.

1. [line 405](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:405): malformed environment close:
   `\end{definition>` should be `\end{definition}`.

2. [lines 481, 506, 519](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:481): theorem/remark optional titles contain raw `[0,1]`, so LaTeX treats the `]` as the end of the optional argument.
   Fix by bracing the bracketed interval:
   - `\begin{lemma}[Approximation surjects onto ${[0,1]}$]`
   - `\begin{theorem}[${[0,1]}$ as quotient final coalgebra]`
   - `\begin{remark}[$\R$ from ${[0,1]}$]`

3. [line 23](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:23): `everypage` emits legacy/breakage warnings on this LaTeX version.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` at line 76 with the kernel hook `\AddToHook{shipout/background}{...}`.

4. PDF bookmark warnings from math in headings at [144](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:144), [462](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:462), [620](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:620), [625](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:625), [698](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:698), [747](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:747), [883](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:883), [1052](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1052), [1175](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1175).
   Fix with `\texorpdfstring`, e.g. `\subsection{\texorpdfstring{Two presentations of $\R$, two presentations of $\pi$}{Two presentations of R, two presentations of pi}}`.

5. Overfull box at [lines 350-353](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:350), 16.8pt too wide.
   Fix by moving the definition equation to display math and splitting the destructor maps onto separate lines.

6. Overfull box at [lines 870-881](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:870), 5.3pt too wide.
   Fix by displaying the two stream classes instead of keeping them inline, or insert explicit `\allowbreak` points around the quotient expressions.

7. Overfull box at [lines 945-947](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:945), 7.3pt too wide.
   Fix by shortening “Ahrens--Capriotti--Spadotti” to `ACS~\cite{ACS}` in running text.

8. Overfull/underfull table boxes at [lines 992-1000](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:992).
   Fix by using `tabularx` with ragged columns, e.g. add `\usepackage{tabularx,array}` and use `\begin{tabularx}{\textwidth}{>{\raggedright\arraybackslash}X>{\raggedright\arraybackslash}X}`.

9. Overfull box at [lines 1296-1300](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1296), 8.4pt too wide.
   Fix by putting `M(A,\lambda{-}.\mathbf{1}) \cong A^\N` in display math before continuing the theorem sentence.

After applying temporary versions of the syntax fixes in `/tmp` and rerunning twice, citations and cross-references resolved; no persistent broken references or missing citation keys remained.

VERDICT: NEEDS_FIX

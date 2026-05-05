---
reviewer: codex (OpenAI)
type: formatting
paper: langlands-analytic-number-theory
round: 3
date: 2026-05-04T23:46:00Z
---

Reading additional input from stdin...
OpenAI Codex v0.125.0 (research preview)
--------
workdir: /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
model: gpt-5.5
provider: openai
approval: never
sandbox: read-only
reasoning effort: high
reasoning summaries: none
session id: 019df562-68e3-75a0-b4d0-11520646c099
--------
user
Review papers/latex/langlands-analytic-number-theory.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll keep this read-only and ground the review in the `.tex` source line numbers. I’m first checking whether there’s any prior repo context, then I’ll inspect the LaTeX file and nearby project files for referenced labels/packages.
exec
/usr/local/bin/zsh -lc 'rg -n "hott-foundations|langlands|analytic number theory|latex" /Users/mlong/.codex/memories/MEMORY.md' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'pwd && rg --files' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
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
reviews/etcs-izf-folds-codex-review.md
reviews/cubical-hiit-cauchy-codex-review.md
reviews/langlands-analytic-number-theory-codex-review-round-3.md
reviews/cubical-hiit-cauchy-review-round-1.md
reviews/infinity-nno-review-round-2.md
reviews/cubical-hiit-cauchy-codex-review-round-2.md
reviews/coalgebraic-transcendentals-review-round-3.md
reviews/cubical-hiit-cauchy-codex-review-round-3.md
reviews/coalgebraic-transcendentals-review-round-2.md
reviews/langlands-analytic-number-theory-codex-review-round-2.md
reviews/etcs-izf-folds-review-round-1.md
reviews/infinity-nno-review.md
reviews/directed-univalence-review.md
reviews/directed-univalence-codex-review-round-2.md
reviews/infinity-nno-codex-review-round-2.md
reviews/coalgebraic-transcendentals-codex-review-round-1.md
reviews/directed-univalence-codex-review-round-3.md
reviews/infinity-nno-codex-review-round-3.md
reviews/etcs-izf-folds-codex-review-round-1.md
reviews/coalgebraic-transcendentals-review.md
reviews/infinity-nno-codex-review.md
reviews/etcs-izf-folds-codex-review-round-2.md
reviews/etcs-izf-folds-codex-review-round-3.md
reviews/directed-univalence-codex-review-round-1.md
reviews/infinity-nno-codex-review-round-1.md
reviews/directed-univalence-review-round-1.md
reviews/directed-univalence-codex-review.md
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
images/directed-univalence.png
images/infinity-nno.png
images/etcs-izf-folds.png
papers/pdf/directed-univalence.pdf
papers/pdf/infinity-nno.pdf
papers/pdf/etcs-izf-folds.pdf
papers/latex/infinity-nno.tex
papers/latex/langlands-analytic-number-theory.aux
papers/latex/coalgebraic-transcendentals.tex
papers/latex/langlands-analytic-number-theory.log
papers/latex/etcs-izf-folds.fdb_latexmk
papers/latex/directed-univalence.tex
papers/latex/cubical-hiit-cauchy.fls
papers/latex/cubical-hiit-cauchy.aux
papers/latex/cubical-hiit-cauchy.log
papers/latex/etcs-izf-folds.fls
papers/latex/etcs-izf-folds.aux
papers/latex/etcs-izf-folds.log
papers/latex/langlands-analytic-number-theory.out
papers/latex/cubical-hiit-cauchy.toc
papers/latex/cubical-hiit-cauchy.tex
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

codex
There wasn’t any relevant memory hit for this repo/file, so I’m using the local source and existing LaTeX artifacts. I found a prior `.log` and `.aux`, which should help separate source issues from build-output warnings without writing new files.
exec
/usr/local/bin/zsh -lc 'nl -ba papers/latex/langlands-analytic-number-theory.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsfonts, amsthm}
     5	
     6	% Page layout (load early so other packages see geometry)
     7	\usepackage[margin=1in]{geometry}
     8	
     9	% Graphics and color
    10	\usepackage{graphicx}
    11	\usepackage{xcolor}
    12	
    13	% Diagrams
    14	\usepackage{tikz}
    15	\usepackage{tikz-cd}
    16	\usetikzlibrary{arrows.meta, calc, positioning}
    17	
    18	% Tables
    19	\usepackage{booktabs}
    20	
    21	% Page hooks for the GrokRxiv sidebar
    22	\usepackage{everypage}
    23	
    24	% Unicode characters used inside verbatim Lean snippets.
    25	\usepackage{newunicodechar}
    26	\newunicodechar{ℂ}{\ensuremath{\mathbb{C}}}
    27	\newunicodechar{ℕ}{\ensuremath{\mathbb{N}}}
    28	\newunicodechar{ℝ}{\ensuremath{\mathbb{R}}}
    29	\newunicodechar{ℤ}{\ensuremath{\mathbb{Z}}}
    30	\newunicodechar{ℚ}{\ensuremath{\mathbb{Q}}}
    31	\newunicodechar{∀}{\ensuremath{\forall}}
    32	\newunicodechar{∃}{\ensuremath{\exists}}
    33	\newunicodechar{≠}{\ensuremath{\neq}}
    34	\newunicodechar{≤}{\ensuremath{\leq}}
    35	\newunicodechar{≥}{\ensuremath{\geq}}
    36	\newunicodechar{π}{\ensuremath{\pi}}
    37	\newunicodechar{ζ}{\ensuremath{\zeta}}
    38	\newunicodechar{∧}{\ensuremath{\wedge}}
    39	\newunicodechar{∨}{\ensuremath{\vee}}
    40	
    41	% References (hyperref must be loaded late; cleveref after hyperref)
    42	\usepackage{hyperref}
    43	\usepackage{cleveref}
    44	
    45	% Theorems
    46	\newtheorem{theorem}{Theorem}[section]
    47	\newtheorem{proposition}[theorem]{Proposition}
    48	\newtheorem{lemma}[theorem]{Lemma}
    49	\newtheorem{corollary}[theorem]{Corollary}
    50	\newtheorem{conjecture}[theorem]{Conjecture}
    51	\theoremstyle{definition}
    52	\newtheorem{definition}[theorem]{Definition}
    53	\newtheorem{problem}[theorem]{Problem}
    54	\newtheorem{example}[theorem]{Example}
    55	\theoremstyle{remark}
    56	\newtheorem{remark}[theorem]{Remark}
    57	
    58	% GrokRxiv sidebar
    59	\definecolor{grokgray}{RGB}{110,110,110}
    60	\AddEverypageHook{%
    61	  \ifnum\value{page}=1
    62	    \begin{tikzpicture}[remember picture, overlay]
    63	      \node[
    64	        rotate=90,
    65	        anchor=south,
    66	        font=\Large\sffamily\bfseries\color{grokgray},
    67	        inner sep=0pt
    68	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    69	      {GrokRxiv:2026.05.langlands-analytic-number-theory\quad
    70	       [\,math.NT\,]\quad
    71	       04 May 2026};
    72	    \end{tikzpicture}
    73	  \fi
    74	}
    75	
    76	% Custom macros
    77	\newcommand{\C}{\mathbb{C}}
    78	\newcommand{\R}{\mathbb{R}}
    79	\newcommand{\Q}{\mathbb{Q}}
    80	\newcommand{\Z}{\mathbb{Z}}
    81	\newcommand{\N}{\mathbb{N}}
    82	\newcommand{\F}{\mathbb{F}}
    83	\newcommand{\HoTT}{\mathsf{HoTT}}
    84	\newcommand{\Type}{\mathcal{U}}
    85	\newcommand{\Prop}{\mathsf{Prop}}
    86	\newcommand{\Set}{\mathsf{Set}}
    87	\newcommand{\id}{\mathsf{id}}
    88	\newcommand{\refl}{\mathsf{refl}}
    89	\newcommand{\ua}{\mathsf{ua}}
    90	\newcommand{\Path}{\mathsf{Path}}
    91	\newcommand{\Cc}{\C_{\mathsf{c}}}
    92	\newcommand{\Rc}{\R_{\mathsf{c}}}
    93	\newcommand{\HIIT}{\mathsf{HIIT}}
    94	\newcommand{\op}{\mathsf{op}}
    95	\newcommand{\Aut}{\mathsf{Aut}}
    96	\newcommand{\Hom}{\mathsf{Hom}}
    97	\newcommand{\Map}{\mathsf{Map}}
    98	\newcommand{\Eq}{\mathsf{Eq}}
    99	\newcommand{\IsEquiv}{\mathsf{IsEquiv}}
   100	\newcommand{\nCat}[1]{(\infty,#1)\text{-}\mathsf{Cat}}
   101	\newcommand{\Tw}{\mathcal{T}}
   102	\newcommand{\holo}{\mathsf{Holo}}
   103	% Cohesive HoTT modalities.
   104	\newcommand{\esh}{\mathsf{S}}      % shape modality
   105	\newcommand{\flatm}{\mathsf{b}}    % flat modality (avoid clash with \flat)
   106	\newcommand{\sharpm}{\mathsf{S^\sharp}} % sharp modality
   107	% (We intentionally retain the standard \zeta from amssymb.)
   108	
   109	\title{Toward HoTT-Native Analytic Number Theory:\\
   110	Riemann Zeta, Langlands, and the $\zeta(s)=0$ Question}
   111	
   112	\author{Matthew Long \\
   113	\textit{The YonedaAI Collaboration} \\
   114	\textit{YonedaAI Research Collective} \\
   115	Chicago, IL \\
   116	\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
   117	
   118	\date{4 May 2026}
   119	
   120	\begin{document}
   121	\maketitle
   122	
   123	\begin{abstract}
   124	We address what the synthesis of our prior series of papers identified as the
   125	\emph{principal open problem} in homotopy type theory's interface with
   126	contemporary mathematics: the absence of a HoTT-native formulation of analytic
   127	number theory. Algebraic number theory and arithmetic geometry, through the
   128	lens of $(\infty,1)$-toposes, étale cohomology, and condensed mathematics,
   129	admit clean translations into univalent foundations. By contrast, the Riemann
   130	zeta function $\zeta(s)$, Dirichlet $L$-functions, automorphic forms, and the
   131	Langlands programme have not been substantially reformulated in HoTT. The
   132	statement $\zeta(s)=0$, viewed as a HoTT-native proposition with $\zeta$ a
   133	HoTT-native object, remains unrealised. This paper does not solve that problem;
   134	it formulates it precisely and offers a research roadmap.
   135	
   136	We proceed in seven steps. First, we trace the prerequisite chain that any
   137	HoTT-native definition of $\zeta$ must respect: HoTT-native Cauchy reals
   138	$\Rc$, Cauchy complex numbers $\Cc$ via univalent algebraic closure,
   139	holomorphic functions as a synthetic notion in cohesive HoTT, and Dirichlet
   140	series as analytic objects internal to a univalent universe. Second, we
   141	propose three candidate HoTT-native definitions of $\zeta$ — as a higher
   142	inductive--inductive type, as the analytic limit of an Euler product, and as
   143	the unique solution to a meromorphic continuation universal property — and
   144	analyse their tradeoffs. Third, we situate this work against the geometric
   145	Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze
   146	condensed and analytic-stack mathematics (2018--2025), and the
   147	Loeffler--Stoll Lean 4 / Mathlib formalization of the Riemann zeta function
   148	and $L$-functions (2025, arXiv:2503.00959). Fourth, we identify six concrete
   149	sub-problems whose resolution would constitute a HoTT-native proof of
   150	basic facts about $\zeta(s)$, including the Euler product, the functional
   151	equation, and the formal statement of the Riemann hypothesis. We do not claim
   152	the Riemann hypothesis, nor that HoTT will prove it; we claim that the
   153	question of stating it inside HoTT is itself a non-trivial research programme,
   154	and we take the first concrete steps toward that programme.
   155	\end{abstract}
   156	
   157	\tableofcontents
   158	
   159	\section{Introduction}\label{sec:intro}
   160	
   161	\subsection{The principal open problem}
   162	
   163	In the synthesis paper concluding our prior series~\cite{Long2026Synthesis},
   164	which builds on Riemann's foundational
   165	1859~paper~\cite{RiemannHypothesisOriginal},
   166	we surveyed six topics where homotopy type theory (HoTT) interfaces — or
   167	fails to interface — with mainstream twenty-first century mathematics.
   168	Topics 1, 3, 4, 5, and 6 (cohesive geometry, $\infty$-toposes, derived
   169	algebraic geometry, motives, and condensed algebra) admit varying degrees of
   170	HoTT formulation. Topic 2, \emph{analytic number theory}, does not. We wrote:
   171	\begin{quote}
   172	\itshape
   173	Algebraic number theory and parts of arithmetic geometry — schemes, sheaves,
   174	étale cohomology — admit $(\infty,1)$-topos and condensed mathematics
   175	treatments that connect cleanly to univalent foundations. But $\zeta(s)=0$
   176	as a HoTT-native statement, with $\zeta$ a HoTT-native object, remains
   177	unrealised. We frame this as the principal open question for the synthesis.
   178	\end{quote}
   179	This paper develops that question.
   180	
   181	\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}
   182	
   183	A HoTT-native statement of $\zeta(s)=0$ requires four ingredients, each of
   184	which is non-trivial:
   185	\begin{enumerate}
   186	\item A HoTT-native object $\Cc:\Type$ of complex numbers, complete with the
   187	notion of meromorphicity. Constructive Cauchy reals~\cite{HoTTBook,Booij2020}
   188	exist, but a univalent algebraic closure that is well-behaved with respect
   189	to univalence requires care: classical algebraic closures are
   190	unique-up-to-isomorphism, while a HoTT-native one is unique up-to-equivalence
   191	in the sense of univalence~\cite{Voevodsky2014}.
   192	\item A HoTT-native notion of \emph{holomorphic function} $\holo:(\Cc \to \Cc) \to \Type$.
   193	The classical definition uses a metric limit (Newton quotient) which is
   194	constructive but not synthetic. A more native approach uses cohesive HoTT
   195	\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
   196	\item A HoTT-native definition of $\zeta:\Cc \setminus \{1\} \to \Cc$ that
   197	agrees on $\mathrm{Re}(s)>1$ with $\sum_{n\geq 1} n^{-s}$ and analytically
   198	continues elsewhere. This requires either a higher inductive-inductive
   199	construction (HIIT) or an internal universal property of meromorphic
   200	extensions.
   201	\item A HoTT-native interpretation of the proposition
   202	\[
   203	\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2.
   204	\]
   205	Even getting to this statement is a research project.
   206	\end{enumerate}
   207	
   208	By contrast, in classical foundations Loeffler and Stoll
   209	\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
   210	Mathlib the entire infrastructure: $\zeta$, the analytic continuation, the
   211	functional equation, the Basel problem, non-vanishing on $\mathrm{Re}(s) \geq 1$,
   212	Dirichlet's theorem on primes in arithmetic progressions, and the formal
   213	statement of the Riemann hypothesis. Their work runs to roughly 3300 lines
   214	of Lean for the analytic continuation alone. We have nothing comparable in
   215	any HoTT proof assistant.
   216	
   217	\subsection{What this paper does (and does not do)}
   218	
   219	This paper:
   220	\begin{itemize}
   221	\item Identifies and motivates the \emph{prerequisite chain} for a HoTT-native
   222	$\zeta$. (\Cref{sec:prereq})
   223	\item Proposes \emph{three candidate} HoTT-native definitions of $\zeta$,
   224	analyses their tradeoffs, and conjecturally proves their pairwise
   225	equivalence. (\Cref{sec:zeta})
   226	\item Places the picture in the broader geometric Langlands landscape via
   227	$(\infty,1)$-toposes and Lurie's higher topos theory~\cite{Lurie2009HTT,
   228	Gaitsgory2024GLC}. (\Cref{sec:langlands})
   229	\item Compares HoTT and Clausen--Scholze condensed mathematics, identifying
   230	where they overlap and where the bridge is missing. (\Cref{sec:condensed})
   231	\item Compares with the Loeffler--Stoll 2025 Lean formalization, both as a
   232	benchmark and as a \emph{translation target}. (\Cref{sec:loefflerstoll})
   233	\item Provides a six-sub-problem roadmap that, if solved, would yield a
   234	HoTT-native proof that $\zeta(2) = \pi^2/6$. (\Cref{sec:roadmap})
   235	\item Re-states the Riemann hypothesis as a HoTT proposition and discusses
   236	its modal-logical structure. (\Cref{sec:rh})
   237	\end{itemize}
   238	
   239	This paper does \emph{not}:
   240	\begin{itemize}
   241	\item Prove the Riemann hypothesis.
   242	\item Provide a complete HoTT formalization of $\zeta$.
   243	\item Claim that HoTT methods will, in principle, prove RH; we are agnostic
   244	on this question.
   245	\end{itemize}
   246	
   247	The companion code repository contains a Haskell implementation of partial
   248	zeta sums, Dirichlet series operations, the formal Euler product identity
   249	(modulo a convergence axiom), and a Lean 4 sketch indexed against
   250	Loeffler--Stoll's Mathlib code.
   251	
   252	\subsection{Algebraic vs.\ analytic number theory}
   253	
   254	A clarifying distinction. \emph{Algebraic number theory} studies
   255	$\mathcal{O}_K$, the ring of integers of a number field $K/\Q$, its ideals,
   256	class group, units, and reductions modulo primes. The objects are
   257	discrete-finite or, at worst, countable; their morphisms are algebraic; and
   258	the topology is the Zariski or étale one. HoTT formalisation is
   259	straightforward in principle: rings are sets with operations satisfying
   260	identities, and ideals are subsingletons of the underlying set.
   261	
   262	\emph{Analytic number theory} studies $\zeta(s)$, Dirichlet $L$-functions
   263	$L(s,\chi)$, and automorphic $L$-functions $L(s,\pi)$, where $\pi$ is an
   264	automorphic representation of $GL(n,\mathbb{A}_\Q)$. The objects are
   265	holomorphic / meromorphic functions of complex variables; morphisms are
   266	analytic transformations; and the topology is the Euclidean (or condensed)
   267	topology on $\C$. HoTT formalisation is presently absent.
   268	
   269	The Langlands programme~\cite{Langlands1970,GelbartLanglands1979} unifies
   270	these worlds: it asserts a precise correspondence between automorphic
   271	representations and Galois representations, transforming questions about
   272	zeros of $L$-functions into questions about Galois cohomology. Geometric
   273	Langlands~\cite{Gaitsgory2024GLC} is the function-field analogue and was
   274	proven in 2024 in five papers using $(\infty,1)$-categorical methods
   275	throughout.
   276	
   277	\subsection{Outline}
   278	
   279	\Cref{sec:prereq} traces the prerequisite chain.
   280	\Cref{sec:zeta} defines $\zeta$ as a candidate HoTT object.
   281	\Cref{sec:langlands} treats geometric Langlands in $(\infty,1)$-topoi.
   282	\Cref{sec:condensed} compares condensed mathematics and HoTT.
   283	\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.
   284	\Cref{sec:roadmap} gives the six-sub-problem roadmap.
   285	\Cref{sec:rh} discusses RH as a HoTT statement.
   286	\Cref{sec:conclusion} concludes.
   287	
   288	%---------------------------------------------------------------
   289	\section{The Prerequisite Chain}\label{sec:prereq}
   290	
   291	We trace, with care, the dependency chain culminating in a HoTT-native $\zeta$.
   292	
   293	\subsection{HoTT-native real numbers \texorpdfstring{$\Rc$}{Rc}}
   294	
   295	\begin{definition}[Cauchy reals, after the HoTT Book~\cite{HoTTBook}]\label{def:Rc}
   296	The type $\Rc$ of \emph{Cauchy reals} is the higher inductive-inductive type
   297	defined simultaneously with a relation $\sim_\epsilon : \Rc \to \Rc \to \Type$
   298	indexed by $\epsilon : \Q^+$, by the constructors:
   299	\begin{align}
   300	\mathsf{rat} &: \Q \to \Rc \\
   301	\mathsf{lim} &: \Pi(x:\Q^+ \to \Rc).\, \mathsf{IsCauchy}(x) \to \Rc \\
   302	\mathsf{eq} &: \Pi(u,v:\Rc).\, (\Pi(\epsilon:\Q^+).\, u \sim_\epsilon v) \to u = v
   303	\end{align}
   304	together with the path constructors for the closeness relation
   305	$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.
   306	\end{definition}
   307	
   308	\begin{remark}
   309	$\Rc$ is a set in the sense of HoTT (its identity types are propositions),
   310	because of the explicit equality constructor $\mathsf{eq}$. This is in
   311	contrast to a non-Cauchy approach where $\R$ might inherit higher structure
   312	from its construction.
   313	\end{remark}
   314	
   315	\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
   316	$\Rc$ is an Archimedean ordered field with decidable order $<$ on rationals
   317	but undecidable equality on $\Rc$ in general.
   318	\end{theorem}
   319	
   320	\subsection{HoTT-native complex numbers \texorpdfstring{$\Cc$}{Cc}}
   321	
   322	There are at least three approaches:
   323	
   324	\paragraph{Pairs.}
   325	$\Cc := \Rc \times \Rc$ with multiplication
   326	$(a,b)(c,d) := (ac-bd, ad+bc)$. Simple, but does not capture the
   327	\emph{universal property} that $\Cc$ should be an algebraic closure of $\Rc$.
   328	
   329	\paragraph{Algebraic closure of $\Rc$.}
   330	\begin{definition}[Univalent algebraic closure]\label{def:UAC}
   331	A type $\overline{\Rc}$ together with an embedding $\iota:\Rc \to \overline{\Rc}$
   332	is a \emph{univalent algebraic closure} of $\Rc$ if it is the propositional
   333	truncation of the type
   334	\[
   335	  \sum_{F:\mathsf{Field}}\, \sum_{\iota:\Rc \to F} \mathsf{IsAlgClosure}(\Rc,F,\iota),
   336	\]
   337	where $\mathsf{IsAlgClosure}$ is the conjunction of (i) every non-zero
   338	polynomial in $F[X]$ has a root, and (ii) every element of $F$ is algebraic
   339	over $\Rc$ via $\iota$.
   340	\end{definition}
   341	
   342	\begin{remark}[Plain-language gloss]\label{rem:UACplain}
   343	In essence, \Cref{def:UAC} defines the algebraic closure not as one
   344	specific construction, but as the abstract object satisfying the universal
   345	property of being an algebraically closed field containing $\Rc$. Univalence
   346	ensures that any two such objects are propositionally equal as types in
   347	$\mathcal{U}$. The propositional truncation $\|\cdot\|_{-1}$ at the top of
   348	the $\Sigma$-type collapses the choice-of-witness data to a proposition,
   349	reflecting the classical dictum that the algebraic closure is unique up to
   350	non-canonical isomorphism.
   351	\end{remark}
   352	
   353	\begin{proposition}\label{prop:UACUnique}
   354	Univalent algebraic closures of $\Rc$ are unique up to equivalence: if
   355	$(\overline{\Rc}_1,\iota_1)$ and $(\overline{\Rc}_2,\iota_2)$ are two such,
   356	there is an equivalence $e:\overline{\Rc}_1 \simeq \overline{\Rc}_2$ with
   357	$e \circ \iota_1 = \iota_2$, and by univalence
   358	$\overline{\Rc}_1 = \overline{\Rc}_2$.
   359	\end{proposition}
   360	
   361	\begin{proof}[Proof sketch]
   362	Classical algebraic-closure uniqueness uses Zorn's lemma. In HoTT, we use a
   363	constructive variant: one shows that any two algebraic closures are
   364	isomorphic via an inductive construction, and that the choice of isomorphism
   365	is contractible up to the action of $\mathsf{Gal}(\overline{\Rc}/\Rc)$. The
   366	propositional truncation in \Cref{def:UAC} ensures the existential is a
   367	proposition; uniqueness follows. Full proof requires choice or constructive
   368	algebraic-closure arguments~\cite{Mines1988}.
   369	\end{proof}
   370	
   371	\paragraph{Quotient construction.}
   372	$\Cc := \Rc[X]/(X^2 + 1)$. Concretely realisable via Schwartz / set-quotient.
   373	
   374	In what follows, we treat $\Cc$ axiomatically: a propositional Univalent
   375	Algebraic Closure of $\Rc$, equipped with a continuous structure inherited
   376	from $\Rc \times \Rc$.
   377	
   378	\subsection{Holomorphic functions in HoTT}
   379	
   380	The classical definition of holomorphicity is:
   381	\[
   382	f:\C \to \C \text{ is holomorphic at } z \quad\text{iff}\quad
   383	\lim_{h \to 0} \frac{f(z+h) - f(z)}{h} \text{ exists.}
   384	\]
   385	This translates straightforwardly to $\Rc$- and $\Cc$-limits, but is not
   386	HoTT-native in the sense of using only $\Type$, $=$, and the
   387	universe-polymorphic constructors.
   388	
   389	\begin{definition}[Constructive holomorphicity]\label{def:holo}
   390	$f:\Cc \to \Cc$ is \emph{holomorphic} at $z:\Cc$ if there exists
   391	$f'(z):\Cc$ such that
   392	\[
   393	\Pi(\epsilon:\Q^+).\,
   394	\Sigma(\delta:\Q^+).\,
   395	\Pi(h:\Cc).\, 0 < |h| < \delta \to
   396	\left|\,\frac{f(z+h)-f(z)}{h} - f'(z)\,\right| < \epsilon.
   397	\]
   398	\end{definition}
   399	
   400	\begin{remark}[Synthetic alternative]\label{rem:synth}
   401	In \emph{cohesive HoTT}~\cite{Shulman2018Cohesive}, the universe carries
   402	shape and flat modalities $\esh, \flat$. Holomorphicity becomes a synthetic
   403	predicate: $f$ is holomorphic iff $f$ commutes with the differential cohesion
   404	operator. This is closer to ``HoTT-native'' but requires fixing a model
   405	where $\esh$ is interpreted as the geometric $\C^\infty$-shape.
   406	\end{remark}
   407	
   408	\subsection{Dirichlet series}
   409	
   410	\begin{definition}[Dirichlet series]\label{def:Dirichlet}
   411	A \emph{Dirichlet series} is a function $a:\N_{>0} \to \Cc$ together with the
   412	formal expression
   413	\[
   414	D_a(s) := \sum_{n=1}^{\infty} \frac{a(n)}{n^s}, \qquad s:\Cc.
   415	\]
   416	The \emph{abscissa of absolute convergence} is
   417	$\sigma_a := \inf\{\sigma:\Rc \mid \sum_n |a(n)| n^{-\sigma} \text{ converges}\}$.
   418	\end{definition}
   419	
   420	\begin{proposition}[HoTT-native; sketched]\label{prop:DirichletAlgebra}
   421	The set of Dirichlet series with $\sigma_a < +\infty$ forms a commutative
   422	ring under termwise addition and Dirichlet convolution
   423	$(a*b)(n) := \sum_{d \mid n} a(d) b(n/d)$.
   424	\end{proposition}
   425	
   426	\begin{proof}[Proof sketch]
   427	Closed-under-addition is clear. For convolution, the abscissa of
   428	$a*b$ is bounded by $\max(\sigma_a, \sigma_b) + \log_2(\text{divisor sum})$,
   429	which is finite when both $\sigma_a, \sigma_b$ are. The full proof in HoTT
   430	uses the absolute-convergence variant of Fubini for $\Rc$-valued double sums
   431	\cite{Booij2020}.
   432	\end{proof}
   433	
   434	\subsection{Putting it together}
   435	
   436	\begin{figure}[htbp]
   437	\centering
   438	\begin{tikzcd}[column sep=tiny, row sep=large]
   439	\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc
   440	  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)
   441	  \arrow[r, "\sum\frac{a(n)}{n^s}"]
   442	  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta
   443	\end{tikzcd}
   444	\caption{The prerequisite chain. Each arrow represents a non-trivial
   445	HoTT-native construction. The final arrow ($\mathsf{Dir} \to \zeta$) is the
   446	analytic continuation, and is the place at which the chain currently breaks
   447	in pure HoTT.}
   448	\label{fig:chain}
   449	\end{figure}
   450	
   451	The chain in \Cref{fig:chain} terminates at $\zeta$, but the rightmost arrow
   452	— analytic continuation from a Dirichlet series convergent on $\mathrm{Re}(s)>1$
   453	to a meromorphic function on $\Cc \setminus \{1\}$ — has no canonical
   454	HoTT-native realisation. This is the central technical gap of the present
   455	paper.
   456	
   457	\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
   458	
   459	To clarify why the rightmost arrow is hard, we list the obstacles in
   460	ascending order of severity.
   461	
   462	\begin{enumerate}
   463	\item \textbf{Unique factorisation of meromorphic extension.}
   464	In classical complex analysis, the identity theorem (\Cref{thm:Identity})
   465	guarantees uniqueness of analytic continuation. In HoTT, ``connected open''
   466	needs a precise definition, and the proof that the agreement locus is
   467	clopen requires constructive analogues of Bolzano--Weierstrass.
   468	
   469	\item \textbf{Existence of meromorphic extension.}
   470	Classical proofs of analytic continuation of $\zeta$ use one of:
   471	\begin{itemize}
   472	\item \emph{Hurwitz zeta} method: define $\zeta(s,a) = \sum_{n \geq 0}(n+a)^{-s}$
   473	and continue via the integral representation. This requires Mellin transform.
   474	\item \emph{Theta-function} method: $\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$
   475	satisfies modular invariance, and Mellin transforming gives $\zeta$.
   476	\item \emph{Contour integral} method: integrate $\frac{x^{s-1}}{e^x - 1}$
   477	around a Hankel contour.
   478	\end{itemize}
   479	Each requires a substantial fragment of HoTT-native analysis: integration
   480	theory, modular transformation laws, residue calculus.
   481	
   482	\item \textbf{Computation in HoTT.}
   483	Even given the existence and uniqueness, \emph{computing} $\zeta$ at, say,
   484	$s = -1$ to obtain $\zeta(-1) = -1/12$ requires either (i) symbolic
   485	manipulation of the analytic continuation, or (ii) numerical methods. HoTT
   486	proof assistants like Cubical Agda do not currently support efficient
   487	arbitrary-precision real arithmetic.
   488	
   489	\item \textbf{Naturality.}
   490	Classical proofs treat $\zeta$ as one specific function. A fully-categorified
   491	HoTT-native account would treat $\zeta$ as part of a family — Dirichlet
   492	$L$-functions, Hurwitz zeta, Hecke $L$-functions, automorphic
   493	$L$-functions — with naturality with respect to characters and lifts. This
   494	expands the existence obstacle by a constant factor of the size of the family.
   495	\end{enumerate}
   496	
   497	\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
   498	
   499	To make the discussion concrete, we sketch how $\sqrt{2}:\Rc$ is a
   500	HoTT-native object.
   501	
   502	\begin{example}[$\sqrt{2}$ as Cauchy real]\label{ex:sqrt2}
   503	Define $a:\Q^+ \to \Q$ by Newton iteration: $a(\epsilon) = $ the $n$-th
   504	Newton iterate of $x_{n+1} := (x_n + 2/x_n)/2$, where $n$ is large enough
   505	that $|a(\epsilon)^2 - 2| < \epsilon$. Then $a$ is a Cauchy modulus and
   506	$\mathsf{lim}(a, \mathsf{IsCauchy}_a):\Rc$ is $\sqrt{2}$. Equality
   507	$(\sqrt{2})^2 = 2$ in $\Rc$ follows from the equality constructor
   508	$\mathsf{eq}$.
   509	\end{example}
   510	
   511	\begin{example}[$e$ as Cauchy real]\label{ex:euler}
   512	$e := \mathsf{lim}((\epsilon \mapsto \sum_{k=0}^{N(\epsilon)} 1/k!),
   513	\mathsf{IsCauchy}_e):\Rc$, where $N(\epsilon)$ is chosen so the tail
   514	$\sum_{k>N} 1/k! < \epsilon$. By Stirling, $N(\epsilon) = O(\log(1/\epsilon)/
   515	\log\log(1/\epsilon))$.
   516	\end{example}
   517	
   518	\begin{example}[$\pi$ as Cauchy real]\label{ex:pi}
   519	We define
   520	\[
   521	\pi \;:=\; \mathsf{lim}\!\bigl(
   522	   \epsilon \mapsto \text{Machin formula at depth $N(\epsilon)$},\;
   523	   \mathsf{IsCauchy}_\pi\bigr).
   524	\]
   525	Machin's formula $\pi/4 = 4\arctan(1/5) - \arctan(1/239)$ converges
   526	geometrically with ratios $1/25$ and $1/239^2$, so
   527	$N(\epsilon) = O(\log(1/\epsilon))$.
   528	\end{example}
   529	
   530	These three examples illustrate that named real-number constants in HoTT
   531	require an algorithmic Cauchy modulus, not just an existential statement.
   532	
   533	%---------------------------------------------------------------
   534	\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
   535	
   536	We now propose three approaches to defining $\zeta$ inside HoTT.
   537	
   538	\subsection{Approach 1: \texorpdfstring{$\zeta$}{zeta} as a higher inductive-inductive type}
   539	
   540	Inspired by the construction of $\Rc$ as a HIIT, we sketch a
   541	\emph{specification pattern} for what a HoTT-native $\zeta$ should
   542	satisfy. We emphasise that what follows is a \emph{wish-list of
   543	constructors}, not a self-contained HIIT definition; both consistency
   544	and existence of such a HIIT are open questions.
   545	
   546	First, define the convergent partial-sum function on the half-plane of
   547	absolute convergence:
   548	\begin{equation}\label{eq:zetaSeries}
   549	\zeta_{\mathrm{series}} : \Pi(s:\Cc).\, \mathrm{Re}(s) > 1 \to \Cc, \qquad
   550	\zeta_{\mathrm{series}}(s) := \sum_{n=1}^{\infty} n^{-s}.
   551	\end{equation}
   552	This map is well-defined because $\mathrm{Re}(s) > 1$ ensures absolute
   553	convergence of the series in $\Cc$, and the limit is the (HoTT-native)
   554	limit constructor of $\Rc$ applied component-wise.
   555	
   556	\begin{definition}[Specification of zeta as HIIT, candidate]\label{def:ZetaHIIT}
   557	A pair $(\zeta:\Cc \setminus \{1\} \to \Cc, P:\mathsf{Holo}(\zeta))$ is a
   558	\emph{HIIT-realisation of zeta} if it is generated by:
   559	\begin{align}
   560	\zeta_{\mathrm{Re}>1} &: \Pi(s:\Cc).\, \mathrm{Re}(s) > 1 \to \Cc, \notag \\
   561	\zeta_{\mathrm{Re}>1}(s) &= \zeta_{\mathrm{series}}(s) \quad
   562	   \text{(equality with the series of \cref{eq:zetaSeries})} \\
   563	\mathsf{cont} &: \Pi(s:\Cc).\, s \neq 1 \to \Cc \\
   564	\mathsf{agree} &: \Pi(s:\Cc).\, \Pi(p:\mathrm{Re}(s) > 1).\,
   565	   \mathsf{cont}(s, \mathrm{ne1}_p) = \zeta_{\mathrm{Re}>1}(s, p) \\
   566	\mathsf{holo} &: \mathsf{Holo}(\mathsf{cont})
   567	\end{align}
   568	together with \emph{additional path-constructors} (intentionally left
   569	schematic) enforcing the functional equation
   570	$\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)\cos(\pi s/2)\zeta(s)$.
   571	
   572	We use the language of a \texttt{definition} only for the specification;
   573	we make no claim of consistency.
   574	\end{definition}
   575	
   576	\begin{remark}\label{rem:ZetaHIITissues}
   577	This is a \emph{specification}, not a finished HIIT, for two reasons:
   578	\begin{enumerate}
   579	\item The $\mathsf{holo}$ constructor demands a holomorphic extension, but no
   580	such extension is canonically given by the constructors themselves.
   581	Consistency therefore reduces to a separate \emph{existence-of-extension}
   582	lemma — which is exactly the analytic-continuation gap of \Cref{prob:4}.
   583	\item The functional-equation path-constructors are intentionally schematic.
   584	Their precise form would involve HoTT-native $\Gamma$, $\cos$, and the
   585	modular-transformation identity for $\theta$, none of which are presently
   586	formalised. We do not know what their definitive shape should be, and
   587	indicate this rather than papering over it.
   588	\end{enumerate}
   589	The specification is therefore a \emph{target pattern}, not a finished
   590	construction. The remaining two approaches (\Cref{def:ZetaEuler} and
   591	\Cref{def:ZetaUP}) are more conservative.
   592	\end{remark}
   593	
   594	\subsection{Approach 2: \texorpdfstring{$\zeta$}{zeta} as analytic limit of Euler product}
   595	
   596	Recall the Euler product (\cite{Euler1737}):
   597	\[
   598	\zeta(s) = \prod_{p \text{ prime}} \frac{1}{1 - p^{-s}}, \qquad \mathrm{Re}(s) > 1.
   599	\]
   600	
   601	\begin{definition}[Zeta via Euler product]\label{def:ZetaEuler}
   602	On the half-plane $H_1 := \{s:\Cc \mid \mathrm{Re}(s) > 1\}$, define
   603	\[
   604	\zeta_E(s) := \prod_{p \in \mathbb{P}} (1 - p^{-s})^{-1}
   605	\]
   606	where $\mathbb{P}$ is the type of primes. Extend by analytic continuation
   607	(separately proven) to $\Cc \setminus \{1\}$.
   608	\end{definition}
   609	
   610	\begin{proposition}[Euler product, modulo convergence]\label{prop:Euler}
   611	On $H_1$, $\zeta_E(s) = \sum_{n=1}^{\infty} n^{-s}$.
   612	\end{proposition}
   613	
   614	\begin{proof}[Proof sketch in HoTT]
   615	By unique factorisation in $\N_{>0}$ (a HoTT-formalisable theorem), each
   616	$n \geq 1$ corresponds bijectively to a finite-support function $\mathbb{P}
   617	\to \N$ via $n = \prod_p p^{e_p(n)}$. Expanding the Euler product:
   618	\[
   619	\prod_p (1 - p^{-s})^{-1}
   620	  = \prod_p \sum_{k \geq 0} p^{-ks}
   621	  = \sum_{(e_p)\in \N^{(\mathbb{P})}} \prod_p p^{-e_p s}
   622	  = \sum_{n \geq 1} n^{-s}.
   623	\]
   624	The middle equality uses absolute convergence of the product on $H_1$, which
   625	is a HoTT-statement requiring \Cref{prop:DirichletAlgebra}.
   626	\end{proof}
   627	
   628	\subsection{Approach 3: \texorpdfstring{$\zeta$}{zeta} via universal property of meromorphic continuation}
   629	
   630	\begin{definition}[Meromorphic continuation, universal]\label{def:MeromCont}
   631	Given a holomorphic $f:U \to \Cc$ on an open $U \subseteq \Cc$, a
   632	\emph{meromorphic continuation} of $f$ to $V \supseteq U$ is a
   633	meromorphic $\tilde f:V \to \Cc$ with $\tilde f|_U = f$, such that for any
   634	other meromorphic continuation $g:V \to \Cc$, $\tilde f = g$ as meromorphic
   635	functions. (Existence requires connectedness; uniqueness uses the identity
   636	theorem.)
   637	\end{definition}
   638	
   639	\begin{theorem}[Identity theorem, HoTT version]\label{thm:Identity}
   640	Suppose $f, g:V \to \Cc$ are holomorphic on a connected open $V \subseteq \Cc$,
   641	and the type $\sum_{z:V} f(z) = g(z)$ has an accumulation point in $V$.
   642	Then $\Pi(z:V).\, f(z) = g(z)$.
   643	\end{theorem}
   644	
   645	\begin{proof}[Proof sketch]
   646	Standard: the locus of agreement is open (by power series), closed (by
   647	continuity), and non-empty, hence equal to $V$ since $V$ is connected.
   648	HoTT-native version: ``connected'' becomes ``$\|V\|_{-1}$ is a singleton''
   649	and ``open'' is interpreted appropriately in cohesive HoTT.
   650	\end{proof}
   651	
   652	\begin{definition}[Zeta via universal property]\label{def:ZetaUP}
   653	$\zeta:\Cc \setminus \{1\} \to \Cc$ is the unique (up to identity, by
   654	\Cref{thm:Identity}) meromorphic continuation of $s \mapsto \sum n^{-s}$ from
   655	$H_1$ to $\Cc \setminus \{1\}$ with a simple pole of residue $1$ at $s=1$.
   656	\end{definition}
   657	
   658	\subsection{Equivalence of the three definitions}
   659	
   660	\begin{theorem}[Conjectural equivalence]\label{thm:ZetaEquiv}
   661	Conditional on the existence of HoTT-native analytic continuation, the three
   662	definitions \Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}
   663	are pairwise equivalent: there is a propositional equality between any two.
   664	\end{theorem}
   665	
   666	\begin{proof}[Proof sketch]
   667	\Cref{def:ZetaEuler} agrees with the partial-sum definition on $H_1$ by
   668	\Cref{prop:Euler}. \Cref{def:ZetaUP} agrees with the partial-sum definition
   669	on $H_1$ by definition. By \Cref{thm:Identity}, any two meromorphic
   670	continuations of the same function agree everywhere. \Cref{def:ZetaHIIT}
   671	imposes both the partial-sum agreement and the holomorphicity constraint,
   672	hence its result is identified with the universal-property zeta. The
   673	catch: each step requires HoTT-native analytic continuation, which is
   674	exactly the gap.
   675	\end{proof}
   676	
   677	\subsection{The functional equation}
   678	
   679	\begin{theorem}[Functional equation, conjectured HoTT-native]\label{thm:FE}
   680	For all $s : \Cc \setminus \{0,1\}$,
   681	\[
   682	\zeta(1-s) = 2 (2\pi)^{-s} \Gamma(s) \cos(\pi s / 2) \zeta(s).
   683	\]
   684	\end{theorem}
   685	
   686	\begin{proof}[Strategy]
   687	Riemann's original proof uses the theta-function identity
   688	$\theta(t) = t^{-1/2}\theta(1/t)$ and the Mellin transform. Translating to
   689	HoTT requires:
   690	\begin{itemize}
   691	\item HoTT-native theta function $\theta:\Rc^+ \to \Rc$, defined by
   692	$\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$, plus the modular identity.
   693	\item HoTT-native Mellin transform $\mathcal{M}:\holo(\Rc^+,\Rc) \to \holo(\Cc,\Cc)$.
   694	\item HoTT-native contour-integral lemmas.
   695	\end{itemize}
   696	None of these are presently formalized in HoTT. They are all formalized in
   697	classical Lean 4 / Mathlib (Loeffler--Stoll, 2025).
   698	\end{proof}
   699	
   700	\subsection{The critical strip}
   701	
   702	\begin{definition}[Critical strip]
   703	$S := \{s : \Cc \mid 0 < \mathrm{Re}(s) < 1\}$.
   704	\end{definition}
   705	
   706	\begin{definition}[Trivial zeros]
   707	A zero $s_0$ of $\zeta$ is \emph{trivial} if $s_0 \in \{-2,-4,-6,\ldots\}$.
   708	\end{definition}
   709	
   710	\begin{conjecture}[Riemann hypothesis, HoTT statement]\label{conj:RH}
   711	\[
   712	\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2.
   713	\]
   714	\end{conjecture}
   715	
   716	We will analyse this statement modal-logically in \Cref{sec:rh}.
   717	
   718	\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2) = pi squared over 6}}\label{subsec:Basel}
   719	
   720	To illustrate what HoTT-native machinery is needed, we trace one of the
   721	oldest results — the Basel problem.
   722	
   723	\begin{theorem}[Basel problem]\label{thm:Basel}
   724	$\zeta(2) = \pi^2/6$.
   725	\end{theorem}
   726	
   727	\begin{proof}[Sketch of HoTT-native proof, modulo missing infrastructure]
   728	There are several classical approaches; we outline two.
   729	
   730	\textbf{Approach (i): Fourier series of $x^2$.} Expand $x^2$ on $[-\pi,\pi]$
   731	as a Fourier series:
   732	\[
   733	x^2 = \frac{\pi^2}{3} + 4\sum_{n=1}^{\infty} \frac{(-1)^n \cos(nx)}{n^2}.
   734	\]
   735	Setting $x = \pi$ yields $\pi^2 = \pi^2/3 + 4\zeta(2)$,
   736	hence $\zeta(2) = \pi^2/6$. The HoTT-native version requires:
   737	\begin{itemize}
   738	\item HoTT-native Fourier series with pointwise convergence on smooth
   739	functions.
   740	\item HoTT-native trigonometric functions (definable as power series, hence
   741	HIIT $\Rc$-valued).
   742	\item Pointwise evaluation at the boundary requires Abel-style limits.
   743	\end{itemize}
   744	
   745	\textbf{Approach (ii): Euler's product expansion of $\sin$.} Use
   746	\[
   747	\frac{\sin(\pi z)}{\pi z} = \prod_{n=1}^{\infty}\left(1 - \frac{z^2}{n^2}\right).
   748	\]
   749	Equating Taylor coefficients of $z^2$ on both sides:
   750	$-\pi^2/6 = -\sum 1/n^2$, so $\zeta(2) = \pi^2/6$. HoTT-native version
   751	requires:
   752	\begin{itemize}
   753	\item Infinite-product convergence theory in HoTT.
   754	\item Term-by-term Taylor expansion of the product (Abel-Mertens-style
   755	manipulation).
   756	\item Product-to-sum identity, valid on absolute convergence.
   757	\end{itemize}
   758	
   759	Either approach requires roughly the same prerequisite chain:
   760	\Cref{prob:1}--\Cref{prob:3}, plus some elementary measure / convergence
   761	theory. \Cref{prob:4} is not needed for this specific theorem because $s=2$
   762	is in the half-plane of absolute convergence.
   763	\end{proof}
   764	
   765	\begin{remark}\label{rem:zetatwo}
   766	\Cref{thm:Basel} is a \emph{lower-bound} HoTT goal: it does not require
   767	analytic continuation or the functional equation. We propose it as the
   768	\emph{minimum viable target} for HoTT-native analytic NT — the analogue of
   769	``hello, world'' for our roadmap.
   770	\end{remark}
   771	
   772	%---------------------------------------------------------------
   773	\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
   774	
   775	\subsection{Brief history}
   776	
   777	The Langlands programme~\cite{Langlands1970} predicts a correspondence
   778	\[
   779	\bigl\{ \text{automorphic reps of } GL(n,\mathbb{A}_F) \bigr\}
   780	\;\longleftrightarrow\;
   781	\bigl\{ \text{$n$-dim Galois reps of } \mathrm{Gal}(\overline{F}/F) \bigr\}
   782	\]
   783	for a global field $F$. The number-field case ($F$ a number field) is
   784	analytic in nature; the function-field case ($F = \F_q(X)$ for a curve $X$)
   785	is geometric, hence the name \emph{geometric Langlands}.
   786	
   787	Geometric Langlands has a categorical formulation due to Beilinson--Drinfeld
   788	\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
   789	the existence of an equivalence
   790	\[
   791	\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \,\simeq\, \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X))
   792	\]
   793	of $(\infty,1)$-categories, where $G$ is a reductive group, $\mathsf{Bun}_G$
   794	its moduli stack of $G$-bundles, $G^\vee$ the Langlands dual, and
   795	$\mathsf{LocSys}$ the de Rham moduli of local systems. This was
   796	\textbf{proven} in 2024 by Gaitsgory, Raskin, Rozenblyum, Arinkin, Beraldo,
   797	Chen, Cheng, Faergeman, Lin, Lysenko in five papers
   798	\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
   799	
   800	\subsection{\texorpdfstring{$(\infty,1)$}{(infty,1)}-categories vs.\ HoTT}
   801	
   802	By Lurie's higher topos theory~\cite{Lurie2009HTT} and higher
   803	algebra~\cite{LurieHA}, $(\infty,1)$-categories
   804	admit a model in simplicial sets (quasi-categories). Cisinski et al.\
   805	\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
   806	foundations of $(\infty,1)$-category theory} in which $(\infty,1)$-categories
   807	are types satisfying a Segal condition.
   808	
   809	By Shulman's theorem~\cite{Shulman2019InfTopos}, every $(\infty,1)$-topos
   810	$\mathcal{X}$ admits HoTT as its internal language. Hence, in principle,
   811	the Gaitsgory equivalence is statable in HoTT \emph{internally to a fixed
   812	$(\infty,1)$-topos}.
   813	
   814	\begin{remark}\label{rem:internal}
   815	The catch is that the equivalence relates two \emph{different} topoi:
   816	$\mathsf{D}\text{-mod}(\mathsf{Bun}_G)$ is internal to a derived geometric
   817	topos; $\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee})$ is internal to a different
   818	derived geometric topos. A HoTT statement requires either an ambient
   819	2-topos / very-large-universe setup (in the spirit of Riehl--Verity directed
   820	type theory) or an external HoTT statement comparing two HoTT internal
   821	languages.
   822	\end{remark}
   823	
   824	\subsection{Geometric vs.\ analytic Langlands}
   825	
   826	The 2024 proof is \emph{geometric}: it lives in the world of moduli stacks
   827	over $\F_q$-curves or, in characteristic 0, over $\C$-curves with the de
   828	Rham stack (cf.~\cite{ClausenScholzeComplex} for the complex-analytic side). It says nothing directly about $\zeta$ or about analytic number
   829	theory.
   830	
   831	The \emph{analytic} Langlands programme (Etingof--Frenkel--Kazhdan
   832	\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the
   833	$L^2$-spectrum of certain operators on $\mathsf{Bun}_G(\C\text{-curve})$
   834	should match a spectral side built from $\mathsf{LocSys}_{G^\vee}$. This is
   835	the program closer to $\zeta(s) = 0$, but it is much less developed than
   836	the geometric version.
   837	
   838	\subsection{Implication for HoTT-native analytic NT}
   839	
   840	If a HoTT-native analytic Langlands programme could be developed, then
   841	$\zeta(s) = 0$ would translate to a statement about the spectrum of an
   842	operator on $\mathsf{Bun}_G(\Q)$, which is at least \emph{syntactically} a
   843	HoTT statement modulo standard moduli-stack constructions. We do not
   844	develop this direction in detail; we flag it as a concrete research direction.
   845	
   846	\subsection{Detailed example: \texorpdfstring{$GL(1)$}{GL(1)} Langlands and Hecke characters}\label{subsec:GL1}
   847	
   848	The simplest case of Langlands is $G = GL(1)$, and even this case shows
   849	where HoTT-native infrastructure is needed.
   850	
   851	\begin{example}[$GL(1)$ over $\Q$]
   852	Automorphic representations of $GL(1, \mathbb{A}_\Q)$ are continuous
   853	characters $\chi: \mathbb{A}_\Q^\times / \Q^\times \to \C^\times$. By
   854	class-field theory, these correspond to characters of $\mathrm{Gal}^{\mathrm{ab}}
   855	(\overline{\Q}/\Q)$, i.e., characters of the idele class group. The
   856	$L$-function attached to $\chi$ is
   857	\[
   858	L(s,\chi) = \prod_p \frac{1}{1 - \chi(p) p^{-s}}.
   859	\]
   860	For $\chi = 1$ trivial, this is $\zeta(s)$. The Langlands correspondence
   861	identifies $L(s,\chi)$ with the Artin $L$-function of the corresponding
   862	Galois character.
   863	\end{example}
   864	
   865	\begin{remark}[HoTT formulation of Hecke characters]
   866	A HoTT formulation requires:
   867	\begin{itemize}
   868	\item HoTT-native ideles $\mathbb{A}_\Q^\times$ as a restricted product
   869	over places. This is a HoTT-native colimit over a directed system of
   870	finite-place subgroups; HoTT-native completion at each place requires HoTT
   871	$p$-adic numbers~\cite{HoTTBook}.
   872	\item HoTT-native continuous group homomorphisms.
   873	\item HoTT-native $L$-function attached to character.
   874	\end{itemize}
   875	None of these are presently available, but each is plausibly a few thousand
   876	lines of HoTT code.
   877	\end{remark}
   878	
   879	\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
   880	
   881	We give a more precise version of the Gaitsgory equivalence as a HoTT
   882	internal statement. Let $\mathcal{X}$ be the $(\infty,1)$-topos of derived
   883	algebraic stacks over $\C$. By Shulman~\cite{Shulman2019InfTopos},
   884	$\mathcal{X}$ has an internal language extending HoTT (after fixing a
   885	universe-of-types issue).
   886	
   887	\begin{conjecture}[Gaitsgory equivalence in HoTT, schematic]\label{conj:GLCHoTT}
   888	In the internal language of $\mathcal{X}$, fix a smooth projective curve
   889	$X:\mathcal{X}$ over $\C$ and a reductive group $G:\mathcal{X}$. Define:
   890	\begin{align*}
   891	\mathsf{Bun}_G(X) &:\Type \quad \text{(moduli stack of $G$-bundles)}, \\
   892	\mathsf{LocSys}_{G^\vee}(X) &:\Type \quad \text{(moduli stack of $G^\vee$-local systems)}, \\
   893	\mathsf{D}\text{-mod}(\mathsf{Bun}_G) &:\Type \quad \text{(category of D-modules)}, \\
   894	\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}) &:\Type \quad \text{(category of quasi-coherent sheaves)}.
   895	\end{align*}
   896	There is a HoTT-internal equivalence of $\infty$-categories:
   897	\[
   898	\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \simeq \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X)).
   899	\]
   900	\end{conjecture}
   901	
   902	This is conjectural in the sense that we have not verified all the
   903	type-theoretic encodings; the underlying mathematical content is theorem
   904	(Gaitsgory et al.\ 2024).
   905	
   906	\begin{remark}\label{rem:univalence-glc}
   907	Univalence enters when one asks: \emph{which} equivalence? The
   908	Gaitsgory--Drinfeld equivalence comes equipped with a Hecke-eigensheaf
   909	property; under univalence, this distinguishes one canonical equivalence up
   910	to a contractible space of choices.
   911	\end{remark}
   912	
   913	\subsection{Physical interpretation: 4d \texorpdfstring{$\mathcal{N}=4$}{N=4} super-Yang--Mills}
   914	
   915	Kapustin and Witten~\cite{KapustinWitten2007} interpreted geometric
   916	Langlands as electric--magnetic duality (S-duality) of 4d
   917	$\mathcal{N}=4$ super-Yang--Mills compactified on a Riemann surface.
   918	This physical perspective suggests:
   919	\begin{itemize}
   920	\item A HoTT-native treatment of 4d $\mathcal{N}=4$ super-Yang--Mills via
   921	synthetic differential cohesive HoTT~\cite{Schreiber2013}.
   922	\item S-duality as an automorphism of the underlying type; eigenvalues of
   923	S-duality giving the spectrum.
   924	\item Connection to the synthesis paper's QFT formulation.
   925	\end{itemize}
   926	We flag this as a research direction; we do not develop it further here.
   927	
   928	%---------------------------------------------------------------
   929	\section{Condensed Mathematics and HoTT}\label{sec:condensed}
   930	
   931	\subsection{Pyknotic / condensed sets}
   932	
   933	Clausen and Scholze~\cite{Scholze2019Condensed,ClausenScholze2024Analytic}
   934	defined the \emph{condensed sets} as sheaves on the site of profinite sets
   935	with finite jointly-surjective covers. Pyknotic sets, due to Barwick--Haine,
   936	are an essentially equivalent variant. The category $\mathsf{Cond}$ is a
   937	topos, and $\mathsf{Cond}(\mathrm{Ab})$ — condensed abelian groups — has
   938	\emph{much better homological properties} than topological abelian groups.
   939	
   940	The crucial example: $\C$ becomes a \emph{condensed ring} which is
   941	analytic-friendly in a way that $\C$-as-topological-ring is not. The
   942	6-functor formalism of analytic stacks (Clausen--Scholze 2024) gives a
   943	geometric foundation for analytic-number-theoretic objects.
   944	
   945	\subsection{Why this matters for \texorpdfstring{$\zeta$}{zeta}}
   946	
   947	The condensed approach gives a uniform setting in which:
   948	\begin{itemize}
   949	\item Smooth manifolds, complex-analytic spaces, schemes, formal schemes,
   950	adic spaces, and rigid spaces all live as condensed objects.
   951	\item Cohomology operations (six functors: $f^*, f_*, f_!, f^!, \otimes,
   952	\mathrm{Hom}$) all exist with clean adjunction structure.
   953	\item $\zeta$, viewed as a meromorphic function on $\C$, becomes an object
   954	in $\mathsf{Cond}(\mathrm{Ab})$-modules over a suitable condensed analytic
   955	stack.
   956	\end{itemize}
   957	
   958	\subsection{Bridging to HoTT}
   959	
   960	\begin{problem}[Bridging condensed mathematics and HoTT]\label{prob:bridge}
   961	Construct an $(\infty,1)$-topos $\mathcal{X}$ with an internal language
   962	extending HoTT, in which:
   963	\begin{itemize}
   964	\item Condensed sets embed fully faithfully.
   965	\item Solid abelian groups (in the sense of Clausen--Scholze) are an
   966	internal type.
   967	\item Holomorphic / meromorphic functions on $\C$ correspond to morphisms
   968	of condensed analytic stacks.
   969	\end{itemize}
   970	\end{problem}
   971	
   972	\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others
   973	has explored the syntactic side, but no complete bridge exists.
   974	
   975	\subsection{Solid abelian groups in HoTT, sketch}
   976	
   977	\begin{definition}[Solid abelian group, condensed]
   978	A condensed abelian group $A$ is \emph{solid} if for every profinite set
   979	$S$ and every continuous $S \to A$ which is null on the closure of zero,
   980	the induced map factors through $A$ uniquely.
   981	\end{definition}
   982	
   983	A HoTT-native version would replace ``profinite set'' with a HoTT-internal
   984	type (e.g., a limit of finite types in $\mathcal{U}$) and ``continuous''
   985	with the appropriate cohesive-HoTT modality. We sketch a candidate:
   986	
   987	\begin{definition}[HoTT-solid abelian group, candidate]\label{def:HoTTSolid}
   988	Working in cohesive HoTT, an abelian group $A:\mathcal{U}$ is \emph{HoTT-solid}
   989	if $\esh(A) \simeq A$ and the map $\flat A \to A$ is an equivalence.
   990	\end{definition}
   991	
   992	\begin{remark}
   993	\Cref{def:HoTTSolid} is speculative; it has not been verified to match the
   994	condensed definition. It is offered as a starting point for future work.
   995	\end{remark}
   996	
   997	\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
   998	
   999	The Clausen--Scholze 6-functor formalism for analytic
  1000	stacks~\cite{ClausenScholze2024SixFunctor,ClausenScholze2025AnalyticStacks}
  1001	is expressed in $(\infty,1)$-categorical language as follows. Given a category
  1002	$\mathcal{C}$ of geometric objects (analytic stacks) with two classes of
  1003	morphisms ``proper'' $\mathsf{P}$ and ``open'' $\mathsf{O}$, a 6-functor
  1004	formalism consists of:
  1005	\begin{itemize}
  1006	\item A symmetric monoidal $(\infty,1)$-category $\mathcal{D}(X)$ for each
  1007	$X \in \mathcal{C}$, of $\infty$-sheaves on $X$.
  1008	\item For each morphism $f: X \to Y$ in $\mathcal{C}$, an adjunction
  1009	$f^* \dashv f_*: \mathcal{D}(Y) \rightleftarrows \mathcal{D}(X)$.
  1010	\item For each $f$ in $\mathsf{P} \cup \mathsf{O}$, an additional pair
  1011	$f_! \dashv f^!: \mathcal{D}(X) \rightleftarrows \mathcal{D}(Y)$.
  1012	\item Coherent base change, projection formula, and proper / open
  1013	recollement.
  1014	\end{itemize}
  1015	
  1016	\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
  1017	Express the 6-functor formalism in HoTT internal language. The natural
  1018	setting: $(\infty,1)$-topoi indexed over a directed type / $(\infty,2)$-base
  1019	\cite{Riehl2021Elements}.
  1020	\end{problem}
  1021	
  1022	A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
  1023	HoTT framework for analytic objects (including $\zeta$ as a section of a
  1024	suitable line bundle).
  1025	
  1026	\subsection{Solid modules over \texorpdfstring{$\Z$}{Z} and \texorpdfstring{$p$}{p}-adic interaction}\label{subsec:solidp}
  1027	
  1028	In condensed mathematics, the category of solid abelian groups
  1029	$\mathrm{Solid}_{\Z}$ contains $p$-adic objects naturally:
  1030	\[
  1031	\Z_p \in \mathrm{Solid}_{\Z}, \qquad \Q_p \in \mathrm{Solid}_{\Z}, \qquad
  1032	\C_p \in \mathrm{Solid}_{\Z}.
  1033	\]
  1034	For $\Z_p$, the topology comes from the profinite structure
  1035	$\Z_p = \varprojlim_n \Z/p^n$. For $\C_p$, completing the algebraic closure
  1036	of $\Q_p$ uses metric completion plus algebraic closure plus completion
  1037	again — this is awkward classically and equally awkward in HoTT.
  1038	
  1039	\begin{conjecture}[$p$-adic zeta function in HoTT]\label{conj:padicZeta}
  1040	A HoTT-native realisation of the Kubota--Leopoldt $p$-adic zeta function
  1041	$\zeta_p:\Z_p \setminus \{1\} \to \Q_p$ is plausibly easier than the
  1042	archimedean $\zeta$, because the $p$-adic case avoids analytic continuation
  1043	and uses interpolation of values $\zeta(1-n)$ for $n \geq 1$.
  1044	\end{conjecture}
  1045	
  1046	\begin{remark}\label{rem:padicEasier}
  1047	\Cref{conj:padicZeta} is a research suggestion: \emph{start with the $p$-adic
  1048	case}. Loeffler--Stoll formalize the archimedean case; the $p$-adic case has
  1049	not yet been comprehensively formalized in any proof assistant. HoTT could
  1050	be the first.
  1051	\end{remark}
  1052	
  1053	%---------------------------------------------------------------
  1054	\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
  1055	
  1056	\subsection{What Loeffler--Stoll have}
  1057	
  1058	The 2025 paper~\cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:
  1059	\begin{enumerate}
  1060	\item The Riemann zeta function $\zeta$ via Hurwitz zeta and analytic
  1061	continuation, $\sim$ 3300 lines.
  1062	\item Dirichlet $L$-functions $L(s,\chi)$ for primitive characters $\chi$.
  1063	\item The Euler product $\zeta(s) = \prod_p (1-p^{-s})^{-1}$ on
  1064	$\mathrm{Re}(s)>1$.
  1065	\item Analytic continuation via Mellin / theta-function method.
  1066	\item The functional equation $\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)
  1067	\cos(\pi s/2)\zeta(s)$.
  1068	\item Basel: $\zeta(2) = \pi^2/6$.
  1069	\item Non-vanishing on $\mathrm{Re}(s) \geq 1$.
  1070	\item Dirichlet's theorem on primes in APs.
  1071	\item Formal statement of the Riemann hypothesis:
  1072	\begin{verbatim}
  1073	def RiemannHypothesis : Prop :=
  1074	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1075	\end{verbatim}
  1076	\end{enumerate}
  1077	
  1078	This is roughly $10^4$ lines total across the relevant Mathlib files.
  1079	
  1080	\subsection{What Lean / Mathlib provides that HoTT lacks}
  1081	
  1082	\begin{itemize}
  1083	\item Classical $\C$ as a complete normed field, with Cauchy integrals.
  1084	\item Mathlib's \texttt{Complex.differentiable}, \texttt{HolomorphicAt},
  1085	\texttt{ContourIntegral}.
  1086	\item Mellin transforms, Gamma function, Riemann zeta function
  1087	(\texttt{ZetaFunction} in Mathlib).
  1088	\item All of measure theory, including Lebesgue integration on $\C$.
  1089	\end{itemize}
  1090	
  1091	\subsection{What HoTT could offer}
  1092	
  1093	\begin{itemize}
  1094	\item \emph{Univalence}: the multiple definitions of $\zeta$
  1095	(\Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}) become
  1096	\emph{propositionally equal} via univalence, not merely equal up to
  1097	some isomorphism.
  1098	\item \emph{Higher inductive types}: the Riemann surface of $\zeta$ (or of
  1099	$L$-functions) is naturally a HIT, capturing branch-cut data
  1100	syntactically.
  1101	\item \emph{Internal $(\infty,1)$-topos language}: the Langlands functor and
  1102	its adjoints can be expressed in the same language as the underlying
  1103	analytic objects.
  1104	\end{itemize}
  1105	
  1106	\subsection{Strategy: HoTT as classical-foundation transport}
  1107	
  1108	A pragmatic approach: \emph{transport} the Loeffler--Stoll Lean
  1109	formalization to HoTT \emph{not} by re-doing all the analysis, but by
  1110	treating $\C$ axiomatically as a HoTT type with the same operations and
  1111	properties as Mathlib's $\C$. We sketch this in \Cref{sec:roadmap}.
  1112	
  1113	\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
  1114	
  1115	To make the comparison tangible, we present the key Lean signatures from
  1116	Loeffler--Stoll alongside conjectured HoTT analogues.
  1117	
  1118	\paragraph{The zeta function itself.}
  1119	In Mathlib (Loeffler--Stoll):
  1120	\begin{verbatim}
  1121	noncomputable def riemannZeta : ℂ → ℂ
  1122	\end{verbatim}
  1123	In HoTT (proposed):
  1124	\[
  1125	\zeta : \Cc \setminus \{1\} \to \Cc \quad \text{(with explicit pole at $s=1$)}.
  1126	\]
  1127	Here Lean uses ``noncomputable'' to encode that $\zeta$ is defined by
  1128	non-effective analytic continuation. HoTT, lacking a built-in concept of
  1129	``noncomputable'', must encode this via a propositional truncation.
  1130	
  1131	\paragraph{The functional equation.}
  1132	In Mathlib:
  1133	\begin{verbatim}
  1134	theorem riemannZeta_one_sub : ∀ (s : ℂ), s ≠ 0 → s ≠ 1 →
  1135	  riemannZeta (1 - s) = 2 * (2 * π) ^ (-s) * Gamma s
  1136	                      * cos (π * s / 2) * riemannZeta s
  1137	\end{verbatim}
  1138	HoTT analogue (proposed): exactly the corresponding $\Pi$-statement, modulo
  1139	the conditional $s \neq 0 \wedge s \neq 1$.
  1140	
  1141	\paragraph{Non-vanishing on $\mathrm{Re}(s) \geq 1$.}
  1142	In Mathlib:
  1143	\begin{verbatim}
  1144	theorem riemannZeta_ne_zero_of_one_le_re :
  1145	  ∀ (s : ℂ), 1 ≤ s.re → s ≠ 1 → riemannZeta s ≠ 0
  1146	\end{verbatim}
  1147	HoTT analogue: same statement; the proof uses the Euler product (no
  1148	analytic continuation), so should be tractable HoTT-natively.
  1149	
  1150	\paragraph{Riemann hypothesis.}
  1151	In Mathlib:
  1152	\begin{verbatim}
  1153	def RiemannHypothesis : Prop :=
  1154	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1155	\end{verbatim}
  1156	HoTT analogue: \Cref{conj:RH}.
  1157	
  1158	\subsection{Quantitative comparison}\label{subsec:LSquant}
  1159	
  1160	\begin{center}
  1161	\begin{tabular}{lcc}
  1162	\toprule
  1163	Theorem & Lean lines (Loeffler--Stoll) & Est.\ HoTT complexity \\
  1164	\midrule
  1165	$\zeta$ definition & 200 & $\sim 2$--$3\times$ \\
  1166	Analytic continuation & 3300 & $\sim 2$--$3\times$ \\
  1167	Functional equation & 800 & $\sim 2$--$3\times$ \\
  1168	Euler product & 200 & $\sim 2\times$ \\
  1169	$\zeta$ non-vanishing on $\mathrm{Re}(s) \geq 1$ & 600 & $\sim 2\times$ \\
  1170	Dirichlet $L$-functions & 1500 & $\sim 2\times$ \\
  1171	Dirichlet's theorem & 800 & $\sim 2\times$ \\
  1172	\midrule
  1173	Total & $\sim$7400 lines & $\sim 2$--$3\times$ overhead \\
  1174	\bottomrule
  1175	\end{tabular}
  1176	\end{center}
  1177	
  1178	\medskip
  1179	
  1180	\begin{remark}[Caveat about line-count estimates]
  1181	The right-hand column is highly speculative; we present it as a
  1182	\emph{complexity factor} rather than absolute counts. The factor reflects
  1183	the rough overhead of HoTT-native analysis (no classical Mathlib measure
  1184	theory, no built-in Lebesgue integration, manual constructive analysis)
  1185	plus an honest correction for the immaturity of HoTT analysis libraries.
  1186	Actual numbers will diverge from these estimates by easily $\pm 50\%$ as
  1187	HoTT analysis libraries mature. The estimates are calibrated against
  1188	\cite{Booij2020} for HoTT-native analysis benchmarks.
  1189	\end{remark}
  1190	
  1191	%---------------------------------------------------------------
  1192	\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
  1193	
  1194	We propose six concrete sub-problems whose collective resolution would yield
  1195	a HoTT-native proof of $\zeta(2) = \pi^2/6$ and a formal HoTT statement of
  1196	the Riemann hypothesis.
  1197	
  1198	\subsection*{Sub-problem 1: HoTT-native \texorpdfstring{$\Cc$}{Cc} with full algebraic-closure axiom}
  1199	\addcontentsline{toc}{subsection}{Sub-problem 1: HoTT-native complex numbers}
  1200	\begin{problem}\label{prob:1}
  1201	Construct a HoTT type $\Cc:\mathcal{U}$ that is provably an algebraic closure
  1202	of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
  1203	it admits the standard topology and metric structure.
  1204	\end{problem}
  1205	\textbf{Status:} partially done in HoTT Book setting; algebraic closure not
  1206	yet done.
  1207	
  1208	\subsection*{Sub-problem 2: HoTT-native holomorphic functions}
  1209	\addcontentsline{toc}{subsection}{Sub-problem 2: HoTT-native holomorphic functions}
  1210	\begin{problem}\label{prob:2}
  1211	Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
  1212	Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
  1213	\end{problem}
  1214	\textbf{Status:} possible by direct constructive analysis. Estimated effort:
  1215	$\sim$5000 lines of Agda or Cubical Agda.
  1216	
  1217	\subsection*{Sub-problem 3: HoTT-native Dirichlet series machinery}
  1218	\addcontentsline{toc}{subsection}{Sub-problem 3: HoTT-native Dirichlet series}
  1219	\begin{problem}\label{prob:3}
  1220	Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
  1221	construct the basic operations: shift, multiplication, logarithm, derivative.
  1222	\end{problem}
  1223	\textbf{Status:} our companion Haskell code provides a finite-precision
  1224	prototype; HoTT formalisation pending.
  1225	
  1226	\subsection*{Sub-problem 4: HoTT-native analytic continuation}
  1227	\addcontentsline{toc}{subsection}{Sub-problem 4: HoTT-native analytic continuation}
  1228	\begin{problem}\label{prob:4}
  1229	Formalize the analytic-continuation theorem: a holomorphic function on a
  1230	connected open admitting a power-series at one boundary point extends
  1231	holomorphically to a neighbourhood of that point. Apply to $\zeta$ to obtain
  1232	\Cref{def:ZetaUP}.
  1233	\end{problem}
  1234	\textbf{Status:} this is the key technical bottleneck.
  1235	
  1236	\subsection*{Sub-problem 5: HoTT-native functional equation}
  1237	\addcontentsline{toc}{subsection}{Sub-problem 5: HoTT-native functional equation}
  1238	\begin{problem}\label{prob:5}
  1239	Prove the functional equation \Cref{thm:FE} in HoTT, using either
  1240	(a) the Mellin-transform / theta-function method, or (b) Riemann's contour
  1241	integral method, or (c) a synthetic cohesive-HoTT proof using analytic-stack
  1242	duality.
  1243	\end{problem}
  1244	\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
  1245	
  1246	\subsection*{Sub-problem 6: HoTT-native formal RH statement}
  1247	\addcontentsline{toc}{subsection}{Sub-problem 6: HoTT-native RH statement}
  1248	\begin{problem}\label{prob:6}
  1249	Write down a HoTT proposition $\mathrm{RH}:\Prop$ such that $\mathrm{RH}$
  1250	inhabits if and only if every non-trivial zero of $\zeta$ has real part
  1251	$1/2$. Verify this is the same statement as the classical RH, modulo the
  1252	ambient model.
  1253	\end{problem}
  1254	\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
  1255	
  1256	\subsection{Composition diagram}
  1257	
  1258	\begin{figure}[htbp]
  1259	\centering
  1260	\begin{tikzcd}[column sep=small, row sep=large]
  1261	\text{Sub-prob 1} \arrow[r] \arrow[dr] & \text{Sub-prob 2} \arrow[d] & \\
  1262	& \text{Sub-prob 3} \arrow[r] & \text{Sub-prob 4} \arrow[d] \\
  1263	& & \text{Sub-prob 5} \arrow[d] \\
  1264	& & \text{Sub-prob 6}
  1265	\end{tikzcd}
  1266	\caption{Dependency graph for the six sub-problems.}
  1267	\label{fig:roadmap}
  1268	\end{figure}
  1269	
  1270	\subsection{Estimated effort and milestones}
  1271	
  1272	\begin{itemize}
  1273	\item \Cref{prob:1}: $\sim$1000 lines, 1--2 graduate-student-years.
  1274	\item \Cref{prob:2}: $\sim$5000 lines, 2--3 g-s-y.
  1275	\item \Cref{prob:3}: $\sim$1500 lines, 1 g-s-y.
  1276	\item \Cref{prob:4}: $\sim$3000 lines, 2--3 g-s-y; key conceptual work.
  1277	\item \Cref{prob:5}: $\sim$5000 lines, 2 g-s-y.
  1278	\item \Cref{prob:6}: $\sim$200 lines, weeks. The hard part is the
  1279	infrastructure, not the statement.
  1280	\end{itemize}
  1281	
  1282	Total: $\sim$15000 lines, 8--12 graduate-student-years. Comparable to the
  1283	total effort behind Loeffler--Stoll plus its Mathlib dependencies.
  1284	
  1285	%---------------------------------------------------------------
  1286	\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
  1287	
  1288	\subsection{Modal-logical status of RH in HoTT}
  1289	
  1290	\Cref{conj:RH} states $\Pi(s:\Cc).\, P(s) \to Q(s)$, where $P$ and $Q$ are
  1291	propositions. By the propositional structure, $\mathrm{RH}$ is itself a
  1292	proposition (in HoTT-Set sense, an $(-1)$-truncated type).
  1293	
  1294	In particular, $\mathrm{RH}$ is either inhabited or empty; we cannot have
  1295	``two non-equivalent proofs'' of RH. This is in contrast to a structural
  1296	statement like ``the type of complex numbers admits an algebraic structure''
  1297	which has no such uniqueness.
  1298	
  1299	\subsection{Decidability and constructivity}
  1300	
  1301	\begin{remark}\label{rem:decidability}
  1302	$\mathrm{RH}$ is \emph{not} decidable in HoTT: we have no algorithm
  1303	producing an inhabitant or refutation. This is consistent with
  1304	constructivity, since $\mathrm{RH}$ is a $\Pi$-statement over an
  1305	uncountable type.
  1306	\end{remark}
  1307	
  1308	\begin{remark}\label{rem:LEM}
  1309	Under classical logic ($\mathrm{LEM}$), $\mathrm{RH} \vee \neg\,\mathrm{RH}$
  1310	is inhabited; this is a consequence of $\mathrm{LEM}$, not a constructive
  1311	theorem.
  1312	\end{remark}
  1313	
  1314	\subsection{Connections to the Langlands programme}
  1315	
  1316	The Riemann hypothesis is a special case of the Generalized Riemann
  1317	Hypothesis (GRH): all non-trivial zeros of all $L$-functions $L(s,\chi)$
  1318	attached to primitive Dirichlet characters $\chi$ lie on
  1319	$\mathrm{Re}(s) = 1/2$. The Langlands programme conjecturally extends this
  1320	to automorphic $L$-functions $L(s,\pi)$.
  1321	
  1322	\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
  1323	\[
  1324	\Pi(\pi).\, \Pi(s:\Cc).\, L(s,\pi) = 0 \to
  1325	\neg\,\mathsf{trivialZero}_\pi(s) \to \mathrm{Re}(s) = 1/2.
  1326	\]
  1327	\end{conjecture}
  1328	
  1329	In a HoTT framework where automorphic representations are types in a
  1330	suitable $(\infty,1)$-topos, \Cref{conj:GRH} is a $\Pi\Pi\Pi$-statement —
  1331	syntactically clean, semantically deep.
  1332	
  1333	\subsection{The von Koch theorem in HoTT}
  1334	
  1335	\begin{theorem}[von Koch, expected HoTT version]\label{thm:vonKoch}
  1336	Conditional on \Cref{conj:RH}, the prime-counting function $\pi(x)$
  1337	satisfies
  1338	\[
  1339	|\pi(x) - \mathrm{Li}(x)| \in O(\sqrt{x} \log x).
  1340	\]
  1341	\end{theorem}
  1342	
  1343	This connects the analytic statement $\mathrm{RH}$ to a discrete one. A
  1344	HoTT-native proof would proceed via the explicit formula for $\pi(x)$ in
  1345	terms of zeros of $\zeta$, all of which lives downstream of
  1346	\Cref{prob:1}--\Cref{prob:6}.
  1347	
  1348	\subsection{What if RH is independent of HoTT-set theory?}
  1349	
  1350	A speculative possibility: $\mathrm{RH}$ might be independent of (some
  1351	extension of) HoTT, similar to the way the continuum hypothesis is
  1352	independent of ZFC. In that case, HoTT might admit two consistent
  1353	extensions: $\mathrm{HoTT} + \mathrm{RH}$ and $\mathrm{HoTT} + \neg\,\mathrm{RH}$.
  1354	This is purely speculative and reflects no current consensus; it is offered
  1355	only as a contrast with the classical view that RH ``simply has a truth value''.
  1356	
  1357	\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
  1358	
  1359	Classical analytic number theory has many results about the distribution of
  1360	zeros of $\zeta$ short of RH:
  1361	\begin{itemize}
  1362	\item \textbf{Hadamard / de la Vall\'ee-Poussin (1896):} $\zeta(s) \neq 0$
  1363	on $\mathrm{Re}(s) = 1$. Formalized in Lean by Loeffler--Stoll.
  1364	\item \textbf{Vinogradov-Korobov:} explicit zero-free region
  1365	\[
  1366	\mathrm{Re}(s) > 1 - \frac{C}{(\log|t|)^{2/3}\,(\log\log|t|)^{1/3}}.
  1367	\]
  1368	\item \textbf{Selberg's density theorem:} the proportion of zeros within
  1369	distance $\delta$ of the critical line is $\geq 1 - O(\delta^{-1})$.
  1370	\item \textbf{Levinson--Conrey:} at least $40\%$ of zeros are on the
  1371	critical line.
  1372	\end{itemize}
  1373	
  1374	Each of these is, in principle, a HoTT-native theorem once we have
  1375	\Cref{prob:1}--\Cref{prob:5}. In particular, the $\mathrm{Re}(s) = 1$
  1376	non-vanishing requires only the Euler product and basic
  1377	inequalities — no analytic continuation. This is the natural \emph{second}
  1378	target after \Cref{thm:Basel}.
  1379	
  1380	\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
  1381	
  1382	A subtle point about HoTT: \emph{some} statements about $\zeta$ are
  1383	naturally effective (algorithmic), while others are not.
  1384	
  1385	\begin{example}[Effective: $\zeta$ on the line $\mathrm{Re}(s) > 1$]
  1386	The map $s \mapsto \sum_{n \leq N} n^{-s}$ for large $N$ provides an
  1387	$\epsilon$-approximation to $\zeta(s)$ with explicit $N(\epsilon, s)$
  1388	bounds. This is HoTT-native, computable, and compatible with $\Rc$ Cauchy
  1389	moduli.
  1390	\end{example}
  1391	
  1392	\begin{example}[Ineffective: $\zeta$ in the critical strip]
  1393	For $0 < \mathrm{Re}(s) < 1$, the Dirichlet series diverges. Computing
  1394	$\zeta(s)$ requires the Riemann--Siegel formula or similar, which involves
  1395	contour integration. HoTT-native version would require \Cref{prob:4}.
  1396	\end{example}
  1397	
  1398	\begin{example}[Ineffective: trivial zero locations]
  1399	The trivial zeros at $s = -2, -4, -6, \ldots$ are \emph{deduced} from the
  1400	functional equation; their existence requires \Cref{prob:5}.
  1401	\end{example}
  1402	
  1403	These distinctions matter for HoTT formalization: parts of the theory are
  1404	algorithmic-friendly (Cubical Agda can compute them), other parts are not.
  1405	
  1406	%---------------------------------------------------------------
  1407	\section{Discussion}\label{sec:discussion}
  1408	
  1409	\subsection{Why is analytic NT specifically hard?}
  1410	
  1411	Algebraic objects (rings, modules, groups, schemes) are \emph{small}: their
  1412	data fit on a finite page or in a computer's memory. Analytic objects
  1413	($\R$, $\C$, holomorphic functions, contour integrals) are \emph{large} in
  1414	two senses:
  1415	\begin{itemize}
  1416	\item Type-theoretic size: $\Rc$ is uncountable, so any property of $\Rc$
  1417	is in some sense a $\Pi$-statement over an uncountable type.
  1418	\item Logical complexity: $\zeta$ involves nested quantifiers over reals,
  1419	limits of limits, integrals, and analytic continuations.
  1420	\end{itemize}
  1421	HoTT, like any type theory, is well-suited to data of small or medium
  1422	complexity; encoding heavy analysis requires either substantial primitive
  1423	infrastructure or a transport from a classical foundation.
  1424	
  1425	\subsection{Comparison: Lean Mathlib's effectiveness}
  1426	
  1427	Lean Mathlib's success at formalizing analytic NT (Loeffler--Stoll 2025)
  1428	relies on:
  1429	\begin{enumerate}
  1430	\item Classical logic everywhere.
  1431	\item A large prebuilt library of measure theory, integration, and complex
  1432	analysis.
  1433	\item Decidability assumptions where appropriate.
  1434	\item Set-theoretic ambient foundations (Lean 4 type theory is
  1435	ZFC-equivalent in strength).
  1436	\end{enumerate}
  1437	HoTT can match (1)--(3) at extra cost; (4) is a deeper foundational issue.
  1438	
  1439	\subsection{The role of cohesive / differential HoTT}
  1440	
  1441	\emph{Differential cohesive HoTT}~\cite{Schreiber2013, Wellen2018} extends
  1442	HoTT with shape, flat, and sharp modalities. In this setting, smooth /
  1443	holomorphic / meromorphic become synthetic. Examples like
  1444	\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
  1445	viable in HoTT.
  1446	
  1447	A natural research direction is to lift the Loeffler--Stoll work into
  1448	\emph{differential cohesive HoTT}, treating $\C$ as a $\esh$-modal type and
  1449	$\zeta$ as a synthetic meromorphic function. This is a substantial project
  1450	but appears feasible.
  1451	
  1452	\subsection{Limitations of this paper}
  1453	
  1454	\begin{itemize}
  1455	\item We do not give a working HoTT formalization; we give a research
  1456	roadmap and partial Haskell prototypes.
  1457	\item We do not prove the conjectures of \Cref{thm:ZetaEquiv} or
  1458	\Cref{thm:FE}; we sketch proofs that depend on currently-unavailable
  1459	HoTT-native infrastructure.
  1460	\item Our proposed bridge (\Cref{prob:bridge}) between condensed mathematics
  1461	and HoTT is open; we have not constructed the bridging $(\infty,1)$-topos.
  1462	\end{itemize}
  1463	
  1464	\subsection{Future directions}
  1465	
  1466	\begin{enumerate}
  1467	\item Implement \Cref{prob:1}--\Cref{prob:3} in Cubical Agda.
  1468	\item Develop the cohesive-HoTT bridge for analytic continuation
  1469	(\Cref{prob:4}).
  1470	\item Translate Loeffler--Stoll Lean to HoTT-axiomatised classical $\C$ as
  1471	a first benchmark.
  1472	\item Use the synthesis from~\cite{Long2026Synthesis} to attack
  1473	\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
  1474	\item Explore the analytic Langlands programme of EFK
  1475	\cite{EFK2025AnalyticLanglands} in HoTT.
  1476	\end{enumerate}
  1477	
  1478	\subsection{Connection with directed type theory}
  1479	
  1480	A recent development is \emph{directed type theory} (DTT) of Riehl,
  1481	Shulman, Verity, North~\cite{Riehl2021Elements}. DTT extends HoTT with a
  1482	notion of directed morphism — paths that are not invertible. This gives a
  1483	potential synthetic foundation for $(\infty,1)$-categories.
  1484	
  1485	Why is DTT relevant to analytic NT?
  1486	\begin{itemize}
  1487	\item Automorphic representations are functors, not equivalences. DTT
  1488	captures functorial structure natively.
  1489	\item Hecke operators on $L$-functions act as endomorphisms, not
  1490	automorphisms; DTT distinguishes these.
  1491	\item The Langlands functor $\sigma:\mathsf{Aut}(GL_n) \to \mathsf{Galois}$
  1492	is a functor between $\infty$-categories of representations; DTT gives a
  1493	type-theoretic home.
  1494	\end{itemize}
  1495	
  1496	\subsection{Connection with synthetic algebraic geometry}
  1497	
  1498	\emph{Synthetic algebraic geometry}~\cite{CherubiniRijke2024} works inside
  1499	HoTT internally to a Zariski (or étale) topos, and develops algebraic
  1500	geometry without external schemes. The relevant facts:
  1501	\begin{itemize}
  1502	\item Schemes become types satisfying a Zariski-locality condition.
  1503	\item Sheaf cohomology is internal cohomology.
  1504	\item Group schemes, including reductive groups for Langlands, become
  1505	types in the internal language.
  1506	\end{itemize}
  1507	
  1508	A natural research line: use synthetic AG \emph{plus} cohesion to define
  1509	analytic moduli stacks, and develop $\zeta$ as an internal object.
  1510	
  1511	\subsection{The role of computer-checked proofs}
  1512	
  1513	A practical question: \emph{should} we even attempt HoTT formalisation of
  1514	analytic NT, given that classical Lean Mathlib is so much more advanced?
  1515	
  1516	Three answers:
  1517	\begin{enumerate}
  1518	\item \emph{Foundational interest:} HoTT and Lean differ at the foundation
  1519	level. Univalence simplifies certain isomorphism / equivalence arguments.
  1520	A HoTT formalisation would be qualitatively different.
  1521	\item \emph{Internal-language gain:} working inside an $(\infty,1)$-topos
  1522	gives access to the topos's internal logic. For instance, condensed
  1523	mathematics has its own internal language (the Solid topos), distinct from
  1524	classical set theory; HoTT might bridge these.
  1525	\item \emph{Educational value:} a HoTT formalisation forces clarity about
  1526	what data $\zeta$ ``really is''. The exercise of distinguishing the three
  1527	candidate definitions and identifying their pairwise equivalences is
  1528	foundationally illuminating.
  1529	\end{enumerate}
  1530	
  1531	%---------------------------------------------------------------
  1532	\section{Conclusion}\label{sec:conclusion}
  1533	
  1534	We have formulated, with technical care, the principal open problem of our
  1535	prior synthesis: HoTT-native analytic number theory. The Riemann zeta
  1536	function does not yet exist as a HoTT-native object; the statement
  1537	$\zeta(s)=0$ is not yet a HoTT-native proposition. Closing this gap
  1538	requires the prerequisite chain of \Cref{sec:prereq}, the candidate
  1539	definitions of \Cref{sec:zeta}, the $(\infty,1)$-topos perspective of
  1540	\Cref{sec:langlands}--\Cref{sec:condensed}, the comparison with
  1541	Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete
  1542	sub-problems of \Cref{sec:roadmap}.
  1543	
  1544	We do not solve the principal open problem. We formulate it precisely, show
  1545	it is not vacuous, and provide enough structure for future workers to take
  1546	concrete steps. The roadmap of \Cref{sec:roadmap} estimates 8--12
  1547	graduate-student-years to deliver a HoTT-native analogue of Loeffler--Stoll
  1548	2025. This is significant, but tractable; the much harder Riemann
  1549	hypothesis itself remains untouched.
  1550	
  1551	The dialogue between HoTT and analytic number theory is just beginning.
  1552	Geometric Langlands has been proven (2024) using $(\infty,1)$-categorical
  1553	machinery that overlaps with HoTT's intended models. Condensed mathematics
  1554	provides a uniform setting for analytic objects. These two streams will,
  1555	we conjecture, converge on a HoTT-native analytic number theory in the
  1556	coming decade. This paper aims to map the territory.
  1557	
  1558	%---------------------------------------------------------------
  1559	\appendix
  1560	
  1561	\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
  1562	
  1563	For reference, we collect the HoTT axioms / definitions that any
  1564	HoTT-native analytic NT should respect. We work in MLTT with one
  1565	universe $\mathcal{U}$ and the following axioms.
  1566	
  1567	\subsection*{A.1 Univalence}
  1568	
  1569	\begin{equation}\label{eq:univ}
  1570	\ua : \Pi(A,B:\mathcal{U}).\, (A \simeq B) \simeq (A = B).
  1571	\end{equation}
  1572	
  1573	This is the standard univalence axiom of~\cite{HoTTBook}. It implies
  1574	function extensionality and propositional extensionality.
  1575	
  1576	\subsection*{A.2 Higher inductive types}
  1577	
  1578	We assume HITs of the form needed in this paper:
  1579	\begin{itemize}
  1580	\item Cauchy reals $\Rc$ as a HIIT (\Cref{def:Rc}).
  1581	\item Set quotients $A/{\sim}$ for relations $\sim$ on $A$.
  1582	\item Propositional truncation $\|A\|_{-1}$.
  1583	\item $n$-truncations $\|A\|_n$.
  1584	\end{itemize}
  1585	
  1586	\subsection*{A.3 Cohesion (optional)}
  1587	
  1588	For synthetic-analytic statements, cohesive HoTT
  1589	\cite{Shulman2018Cohesive} adds:
  1590	\begin{itemize}
  1591	\item Shape modality $\esh:\mathcal{U} \to \mathcal{U}$ (left adjoint to
  1592	$\flat$).
  1593	\item Flat modality $\flat:\mathcal{U} \to \mathcal{U}$ (right adjoint to
  1594	$\esh$).
  1595	\item Sharp modality $\sharp:\mathcal{U} \to \mathcal{U}$.
  1596	\end{itemize}
  1597	
  1598	These satisfy the cohesive triple-adjunction $\esh \dashv \flat \dashv \sharp$
  1599	and natural-transformation laws between them.
  1600	
  1601	\subsection*{A.4 Choice (optional, classical)}
  1602	
  1603	For some classical analytic-NT results we may need:
  1604	\begin{equation}\label{eq:choice}
  1605	\mathrm{AC} : \Pi(A:\mathcal{U}).\, \Pi(B:A \to \mathcal{U}).\,
  1606	   (\Pi(a:A).\, \|B(a)\|_{-1}) \to \|\Pi(a:A).\, B(a)\|_{-1}.
  1607	\end{equation}
  1608	
  1609	Equivalent to set-theoretic AC for sets. Required for classical existence
  1610	of algebraic closures, classical functional equation proofs.
  1611	
  1612	\subsection*{A.5 Excluded middle (optional, classical)}
  1613	
  1614	\begin{equation}\label{eq:lem}
  1615	\mathrm{LEM} : \Pi(P:\Prop).\, P + \neg P.
  1616	\end{equation}
  1617	
  1618	Required for the statement of $\mathrm{RH} \vee \neg\,\mathrm{RH}$ as
  1619	``there is a fact of the matter''.
  1620	
  1621	\section{Appendix: Companion code overview}\label{app:code}
  1622	
  1623	The companion repository at \texttt{src/langlands-analytic-number-theory/}
  1624	contains:
  1625	
  1626	\begin{itemize}
  1627	\item \texttt{Main.hs} --- driver illustrating partial $\zeta$ sums and
  1628	Dirichlet series operations.
  1629	\item \texttt{Zeta.hs} --- partial zeta computations with explicit
  1630	truncation.
  1631	\item \texttt{Dirichlet.hs} --- Dirichlet series machinery, Dirichlet
  1632	convolution, multiplicative functions.
  1633	\item \texttt{Properties.hs} --- QuickCheck properties for the algebraic
  1634	laws on Dirichlet series.
  1635	\item \texttt{Proofs.hs} --- equational proofs of the Euler product
  1636	identity, modulo a finite-truncation axiom.
  1637	\end{itemize}
  1638	
  1639	The Lean component at \texttt{lean/langlands-analytic-number-theory/}
  1640	contains:
  1641	
  1642	\begin{itemize}
  1643	\item \texttt{Zeta.lean} --- a Lean 4 / Mathlib sketch indexed against
  1644	Loeffler--Stoll, marking which lemmas would translate cleanly to HoTT.
  1645	\end{itemize}
  1646	
  1647	These are illustrative prototypes, not formal verifications. Their purpose
  1648	is to make the prerequisite chain (\Cref{sec:prereq}) and the candidate
  1649	definitions (\Cref{sec:zeta}) executable, so that future HoTT-native work
  1650	has computational benchmarks.
  1651	
  1652	\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}
  1653	
  1654	We sketch a plausible HoTT proof strategy for analytic continuation of
  1655	$\zeta$, addressing \Cref{prob:4} in more detail.
  1656	
  1657	\subsection*{C.1 The Hurwitz integral representation}
  1658	
  1659	Classical analytic continuation of $\zeta$ via the Hurwitz integral
  1660	representation~\cite{Hurwitz1882}:
  1661	\[
  1662	\zeta(s) = \frac{1}{\Gamma(s)} \int_0^\infty \frac{x^{s-1}}{e^x - 1}\, dx,
  1663	\qquad \mathrm{Re}(s) > 1.
  1664	\]
  1665	The integrand is integrable for $\mathrm{Re}(s) > 1$ near $0$ and is
  1666	exponentially small at $\infty$. To analytically continue, one deforms the
  1667	contour:
  1668	\[
  1669	\zeta(s) = \frac{\Gamma(1-s)}{2\pi i}\,\oint_C \frac{(-x)^{s-1}}{e^x - 1}\,dx,
  1670	\]
  1671	where $C$ is the Hankel contour: from $+\infty$ along $\R^+$, around $0$
  1672	counterclockwise, back to $+\infty$.
  1673	
  1674	\subsection*{C.2 What HoTT needs}
  1675	
  1676	To carry out the contour-integral proof in HoTT we need:
  1677	\begin{enumerate}
  1678	\item HoTT-native $\Gamma$ function: $\Gamma(s) := \int_0^\infty t^{s-1}
  1679	e^{-t}\, dt$ extended via the functional equation $\Gamma(s+1) = s\Gamma(s)$
  1680	to all $\Cc \setminus \{0,-1,-2,\ldots\}$.
  1681	\item HoTT-native contour integration: a path $\gamma:[0,1] \to \Cc$ and an
  1682	integral $\int_\gamma f(z)\, dz$, satisfying linearity, change-of-variables,
  1683	and Cauchy's theorem.
  1684	\item HoTT-native version of Cauchy's theorem: holomorphic functions integrate
  1685	to zero around closed contours.
  1686	\item HoTT-native deformation lemma: integral over homotopic contours agree.
  1687	\item HoTT-native passage from real integral to contour integral
  1688	(Mellin-Barnes type).
  1689	\end{enumerate}
  1690	
  1691	\subsection*{C.3 Estimated effort}
  1692	
  1693	Each item above is a self-contained HoTT formalisation problem of moderate
  1694	size. Cumulatively, this is the heart of \Cref{prob:4}, and we estimate
  1695	it at $\sim 3000$ lines of Cubical Agda.
  1696	
  1697	\subsection*{C.4 Alternative strategies}
  1698	
  1699	\begin{itemize}
  1700	\item \emph{Riemann's theta-function method}: $\zeta(s)$ via Mellin transform
  1701	of $\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$. Requires the modular
  1702	transformation $\theta(t) = t^{-1/2}\theta(1/t)$.
  1703	\item \emph{Hardy's symmetric form}: $\xi(s) := \frac{s(s-1)}{2}\pi^{-s/2}
  1704	\Gamma(s/2)\zeta(s)$, satisfying $\xi(s) = \xi(1-s)$. Cleaner but uses the
  1705	same infrastructure.
  1706	\item \emph{Cohesive synthetic approach}: Inside differential cohesive HoTT
  1707	\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
  1708	Speculative.
  1709	\end{itemize}
  1710	
  1711	\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}
  1712	
  1713	For readers more familiar with classical analytic NT than with HoTT, we
  1714	provide a short translation glossary:
  1715	
  1716	\medskip
  1717	
  1718	\begin{center}
  1719	\begin{tabular}{ll}
  1720	\toprule
  1721	Classical & HoTT-native \\
  1722	\midrule
  1723	$\R$ & $\Rc$ (Cauchy reals) \\
  1724	$\C$ & $\Cc$ (univalent algebraic closure of $\Rc$) \\
  1725	$f:\C \to \C$ holomorphic & $f$ admits constructive Newton quotient \\
  1726	``unique up to isomorphism'' & propositionally equal under univalence \\
  1727	``the algebraic closure'' & ``a univalent algebraic closure'' \\
  1728	ZFC's choice & propositional choice axiom (optional) \\
  1729	LEM & $\Pi(P:\Prop).\, P + \neg P$ (optional) \\
  1730	quotient set & set quotient $A/{\sim}$ via HIT \\
  1731	limit of sequences & limit constructor of HIIT $\Rc$ \\
  1732	``open subset'' & ``cohesive open'' or ``(-1)-truncated open'' \\
  1733	``connected'' & propositional truncation of $A$ is contractible \\
  1734	sheaf cohomology & internal cohomology of cohesive HoTT \\
  1735	$\infty$-category & type with Segal condition \\
  1736	$\infty$-topos & univalent universe in cohesive HoTT \\
  1737	``functor'' & morphism in directed type theory \\
  1738	``natural transformation'' & 2-cell in directed type theory \\
  1739	condensed set & sheaf on profinite types in cohesive HoTT (open) \\
  1740	analytic stack & 6-functor formalism in cohesive HoTT (open) \\
  1741	$\zeta$ classically & no HoTT-native definition yet \\
  1742	\bottomrule
  1743	\end{tabular}
  1744	\end{center}
  1745	
  1746	\medskip
  1747	
  1748	The bottom row is the principal open problem of this paper.
  1749	
  1750	%---------------------------------------------------------------
  1751	\bibliographystyle{plain}
  1752	\begin{thebibliography}{99}
  1753	
  1754	\bibitem{HoTTBook}
  1755	Univalent Foundations Program.
  1756	\textit{Homotopy Type Theory: Univalent Foundations of Mathematics}.
  1757	Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}
  1758	
  1759	\bibitem{Long2026Synthesis}
  1760	M.\ Long and the YonedaAI Collaboration.
  1761	\textit{Synthesis: Six Open Problems at the Interface of HoTT and
  1762	Twenty-First Century Mathematics}.
  1763	YonedaAI Research Collective, 2026.
  1764	
  1765	\bibitem{Voevodsky2014}
  1766	V.\ Voevodsky.
  1767	\textit{Univalent foundations of mathematics}.
  1768	ICM Talk, 2014.
  1769	
  1770	\bibitem{Booij2020}
  1771	A.\ Booij.
  1772	\textit{Analysis in univalent type theory}.
  1773	PhD thesis, University of Birmingham, 2020.
  1774	
  1775	\bibitem{Mines1988}
  1776	R.\ Mines, F.\ Richman, W.\ Ruitenburg.
  1777	\textit{A Course in Constructive Algebra}.
  1778	Springer Universitext, 1988.
  1779	
  1780	\bibitem{Shulman2018Cohesive}
  1781	M.\ Shulman.
  1782	\textit{Brouwer's fixed-point theorem in real-cohesive homotopy type theory}.
  1783	Mathematical Structures in Computer Science, 28:856--941, 2018.
  1784	
  1785	\bibitem{Shulman2019InfTopos}
  1786	M.\ Shulman.
  1787	\textit{All $(\infty,1)$-toposes have strict univalent universes}.
  1788	arXiv:1904.07004, 2019.
  1789	
  1790	\bibitem{Lurie2009HTT}
  1791	J.\ Lurie.
  1792	\textit{Higher Topos Theory}.
  1793	Annals of Mathematics Studies 170, Princeton University Press, 2009.
  1794	
  1795	\bibitem{LurieHA}
  1796	J.\ Lurie.
  1797	\textit{Higher Algebra}.
  1798	Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}
  1799	
  1800	\bibitem{Gaitsgory2024GLC}
  1801	D.\ Gaitsgory et al.
  1802	\textit{Proof of the geometric Langlands conjecture I--V}.
  1803	arXiv:2405.03599 and sequels, 2024.
  1804	\url{https://www.mpim-bonn.mpg.de/gaitsgde/GLC/}
  1805	
  1806	\bibitem{BeilinsonDrinfeld2004}
  1807	A.\ Beilinson, V.\ Drinfeld.
  1808	\textit{Chiral Algebras}.
  1809	American Mathematical Society Colloquium Publications 51, 2004.
  1810	
  1811	\bibitem{LoefflerStoll2025}
  1812	D.\ Loeffler, M.\ Stoll.
  1813	\textit{Formalizing zeta and L-functions in Lean}.
  1814	arXiv:2503.00959. Annals of Formalized Mathematics, vol.\ 1, 2025.
  1815	
  1816	\bibitem{Scholze2019Condensed}
  1817	P.\ Scholze.
  1818	\textit{Lectures on condensed mathematics}.
  1819	Lecture notes, University of Bonn, 2019.
  1820	\url{https://www.math.uni-bonn.de/people/scholze/Condensed.pdf}
  1821	
  1822	\bibitem{ClausenScholze2024Analytic}
  1823	D.\ Clausen, P.\ Scholze.
  1824	\textit{Analytic stacks}.
  1825	Lecture series, MPIM Bonn, 2023--2024.
  1826	
  1827	\bibitem{ClausenScholze2024SixFunctor}
  1828	D.\ Clausen, P.\ Scholze.
  1829	\textit{Six-functor formalisms in analytic geometry}.
  1830	arXiv:2507.08566, 2025.
  1831	
  1832	\bibitem{ClausenScholze2025AnalyticStacks}
  1833	D.\ Clausen, P.\ Scholze.
  1834	\textit{Analytic stacks (continued)}.
  1835	arXiv:2512.14612, 2025.
  1836	
  1837	\bibitem{ClausenScholzeComplex}
  1838	D.\ Clausen, P.\ Scholze.
  1839	\textit{Condensed mathematics and complex geometry}.
  1840	\url{https://people.mpim-bonn.mpg.de/scholze/Complex.pdf}, 2022.
  1841	
  1842	\bibitem{EFK2025AnalyticLanglands}
  1843	P.\ Etingof, E.\ Frenkel, D.\ Kazhdan.
  1844	\textit{An analytic version of the Langlands correspondence over the
  1845	function field}.
  1846	arXiv:2103.01509 and follow-ups, 2021--2025.
  1847	
  1848	\bibitem{CisinskiKKNS2025}
  1849	D.-C.\ Cisinski et al.
  1850	\textit{Type-theoretic foundations of $(\infty,1)$-categories}.
  1851	Manuscript / arXiv preprints, 2025.
  1852	
  1853	\bibitem{Langlands1970}
  1854	R.\ P.\ Langlands.
  1855	\textit{Problems in the theory of automorphic forms}.
  1856	Lecture Notes in Mathematics 170, Springer, 1970.
  1857	
  1858	\bibitem{GelbartLanglands1979}
  1859	S.\ Gelbart.
  1860	\textit{An elementary introduction to the Langlands program}.
  1861	Bull.\ AMS, 10(2):177--219, 1984.
  1862	
  1863	\bibitem{Schreiber2013}
  1864	U.\ Schreiber.
  1865	\textit{Differential cohomology in a cohesive infinity-topos}.
  1866	arXiv:1310.7930, 2013.
  1867	
  1868	\bibitem{Wellen2018}
  1869	F.\ Wellen.
  1870	\textit{Cartan geometry in modal homotopy type theory}.
  1871	PhD thesis, Karlsruhe Institute of Technology, 2018.
  1872	
  1873	\bibitem{ScreiberShulman2014QFT}
  1874	U.\ Schreiber, M.\ Shulman.
  1875	\textit{Quantum gauge field theory in cohesive homotopy type theory}.
  1876	EPTCS 158, 2014.
  1877	
  1878	\bibitem{Euler1737}
  1879	L.\ Euler.
  1880	\textit{Variae observationes circa series infinitas}.
  1881	Commentarii academiae scientiarum Petropolitanae 9, 1737.
  1882	
  1883	\bibitem{RiemannHypothesisOriginal}
  1884	B.\ Riemann.
  1885	\textit{Über die Anzahl der Primzahlen unter einer gegebenen Größe}.
  1886	Monatsberichte der Königlich Preußischen Akademie der Wissenschaften zu
  1887	Berlin, 1859.
  1888	
  1889	\bibitem{KapustinWitten2007}
  1890	A.\ Kapustin, E.\ Witten.
  1891	\textit{Electric-magnetic duality and the geometric Langlands program}.
  1892	Communications in Number Theory and Physics, 1(1):1--236, 2007.
  1893	
  1894	\bibitem{Riehl2021Elements}
  1895	E.\ Riehl, D.\ Verity.
  1896	\textit{Elements of $\infty$-Category Theory}.
  1897	Cambridge Studies in Advanced Mathematics 194, Cambridge University Press, 2022.
  1898	
  1899	\bibitem{CherubiniRijke2024}
  1900	F.\ Cherubini, E.\ Rijke et al.
  1901	\textit{Synthetic algebraic geometry in homotopy type theory}.
  1902	Manuscript, \url{https://github.com/felixwellen/synthetic-zariski}, 2024.
  1903	
  1904	\bibitem{Hurwitz1882}
  1905	A.\ Hurwitz.
  1906	\textit{Einige Eigenschaften der Dirichlet'schen Funktionen $F(s)$}.
  1907	Zeitschrift für Mathematik und Physik, 27:86--101, 1882.
  1908	
  1909	\end{thebibliography}
  1910	
  1911	\end{document}

exec
/usr/local/bin/zsh -lc 'rg -n "(''^!|Undefined|Reference|Citation|Overfull|Underfull|Warning|Error|Missing|Rerun|multiply defined|Token not allowed|Package hyperref|LaTeX Warning|pdfTeX warning)" papers/latex/langlands-analytic-number-theory.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
511:Package everypage Warning: Functionality similar to this package has recently
517:Package everypage Warning: You appear to be running a version of LaTeX
598:Package hyperref Info: Hyper figures OFF on input line 4201.
599:Package hyperref Info: Link nesting OFF on input line 4206.
600:Package hyperref Info: Hyper index ON on input line 4209.
601:Package hyperref Info: Plain pages OFF on input line 4216.
602:Package hyperref Info: Backreferencing OFF on input line 4221.
603:Package hyperref Info: Implicit mode ON; LaTeX internals redefined.
604:Package hyperref Info: Bookmarks ON on input line 4468.
624:Package hyperref Info: Hyper figures OFF on input line 6084.
625:Package hyperref Info: Link nesting OFF on input line 6089.
626:Package hyperref Info: Hyper index ON on input line 6092.
627:Package hyperref Info: backreferencing OFF on input line 6099.
628:Package hyperref Info: Link coloring OFF on input line 6104.
629:Package hyperref Info: Link coloring with OCG OFF on input line 6109.
630:Package hyperref Info: PDF/A mode OFF on input line 6114.
635:Package hyperref Info: Driver (autodetected): hpdftex.
643:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
751:Package hyperref Info: Link coloring OFF on input line 120.
780:Overfull \hbox (0.63345pt too wide) in paragraph at lines 740--742
786:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
790:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
794:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
799:Overfull \hbox (3.42818pt too wide) in paragraph at lines 1635--1637
811:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
814:Package rerunfilecheck Warning: File `langlands-analytic-number-theory.out' has
816:(rerunfilecheck)                Rerun to get outlines right

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.aux | sed -n '1,240p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\relax 
     2	\providecommand\hyper@newdestlabel[2]{}
     3	\providecommand\HyField@AuxAddToFields[1]{}
     4	\providecommand\HyField@AuxAddToCoFields[2]{}
     5	\pgfsyspdfmark {pgfid1}{4736286}{47362867}
     6	\citation{Long2026Synthesis}
     7	\citation{RiemannHypothesisOriginal}
     8	\citation{HoTTBook}
     9	\citation{Booij2020}
    10	\citation{Voevodsky2014}
    11	\citation{Shulman2018Cohesive}
    12	\citation{LoefflerStoll2025}
    13	\@writefile{toc}{\contentsline {section}{\numberline {1}Introduction}{4}{section.1}\protected@file@percent }
    14	\newlabel{sec:intro}{{1}{4}{Introduction}{section.1}{}}
    15	\newlabel{sec:intro@cref}{{[section][1][]1}{[1][3][]4}{}{}{}}
    16	\@writefile{toc}{\contentsline {subsection}{\numberline {1.1}The principal open problem}{4}{subsection.1.1}\protected@file@percent }
    17	\@writefile{toc}{\contentsline {subsection}{\numberline {1.2}Why $\zeta (s)=0$ is hard in HoTT}{4}{subsection.1.2}\protected@file@percent }
    18	\citation{Lurie2009HTT}
    19	\citation{Gaitsgory2024GLC}
    20	\citation{Langlands1970}
    21	\citation{GelbartLanglands1979}
    22	\citation{Gaitsgory2024GLC}
    23	\@writefile{toc}{\contentsline {subsection}{\numberline {1.3}What this paper does (and does not do)}{5}{subsection.1.3}\protected@file@percent }
    24	\@writefile{toc}{\contentsline {subsection}{\numberline {1.4}Algebraic vs.\ analytic number theory}{5}{subsection.1.4}\protected@file@percent }
    25	\citation{HoTTBook}
    26	\citation{HoTTBook}
    27	\citation{HoTTBook}
    28	\@writefile{toc}{\contentsline {subsection}{\numberline {1.5}Outline}{6}{subsection.1.5}\protected@file@percent }
    29	\@writefile{toc}{\contentsline {section}{\numberline {2}The Prerequisite Chain}{6}{section.2}\protected@file@percent }
    30	\newlabel{sec:prereq}{{2}{6}{The Prerequisite Chain}{section.2}{}}
    31	\newlabel{sec:prereq@cref}{{[section][2][]2}{[1][6][]6}{}{}{}}
    32	\@writefile{toc}{\contentsline {subsection}{\numberline {2.1}HoTT-native real numbers $\mathbb  {R}_{\mathsf  {c}}$}{6}{subsection.2.1}\protected@file@percent }
    33	\newlabel{def:Rc}{{2.1}{6}{Cauchy reals, after the HoTT Book~\cite {HoTTBook}}{theorem.2.1}{}}
    34	\newlabel{def:Rc@cref}{{[theorem][1][2]2.1}{[1][6][]6}{}{}{}}
    35	\newlabel{thm:RcArchimedean}{{2.3}{6}{\cite {HoTTBook}, Theorem 11.3.32}{theorem.2.3}{}}
    36	\newlabel{thm:RcArchimedean@cref}{{[theorem][3][2]2.3}{[1][6][]6}{}{}{}}
    37	\@writefile{toc}{\contentsline {subsection}{\numberline {2.2}HoTT-native complex numbers $\mathbb  {C}_{\mathsf  {c}}$}{6}{subsection.2.2}\protected@file@percent }
    38	\@writefile{toc}{\contentsline {paragraph}{Pairs.}{6}{section*.2}\protected@file@percent }
    39	\citation{Mines1988}
    40	\citation{Shulman2018Cohesive}
    41	\@writefile{toc}{\contentsline {paragraph}{Algebraic closure of $\mathbb  {R}_{\mathsf  {c}}$.}{7}{section*.3}\protected@file@percent }
    42	\newlabel{def:UAC}{{2.4}{7}{Univalent algebraic closure}{theorem.2.4}{}}
    43	\newlabel{def:UAC@cref}{{[theorem][4][2]2.4}{[1][6][]7}{}{}{}}
    44	\newlabel{rem:UACplain}{{2.5}{7}{Plain-language gloss}{theorem.2.5}{}}
    45	\newlabel{rem:UACplain@cref}{{[theorem][5][2]2.5}{[1][7][]7}{}{}{}}
    46	\newlabel{prop:UACUnique}{{2.6}{7}{}{theorem.2.6}{}}
    47	\newlabel{prop:UACUnique@cref}{{[theorem][6][2]2.6}{[1][7][]7}{}{}{}}
    48	\@writefile{toc}{\contentsline {paragraph}{Quotient construction.}{7}{section*.4}\protected@file@percent }
    49	\@writefile{toc}{\contentsline {subsection}{\numberline {2.3}Holomorphic functions in HoTT}{7}{subsection.2.3}\protected@file@percent }
    50	\newlabel{def:holo}{{2.7}{7}{Constructive holomorphicity}{theorem.2.7}{}}
    51	\newlabel{def:holo@cref}{{[theorem][7][2]2.7}{[1][7][]7}{}{}{}}
    52	\citation{Booij2020}
    53	\newlabel{rem:synth}{{2.8}{8}{Synthetic alternative}{theorem.2.8}{}}
    54	\newlabel{rem:synth@cref}{{[theorem][8][2]2.8}{[1][7][]8}{}{}{}}
    55	\@writefile{toc}{\contentsline {subsection}{\numberline {2.4}Dirichlet series}{8}{subsection.2.4}\protected@file@percent }
    56	\newlabel{def:Dirichlet}{{2.9}{8}{Dirichlet series}{theorem.2.9}{}}
    57	\newlabel{def:Dirichlet@cref}{{[theorem][9][2]2.9}{[1][8][]8}{}{}{}}
    58	\newlabel{prop:DirichletAlgebra}{{2.10}{8}{HoTT-native; sketched}{theorem.2.10}{}}
    59	\newlabel{prop:DirichletAlgebra@cref}{{[theorem][10][2]2.10}{[1][8][]8}{}{}{}}
    60	\@writefile{toc}{\contentsline {subsection}{\numberline {2.5}Putting it together}{8}{subsection.2.5}\protected@file@percent }
    61	\@writefile{lof}{\contentsline {figure}{\numberline {1}{\ignorespaces The prerequisite chain. Each arrow represents a non-trivial HoTT-native construction. The final arrow ($\mathsf  {Dir} \to \zeta $) is the analytic continuation, and is the place at which the chain currently breaks in pure HoTT.}}{8}{figure.1}\protected@file@percent }
    62	\newlabel{fig:chain}{{1}{8}{The prerequisite chain. Each arrow represents a non-trivial HoTT-native construction. The final arrow ($\mathsf {Dir} \to \zeta $) is the analytic continuation, and is the place at which the chain currently breaks in pure HoTT}{figure.1}{}}
    63	\newlabel{fig:chain@cref}{{[figure][1][]1}{[1][8][]8}{}{}{}}
    64	\@writefile{toc}{\contentsline {subsection}{\numberline {2.6}Detailed account of analytic-continuation obstacles}{8}{subsection.2.6}\protected@file@percent }
    65	\newlabel{subsec:obstacles}{{2.6}{8}{Detailed account of analytic-continuation obstacles}{subsection.2.6}{}}
    66	\newlabel{subsec:obstacles@cref}{{[subsection][6][2]2.6}{[1][8][]8}{}{}{}}
    67	\@writefile{toc}{\contentsline {subsection}{\numberline {2.7}HoTT-native Cauchy reals: explicit example}{9}{subsection.2.7}\protected@file@percent }
    68	\newlabel{subsec:CauchyEx}{{2.7}{9}{HoTT-native Cauchy reals: explicit example}{subsection.2.7}{}}
    69	\newlabel{subsec:CauchyEx@cref}{{[subsection][7][2]2.7}{[1][9][]9}{}{}{}}
    70	\newlabel{ex:sqrt2}{{2.11}{9}{$\sqrt {2}$ as Cauchy real}{theorem.2.11}{}}
    71	\newlabel{ex:sqrt2@cref}{{[theorem][11][2]2.11}{[1][9][]9}{}{}{}}
    72	\newlabel{ex:euler}{{2.12}{9}{$e$ as Cauchy real}{theorem.2.12}{}}
    73	\newlabel{ex:euler@cref}{{[theorem][12][2]2.12}{[1][9][]9}{}{}{}}
    74	\newlabel{ex:pi}{{2.13}{9}{$\pi $ as Cauchy real}{theorem.2.13}{}}
    75	\newlabel{ex:pi@cref}{{[theorem][13][2]2.13}{[1][9][]9}{}{}{}}
    76	\@writefile{toc}{\contentsline {section}{\numberline {3}The Riemann Zeta Function as a HoTT Object}{9}{section.3}\protected@file@percent }
    77	\newlabel{sec:zeta}{{3}{9}{The Riemann Zeta Function as a HoTT Object}{section.3}{}}
    78	\newlabel{sec:zeta@cref}{{[section][3][]3}{[1][9][]9}{}{}{}}
    79	\citation{Euler1737}
    80	\@writefile{toc}{\contentsline {subsection}{\numberline {3.1}Approach 1: $\zeta $ as a higher inductive-inductive type}{10}{subsection.3.1}\protected@file@percent }
    81	\newlabel{eq:zetaSeries}{{4}{10}{Approach 1: \texorpdfstring {$\zeta $}{zeta} as a higher inductive-inductive type}{equation.4}{}}
    82	\newlabel{eq:zetaSeries@cref}{{[equation][4][]4}{[1][10][]10}{}{}{}}
    83	\newlabel{def:ZetaHIIT}{{3.1}{10}{Specification of zeta as HIIT, candidate}{theorem.3.1}{}}
    84	\newlabel{def:ZetaHIIT@cref}{{[theorem][1][3]3.1}{[1][10][]10}{}{}{}}
    85	\newlabel{rem:ZetaHIITissues}{{3.2}{10}{}{theorem.3.2}{}}
    86	\newlabel{rem:ZetaHIITissues@cref}{{[theorem][2][3]3.2}{[1][10][]10}{}{}{}}
    87	\@writefile{toc}{\contentsline {subsection}{\numberline {3.2}Approach 2: $\zeta $ as analytic limit of Euler product}{10}{subsection.3.2}\protected@file@percent }
    88	\newlabel{def:ZetaEuler}{{3.3}{11}{Zeta via Euler product}{theorem.3.3}{}}
    89	\newlabel{def:ZetaEuler@cref}{{[theorem][3][3]3.3}{[1][10][]11}{}{}{}}
    90	\newlabel{prop:Euler}{{3.4}{11}{Euler product, modulo convergence}{theorem.3.4}{}}
    91	\newlabel{prop:Euler@cref}{{[theorem][4][3]3.4}{[1][11][]11}{}{}{}}
    92	\@writefile{toc}{\contentsline {subsection}{\numberline {3.3}Approach 3: $\zeta $ via universal property of meromorphic continuation}{11}{subsection.3.3}\protected@file@percent }
    93	\newlabel{def:MeromCont}{{3.5}{11}{Meromorphic continuation, universal}{theorem.3.5}{}}
    94	\newlabel{def:MeromCont@cref}{{[theorem][5][3]3.5}{[1][11][]11}{}{}{}}
    95	\newlabel{thm:Identity}{{3.6}{11}{Identity theorem, HoTT version}{theorem.3.6}{}}
    96	\newlabel{thm:Identity@cref}{{[theorem][6][3]3.6}{[1][11][]11}{}{}{}}
    97	\newlabel{def:ZetaUP}{{3.7}{11}{Zeta via universal property}{theorem.3.7}{}}
    98	\newlabel{def:ZetaUP@cref}{{[theorem][7][3]3.7}{[1][11][]11}{}{}{}}
    99	\@writefile{toc}{\contentsline {subsection}{\numberline {3.4}Equivalence of the three definitions}{11}{subsection.3.4}\protected@file@percent }
   100	\newlabel{thm:ZetaEquiv}{{3.8}{11}{Conjectural equivalence}{theorem.3.8}{}}
   101	\newlabel{thm:ZetaEquiv@cref}{{[theorem][8][3]3.8}{[1][11][]11}{}{}{}}
   102	\@writefile{toc}{\contentsline {subsection}{\numberline {3.5}The functional equation}{12}{subsection.3.5}\protected@file@percent }
   103	\newlabel{thm:FE}{{3.9}{12}{Functional equation, conjectured HoTT-native}{theorem.3.9}{}}
   104	\newlabel{thm:FE@cref}{{[theorem][9][3]3.9}{[1][12][]12}{}{}{}}
   105	\@writefile{toc}{\contentsline {subsection}{\numberline {3.6}The critical strip}{12}{subsection.3.6}\protected@file@percent }
   106	\newlabel{conj:RH}{{3.12}{12}{Riemann hypothesis, HoTT statement}{theorem.3.12}{}}
   107	\newlabel{conj:RH@cref}{{[theorem][12][3]3.12}{[1][12][]12}{}{}{}}
   108	\@writefile{toc}{\contentsline {subsection}{\numberline {3.7}Worked example: $\zeta (2) = \pi ^2/6$}{12}{subsection.3.7}\protected@file@percent }
   109	\newlabel{subsec:Basel}{{3.7}{12}{Worked example: \texorpdfstring {$\zeta (2) = \pi ^2/6$}{zeta(2) = pi squared over 6}}{subsection.3.7}{}}
   110	\newlabel{subsec:Basel@cref}{{[subsection][7][3]3.7}{[1][12][]12}{}{}{}}
   111	\newlabel{thm:Basel}{{3.13}{12}{Basel problem}{theorem.3.13}{}}
   112	\newlabel{thm:Basel@cref}{{[theorem][13][3]3.13}{[1][12][]12}{}{}{}}
   113	\citation{Langlands1970}
   114	\citation{BeilinsonDrinfeld2004}
   115	\citation{Gaitsgory2024GLC}
   116	\newlabel{rem:zetatwo}{{3.14}{13}{}{theorem.3.14}{}}
   117	\newlabel{rem:zetatwo@cref}{{[theorem][14][3]3.14}{[1][13][]13}{}{}{}}
   118	\@writefile{toc}{\contentsline {section}{\numberline {4}Geometric Langlands in $(\infty ,1)$-Topoi}{13}{section.4}\protected@file@percent }
   119	\newlabel{sec:langlands}{{4}{13}{Geometric Langlands in $(\infty ,1)$-Topoi}{section.4}{}}
   120	\newlabel{sec:langlands@cref}{{[section][4][]4}{[1][13][]13}{}{}{}}
   121	\@writefile{toc}{\contentsline {subsection}{\numberline {4.1}Brief history}{13}{subsection.4.1}\protected@file@percent }
   122	\citation{Lurie2009HTT}
   123	\citation{LurieHA}
   124	\citation{CisinskiKKNS2025}
   125	\citation{Shulman2019InfTopos}
   126	\citation{ClausenScholzeComplex}
   127	\citation{EFK2025AnalyticLanglands}
   128	\@writefile{toc}{\contentsline {subsection}{\numberline {4.2}$(\infty ,1)$-categories vs.\ HoTT}{14}{subsection.4.2}\protected@file@percent }
   129	\newlabel{rem:internal}{{4.1}{14}{}{theorem.4.1}{}}
   130	\newlabel{rem:internal@cref}{{[theorem][1][4]4.1}{[1][14][]14}{}{}{}}
   131	\@writefile{toc}{\contentsline {subsection}{\numberline {4.3}Geometric vs.\ analytic Langlands}{14}{subsection.4.3}\protected@file@percent }
   132	\@writefile{toc}{\contentsline {subsection}{\numberline {4.4}Implication for HoTT-native analytic NT}{14}{subsection.4.4}\protected@file@percent }
   133	\@writefile{toc}{\contentsline {subsection}{\numberline {4.5}Detailed example: $GL(1)$ Langlands and Hecke characters}{14}{subsection.4.5}\protected@file@percent }
   134	\newlabel{subsec:GL1}{{4.5}{14}{Detailed example: \texorpdfstring {$GL(1)$}{GL(1)} Langlands and Hecke characters}{subsection.4.5}{}}
   135	\newlabel{subsec:GL1@cref}{{[subsection][5][4]4.5}{[1][14][]14}{}{}{}}
   136	\citation{HoTTBook}
   137	\citation{Shulman2019InfTopos}
   138	\citation{KapustinWitten2007}
   139	\@writefile{toc}{\contentsline {subsection}{\numberline {4.6}Geometric Langlands as an internal HoTT statement}{15}{subsection.4.6}\protected@file@percent }
   140	\newlabel{subsec:GLCInternal}{{4.6}{15}{Geometric Langlands as an internal HoTT statement}{subsection.4.6}{}}
   141	\newlabel{subsec:GLCInternal@cref}{{[subsection][6][4]4.6}{[1][15][]15}{}{}{}}
   142	\newlabel{conj:GLCHoTT}{{4.4}{15}{Gaitsgory equivalence in HoTT, schematic}{theorem.4.4}{}}
   143	\newlabel{conj:GLCHoTT@cref}{{[theorem][4][4]4.4}{[1][15][]15}{}{}{}}
   144	\newlabel{rem:univalence-glc}{{4.5}{15}{}{theorem.4.5}{}}
   145	\newlabel{rem:univalence-glc@cref}{{[theorem][5][4]4.5}{[1][15][]15}{}{}{}}
   146	\citation{Schreiber2013}
   147	\citation{Scholze2019Condensed}
   148	\citation{ClausenScholze2024Analytic}
   149	\@writefile{toc}{\contentsline {subsection}{\numberline {4.7}Physical interpretation: 4d $\mathcal  {N}=4$ super-Yang--Mills}{16}{subsection.4.7}\protected@file@percent }
   150	\@writefile{toc}{\contentsline {section}{\numberline {5}Condensed Mathematics and HoTT}{16}{section.5}\protected@file@percent }
   151	\newlabel{sec:condensed}{{5}{16}{Condensed Mathematics and HoTT}{section.5}{}}
   152	\newlabel{sec:condensed@cref}{{[section][5][]5}{[1][16][]16}{}{}{}}
   153	\@writefile{toc}{\contentsline {subsection}{\numberline {5.1}Pyknotic / condensed sets}{16}{subsection.5.1}\protected@file@percent }
   154	\@writefile{toc}{\contentsline {subsection}{\numberline {5.2}Why this matters for $\zeta $}{16}{subsection.5.2}\protected@file@percent }
   155	\@writefile{toc}{\contentsline {subsection}{\numberline {5.3}Bridging to HoTT}{16}{subsection.5.3}\protected@file@percent }
   156	\newlabel{prob:bridge}{{5.1}{16}{Bridging condensed mathematics and HoTT}{theorem.5.1}{}}
   157	\newlabel{prob:bridge@cref}{{[theorem][1][5]5.1}{[1][16][]16}{}{}{}}
   158	\citation{ClausenScholze2024SixFunctor}
   159	\citation{ClausenScholze2025AnalyticStacks}
   160	\citation{Riehl2021Elements}
   161	\@writefile{toc}{\contentsline {subsection}{\numberline {5.4}Solid abelian groups in HoTT, sketch}{17}{subsection.5.4}\protected@file@percent }
   162	\newlabel{def:HoTTSolid}{{5.3}{17}{HoTT-solid abelian group, candidate}{theorem.5.3}{}}
   163	\newlabel{def:HoTTSolid@cref}{{[theorem][3][5]5.3}{[1][17][]17}{}{}{}}
   164	\@writefile{toc}{\contentsline {subsection}{\numberline {5.5}Six-functor formalism in HoTT}{17}{subsection.5.5}\protected@file@percent }
   165	\newlabel{subsec:sixfunctor}{{5.5}{17}{Six-functor formalism in HoTT}{subsection.5.5}{}}
   166	\newlabel{subsec:sixfunctor@cref}{{[subsection][5][5]5.5}{[1][17][]17}{}{}{}}
   167	\newlabel{prob:sixfunc}{{5.5}{17}{6-functors in HoTT}{theorem.5.5}{}}
   168	\newlabel{prob:sixfunc@cref}{{[theorem][5][5]5.5}{[1][17][]17}{}{}{}}
   169	\citation{LoefflerStoll2025}
   170	\@writefile{toc}{\contentsline {subsection}{\numberline {5.6}Solid modules over $\mathbb  {Z}$ and $p$-adic interaction}{18}{subsection.5.6}\protected@file@percent }
   171	\newlabel{subsec:solidp}{{5.6}{18}{Solid modules over \texorpdfstring {$\Z $}{Z} and \texorpdfstring {$p$}{p}-adic interaction}{subsection.5.6}{}}
   172	\newlabel{subsec:solidp@cref}{{[subsection][6][5]5.6}{[1][17][]18}{}{}{}}
   173	\newlabel{conj:padicZeta}{{5.6}{18}{$p$-adic zeta function in HoTT}{theorem.5.6}{}}
   174	\newlabel{conj:padicZeta@cref}{{[theorem][6][5]5.6}{[1][17][]18}{}{}{}}
   175	\newlabel{rem:padicEasier}{{5.7}{18}{}{theorem.5.7}{}}
   176	\newlabel{rem:padicEasier@cref}{{[theorem][7][5]5.7}{[1][18][]18}{}{}{}}
   177	\@writefile{toc}{\contentsline {section}{\numberline {6}Comparison with Loeffler--Stoll Lean Formalization}{18}{section.6}\protected@file@percent }
   178	\newlabel{sec:loefflerstoll}{{6}{18}{Comparison with Loeffler--Stoll Lean Formalization}{section.6}{}}
   179	\newlabel{sec:loefflerstoll@cref}{{[section][6][]6}{[1][18][]18}{}{}{}}
   180	\@writefile{toc}{\contentsline {subsection}{\numberline {6.1}What Loeffler--Stoll have}{18}{subsection.6.1}\protected@file@percent }
   181	\@writefile{toc}{\contentsline {subsection}{\numberline {6.2}What Lean / Mathlib provides that HoTT lacks}{19}{subsection.6.2}\protected@file@percent }
   182	\@writefile{toc}{\contentsline {subsection}{\numberline {6.3}What HoTT could offer}{19}{subsection.6.3}\protected@file@percent }
   183	\@writefile{toc}{\contentsline {subsection}{\numberline {6.4}Strategy: HoTT as classical-foundation transport}{19}{subsection.6.4}\protected@file@percent }
   184	\@writefile{toc}{\contentsline {subsection}{\numberline {6.5}Code-level comparison: signature against signature}{19}{subsection.6.5}\protected@file@percent }
   185	\newlabel{subsec:LSsigs}{{6.5}{19}{Code-level comparison: signature against signature}{subsection.6.5}{}}
   186	\newlabel{subsec:LSsigs@cref}{{[subsection][5][6]6.5}{[1][19][]19}{}{}{}}
   187	\@writefile{toc}{\contentsline {paragraph}{The zeta function itself.}{19}{section*.5}\protected@file@percent }
   188	\citation{Booij2020}
   189	\@writefile{toc}{\contentsline {paragraph}{The functional equation.}{20}{section*.6}\protected@file@percent }
   190	\@writefile{toc}{\contentsline {paragraph}{Non-vanishing on $\mathrm  {Re}(s) \geq 1$.}{20}{section*.7}\protected@file@percent }
   191	\@writefile{toc}{\contentsline {paragraph}{Riemann hypothesis.}{20}{section*.8}\protected@file@percent }
   192	\@writefile{toc}{\contentsline {subsection}{\numberline {6.6}Quantitative comparison}{20}{subsection.6.6}\protected@file@percent }
   193	\newlabel{subsec:LSquant}{{6.6}{20}{Quantitative comparison}{subsection.6.6}{}}
   194	\newlabel{subsec:LSquant@cref}{{[subsection][6][6]6.6}{[1][20][]20}{}{}{}}
   195	\@writefile{toc}{\contentsline {section}{\numberline {7}Six Sub-Problems for HoTT-Native $\zeta $}{21}{section.7}\protected@file@percent }
   196	\newlabel{sec:roadmap}{{7}{21}{Six Sub-Problems for HoTT-Native \texorpdfstring {$\zeta $}{Zeta}}{section.7}{}}
   197	\newlabel{sec:roadmap@cref}{{[section][7][]7}{[1][20][]21}{}{}{}}
   198	\@writefile{toc}{\contentsline {subsection}{Sub-problem 1: HoTT-native complex numbers}{21}{section*.9}\protected@file@percent }
   199	\newlabel{prob:1}{{7.1}{21}{}{theorem.7.1}{}}
   200	\newlabel{prob:1@cref}{{[theorem][1][7]7.1}{[1][21][]21}{}{}{}}
   201	\@writefile{toc}{\contentsline {subsection}{Sub-problem 2: HoTT-native holomorphic functions}{21}{section*.10}\protected@file@percent }
   202	\newlabel{prob:2}{{7.2}{21}{}{theorem.7.2}{}}
   203	\newlabel{prob:2@cref}{{[theorem][2][7]7.2}{[1][21][]21}{}{}{}}
   204	\@writefile{toc}{\contentsline {subsection}{Sub-problem 3: HoTT-native Dirichlet series}{21}{section*.11}\protected@file@percent }
   205	\newlabel{prob:3}{{7.3}{21}{}{theorem.7.3}{}}
   206	\newlabel{prob:3@cref}{{[theorem][3][7]7.3}{[1][21][]21}{}{}{}}
   207	\@writefile{toc}{\contentsline {subsection}{Sub-problem 4: HoTT-native analytic continuation}{21}{section*.12}\protected@file@percent }
   208	\newlabel{prob:4}{{7.4}{21}{}{theorem.7.4}{}}
   209	\newlabel{prob:4@cref}{{[theorem][4][7]7.4}{[1][21][]21}{}{}{}}
   210	\@writefile{toc}{\contentsline {subsection}{Sub-problem 5: HoTT-native functional equation}{21}{section*.13}\protected@file@percent }
   211	\newlabel{prob:5}{{7.5}{21}{}{theorem.7.5}{}}
   212	\newlabel{prob:5@cref}{{[theorem][5][7]7.5}{[1][21][]21}{}{}{}}
   213	\@writefile{toc}{\contentsline {subsection}{Sub-problem 6: HoTT-native RH statement}{22}{section*.14}\protected@file@percent }
   214	\newlabel{prob:6}{{7.6}{22}{}{theorem.7.6}{}}
   215	\newlabel{prob:6@cref}{{[theorem][6][7]7.6}{[1][21][]22}{}{}{}}
   216	\@writefile{toc}{\contentsline {subsection}{\numberline {7.1}Composition diagram}{22}{subsection.7.1}\protected@file@percent }
   217	\@writefile{lof}{\contentsline {figure}{\numberline {2}{\ignorespaces Dependency graph for the six sub-problems.}}{22}{figure.2}\protected@file@percent }
   218	\newlabel{fig:roadmap}{{2}{22}{Dependency graph for the six sub-problems}{figure.2}{}}
   219	\newlabel{fig:roadmap@cref}{{[figure][2][]2}{[1][22][]22}{}{}{}}
   220	\@writefile{toc}{\contentsline {subsection}{\numberline {7.2}Estimated effort and milestones}{22}{subsection.7.2}\protected@file@percent }
   221	\@writefile{toc}{\contentsline {section}{\numberline {8}Open Conjectures: Riemann Hypothesis as a HoTT Statement}{23}{section.8}\protected@file@percent }
   222	\newlabel{sec:rh}{{8}{23}{Open Conjectures: Riemann Hypothesis as a HoTT Statement}{section.8}{}}
   223	\newlabel{sec:rh@cref}{{[section][8][]8}{[1][22][]23}{}{}{}}
   224	\@writefile{toc}{\contentsline {subsection}{\numberline {8.1}Modal-logical status of RH in HoTT}{23}{subsection.8.1}\protected@file@percent }
   225	\@writefile{toc}{\contentsline {subsection}{\numberline {8.2}Decidability and constructivity}{23}{subsection.8.2}\protected@file@percent }
   226	\newlabel{rem:decidability}{{8.1}{23}{}{theorem.8.1}{}}
   227	\newlabel{rem:decidability@cref}{{[theorem][1][8]8.1}{[1][23][]23}{}{}{}}
   228	\newlabel{rem:LEM}{{8.2}{23}{}{theorem.8.2}{}}
   229	\newlabel{rem:LEM@cref}{{[theorem][2][8]8.2}{[1][23][]23}{}{}{}}
   230	\@writefile{toc}{\contentsline {subsection}{\numberline {8.3}Connections to the Langlands programme}{23}{subsection.8.3}\protected@file@percent }
   231	\newlabel{conj:GRH}{{8.3}{23}{GRH for automorphic $L$-functions, HoTT statement}{theorem.8.3}{}}
   232	\newlabel{conj:GRH@cref}{{[theorem][3][8]8.3}{[1][23][]23}{}{}{}}
   233	\@writefile{toc}{\contentsline {subsection}{\numberline {8.4}The von Koch theorem in HoTT}{23}{subsection.8.4}\protected@file@percent }
   234	\newlabel{thm:vonKoch}{{8.4}{23}{von Koch, expected HoTT version}{theorem.8.4}{}}
   235	\newlabel{thm:vonKoch@cref}{{[theorem][4][8]8.4}{[1][23][]23}{}{}{}}
   236	\@writefile{toc}{\contentsline {subsection}{\numberline {8.5}What if RH is independent of HoTT-set theory?}{24}{subsection.8.5}\protected@file@percent }
   237	\@writefile{toc}{\contentsline {subsection}{\numberline {8.6}Density theorems and zero-free regions}{24}{subsection.8.6}\protected@file@percent }
   238	\newlabel{subsec:zerofree}{{8.6}{24}{Density theorems and zero-free regions}{subsection.8.6}{}}
   239	\newlabel{subsec:zerofree@cref}{{[subsection][6][8]8.6}{[1][24][]24}{}{}{}}
   240	\@writefile{toc}{\contentsline {subsection}{\numberline {8.7}Effective vs.\ ineffective HoTT statements}{24}{subsection.8.7}\protected@file@percent }

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.log | sed -n '760,820p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   760	
   761	(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd
   762	File: umsa.fd 2013/01/14 v3.01 AMS symbols A
   763	)
   764	LaTeX Font Info:    Trying to load font information for U+msb on input line 122
   765	.
   766	
   767	(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd
   768	File: umsb.fd 2013/01/14 v3.01 AMS symbols B
   769	)
   770	(./langlands-analytic-number-theory.toc [1{/usr/local/texlive/2026/texmf-var/fo
   771	nts/map/pdftex/updmap/pdftex.map}
   772	
   773	] [2])
   774	\tf@toc=\write5
   775	\openout5 = `langlands-analytic-number-theory.toc'.
   776	
   777	 [3] [4] [5{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-supe
   778	r-ts1.enc}] [6] [7] [8] [9] [10]
   779	[11] [12]
   780	Overfull \hbox (0.63345pt too wide) in paragraph at lines 740--742
   781	[]\OT1/cmr/m/n/12 HoTT-native trigono-met-ric func-tions (de-fin-able as power 
   782	se-ries, hence HIIT $\U/msb/m/n/12 R[]$\OT1/cmr/m/n/12 -valued). 
   783	 []
   784	
   785	
   786	Package hyperref Warning: Token not allowed in a PDF string (Unicode):
   787	(hyperref)                removing `math shift' on input line 773.
   788	
   789	
   790	Package hyperref Warning: Token not allowed in a PDF string (Unicode):
   791	(hyperref)                removing `\infty' on input line 773.
   792	
   793	
   794	Package hyperref Warning: Token not allowed in a PDF string (Unicode):
   795	(hyperref)                removing `math shift' on input line 773.
   796	
   797	[13] [14] [15] [16] [17] [18] [19] [20] [21] [22] [23] [24] [25] [26] [27]
   798	[28]
   799	Overfull \hbox (3.42818pt too wide) in paragraph at lines 1635--1637
   800	[]\OT1/cmtt/m/n/12 Proofs.hs \OT1/cmr/m/n/12 --- equa-tional proofs of the Eu-l
   801	er prod-uct iden-tity, mod-ulo a finite-truncation
   802	 []
   803	
   804	[29] [30] [31] [32] [33] (./langlands-analytic-number-theory.aux)
   805	 ***********
   806	LaTeX2e <2025-11-01>
   807	L3 programming layer <2026-01-19>
   808	 ***********
   809	
   810	
   811	LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
   812	
   813	
   814	Package rerunfilecheck Warning: File `langlands-analytic-number-theory.out' has
   815	 changed.
   816	(rerunfilecheck)                Rerun to get outlines right
   817	(rerunfilecheck)                or use package `bookmark'.
   818	
   819	Package rerunfilecheck Info: Checksums for `langlands-analytic-number-theory.ou
   820	t':

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '720,755p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   720	To illustrate what HoTT-native machinery is needed, we trace one of the
   721	oldest results — the Basel problem.
   722	
   723	\begin{theorem}[Basel problem]\label{thm:Basel}
   724	$\zeta(2) = \pi^2/6$.
   725	\end{theorem}
   726	
   727	\begin{proof}[Sketch of HoTT-native proof, modulo missing infrastructure]
   728	There are several classical approaches; we outline two.
   729	
   730	\textbf{Approach (i): Fourier series of $x^2$.} Expand $x^2$ on $[-\pi,\pi]$
   731	as a Fourier series:
   732	\[
   733	x^2 = \frac{\pi^2}{3} + 4\sum_{n=1}^{\infty} \frac{(-1)^n \cos(nx)}{n^2}.
   734	\]
   735	Setting $x = \pi$ yields $\pi^2 = \pi^2/3 + 4\zeta(2)$,
   736	hence $\zeta(2) = \pi^2/6$. The HoTT-native version requires:
   737	\begin{itemize}
   738	\item HoTT-native Fourier series with pointwise convergence on smooth
   739	functions.
   740	\item HoTT-native trigonometric functions (definable as power series, hence
   741	HIIT $\Rc$-valued).
   742	\item Pointwise evaluation at the boundary requires Abel-style limits.
   743	\end{itemize}
   744	
   745	\textbf{Approach (ii): Euler's product expansion of $\sin$.} Use
   746	\[
   747	\frac{\sin(\pi z)}{\pi z} = \prod_{n=1}^{\infty}\left(1 - \frac{z^2}{n^2}\right).
   748	\]
   749	Equating Taylor coefficients of $z^2$ on both sides:
   750	$-\pi^2/6 = -\sum 1/n^2$, so $\zeta(2) = \pi^2/6$. HoTT-native version
   751	requires:
   752	\begin{itemize}
   753	\item Infinite-product convergence theory in HoTT.
   754	\item Term-by-term Taylor expansion of the product (Abel-Mertens-style
   755	manipulation).

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1628,1642p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1628	Dirichlet series operations.
  1629	\item \texttt{Zeta.hs} --- partial zeta computations with explicit
  1630	truncation.
  1631	\item \texttt{Dirichlet.hs} --- Dirichlet series machinery, Dirichlet
  1632	convolution, multiplicative functions.
  1633	\item \texttt{Properties.hs} --- QuickCheck properties for the algebraic
  1634	laws on Dirichlet series.
  1635	\item \texttt{Proofs.hs} --- equational proofs of the Euler product
  1636	identity, modulo a finite-truncation axiom.
  1637	\end{itemize}
  1638	
  1639	The Lean component at \texttt{lean/langlands-analytic-number-theory/}
  1640	contains:
  1641	
  1642	\begin{itemize}

exec
/usr/local/bin/zsh -lc "rg -n \"texorpdfstring|section\\{|subsection\\{|subsection\\*\\{|paragraph\\{|caption\\{|title\\{\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
109:\title{Toward HoTT-Native Analytic Number Theory:\\
159:\section{Introduction}\label{sec:intro}
161:\subsection{The principal open problem}
181:\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}
217:\subsection{What this paper does (and does not do)}
252:\subsection{Algebraic vs.\ analytic number theory}
277:\subsection{Outline}
289:\section{The Prerequisite Chain}\label{sec:prereq}
293:\subsection{HoTT-native real numbers \texorpdfstring{$\Rc$}{Rc}}
320:\subsection{HoTT-native complex numbers \texorpdfstring{$\Cc$}{Cc}}
324:\paragraph{Pairs.}
329:\paragraph{Algebraic closure of $\Rc$.}
371:\paragraph{Quotient construction.}
378:\subsection{Holomorphic functions in HoTT}
408:\subsection{Dirichlet series}
434:\subsection{Putting it together}
444:\caption{The prerequisite chain. Each arrow represents a non-trivial
457:\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
497:\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
534:\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
538:\subsection{Approach 1: \texorpdfstring{$\zeta$}{zeta} as a higher inductive-inductive type}
594:\subsection{Approach 2: \texorpdfstring{$\zeta$}{zeta} as analytic limit of Euler product}
628:\subsection{Approach 3: \texorpdfstring{$\zeta$}{zeta} via universal property of meromorphic continuation}
658:\subsection{Equivalence of the three definitions}
677:\subsection{The functional equation}
700:\subsection{The critical strip}
718:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2) = pi squared over 6}}\label{subsec:Basel}
773:\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
775:\subsection{Brief history}
800:\subsection{\texorpdfstring{$(\infty,1)$}{(infty,1)}-categories vs.\ HoTT}
824:\subsection{Geometric vs.\ analytic Langlands}
838:\subsection{Implication for HoTT-native analytic NT}
846:\subsection{Detailed example: \texorpdfstring{$GL(1)$}{GL(1)} Langlands and Hecke characters}\label{subsec:GL1}
879:\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
913:\subsection{Physical interpretation: 4d \texorpdfstring{$\mathcal{N}=4$}{N=4} super-Yang--Mills}
929:\section{Condensed Mathematics and HoTT}\label{sec:condensed}
931:\subsection{Pyknotic / condensed sets}
945:\subsection{Why this matters for \texorpdfstring{$\zeta$}{zeta}}
958:\subsection{Bridging to HoTT}
975:\subsection{Solid abelian groups in HoTT, sketch}
997:\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
1026:\subsection{Solid modules over \texorpdfstring{$\Z$}{Z} and \texorpdfstring{$p$}{p}-adic interaction}\label{subsec:solidp}
1054:\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
1056:\subsection{What Loeffler--Stoll have}
1080:\subsection{What Lean / Mathlib provides that HoTT lacks}
1091:\subsection{What HoTT could offer}
1106:\subsection{Strategy: HoTT as classical-foundation transport}
1113:\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
1118:\paragraph{The zeta function itself.}
1131:\paragraph{The functional equation.}
1141:\paragraph{Non-vanishing on $\mathrm{Re}(s) \geq 1$.}
1150:\paragraph{Riemann hypothesis.}
1158:\subsection{Quantitative comparison}\label{subsec:LSquant}
1192:\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
1198:\subsection*{Sub-problem 1: HoTT-native \texorpdfstring{$\Cc$}{Cc} with full algebraic-closure axiom}
1208:\subsection*{Sub-problem 2: HoTT-native holomorphic functions}
1217:\subsection*{Sub-problem 3: HoTT-native Dirichlet series machinery}
1226:\subsection*{Sub-problem 4: HoTT-native analytic continuation}
1236:\subsection*{Sub-problem 5: HoTT-native functional equation}
1246:\subsection*{Sub-problem 6: HoTT-native formal RH statement}
1256:\subsection{Composition diagram}
1266:\caption{Dependency graph for the six sub-problems.}
1270:\subsection{Estimated effort and milestones}
1286:\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
1288:\subsection{Modal-logical status of RH in HoTT}
1299:\subsection{Decidability and constructivity}
1314:\subsection{Connections to the Langlands programme}
1333:\subsection{The von Koch theorem in HoTT}
1348:\subsection{What if RH is independent of HoTT-set theory?}
1357:\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
1380:\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
1407:\section{Discussion}\label{sec:discussion}
1409:\subsection{Why is analytic NT specifically hard?}
1425:\subsection{Comparison: Lean Mathlib's effectiveness}
1439:\subsection{The role of cohesive / differential HoTT}
1452:\subsection{Limitations of this paper}
1464:\subsection{Future directions}
1478:\subsection{Connection with directed type theory}
1496:\subsection{Connection with synthetic algebraic geometry}
1511:\subsection{The role of computer-checked proofs}
1532:\section{Conclusion}\label{sec:conclusion}
1561:\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
1567:\subsection*{A.1 Univalence}
1576:\subsection*{A.2 Higher inductive types}
1586:\subsection*{A.3 Cohesion (optional)}
1601:\subsection*{A.4 Choice (optional, classical)}
1612:\subsection*{A.5 Excluded middle (optional, classical)}
1621:\section{Appendix: Companion code overview}\label{app:code}
1652:\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}
1657:\subsection*{C.1 The Hurwitz integral representation}
1674:\subsection*{C.2 What HoTT needs}
1691:\subsection*{C.3 Estimated effort}
1697:\subsection*{C.4 Alternative strategies}
1711:\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}

codex
The existing build log shows the file did compile, but it also records layout and PDF-bookmark warnings. I’m now checking whether that log matches the current source and doing a source-level pass for reference/package/style problems the log may not catch.
exec
/usr/local/bin/zsh -lc "stat -f '%N %Sm' papers/latex/langlands-analytic-number-theory.tex papers/latex/langlands-analytic-number-theory.log papers/latex/langlands-analytic-number-theory.aux papers/latex/langlands-analytic-number-theory.pdf" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
papers/latex/langlands-analytic-number-theory.tex May  4 17:45:44 2026
papers/latex/langlands-analytic-number-theory.log May  4 17:45:48 2026
papers/latex/langlands-analytic-number-theory.aux May  4 17:45:48 2026
papers/latex/langlands-analytic-number-theory.pdf May  4 17:45:48 2026

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(Cref|cref|ref|eqref)\\{|\\\\label\\{|\\\\cite\\{\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(Cref|cref|ref|eqref)\{|\label\{|\cite\{)
                                ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\begin\\{(align|equation|tikzcd|tikzpicture|tabular|enumerate|itemize|proof|quote|center)|\\\\end\\{(align|equation|tikzcd|tikzpicture|tabular|enumerate|itemize|proof|quote|center)\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\begin\{(align|equation|tikzcd|tikzpicture|tabular|enumerate|itemize|proof|quote|center)|\end\{(align|equation|tikzcd|tikzpicture|tabular|enumerate|itemize|proof|quote|center))
                                                                                                ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"TODO|FIXME|undefined|missing|\\\\cite\\{["'^}]*,[''^}]*'"\\}|\\\\Cref\\{["'^}]*,[''^}]*'"\\}|\\\\url\\{|\\\\texttt\\{|\\\\verb|\\\\begin\\{verbatim\\}|\\\\begin\\{lstlisting\\}|\\\\newunicodechar\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:TODO|FIXME|undefined|missing|\cite\{[^}]*,[^}]*\}|\Cref\{[^}]*,[^}]*\}|\url\{|\texttt\{|\verb|\begin\{verbatim\}|\begin\{lstlisting\}|\newunicodechar)
                                    ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n -P \"\\\\(Cref|cref|ref|eqref)\\{|\\\\label\\{|\\\\cite\\{\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "rg -n -P \"\\\\begin\\{(align|equation|tikzcd|tikzpicture|tabular|enumerate|itemize|proof|quote|center)\\}|\\\\end\\{(align|equation|tikzcd|tikzpicture|tabular|enumerate|itemize|proof|quote|center)\\}\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: PCRE2: error compiling pattern at offset 30: PCRE2 does not support \F, \L, \l, \N{name}, \U, or \u

 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc "rg -n -P \"TODO|FIXME|undefined|missing|\\\\cite\\{["'^}]*,[''^}]*'"\\}|\\\\Cref\\{["'^}]*,[''^}]*'"\\}|\\\\url\\{|\\\\texttt\\{|\\\\verb|\\\\begin\\{verbatim\\}|\\\\begin\\{lstlisting\\}|\\\\newunicodechar\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: PCRE2: error compiling pattern at offset 76: PCRE2 does not support \F, \L, \l, \N{name}, \U, or \u

exec
/usr/local/bin/zsh -lc "rg -n -P \"\\\\[A-Za-z]+\" papers/latex/langlands-analytic-number-theory.tex | sed -n '1,240p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "rg -n -F -e '\\begin{align}' -e '\\end{align}' -e '\\begin{equation}' -e '\\end{equation}' -e '\\begin{tikzcd}' -e '\\end{tikzcd}' -e '\\begin{tikzpicture}' -e '\\end{tikzpicture}' -e '\\begin{tabular}' -e '\\end{tabular}' -e '\\begin{enumerate}' -e '\\end{enumerate}' -e '\\begin{itemize}' -e '\\end{itemize}' -e '\\begin{proof}' -e '\\end{proof}' -e '\\begin{quote}' -e '\\end{quote}' -e '\\begin{center}' -e '\\end{center}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
62:    \begin{tikzpicture}[remember picture, overlay]
72:    \end{tikzpicture}
171:\begin{quote}
178:\end{quote}
185:\begin{enumerate}
206:\end{enumerate}
220:\begin{itemize}
237:\end{itemize}
240:\begin{itemize}
245:\end{itemize}
299:\begin{align}
303:\end{align}
361:\begin{proof}[Proof sketch]
369:\end{proof}
426:\begin{proof}[Proof sketch]
432:\end{proof}
438:\begin{tikzcd}[column sep=tiny, row sep=large]
443:\end{tikzcd}
462:\begin{enumerate}
471:\begin{itemize}
478:\end{itemize}
495:\end{enumerate}
548:\begin{equation}\label{eq:zetaSeries}
551:\end{equation}
559:\begin{align}
567:\end{align}
578:\begin{enumerate}
588:\end{enumerate}
614:\begin{proof}[Proof sketch in HoTT]
626:\end{proof}
645:\begin{proof}[Proof sketch]
650:\end{proof}
666:\begin{proof}[Proof sketch]
675:\end{proof}
686:\begin{proof}[Strategy]
690:\begin{itemize}
695:\end{itemize}
698:\end{proof}
727:\begin{proof}[Sketch of HoTT-native proof, modulo missing infrastructure]
737:\begin{itemize}
743:\end{itemize}
752:\begin{itemize}
757:\end{itemize}
763:\end{proof}
867:\begin{itemize}
874:\end{itemize}
919:\begin{itemize}
925:\end{itemize}
948:\begin{itemize}
956:\end{itemize}
963:\begin{itemize}
969:\end{itemize}
1005:\begin{itemize}
1014:\end{itemize}
1059:\begin{enumerate}
1076:\end{enumerate}
1082:\begin{itemize}
1089:\end{itemize}
1093:\begin{itemize}
1104:\end{itemize}
1160:\begin{center}
1161:\begin{tabular}{lcc}
1175:\end{tabular}
1176:\end{center}
1260:\begin{tikzcd}[column sep=small, row sep=large]
1265:\end{tikzcd}
1272:\begin{itemize}
1280:\end{itemize}
1361:\begin{itemize}
1372:\end{itemize}
1415:\begin{itemize}
1420:\end{itemize}
1429:\begin{enumerate}
1436:\end{enumerate}
1454:\begin{itemize}
1462:\end{itemize}
1466:\begin{enumerate}
1476:\end{enumerate}
1486:\begin{itemize}
1494:\end{itemize}
1501:\begin{itemize}
1506:\end{itemize}
1517:\begin{enumerate}
1529:\end{enumerate}
1569:\begin{equation}\label{eq:univ}
1571:\end{equation}
1579:\begin{itemize}
1584:\end{itemize}
1590:\begin{itemize}
1596:\end{itemize}
1604:\begin{equation}\label{eq:choice}
1607:\end{equation}
1614:\begin{equation}\label{eq:lem}
1616:\end{equation}
1626:\begin{itemize}
1637:\end{itemize}
1642:\begin{itemize}
1645:\end{itemize}
1677:\begin{enumerate}
1689:\end{enumerate}
1699:\begin{itemize}
1709:\end{itemize}
1718:\begin{center}
1719:\begin{tabular}{ll}
1743:\end{tabular}
1744:\end{center}

exec
/usr/local/bin/zsh -lc "rg -n -F -e '\\Cref{' -e '\\cref{' -e '\\ref{' -e '\\eqref{' -e '\\label{' -e '\\cite{' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
159:\section{Introduction}\label{sec:intro}
163:In the synthesis paper concluding our prior series~\cite{Long2026Synthesis},
165:1859~paper~\cite{RiemannHypothesisOriginal},
187:notion of meromorphicity. Constructive Cauchy reals~\cite{HoTTBook,Booij2020}
191:in the sense of univalence~\cite{Voevodsky2014}.
195:\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
209:\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
222:$\zeta$. (\Cref{sec:prereq})
225:equivalence. (\Cref{sec:zeta})
227:$(\infty,1)$-toposes and Lurie's higher topos theory~\cite{Lurie2009HTT,
228:Gaitsgory2024GLC}. (\Cref{sec:langlands})
230:where they overlap and where the bridge is missing. (\Cref{sec:condensed})
232:benchmark and as a \emph{translation target}. (\Cref{sec:loefflerstoll})
234:HoTT-native proof that $\zeta(2) = \pi^2/6$. (\Cref{sec:roadmap})
236:its modal-logical structure. (\Cref{sec:rh})
269:The Langlands programme~\cite{Langlands1970,GelbartLanglands1979} unifies
273:Langlands~\cite{Gaitsgory2024GLC} is the function-field analogue and was
279:\Cref{sec:prereq} traces the prerequisite chain.
280:\Cref{sec:zeta} defines $\zeta$ as a candidate HoTT object.
281:\Cref{sec:langlands} treats geometric Langlands in $(\infty,1)$-topoi.
282:\Cref{sec:condensed} compares condensed mathematics and HoTT.
283:\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.
284:\Cref{sec:roadmap} gives the six-sub-problem roadmap.
285:\Cref{sec:rh} discusses RH as a HoTT statement.
286:\Cref{sec:conclusion} concludes.
289:\section{The Prerequisite Chain}\label{sec:prereq}
295:\begin{definition}[Cauchy reals, after the HoTT Book~\cite{HoTTBook}]\label{def:Rc}
315:\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
330:\begin{definition}[Univalent algebraic closure]\label{def:UAC}
342:\begin{remark}[Plain-language gloss]\label{rem:UACplain}
343:In essence, \Cref{def:UAC} defines the algebraic closure not as one
353:\begin{proposition}\label{prop:UACUnique}
366:propositional truncation in \Cref{def:UAC} ensures the existential is a
368:algebraic-closure arguments~\cite{Mines1988}.
389:\begin{definition}[Constructive holomorphicity]\label{def:holo}
400:\begin{remark}[Synthetic alternative]\label{rem:synth}
401:In \emph{cohesive HoTT}~\cite{Shulman2018Cohesive}, the universe carries
410:\begin{definition}[Dirichlet series]\label{def:Dirichlet}
420:\begin{proposition}[HoTT-native; sketched]\label{prop:DirichletAlgebra}
431:\cite{Booij2020}.
448:\label{fig:chain}
451:The chain in \Cref{fig:chain} terminates at $\zeta$, but the rightmost arrow
457:\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
464:In classical complex analysis, the identity theorem (\Cref{thm:Identity})
497:\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
502:\begin{example}[$\sqrt{2}$ as Cauchy real]\label{ex:sqrt2}
511:\begin{example}[$e$ as Cauchy real]\label{ex:euler}
518:\begin{example}[$\pi$ as Cauchy real]\label{ex:pi}
534:\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
548:\begin{equation}\label{eq:zetaSeries}
556:\begin{definition}[Specification of zeta as HIIT, candidate]\label{def:ZetaHIIT}
562:   \text{(equality with the series of \cref{eq:zetaSeries})} \\
576:\begin{remark}\label{rem:ZetaHIITissues}
582:lemma — which is exactly the analytic-continuation gap of \Cref{prob:4}.
590:construction. The remaining two approaches (\Cref{def:ZetaEuler} and
591:\Cref{def:ZetaUP}) are more conservative.
596:Recall the Euler product (\cite{Euler1737}):
601:\begin{definition}[Zeta via Euler product]\label{def:ZetaEuler}
610:\begin{proposition}[Euler product, modulo convergence]\label{prop:Euler}
625:is a HoTT-statement requiring \Cref{prop:DirichletAlgebra}.
630:\begin{definition}[Meromorphic continuation, universal]\label{def:MeromCont}
639:\begin{theorem}[Identity theorem, HoTT version]\label{thm:Identity}
652:\begin{definition}[Zeta via universal property]\label{def:ZetaUP}
654:\Cref{thm:Identity}) meromorphic continuation of $s \mapsto \sum n^{-s}$ from
660:\begin{theorem}[Conjectural equivalence]\label{thm:ZetaEquiv}
662:definitions \Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}
667:\Cref{def:ZetaEuler} agrees with the partial-sum definition on $H_1$ by
668:\Cref{prop:Euler}. \Cref{def:ZetaUP} agrees with the partial-sum definition
669:on $H_1$ by definition. By \Cref{thm:Identity}, any two meromorphic
670:continuations of the same function agree everywhere. \Cref{def:ZetaHIIT}
679:\begin{theorem}[Functional equation, conjectured HoTT-native]\label{thm:FE}
710:\begin{conjecture}[Riemann hypothesis, HoTT statement]\label{conj:RH}
716:We will analyse this statement modal-logically in \Cref{sec:rh}.
718:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2) = pi squared over 6}}\label{subsec:Basel}
723:\begin{theorem}[Basel problem]\label{thm:Basel}
760:\Cref{prob:1}--\Cref{prob:3}, plus some elementary measure / convergence
761:theory. \Cref{prob:4} is not needed for this specific theorem because $s=2$
765:\begin{remark}\label{rem:zetatwo}
766:\Cref{thm:Basel} is a \emph{lower-bound} HoTT goal: it does not require
773:\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
777:The Langlands programme~\cite{Langlands1970} predicts a correspondence
788:\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
798:\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
802:By Lurie's higher topos theory~\cite{Lurie2009HTT} and higher
803:algebra~\cite{LurieHA}, $(\infty,1)$-categories
805:\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
809:By Shulman's theorem~\cite{Shulman2019InfTopos}, every $(\infty,1)$-topos
814:\begin{remark}\label{rem:internal}
828:Rham stack (cf.~\cite{ClausenScholzeComplex} for the complex-analytic side). It says nothing directly about $\zeta$ or about analytic number
832:\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the
846:\subsection{Detailed example: \texorpdfstring{$GL(1)$}{GL(1)} Langlands and Hecke characters}\label{subsec:GL1}
871:$p$-adic numbers~\cite{HoTTBook}.
879:\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
883:algebraic stacks over $\C$. By Shulman~\cite{Shulman2019InfTopos},
887:\begin{conjecture}[Gaitsgory equivalence in HoTT, schematic]\label{conj:GLCHoTT}
906:\begin{remark}\label{rem:univalence-glc}
915:Kapustin and Witten~\cite{KapustinWitten2007} interpreted geometric
921:synthetic differential cohesive HoTT~\cite{Schreiber2013}.
929:\section{Condensed Mathematics and HoTT}\label{sec:condensed}
933:Clausen and Scholze~\cite{Scholze2019Condensed,ClausenScholze2024Analytic}
960:\begin{problem}[Bridging condensed mathematics and HoTT]\label{prob:bridge}
972:\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others
987:\begin{definition}[HoTT-solid abelian group, candidate]\label{def:HoTTSolid}
993:\Cref{def:HoTTSolid} is speculative; it has not been verified to match the
997:\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
1000:stacks~\cite{ClausenScholze2024SixFunctor,ClausenScholze2025AnalyticStacks}
1016:\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
1019:\cite{Riehl2021Elements}.
1022:A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
1026:\subsection{Solid modules over \texorpdfstring{$\Z$}{Z} and \texorpdfstring{$p$}{p}-adic interaction}\label{subsec:solidp}
1039:\begin{conjecture}[$p$-adic zeta function in HoTT]\label{conj:padicZeta}
1046:\begin{remark}\label{rem:padicEasier}
1047:\Cref{conj:padicZeta} is a research suggestion: \emph{start with the $p$-adic
1054:\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
1058:The 2025 paper~\cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:
1095:(\Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}) become
1111:properties as Mathlib's $\C$. We sketch this in \Cref{sec:roadmap}.
1113:\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
1156:HoTT analogue: \Cref{conj:RH}.
1158:\subsection{Quantitative comparison}\label{subsec:LSquant}
1188:\cite{Booij2020} for HoTT-native analysis benchmarks.
1192:\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
1200:\begin{problem}\label{prob:1}
1202:of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
1210:\begin{problem}\label{prob:2}
1211:Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
1212:Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
1219:\begin{problem}\label{prob:3}
1220:Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
1228:\begin{problem}\label{prob:4}
1232:\Cref{def:ZetaUP}.
1238:\begin{problem}\label{prob:5}
1239:Prove the functional equation \Cref{thm:FE} in HoTT, using either
1244:\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
1248:\begin{problem}\label{prob:6}
1254:\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
1267:\label{fig:roadmap}
1273:\item \Cref{prob:1}: $\sim$1000 lines, 1--2 graduate-student-years.
1274:\item \Cref{prob:2}: $\sim$5000 lines, 2--3 g-s-y.
1275:\item \Cref{prob:3}: $\sim$1500 lines, 1 g-s-y.
1276:\item \Cref{prob:4}: $\sim$3000 lines, 2--3 g-s-y; key conceptual work.
1277:\item \Cref{prob:5}: $\sim$5000 lines, 2 g-s-y.
1278:\item \Cref{prob:6}: $\sim$200 lines, weeks. The hard part is the
1286:\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
1290:\Cref{conj:RH} states $\Pi(s:\Cc).\, P(s) \to Q(s)$, where $P$ and $Q$ are
1301:\begin{remark}\label{rem:decidability}
1308:\begin{remark}\label{rem:LEM}
1322:\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
1330:suitable $(\infty,1)$-topos, \Cref{conj:GRH} is a $\Pi\Pi\Pi$-statement —
1335:\begin{theorem}[von Koch, expected HoTT version]\label{thm:vonKoch}
1336:Conditional on \Cref{conj:RH}, the prime-counting function $\pi(x)$
1346:\Cref{prob:1}--\Cref{prob:6}.
1357:\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
1375:\Cref{prob:1}--\Cref{prob:5}. In particular, the $\mathrm{Re}(s) = 1$
1378:target after \Cref{thm:Basel}.
1380:\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
1395:contour integration. HoTT-native version would require \Cref{prob:4}.
1400:functional equation; their existence requires \Cref{prob:5}.
1407:\section{Discussion}\label{sec:discussion}
1441:\emph{Differential cohesive HoTT}~\cite{Schreiber2013, Wellen2018} extends
1444:\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
1457:\item We do not prove the conjectures of \Cref{thm:ZetaEquiv} or
1458:\Cref{thm:FE}; we sketch proofs that depend on currently-unavailable
1460:\item Our proposed bridge (\Cref{prob:bridge}) between condensed mathematics
1467:\item Implement \Cref{prob:1}--\Cref{prob:3} in Cubical Agda.
1469:(\Cref{prob:4}).
1472:\item Use the synthesis from~\cite{Long2026Synthesis} to attack
1473:\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
1475:\cite{EFK2025AnalyticLanglands} in HoTT.
1481:Shulman, Verity, North~\cite{Riehl2021Elements}. DTT extends HoTT with a
1498:\emph{Synthetic algebraic geometry}~\cite{CherubiniRijke2024} works inside
1532:\section{Conclusion}\label{sec:conclusion}
1538:requires the prerequisite chain of \Cref{sec:prereq}, the candidate
1539:definitions of \Cref{sec:zeta}, the $(\infty,1)$-topos perspective of
1540:\Cref{sec:langlands}--\Cref{sec:condensed}, the comparison with
1541:Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete
1542:sub-problems of \Cref{sec:roadmap}.
1546:concrete steps. The roadmap of \Cref{sec:roadmap} estimates 8--12
1561:\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
1569:\begin{equation}\label{eq:univ}
1573:This is the standard univalence axiom of~\cite{HoTTBook}. It implies
1580:\item Cauchy reals $\Rc$ as a HIIT (\Cref{def:Rc}).
1589:\cite{Shulman2018Cohesive} adds:
1604:\begin{equation}\label{eq:choice}
1614:\begin{equation}\label{eq:lem}
1621:\section{Appendix: Companion code overview}\label{app:code}
1648:is to make the prerequisite chain (\Cref{sec:prereq}) and the candidate
1649:definitions (\Cref{sec:zeta}) executable, so that future HoTT-native work
1652:\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}
1655:$\zeta$, addressing \Cref{prob:4} in more detail.
1660:representation~\cite{Hurwitz1882}:
1694:size. Cumulatively, this is the heart of \Cref{prob:4}, and we estimate
1707:\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
1711:\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}

exec
/usr/local/bin/zsh -lc "rg -n -F -e 'TODO' -e 'FIXME' -e 'undefined' -e 'missing' -e '\\url{' -e '\\texttt{' -e '\\verb' -e '\\begin{verbatim}' -e '\\begin{lstlisting}' -e '\\newunicodechar' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
26:\newunicodechar{ℂ}{\ensuremath{\mathbb{C}}}
27:\newunicodechar{ℕ}{\ensuremath{\mathbb{N}}}
28:\newunicodechar{ℝ}{\ensuremath{\mathbb{R}}}
29:\newunicodechar{ℤ}{\ensuremath{\mathbb{Z}}}
30:\newunicodechar{ℚ}{\ensuremath{\mathbb{Q}}}
31:\newunicodechar{∀}{\ensuremath{\forall}}
32:\newunicodechar{∃}{\ensuremath{\exists}}
33:\newunicodechar{≠}{\ensuremath{\neq}}
34:\newunicodechar{≤}{\ensuremath{\leq}}
35:\newunicodechar{≥}{\ensuremath{\geq}}
36:\newunicodechar{π}{\ensuremath{\pi}}
37:\newunicodechar{ζ}{\ensuremath{\zeta}}
38:\newunicodechar{∧}{\ensuremath{\wedge}}
39:\newunicodechar{∨}{\ensuremath{\vee}}
116:\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
230:where they overlap and where the bridge is missing. (\Cref{sec:condensed})
572:We use the language of a \texttt{definition} only for the specification;
727:\begin{proof}[Sketch of HoTT-native proof, modulo missing infrastructure]
1072:\begin{verbatim}
1084:\item Mathlib's \texttt{Complex.differentiable}, \texttt{HolomorphicAt},
1085:\texttt{ContourIntegral}.
1087:(\texttt{ZetaFunction} in Mathlib).
1120:\begin{verbatim}
1133:\begin{verbatim}
1143:\begin{verbatim}
1152:\begin{verbatim}
1623:The companion repository at \texttt{src/langlands-analytic-number-theory/}
1627:\item \texttt{Main.hs} --- driver illustrating partial $\zeta$ sums and
1629:\item \texttt{Zeta.hs} --- partial zeta computations with explicit
1631:\item \texttt{Dirichlet.hs} --- Dirichlet series machinery, Dirichlet
1633:\item \texttt{Properties.hs} --- QuickCheck properties for the algebraic
1635:\item \texttt{Proofs.hs} --- equational proofs of the Euler product
1639:The Lean component at \texttt{lean/langlands-analytic-number-theory/}
1643:\item \texttt{Zeta.lean} --- a Lean 4 / Mathlib sketch indexed against
1757:Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}
1798:Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}
1804:\url{https://www.mpim-bonn.mpg.de/gaitsgde/GLC/}
1820:\url{https://www.math.uni-bonn.de/people/scholze/Condensed.pdf}
1840:\url{https://people.mpim-bonn.mpg.de/scholze/Complex.pdf}, 2022.
1902:Manuscript, \url{https://github.com/felixwellen/synthetic-zariski}, 2024.

exec
/usr/local/bin/zsh -lc "rg -n -F -e '\\bibliographystyle' -e '\\begin{thebibliography}' -e '\\bibitem' -e '\\end{thebibliography}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
1751:\bibliographystyle{plain}
1752:\begin{thebibliography}{99}
1754:\bibitem{HoTTBook}
1759:\bibitem{Long2026Synthesis}
1765:\bibitem{Voevodsky2014}
1770:\bibitem{Booij2020}
1775:\bibitem{Mines1988}
1780:\bibitem{Shulman2018Cohesive}
1785:\bibitem{Shulman2019InfTopos}
1790:\bibitem{Lurie2009HTT}
1795:\bibitem{LurieHA}
1800:\bibitem{Gaitsgory2024GLC}
1806:\bibitem{BeilinsonDrinfeld2004}
1811:\bibitem{LoefflerStoll2025}
1816:\bibitem{Scholze2019Condensed}
1822:\bibitem{ClausenScholze2024Analytic}
1827:\bibitem{ClausenScholze2024SixFunctor}
1832:\bibitem{ClausenScholze2025AnalyticStacks}
1837:\bibitem{ClausenScholzeComplex}
1842:\bibitem{EFK2025AnalyticLanglands}
1848:\bibitem{CisinskiKKNS2025}
1853:\bibitem{Langlands1970}
1858:\bibitem{GelbartLanglands1979}
1863:\bibitem{Schreiber2013}
1868:\bibitem{Wellen2018}
1873:\bibitem{ScreiberShulman2014QFT}
1878:\bibitem{Euler1737}
1883:\bibitem{RiemannHypothesisOriginal}
1889:\bibitem{KapustinWitten2007}
1894:\bibitem{Riehl2021Elements}
1899:\bibitem{CherubiniRijke2024}
1904:\bibitem{Hurwitz1882}
1909:\end{thebibliography}

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\label\\{(["'^}]*)'"\\}/g){print \""'$1'"\\n\"}' papers/latex/langlands-analytic-number-theory.tex | sort | uniq -d" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -0777 -ne 'my %lab; while(/\\\\label\\{(["'^}]*)'"\\}/g){"'$lab{$1}=1} my %ref; while(/'"\\\\(?:Cref|cref|ref|eqref)\\{(["'^}]*)'"\\}/g){for my "'$x (split /,/, $1){$x=~s/''^'"\\s+|\\s+"'$//g; $ref{$x}=1}} for my $x (sort keys %ref){print "$x'"\\n\" unless "'$lab{$x}}'"' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -0777 -ne 'my %bib; while(/\\\\bibitem\\{(["'^}]*)'"\\}/g){"'$bib{$1}=1} my %cite; while(/'"\\\\cite\\{(["'^}]*)'"\\}/g){for my "'$x (split /,/, $1){$x=~s/''^'"\\s+|\\s+"'$//g; $cite{$x}=1}} for my $x (sort keys %cite){print "$x'"\\n\" unless "'$bib{$x}}'"' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -0777 -ne 'my %bib; while(/\\\\bibitem\\{(["'^}]*)'"\\}/g){"'$bib{$1}=1} my %cite; while(/'"\\\\cite\\{(["'^}]*)'"\\}/g){for my "'$x (split /,/, $1){$x=~s/''^'"\\s+|\\s+"'$//g; $cite{$x}=1}} for my $x (sort keys %bib){print "$x'"\\n\" unless "'$cite{$x}}'"' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -0777 -ne 'my %seen; while(/\\\\label\\{(["'^}]*)'"\\}/g){"'$seen{$1}++} for my $x (sort keys %seen){print "$x'"\\n\" if "'$seen{$x}>1}'"' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '18,75p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.log | sed -n '500,522p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   500	\@cmidlb=\count320
   501	\@aboverulesep=\dimen288
   502	\@belowrulesep=\dimen289
   503	\@thisruleclass=\count321
   504	\@lastruleclass=\count322
   505	\@thisrulewidth=\dimen290
   506	)
   507	(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty
   508	Package: everypage 2020/10/17 R2.0b Hooks to run on every page
   509	
   510	
   511	Package everypage Warning: Functionality similar to this package has recently
   512	(everypage)                been implemented in LaTeX. This package is now in
   513	(everypage)                legacy status.
   514	(everypage)                Please, don't use it in new documents and packages.
   515	
   516	
   517	Package everypage Warning: You appear to be running a version of LaTeX
   518	(everypage)                providing the new functionality.
   519	(everypage)                Doing the best to deliver the original `everypage`
   520	(everypage)                interface on top of it. Strict equivalence is
   521	(everypage)                not possible, breakage may occur.
   522	(everypage)                If truly needed, Use `everypage-1x` to force the

 succeeded in 0ms:
    18	% Tables
    19	\usepackage{booktabs}
    20	
    21	% Page hooks for the GrokRxiv sidebar
    22	\usepackage{everypage}
    23	
    24	% Unicode characters used inside verbatim Lean snippets.
    25	\usepackage{newunicodechar}
    26	\newunicodechar{ℂ}{\ensuremath{\mathbb{C}}}
    27	\newunicodechar{ℕ}{\ensuremath{\mathbb{N}}}
    28	\newunicodechar{ℝ}{\ensuremath{\mathbb{R}}}
    29	\newunicodechar{ℤ}{\ensuremath{\mathbb{Z}}}
    30	\newunicodechar{ℚ}{\ensuremath{\mathbb{Q}}}
    31	\newunicodechar{∀}{\ensuremath{\forall}}
    32	\newunicodechar{∃}{\ensuremath{\exists}}
    33	\newunicodechar{≠}{\ensuremath{\neq}}
    34	\newunicodechar{≤}{\ensuremath{\leq}}
    35	\newunicodechar{≥}{\ensuremath{\geq}}
    36	\newunicodechar{π}{\ensuremath{\pi}}
    37	\newunicodechar{ζ}{\ensuremath{\zeta}}
    38	\newunicodechar{∧}{\ensuremath{\wedge}}
    39	\newunicodechar{∨}{\ensuremath{\vee}}
    40	
    41	% References (hyperref must be loaded late; cleveref after hyperref)
    42	\usepackage{hyperref}
    43	\usepackage{cleveref}
    44	
    45	% Theorems
    46	\newtheorem{theorem}{Theorem}[section]
    47	\newtheorem{proposition}[theorem]{Proposition}
    48	\newtheorem{lemma}[theorem]{Lemma}
    49	\newtheorem{corollary}[theorem]{Corollary}
    50	\newtheorem{conjecture}[theorem]{Conjecture}
    51	\theoremstyle{definition}
    52	\newtheorem{definition}[theorem]{Definition}
    53	\newtheorem{problem}[theorem]{Problem}
    54	\newtheorem{example}[theorem]{Example}
    55	\theoremstyle{remark}
    56	\newtheorem{remark}[theorem]{Remark}
    57	
    58	% GrokRxiv sidebar
    59	\definecolor{grokgray}{RGB}{110,110,110}
    60	\AddEverypageHook{%
    61	  \ifnum\value{page}=1
    62	    \begin{tikzpicture}[remember picture, overlay]
    63	      \node[
    64	        rotate=90,
    65	        anchor=south,
    66	        font=\Large\sffamily\bfseries\color{grokgray},
    67	        inner sep=0pt
    68	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    69	      {GrokRxiv:2026.05.langlands-analytic-number-theory\quad
    70	       [\,math.NT\,]\quad
    71	       04 May 2026};
    72	    \end{tikzpicture}
    73	  \fi
    74	}
    75	

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '768,776p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   768	\emph{minimum viable target} for HoTT-native analytic NT — the analogue of
   769	``hello, world'' for our roadmap.
   770	\end{remark}
   771	
   772	%---------------------------------------------------------------
   773	\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
   774	
   775	\subsection{Brief history}
   776	

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.out | sed -n '1,80p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\BOOKMARK [1][-]{section.1}{\376\377\000I\000n\000t\000r\000o\000d\000u\000c\000t\000i\000o\000n}{}% 1
     2	\BOOKMARK [2][-]{subsection.1.1}{\376\377\000T\000h\000e\000\040\000p\000r\000i\000n\000c\000i\000p\000a\000l\000\040\000o\000p\000e\000n\000\040\000p\000r\000o\000b\000l\000e\000m}{section.1}% 2
     3	\BOOKMARK [2][-]{subsection.1.2}{\376\377\000W\000h\000y\000\040\000z\000e\000t\000a\000\050\000s\000\051\000=\0000\000\040\000i\000s\000\040\000h\000a\000r\000d\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.1}% 3
     4	\BOOKMARK [2][-]{subsection.1.3}{\376\377\000W\000h\000a\000t\000\040\000t\000h\000i\000s\000\040\000p\000a\000p\000e\000r\000\040\000d\000o\000e\000s\000\040\000\050\000a\000n\000d\000\040\000d\000o\000e\000s\000\040\000n\000o\000t\000\040\000d\000o\000\051}{section.1}% 4
     5	\BOOKMARK [2][-]{subsection.1.4}{\376\377\000A\000l\000g\000e\000b\000r\000a\000i\000c\000\040\000v\000s\000.\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000n\000u\000m\000b\000e\000r\000\040\000t\000h\000e\000o\000r\000y}{section.1}% 5
     6	\BOOKMARK [2][-]{subsection.1.5}{\376\377\000O\000u\000t\000l\000i\000n\000e}{section.1}% 6
     7	\BOOKMARK [1][-]{section.2}{\376\377\000T\000h\000e\000\040\000P\000r\000e\000r\000e\000q\000u\000i\000s\000i\000t\000e\000\040\000C\000h\000a\000i\000n}{}% 7
     8	\BOOKMARK [2][-]{subsection.2.1}{\376\377\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000r\000e\000a\000l\000\040\000n\000u\000m\000b\000e\000r\000s\000\040\000R\000c}{section.2}% 8
     9	\BOOKMARK [2][-]{subsection.2.2}{\376\377\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000c\000o\000m\000p\000l\000e\000x\000\040\000n\000u\000m\000b\000e\000r\000s\000\040\000C\000c}{section.2}% 9
    10	\BOOKMARK [2][-]{subsection.2.3}{\376\377\000H\000o\000l\000o\000m\000o\000r\000p\000h\000i\000c\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000s\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.2}% 10
    11	\BOOKMARK [2][-]{subsection.2.4}{\376\377\000D\000i\000r\000i\000c\000h\000l\000e\000t\000\040\000s\000e\000r\000i\000e\000s}{section.2}% 11
    12	\BOOKMARK [2][-]{subsection.2.5}{\376\377\000P\000u\000t\000t\000i\000n\000g\000\040\000i\000t\000\040\000t\000o\000g\000e\000t\000h\000e\000r}{section.2}% 12
    13	\BOOKMARK [2][-]{subsection.2.6}{\376\377\000D\000e\000t\000a\000i\000l\000e\000d\000\040\000a\000c\000c\000o\000u\000n\000t\000\040\000o\000f\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000-\000c\000o\000n\000t\000i\000n\000u\000a\000t\000i\000o\000n\000\040\000o\000b\000s\000t\000a\000c\000l\000e\000s}{section.2}% 13
    14	\BOOKMARK [2][-]{subsection.2.7}{\376\377\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000C\000a\000u\000c\000h\000y\000\040\000r\000e\000a\000l\000s\000:\000\040\000e\000x\000p\000l\000i\000c\000i\000t\000\040\000e\000x\000a\000m\000p\000l\000e}{section.2}% 14
    15	\BOOKMARK [1][-]{section.3}{\376\377\000T\000h\000e\000\040\000R\000i\000e\000m\000a\000n\000n\000\040\000Z\000e\000t\000a\000\040\000F\000u\000n\000c\000t\000i\000o\000n\000\040\000a\000s\000\040\000a\000\040\000H\000o\000T\000T\000\040\000O\000b\000j\000e\000c\000t}{}% 15
    16	\BOOKMARK [2][-]{subsection.3.1}{\376\377\000A\000p\000p\000r\000o\000a\000c\000h\000\040\0001\000:\000\040\000z\000e\000t\000a\000\040\000a\000s\000\040\000a\000\040\000h\000i\000g\000h\000e\000r\000\040\000i\000n\000d\000u\000c\000t\000i\000v\000e\000-\000i\000n\000d\000u\000c\000t\000i\000v\000e\000\040\000t\000y\000p\000e}{section.3}% 16
    17	\BOOKMARK [2][-]{subsection.3.2}{\376\377\000A\000p\000p\000r\000o\000a\000c\000h\000\040\0002\000:\000\040\000z\000e\000t\000a\000\040\000a\000s\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000l\000i\000m\000i\000t\000\040\000o\000f\000\040\000E\000u\000l\000e\000r\000\040\000p\000r\000o\000d\000u\000c\000t}{section.3}% 17
    18	\BOOKMARK [2][-]{subsection.3.3}{\376\377\000A\000p\000p\000r\000o\000a\000c\000h\000\040\0003\000:\000\040\000z\000e\000t\000a\000\040\000v\000i\000a\000\040\000u\000n\000i\000v\000e\000r\000s\000a\000l\000\040\000p\000r\000o\000p\000e\000r\000t\000y\000\040\000o\000f\000\040\000m\000e\000r\000o\000m\000o\000r\000p\000h\000i\000c\000\040\000c\000o\000n\000t\000i\000n\000u\000a\000t\000i\000o\000n}{section.3}% 18
    19	\BOOKMARK [2][-]{subsection.3.4}{\376\377\000E\000q\000u\000i\000v\000a\000l\000e\000n\000c\000e\000\040\000o\000f\000\040\000t\000h\000e\000\040\000t\000h\000r\000e\000e\000\040\000d\000e\000f\000i\000n\000i\000t\000i\000o\000n\000s}{section.3}% 19
    20	\BOOKMARK [2][-]{subsection.3.5}{\376\377\000T\000h\000e\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000a\000l\000\040\000e\000q\000u\000a\000t\000i\000o\000n}{section.3}% 20
    21	\BOOKMARK [2][-]{subsection.3.6}{\376\377\000T\000h\000e\000\040\000c\000r\000i\000t\000i\000c\000a\000l\000\040\000s\000t\000r\000i\000p}{section.3}% 21
    22	\BOOKMARK [2][-]{subsection.3.7}{\376\377\000W\000o\000r\000k\000e\000d\000\040\000e\000x\000a\000m\000p\000l\000e\000:\000\040\000z\000e\000t\000a\000\050\0002\000\051\000\040\000=\000\040\000p\000i\000\040\000s\000q\000u\000a\000r\000e\000d\000\040\000o\000v\000e\000r\000\040\0006}{section.3}% 22
    23	\BOOKMARK [1][-]{section.4}{\376\377\000G\000e\000o\000m\000e\000t\000r\000i\000c\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000i\000n\000\040\000\050\000,\0001\000\051\000-\000T\000o\000p\000o\000i}{}% 23
    24	\BOOKMARK [2][-]{subsection.4.1}{\376\377\000B\000r\000i\000e\000f\000\040\000h\000i\000s\000t\000o\000r\000y}{section.4}% 24
    25	\BOOKMARK [2][-]{subsection.4.2}{\376\377\000\050\000i\000n\000f\000t\000y\000,\0001\000\051\000-\000c\000a\000t\000e\000g\000o\000r\000i\000e\000s\000\040\000v\000s\000.\000\040\000H\000o\000T\000T}{section.4}% 25
    26	\BOOKMARK [2][-]{subsection.4.3}{\376\377\000G\000e\000o\000m\000e\000t\000r\000i\000c\000\040\000v\000s\000.\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s}{section.4}% 26
    27	\BOOKMARK [2][-]{subsection.4.4}{\376\377\000I\000m\000p\000l\000i\000c\000a\000t\000i\000o\000n\000\040\000f\000o\000r\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000N\000T}{section.4}% 27
    28	\BOOKMARK [2][-]{subsection.4.5}{\376\377\000D\000e\000t\000a\000i\000l\000e\000d\000\040\000e\000x\000a\000m\000p\000l\000e\000:\000\040\000G\000L\000\050\0001\000\051\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000a\000n\000d\000\040\000H\000e\000c\000k\000e\000\040\000c\000h\000a\000r\000a\000c\000t\000e\000r\000s}{section.4}% 28
    29	\BOOKMARK [2][-]{subsection.4.6}{\376\377\000G\000e\000o\000m\000e\000t\000r\000i\000c\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000a\000s\000\040\000a\000n\000\040\000i\000n\000t\000e\000r\000n\000a\000l\000\040\000H\000o\000T\000T\000\040\000s\000t\000a\000t\000e\000m\000e\000n\000t}{section.4}% 29
    30	\BOOKMARK [2][-]{subsection.4.7}{\376\377\000P\000h\000y\000s\000i\000c\000a\000l\000\040\000i\000n\000t\000e\000r\000p\000r\000e\000t\000a\000t\000i\000o\000n\000:\000\040\0004\000d\000\040\000N\000=\0004\000\040\000s\000u\000p\000e\000r\000-\000Y\000a\000n\000g\040\023\000M\000i\000l\000l\000s}{section.4}% 30
    31	\BOOKMARK [1][-]{section.5}{\376\377\000C\000o\000n\000d\000e\000n\000s\000e\000d\000\040\000M\000a\000t\000h\000e\000m\000a\000t\000i\000c\000s\000\040\000a\000n\000d\000\040\000H\000o\000T\000T}{}% 31
    32	\BOOKMARK [2][-]{subsection.5.1}{\376\377\000P\000y\000k\000n\000o\000t\000i\000c\000\040\000/\000\040\000c\000o\000n\000d\000e\000n\000s\000e\000d\000\040\000s\000e\000t\000s}{section.5}% 32
    33	\BOOKMARK [2][-]{subsection.5.2}{\376\377\000W\000h\000y\000\040\000t\000h\000i\000s\000\040\000m\000a\000t\000t\000e\000r\000s\000\040\000f\000o\000r\000\040\000z\000e\000t\000a}{section.5}% 33
    34	\BOOKMARK [2][-]{subsection.5.3}{\376\377\000B\000r\000i\000d\000g\000i\000n\000g\000\040\000t\000o\000\040\000H\000o\000T\000T}{section.5}% 34
    35	\BOOKMARK [2][-]{subsection.5.4}{\376\377\000S\000o\000l\000i\000d\000\040\000a\000b\000e\000l\000i\000a\000n\000\040\000g\000r\000o\000u\000p\000s\000\040\000i\000n\000\040\000H\000o\000T\000T\000,\000\040\000s\000k\000e\000t\000c\000h}{section.5}% 35
    36	\BOOKMARK [2][-]{subsection.5.5}{\376\377\000S\000i\000x\000-\000f\000u\000n\000c\000t\000o\000r\000\040\000f\000o\000r\000m\000a\000l\000i\000s\000m\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.5}% 36
    37	\BOOKMARK [2][-]{subsection.5.6}{\376\377\000S\000o\000l\000i\000d\000\040\000m\000o\000d\000u\000l\000e\000s\000\040\000o\000v\000e\000r\000\040\000Z\000\040\000a\000n\000d\000\040\000p\000-\000a\000d\000i\000c\000\040\000i\000n\000t\000e\000r\000a\000c\000t\000i\000o\000n}{section.5}% 37
    38	\BOOKMARK [1][-]{section.6}{\376\377\000C\000o\000m\000p\000a\000r\000i\000s\000o\000n\000\040\000w\000i\000t\000h\000\040\000L\000o\000e\000f\000f\000l\000e\000r\040\023\000S\000t\000o\000l\000l\000\040\000L\000e\000a\000n\000\040\000F\000o\000r\000m\000a\000l\000i\000z\000a\000t\000i\000o\000n}{}% 38
    39	\BOOKMARK [2][-]{subsection.6.1}{\376\377\000W\000h\000a\000t\000\040\000L\000o\000e\000f\000f\000l\000e\000r\040\023\000S\000t\000o\000l\000l\000\040\000h\000a\000v\000e}{section.6}% 39
    40	\BOOKMARK [2][-]{subsection.6.2}{\376\377\000W\000h\000a\000t\000\040\000L\000e\000a\000n\000\040\000/\000\040\000M\000a\000t\000h\000l\000i\000b\000\040\000p\000r\000o\000v\000i\000d\000e\000s\000\040\000t\000h\000a\000t\000\040\000H\000o\000T\000T\000\040\000l\000a\000c\000k\000s}{section.6}% 40
    41	\BOOKMARK [2][-]{subsection.6.3}{\376\377\000W\000h\000a\000t\000\040\000H\000o\000T\000T\000\040\000c\000o\000u\000l\000d\000\040\000o\000f\000f\000e\000r}{section.6}% 41
    42	\BOOKMARK [2][-]{subsection.6.4}{\376\377\000S\000t\000r\000a\000t\000e\000g\000y\000:\000\040\000H\000o\000T\000T\000\040\000a\000s\000\040\000c\000l\000a\000s\000s\000i\000c\000a\000l\000-\000f\000o\000u\000n\000d\000a\000t\000i\000o\000n\000\040\000t\000r\000a\000n\000s\000p\000o\000r\000t}{section.6}% 42
    43	\BOOKMARK [2][-]{subsection.6.5}{\376\377\000C\000o\000d\000e\000-\000l\000e\000v\000e\000l\000\040\000c\000o\000m\000p\000a\000r\000i\000s\000o\000n\000:\000\040\000s\000i\000g\000n\000a\000t\000u\000r\000e\000\040\000a\000g\000a\000i\000n\000s\000t\000\040\000s\000i\000g\000n\000a\000t\000u\000r\000e}{section.6}% 43
    44	\BOOKMARK [2][-]{subsection.6.6}{\376\377\000Q\000u\000a\000n\000t\000i\000t\000a\000t\000i\000v\000e\000\040\000c\000o\000m\000p\000a\000r\000i\000s\000o\000n}{section.6}% 44
    45	\BOOKMARK [1][-]{section.7}{\376\377\000S\000i\000x\000\040\000S\000u\000b\000-\000P\000r\000o\000b\000l\000e\000m\000s\000\040\000f\000o\000r\000\040\000H\000o\000T\000T\000-\000N\000a\000t\000i\000v\000e\000\040\000Z\000e\000t\000a}{}% 45
    46	\BOOKMARK [2][-]{section*.9}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0001\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000c\000o\000m\000p\000l\000e\000x\000\040\000n\000u\000m\000b\000e\000r\000s}{section.7}% 46
    47	\BOOKMARK [2][-]{section*.10}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0002\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000h\000o\000l\000o\000m\000o\000r\000p\000h\000i\000c\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000s}{section.7}% 47
    48	\BOOKMARK [2][-]{section*.11}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0003\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000D\000i\000r\000i\000c\000h\000l\000e\000t\000\040\000s\000e\000r\000i\000e\000s}{section.7}% 48
    49	\BOOKMARK [2][-]{section*.12}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0004\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000c\000o\000n\000t\000i\000n\000u\000a\000t\000i\000o\000n}{section.7}% 49
    50	\BOOKMARK [2][-]{section*.13}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0005\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000a\000l\000\040\000e\000q\000u\000a\000t\000i\000o\000n}{section.7}% 50
    51	\BOOKMARK [2][-]{section*.14}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0006\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000R\000H\000\040\000s\000t\000a\000t\000e\000m\000e\000n\000t}{section.7}% 51
    52	\BOOKMARK [2][-]{subsection.7.1}{\376\377\000C\000o\000m\000p\000o\000s\000i\000t\000i\000o\000n\000\040\000d\000i\000a\000g\000r\000a\000m}{section.7}% 52
    53	\BOOKMARK [2][-]{subsection.7.2}{\376\377\000E\000s\000t\000i\000m\000a\000t\000e\000d\000\040\000e\000f\000f\000o\000r\000t\000\040\000a\000n\000d\000\040\000m\000i\000l\000e\000s\000t\000o\000n\000e\000s}{section.7}% 53
    54	\BOOKMARK [1][-]{section.8}{\376\377\000O\000p\000e\000n\000\040\000C\000o\000n\000j\000e\000c\000t\000u\000r\000e\000s\000:\000\040\000R\000i\000e\000m\000a\000n\000n\000\040\000H\000y\000p\000o\000t\000h\000e\000s\000i\000s\000\040\000a\000s\000\040\000a\000\040\000H\000o\000T\000T\000\040\000S\000t\000a\000t\000e\000m\000e\000n\000t}{}% 54
    55	\BOOKMARK [2][-]{subsection.8.1}{\376\377\000M\000o\000d\000a\000l\000-\000l\000o\000g\000i\000c\000a\000l\000\040\000s\000t\000a\000t\000u\000s\000\040\000o\000f\000\040\000R\000H\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.8}% 55
    56	\BOOKMARK [2][-]{subsection.8.2}{\376\377\000D\000e\000c\000i\000d\000a\000b\000i\000l\000i\000t\000y\000\040\000a\000n\000d\000\040\000c\000o\000n\000s\000t\000r\000u\000c\000t\000i\000v\000i\000t\000y}{section.8}% 56
    57	\BOOKMARK [2][-]{subsection.8.3}{\376\377\000C\000o\000n\000n\000e\000c\000t\000i\000o\000n\000s\000\040\000t\000o\000\040\000t\000h\000e\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000p\000r\000o\000g\000r\000a\000m\000m\000e}{section.8}% 57
    58	\BOOKMARK [2][-]{subsection.8.4}{\376\377\000T\000h\000e\000\040\000v\000o\000n\000\040\000K\000o\000c\000h\000\040\000t\000h\000e\000o\000r\000e\000m\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.8}% 58
    59	\BOOKMARK [2][-]{subsection.8.5}{\376\377\000W\000h\000a\000t\000\040\000i\000f\000\040\000R\000H\000\040\000i\000s\000\040\000i\000n\000d\000e\000p\000e\000n\000d\000e\000n\000t\000\040\000o\000f\000\040\000H\000o\000T\000T\000-\000s\000e\000t\000\040\000t\000h\000e\000o\000r\000y\000?}{section.8}% 59
    60	\BOOKMARK [2][-]{subsection.8.6}{\376\377\000D\000e\000n\000s\000i\000t\000y\000\040\000t\000h\000e\000o\000r\000e\000m\000s\000\040\000a\000n\000d\000\040\000z\000e\000r\000o\000-\000f\000r\000e\000e\000\040\000r\000e\000g\000i\000o\000n\000s}{section.8}% 60
    61	\BOOKMARK [2][-]{subsection.8.7}{\376\377\000E\000f\000f\000e\000c\000t\000i\000v\000e\000\040\000v\000s\000.\000\040\000i\000n\000e\000f\000f\000e\000c\000t\000i\000v\000e\000\040\000H\000o\000T\000T\000\040\000s\000t\000a\000t\000e\000m\000e\000n\000t\000s}{section.8}% 61
    62	\BOOKMARK [1][-]{section.9}{\376\377\000D\000i\000s\000c\000u\000s\000s\000i\000o\000n}{}% 62
    63	\BOOKMARK [2][-]{subsection.9.1}{\376\377\000W\000h\000y\000\040\000i\000s\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000N\000T\000\040\000s\000p\000e\000c\000i\000f\000i\000c\000a\000l\000l\000y\000\040\000h\000a\000r\000d\000?}{section.9}% 63
    64	\BOOKMARK [2][-]{subsection.9.2}{\376\377\000C\000o\000m\000p\000a\000r\000i\000s\000o\000n\000:\000\040\000L\000e\000a\000n\000\040\000M\000a\000t\000h\000l\000i\000b\000'\000s\000\040\000e\000f\000f\000e\000c\000t\000i\000v\000e\000n\000e\000s\000s}{section.9}% 64
    65	\BOOKMARK [2][-]{subsection.9.3}{\376\377\000T\000h\000e\000\040\000r\000o\000l\000e\000\040\000o\000f\000\040\000c\000o\000h\000e\000s\000i\000v\000e\000\040\000/\000\040\000d\000i\000f\000f\000e\000r\000e\000n\000t\000i\000a\000l\000\040\000H\000o\000T\000T}{section.9}% 65
    66	\BOOKMARK [2][-]{subsection.9.4}{\376\377\000L\000i\000m\000i\000t\000a\000t\000i\000o\000n\000s\000\040\000o\000f\000\040\000t\000h\000i\000s\000\040\000p\000a\000p\000e\000r}{section.9}% 66
    67	\BOOKMARK [2][-]{subsection.9.5}{\376\377\000F\000u\000t\000u\000r\000e\000\040\000d\000i\000r\000e\000c\000t\000i\000o\000n\000s}{section.9}% 67
    68	\BOOKMARK [2][-]{subsection.9.6}{\376\377\000C\000o\000n\000n\000e\000c\000t\000i\000o\000n\000\040\000w\000i\000t\000h\000\040\000d\000i\000r\000e\000c\000t\000e\000d\000\040\000t\000y\000p\000e\000\040\000t\000h\000e\000o\000r\000y}{section.9}% 68
    69	\BOOKMARK [2][-]{subsection.9.7}{\376\377\000C\000o\000n\000n\000e\000c\000t\000i\000o\000n\000\040\000w\000i\000t\000h\000\040\000s\000y\000n\000t\000h\000e\000t\000i\000c\000\040\000a\000l\000g\000e\000b\000r\000a\000i\000c\000\040\000g\000e\000o\000m\000e\000t\000r\000y}{section.9}% 69
    70	\BOOKMARK [2][-]{subsection.9.8}{\376\377\000T\000h\000e\000\040\000r\000o\000l\000e\000\040\000o\000f\000\040\000c\000o\000m\000p\000u\000t\000e\000r\000-\000c\000h\000e\000c\000k\000e\000d\000\040\000p\000r\000o\000o\000f\000s}{section.9}% 70
    71	\BOOKMARK [1][-]{section.10}{\376\377\000C\000o\000n\000c\000l\000u\000s\000i\000o\000n}{}% 71
    72	\BOOKMARK [1][-]{appendix.A}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000H\000o\000T\000T\000\040\000a\000x\000i\000o\000m\000s\000\040\000f\000o\000r\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000N\000T}{}% 72
    73	\BOOKMARK [1][-]{appendix.B}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000C\000o\000m\000p\000a\000n\000i\000o\000n\000\040\000c\000o\000d\000e\000\040\000o\000v\000e\000r\000v\000i\000e\000w}{}% 73
    74	\BOOKMARK [1][-]{appendix.C}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000W\000o\000r\000k\000e\000d\000\040\000s\000u\000b\000-\000r\000o\000a\000d\000m\000a\000p\000\040\000f\000o\000r\000\040\000s\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0004}{}% 74
    75	\BOOKMARK [1][-]{appendix.D}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000A\000\040\000g\000l\000o\000s\000s\000a\000r\000y\000\040\000o\000f\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000s\000y\000n\000o\000n\000y\000m\000s}{}% 75

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1060,1078p;1116,1156p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1060	\item The Riemann zeta function $\zeta$ via Hurwitz zeta and analytic
  1061	continuation, $\sim$ 3300 lines.
  1062	\item Dirichlet $L$-functions $L(s,\chi)$ for primitive characters $\chi$.
  1063	\item The Euler product $\zeta(s) = \prod_p (1-p^{-s})^{-1}$ on
  1064	$\mathrm{Re}(s)>1$.
  1065	\item Analytic continuation via Mellin / theta-function method.
  1066	\item The functional equation $\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)
  1067	\cos(\pi s/2)\zeta(s)$.
  1068	\item Basel: $\zeta(2) = \pi^2/6$.
  1069	\item Non-vanishing on $\mathrm{Re}(s) \geq 1$.
  1070	\item Dirichlet's theorem on primes in APs.
  1071	\item Formal statement of the Riemann hypothesis:
  1072	\begin{verbatim}
  1073	def RiemannHypothesis : Prop :=
  1074	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1075	\end{verbatim}
  1076	\end{enumerate}
  1077	
  1078	This is roughly $10^4$ lines total across the relevant Mathlib files.
  1116	Loeffler--Stoll alongside conjectured HoTT analogues.
  1117	
  1118	\paragraph{The zeta function itself.}
  1119	In Mathlib (Loeffler--Stoll):
  1120	\begin{verbatim}
  1121	noncomputable def riemannZeta : ℂ → ℂ
  1122	\end{verbatim}
  1123	In HoTT (proposed):
  1124	\[
  1125	\zeta : \Cc \setminus \{1\} \to \Cc \quad \text{(with explicit pole at $s=1$)}.
  1126	\]
  1127	Here Lean uses ``noncomputable'' to encode that $\zeta$ is defined by
  1128	non-effective analytic continuation. HoTT, lacking a built-in concept of
  1129	``noncomputable'', must encode this via a propositional truncation.
  1130	
  1131	\paragraph{The functional equation.}
  1132	In Mathlib:
  1133	\begin{verbatim}
  1134	theorem riemannZeta_one_sub : ∀ (s : ℂ), s ≠ 0 → s ≠ 1 →
  1135	  riemannZeta (1 - s) = 2 * (2 * π) ^ (-s) * Gamma s
  1136	                      * cos (π * s / 2) * riemannZeta s
  1137	\end{verbatim}
  1138	HoTT analogue (proposed): exactly the corresponding $\Pi$-statement, modulo
  1139	the conditional $s \neq 0 \wedge s \neq 1$.
  1140	
  1141	\paragraph{Non-vanishing on $\mathrm{Re}(s) \geq 1$.}
  1142	In Mathlib:
  1143	\begin{verbatim}
  1144	theorem riemannZeta_ne_zero_of_one_le_re :
  1145	  ∀ (s : ℂ), 1 ≤ s.re → s ≠ 1 → riemannZeta s ≠ 0
  1146	\end{verbatim}
  1147	HoTT analogue: same statement; the proof uses the Euler product (no
  1148	analytic continuation), so should be tractable HoTT-natively.
  1149	
  1150	\paragraph{Riemann hypothesis.}
  1151	In Mathlib:
  1152	\begin{verbatim}
  1153	def RiemannHypothesis : Prop :=
  1154	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1155	\end{verbatim}
  1156	HoTT analogue: \Cref{conj:RH}.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1158,1178p;1256,1268p;1718,1744p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'rg -n "Missing character|There were undefined|undefined references|undefined citations|LaTeX Error|! LaTeX|Emergency stop|Fatal error|Output written" papers/latex/langlands-analytic-number-theory.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
860:Output written on langlands-analytic-number-theory.pdf (33 pages, 435501 bytes)

 succeeded in 0ms:
  1158	\subsection{Quantitative comparison}\label{subsec:LSquant}
  1159	
  1160	\begin{center}
  1161	\begin{tabular}{lcc}
  1162	\toprule
  1163	Theorem & Lean lines (Loeffler--Stoll) & Est.\ HoTT complexity \\
  1164	\midrule
  1165	$\zeta$ definition & 200 & $\sim 2$--$3\times$ \\
  1166	Analytic continuation & 3300 & $\sim 2$--$3\times$ \\
  1167	Functional equation & 800 & $\sim 2$--$3\times$ \\
  1168	Euler product & 200 & $\sim 2\times$ \\
  1169	$\zeta$ non-vanishing on $\mathrm{Re}(s) \geq 1$ & 600 & $\sim 2\times$ \\
  1170	Dirichlet $L$-functions & 1500 & $\sim 2\times$ \\
  1171	Dirichlet's theorem & 800 & $\sim 2\times$ \\
  1172	\midrule
  1173	Total & $\sim$7400 lines & $\sim 2$--$3\times$ overhead \\
  1174	\bottomrule
  1175	\end{tabular}
  1176	\end{center}
  1177	
  1178	\medskip
  1256	\subsection{Composition diagram}
  1257	
  1258	\begin{figure}[htbp]
  1259	\centering
  1260	\begin{tikzcd}[column sep=small, row sep=large]
  1261	\text{Sub-prob 1} \arrow[r] \arrow[dr] & \text{Sub-prob 2} \arrow[d] & \\
  1262	& \text{Sub-prob 3} \arrow[r] & \text{Sub-prob 4} \arrow[d] \\
  1263	& & \text{Sub-prob 5} \arrow[d] \\
  1264	& & \text{Sub-prob 6}
  1265	\end{tikzcd}
  1266	\caption{Dependency graph for the six sub-problems.}
  1267	\label{fig:roadmap}
  1268	\end{figure}
  1718	\begin{center}
  1719	\begin{tabular}{ll}
  1720	\toprule
  1721	Classical & HoTT-native \\
  1722	\midrule
  1723	$\R$ & $\Rc$ (Cauchy reals) \\
  1724	$\C$ & $\Cc$ (univalent algebraic closure of $\Rc$) \\
  1725	$f:\C \to \C$ holomorphic & $f$ admits constructive Newton quotient \\
  1726	``unique up to isomorphism'' & propositionally equal under univalence \\
  1727	``the algebraic closure'' & ``a univalent algebraic closure'' \\
  1728	ZFC's choice & propositional choice axiom (optional) \\
  1729	LEM & $\Pi(P:\Prop).\, P + \neg P$ (optional) \\
  1730	quotient set & set quotient $A/{\sim}$ via HIT \\
  1731	limit of sequences & limit constructor of HIIT $\Rc$ \\
  1732	``open subset'' & ``cohesive open'' or ``(-1)-truncated open'' \\
  1733	``connected'' & propositional truncation of $A$ is contractible \\
  1734	sheaf cohomology & internal cohomology of cohesive HoTT \\
  1735	$\infty$-category & type with Segal condition \\
  1736	$\infty$-topos & univalent universe in cohesive HoTT \\
  1737	``functor'' & morphism in directed type theory \\
  1738	``natural transformation'' & 2-cell in directed type theory \\
  1739	condensed set & sheaf on profinite types in cohesive HoTT (open) \\
  1740	analytic stack & 6-functor formalism in cohesive HoTT (open) \\
  1741	$\zeta$ classically & no HoTT-native definition yet \\
  1742	\bottomrule
  1743	\end{tabular}
  1744	\end{center}

exec
/usr/local/bin/zsh -lc 'rg -n "Overfull|Underfull|Package .*Warning|LaTeX Warning|Warning:" papers/latex/langlands-analytic-number-theory.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
511:Package everypage Warning: Functionality similar to this package has recently
517:Package everypage Warning: You appear to be running a version of LaTeX
780:Overfull \hbox (0.63345pt too wide) in paragraph at lines 740--742
786:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
790:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
794:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
799:Overfull \hbox (3.42818pt too wide) in paragraph at lines 1635--1637
811:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
814:Package rerunfilecheck Warning: File `langlands-analytic-number-theory.out' has

codex
Reference keys and citation keys are all defined, with no duplicate labels found. One subtler reference-formatting problem remains: `cleveref` is classifying the `conjecture`, `problem`, `definition`, and `remark` theorem-like environments as “theorem” because they share the theorem counter without explicit `\crefname` mappings.
exec
/usr/local/bin/zsh -lc "rg -n \"@cref.*\\[theorem\\]\" papers/latex/langlands-analytic-number-theory.aux | sed -n '1,140p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
34:\newlabel{def:Rc@cref}{{[theorem][1][2]2.1}{[1][6][]6}{}{}{}}
36:\newlabel{thm:RcArchimedean@cref}{{[theorem][3][2]2.3}{[1][6][]6}{}{}{}}
43:\newlabel{def:UAC@cref}{{[theorem][4][2]2.4}{[1][6][]7}{}{}{}}
45:\newlabel{rem:UACplain@cref}{{[theorem][5][2]2.5}{[1][7][]7}{}{}{}}
47:\newlabel{prop:UACUnique@cref}{{[theorem][6][2]2.6}{[1][7][]7}{}{}{}}
51:\newlabel{def:holo@cref}{{[theorem][7][2]2.7}{[1][7][]7}{}{}{}}
54:\newlabel{rem:synth@cref}{{[theorem][8][2]2.8}{[1][7][]8}{}{}{}}
57:\newlabel{def:Dirichlet@cref}{{[theorem][9][2]2.9}{[1][8][]8}{}{}{}}
59:\newlabel{prop:DirichletAlgebra@cref}{{[theorem][10][2]2.10}{[1][8][]8}{}{}{}}
71:\newlabel{ex:sqrt2@cref}{{[theorem][11][2]2.11}{[1][9][]9}{}{}{}}
73:\newlabel{ex:euler@cref}{{[theorem][12][2]2.12}{[1][9][]9}{}{}{}}
75:\newlabel{ex:pi@cref}{{[theorem][13][2]2.13}{[1][9][]9}{}{}{}}
84:\newlabel{def:ZetaHIIT@cref}{{[theorem][1][3]3.1}{[1][10][]10}{}{}{}}
86:\newlabel{rem:ZetaHIITissues@cref}{{[theorem][2][3]3.2}{[1][10][]10}{}{}{}}
89:\newlabel{def:ZetaEuler@cref}{{[theorem][3][3]3.3}{[1][10][]11}{}{}{}}
91:\newlabel{prop:Euler@cref}{{[theorem][4][3]3.4}{[1][11][]11}{}{}{}}
94:\newlabel{def:MeromCont@cref}{{[theorem][5][3]3.5}{[1][11][]11}{}{}{}}
96:\newlabel{thm:Identity@cref}{{[theorem][6][3]3.6}{[1][11][]11}{}{}{}}
98:\newlabel{def:ZetaUP@cref}{{[theorem][7][3]3.7}{[1][11][]11}{}{}{}}
101:\newlabel{thm:ZetaEquiv@cref}{{[theorem][8][3]3.8}{[1][11][]11}{}{}{}}
104:\newlabel{thm:FE@cref}{{[theorem][9][3]3.9}{[1][12][]12}{}{}{}}
107:\newlabel{conj:RH@cref}{{[theorem][12][3]3.12}{[1][12][]12}{}{}{}}
112:\newlabel{thm:Basel@cref}{{[theorem][13][3]3.13}{[1][12][]12}{}{}{}}
117:\newlabel{rem:zetatwo@cref}{{[theorem][14][3]3.14}{[1][13][]13}{}{}{}}
130:\newlabel{rem:internal@cref}{{[theorem][1][4]4.1}{[1][14][]14}{}{}{}}
143:\newlabel{conj:GLCHoTT@cref}{{[theorem][4][4]4.4}{[1][15][]15}{}{}{}}
145:\newlabel{rem:univalence-glc@cref}{{[theorem][5][4]4.5}{[1][15][]15}{}{}{}}
157:\newlabel{prob:bridge@cref}{{[theorem][1][5]5.1}{[1][16][]16}{}{}{}}
163:\newlabel{def:HoTTSolid@cref}{{[theorem][3][5]5.3}{[1][17][]17}{}{}{}}
168:\newlabel{prob:sixfunc@cref}{{[theorem][5][5]5.5}{[1][17][]17}{}{}{}}
174:\newlabel{conj:padicZeta@cref}{{[theorem][6][5]5.6}{[1][17][]18}{}{}{}}
176:\newlabel{rem:padicEasier@cref}{{[theorem][7][5]5.7}{[1][18][]18}{}{}{}}
200:\newlabel{prob:1@cref}{{[theorem][1][7]7.1}{[1][21][]21}{}{}{}}
203:\newlabel{prob:2@cref}{{[theorem][2][7]7.2}{[1][21][]21}{}{}{}}
206:\newlabel{prob:3@cref}{{[theorem][3][7]7.3}{[1][21][]21}{}{}{}}
209:\newlabel{prob:4@cref}{{[theorem][4][7]7.4}{[1][21][]21}{}{}{}}
212:\newlabel{prob:5@cref}{{[theorem][5][7]7.5}{[1][21][]21}{}{}{}}
215:\newlabel{prob:6@cref}{{[theorem][6][7]7.6}{[1][21][]22}{}{}{}}
227:\newlabel{rem:decidability@cref}{{[theorem][1][8]8.1}{[1][23][]23}{}{}{}}
229:\newlabel{rem:LEM@cref}{{[theorem][2][8]8.2}{[1][23][]23}{}{}{}}
232:\newlabel{conj:GRH@cref}{{[theorem][3][8]8.3}{[1][23][]23}{}{}{}}
235:\newlabel{thm:vonKoch@cref}{{[theorem][4][8]8.4}{[1][23][]23}{}{}{}}

exec
/usr/local/bin/zsh -lc 'which chktex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc 'which pdftotext || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/opt/homebrew/bin/pdftotext

exec
/usr/local/bin/zsh -lc "pdftotext -layout papers/latex/langlands-analytic-number-theory.pdf - | rg -n \"Theorem 2\\.4|Definition 2\\.4|Theorem 3\\.7|Definition 3\\.7|Theorem 7\\.4|Problem 7\\.4|Theorem 3\\.12|Conjecture 3\\.12|Theorem 5\\.1|Problem 5\\.1\"" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
282:Definition 2.4 (Univalent algebraic closure). A type Rc together with an embedding ι :
290:Remark 2.5 (Plain-language gloss). In essence, Theorem 2.4 defines the algebraic closure
302:of Gal(Rc /Rc ). The propositional truncation in Theorem 2.4 ensures the existential is a
462:two approaches (Theorem 3.3 and Theorem 3.7) are more conservative.
514:Definition 3.7 (Zeta via universal property). ζ : CcP
520:lytic continuation, the three definitions Theorem 3.1, Theorem 3.3, Theorem 3.7 are pairwise
526:Theorem 3.7 agrees with the partial-sum definition on H1 by definition. By Theorem 3.6,
558:Conjecture 3.12 (Riemann hypothesis, HoTT statement).
609:plus some elementary measure / convergence theory. Theorem 7.4 is not needed for this
759:Problem 5.1 (Bridging condensed mathematics and HoTT). Construct an (∞, 1)-topos X
771:   Theorem 5.1 is open; preliminary work by Mahmoudvand–Riehl and others has explored
873:   • Univalence: the multiple definitions of ζ (Theorem 3.1, Theorem 3.3, Theorem 3.7)
929:HoTT analogue: Theorem 3.12.
960:with the universal property of Theorem 2.4, and verify that it admits the standard topology
980:Problem 7.4. Formalize the analytic-continuation theorem: a holomorphic function on a
982:a neighbourhood of that point. Apply to ζ to obtain Theorem 3.7.
991:    Status: requires Theorem 7.1–Theorem 7.4 first.
1002:   Status: doable now (Theorem 3.12), modulo Theorem 7.1–Theorem 7.4.
1031:   • Theorem 7.4: ∼3000 lines, 2–3 g-s-y; key conceptual work.
1047:Theorem 3.12 states Π(s : Cc ). P (s) → Q(s), where P and Q are propositions. By the
1075:Theorem 8.4 (von Koch, expected HoTT version). Conditional on Theorem 3.12, the
1124:contour integration. HoTT-native version would require Theorem 7.4.
1165:    • Our proposed bridge (Theorem 5.1) between condensed mathematics and HoTT is
1172:  2. Develop the cohesive-HoTT bridge for analytic continuation (Theorem 7.4).
1371:latively, this is the heart of Theorem 7.4, and we estimate it at ∼ 3000 lines of Cubical

codex
The generated PDF confirms the `cleveref` problem: references such as `\Cref{def:UAC}` render as “Theorem 2.4” even though the target heading says “Definition 2.4”. I’m running one read-only linter pass now to catch any source formatting issues beyond the build log.
exec
/usr/local/bin/zsh -lc 'chktex -q papers/latex/langlands-analytic-number-theory.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 131: Intersentence spacing (`\@') should perhaps be used.
Langlands programme have not been substantially reformulated in HoTT. The  
                                                                    ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 142: Wrong length of dash may have been used.
inductive--inductive type, as the analytic limit of an Euler product, and as  
         ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 145: Wrong length of dash may have been used.
Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze  
                            ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 145: Wrong length of dash may have been used.
Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze  
                                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 145: Wrong length of dash may have been used.
Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze  
                                                                ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 147: Wrong length of dash may have been used.
Loeffler--Stoll Lean 4 / Mathlib formalization of the Riemann zeta function  
        ^^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 181: You should put a space in front of parenthesis.
\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}  
                                                  ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 195: Non-breaking space (`~') should have been used.
\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 209: Non-breaking space (`~') should have been used.
\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 229: Wrong length of dash may have been used.
\item Compares HoTT and Clausen--Scholze condensed mathematics, identifying  
                               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 231: Wrong length of dash may have been used.
\item Compares with the Loeffler--Stoll 2025 Lean formalization, both as a  
                                ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 243: Intersentence spacing (`\@') should perhaps be used.
\item Claim that HoTT methods will, in principle, prove RH; we are agnostic  
                                                          ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 250: Wrong length of dash may have been used.
Loeffler--Stoll's Mathlib code.  
        ^^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 254: Interword spacing (`\ ') should perhaps be used.
A clarifying distinction. \emph{Algebraic number theory} studies  
                         ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 282: Intersentence spacing (`\@') should perhaps be used.
\Cref{sec:condensed} compares condensed mathematics and HoTT.  
                                                            ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 283: Wrong length of dash may have been used.
\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.  
                                               ^^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 301: You should perhaps use `\lim' instead.
\mathsf{lim} &: \Pi(x:\Q^+ \to \Rc).\, \mathsf{IsCauchy}(x) \to \Rc \\  
        ^^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 305: Non-breaking space (`~') should have been used.
$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.  
               ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 431: Non-breaking space (`~') should have been used.
\cite{Booij2020}.  
^
Warning 1 in papers/latex/langlands-analytic-number-theory.tex line 439: Command terminated with space.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                        ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 439: Use either `` or '' as an alternative to `"'.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                   ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 439: Use either `` or '' as an alternative to `"'.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                                ^
Warning 1 in papers/latex/langlands-analytic-number-theory.tex line 439: Command terminated with space.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                                        ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 440: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
            ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 440: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
                  ^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 440: You should put a space in front of parenthesis.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
                                   ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 441: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
            ^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 441: You should put a space in front of parenthesis.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
                        ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 441: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
                                 ^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 442: You should put a space in front of parenthesis.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 442: Use either `` or '' as an alternative to `"'.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 442: Use either `` or '' as an alternative to `"'.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                             ^
Warning 1 in papers/latex/langlands-analytic-number-theory.tex line 442: Command terminated with space.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                                       ^
Warning 24 in papers/latex/langlands-analytic-number-theory.tex line 448: Delete this space to maintain correct pagereferences.
\label{fig:chain}  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 467: Wrong length of dash may have been used.
clopen requires constructive analogues of Bolzano--Weierstrass.  
                                                 ^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 472: You should enclose the previous parenthesis with `{}'.
\item \emph{Hurwitz zeta} method: define $\zeta(s,a) = \sum_{n \geq 0}(n+a)^{-s}$  
                                                                          ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 505: You should enclose the previous parenthesis with `{}'.
that $|a(\epsilon)^2 - 2| < \epsilon$. Then $a$ is a Cauchy modulus and  
                 ^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 506: You should perhaps use `\lim' instead.
$\mathsf{lim}(a, \mathsf{IsCauchy}_a):\Rc$ is $\sqrt{2}$. Equality  
         ^^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 507: You should enclose the previous parenthesis with `{}'.
$(\sqrt{2})^2 = 2$ in $\Rc$ follows from the equality constructor  
          ^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 512: You should perhaps use `\lim' instead.
$e := \mathsf{lim}((\epsilon \mapsto \sum_{k=0}^{N(\epsilon)} 1/k!),  
              ^^^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 521: You should perhaps use `\lim' instead.
\pi \;:=\; \mathsf{lim}\!\bigl(  
                   ^^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 536: Intersentence spacing (`\@') should perhaps be used.
We now propose three approaches to defining $\zeta$ inside HoTT.  
                                                               ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 570: You should enclose the previous parenthesis with `{}'.
$\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)\cos(\pi s/2)\zeta(s)$.  
                    ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 604: You should enclose the previous parenthesis with `{}'.
\zeta_E(s) := \prod_{p \in \mathbb{P}} (1 - p^{-s})^{-1}  
                                                  ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 619: You should enclose the previous parenthesis with `{}'.
\prod_p (1 - p^{-s})^{-1}  
                   ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 649: Intersentence spacing (`\@') should perhaps be used.
and ``open'' is interpreted appropriately in cohesive HoTT.  
                                                          ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 682: You should enclose the previous parenthesis with `{}'.
\zeta(1-s) = 2 (2\pi)^{-s} \Gamma(s) \cos(\pi s / 2) \zeta(s).  
                    ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 696: Intersentence spacing (`\@') should perhaps be used.
None of these are presently formalized in HoTT. They are all formalized in  
                                              ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 697: Wrong length of dash may have been used.
classical Lean 4 / Mathlib (Loeffler--Stoll, 2025).  
                                    ^^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 718: You should put a space in front of parenthesis.
\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2) = pi squared over 6}}\label{subsec:Basel}  
                                                                      ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 733: You should enclose the previous parenthesis with `{}'.
x^2 = \frac{\pi^2}{3} + 4\sum_{n=1}^{\infty} \frac{(-1)^n \cos(nx)}{n^2}.  
                                                      ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 753: Intersentence spacing (`\@') should perhaps be used.
\item Infinite-product convergence theory in HoTT.  
                                                 ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 787: Wrong length of dash may have been used.
Geometric Langlands has a categorical formulation due to Beilinson--Drinfeld  
                                                                  ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 788: Non-breaking space (`~') should have been used.
\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 788: Wrong length of dash may have been used.
\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is  
                                        ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 798: Non-breaking space (`~') should have been used.
\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 805: Non-breaking space (`~') should have been used.
\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 819: Wrong length of dash may have been used.
2-topos / very-large-universe setup (in the spirit of Riehl--Verity directed  
                                                           ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 831: Wrong length of dash may have been used.
The \emph{analytic} Langlands programme (Etingof--Frenkel--Kazhdan  
                                                ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 831: Wrong length of dash may have been used.
The \emph{analytic} Langlands programme (Etingof--Frenkel--Kazhdan  
                                                         ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 832: Non-breaking space (`~') should have been used.
\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the  
^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 846: You should put a space in front of parenthesis.
\subsection{Detailed example: \texorpdfstring{$GL(1)$}{GL(1)} Langlands and Hecke characters}\label{subsec:GL1}  
                                                         ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 908: Wrong length of dash may have been used.
Gaitsgory--Drinfeld equivalence comes equipped with a Hecke-eigensheaf  
         ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 913: Wrong length of dash may have been used.
\subsection{Physical interpretation: 4d \texorpdfstring{$\mathcal{N}=4$}{N=4} super-Yang--Mills}  
                                                                                        ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 916: Wrong length of dash may have been used.
Langlands as electric--magnetic duality (S-duality) of 4d  
                     ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 917: Wrong length of dash may have been used.
$\mathcal{N}=4$ super-Yang--Mills compactified on a Riemann surface.  
                          ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 920: Wrong length of dash may have been used.
\item A HoTT-native treatment of 4d $\mathcal{N}=4$ super-Yang--Mills via  
                                                              ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 935: Wrong length of dash may have been used.
with finite jointly-surjective covers. Pyknotic sets, due to Barwick--Haine,  
                                                                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 942: Wrong length of dash may have been used.
6-functor formalism of analytic stacks (Clausen--Scholze 2024) gives a  
                                               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 965: Wrong length of dash may have been used.
\item Solid abelian groups (in the sense of Clausen--Scholze) are an  
                                                   ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 972: Wrong length of dash may have been used.
\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others  
                                                           ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 999: Wrong length of dash may have been used.
The Clausen--Scholze 6-functor formalism for analytic  
           ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1019: Non-breaking space (`~') should have been used.
\cite{Riehl2021Elements}.  
^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1037: Intersentence spacing (`\@') should perhaps be used.
again — this is awkward classically and equally awkward in HoTT.  
                                                                 ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1040: Wrong length of dash may have been used.
A HoTT-native realisation of the Kubota--Leopoldt $p$-adic zeta function  
                                       ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1048: Wrong length of dash may have been used.
case}. Loeffler--Stoll formalize the archimedean case; the $p$-adic case has  
               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1054: Wrong length of dash may have been used.
\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}  
                                 ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1056: Wrong length of dash may have been used.
\subsection{What Loeffler--Stoll have}  
                         ^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1063: You should enclose the previous parenthesis with `{}'.
\item The Euler product $\zeta(s) = \prod_p (1-p^{-s})^{-1}$ on  
                                                     ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1066: You should enclose the previous parenthesis with `{}'.
\item The functional equation $\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)  
                                                  ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1108: Wrong length of dash may have been used.
A pragmatic approach: \emph{transport} the Loeffler--Stoll Lean  
                                                   ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1116: Wrong length of dash may have been used.
Loeffler--Stoll alongside conjectured HoTT analogues.  
        ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1119: Wrong length of dash may have been used.
In Mathlib (Loeffler--Stoll):  
                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1163: Wrong length of dash may have been used.
Theorem & Lean lines (Loeffler--Stoll) & Est.\ HoTT complexity \\  
                              ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1188: Non-breaking space (`~') should have been used.
\cite{Booij2020} for HoTT-native analysis benchmarks.  
^
Warning 24 in papers/latex/langlands-analytic-number-theory.tex line 1267: Delete this space to maintain correct pagereferences.
\label{fig:roadmap}  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1283: Wrong length of dash may have been used.
total effort behind Loeffler--Stoll plus its Mathlib dependencies.  
                            ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1295: Intersentence spacing (`\@') should perhaps be used.
``two non-equivalent proofs'' of RH. This is in contrast to a structural  
                                   ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1302: Intersentence spacing (`\@') should perhaps be used.
$\mathrm{RH}$ is \emph{not} decidable in HoTT: we have no algorithm  
                                             ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1352: Intersentence spacing (`\@') should perhaps be used.
independent of ZFC. In that case, HoTT might admit two consistent  
                  ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1360: Intersentence spacing (`\@') should perhaps be used.
zeros of $\zeta$ short of RH:  
                            ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1363: Wrong length of dash may have been used.
on $\mathrm{Re}(s) = 1$. Formalized in Lean by Loeffler--Stoll.  
                                                       ^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1366: You should enclose the previous parenthesis with `{}'.
\mathrm{Re}(s) > 1 - \frac{C}{(\log|t|)^{2/3}\,(\log\log|t|)^{1/3}}.  
                                      ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1366: You should enclose the previous parenthesis with `{}'.
\mathrm{Re}(s) > 1 - \frac{C}{(\log|t|)^{2/3}\,(\log\log|t|)^{1/3}}.  
                                                           ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1370: Wrong length of dash may have been used.
\item \textbf{Levinson--Conrey:} at least $40\%$ of zeros are on the  
                      ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1382: Intersentence spacing (`\@') should perhaps be used.
A subtle point about HoTT: \emph{some} statements about $\zeta$ are  
                         ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1394: Wrong length of dash may have been used.
$\zeta(s)$ requires the Riemann--Siegel formula or similar, which involves  
                               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1427: Wrong length of dash may have been used.
Lean Mathlib's success at formalizing analytic NT (Loeffler--Stoll 2025)  
                                                           ^^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 1437: You should put a space in front of parenthesis.
HoTT can match (1)--(3) at extra cost; (4) is a deeper foundational issue.  
                    ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1444: Non-breaking space (`~') should have been used.
\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is  
^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1445: Intersentence spacing (`\@') should perhaps be used.
viable in HoTT.  
              ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1447: Wrong length of dash may have been used.
A natural research direction is to lift the Loeffler--Stoll work into  
                                                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1470: Wrong length of dash may have been used.
\item Translate Loeffler--Stoll Lean to HoTT-axiomatised classical $\C$ as  
                        ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1475: Non-breaking space (`~') should have been used.
\cite{EFK2025AnalyticLanglands} in HoTT.  
^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1475: Intersentence spacing (`\@') should perhaps be used.
\cite{EFK2025AnalyticLanglands} in HoTT.  
                                       ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1485: Intersentence spacing (`\@') should perhaps be used.
Why is DTT relevant to analytic NT?  
                                  ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1541: Wrong length of dash may have been used.
Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete  
        ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1547: Wrong length of dash may have been used.
graduate-student-years to deliver a HoTT-native analogue of Loeffler--Stoll  
                                                                    ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1589: Non-breaking space (`~') should have been used.
\cite{Shulman2018Cohesive} adds:  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1644: Wrong length of dash may have been used.
Loeffler--Stoll, marking which lemmas would translate cleanly to HoTT.  
        ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1644: Intersentence spacing (`\@') should perhaps be used.
Loeffler--Stoll, marking which lemmas would translate cleanly to HoTT.  
                                                                     ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1669: You should enclose the previous parenthesis with `{}'.
\zeta(s) = \frac{\Gamma(1-s)}{2\pi i}\,\oint_C \frac{(-x)^{s-1}}{e^x - 1}\,dx,  
                                                        ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1707: Non-breaking space (`~') should have been used.
\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.  
^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 1757: Interword spacing (`\ ') should perhaps be used.
Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}  
                                   ^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 1798: Interword spacing (`\ ') should perhaps be used.
Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}  
                 ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1802: Wrong length of dash may have been used.
\textit{Proof of the geometric Langlands conjecture I--V}.  
                                                     ^^

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '188,212p;424,432p;784,806p;1015,1022p;1440,1446p;1470,1476p;1586,1590p;1704,1708p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   188	exist, but a univalent algebraic closure that is well-behaved with respect
   189	to univalence requires care: classical algebraic closures are
   190	unique-up-to-isomorphism, while a HoTT-native one is unique up-to-equivalence
   191	in the sense of univalence~\cite{Voevodsky2014}.
   192	\item A HoTT-native notion of \emph{holomorphic function} $\holo:(\Cc \to \Cc) \to \Type$.
   193	The classical definition uses a metric limit (Newton quotient) which is
   194	constructive but not synthetic. A more native approach uses cohesive HoTT
   195	\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
   196	\item A HoTT-native definition of $\zeta:\Cc \setminus \{1\} \to \Cc$ that
   197	agrees on $\mathrm{Re}(s)>1$ with $\sum_{n\geq 1} n^{-s}$ and analytically
   198	continues elsewhere. This requires either a higher inductive-inductive
   199	construction (HIIT) or an internal universal property of meromorphic
   200	extensions.
   201	\item A HoTT-native interpretation of the proposition
   202	\[
   203	\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2.
   204	\]
   205	Even getting to this statement is a research project.
   206	\end{enumerate}
   207	
   208	By contrast, in classical foundations Loeffler and Stoll
   209	\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
   210	Mathlib the entire infrastructure: $\zeta$, the analytic continuation, the
   211	functional equation, the Basel problem, non-vanishing on $\mathrm{Re}(s) \geq 1$,
   212	Dirichlet's theorem on primes in arithmetic progressions, and the formal
   424	\end{proposition}
   425	
   426	\begin{proof}[Proof sketch]
   427	Closed-under-addition is clear. For convolution, the abscissa of
   428	$a*b$ is bounded by $\max(\sigma_a, \sigma_b) + \log_2(\text{divisor sum})$,
   429	which is finite when both $\sigma_a, \sigma_b$ are. The full proof in HoTT
   430	uses the absolute-convergence variant of Fubini for $\Rc$-valued double sums
   431	\cite{Booij2020}.
   432	\end{proof}
   784	analytic in nature; the function-field case ($F = \F_q(X)$ for a curve $X$)
   785	is geometric, hence the name \emph{geometric Langlands}.
   786	
   787	Geometric Langlands has a categorical formulation due to Beilinson--Drinfeld
   788	\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
   789	the existence of an equivalence
   790	\[
   791	\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \,\simeq\, \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X))
   792	\]
   793	of $(\infty,1)$-categories, where $G$ is a reductive group, $\mathsf{Bun}_G$
   794	its moduli stack of $G$-bundles, $G^\vee$ the Langlands dual, and
   795	$\mathsf{LocSys}$ the de Rham moduli of local systems. This was
   796	\textbf{proven} in 2024 by Gaitsgory, Raskin, Rozenblyum, Arinkin, Beraldo,
   797	Chen, Cheng, Faergeman, Lin, Lysenko in five papers
   798	\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
   799	
   800	\subsection{\texorpdfstring{$(\infty,1)$}{(infty,1)}-categories vs.\ HoTT}
   801	
   802	By Lurie's higher topos theory~\cite{Lurie2009HTT} and higher
   803	algebra~\cite{LurieHA}, $(\infty,1)$-categories
   804	admit a model in simplicial sets (quasi-categories). Cisinski et al.\
   805	\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
   806	foundations of $(\infty,1)$-category theory} in which $(\infty,1)$-categories
  1015	
  1016	\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
  1017	Express the 6-functor formalism in HoTT internal language. The natural
  1018	setting: $(\infty,1)$-topoi indexed over a directed type / $(\infty,2)$-base
  1019	\cite{Riehl2021Elements}.
  1020	\end{problem}
  1021	
  1022	A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
  1440	
  1441	\emph{Differential cohesive HoTT}~\cite{Schreiber2013, Wellen2018} extends
  1442	HoTT with shape, flat, and sharp modalities. In this setting, smooth /
  1443	holomorphic / meromorphic become synthetic. Examples like
  1444	\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
  1445	viable in HoTT.
  1446	
  1470	\item Translate Loeffler--Stoll Lean to HoTT-axiomatised classical $\C$ as
  1471	a first benchmark.
  1472	\item Use the synthesis from~\cite{Long2026Synthesis} to attack
  1473	\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
  1474	\item Explore the analytic Langlands programme of EFK
  1475	\cite{EFK2025AnalyticLanglands} in HoTT.
  1476	\end{enumerate}
  1586	\subsection*{A.3 Cohesion (optional)}
  1587	
  1588	For synthetic-analytic statements, cohesive HoTT
  1589	\cite{Shulman2018Cohesive} adds:
  1590	\begin{itemize}
  1704	\Gamma(s/2)\zeta(s)$, satisfying $\xi(s) = \xi(1-s)$. Cleaner but uses the
  1705	same infrastructure.
  1706	\item \emph{Cohesive synthetic approach}: Inside differential cohesive HoTT
  1707	\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
  1708	Speculative.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '438,449p;1258,1268p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   438	\begin{tikzcd}[column sep=tiny, row sep=large]
   439	\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc
   440	  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)
   441	  \arrow[r, "\sum\frac{a(n)}{n^s}"]
   442	  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta
   443	\end{tikzcd}
   444	\caption{The prerequisite chain. Each arrow represents a non-trivial
   445	HoTT-native construction. The final arrow ($\mathsf{Dir} \to \zeta$) is the
   446	analytic continuation, and is the place at which the chain currently breaks
   447	in pure HoTT.}
   448	\label{fig:chain}
   449	\end{figure}
  1258	\begin{figure}[htbp]
  1259	\centering
  1260	\begin{tikzcd}[column sep=small, row sep=large]
  1261	\text{Sub-prob 1} \arrow[r] \arrow[dr] & \text{Sub-prob 2} \arrow[d] & \\
  1262	& \text{Sub-prob 3} \arrow[r] & \text{Sub-prob 4} \arrow[d] \\
  1263	& & \text{Sub-prob 5} \arrow[d] \\
  1264	& & \text{Sub-prob 6}
  1265	\end{tikzcd}
  1266	\caption{Dependency graph for the six sub-problems.}
  1267	\label{fig:roadmap}
  1268	\end{figure}

exec
/usr/local/bin/zsh -lc "pdftotext -layout papers/latex/langlands-analytic-number-theory.pdf - | sed -n '382,392p;956,986p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
          • Theta-function method: θ(t) :=            −πn2 t
                                              P
                                                 n∈Z e       satisfies modular invariance, and
            Mellin transforming gives ζ.
                                                   s−1
         • Contour integral method: integrate exx −1 around a Hankel contour.
       Each requires a substantial fragment of HoTT-native analysis: integration theory, mod-
       ular transformation laws, residue calculus.
    3. Computation in HoTT. Even given the existence and uniqueness, computing ζ at,
       say, s = −1 to obtain ζ(−1) = −1/12 requires either (i) symbolic manipulation of the
       analytic continuation, or (ii) numerical methods. HoTT proof assistants like Cubical
proof of ζ(2) = π 2 /6 and a formal HoTT statement of the Riemann hypothesis.

Sub-problem 1: HoTT-native Cc with full algebraic-closure axiom
Problem 7.1. Construct a HoTT type Cc : U that is provably an algebraic closure of Rc ,
with the universal property of Theorem 2.4, and verify that it admits the standard topology
and metric structure.

    Status: partially done in HoTT Book setting; algebraic closure not yet done.

Sub-problem 2: HoTT-native holomorphic functions
Problem 7.2. Define Theorem 2.7 formally; prove the Cauchy-Riemann equations, the
Cauchy integral formula, and the identity theorem (Theorem 3.6).

   Status: possible by direct constructive analysis. Estimated effort: ∼5000 lines of Agda
or Cubical Agda.

Sub-problem 3: HoTT-native Dirichlet series machinery
Problem 7.3. Formalize Theorem 2.9, prove Theorem 2.10, and construct the basic opera-
tions: shift, multiplication, logarithm, derivative.

   Status: our companion Haskell code provides a finite-precision prototype; HoTT for-
malisation pending.

Sub-problem 4: HoTT-native analytic continuation
Problem 7.4. Formalize the analytic-continuation theorem: a holomorphic function on a
connected open admitting a power-series at one boundary point extends holomorphically to
a neighbourhood of that point. Apply to ζ to obtain Theorem 3.7.

    Status: this is the key technical bottleneck.

Sub-problem 5: HoTT-native functional equation

exec
/usr/local/bin/zsh -lc "pdftotext -layout papers/latex/langlands-analytic-number-theory.pdf - | sed -n '600,614p;1306,1317p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
Equating Taylor coefficients of z 2 on both sides: −π 2 /6 = −       1/n2 , so ζ(2) = π 2 /6. HoTT-
                                                                 P
native version requires:
    • Infinite-product convergence theory in HoTT.

    • Term-by-term Taylor expansion of the product (Abel-Mertens-style manipulation).

    • Product-to-sum identity, valid on absolute convergence.
   Either approach requires roughly the same prerequisite chain: Theorem 7.1–Theorem 7.3,
plus some elementary measure / convergence theory. Theorem 7.4 is not needed for this
specific theorem because s = 2 is in the half-plane of absolute convergence.
Remark 3.14. Theorem 3.13 is a lower-bound HoTT goal: it does not require analytic con-
tinuation or the functional equation. We propose it as the minimum viable target for HoTT-
native analytic NT — the analogue of “hello, world” for our roadmap.

    • Zeta.hs — partial zeta computations with explicit truncation.

    • Dirichlet.hs — Dirichlet series machinery, Dirichlet convolution, multiplicative func-
      tions.

    • Properties.hs — QuickCheck properties for the algebraic laws on Dirichlet series.

    • Proofs.hs — equational proofs of the Euler product identity, modulo a finite-truncation
      axiom.

    The Lean component at lean/langlands-analytic-number-theory/ contains:


exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1190,1255p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1190	
  1191	%---------------------------------------------------------------
  1192	\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
  1193	
  1194	We propose six concrete sub-problems whose collective resolution would yield
  1195	a HoTT-native proof of $\zeta(2) = \pi^2/6$ and a formal HoTT statement of
  1196	the Riemann hypothesis.
  1197	
  1198	\subsection*{Sub-problem 1: HoTT-native \texorpdfstring{$\Cc$}{Cc} with full algebraic-closure axiom}
  1199	\addcontentsline{toc}{subsection}{Sub-problem 1: HoTT-native complex numbers}
  1200	\begin{problem}\label{prob:1}
  1201	Construct a HoTT type $\Cc:\mathcal{U}$ that is provably an algebraic closure
  1202	of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
  1203	it admits the standard topology and metric structure.
  1204	\end{problem}
  1205	\textbf{Status:} partially done in HoTT Book setting; algebraic closure not
  1206	yet done.
  1207	
  1208	\subsection*{Sub-problem 2: HoTT-native holomorphic functions}
  1209	\addcontentsline{toc}{subsection}{Sub-problem 2: HoTT-native holomorphic functions}
  1210	\begin{problem}\label{prob:2}
  1211	Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
  1212	Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
  1213	\end{problem}
  1214	\textbf{Status:} possible by direct constructive analysis. Estimated effort:
  1215	$\sim$5000 lines of Agda or Cubical Agda.
  1216	
  1217	\subsection*{Sub-problem 3: HoTT-native Dirichlet series machinery}
  1218	\addcontentsline{toc}{subsection}{Sub-problem 3: HoTT-native Dirichlet series}
  1219	\begin{problem}\label{prob:3}
  1220	Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
  1221	construct the basic operations: shift, multiplication, logarithm, derivative.
  1222	\end{problem}
  1223	\textbf{Status:} our companion Haskell code provides a finite-precision
  1224	prototype; HoTT formalisation pending.
  1225	
  1226	\subsection*{Sub-problem 4: HoTT-native analytic continuation}
  1227	\addcontentsline{toc}{subsection}{Sub-problem 4: HoTT-native analytic continuation}
  1228	\begin{problem}\label{prob:4}
  1229	Formalize the analytic-continuation theorem: a holomorphic function on a
  1230	connected open admitting a power-series at one boundary point extends
  1231	holomorphically to a neighbourhood of that point. Apply to $\zeta$ to obtain
  1232	\Cref{def:ZetaUP}.
  1233	\end{problem}
  1234	\textbf{Status:} this is the key technical bottleneck.
  1235	
  1236	\subsection*{Sub-problem 5: HoTT-native functional equation}
  1237	\addcontentsline{toc}{subsection}{Sub-problem 5: HoTT-native functional equation}
  1238	\begin{problem}\label{prob:5}
  1239	Prove the functional equation \Cref{thm:FE} in HoTT, using either
  1240	(a) the Mellin-transform / theta-function method, or (b) Riemann's contour
  1241	integral method, or (c) a synthetic cohesive-HoTT proof using analytic-stack
  1242	duality.
  1243	\end{problem}
  1244	\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
  1245	
  1246	\subsection*{Sub-problem 6: HoTT-native formal RH statement}
  1247	\addcontentsline{toc}{subsection}{Sub-problem 6: HoTT-native RH statement}
  1248	\begin{problem}\label{prob:6}
  1249	Write down a HoTT proposition $\mathrm{RH}:\Prop$ such that $\mathrm{RH}$
  1250	inhabits if and only if every non-trivial zero of $\zeta$ has real part
  1251	$1/2$. Verify this is the same statement as the classical RH, modulo the
  1252	ambient model.
  1253	\end{problem}
  1254	\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
  1255	

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.toc | sed -n '40,60p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
    40	\contentsline {subsection}{\numberline {5.6}Solid modules over $\mathbb {Z}$ and $p$-adic interaction}{18}{subsection.5.6}%
    41	\contentsline {section}{\numberline {6}Comparison with Loeffler--Stoll Lean Formalization}{18}{section.6}%
    42	\contentsline {subsection}{\numberline {6.1}What Loeffler--Stoll have}{18}{subsection.6.1}%
    43	\contentsline {subsection}{\numberline {6.2}What Lean / Mathlib provides that HoTT lacks}{19}{subsection.6.2}%
    44	\contentsline {subsection}{\numberline {6.3}What HoTT could offer}{19}{subsection.6.3}%
    45	\contentsline {subsection}{\numberline {6.4}Strategy: HoTT as classical-foundation transport}{19}{subsection.6.4}%
    46	\contentsline {subsection}{\numberline {6.5}Code-level comparison: signature against signature}{19}{subsection.6.5}%
    47	\contentsline {paragraph}{The zeta function itself.}{19}{section*.5}%
    48	\contentsline {paragraph}{The functional equation.}{20}{section*.6}%
    49	\contentsline {paragraph}{Non-vanishing on $\mathrm {Re}(s) \geq 1$.}{20}{section*.7}%
    50	\contentsline {paragraph}{Riemann hypothesis.}{20}{section*.8}%
    51	\contentsline {subsection}{\numberline {6.6}Quantitative comparison}{20}{subsection.6.6}%
    52	\contentsline {section}{\numberline {7}Six Sub-Problems for HoTT-Native $\zeta $}{21}{section.7}%
    53	\contentsline {subsection}{Sub-problem 1: HoTT-native complex numbers}{21}{section*.9}%
    54	\contentsline {subsection}{Sub-problem 2: HoTT-native holomorphic functions}{21}{section*.10}%
    55	\contentsline {subsection}{Sub-problem 3: HoTT-native Dirichlet series}{21}{section*.11}%
    56	\contentsline {subsection}{Sub-problem 4: HoTT-native analytic continuation}{21}{section*.12}%
    57	\contentsline {subsection}{Sub-problem 5: HoTT-native functional equation}{21}{section*.13}%
    58	\contentsline {subsection}{Sub-problem 6: HoTT-native RH statement}{22}{section*.14}%
    59	\contentsline {subsection}{\numberline {7.1}Composition diagram}{22}{subsection.7.1}%
    60	\contentsline {subsection}{\numberline {7.2}Estimated effort and milestones}{22}{subsection.7.2}%

codex
**Findings**

1. [lines 46-56](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:46): `\Cref` renders definitions/problems/remarks/conjectures as “Theorem”. Example: [line 343](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:343) prints “Theorem 2.4” for `def:UAC`.  
Fix: use `aliascnt` counters for each theorem-like environment, or use `\label[definition]{...}`/`\label[problem]{...}` plus `\crefname`/`\Crefname`.

2. [line 773](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:773): math in the section title is not wrapped for PDF strings, causing hyperref warnings and a broken bookmark: `(,1)-Topoi`.  
Fix:
```tex
\section{Geometric Langlands in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-Topoi}\label{sec:langlands}
```

3. [line 22](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:22) and [line 60](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:60): `everypage` emits legacy-package warnings under current LaTeX.  
Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook` with native LaTeX hooks such as `\AddToHook{shipout/foreground}{...}`.

4. [lines 740-742](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:740): overfull hbox, 0.63345pt.  
Fix: rephrase to give TeX better breakpoints, e.g. “HoTT-native trigonometric functions, definable as power series and therefore valued in the HIIT $\Rc$.”

5. [lines 1635-1637](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1635): overfull hbox, 3.42818pt.  
Fix: shorten or split the item, e.g. “equational proofs of the Euler product identity, modulo finite truncation.”

6. Citation spacing is inconsistent in several places where a citation follows prose with a normal breakable space: [195](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:195), [209](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:209), [431](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:431), [788](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:788), [798](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:798), [805](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:805), [832](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:832), [1019](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1019), [1444](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1444), [1475](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1475), [1589](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1589), [1707](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1707).  
Fix: use nonbreaking citation spacing, e.g. `HoTT~\cite{...}`.

7. Build artifacts are not settled: the current log reports “Label(s) may have changed” and `.out` changed.  
Fix: after source fixes, rebuild with `latexmk -pdf papers/latex/langlands-analytic-number-theory.tex` or run `pdflatex` until the warnings disappear.

No compilation errors, missing packages, undefined references, undefined citations, or duplicate labels were found in the current artifacts.

VERDICT: NEEDS_FIX
2026-05-04T23:55:18.953920Z ERROR codex_core::session: failed to record rollout items: thread 019df562-68e3-75a0-b4d0-11520646c099 not found
tokens used
111,467
**Findings**

1. [lines 46-56](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:46): `\Cref` renders definitions/problems/remarks/conjectures as “Theorem”. Example: [line 343](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:343) prints “Theorem 2.4” for `def:UAC`.  
Fix: use `aliascnt` counters for each theorem-like environment, or use `\label[definition]{...}`/`\label[problem]{...}` plus `\crefname`/`\Crefname`.

2. [line 773](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:773): math in the section title is not wrapped for PDF strings, causing hyperref warnings and a broken bookmark: `(,1)-Topoi`.  
Fix:
```tex
\section{Geometric Langlands in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-Topoi}\label{sec:langlands}
```

3. [line 22](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:22) and [line 60](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:60): `everypage` emits legacy-package warnings under current LaTeX.  
Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook` with native LaTeX hooks such as `\AddToHook{shipout/foreground}{...}`.

4. [lines 740-742](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:740): overfull hbox, 0.63345pt.  
Fix: rephrase to give TeX better breakpoints, e.g. “HoTT-native trigonometric functions, definable as power series and therefore valued in the HIIT $\Rc$.”

5. [lines 1635-1637](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1635): overfull hbox, 3.42818pt.  
Fix: shorten or split the item, e.g. “equational proofs of the Euler product identity, modulo finite truncation.”

6. Citation spacing is inconsistent in several places where a citation follows prose with a normal breakable space: [195](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:195), [209](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:209), [431](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:431), [788](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:788), [798](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:798), [805](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:805), [832](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:832), [1019](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1019), [1444](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1444), [1475](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1475), [1589](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1589), [1707](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1707).  
Fix: use nonbreaking citation spacing, e.g. `HoTT~\cite{...}`.

7. Build artifacts are not settled: the current log reports “Label(s) may have changed” and `.out` changed.  
Fix: after source fixes, rebuild with `latexmk -pdf papers/latex/langlands-analytic-number-theory.tex` or run `pdflatex` until the warnings disappear.

No compilation errors, missing packages, undefined references, undefined citations, or duplicate labels were found in the current artifacts.

VERDICT: NEEDS_FIX

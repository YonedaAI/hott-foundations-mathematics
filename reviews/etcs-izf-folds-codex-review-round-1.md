---
reviewer: codex (OpenAI)
type: formatting
paper: etcs-izf-folds
round: 1
date: 2026-05-04T23:32:14Z
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
session id: 019df555-d131-7ad1-bf26-f5dcf5f867e5
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll inspect the TeX source and, where possible, run a local LaTeX build to separate real compile/log issues from style-only concerns. I’ll keep this read-only and cite exact line numbers.
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
reviews/etcs-izf-folds-review-round-1.md
reviews/infinity-nno-review.md
reviews/directed-univalence-review.md
reviews/etcs-izf-folds-codex-review-round-1.md
reviews/directed-univalence-codex-review-round-1.md
reviews/infinity-nno-codex-review-round-1.md
reviews/directed-univalence-review-round-1.md
reviews/coalgebraic-transcendentals-review-round-1.md
reviews/langlands-analytic-number-theory-review-round-1.md
reviews/etcs-izf-folds-review.md
reviews/infinity-nno-review-round-1.md
reviews/cubical-hiit-cauchy-review-round-2.md
papers/latex/infinity-nno.tex
papers/latex/directed-univalence.out
papers/latex/langlands-analytic-number-theory.aux
papers/latex/coalgebraic-transcendentals.tex
papers/latex/langlands-analytic-number-theory.log
papers/latex/directed-univalence.tex
papers/latex/directed-univalence.toc
papers/latex/cubical-hiit-cauchy.aux
papers/latex/cubical-hiit-cauchy.log
papers/latex/etcs-izf-folds.aux
papers/latex/etcs-izf-folds.log
papers/latex/directed-univalence.log
papers/latex/directed-univalence.aux
papers/latex/langlands-analytic-number-theory.out
papers/latex/cubical-hiit-cauchy.toc
papers/latex/cubical-hiit-cauchy.tex
papers/latex/etcs-izf-folds.pdf
papers/latex/cubical-hiit-cauchy.out
papers/latex/langlands-analytic-number-theory.toc
papers/latex/langlands-analytic-number-theory.tex
papers/latex/langlands-analytic-number-theory.pdf
papers/latex/etcs-izf-folds.toc
papers/latex/etcs-izf-folds.tex
papers/latex/etcs-izf-folds.out
lean/langlands-analytic-number-theory/Zeta.lean
lean/directed-univalence/Directed.lean
lean/coalgebraic-transcendentals/Streams.lean
lean/etcs-izf-folds/ETCS.lean
lean/infinity-nno/NNO.lean
lean/cubical-hiit-cauchy/Reals.lean

exec
/usr/local/bin/zsh -lc 'rg -n "hott|etcs|izf|latex|overfull|underfull" /Users/mlong/.codex/memories/MEMORY.md' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
codex
There were no relevant prior-memory hits for this paper, so I’m working from the repository contents. I found an existing PDF/log, and I’m reading both the source and build output before deciding what is actionable.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	\usepackage{mathtools}
     6	
     7	% Diagrams
     8	\usepackage{tikz-cd}
     9	\usepackage{tikz}
    10	
    11	% References
    12	\usepackage{hyperref}
    13	\usepackage{cleveref}
    14	
    15	% Graphics
    16	\usepackage{graphicx}
    17	
    18	% Page layout
    19	\usepackage[margin=1in]{geometry}
    20	
    21	% GrokRxiv sidebar
    22	\usepackage{everypage}
    23	\usepackage{xcolor}
    24	
    25	% Theorem environments
    26	\newtheorem{theorem}{Theorem}[section]
    27	\newtheorem{proposition}[theorem]{Proposition}
    28	\newtheorem{lemma}[theorem]{Lemma}
    29	\newtheorem{corollary}[theorem]{Corollary}
    30	\newtheorem{conjecture}[theorem]{Conjecture}
    31	\theoremstyle{definition}
    32	\newtheorem{definition}[theorem]{Definition}
    33	\newtheorem{example}[theorem]{Example}
    34	\theoremstyle{remark}
    35	\newtheorem{remark}[theorem]{Remark}
    36	
    37	% Brackets for semantic interpretation
    38	\providecommand{\llbracket}{[\![}
    39	\providecommand{\rrbracket}{]\!]}
    40	
    41	% GrokRxiv sidebar definition
    42	\definecolor{grokgray}{RGB}{110,110,110}
    43	\AddEverypageHook{%
    44	  \ifnum\value{page}=1
    45	    \begin{tikzpicture}[remember picture, overlay]
    46	      \node[
    47	        rotate=90,
    48	        anchor=south,
    49	        font=\Large\sffamily\bfseries\color{grokgray},
    50	        inner sep=0pt
    51	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    52	      {GrokRxiv:2026.05.etcs-izf-folds\quad
    53	       [\,math.LO\,]\quad
    54	       04 May 2026};
    55	    \end{tikzpicture}
    56	  \fi
    57	}
    58	
    59	\title{ETCS, IZF, and FOLDS:\\
    60	Comparative Structural Foundations and the Univalence Boundary}
    61	
    62	\author{Matthew Long \\
    63	\textit{The YonedaAI Collaboration} \\
    64	\textit{YonedaAI Research Collective} \\
    65	Chicago, IL \\
    66	\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
    67	
    68	\date{4 May 2026}
    69	
    70	\begin{document}
    71	
    72	\maketitle
    73	
    74	\begin{abstract}
    75	We undertake a three-way structural comparison of three foundational systems: Lawvere's
    76	Elementary Theory of the Category of Sets (ETCS, 1964), Friedman's Intuitionistic
    77	Zermelo--Fraenkel set theory (IZF), and Makkai's First-Order Logic with Dependent Sorts
    78	(FOLDS, 1995); and we measure each against the Homotopy Type Theory (HoTT) frame in
    79	which the Univalence Axiom acts as a structural watermark. We give precise statements of
    80	all three axiomatisations, present the bi-interpretation theorems linking them
    81	(McLarty 2004 for ETCS $\equiv$ Bounded Zermelo + Replacement; Friedman--Aczel for IZF;
    82	Makkai's invariance theorem for FOLDS), and analyse which foundational principles in each
    83	system become \emph{theorems} (rather than axioms) in HoTT once Univalence is assumed.
    84	We identify what we call the \emph{univalence boundary}: the locus separating those
    85	structural principles whose validity in a foundation requires univalence (e.g.\ the
    86	Structure Identity Principle, full FOLDS-equivalence, indiscernibility of structurally
    87	isomorphic objects) from those that hold in much weaker fragments (e.g.\ existence of
    88	NNO, Replacement, the validity of equivalence-invariant first-order proofs). We
    89	formalise the comparison as a square of interpretations, identify three open problems on
    90	the univalence side, and provide companion code in Haskell (with QuickCheck-style
    91	invariance tests) and Lean~4 (Mathlib's \texttt{CategoryTheory}) demonstrating ETCS
    92	axioms, FOLDS signatures, and the invariance check. The paper continues the categorical
    93	foundations programme of Paper~VI of our prior series and complements Papers~II--V on
    94	HoTT.
    95	\end{abstract}
    96	
    97	\tableofcontents
    98	
    99	\section{Introduction}
   100	\label{sec:intro}
   101	
   102	\subsection{Why three foundations}
   103	
   104	The phrase ``foundations of mathematics'' is in 2026 plural by both fact and conviction.
   105	A working mathematician encountering structures up to isomorphism (vector spaces, groups,
   106	topological spaces, schemes, $\infty$-categories) needs an underlying logic that respects
   107	the equivalence principle: \emph{isomorphic objects share their mathematical content}.
   108	Classical Zermelo--Fraenkel set theory with Choice (ZFC), the de facto standard since the
   109	1920s, supports this principle only by a sociological convention --- the convention to
   110	prove only structural properties --- but the formalism itself permits non-structural
   111	predicates such as ``$\emptyset \in 7$'' (a sentence whose truth value depends on
   112	Kuratowski's particular encoding of pairs).
   113	
   114	The three foundational alternatives we examine in this paper each respond to that
   115	inadequacy in a different way:
   116	\begin{itemize}
   117	\item \textbf{ETCS (Lawvere 1964)} replaces the universe of sets-with-membership by a
   118	\emph{category} of sets-with-functions, axiomatised structurally as a well-pointed topos
   119	with a natural numbers object (NNO) and a choice operator;
   120	\item \textbf{IZF (Friedman 1973, Myhill, Aczel)} keeps the membership predicate but
   121	moves to intuitionistic logic, accepting full Separation, Replacement, Powerset, and
   122	Infinity while rejecting Excluded Middle and Choice; structuralism is enforced indirectly
   123	via realisability and topos-valued models;
   124	\item \textbf{FOLDS (Makkai 1995)} re-engineers the underlying \emph{logic} so that only
   125	isomorphism-invariant predicates are expressible; the equivalence principle is a metatheorem
   126	of the syntax rather than a moral imperative.
   127	\end{itemize}
   128	
   129	Each is motivated by the search for a logical environment in which equivalence-invariance
   130	is built in. Each succeeds for a different reason. And each has a precise relationship
   131	to HoTT, the foundation introduced by Voevodsky (2010) in which equivalence-invariance is
   132	proven as a theorem (the Univalence Axiom and its corollary, the Structure Identity
   133	Principle).
   134	
   135	\subsection{Structural vs material set theory}
   136	
   137	Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the
   138	following terminology.
   139	
   140	\begin{definition}[Material set theory]
   141	A set theory is \emph{material} if its primitive non-logical relation is membership
   142	$\in$, with sets identified by extensionality (two sets are equal iff they have the same
   143	elements), and where the universe of discourse is a single class of all sets ranging over
   144	a $\in$-tree.
   145	\end{definition}
   146	
   147	\begin{definition}[Structural set theory]
   148	A set theory is \emph{structural} if its primitive notions are sets and functions
   149	(equivalently: the objects and morphisms of a category), with sets identified up to
   150	unique isomorphism, and where membership is a derived notion ($x\in A$ means
   151	``$x:1\to A$ is a global element'').
   152	\end{definition}
   153	
   154	ZFC and IZF are material; ETCS and Lawvere's ETCC (Elementary Theory of the Category of
   155	Categories) are structural; FOLDS is neither --- it is a logic, applicable to either
   156	flavour, but designed so that even when interpreted materially, only structural sentences
   157	are syntactically expressible. HoTT is structural (in fact \emph{higher-structural}: types
   158	are identified up to higher equivalence).
   159	
   160	\subsection{The univalence boundary}
   161	
   162	The methodological question that organises this paper is:
   163	\begin{quote}
   164	\emph{Of the principles, axioms, and metatheorems that distinguish ETCS, IZF, and FOLDS,
   165	which become theorems in HoTT (with univalence) and which do not?}
   166	\end{quote}
   167	
   168	A principle that becomes a theorem under HoTT+UA but not under HoTT alone (i.e.\ the
   169	$(-1)$-truncated fragment, or the propositions-as-subsingletons fragment) lies on the
   170	\emph{far} side of the univalence boundary: it is \emph{conditional on} univalence.
   171	A principle that holds without univalence lies on the \emph{near} side: it is
   172	unconditional.
   173	
   174	We will argue in \cref{sec:boundary} that the boundary cuts as follows:
   175	
   176	\begin{center}
   177	\begin{tabular}{|l|c|c|c|c|}
   178	\hline
   179	\textbf{Principle} & ETCS & IZF & FOLDS & Needs UA in HoTT? \\
   180	\hline
   181	NNO existence & axiom & theorem & expressible & no \\
   182	Function extensionality & theorem & theorem & axiom & implied by UA\(^{*}\) \\
   183	Propositional extensionality & theorem & theorem & expressible & no \\
   184	Structure Identity Principle & metatheorem & --- & metatheorem & \textbf{yes} \\
   185	FOLDS-equivalence $=$ identity & --- & --- & metatheorem & \textbf{yes} \\
   186	Excluded middle & axiom & rejected & expressible & independent \\
   187	Choice & axiom (AC) & rejected & expressible & independent (PEM+AC) \\
   188	Replacement & axiom & axiom & --- & theorem (small types) \\
   189	Powerset & derived & axiom & --- & axiom (impredicative $\Omega$) \\
   190	\hline
   191	\end{tabular}
   192	\end{center}
   193	
   194	\noindent\(^{*}\)Function extensionality (FE) is a theorem of HoTT~+~UA (Voevodsky) but is
   195	independent of MLTT alone; see \cref{sec:hott} and \cref{thm:fefar} for the precise
   196	nuance.
   197	
   198	\subsection{Outline}
   199	\Cref{sec:etcs} states the eight-axiom presentation of ETCS, proves the elementary
   200	consequences (NNO, products, exponentials), and recalls McLarty's bi-interpretation
   201	theorem with Bounded Zermelo + Replacement.
   202	\Cref{sec:izf} presents IZF, contrasts it with CZF and ZFC, and discusses the
   203	realisability and topos-valued models that connect IZF to HoTT.
   204	\Cref{sec:folds} develops Makkai's signature theory, defines FOLDS-equivalence, and
   205	proves Makkai's Invariance Theorem (every FOLDS-formula is invariant under FOLDS-equivalence).
   206	\Cref{sec:hott} reframes HoTT as the unifying framework: which structural principles
   207	become theorems, which need univalence.
   208	\Cref{sec:models} surveys models: ETCS in toposes, FOLDS in fibrations, HoTT in
   209	$(\infty,1)$-toposes.
   210	\Cref{sec:boundary} formally analyses the univalence boundary.
   211	\Cref{sec:open} states three open problems.
   212	\Cref{sec:conclusion} concludes.
   213	
   214	\section{ETCS: The Elementary Theory of the Category of Sets}
   215	\label{sec:etcs}
   216	
   217	\subsection{The eight axioms}
   218	
   219	ETCS is a first-order theory in the language of categories (objects, morphisms,
   220	composition, identity). The eight axioms below follow Lawvere's original 1964 PNAS paper
   221	\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and
   222	McLarty \cite{McLarty2004}.
   223	
   224	\begin{definition}[ETCS axioms]
   225	\label{def:etcs}
   226	A category $\mathcal{S}$ \emph{models ETCS} iff it satisfies:
   227	\begin{enumerate}
   228	\item[(A1)] $\mathcal{S}$ has finite limits (terminal object $1$, binary products $A\times B$,
   229	equalisers).
   230	\item[(A2)] $\mathcal{S}$ is Cartesian closed: for any objects $A,B$ there is an
   231	exponential $B^A$ with evaluation $\mathrm{ev}: B^A \times A \to B$ enjoying the universal
   232	property of $\lambda$-abstraction.
   233	\item[(A3)] $\mathcal{S}$ has a subobject classifier: an object $\Omega$ with a morphism
   234	$\top: 1 \to \Omega$ such that every monomorphism $m: A \hookrightarrow B$ arises as the
   235	pullback of $\top$ along a unique characteristic morphism $\chi_m : B \to \Omega$.
   236	\item[(A4)] $\mathcal{S}$ has a natural numbers object: an object $\mathbb{N}$ with maps
   237	$0:1\to \mathbb{N}$ and $s:\mathbb{N}\to \mathbb{N}$ such that for every $(X, x_0:1\to X,
   238	f:X\to X)$ there is a unique morphism $h:\mathbb{N}\to X$ with $h\circ 0 = x_0$ and
   239	$h\circ s = f\circ h$.
   240	\item[(A5)] $\mathcal{S}$ is well-pointed: if $f,g:A\to B$ are distinct morphisms, then
   241	there exists $x:1\to A$ with $f\circ x \ne g\circ x$.
   242	\item[(A6)] (Axiom of choice) Every epimorphism $e: A \twoheadrightarrow B$ has a section
   243	$s: B \to A$ with $e \circ s = \mathrm{id}_B$.
   244	\item[(A7)] (Two-valuedness; derivable from A5--A6 and A8) Any morphism $f:1\to \Omega$
   245	equals either $\top$ or $\bot$, where $\bot$ is the unique map factoring through the
   246	initial object. Listed for didactic completeness; see the remark below.
   247	\item[(A8)] (Non-degeneracy) $0\not\cong 1$ (the initial object is not isomorphic to the
   248	terminal).
   249	\end{enumerate}
   250	\end{definition}
   251	
   252	\begin{remark}
   253	A1+A2+A3 alone make $\mathcal{S}$ an \emph{elementary topos} in the sense of
   254	Lawvere--Tierney. Adding A4 gives a \emph{topos with NNO}. Adding A5--A8 specialises to
   255	``topos behaving like classical sets''. Equivalently, an ETCS model is a well-pointed
   256	topos with NNO and choice. Two-valuedness (A7) follows from well-pointedness plus
   257	non-degeneracy when AC is present.
   258	\end{remark}
   259	
   260	\subsection{Elementary consequences}

exec
/usr/local/bin/zsh -lc 'tail -n 80 papers/latex/etcs-izf-folds.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'rg -n "''^(Overfull|Underfull|!|LaTeX Warning|Package .* Warning|Package hyperref Warning|Missing character|Undefined control sequence|Reference .* undefined|Citation .* undefined|Rerun)" papers/latex/etcs-izf-folds.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
 be-tween sets) and iden-tity/composition,
 []

[14] [15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.

[16] [17] [18] [19] [20]
Overfull \hbox (23.90193pt too wide) in paragraph at lines 1173--1175
[]\OT1/cmr/m/n/12 Associativity: $\OMS/cmsy/m/n/12 8\OML/cmm/m/it/12 a; b; c; x
y; yz; abc \OT1/cmr/m/n/12 : \OML/cmm/m/it/12 M: P\OT1/cmr/m/n/12 (\OML/cmm/m/i
t/12 a; b; xy\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/
n/12 (\OML/cmm/m/it/12 xy; c; abc\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/
m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 b; c; yz\OT1/cmr/m/n/12 ) \OMS/cmsy/
m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; yz; abc[]\OT1/c
mr/m/n/12 ) \OMS/cmsy/m/n/12 )
 []

[21]
Overfull \hbox (8.78873pt too wide) in paragraph at lines 1230--1230
[]\OT1/cmr/bx/n/17.28 Discussion (ex-tended): Prac-ti-cal foun-da-tional choice
 
 []

[22] [23] [24] [25] (./etcs-izf-folds.aux)
 ***********
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
 ***********
Package rerunfilecheck Info: File `etcs-izf-folds.out' has not changed.
(rerunfilecheck)             Checksum: 3E4EE39D8AD84E7E0A636C65E5E5BB77;13441.
 ) 
Here is how much of TeX's memory you used:
 24379 strings out of 467525
 467957 string characters out of 5418982
 877230 words of memory out of 5000000
 52746 multiletter control sequences out of 15000+600000
 645318 words of font info for 104 fonts, out of 8000000 for 9000
 1141 hyphenation exceptions out of 8191
 116i,14n,121p,475b,996s stack positions out of 10000i,1000n,20000p,200000b,200000s
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb
></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></
usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb><
/usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></
usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></u
sr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr
/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/l
ocal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/loc
al/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/te
xlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmss12.pfb></usr/local/tex
live/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/te
xlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/tex
live/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2
026/texmf-dist/fonts/type1/public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/20
26/texmf-dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/symbols/msam10.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb></usr/local/tex
live/2026/texmf-dist/fonts/type1/public/cm-super/sfrm1200.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/cm-super/sfti1200.pfb>
Output written on etcs-izf-folds.pdf (25 pages, 369466 bytes).
PDF statistics:
 737 PDF objects out of 1000 (max. 8388607)
 655 compressed objects within 7 object streams
 167 named destinations out of 1000 (max. 500000)
 541 words of extra memory for PDF output out of 10000 (max. 10000000)


 succeeded in 0ms:
653:Package everypage Warning: Functionality similar to this package has recently
659:Package everypage Warning: You appear to be running a version of LaTeX
777:Overfull \hbox (52.87779pt too wide) in paragraph at lines 177--192
782:Overfull \hbox (6.22894pt too wide) in paragraph at lines 199--213
789:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
793:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
797:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
801:Overfull \hbox (20.90613pt too wide) in paragraph at lines 729--729
807:Overfull \hbox (20.95871pt too wide) in paragraph at lines 767--771
814:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
818:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
822:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
826:Overfull \hbox (23.90193pt too wide) in paragraph at lines 1173--1175
837:Overfull \hbox (8.78873pt too wide) in paragraph at lines 1230--1230

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   261	
   262	\begin{proposition}[Function extensionality in ETCS]
   263	\label{prop:etcsfunext}
   264	For $f,g: A\to B$, if $\forall x:1\to A,\, f\circ x = g\circ x$, then $f=g$.
   265	\end{proposition}
   266	\begin{proof}
   267	This is the contrapositive of well-pointedness (A5).
   268	\end{proof}
   269	
   270	\begin{proposition}[Power objects]
   271	\label{prop:etcspower}
   272	$\mathcal{S}$ has power objects $P(A) := \Omega^A$, with the standard adjunction
   273	$\mathrm{Sub}(B\times A)\cong \mathrm{Hom}(B, P(A))$.
   274	\end{proposition}
   275	\begin{proof}
   276	Combine A2 and A3: $P(A) = \Omega^A$ classifies subobjects of any product
   277	$B\times A$ via $\chi: B\times A \to \Omega$ uncurried as $\widetilde{\chi}:
   278	B\to \Omega^A$.
   279	\end{proof}
   280	
   281	\begin{theorem}[McLarty's bi-interpretation theorem]
   282	\label{thm:mclarty}
   283	ETCS and Bounded Zermelo set theory plus Replacement (\textbf{BZ}+\textbf{R}) are
   284	bi-interpretable: each can interpret the other, and the interpretations compose to the
   285	identity up to definable isomorphism.
   286	\end{theorem}
   287	\begin{proof}[Sketch]
   288	Given a model of ETCS, define a class of \emph{trees} as well-founded extensional
   289	quotients of pointed graphs internalised by the NNO and powerset; this gives a model of
   290	$\mathbf{BZ}+\mathbf{R}$. Conversely, given a model $V$ of $\mathbf{BZ}+\mathbf{R}$,
   291	define $\mathcal{S}_V$ to be the category of sets and functions inside $V$; one verifies
   292	A1--A8 directly. Composition produces models that are equivalent
   293	in the appropriate 2-categorical sense. Full proof in McLarty \cite{McLarty2004}; we
   294	return to it in \cref{sec:models}.
   295	\end{proof}
   296	
   297	\subsection{Encoding-free arithmetic}
   298	
   299	ETCS resolves Benacerraf's identification problem (Paper~II of our series) by making
   300	\emph{ordered pair} a primitive operation (the universal property of products) rather
   301	than the Kuratowski encoding $\langle a,b\rangle = \{\{a\},\{a,b\}\}$. Junk theorems
   302	such as ``$3 \in 7$'' (vacuously true under von Neumann ordinals: $3 = \{0,1,2\}$ and
   303	$7=\{0,\ldots,6\}$) are not formulable in the ETCS language: $3:1\to \mathbb{N}$ is a
   304	global element, $7:1\to \mathbb{N}$ likewise, and there is no membership predicate
   305	between them.
   306	
   307	\begin{example}
   308	$\mathbb{N} \times \mathbb{N}$ in ETCS is the categorical product of $\mathbb{N}$ with
   309	itself, characterised by the universal property; whether one uses Kuratowski pairs,
   310	Wiener pairs, or any other internal encoding to \emph{prove existence} inside
   311	$\mathbf{BZ+R}$ is irrelevant to the structural object so produced.
   312	\end{example}
   313	
   314	\subsection{Worked example: arithmetic via the recursor}
   315	
   316	We illustrate how arithmetic is developed structurally in ETCS using only the universal
   317	property of the NNO. Given the NNO $(\mathbb{N},0,s)$, define addition
   318	$+:\mathbb{N}\times\mathbb{N}\to\mathbb{N}$ as follows.
   319	
   320	\begin{definition}[Addition in ETCS]
   321	\label{def:etcsadd}
   322	The addition map $+: \mathbb{N}\times\mathbb{N}\to\mathbb{N}$ is the unique morphism
   323	satisfying:
   324	\begin{itemize}
   325	\item $+ \circ \langle 0_{\mathbb{N}}, \mathrm{id}_{\mathbb{N}}\rangle = \mathrm{id}_{\mathbb{N}}$ (left zero), and
   326	\item $+ \circ (s\times \mathrm{id}_{\mathbb{N}}) = s \circ +$ (left successor).
   327	\end{itemize}
   328	\end{definition}
   329	
   330	\begin{proposition}[Existence of addition]
   331	\label{prop:etcsadd}
   332	There exists a unique morphism $+$ as in \cref{def:etcsadd}.
   333	\end{proposition}
   334	\begin{proof}
   335	Apply the NNO universal property to the pointed endomorphism
   336	$(\mathbb{N}^{\mathbb{N}}, \mathrm{id}_{\mathbb{N}} : 1\to \mathbb{N}^{\mathbb{N}},
   337	\widehat{s\circ\mathrm{ev}}: \mathbb{N}^{\mathbb{N}}\to \mathbb{N}^{\mathbb{N}})$ where
   338	the basepoint is the constant function $\mathrm{id}_{\mathbb{N}}$ and the endomap is
   339	post-composition with $s$. This yields a unique
   340	$\widehat{+}: \mathbb{N} \to \mathbb{N}^{\mathbb{N}}$, which uncurries to
   341	$+: \mathbb{N}\times\mathbb{N}\to \mathbb{N}$ satisfying both equations.
   342	\end{proof}
   343	
   344	\begin{example}[Multiplication and exponentiation]
   345	Multiplication $\cdot$ is defined by the same recursion technique with
   346	$+$ in place of $s$:
   347	$\cdot\circ\langle 0,\mathrm{id}\rangle = 0$, $\cdot\circ (s\times \mathrm{id}) =
   348	+\circ\langle\mathrm{id},\cdot\rangle$.
   349	Exponentiation $\uparrow$ similarly: $\uparrow\circ\langle 0,\mathrm{id}\rangle = 1$,
   350	$\uparrow\circ (s\times \mathrm{id}) = \cdot\circ\langle\mathrm{id},\uparrow\rangle$.
   351	\end{example}
   352	
   353	\subsection{ETCS without choice}
   354	
   355	Removing A6 (choice) yields what is sometimes called \emph{ETCS-AC} or \emph{Topos+NNO+WP}
   356	(well-pointed topos with NNO). This system is consistent with both EM and $\neg$EM in
   357	non-trivial models. McLarty's bi-interpretation theorem extends to: ETCS-AC is
   358	bi-interpretable with $\mathbf{BZ}+\mathbf{R}$-AC. The constructive variant of ETCS
   359	(replace A5 well-pointedness by Kock's notion of subterminal-pointedness, drop A6 and A7)
   360	is bi-interpretable with appropriate fragments of IZF. We will see in
   361	\cref{sec:boundary} that AC is on the \emph{straddling} side of the univalence boundary.
   362	
   363	\subsection{Comparison with Awodey--Forssell categorical structuralism}
   364	
   365	Awodey \cite{Awodey2014} introduces a refined notion of \emph{structural foundation}: a
   366	formal system whose models satisfy isomorphism-invariance internally. ETCS satisfies
   367	this in the 1-categorical sense; its only non-invariant data are the choices of products,
   368	exponentials, etc., which are determined up to (unique) isomorphism. The
   369	``isomorphism-invariance'' guarantee in ETCS, however, is not a theorem of ETCS
   370	\emph{about itself}; it is a metatheorem (any two products are isomorphic; any property
   371	expressible in the categorical language is invariant under isomorphism). To make the
   372	guarantee \emph{internal}, one needs HoTT.
   373	
   374	\section{IZF: Intuitionistic Zermelo--Fraenkel}
   375	\label{sec:izf}
   376	
   377	\subsection{Axioms}
   378	
   379	IZF (Friedman 1973, Myhill, surveyed in
   380	\cite{StanfordIZFCZF}) is the system over intuitionistic first-order logic with equality
   381	and a binary predicate $\in$, having the following axioms.
   382	
   383	\begin{definition}[IZF axioms]
   384	\label{def:izf}
   385	We adopt the formulation of IZF using the strong \emph{Collection schema}
   386	(rather than the weaker Replacement schema); under intuitionistic logic, Collection is
   387	strictly stronger than Replacement, so this choice is significant. The remark following
   388	the definition discusses the difference.
   389	\begin{enumerate}
   390	\item[(I1)] (Extensionality) $\forall x\forall y\,[(\forall z\,(z\in x \Leftrightarrow
   391	z\in y))\Rightarrow x=y]$.
   392	\item[(I2)] (Empty set) $\exists x\, \forall y\,(y\notin x)$.
   393	\item[(I3)] (Pairing) $\forall x\forall y\, \exists z\,\forall w\,
   394	(w\in z\Leftrightarrow w=x\vee w=y)$.
   395	\item[(I4)] (Union) $\forall x\, \exists y\,\forall z\,(z\in y \Leftrightarrow \exists w
   396	\in x.\, z\in w)$.
   397	\item[(I5)] (Infinity) $\exists \omega\,(\emptyset\in\omega \wedge \forall x\in\omega.\,
   398	x\cup\{x\}\in\omega)$.
   399	\item[(I6)] (Full Separation) For every formula $\varphi(z)$, $\forall x\,\exists y\,
   400	\forall z\,(z\in y \Leftrightarrow z\in x \wedge \varphi(z))$.
   401	\item[(I7)] (Powerset) $\forall x\, \exists y\, \forall z\,(z\in y \Leftrightarrow z
   402	\subseteq x)$.
   403	\item[(I8)] (Collection) For every formula $\varphi(x,y)$, if $\forall x\in a.\,\exists
   404	y.\, \varphi(x,y)$, then $\exists b.\,\forall x\in a.\,\exists y\in b.\, \varphi(x,y)$.
   405	\item[(I9)] ($\in$-Induction) For every $\varphi$,
   406	$[\forall x\,((\forall y\in x.\,\varphi(y))\Rightarrow \varphi(x))]\Rightarrow \forall x.\,
   407	\varphi(x)$.
   408	\end{enumerate}
   409	The underlying logic is intuitionistic; \emph{Excluded Middle (EM)} and \emph{Choice (AC)}
   410	are not assumed.
   411	\end{definition}
   412	
   413	\begin{remark}
   414	A standard simplification replaces (I8) Collection by the weaker Replacement schema.
   415	Friedman's IZF uses Collection because, under intuitionistic logic, Collection is
   416	strictly stronger than Replacement: Replacement requires uniqueness of the witness, while
   417	Collection requires only existence. In classical logic, Collection is derivable from
   418	Replacement using EM; in IZF this implication fails.
   419	\end{remark}
   420	
   421	\subsection{IZF and ZFC: strength and divergence}
   422	
   423	\begin{theorem}[Friedman \cite{Friedman1973}]
   424	\label{thm:friedman}
   425	$\mathrm{ZF} = \mathrm{IZF} + \mathrm{EM}$, where $\mathrm{EM}$ is the schema
   426	$\varphi\vee\neg\varphi$ over the IZF language. Consequently, IZF and ZF are equiconsistent.
   427	\end{theorem}
   428	\begin{proof}[Sketch]
   429	Forward direction: $\mathrm{IZF}\subseteq \mathrm{ZF}$ definitionally, since classical
   430	logic includes intuitionistic logic and EM gives the rest. Reverse: every ZF axiom is in
   431	IZF except those needing EM in their classical forms, but Separation in IZF is full so
   432	the classical schema follows. The equiconsistency: any model of ZF is a model of
   433	IZF+EM; any model of IZF gives a Heyting-valued model that, under EM, becomes a model of
   434	ZF. Friedman's original proof uses double-negation translations.
   435	\end{proof}
   436	
   437	\begin{remark}[CZF vs IZF]
   438	Aczel's CZF (Constructive Zermelo--Fraenkel) replaces Powerset by \emph{Subset Collection}
   439	(or its equivalent \emph{Fullness} axiom) and Full Separation by \emph{Restricted
   440	Separation} (where $\varphi$ is bounded). CZF is significantly weaker than IZF:
   441	$\mathrm{CZF} \subsetneq \mathrm{IZF}$, and CZF is interpretable in Martin-L\"of type
   442	theory via Aczel's sets-in-types translation. IZF is impredicative
   443	(Powerset and Full Separation), which puts it in tension with the predicative spirit of
   444	MLTT and HoTT.
   445	\end{remark}
   446	
   447	\subsection{IZF, realisability, and HoTT}
   448	
   449	\begin{definition}[Realisability model]
   450	A \emph{realisability model} of IZF is a category-theoretic structure
   451	$(\mathbb{V}, \Vdash)$ where $\mathbb{V}$ is a class hierarchy and $\Vdash$ is a forcing
   452	relation specified by terms of an underlying calculus (e.g.\ untyped $\lambda$-calculus,
   453	PCAs, or partial combinatory algebras) such that the IZF axioms are forced.
   454	\end{definition}
   455	
   456	The connection to HoTT runs through the topos-theoretic interpretation. Hyland's
   457	effective topos $\mathcal{E}\!f\!f$ provides a realisability model in which IZF holds
   458	(via Full Separation, Collection, and Powerset using the lifted $\Omega$). Inside
   459	$\mathcal{E}\!f\!f$, the internal language is intuitionistic higher-order logic, which
   460	embeds into HoTT once we resolve coherence at higher levels. Shulman's results
   461	\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising
   462	to localic $(\infty,1)$-toposes gives realisability models of HoTT compatible with IZF.
   463	
   464	\begin{theorem}[Awodey--Warren propositions-as-types for IZF]
   465	\label{thm:awodey-warren}
   466	The $(-1)$-truncated fragment of HoTT (i.e.\ HoTT restricted to mere propositions)
   467	satisfies the IZF axioms in the following sense: there is an interpretation
   468	$\llbracket\cdot\rrbracket$ of IZF formulas into $(-1)$-truncated types such that
   469	$\mathrm{IZF}\vdash \varphi$ implies $\mathrm{HoTT}\vdash \llbracket\varphi\rrbracket$
   470	provided we add the propositional resizing axiom and the Mahlo--Universe axiom needed for
   471	Replacement.
   472	\end{theorem}
   473	\begin{proof}[Sketch]
   474	Each IZF set is interpreted as a well-founded $\mathbb{V}$-structure
   475	(Aczel's V) inside HoTT. Full Separation translates to subtype formation under
   476	propositional resizing. Powerset translates to $A \to \mathrm{hProp}$. Collection requires
   477	the Mahlo-style closure on the universe. See HoTT Book \cite{HoTTBook} \S10.5 for details.
   478	\end{proof}
   479	
   480	\subsection{Diaconescu's theorem and IZF}
   481	
   482	\begin{theorem}[Diaconescu 1975]
   483	\label{thm:diaconescu}
   484	In any topos satisfying the axiom of choice, the law of excluded middle holds. In
   485	particular, $\mathrm{IZF}+\mathrm{AC}$ proves $\mathrm{EM}$.
   486	\end{theorem}
   487	\begin{proof}[Sketch]
   488	Given a proposition $P$, consider the set $A = \{x\in\{0,1\}: x=0 \vee P\}$ and
   489	$B = \{x\in\{0,1\}: x=1\vee P\}$. By Pairing both are sets, and their union is
   490	$\{0,1\}$. AC gives a choice function on the family of these two non-empty sets,
   491	producing $a\in A, b\in B$. Now either $a=b$, in which case $P$ holds (decidably), or
   492	$a\neq b$, in which case $\neg P$ holds. Either way $P\vee\neg P$.
   493	\end{proof}
   494	
   495	\begin{corollary}
   496	$\mathrm{IZF}+\mathrm{AC}$ is equivalent to $\mathrm{ZFC}$. Hence the constructive
   497	content of IZF is genuinely tied to the absence of AC.
   498	\end{corollary}
   499	
   500	\subsection{Aczel's CZF and predicativity}
   501	
   502	A subtle but important alternative to IZF is Aczel's CZF (Constructive
   503	Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial
   504	ways:
   505	\begin{itemize}
   506	\item \emph{Restricted Separation}: the Separation schema is restricted to bounded
   507	formulas (formulas all of whose quantifiers are restricted to a set).
   508	\item \emph{Subset Collection (Fullness)}: replaces Powerset.
   509	\end{itemize}
   510	The result is a predicative theory, in the sense of Feferman: CZF can be interpreted
   511	in Martin-L\"of type theory (the sets-in-types interpretation \cite{Aczel1978}), and
   512	hence has the proof-theoretic strength of MLTT plus a single Mahlo-like inaccessible.
   513	
   514	\begin{remark}
   515	The IZF/CZF distinction matters for the comparison with HoTT: CZF is closer to HoTT in
   516	spirit (predicative, type-theoretic), whereas IZF is closer to ZF in spirit
   517	(impredicative, set-theoretic). Both can be interpreted in HoTT, but CZF more
   518	naturally.
   519	\end{remark}
   520	
   521	\section{FOLDS: First-Order Logic with Dependent Sorts}
   522	\label{sec:folds}
   523	
   524	\subsection{Dependent signatures}
   525	
   526	\begin{definition}[FOLDS signature, after Makkai \cite{Makkai1995}]
   527	\label{def:foldssig}
   528	A \emph{FOLDS signature} is a small category $\mathbf{L}$ that is:
   529	\begin{itemize}
   530	\item \emph{One-way}: there are no non-trivial endomorphisms or antiparallel parallel
   531	arrows.
   532	\item \emph{Direct}: every object has finitely many objects above it, and the order on
   533	``levels'' (height in the underlying graph) is well-founded.
   534	\item Equipped with a designated set of \emph{relation symbols}: distinguished objects
   535	intended to be interpreted as truth-valued (i.e.\ subterminal).
   536	\end{itemize}
   537	A \emph{kind} is a non-relation object; a \emph{relation} is one of the designated objects.
   538	\end{definition}
   539	
   540	\begin{example}[FOLDS signature for categories]
   541	\label{ex:foldscat}
   542	The signature $\mathbf{L}_{\mathrm{Cat}}$ has:
   543	\begin{itemize}
   544	\item Kind $O$ (objects).
   545	\item Kind $A$ (arrows), with two morphisms $s,t: A\to O$ (source, target). The
   546	dependency $A\to O\times O$ records that an arrow has a source and target object.
   547	\item Relation $T(g,h,k)$ on composable triples $(g, h, k:A)$ (where $t(g)=s(h)$ and the
   548	common boundary types match) expressing ``$k$ is the composite $h\circ g$''. This
   549	relation captures composition data without committing to a function symbol.
   550	\item Relation $I(f)$ on $A$ expressing ``$f$ is an identity arrow''. We list this
   551	relation explicitly because in FOLDS one cannot pick out identity arrows by equality
   552	with a chosen constant; instead, identities are designated via this relation, which is
   553	required to satisfy the laws $\forall f.\, I(f)\to T(f,g,g)$ and $T(g,f,g)$ for parallel
   554	$g$.
   555	\item Relation $E(f,g)$ on parallel arrows expressing arrow-equality. In FOLDS the
   556	equality predicate on each kind is itself a designated relation symbol, not a primitive
   557	of the logic; this is what guarantees isomorphism-invariance of FOLDS sentences.
   558	\end{itemize}
   559	A model is a category in the usual sense, where the three relations $T, I, E$ have
   560	distinct and complementary roles: $T$ records composition data, $I$ singles out the
   561	identity arrows, and $E$ provides arrow-equality. Together they suffice to express the
   562	category axioms (associativity, unit laws, identity laws) as FOLDS sentences.
   563	\end{example}
   564	
   565	\subsection{FOLDS-equivalence}
   566	
   567	\begin{definition}[FOLDS-equivalence, Makkai \cite{Makkai1995}]
   568	\label{def:foldsequiv}
   569	Two $\mathbf{L}$-structures $M, N$ are \emph{FOLDS-equivalent} (written $M\simeq_F N$)
   570	iff there exists a span of $\mathbf{L}$-structure homomorphisms
   571	\[
   572	M \xleftarrow{p} P \xrightarrow{q} N
   573	\]
   574	where both $p$ and $q$ are \emph{very surjective}: surjective on every kind, and on every
   575	relation symbol $R$, the induced map $R^P \to R^M\times_{(\text{kinds})} \cdots$ is
   576	surjective.
   577	\end{definition}
   578	
   579	\begin{remark}
   580	For the signature $\mathbf{L}_{\mathrm{Cat}}$, $M\simeq_F N$ coincides with the
   581	classical notion of equivalence of categories $M\simeq N$ (essentially surjective and
   582	fully faithful). For higher signatures (e.g.\ bicategories), FOLDS-equivalence
   583	correctly generalises bi-equivalence; for $n$-categories, $n$-equivalence; and so on for
   584	$\infty$-categorical signatures.
   585	\end{remark}
   586	
   587	\subsection{Makkai's Invariance Theorem}
   588	
   589	\begin{theorem}[Makkai's Invariance Theorem \cite{Makkai1995}]
   590	\label{thm:invariance}
   591	For every FOLDS signature $\mathbf{L}$ and every FOLDS sentence $\varphi$ in
   592	$\mathcal{L}(\mathbf{L})$, and any two $\mathbf{L}$-structures $M,N$:
   593	\[
   594	M\simeq_F N \;\Longrightarrow\; (M\models \varphi \Leftrightarrow N\models \varphi).
   595	\]
   596	\end{theorem}
   597	\begin{proof}[Sketch]
   598	By induction on $\varphi$. Atomic formulas are preserved by very surjective
   599	homomorphisms, both ways, by the surjectivity on relations. Connectives and the unique
   600	quantifier $\exists x: K$ (where $K$ is a kind) preserve preservation under very
   601	surjective spans because every element on each kind in $M$ (resp.\ $N$) is hit by some
   602	element of $P$. Full induction is given in
   603	\cite[Theorem 4.4]{Makkai1995}; an alternative homotopy-theoretic proof appears in
   604	Henry's work on the Isomorphism Property.
   605	\end{proof}
   606	
   607	\begin{corollary}
   608	\label{cor:invariance}
   609	No FOLDS sentence can distinguish two equivalent categories. In particular, the predicate
   610	``$X$ is the $\in$-rank-zero element of the universe'' is \emph{not} expressible in any
   611	FOLDS signature for ZF.
   612	\end{corollary}
   613	
   614	\subsection{FOLDS as a fragment of dependent type theory}
   615	
   616	Palmgren \cite{Palmgren2016} showed FOLDS embeds into intensional Martin-L\"of type
   617	theory. The dependence in a FOLDS signature is captured by the dependence of types in
   618	MLTT; relations become $(-1)$-types (mere propositions).
   619	
   620	\begin{theorem}[Palmgren \cite{Palmgren2016}]

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '621,980p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   621	\label{thm:palmgren}
   622	There is a faithful translation $\mathcal{T}$ from FOLDS signatures over a category
   623	$\mathbf{L}$ to dependent type theories with explicit substitutions
   624	$\mathrm{CwF}(\mathbf{L})$, such that:
   625	\begin{enumerate}
   626	\item Every FOLDS structure $M$ on $\mathbf{L}$ corresponds to a model of
   627	$\mathcal{T}(\mathbf{L})$.
   628	\item FOLDS-equivalence corresponds to equivalence of models of $\mathcal{T}(\mathbf{L})$.
   629	\end{enumerate}
   630	\end{theorem}
   631	
   632	\subsection{Worked FOLDS proofs}
   633	
   634	\begin{example}[Categorical equivalence is FOLDS-equivalence]
   635	\label{ex:catequivfolds}
   636	Take $\mathbf{L} = \mathbf{L}_{\mathrm{Cat}}$ and let $F:M\to N$ be a functor. Construct
   637	the cograph (mapping cylinder) $C(F)$: objects are
   638	$\mathrm{Ob}(M)\sqcup\mathrm{Ob}(N)$, with hom-sets given by
   639	\[
   640	C(F)(x,y) := \begin{cases}
   641	M(x,y) & x,y\in\mathrm{Ob}(M)\\
   642	N(x,y) & x,y\in\mathrm{Ob}(N)\\
   643	N(F(x), y) & x\in M, y\in N\\
   644	\emptyset & \text{otherwise.}
   645	\end{cases}
   646	\]
   647	Then both inclusions $M\hookrightarrow C(F)$ and $N\hookrightarrow C(F)$ are
   648	homomorphisms of $\mathbf{L}_{\mathrm{Cat}}$-structures. The inclusion of $M$ is
   649	\emph{very surjective} iff $F$ is essentially surjective and full. The inclusion of $N$
   650	is very surjective iff $F$ is faithful.  Combining, $F$ is an equivalence iff there is a
   651	zigzag of cograph cospans connecting $M$ and $N$ via very surjective maps --- i.e.\
   652	$M\simeq_F N$ in the FOLDS sense.
   653	\end{example}
   654	
   655	\begin{proposition}[Skeletality is not FOLDS-expressible]
   656	\label{prop:skeleton-not-folds}
   657	The predicate ``$\mathcal{C}$ is a skeletal category'' (every object is the unique
   658	representative of its isomorphism class) is not expressible by any FOLDS sentence.
   659	\end{proposition}
   660	\begin{proof}
   661	Suppose $\varphi$ is a FOLDS sentence in $\mathbf{L}_{\mathrm{Cat}}$ that holds in
   662	$\mathcal{C}$ iff $\mathcal{C}$ is skeletal. Take a non-skeletal $\mathcal{C}_0$ and a
   663	skeleton $\mathcal{C}_1\hookrightarrow \mathcal{C}_0$. The inclusion is an
   664	equivalence (essentially surjective and fully faithful), hence the cograph construction
   665	yields $\mathcal{C}_0 \simeq_F \mathcal{C}_1$. By Makkai's invariance theorem
   666	(\cref{thm:invariance}), $\mathcal{C}_0\models \varphi \Leftrightarrow \mathcal{C}_1
   667	\models\varphi$. But $\mathcal{C}_1$ is skeletal and $\mathcal{C}_0$ is not, so $\varphi$
   668	cannot distinguish them. Contradiction.
   669	\end{proof}
   670	
   671	\begin{remark}
   672	\Cref{prop:skeleton-not-folds} is paradigmatic: any predicate referring to specific
   673	\emph{representatives} of equivalence classes (rather than equivalence-classes themselves)
   674	fails to be FOLDS-expressible. This is the syntactic mechanism by which FOLDS enforces
   675	the equivalence principle: ``junk'' predicates cannot even be \emph{stated}.
   676	\end{remark}
   677	
   678	\subsection{Higher signatures: bicategories and $\infty$-categories}
   679	
   680	The signature $\mathbf{L}_{\mathrm{Cat}}$ for ordinary categories generalises naturally
   681	to higher signatures:
   682	\begin{itemize}
   683	\item $\mathbf{L}_{\mathrm{Bicat}}$: kinds $O$, $A$, $C$ (cells), with
   684	$s,t:A\to O$, $s,t:C\to A$, and relations for vertical/horizontal composition,
   685	identities, and 2-cell equality. FOLDS-equivalence on $\mathbf{L}_{\mathrm{Bicat}}$
   686	is bi-equivalence of bicategories.
   687	\item $\mathbf{L}_{(\infty,1)}$: an infinite tower of kinds $A_n$ for $n$-cells, with
   688	boundary maps and a single ``hcomp'' relation per dimension. FOLDS-equivalence
   689	corresponds to Joyal-style $\infty$-equivalence (DK-equivalence).
   690	\end{itemize}
   691	Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose
   692	syntax converges to the syntax of HoTT.
   693	
   694	\section{HoTT: The unifying frame}
   695	\label{sec:hott}
   696	
   697	\subsection{Univalence as the equivalence-invariance axiom}
   698	
   699	Univalence (Voevodsky 2010, HoTT Book \cite{HoTTBook} \S2.10) is the axiom:
   700	\[
   701	\mathsf{ua}: (A\simeq B) \;\xrightarrow{\sim}\; (A=_{\mathcal{U}} B)
   702	\]
   703	saying that the canonical map ``$\mathrm{idtoeqv}$'' from identifications between types
   704	to equivalences between them is itself an equivalence. In short: \emph{equivalent types
   705	are identical}. The Structure Identity Principle (SIP) generalises this from raw types to
   706	typed structures: equivalent structures are identical.
   707	
   708	\subsection{Which structural principles become theorems}
   709	
   710	The following table summarises what passes from axiom-status (in ETCS, IZF, or as a
   711	metatheorem in FOLDS) to theorem-status in HoTT (Section 1 column reproduced for
   712	convenience):
   713	\begin{itemize}
   714	\item \textbf{NNO} is a theorem in HoTT --- the inductive type $\mathbb{N}$ is built into
   715	the type theory and contractibility of the type of NNO structures is provable
   716	(Paper~V Theorem~4.4 of our series).
   717	\item \textbf{Function extensionality} is a theorem in HoTT given univalence: Voevodsky's
   718	proof shows $\mathrm{UA}\Rightarrow \mathrm{FE}$.
   719	\item \textbf{Propositional extensionality} is a theorem in HoTT given univalence,
   720	restricted to mere propositions.
   721	\item \textbf{Structure Identity Principle} is a theorem in HoTT given univalence
   722	(see Paper~VI Theorems 10.3--10.4 of our series).
   723	\item \textbf{FOLDS-equivalence-implies-identity} is a theorem in HoTT given univalence
   724	(this is the Univalence Principle of Ahrens--North--Shulman--Tsementzis 2019).
   725	\end{itemize}
   726	
   727	We now make this last statement precise.
   728	
   729	\subsection{The Univalence Principle of Ahrens--North--Shulman--Tsementzis (2019)}
   730	
   731	\begin{theorem}[Univalence Principle, ANST \cite{ANST2019}]
   732	\label{thm:up}
   733	For any FOLDS signature $\mathbf{L}$ and any two $\mathbf{L}$-structures $M, N$ in HoTT,
   734	\[
   735	(M\simeq_F N)\;\simeq\;(M=_{\mathrm{Str}(\mathbf{L})} N).
   736	\]
   737	That is, FOLDS-equivalence is identification in the type of $\mathbf{L}$-structures.
   738	\end{theorem}
   739	\begin{proof}[Sketch]
   740	The dependent-sort structure of $\mathbf{L}$ is encoded as a Reedy diagram of types in
   741	HoTT. Each relation symbol becomes a $(-1)$-truncated type, each kind a type of the
   742	appropriate truncation level. By induction on the Reedy structure, FOLDS-equivalence
   743	unfolds into the data of an equivalence at each level, which by repeated application of
   744	the Structure Identity Principle (a consequence of univalence) gives an identification.
   745	The full proof requires careful management of the level structure of $\mathbf{L}$ and the
   746	Reedy fibrant replacement; see ANST.
   747	\end{proof}
   748	
   749	\begin{remark}
   750	\Cref{thm:up} subsumes Makkai's Invariance Theorem: indeed if $M\simeq_F N$ then
   751	$M=N$ in HoTT, hence any predicate is preserved (by transport along the identification).
   752	But \cref{thm:up} is stronger: it gives an \emph{equivalence}, not just an implication.
   753	The strength comes from univalence.
   754	\end{remark}
   755	
   756	\subsection{Internalising ETCS in HoTT}
   757	
   758	We now sketch how ETCS is recovered as a theorem inside HoTT, given univalence and
   759	sufficient choice/EM where needed.
   760	
   761	\begin{theorem}[Sets in HoTT form a model of ETCS-AC]
   762	\label{thm:setsmodel}
   763	Within HoTT, define $\mathrm{Set}$ to be the type of $0$-truncated types (sets in the
   764	sense of HoTT \S3.1):
   765	\[
   766	\mathrm{Set} := \Sigma_{X:\mathcal{U}}\,\mathrm{isSet}(X).
   767	\]
   768	Then $\mathrm{Set}$, with the obvious morphism structure (functions between sets) and
   769	identity/composition, is an elementary topos with NNO. Adding propositional resizing and
   770	the (provably independent) axioms EM and AC produces a model of ETCS.
   771	\end{theorem}
   772	\begin{proof}[Sketch]
   773	\textbf{Finite limits}: Sigma-types and product types are sets when their components are
   774	sets; equalisers are $\Sigma_{x:A} (f(x) = g(x))$, also a set.
   775	\textbf{Cartesian closure}: function types $A\to B$ are sets when $B$ is a set (by FE).
   776	\textbf{Subobject classifier}: $\Omega := \mathrm{hProp}$, the type of mere propositions;
   777	truth is the standard map.
   778	\textbf{NNO}: the inductive type $\mathbb{N}$.
   779	\textbf{Well-pointedness}: function extensionality.
   780	\textbf{AC}: axiom (independent in HoTT).
   781	\textbf{Two-valuedness}: requires EM (axiom).
   782	\textbf{Non-degeneracy}: $\mathbf{0}\not\simeq\mathbf{1}$ holds in any non-trivial model.
   783	\end{proof}
   784	
   785	\subsection{Internalising IZF in HoTT}
   786	
   787	Aczel's $\mathbb{V}$-construction inside HoTT:
   788	
   789	\begin{definition}[The HoTT cumulative hierarchy]
   790	\label{def:vhott}
   791	Define the higher inductive type $\mathbb{V}$ with:
   792	\begin{itemize}
   793	\item Constructor $\mathrm{set}: (A:\mathcal{U}) \to (A\to \mathbb{V})\to \mathbb{V}$.
   794	\item Path constructor: extensionality, $\mathrm{set}(A,f) =_{\mathbb{V}} \mathrm{set}(B,g)$
   795	iff there is a bisimulation between the trees $(A,f)$ and $(B,g)$.
   796	\item $0$-truncation.
   797	\end{itemize}
   798	\end{definition}
   799	
   800	\begin{theorem}[HoTT Book \S10.5]
   801	\label{thm:vmodelizf}
   802	$\mathbb{V}$ is a model of IZF in the following sense: every IZF axiom (Extensionality,
   803	Pairing, Union, Powerset, Infinity, Collection, Full Separation, $\in$-Induction)
   804	translates to a provable HoTT statement about $\mathbb{V}$, given propositional resizing.
   805	\end{theorem}
   806	
   807	\subsection{Internalising FOLDS in HoTT via the Univalence Principle}
   808	
   809	The key observation: FOLDS signatures, qua small categories, are themselves objects of
   810	HoTT. FOLDS-structures qua functors are objects of HoTT. The Univalence Principle
   811	(\cref{thm:up}) is the statement that the type of $\mathbf{L}$-structures has the
   812	expected identity type. So FOLDS is not just \emph{representable} in HoTT; the FOLDS
   813	metatheorem (Makkai's Invariance Theorem) becomes an internal HoTT theorem.
   814	
   815	\section{Models}
   816	\label{sec:models}
   817	
   818	\subsection{ETCS in toposes}
   819	
   820	A model of ETCS is a well-pointed elementary topos with NNO and AC. The category
   821	$\mathrm{Set}$ in ZFC is the prototype. Other models include:
   822	\begin{itemize}
   823	\item $\mathrm{Set}_{\mathrm{ZF+AC}}$: classical sets in ZF + AC.
   824	\item $\mathrm{Set}_{\mathrm{IZF+AC}}$: intuitionistic sets in IZF + AC (where AC implies
   825	EM via Diaconescu, hence equivalent to ZFC).
   826	\item $\mathrm{FinSet}$: finite sets satisfy A1--A6, fail A4 (no NNO), so not ETCS.
   827	\item Forcing extensions of $\mathrm{Set}$: ETCS+CH and ETCS+$\neg$CH.
   828	\end{itemize}
   829	
   830	\subsection{IZF and topos-valued models}
   831	
   832	Friedman--Aczel construction: in any cocomplete elementary topos $\mathcal{E}$ with NNO
   833	and a Mahlo-style universe object, the internal $\mathbb{V}$-structure (the
   834	``cumulative hierarchy'' inside $\mathcal{E}$) gives a model of IZF.
   835	
   836	\begin{theorem}[Friedman--Aczel--Joyal]
   837	The internal hierarchy $V_{\mathcal{E}}$ in a cocomplete topos with universe object
   838	satisfies all axioms of IZF.
   839	\end{theorem}
   840	
   841	The proof reduces each axiom (Extensionality, Pairing, Union, Powerset, Infinity,
   842	Collection, Full Separation, $\in$-Induction) to a property of $\mathcal{E}$ that holds
   843	by definition of cocomplete elementary topos with universe.
   844	
   845	\subsection{FOLDS in fibrations}
   846	
   847	A FOLDS signature $\mathbf{L}$ corresponds to a discrete Conduch\'e fibration over
   848	$\mathbf{L}^{\mathrm{op}}$. Models of $\mathbf{L}$ are categories of elements/sections of
   849	this fibration.
   850	
   851	\begin{theorem}[Makkai \cite{Makkai1995}]
   852	\label{thm:foldsfib}
   853	The category $\mathrm{Mod}(\mathbf{L})$ of $\mathbf{L}$-structures and homomorphisms is
   854	the slice $\mathrm{Set}/\mathbf{L}^{\mathrm{op}}$ when $\mathbf{L}$ is direct (with
   855	appropriate naturality), with FOLDS-equivalence being the localisation along
   856	very-surjective maps.
   857	\end{theorem}
   858	
   859	\subsection{HoTT in $(\infty,1)$-toposes}
   860	
   861	\begin{theorem}[Shulman \cite{Shulman2019}]
   862	\label{thm:shulman}
   863	Every Grothendieck $(\infty,1)$-topos models HoTT with univalent universes.
   864	\end{theorem}
   865	\begin{proof}[Sketch]
   866	Shulman's strategy: use simplicial categories of fibrant types to build an interpretation
   867	of MLTT in any presentable $(\infty,1)$-topos $\mathcal{X}$, then use
   868	Reedy fibrant replacement and the local universe construction (Lumsdaine--Warren) to
   869	produce a univalent universe object.
   870	\end{proof}
   871	
   872	\subsection{The square of interpretations}
   873	
   874	\begin{center}
   875	\begin{tikzcd}[column sep=large, row sep=large]
   876	\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &
   877	\mathrm{BZ}+\mathrm{R} \arrow[d, "\text{Friedman}"] \\
   878	\mathrm{Topos+NNO+AC} \arrow[r, "\text{int.\ lang.}"'] &
   879	\mathrm{IZF}+\mathrm{AC} \arrow[r, leftrightarrow, "\text{Diaconescu}"]&\mathrm{ZFC}
   880	\end{tikzcd}
   881	\end{center}
   882	
   883	with FOLDS sitting orthogonal to all three (FOLDS is a logic, not a set theory; it
   884	specifies which sentences are admissible). HoTT sits ``above'' the diagram: any model of
   885	ETCS, IZF, or FOLDS yields a model of HoTT after passage through the
   886	$(\infty,1)$-topos completion.
   887	
   888	\subsection{Reverse-mathematical strengths}
   889	
   890	We summarise the proof-theoretic strength of each system:
   891	
   892	\begin{center}
   893	\begin{tabular}{|l|l|l|}
   894	\hline
   895	\textbf{System} & \textbf{Strength (consistency)} & \textbf{Reference} \\
   896	\hline
   897	ETCS & ZFC $-$ Replacement & McLarty 2004 \\
   898	ETCS+R (ETCS with Replacement) & ZFC & McLarty 2004 \\
   899	IZF & ZF & Friedman 1973 \\
   900	IZF+AC & ZFC & Diaconescu 1975 \\
   901	CZF & MLTT $+$ universes & Aczel 1978 \\
   902	CZF $+$ Mahlo & ZFC & Rathjen \\
   903	HoTT (with UA) & ZFC $+$ inaccessibles & Shulman 2019 \\
   904	HoTT (without UA) & MLTT & MLTT proof theory \\
   905	FOLDS (as logic) & --- & --- \\
   906	\hline
   907	\end{tabular}
   908	\end{center}
   909	
   910	The interesting feature: ETCS minus Replacement is strictly weaker than ZFC; recovering
   911	full ZFC strength requires a Replacement schema, in either material or structural form.
   912	HoTT with univalence and propositional resizing matches ZFC + countably many
   913	inaccessibles (Shulman \cite{Shulman2019}), since each universe behaves as a Grothendieck
   914	universe.
   915	
   916	\section{The univalence boundary}
   917	\label{sec:boundary}
   918	
   919	\subsection{Definition}
   920	
   921	\begin{definition}[Univalence boundary]
   922	\label{def:boundary}
   923	A structural principle $P$ \emph{lies on the far side of the univalence boundary} if
   924	$P$ holds in HoTT~+~UA but not in HoTT alone (i.e.\ in MLTT plus the assumption that
   925	identity types are well-behaved but without the univalence axiom). A principle lies on
   926	the \emph{near side} if it holds in HoTT without UA. We say $P$ \emph{straddles} the
   927	boundary if it is independent of UA in HoTT.
   928	\end{definition}
   929	
   930	\subsection{Far-side principles}
   931	
   932	\begin{theorem}[Far-side: SIP needs UA]
   933	\label{thm:sipneedsua}
   934	The Structure Identity Principle (SIP) is provably equivalent to univalence in HoTT.
   935	\end{theorem}
   936	\begin{proof}[Sketch]
   937	$\mathrm{UA}\Rightarrow \mathrm{SIP}$: the standard structure-identity proof (HoTT
   938	Book \S9.8) constructs the identification of structures using univalence applied to the
   939	underlying types and transport for the operations.
   940	$\mathrm{SIP}\Rightarrow \mathrm{UA}$: instantiate SIP at the trivial signature
   941	(structure-free) to extract univalence as the special case where the only operation is
   942	the identity.
   943	\end{proof}
   944	
   945	\begin{theorem}[Far-side: FOLDS-equivalence-implies-identity needs UA]
   946	\label{thm:foldsneedsua}
   947	The principle ``$M\simeq_F N \Rightarrow M=_{\mathrm{Str}(\mathbf{L})}N$'' for arbitrary
   948	FOLDS signatures $\mathbf{L}$ is equivalent to univalence (over MLTT with FE and PE).
   949	\end{theorem}
   950	\begin{proof}[Sketch]
   951	$\mathrm{UA}\Rightarrow$ statement: this is \cref{thm:up}.
   952	Statement $\Rightarrow \mathrm{UA}$: take $\mathbf{L}$ to be the signature with one kind
   953	and no relations. A model is just a type. FOLDS-equivalence on this signature is type
   954	equivalence. The conclusion that equivalence is identification is exactly UA.
   955	\end{proof}
   956	
   957	\subsection{Near-side principles}
   958	
   959	\begin{theorem}[Near-side: NNO existence is near]
   960	\label{thm:nnonear}
   961	The existence of an NNO in HoTT (as the inductive type $\mathbb{N}$) does not require UA.
   962	\end{theorem}
   963	\begin{proof}
   964	$\mathbb{N}$ is generated by the constructors $0:\mathbb{N}$ and $s:\mathbb{N}\to
   965	\mathbb{N}$ together with the universal property given by the recursor; this is the
   966	elimination rule of MLTT inductive types and does not invoke UA.
   967	\end{proof}
   968	
   969	\begin{theorem}[Near-side: function extensionality is near, given univalence is far]
   970	\label{thm:fefar}
   971	Function extensionality (FE) holds in HoTT~+~UA but is independent of MLTT alone.
   972	However, FE itself does not imply UA.
   973	\end{theorem}
   974	\begin{proof}[Sketch]
   975	$\mathrm{UA}\Rightarrow \mathrm{FE}$: Voevodsky's proof.
   976	$\mathrm{FE}\not\Rightarrow \mathrm{UA}$: the simplicial set model satisfies FE but
   977	without univalent universes (univalence requires more structure).
   978	\end{proof}
   979	
   980	\subsection{Straddlers}

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '981,1340p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   981	
   982	\begin{theorem}[Straddler: EM, AC are independent]
   983	\label{thm:straddlers}
   984	The law of excluded middle EM and the axiom of choice AC are independent of UA in HoTT.
   985	\end{theorem}
   986	\begin{proof}[Sketch]
   987	EM: the classical model (sets) satisfies EM and UA; the topological model satisfies UA
   988	but not EM. Similarly AC.
   989	\end{proof}
   990	
   991	\subsection{The boundary as a square}
   992	
   993	\begin{center}
   994	\begin{tabular}{c|cc}
   995	& \textbf{Without UA} & \textbf{With UA} \\
   996	\hline
   997	\textbf{NNO} & yes & yes \\
   998	\textbf{FE} & independent & yes \\
   999	\textbf{PE} & independent & yes \\
  1000	\textbf{SIP} & no & yes \\
  1001	\textbf{FOLDS-eq=id} & no & yes \\
  1002	\textbf{EM} & independent & independent \\
  1003	\textbf{AC} & independent & independent \\
  1004	\textbf{Replacement} & yes (small) & yes (small) \\
  1005	\end{tabular}
  1006	\end{center}
  1007	
  1008	\subsection{Diagnostic principles}
  1009	
  1010	Given an arbitrary structural principle $P$, how can one test whether $P$ lies on the
  1011	near or far side of the boundary? We propose the following heuristic.
  1012	
  1013	\begin{proposition}[Diagnostic for far-side principles]
  1014	\label{prop:diagnostic}
  1015	A principle $P$ lies on the far side of the univalence boundary if and only if $P$
  1016	asserts that two equivalent structures are \emph{equal}, where equality is in the
  1017	sense of HoTT's identity type.
  1018	\end{proposition}
  1019	\begin{proof}[Heuristic argument]
  1020	The forward direction is clear: such principles are precisely instances of the SIP
  1021	schema (or the more general Univalence Principle), and we showed in
  1022	\cref{thm:sipneedsua,thm:foldsneedsua} that these need UA.
  1023	The reverse direction relies on a meta-theoretic observation: principles that are not
  1024	about identification are about \emph{existence} or \emph{construction}, and these are
  1025	unaffected by UA's content (which is about identity). A detailed proof requires
  1026	formalisation of the schema, deferred to \cite{ANST2019}.
  1027	\end{proof}
  1028	
  1029	\subsection{What is on the boundary?}
  1030	
  1031	A principle is \emph{on the boundary} if it is equivalent to UA in HoTT. Examples:
  1032	\begin{itemize}
  1033	\item SIP (\cref{thm:sipneedsua}).
  1034	\item Univalence Principle for FOLDS (\cref{thm:foldsneedsua}).
  1035	\item Function extensionality + propositional extensionality + Voevodsky's
  1036	``equivalence-induction'' rule (a known characterisation of UA, due to Voevodsky).
  1037	\item Equivalence of $\Pi$-types respecting equivalence of arguments (a partial
  1038	characterisation).
  1039	\end{itemize}
  1040	
  1041	Principles strictly weaker than UA (i.e.\ near side or straddle):
  1042	\begin{itemize}
  1043	\item FE alone is strictly weaker than UA (the simplicial model with non-univalent
  1044	universes satisfies FE).
  1045	\item PE alone is strictly weaker than UA.
  1046	\item NNO existence (theorem of MLTT, no UA needed).
  1047	\end{itemize}
  1048	
  1049	\section{Open problems}
  1050	\label{sec:open}
  1051	
  1052	\subsection{Problem 1: Contractibility of the type of ETCS structures}
  1053	
  1054	\begin{conjecture}
  1055	\label{conj:etcscontract}
  1056	In HoTT~+~UA, the type
  1057	\[
  1058	\mathrm{ETCS}\text{-Str} := \Sigma_{\mathcal{S}:\mathrm{Cat}_\infty}\,\Pi_{i=1}^{8}
  1059	\mathrm{Ax}_i(\mathcal{S})
  1060	\]
  1061	is contractible up to a fixed choice of universe parameter.
  1062	\end{conjecture}
  1063	
  1064	\noindent A proof would mirror Paper~V Theorem~4.4 (contractibility of the NNO type) but
  1065	at the level of the entire categorical universe. Tools needed: SIP for $\infty$-toposes,
  1066	internal $\infty$-Yoneda (Riehl--Shulman directed type theory).
  1067	
  1068	\subsection{Problem 2: Cubical Agda formalisation of FOLDS}
  1069	
  1070	\begin{conjecture}
  1071	\label{conj:cubicalfolds}
  1072	There is a Cubical Agda library implementing FOLDS signatures, FOLDS-equivalence, and
  1073	$n$-level FOLDS (Szumi\l{}o 2019), and proving \cref{thm:up} formally for $n\le 2$
  1074	(equivalence of FOLDS-equivalence and HoTT-identification at $n=0,1,2$).
  1075	\end{conjecture}
  1076	
  1077	\noindent Partial work exists in the agda-categories library and in Tsementzis's
  1078	formalisation of the SIP. Full FOLDS in Cubical Agda would close the gap between Makkai
  1079	1995 and ANST 2019 syntactically.
  1080	
  1081	\subsection{Problem 3: Identifying IZF axioms with HoTT principles}
  1082	
  1083	\begin{conjecture}
  1084	\label{conj:izfhott}
  1085	There is a precise correspondence between the IZF axioms and HoTT principles of the
  1086	following form:
  1087	\begin{itemize}
  1088	\item Extensionality $\leftrightarrow$ FE + PE.
  1089	\item Pairing/Union $\leftrightarrow$ Sigma/Coproduct.
  1090	\item Powerset $\leftrightarrow$ $A\to\mathrm{hProp}$ (with propositional resizing).
  1091	\item Collection $\leftrightarrow$ Mahlo universe axiom.
  1092	\item $\in$-Induction $\leftrightarrow$ accessibility predicate.
  1093	\item Full Separation $\leftrightarrow$ subtype formation under propositional resizing.
  1094	\end{itemize}
  1095	\end{conjecture}
  1096	
  1097	\noindent Partial work: HoTT Book \S10.5; Awodey--Warren; Rathjen--Tupailo on CZF.
  1098	
  1099	\section{Discussion}
  1100	\label{sec:discussion}
  1101	
  1102	\subsection{What does ``foundation'' mean today?}
  1103	
  1104	The three-way comparison reveals that ``foundations'' has split into three orthogonal
  1105	axes:
  1106	\begin{itemize}
  1107	\item \textbf{Material vs structural}: ZFC (material) vs ETCS (structural).
  1108	\item \textbf{Classical vs constructive}: ZFC vs IZF/CZF.
  1109	\item \textbf{0-categorical vs higher}: ETCS (1-categorical) vs HoTT ($\infty$-categorical).
  1110	\end{itemize}
  1111	FOLDS is orthogonal to all three: it is a \emph{logic}, applicable in any of the
  1112	combinations.
  1113	
  1114	\subsection{Practical recommendations}
  1115	
  1116	For the working mathematician:
  1117	\begin{itemize}
  1118	\item \textbf{Pure category theory, classical}: ETCS+AC.
  1119	\item \textbf{Pure category theory, constructive}: well-pointed Heyting topos.
  1120	\item \textbf{Higher category theory, classical}: HoTT+UA+AC (= simplicial sets model).
  1121	\item \textbf{Higher category theory, constructive}: HoTT+UA (= cubical model).
  1122	\item \textbf{Pure logic, isomorphism-invariant}: FOLDS over HoTT (Univalence Principle).
  1123	\item \textbf{Reverse-mathematical strength}: stay with ZFC variants.
  1124	\end{itemize}
  1125	
  1126	\subsection{Limitations}
  1127	
  1128	This paper does not prove the full Univalence Principle; we report the result of ANST
  1129	2019. We also do not address the predicativity issue: HoTT proper is predicative, IZF is
  1130	impredicative, ETCS sits in between. A precise predicativity-comparative analysis is
  1131	left to future work. Finally, the ``square of interpretations'' is not commutative on
  1132	the nose; the diagram commutes up to bi-interpretation, a notion we have not fully
  1133	formalised here.
  1134	
  1135	\section{Worked case study: monoid theory across the four foundations}
  1136	\label{sec:casestudy}
  1137	
  1138	To make the comparison concrete, we trace a single mathematical concept --- the theory
  1139	of monoids --- through ETCS, IZF, FOLDS, and HoTT. This illustrates how
  1140	``structural-ness'' progresses from convention (ETCS) to enforced syntax (FOLDS) to
  1141	internal theorem (HoTT+UA).
  1142	
  1143	\subsection{Monoids in ZFC and IZF}
  1144	
  1145	In ZFC/IZF, a monoid is a 4-tuple $(M, \cdot, e, \text{laws})$ where $M$ is a set, $\cdot:
  1146	M\times M\to M$, $e\in M$, and the associativity and unit laws hold. The encoding of the
  1147	4-tuple uses Kuratowski pairs. Two monoids are \emph{equal} iff they have the same
  1148	underlying $\in$-tree --- a notion that depends on the choice of pair encoding. Monoid
  1149	isomorphism is a derived notion: a bijection $\phi: M\to N$ commuting with operations.
  1150	Junk theorems (e.g.\ ``the underlying set of $\mathbb{Z}$ contains the empty set as an
  1151	element'') depend on encoding.
  1152	
  1153	\subsection{Monoids in ETCS}
  1154	
  1155	In ETCS, a monoid is an object $M$ together with morphisms $\cdot: M\times M\to M$,
  1156	$e: 1\to M$, and the equational axioms expressed using composition and the universal
  1157	property of products. There is no encoding choice for $\cdot$ or $e$. Two monoids are
  1158	isomorphic iff there is an invertible morphism between them respecting the operations.
  1159	The category $\mathrm{Mon}(\mathrm{ETCS})$ of monoids in ETCS is well-defined, and is the
  1160	category of models of the algebraic theory of monoids.
  1161	
  1162	\subsection{Monoids in FOLDS}
  1163	
  1164	A FOLDS signature for monoids:
  1165	\begin{itemize}
  1166	\item Kind $M$ (elements).
  1167	\item Relation $E(x,y)$ (equality, parallel arrows from triangulation).
  1168	\item Relation $P(x,y,z)$ (multiplication: $z = x\cdot y$).
  1169	\item Relation $U(x)$ (unit: $x = e$).
  1170	\end{itemize}
  1171	Axioms:
  1172	\begin{itemize}
  1173	\item Associativity: $\forall a,b,c,xy,yz,abc: M.\, P(a,b,xy) \wedge P(xy,c,abc) \wedge
  1174	P(b,c,yz) \wedge P(a,yz,abc') \Rightarrow E(abc, abc')$.
  1175	\item Left unit: $\forall e, x, ex: M.\, U(e) \wedge P(e,x,ex) \Rightarrow E(ex, x)$.
  1176	\item Right unit: dual.
  1177	\end{itemize}
  1178	A FOLDS-equivalence between two monoids $M, N$ is a span via very surjective
  1179	homomorphisms, which here coincides with the usual monoid isomorphism. Makkai's
  1180	invariance theorem guarantees: any FOLDS sentence holding in $M$ also holds in $N$.
  1181	There is no way to express ``$M$ is the monoid whose elements are von Neumann ordinals
  1182	$\le 5$'' in FOLDS, since this is non-isomorphism-invariant.
  1183	
  1184	\subsection{Monoids in HoTT}
  1185	
  1186	In HoTT, a monoid is a Sigma-type:
  1187	\[
  1188	\mathrm{Monoid} := \Sigma_{M:\mathrm{Set}}\Sigma_{\cdot: M\to M\to M}\Sigma_{e:M}
  1189	\bigl(\mathrm{Assoc}(\cdot)\times \mathrm{LUnit}(\cdot,e)\times \mathrm{RUnit}(\cdot,e)\bigr).
  1190	\]
  1191	The components are: a set, a binary operation, an identity element, and proofs (mere
  1192	propositions) of the laws.
  1193	
  1194	\begin{theorem}[Structure Identity Principle for monoids]
  1195	\label{thm:sipmonoid}
  1196	For two monoids $M, N: \mathrm{Monoid}$:
  1197	\[
  1198	(M =_{\mathrm{Monoid}} N) \;\simeq\; \mathrm{MonoidIso}(M, N)
  1199	\]
  1200	where $\mathrm{MonoidIso}(M,N)$ is the type of monoid isomorphisms.
  1201	\end{theorem}
  1202	\begin{proof}[Sketch]
  1203	By Sigma-induction on $M, N$ and SIP for each component: the sets are identified by UA,
  1204	the operations and identity are transported, the laws are mere propositions and so
  1205	identified automatically. The full proof is a routine application of HoTT Book \S9.8.
  1206	\end{proof}
  1207	
  1208	\subsection{Comparison}
  1209	
  1210	\begin{center}
  1211	\begin{tabular}{|l|l|l|l|}
  1212	\hline
  1213	& \textbf{Equality} & \textbf{Iso} & \textbf{SIP-statement} \\
  1214	\hline
  1215	ZFC & encoding-dependent & derived & metatheorem (sociological) \\
  1216	IZF & encoding-dependent & derived & metatheorem \\
  1217	ETCS & up to unique iso & primitive & metatheorem (categorical) \\
  1218	FOLDS & up to FOLDS-eq & primitive & syntactic (invariance theorem) \\
  1219	HoTT+UA & SIP-statement & primitive & internal theorem \\
  1220	\hline
  1221	\end{tabular}
  1222	\end{center}
  1223	
  1224	The rightmost column is the key: only HoTT+UA makes the SIP an internal theorem, expressed
  1225	in the same language as the structures themselves. ETCS makes it a category-theoretic
  1226	metatheorem (true of every property of the category of sets). FOLDS makes it a
  1227	syntactic invariance theorem (true of every well-formed FOLDS sentence). ZFC and IZF
  1228	make it a sociological convention. Each escalation reduces the ``trust assumption'' needed.
  1229	
  1230	\section{Discussion (extended): Practical foundational choice}
  1231	\label{sec:practical}
  1232	
  1233	\subsection{Which foundation for which task?}
  1234	
  1235	The foundational pluralism we have surveyed is not just a curiosity; it has practical
  1236	consequences for formalisation projects.
  1237	
  1238	\begin{itemize}
  1239	\item \textbf{Number theory and analysis}: ZFC variants are best, due to the deep classical
  1240	results requiring AC and EM. Lean/Mathlib uses ZFC (via the type-theoretic
  1241	formalisation of $\mathsf{ZFSet}$ inside Lean).
  1242	\item \textbf{Category theory and topos theory}: ETCS or HoTT+UA. ETCS is sufficient for
  1243	1-categorical structuralism; HoTT+UA is needed for higher-categorical structuralism (the
  1244	theory of $(\infty,1)$-categories).
  1245	\item \textbf{Synthetic differential geometry, synthetic homotopy theory}: HoTT, naturally,
  1246	since the synthetic methods rely on the type-theoretic semantics.
  1247	\item \textbf{Constructive analysis and computer-verified mathematics}: CZF or HoTT
  1248	without UA, where computational interpretation is crucial.
  1249	\item \textbf{Foundations of foundations} (model theory of foundations themselves): IZF
  1250	and topos theory provide the best general-purpose framework.
  1251	\item \textbf{Pedagogy}: ETCS is arguably the cleanest entry point, since it explains
  1252	``what set theory is really doing'' without the encoding noise.
  1253	\end{itemize}
  1254	
  1255	\subsection{Foundational consensus or pluralism?}
  1256	
  1257	A plausible reading of the present landscape is that no single foundation dominates;
  1258	each excels in a particular domain. This contrasts with the 20th century, where ZFC was
  1259	dominant. We propose to call the current situation \emph{principled pluralism}: each
  1260	foundation is correct for its target domain, and translation theorems (McLarty,
  1261	Friedman--Aczel, ANST) tie them together.
  1262	
  1263	\subsection{Open foundational debates}
  1264	
  1265	Several debates remain unresolved as of 2026:
  1266	\begin{itemize}
  1267	\item \emph{Predicativity vs impredicativity}: HoTT proper is predicative; IZF is
  1268	impredicative. The right level of impredicativity for a unified foundation is contested.
  1269	\item \emph{Constructivity vs classicality}: HoTT defaults to constructive but is
  1270	compatible with EM; IZF is constructive; ZFC is classical; FOLDS is logic-agnostic.
  1271	\item \emph{Higher coherence}: how high should the dimensional ladder go? HoTT goes to
  1272	$\infty$; FOLDS-Szumi\l{}o goes to arbitrary $n$; ETCS stops at $1$.
  1273	\item \emph{The role of universes}: HoTT has a Russellian hierarchy; ETCS has none
  1274	(the category of all sets is the universe); IZF has none (the proper class of all sets);
  1275	FOLDS has small categories of structures.
  1276	\end{itemize}
  1277	
  1278	\section{Conclusion}
  1279	\label{sec:conclusion}
  1280	
  1281	We have presented ETCS, IZF, and FOLDS as three orthogonal responses to the same
  1282	underlying problem: how to build a foundation in which only structurally relevant
  1283	assertions are formulable or provable. ETCS attacks the problem at the level of
  1284	\emph{ontology} (replace sets-with-membership by sets-with-functions). IZF attacks the
  1285	problem at the level of \emph{logic} (move to intuitionistic logic, where structural
  1286	properties are easier to certify). FOLDS attacks the problem at the level of
  1287	\emph{syntax} (build a logic in which only invariant predicates are expressible).
  1288	
  1289	HoTT---in particular HoTT~+~UA---synthesises all three. The Structure Identity Principle
  1290	recapitulates the structural ontology of ETCS at the level of types. Constructive HoTT
  1291	(without EM, without AC) shares the logical environment of IZF. The Univalence Principle
  1292	recapitulates the syntactic invariance of FOLDS as a metatheorem.
  1293	
  1294	The univalence boundary precisely separates: the principles that hold in MLTT alone
  1295	(the near side: NNO, induction, basic structural reasoning), and the principles requiring
  1296	univalence (the far side: SIP, FOLDS-equivalence-as-identity, the full equivalence
  1297	principle). Mapping out this boundary is, we suggest, one of the more illuminating
  1298	exercises in 2026 foundations.
  1299	
  1300	\section*{Acknowledgements}
  1301	
  1302	The author thanks colleagues at the YonedaAI Research Collective for discussions on
  1303	structuralism and on FOLDS-style invariance proofs. This paper continues the
  1304	foundations programme of our prior series (Papers I--VI on HoTT and structural
  1305	foundations), to which the reader is referred for the technical prerequisites.
  1306	
  1307	\begin{thebibliography}{99}
  1308	
  1309	\bibitem{Lawvere1964}
  1310	F.\ W.\ Lawvere,
  1311	\emph{An elementary theory of the category of sets},
  1312	Proceedings of the National Academy of Sciences 52 (1964), 1506--1511.
  1313	Reprinted with author's commentary, TAC Reprints 11 (2005).
  1314	
  1315	\bibitem{LawvereRosebrugh2003}
  1316	F.\ W.\ Lawvere and R.\ Rosebrugh,
  1317	\emph{Sets for Mathematics},
  1318	Cambridge University Press, 2003.
  1319	
  1320	\bibitem{McLarty2004}
  1321	C.\ McLarty,
  1322	\emph{Exploring categorical structuralism},
  1323	Philosophia Mathematica 12 (2004), 37--53.
  1324	
  1325	\bibitem{Makkai1995}
  1326	M.\ Makkai,
  1327	\emph{First-order logic with dependent sorts, with applications to category theory},
  1328	Preprint, McGill University, 1995.
  1329	Available at \url{https://www.math.mcgill.ca/makkai/folds/foldsinpdf/FOLDS.pdf}.
  1330	
  1331	\bibitem{Friedman1973}
  1332	H.\ Friedman,
  1333	\emph{The consistency of classical set theory relative to a set theory with intuitionistic
  1334	logic},
  1335	Journal of Symbolic Logic 38 (1973), 315--319.
  1336	
  1337	\bibitem{StanfordIZFCZF}
  1338	L.\ Crosilla,
  1339	\emph{Set theory: constructive and intuitionistic ZF},
  1340	Stanford Encyclopedia of Philosophy, Spring 2024 edition, ed.\ E.\ N.\ Zalta.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '1341,1450p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1341	
  1342	\bibitem{Aczel1978}
  1343	P.\ Aczel,
  1344	\emph{The type theoretic interpretation of constructive set theory},
  1345	in Logic Colloquium '77, North-Holland (1978), 55--66.
  1346	
  1347	\bibitem{Awodey2014}
  1348	S.\ Awodey,
  1349	\emph{Structuralism, invariance, and univalence},
  1350	Philosophia Mathematica 22 (2014), 1--11.
  1351	
  1352	\bibitem{HoTTBook}
  1353	The Univalent Foundations Program,
  1354	\emph{Homotopy Type Theory: Univalent Foundations of Mathematics},
  1355	Institute for Advanced Study, 2013.
  1356	
  1357	\bibitem{Shulman2019}
  1358	M.\ Shulman,
  1359	\emph{All $(\infty,1)$-toposes have strict univalent universes},
  1360	arXiv:1904.07004 (2019).
  1361	
  1362	\bibitem{ANST2019}
  1363	B.\ Ahrens, P.\ R.\ North, M.\ Shulman, D.\ Tsementzis,
  1364	\emph{The Univalence Principle},
  1365	arXiv:2102.06275 (2019/2021).
  1366	
  1367	\bibitem{Palmgren2016}
  1368	E.\ Palmgren,
  1369	\emph{Categories with families and first-order logic with dependent sorts},
  1370	arXiv:1605.01586 (2016).
  1371	
  1372	\bibitem{Rasekh2018}
  1373	N.\ Rasekh,
  1374	\emph{Every elementary higher topos has a natural number object},
  1375	arXiv:1809.01734 (2018), TAC 37(13) 2021.
  1376	
  1377	\bibitem{Voevodsky2010}
  1378	V.\ Voevodsky,
  1379	\emph{Univalent foundations of mathematics},
  1380	preprint, IAS Princeton (2010).
  1381	
  1382	\bibitem{Hyland1982}
  1383	J.\ M.\ E.\ Hyland,
  1384	\emph{The effective topos},
  1385	in The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland (1982), 165--216.
  1386	
  1387	\bibitem{MyhillCST}
  1388	J.\ Myhill,
  1389	\emph{Constructive set theory},
  1390	Journal of Symbolic Logic 40 (1975), 347--382.
  1391	
  1392	\bibitem{Joyal1984}
  1393	A.\ Joyal and I.\ Moerdijk,
  1394	\emph{Algebraic Set Theory},
  1395	LMS Lecture Note Series 220, Cambridge University Press (1995).
  1396	
  1397	\bibitem{Tsementzis2017}
  1398	D.\ Tsementzis,
  1399	\emph{First-order logic with isomorphism},
  1400	arXiv:1603.03092 (2016/2017).
  1401	
  1402	\bibitem{Awodey2009StructuralismInvariance}
  1403	S.\ Awodey,
  1404	\emph{From sets to types to categories to sets},
  1405	in Foundational Theories of Classical and Constructive Mathematics, Springer (2009).
  1406	
  1407	\bibitem{Riehl2017}
  1408	E.\ Riehl and M.\ Shulman,
  1409	\emph{A type theory for synthetic $\infty$-categories},
  1410	Higher Structures 1 (2017), 147--224, arXiv:1705.07442.
  1411	
  1412	\bibitem{Szumilo2019}
  1413	K.\ Szumi\l{}o,
  1414	\emph{Frames in cofibration categories},
  1415	Journal of Homotopy and Related Structures 14 (2019), 345--378.
  1416	See also: \emph{$n$-FOLDS and Reedy fibrant diagrams},
  1417	preprint, 2019.
  1418	
  1419	\end{thebibliography}
  1420	
  1421	\end{document}

codex
The existing log shows no fatal errors or undefined references, but it does show several layout warnings and PDF-bookmark warnings. I’m doing a clean temp-directory build now so the review isn’t tied to stale auxiliary files in the repo.
exec
/usr/local/bin/zsh -lc 'rm -rf /tmp/latex-review-etcs && mkdir -p /tmp/latex-review-etcs && latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/latex-review-etcs papers/latex/etcs-izf-folds.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 1737ms:
Rc files read (in order):
  NONE
Latexmk: This is Latexmk, John Collins, 9 March 2026. Version 4.88.
No existing .aux file, so I'll make a simple one, and require run of *latex.
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Category 'other':
  Rerun of 'pdflatex' forced or previously required:
    Reason or flag: 'Initial setup'

------------
Run number 1 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/latex-review-etcs"  "papers/latex/etcs-izf-folds.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/etcs-izf-folds.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mhsetup.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/private/tmp/latex-review-etcs/etcs-izf-folds.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
No file etcs-izf-folds.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}]

LaTeX Warning: Citation `Awodey2014' on page 2 undefined on input line 137.


LaTeX Warning: Citation `McLarty2004' on page 2 undefined on input line 137.

[2{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]

LaTeX Warning: Reference `sec:boundary' on page 1 undefined on input line 174.


Overfull \hbox (52.87779pt too wide) in paragraph at lines 177--192
 [] 

LaTeX Warning: Reference `sec:hott' on page 1 undefined on input line 195.


LaTeX Warning: Reference `thm:fefar' on page 1 undefined on input line 195.


LaTeX Warning: Reference `sec:etcs' on page 1 undefined on input line 199.


LaTeX Warning: Reference `sec:izf' on page 1 undefined on input line 202.


LaTeX Warning: Reference `sec:folds' on page 1 undefined on input line 204.


LaTeX Warning: Reference `sec:hott' on page 1 undefined on input line 206.


LaTeX Warning: Reference `sec:models' on page 1 undefined on input line 208.


LaTeX Warning: Reference `sec:boundary' on page 1 undefined on input line 210.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 211.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 212
.


LaTeX Warning: Citation `Lawvere1964' on page 3 undefined on input line 221.


LaTeX Warning: Citation `LawvereRosebrugh2003' on page 3 undefined on input lin
e 221.


LaTeX Warning: Citation `McLarty2004' on page 3 undefined on input line 222.

[3] [4]

LaTeX Warning: Citation `McLarty2004' on page 5 undefined on input line 293.


LaTeX Warning: Reference `sec:models' on page 1 undefined on input line 294.


LaTeX Warning: Reference `def:etcsadd' on page 1 undefined on input line 332.


LaTeX Warning: Reference `sec:boundary' on page 1 undefined on input line 361.

[5]

LaTeX Warning: Citation `Awodey2014' on page 6 undefined on input line 365.


LaTeX Warning: Citation `StanfordIZFCZF' on page 6 undefined on input line 380.


[6]

LaTeX Warning: Citation `Friedman1973' on page 7 undefined on input line 423.


LaTeX Warning: Citation `Shulman2019' on page 7 undefined on input line 461.


LaTeX Warning: Citation `HoTTBook' on page 7 undefined on input line 477.

[7]

LaTeX Warning: Citation `Aczel1978' on page 8 undefined on input line 503.


LaTeX Warning: Citation `Aczel1978' on page 8 undefined on input line 511.


LaTeX Warning: Citation `Makkai1995' on page 8 undefined on input line 526.

[8]

LaTeX Warning: Citation `Makkai1995' on page 9 undefined on input line 567.


LaTeX Warning: Citation `Makkai1995' on page 9 undefined on input line 589.

[9]

LaTeX Warning: Citation `Makkai1995' on page 10 undefined on input line 603.


LaTeX Warning: Citation `Palmgren2016' on page 10 undefined on input line 616.


LaTeX Warning: Citation `Palmgren2016' on page 10 undefined on input line 620.

[10]

LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 666
.


LaTeX Warning: Reference `prop:skeleton-not-folds' on page 1 undefined on input
 line 672.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 678.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 678.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 678.


LaTeX Warning: Citation `Szumilo2019' on page 11 undefined on input line 691.


LaTeX Warning: Citation `HoTTBook' on page 11 undefined on input line 699.

[11]
Overfull \hbox (20.90613pt too wide) in paragraph at lines 729--729
[]\OT1/cmr/bx/n/14.4 The Uni-va-lence Prin-ci-ple of Ahrens--North--Shulman--Ts
ementzis

LaTeX Warning: Citation `ANST2019' on page 12 undefined on input line 731.


LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 750.


LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 752.

[12]
Overfull \hbox (20.95871pt too wide) in paragraph at lines 767--771
\OT1/cmr/m/it/12 Then $[]$, with the ob-vi-ous mor-phism struc-ture (func-tions
 be-tween sets) and iden-tity/composition,

LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 811.

[13]

LaTeX Warning: Citation `Makkai1995' on page 14 undefined on input line 851.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.


LaTeX Warning: Citation `Shulman2019' on page 14 undefined on input line 861.

[14]

LaTeX Warning: Citation `Shulman2019' on page 15 undefined on input line 913.

[15]

LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 951.

[16]

LaTeX Warning: Reference `thm:foldsneedsua' on page 1 undefined on input line 1
022.


LaTeX Warning: Reference `thm:sipneedsua' on page 1 undefined on input line 102
2.


LaTeX Warning: Citation `ANST2019' on page 17 undefined on input line 1026.


LaTeX Warning: Reference `thm:sipneedsua' on page 1 undefined on input line 103
3.


LaTeX Warning: Reference `thm:foldsneedsua' on page 1 undefined on input line 1
034.


LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 1073.

[17] [18] [19]
Overfull \hbox (23.90193pt too wide) in paragraph at lines 1173--1175
[]\OT1/cmr/m/n/12 Associativity: $\OMS/cmsy/m/n/12 8\OML/cmm/m/it/12 a; b; c; x
y; yz; abc \OT1/cmr/m/n/12 : \OML/cmm/m/it/12 M: P\OT1/cmr/m/n/12 (\OML/cmm/m/i
t/12 a; b; xy\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/
n/12 (\OML/cmm/m/it/12 xy; c; abc\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/
m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 b; c; yz\OT1/cmr/m/n/12 ) \OMS/cmsy/
m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; yz; abc[]\OT1/c
mr/m/n/12 ) \OMS/cmsy/m/n/12 )
[20]
Overfull \hbox (8.78873pt too wide) in paragraph at lines 1230--1230
[]\OT1/cmr/bx/n/17.28 Discussion (ex-tended): Prac-ti-cal foun-da-tional choice
 
[21] [22] [23] [24] (/private/tmp/latex-review-etcs/etcs-izf-folds.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `etcs-izf-folds.out' has changed.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/cm-super/sfti1200.pfb>
Output written on /private/tmp/latex-review-etcs/etcs-izf-folds.pdf (24 pages, 
357504 bytes).
Transcript written on /private/tmp/latex-review-etcs/etcs-izf-folds.log.
Latexmk: Getting log file '/private/tmp/latex-review-etcs/etcs-izf-folds.log'
Latexmk: Examining '/private/tmp/latex-review-etcs/etcs-izf-folds.fls'
Latexmk: Examining '/private/tmp/latex-review-etcs/etcs-izf-folds.log'
Latexmk: Missing input file 'etcs-izf-folds.toc' message in .log file:
  No file etcs-izf-folds.toc.
Latexmk: References changed.
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/latex-review-etcs/etcs-izf-folds.pdf'
Latexmk: Log file says output to '/private/tmp/latex-review-etcs/etcs-izf-folds.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/latex-review-etcs/etcs-izf-folds.aux
  /private/tmp/latex-review-etcs/etcs-izf-folds.out
  /private/tmp/latex-review-etcs/etcs-izf-folds.toc

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/latex-review-etcs"  "papers/latex/etcs-izf-folds.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/etcs-izf-folds.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mhsetup.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/private/tmp/latex-review-etcs/etcs-izf-folds.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/latex-review-etcs/etcs-izf-folds.out)
(/private/tmp/latex-review-etcs/etcs-izf-folds.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/latex-review-etcs/etcs-izf-folds.toc [1{/usr/local/texlive/2026/t
exmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texlive/20
26/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]
Overfull \hbox (52.87779pt too wide) in paragraph at lines 177--192
 [] 

Overfull \hbox (6.22894pt too wide) in paragraph at lines 199--213
\OT1/cmr/m/n/12 (NNO, prod-ucts, ex-po-nen-tials), and re-calls McLarty's bi-in
terpretation the-o-rem with Bounded
[5] [6] [7] [8] [9] [10] [11]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 678.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 678.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 678.

[12]
Overfull \hbox (20.90613pt too wide) in paragraph at lines 729--729
[]\OT1/cmr/bx/n/14.4 The Uni-va-lence Prin-ci-ple of Ahrens--North--Shulman--Ts
ementzis
[13]
Overfull \hbox (20.95871pt too wide) in paragraph at lines 767--771
\OT1/cmr/m/it/12 Then $[]$, with the ob-vi-ous mor-phism struc-ture (func-tions
 be-tween sets) and iden-tity/composition,
[14] [15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.

[16] [17] [18] [19] [20]
Overfull \hbox (23.90193pt too wide) in paragraph at lines 1173--1175
[]\OT1/cmr/m/n/12 Associativity: $\OMS/cmsy/m/n/12 8\OML/cmm/m/it/12 a; b; c; x
y; yz; abc \OT1/cmr/m/n/12 : \OML/cmm/m/it/12 M: P\OT1/cmr/m/n/12 (\OML/cmm/m/i
t/12 a; b; xy\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/
n/12 (\OML/cmm/m/it/12 xy; c; abc\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/
m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 b; c; yz\OT1/cmr/m/n/12 ) \OMS/cmsy/
m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; yz; abc[]\OT1/c
mr/m/n/12 ) \OMS/cmsy/m/n/12 )
[21]
Overfull \hbox (8.78873pt too wide) in paragraph at lines 1230--1230
[]\OT1/cmr/bx/n/17.28 Discussion (ex-tended): Prac-ti-cal foun-da-tional choice
 
[22] [23] [24] [25] (/private/tmp/latex-review-etcs/etcs-izf-folds.aux)

LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/cm-super/sfti1200.pfb>
Output written on /private/tmp/latex-review-etcs/etcs-izf-folds.pdf (25 pages, 
369461 bytes).
Transcript written on /private/tmp/latex-review-etcs/etcs-izf-folds.log.
Latexmk: Getting log file '/private/tmp/latex-review-etcs/etcs-izf-folds.log'
Latexmk: Examining '/private/tmp/latex-review-etcs/etcs-izf-folds.fls'
Latexmk: Examining '/private/tmp/latex-review-etcs/etcs-izf-folds.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/latex-review-etcs/etcs-izf-folds.pdf'
Latexmk: Log file says output to '/private/tmp/latex-review-etcs/etcs-izf-folds.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/latex-review-etcs/etcs-izf-folds.aux
  /private/tmp/latex-review-etcs/etcs-izf-folds.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/latex-review-etcs"  "papers/latex/etcs-izf-folds.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/etcs-izf-folds.tex
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/article.cls
Document Class: article 2025/01/22 v1.4n Standard LaTeX document class
(/usr/local/texlive/2026/texmf-dist/tex/latex/base/size12.clo))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsmath.sty
For additional information on amsmath, use the `?' option.
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amstext.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsgen.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mathtools.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/mathtools/mhsetup.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/tikz-cd/tikzlibrarycd.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibrarymatrix.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/frontendlayer/tikz/librarie
s/tikzlibraryquotes.code.tex)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/libraries/pgflibraryarrows.
meta.code.tex)))
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

) (/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
 (/private/tmp/latex-review-etcs/etcs-izf-folds.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/latex-review-etcs/etcs-izf-folds.out)
(/private/tmp/latex-review-etcs/etcs-izf-folds.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/latex-review-etcs/etcs-izf-folds.toc [1{/usr/local/texlive/2026/t
exmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texlive/20
26/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]
Overfull \hbox (52.87779pt too wide) in paragraph at lines 177--192
 [] 

Overfull \hbox (6.22894pt too wide) in paragraph at lines 199--213
\OT1/cmr/m/n/12 (NNO, prod-ucts, ex-po-nen-tials), and re-calls McLarty's bi-in
terpretation the-o-rem with Bounded
[5] [6] [7] [8] [9] [10] [11]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 678.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 678.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 678.

[12]
Overfull \hbox (20.90613pt too wide) in paragraph at lines 729--729
[]\OT1/cmr/bx/n/14.4 The Uni-va-lence Prin-ci-ple of Ahrens--North--Shulman--Ts
ementzis
[13]
Overfull \hbox (20.95871pt too wide) in paragraph at lines 767--771
\OT1/cmr/m/it/12 Then $[]$, with the ob-vi-ous mor-phism struc-ture (func-tions
 be-tween sets) and iden-tity/composition,
[14] [15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 859.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 859.

[16] [17] [18] [19] [20]
Overfull \hbox (23.90193pt too wide) in paragraph at lines 1173--1175
[]\OT1/cmr/m/n/12 Associativity: $\OMS/cmsy/m/n/12 8\OML/cmm/m/it/12 a; b; c; x
y; yz; abc \OT1/cmr/m/n/12 : \OML/cmm/m/it/12 M: P\OT1/cmr/m/n/12 (\OML/cmm/m/i
t/12 a; b; xy\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/
n/12 (\OML/cmm/m/it/12 xy; c; abc\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ^ \OML/cmm/
m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 b; c; yz\OT1/cmr/m/n/12 ) \OMS/cmsy/
m/n/12 ^ \OML/cmm/m/it/12 P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; yz; abc[]\OT1/c
mr/m/n/12 ) \OMS/cmsy/m/n/12 )
[21]
Overfull \hbox (8.78873pt too wide) in paragraph at lines 1230--1230
[]\OT1/cmr/bx/n/17.28 Discussion (ex-tended): Prac-ti-cal foun-da-tional choice
 
[22] [23] [24] [25] (/private/tmp/latex-review-etcs/etcs-izf-folds.aux) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pu
blic/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/cm-super/sfti1200.pfb>
Output written on /private/tmp/latex-review-etcs/etcs-izf-folds.pdf (25 pages, 
369466 bytes).
Transcript written on /private/tmp/latex-review-etcs/etcs-izf-folds.log.
Latexmk: Getting log file '/private/tmp/latex-review-etcs/etcs-izf-folds.log'
Latexmk: Examining '/private/tmp/latex-review-etcs/etcs-izf-folds.fls'
Latexmk: Examining '/private/tmp/latex-review-etcs/etcs-izf-folds.log'
Latexmk: Log file says output to '/private/tmp/latex-review-etcs/etcs-izf-folds.pdf'
Latexmk: Log file says output to '/private/tmp/latex-review-etcs/etcs-izf-folds.pdf'
Latexmk: All targets (/private/tmp/latex-review-etcs/etcs-izf-folds.pdf) are up-to-date


codex
The clean `latexmk` build converges after three `pdflatex` passes with no fatal compilation errors, no unresolved citations, and no unresolved cross-references. The remaining findings are real formatting/package warnings from the final log: overfull boxes, bookmark sanitization, and one legacy-package warning.
exec
/usr/local/bin/zsh -lc 'rg -n "''^(Overfull|Underfull|!|LaTeX Warning|Package .* Warning|Package hyperref Warning|Missing character|Undefined control sequence|Reference .* undefined|Citation .* undefined|There were undefined|Label'"\\(s\\)|Rerun)\" /tmp/latex-review-etcs/etcs-izf-folds.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
654:Package everypage Warning: Functionality similar to this package has recently
660:Package everypage Warning: You appear to be running a version of LaTeX
779:Overfull \hbox (52.87779pt too wide) in paragraph at lines 177--192
784:Overfull \hbox (6.22894pt too wide) in paragraph at lines 199--213
791:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
795:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
799:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
803:Overfull \hbox (20.90613pt too wide) in paragraph at lines 729--729
809:Overfull \hbox (20.95871pt too wide) in paragraph at lines 767--771
816:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
820:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
824:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
828:Overfull \hbox (23.90193pt too wide) in paragraph at lines 1173--1175
839:Overfull \hbox (8.78873pt too wide) in paragraph at lines 1230--1230

exec
/usr/local/bin/zsh -lc 'which chktex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|cref|Cref|cite)\\{|\\\\label\\{\" papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|cref|Cref|cite)\{|\label\{)
                               ^^
error: unrecognized escape sequence

 succeeded in 0ms:
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\label{\" papers/latex/etcs-izf-folds.tex && rg -n -F \"\\cref{\" papers/latex/etcs-izf-folds.tex && rg -n -F \"\\Cref{\" papers/latex/etcs-izf-folds.tex && rg -n -F \"\\cite{\" papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
100:\label{sec:intro}
215:\label{sec:etcs}
225:\label{def:etcs}
263:\label{prop:etcsfunext}
271:\label{prop:etcspower}
282:\label{thm:mclarty}
321:\label{def:etcsadd}
331:\label{prop:etcsadd}
375:\label{sec:izf}
384:\label{def:izf}
424:\label{thm:friedman}
465:\label{thm:awodey-warren}
483:\label{thm:diaconescu}
522:\label{sec:folds}
527:\label{def:foldssig}
541:\label{ex:foldscat}
568:\label{def:foldsequiv}
590:\label{thm:invariance}
608:\label{cor:invariance}
621:\label{thm:palmgren}
635:\label{ex:catequivfolds}
656:\label{prop:skeleton-not-folds}
695:\label{sec:hott}
732:\label{thm:up}
762:\label{thm:setsmodel}
790:\label{def:vhott}
801:\label{thm:vmodelizf}
816:\label{sec:models}
852:\label{thm:foldsfib}
862:\label{thm:shulman}
917:\label{sec:boundary}
922:\label{def:boundary}
933:\label{thm:sipneedsua}
946:\label{thm:foldsneedsua}
960:\label{thm:nnonear}
970:\label{thm:fefar}
983:\label{thm:straddlers}
1014:\label{prop:diagnostic}
1050:\label{sec:open}
1055:\label{conj:etcscontract}
1071:\label{conj:cubicalfolds}
1084:\label{conj:izfhott}
1100:\label{sec:discussion}
1136:\label{sec:casestudy}
1195:\label{thm:sipmonoid}
1231:\label{sec:practical}
1279:\label{sec:conclusion}
174:We will argue in \cref{sec:boundary} that the boundary cuts as follows:
195:independent of MLTT alone; see \cref{sec:hott} and \cref{thm:fefar} for the precise
294:return to it in \cref{sec:models}.
332:There exists a unique morphism $+$ as in \cref{def:etcsadd}.
361:\cref{sec:boundary} that AC is on the \emph{straddling} side of the univalence boundary.
666:(\cref{thm:invariance}), $\mathcal{C}_0\models \varphi \Leftrightarrow \mathcal{C}_1
752:But \cref{thm:up} is stronger: it gives an \emph{equivalence}, not just an implication.
811:(\cref{thm:up}) is the statement that the type of $\mathbf{L}$-structures has the
951:$\mathrm{UA}\Rightarrow$ statement: this is \cref{thm:up}.
1022:\cref{thm:sipneedsua,thm:foldsneedsua} that these need UA.
1033:\item SIP (\cref{thm:sipneedsua}).
1034:\item Univalence Principle for FOLDS (\cref{thm:foldsneedsua}).
1073:$n$-level FOLDS (Szumi\l{}o 2019), and proving \cref{thm:up} formally for $n\le 2$
199:\Cref{sec:etcs} states the eight-axiom presentation of ETCS, proves the elementary
202:\Cref{sec:izf} presents IZF, contrasts it with CZF and ZFC, and discusses the
204:\Cref{sec:folds} develops Makkai's signature theory, defines FOLDS-equivalence, and
206:\Cref{sec:hott} reframes HoTT as the unifying framework: which structural principles
208:\Cref{sec:models} surveys models: ETCS in toposes, FOLDS in fibrations, HoTT in
210:\Cref{sec:boundary} formally analyses the univalence boundary.
211:\Cref{sec:open} states three open problems.
212:\Cref{sec:conclusion} concludes.
672:\Cref{prop:skeleton-not-folds} is paradigmatic: any predicate referring to specific
750:\Cref{thm:up} subsumes Makkai's Invariance Theorem: indeed if $M\simeq_F N$ then
137:Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the
221:\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and
222:McLarty \cite{McLarty2004}.
293:in the appropriate 2-categorical sense. Full proof in McLarty \cite{McLarty2004}; we
365:Awodey \cite{Awodey2014} introduces a refined notion of \emph{structural foundation}: a
380:\cite{StanfordIZFCZF}) is the system over intuitionistic first-order logic with equality
423:\begin{theorem}[Friedman \cite{Friedman1973}]
461:\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising
477:the Mahlo-style closure on the universe. See HoTT Book \cite{HoTTBook} \S10.5 for details.
503:Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial
511:in Martin-L\"of type theory (the sets-in-types interpretation \cite{Aczel1978}), and
526:\begin{definition}[FOLDS signature, after Makkai \cite{Makkai1995}]
567:\begin{definition}[FOLDS-equivalence, Makkai \cite{Makkai1995}]
589:\begin{theorem}[Makkai's Invariance Theorem \cite{Makkai1995}]
616:Palmgren \cite{Palmgren2016} showed FOLDS embeds into intensional Martin-L\"of type
620:\begin{theorem}[Palmgren \cite{Palmgren2016}]
691:Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose
699:Univalence (Voevodsky 2010, HoTT Book \cite{HoTTBook} \S2.10) is the axiom:
731:\begin{theorem}[Univalence Principle, ANST \cite{ANST2019}]
851:\begin{theorem}[Makkai \cite{Makkai1995}]
861:\begin{theorem}[Shulman \cite{Shulman2019}]
913:inaccessibles (Shulman \cite{Shulman2019}), since each universe behaves as a Grothendieck
1026:formalisation of the schema, deferred to \cite{ANST2019}.

exec
/usr/local/bin/zsh -lc 'chktex -q -n 8 -n 13 -n 24 -n 36 papers/latex/etcs-izf-folds.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 9 in papers/latex/etcs-izf-folds.tex line 38: `]' expected, found `}'.
\providecommand{\llbracket}{[\![}  
                                ^
Warning 9 in papers/latex/etcs-izf-folds.tex line 39: `}' expected, found `]'.
\providecommand{\rrbracket}{]\!]}  
                            ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 137: Non-breaking space (`~') should have been used.
Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the  
                ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 137: Non-breaking space (`~') should have been used.
Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the  
                                           ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 177: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{|l|c|c|c|c|}  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 178: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 180: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 190: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 2 in papers/latex/etcs-izf-folds.tex line 221: Non-breaking space (`~') should have been used.
\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 221: Non-breaking space (`~') should have been used.
\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and  
                                                   ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 222: Non-breaking space (`~') should have been used.
McLarty \cite{McLarty2004}.  
       ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 293: Non-breaking space (`~') should have been used.
in the appropriate 2-categorical sense. Full proof in McLarty \cite{McLarty2004}; we  
                                                             ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 365: Non-breaking space (`~') should have been used.
Awodey \cite{Awodey2014} introduces a refined notion of \emph{structural foundation}: a  
      ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 380: Non-breaking space (`~') should have been used.
\cite{StanfordIZFCZF}) is the system over intuitionistic first-order logic with equality  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 423: Non-breaking space (`~') should have been used.
\begin{theorem}[Friedman \cite{Friedman1973}]  
                        ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 461: Non-breaking space (`~') should have been used.
\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 477: Non-breaking space (`~') should have been used.
the Mahlo-style closure on the universe. See HoTT Book \cite{HoTTBook} \S10.5 for details.  
                                                      ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 503: Non-breaking space (`~') should have been used.
Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial  
                                 ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 511: Non-breaking space (`~') should have been used.
in Martin-L\"of type theory (the sets-in-types interpretation \cite{Aczel1978}), and  
                                                             ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 526: Non-breaking space (`~') should have been used.
\begin{definition}[FOLDS signature, after Makkai \cite{Makkai1995}]  
                                                ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 567: Non-breaking space (`~') should have been used.
\begin{definition}[FOLDS-equivalence, Makkai \cite{Makkai1995}]  
                                            ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 589: Non-breaking space (`~') should have been used.
\begin{theorem}[Makkai's Invariance Theorem \cite{Makkai1995}]  
                                           ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 603: Non-breaking space (`~') should have been used.
\cite[Theorem 4.4]{Makkai1995}; an alternative homotopy-theoretic proof appears in  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 616: Non-breaking space (`~') should have been used.
Palmgren \cite{Palmgren2016} showed FOLDS embeds into intensional Martin-L\"of type  
        ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 620: Non-breaking space (`~') should have been used.
\begin{theorem}[Palmgren \cite{Palmgren2016}]  
                        ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 691: Non-breaking space (`~') should have been used.
Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose  
          ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 699: Non-breaking space (`~') should have been used.
Univalence (Voevodsky 2010, HoTT Book \cite{HoTTBook} \S2.10) is the axiom:  
                                     ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 731: Non-breaking space (`~') should have been used.
\begin{theorem}[Univalence Principle, ANST \cite{ANST2019}]  
                                          ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 851: Non-breaking space (`~') should have been used.
\begin{theorem}[Makkai \cite{Makkai1995}]  
                      ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 861: Non-breaking space (`~') should have been used.
\begin{theorem}[Shulman \cite{Shulman2019}]  
                       ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 876: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                        ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 876: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                                       ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 876: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                                                    ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 876: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                                                                 ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 877: Use either `` or '' as an alternative to `"'.
\mathrm{BZ}+\mathrm{R} \arrow[d, "\text{Friedman}"] \\  
                                 ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 877: Use either `` or '' as an alternative to `"'.
\mathrm{BZ}+\mathrm{R} \arrow[d, "\text{Friedman}"] \\  
                                                 ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 878: Use either `` or '' as an alternative to `"'.
\mathrm{Topos+NNO+AC} \arrow[r, "\text{int.\ lang.}"'] &  
                                ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 878: Use either `` or '' as an alternative to `"'.
\mathrm{Topos+NNO+AC} \arrow[r, "\text{int.\ lang.}"'] &  
                                                   ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 879: Use either `` or '' as an alternative to `"'.
\mathrm{IZF}+\mathrm{AC} \arrow[r, leftrightarrow, "\text{Diaconescu}"]&\mathrm{ZFC}  
                                                   ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 879: Use either `` or '' as an alternative to `"'.
\mathrm{IZF}+\mathrm{AC} \arrow[r, leftrightarrow, "\text{Diaconescu}"]&\mathrm{ZFC}  
                                                                     ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 893: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{|l|l|l|}  
^^^^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 894: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 896: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 906: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 2 in papers/latex/etcs-izf-folds.tex line 913: Non-breaking space (`~') should have been used.
inaccessibles (Shulman \cite{Shulman2019}), since each universe behaves as a Grothendieck  
                      ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 994: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{c|cc}  
^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 996: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 2 in papers/latex/etcs-izf-folds.tex line 1026: Non-breaking space (`~') should have been used.
formalisation of the schema, deferred to \cite{ANST2019}.  
                                        ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1211: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{|l|l|l|l|}  
^^^^^^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1212: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1214: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1220: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^

codex
Built cleanly with `latexmk -pdf` in `/tmp`: no fatal compilation errors, no unresolved citations, and no broken cross-references after convergence.

Issues found:

1. `papers/latex/etcs-izf-folds.tex:22,43` - `everypage` is legacy and emits package warnings on current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook` with a modern hook, e.g. `\AddToHookNext{shipout/background}{...}` before `\maketitle`.

2. `papers/latex/etcs-izf-folds.tex:38-39` - `\llbracket` / `\rrbracket` are hand-faked as `[![` / `]!]`, which is fragile and visually inferior.
   Fix: add `\usepackage{stmaryrd}` and remove the fallback definitions, or define a paired delimiter around the package-provided symbols.

3. `papers/latex/etcs-izf-folds.tex:137,221,222,293,365,380,423,461,477,503,511,526,567,589,603,616,620,691,699,731,851,861,913,1026` - citation spacing uses ordinary spaces before `\cite`, allowing bad line breaks.
   Fix: use nonbreaking spaces, e.g. `Awodey~\cite{Awodey2014}` and `paper~\cite{Lawvere1964}`.

4. `papers/latex/etcs-izf-folds.tex:177-192` - table is overfull by `52.87779pt`.
   Fix: use `tabularx`/`booktabs`, e.g. add `\usepackage{tabularx,booktabs}` and change to `\begin{tabularx}{\textwidth}{@{}Xcccc@{}} ...`.

5. `papers/latex/etcs-izf-folds.tex:199-213` - outline paragraph is overfull by `6.22894pt`, mainly around long prose/cross-reference text.
   Fix: shorten the sentence or add controlled breaks such as `bi\allowbreak-interpretation`; alternatively set a small `\emergencystretch`.

6. `papers/latex/etcs-izf-folds.tex:678` - section title contains math `$\infty$`, causing `hyperref` PDF-string warnings.
   Fix: `\subsection{Higher signatures: bicategories and \texorpdfstring{$\infty$}{infinity}-categories}`.

7. `papers/latex/etcs-izf-folds.tex:729` - subsection heading is overfull by `20.90613pt`.
   Fix: shorten the heading or use an optional short title plus a manual break, e.g. `\subsection[Univalence Principle (ANST)]{The Univalence Principle of\\ Ahrens--North--Shulman--Tsementzis (2019)}`.

8. `papers/latex/etcs-izf-folds.tex:767-771` - theorem statement is overfull by `20.95871pt`; `identity/composition` is an avoidable unbreakable phrase.
   Fix: rewrite as “identity and composition”, or insert `identity\allowbreak/composition`.

9. `papers/latex/etcs-izf-folds.tex:859` - section title contains math `$(\infty,1)$`, causing `hyperref` PDF-string warnings.
   Fix: `\subsection{HoTT in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}`.

10. `papers/latex/etcs-izf-folds.tex:1173-1175` - long inline associativity formula is overfull by `23.90193pt`.
    Fix: move the formula into a displayed `aligned` block after `\item Associativity:`.

11. `papers/latex/etcs-izf-folds.tex:1230` - section heading is overfull by `8.78873pt`.
    Fix: shorten to `\section{Practical foundational choice}` or use `\section[Practical foundational choice]{Discussion (extended):\\ Practical foundational choice}`.

VERDICT: NEEDS_FIX
2026-05-04T23:34:26.329096Z ERROR codex_core::session: failed to record rollout items: thread 019df555-d131-7ad1-bf26-f5dcf5f867e5 not found
tokens used
84,840
Built cleanly with `latexmk -pdf` in `/tmp`: no fatal compilation errors, no unresolved citations, and no broken cross-references after convergence.

Issues found:

1. `papers/latex/etcs-izf-folds.tex:22,43` - `everypage` is legacy and emits package warnings on current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook` with a modern hook, e.g. `\AddToHookNext{shipout/background}{...}` before `\maketitle`.

2. `papers/latex/etcs-izf-folds.tex:38-39` - `\llbracket` / `\rrbracket` are hand-faked as `[![` / `]!]`, which is fragile and visually inferior.
   Fix: add `\usepackage{stmaryrd}` and remove the fallback definitions, or define a paired delimiter around the package-provided symbols.

3. `papers/latex/etcs-izf-folds.tex:137,221,222,293,365,380,423,461,477,503,511,526,567,589,603,616,620,691,699,731,851,861,913,1026` - citation spacing uses ordinary spaces before `\cite`, allowing bad line breaks.
   Fix: use nonbreaking spaces, e.g. `Awodey~\cite{Awodey2014}` and `paper~\cite{Lawvere1964}`.

4. `papers/latex/etcs-izf-folds.tex:177-192` - table is overfull by `52.87779pt`.
   Fix: use `tabularx`/`booktabs`, e.g. add `\usepackage{tabularx,booktabs}` and change to `\begin{tabularx}{\textwidth}{@{}Xcccc@{}} ...`.

5. `papers/latex/etcs-izf-folds.tex:199-213` - outline paragraph is overfull by `6.22894pt`, mainly around long prose/cross-reference text.
   Fix: shorten the sentence or add controlled breaks such as `bi\allowbreak-interpretation`; alternatively set a small `\emergencystretch`.

6. `papers/latex/etcs-izf-folds.tex:678` - section title contains math `$\infty$`, causing `hyperref` PDF-string warnings.
   Fix: `\subsection{Higher signatures: bicategories and \texorpdfstring{$\infty$}{infinity}-categories}`.

7. `papers/latex/etcs-izf-folds.tex:729` - subsection heading is overfull by `20.90613pt`.
   Fix: shorten the heading or use an optional short title plus a manual break, e.g. `\subsection[Univalence Principle (ANST)]{The Univalence Principle of\\ Ahrens--North--Shulman--Tsementzis (2019)}`.

8. `papers/latex/etcs-izf-folds.tex:767-771` - theorem statement is overfull by `20.95871pt`; `identity/composition` is an avoidable unbreakable phrase.
   Fix: rewrite as “identity and composition”, or insert `identity\allowbreak/composition`.

9. `papers/latex/etcs-izf-folds.tex:859` - section title contains math `$(\infty,1)$`, causing `hyperref` PDF-string warnings.
   Fix: `\subsection{HoTT in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}`.

10. `papers/latex/etcs-izf-folds.tex:1173-1175` - long inline associativity formula is overfull by `23.90193pt`.
    Fix: move the formula into a displayed `aligned` block after `\item Associativity:`.

11. `papers/latex/etcs-izf-folds.tex:1230` - section heading is overfull by `8.78873pt`.
    Fix: shorten to `\section{Practical foundational choice}` or use `\section[Practical foundational choice]{Discussion (extended):\\ Practical foundational choice}`.

VERDICT: NEEDS_FIX

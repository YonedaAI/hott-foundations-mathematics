---
reviewer: codex (OpenAI)
type: formatting
paper: etcs-izf-folds
round: 3
date: 2026-05-04T23:37:45Z
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
session id: 019df55a-dbdc-7340-92fb-550c08b45b21
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll inspect the TeX source first, then try the project’s LaTeX build path if one exists so the findings are grounded in actual compiler/log output.
exec
/usr/local/bin/zsh -lc "find . -maxdepth 3 \\( -name 'Makefile' -o -name 'latexmkrc' -o -name '*.bib' -o -name '*.sty' -o -name '*.cls' -o -name 'package.json' \\) -print" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	\usepackage{mathtools}
     6	\usepackage{stmaryrd}
     7	
     8	% Diagrams
     9	\usepackage{tikz-cd}
    10	\usepackage{tikz}
    11	
    12	% References
    13	\usepackage{hyperref}
    14	\usepackage{cleveref}
    15	
    16	% Graphics
    17	\usepackage{graphicx}
    18	
    19	% Page layout
    20	\usepackage[margin=1in]{geometry}
    21	
    22	% GrokRxiv sidebar
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
    37	% Provide \emergencystretch for line-breaking in long sentences
    38	\setlength{\emergencystretch}{2em}
    39	
    40	% GrokRxiv sidebar definition (uses modern LaTeX hook)
    41	\definecolor{grokgray}{RGB}{110,110,110}
    42	\AddToHook{shipout/foreground}{%
    43	  \ifnum\value{page}=1
    44	    \begin{tikzpicture}[remember picture, overlay]
    45	      \node[
    46	        rotate=90,
    47	        anchor=south,
    48	        font=\Large\sffamily\bfseries\color{grokgray},
    49	        inner sep=0pt
    50	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    51	      {GrokRxiv:2026.05.etcs-izf-folds\quad
    52	       [\,math.LO\,]\quad
    53	       04 May 2026};
    54	    \end{tikzpicture}
    55	  \fi
    56	}
    57	
    58	\title{ETCS, IZF, and FOLDS:\\
    59	Comparative Structural Foundations and the Univalence Boundary}
    60	
    61	\author{Matthew Long \\
    62	\textit{The YonedaAI Collaboration} \\
    63	\textit{YonedaAI Research Collective} \\
    64	Chicago, IL \\
    65	\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
    66	
    67	\date{4 May 2026}
    68	
    69	\begin{document}
    70	
    71	\maketitle
    72	
    73	\begin{abstract}
    74	We undertake a three-way structural comparison of three foundational systems: Lawvere's
    75	Elementary Theory of the Category of Sets (ETCS, 1964), Friedman's Intuitionistic
    76	Zermelo--Fraenkel set theory (IZF), and Makkai's First-Order Logic with Dependent Sorts
    77	(FOLDS, 1995); and we measure each against the Homotopy Type Theory (HoTT) frame in
    78	which the Univalence Axiom acts as a structural watermark. We give precise statements of
    79	all three axiomatisations, present the bi-interpretation theorems linking them
    80	(McLarty 2004 for ETCS $\equiv$ Bounded Zermelo + Replacement; Friedman--Aczel for IZF;
    81	Makkai's invariance theorem for FOLDS), and analyse which foundational principles in each
    82	system become \emph{theorems} (rather than axioms) in HoTT once Univalence is assumed.
    83	We identify what we call the \emph{univalence boundary}: the locus separating those
    84	structural principles whose validity in a foundation requires univalence (e.g.\ the
    85	Structure Identity Principle, full FOLDS-equivalence, indiscernibility of structurally
    86	isomorphic objects) from those that hold in much weaker fragments (e.g.\ existence of
    87	NNO, Replacement, the validity of equivalence-invariant first-order proofs). We
    88	formalise the comparison as a square of interpretations, identify three open problems on
    89	the univalence side, and provide companion code in Haskell (with QuickCheck-style
    90	invariance tests) and Lean~4 (Mathlib's \texttt{CategoryTheory}) demonstrating ETCS
    91	axioms, FOLDS signatures, and the invariance check. The paper continues the categorical
    92	foundations programme of Paper~VI of our prior series and complements Papers~II--V on
    93	HoTT.
    94	\end{abstract}
    95	
    96	\tableofcontents
    97	
    98	\section{Introduction}
    99	\label{sec:intro}
   100	
   101	\subsection{Why three foundations}
   102	
   103	The phrase ``foundations of mathematics'' is in 2026 plural by both fact and conviction.
   104	A working mathematician encountering structures up to isomorphism (vector spaces, groups,
   105	topological spaces, schemes, $\infty$-categories) needs an underlying logic that respects
   106	the equivalence principle: \emph{isomorphic objects share their mathematical content}.
   107	Classical Zermelo--Fraenkel set theory with Choice (ZFC), the de facto standard since the
   108	1920s, supports this principle only by a sociological convention --- the convention to
   109	prove only structural properties --- but the formalism itself permits non-structural
   110	predicates such as ``$\emptyset \in 7$'' (a sentence whose truth value depends on
   111	Kuratowski's particular encoding of pairs).
   112	
   113	The three foundational alternatives we examine in this paper each respond to that
   114	inadequacy in a different way:
   115	\begin{itemize}
   116	\item \textbf{ETCS (Lawvere 1964)} replaces the universe of sets-with-membership by a
   117	\emph{category} of sets-with-functions, axiomatised structurally as a well-pointed topos
   118	with a natural numbers object (NNO) and a choice operator;
   119	\item \textbf{IZF (Friedman 1973, Myhill, Aczel)} keeps the membership predicate but
   120	moves to intuitionistic logic, accepting full Separation, Replacement, Powerset, and
   121	Infinity while rejecting Excluded Middle and Choice; structuralism is enforced indirectly
   122	via realisability and topos-valued models;
   123	\item \textbf{FOLDS (Makkai 1995)} re-engineers the underlying \emph{logic} so that only
   124	isomorphism-invariant predicates are expressible; the equivalence principle is a metatheorem
   125	of the syntax rather than a moral imperative.
   126	\end{itemize}
   127	
   128	Each is motivated by the search for a logical environment in which equivalence-invariance
   129	is built in. Each succeeds for a different reason. And each has a precise relationship
   130	to HoTT, the foundation introduced by Voevodsky (2010) in which equivalence-invariance is
   131	proven as a theorem (the Univalence Axiom and its corollary, the Structure Identity
   132	Principle).
   133	
   134	\subsection{Structural vs material set theory}
   135	
   136	Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the
   137	following terminology.
   138	
   139	\begin{definition}[Material set theory]
   140	A set theory is \emph{material} if its primitive non-logical relation is membership
   141	$\in$, with sets identified by extensionality (two sets are equal iff they have the same
   142	elements), and where the universe of discourse is a single class of all sets ranging over
   143	a $\in$-tree.
   144	\end{definition}
   145	
   146	\begin{definition}[Structural set theory]
   147	A set theory is \emph{structural} if its primitive notions are sets and functions
   148	(equivalently: the objects and morphisms of a category), with sets identified up to
   149	unique isomorphism, and where membership is a derived notion ($x\in A$ means
   150	``$x:1\to A$ is a global element'').
   151	\end{definition}
   152	
   153	ZFC and IZF are material; ETCS and Lawvere's ETCC (Elementary Theory of the Category of
   154	Categories) are structural; FOLDS is neither --- it is a logic, applicable to either
   155	flavour, but designed so that even when interpreted materially, only structural sentences
   156	are syntactically expressible. HoTT is structural (in fact \emph{higher-structural}: types
   157	are identified up to higher equivalence).
   158	
   159	\subsection{The univalence boundary}
   160	
   161	The methodological question that organises this paper is:
   162	\begin{quote}
   163	\emph{Of the principles, axioms, and metatheorems that distinguish ETCS, IZF, and FOLDS,
   164	which become theorems in HoTT (with univalence) and which do not?}
   165	\end{quote}
   166	
   167	A principle that becomes a theorem under HoTT+UA but not under HoTT alone (i.e.\ the
   168	$(-1)$-truncated fragment, or the propositions-as-subsingletons fragment) lies on the
   169	\emph{far} side of the univalence boundary: it is \emph{conditional on} univalence.
   170	A principle that holds without univalence lies on the \emph{near} side: it is
   171	unconditional.
   172	
   173	We will argue in \cref{sec:boundary} that the boundary cuts as follows:
   174	
   175	\begin{center}\small
   176	\begin{tabular}{lcccc}
   177	\hline
   178	\textbf{Principle} & ETCS & IZF & FOLDS & UA in HoTT? \\
   179	\hline
   180	NNO existence & axiom & thm & expr.\ & no \\
   181	Function ext. & thm & thm & axiom & implied by UA\(^{*}\) \\
   182	Prop.\ ext. & thm & thm & expr.\ & no \\
   183	SIP & meta & --- & meta & \textbf{yes} \\
   184	FOLDS-eq.\ $=$ id & --- & --- & meta & \textbf{yes} \\
   185	EM & axiom & reject & expr.\ & indep. \\
   186	Choice & AC & reject & expr.\ & indep.\ (PEM+AC) \\
   187	Replacement & axiom & axiom & --- & thm (small) \\
   188	Powerset & derived & axiom & --- & impred.\ $\Omega$ \\
   189	\hline
   190	\end{tabular}
   191	\end{center}
   192	
   193	\noindent\(^{*}\)Function extensionality (FE) is a theorem of HoTT~+~UA (Voevodsky) but is
   194	independent of MLTT alone; see \cref{sec:hott} and \cref{thm:fefar} for the precise
   195	nuance.
   196	
   197	\subsection{Outline}
   198	\Cref{sec:etcs} states the eight-axiom presentation of ETCS, proves the elementary
   199	consequences (NNO, products, exponentials), and recalls McLarty's bi-interpretation
   200	theorem with Bounded Zermelo + Replacement.
   201	\Cref{sec:izf} presents IZF, contrasts it with CZF and ZFC, and discusses the
   202	realisability and topos-valued models that connect IZF to HoTT.
   203	\Cref{sec:folds} develops Makkai's signature theory, defines FOLDS-equivalence, and
   204	proves Makkai's Invariance Theorem (every FOLDS-formula is invariant under FOLDS-equivalence).
   205	\Cref{sec:hott} reframes HoTT as the unifying framework: which structural principles
   206	become theorems, which need univalence.
   207	\Cref{sec:models} surveys models: ETCS in toposes, FOLDS in fibrations, HoTT in
   208	$(\infty,1)$-toposes.
   209	\Cref{sec:boundary} formally analyses the univalence boundary.
   210	\Cref{sec:open} states three open problems.
   211	\Cref{sec:conclusion} concludes.
   212	
   213	\section{ETCS: The Elementary Theory of the Category of Sets}
   214	\label{sec:etcs}
   215	
   216	\subsection{The eight axioms}
   217	
   218	ETCS is a first-order theory in the language of categories (objects, morphisms,
   219	composition, identity). The eight axioms below follow Lawvere's original 1964 PNAS paper
   220	\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and
   221	McLarty \cite{McLarty2004}.
   222	
   223	\begin{definition}[ETCS axioms]
   224	\label{def:etcs}
   225	A category $\mathcal{S}$ \emph{models ETCS} iff it satisfies:
   226	\begin{enumerate}
   227	\item[(A1)] $\mathcal{S}$ has finite limits (terminal object $1$, binary products $A\times B$,
   228	equalisers).
   229	\item[(A2)] $\mathcal{S}$ is Cartesian closed: for any objects $A,B$ there is an
   230	exponential $B^A$ with evaluation $\mathrm{ev}: B^A \times A \to B$ enjoying the universal
   231	property of $\lambda$-abstraction.
   232	\item[(A3)] $\mathcal{S}$ has a subobject classifier: an object $\Omega$ with a morphism
   233	$\top: 1 \to \Omega$ such that every monomorphism $m: A \hookrightarrow B$ arises as the
   234	pullback of $\top$ along a unique characteristic morphism $\chi_m : B \to \Omega$.
   235	\item[(A4)] $\mathcal{S}$ has a natural numbers object: an object $\mathbb{N}$ with maps
   236	$0:1\to \mathbb{N}$ and $s:\mathbb{N}\to \mathbb{N}$ such that for every $(X, x_0:1\to X,
   237	f:X\to X)$ there is a unique morphism $h:\mathbb{N}\to X$ with $h\circ 0 = x_0$ and
   238	$h\circ s = f\circ h$.
   239	\item[(A5)] $\mathcal{S}$ is well-pointed: if $f,g:A\to B$ are distinct morphisms, then
   240	there exists $x:1\to A$ with $f\circ x \ne g\circ x$.
   241	\item[(A6)] (Axiom of choice) Every epimorphism $e: A \twoheadrightarrow B$ has a section
   242	$s: B \to A$ with $e \circ s = \mathrm{id}_B$.
   243	\item[(A7)] (Two-valuedness; derivable from A5--A6 and A8) Any morphism $f:1\to \Omega$
   244	equals either $\top$ or $\bot$, where $\bot$ is the unique map factoring through the
   245	initial object. Listed for didactic completeness; see the remark below.
   246	\item[(A8)] (Non-degeneracy) $0\not\cong 1$ (the initial object is not isomorphic to the
   247	terminal).
   248	\end{enumerate}
   249	\end{definition}
   250	
   251	\begin{remark}
   252	A1+A2+A3 alone make $\mathcal{S}$ an \emph{elementary topos} in the sense of
   253	Lawvere--Tierney. Adding A4 gives a \emph{topos with NNO}. Adding A5--A8 specialises to
   254	``topos behaving like classical sets''. Equivalently, an ETCS model is a well-pointed
   255	topos with NNO and choice. Two-valuedness (A7) follows from well-pointedness plus
   256	non-degeneracy when AC is present.
   257	\end{remark}
   258	
   259	\subsection{Elementary consequences}
   260	

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
reviews/directed-univalence-codex-review-round-3.md
reviews/etcs-izf-folds-codex-review-round-1.md
reviews/etcs-izf-folds-codex-review-round-2.md
reviews/etcs-izf-folds-codex-review-round-3.md
reviews/directed-univalence-codex-review-round-1.md
reviews/infinity-nno-codex-review-round-1.md
reviews/directed-univalence-review-round-1.md
reviews/coalgebraic-transcendentals-review-round-1.md
reviews/langlands-analytic-number-theory-codex-review-round-1.md
reviews/cubical-hiit-cauchy-review.md
reviews/langlands-analytic-number-theory-review-round-1.md
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

codex
The file is standalone enough to compile directly from `papers/latex`. I’ve got the preamble and early body; next I’m checking the remaining source plus the existing `.log` for concrete warnings before rerunning a fresh build.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '261,620p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   261	\begin{proposition}[Function extensionality in ETCS]
   262	\label{prop:etcsfunext}
   263	For $f,g: A\to B$, if $\forall x:1\to A,\, f\circ x = g\circ x$, then $f=g$.
   264	\end{proposition}
   265	\begin{proof}
   266	This is the contrapositive of well-pointedness (A5).
   267	\end{proof}
   268	
   269	\begin{proposition}[Power objects]
   270	\label{prop:etcspower}
   271	$\mathcal{S}$ has power objects $P(A) := \Omega^A$, with the standard adjunction
   272	$\mathrm{Sub}(B\times A)\cong \mathrm{Hom}(B, P(A))$.
   273	\end{proposition}
   274	\begin{proof}
   275	Combine A2 and A3: $P(A) = \Omega^A$ classifies subobjects of any product
   276	$B\times A$ via $\chi: B\times A \to \Omega$ uncurried as $\widetilde{\chi}:
   277	B\to \Omega^A$.
   278	\end{proof}
   279	
   280	\begin{theorem}[McLarty's bi-interpretation theorem]
   281	\label{thm:mclarty}
   282	ETCS and Bounded Zermelo set theory plus Replacement (\textbf{BZ}+\textbf{R}) are
   283	bi-interpretable: each can interpret the other, and the interpretations compose to the
   284	identity up to definable isomorphism.
   285	\end{theorem}
   286	\begin{proof}[Sketch]
   287	Given a model of ETCS, define a class of \emph{trees} as well-founded extensional
   288	quotients of pointed graphs internalised by the NNO and powerset; this gives a model of
   289	$\mathbf{BZ}+\mathbf{R}$. Conversely, given a model $V$ of $\mathbf{BZ}+\mathbf{R}$,
   290	define $\mathcal{S}_V$ to be the category of sets and functions inside $V$; one verifies
   291	A1--A8 directly. Composition produces models that are equivalent
   292	in the appropriate 2-categorical sense. Full proof in McLarty \cite{McLarty2004}; we
   293	return to it in \cref{sec:models}.
   294	\end{proof}
   295	
   296	\subsection{Encoding-free arithmetic}
   297	
   298	ETCS resolves Benacerraf's identification problem (Paper~II of our series) by making
   299	\emph{ordered pair} a primitive operation (the universal property of products) rather
   300	than the Kuratowski encoding $\langle a,b\rangle = \{\{a\},\{a,b\}\}$. Junk theorems
   301	such as ``$3 \in 7$'' (vacuously true under von Neumann ordinals: $3 = \{0,1,2\}$ and
   302	$7=\{0,\ldots,6\}$) are not formulable in the ETCS language: $3:1\to \mathbb{N}$ is a
   303	global element, $7:1\to \mathbb{N}$ likewise, and there is no membership predicate
   304	between them.
   305	
   306	\begin{example}
   307	$\mathbb{N} \times \mathbb{N}$ in ETCS is the categorical product of $\mathbb{N}$ with
   308	itself, characterised by the universal property; whether one uses Kuratowski pairs,
   309	Wiener pairs, or any other internal encoding to \emph{prove existence} inside
   310	$\mathbf{BZ+R}$ is irrelevant to the structural object so produced.
   311	\end{example}
   312	
   313	\subsection{Worked example: arithmetic via the recursor}
   314	
   315	We illustrate how arithmetic is developed structurally in ETCS using only the universal
   316	property of the NNO. Given the NNO $(\mathbb{N},0,s)$, define addition
   317	$+:\mathbb{N}\times\mathbb{N}\to\mathbb{N}$ as follows.
   318	
   319	\begin{definition}[Addition in ETCS]
   320	\label{def:etcsadd}
   321	The addition map $+: \mathbb{N}\times\mathbb{N}\to\mathbb{N}$ is the unique morphism
   322	satisfying:
   323	\begin{itemize}
   324	\item $+ \circ \langle 0_{\mathbb{N}}, \mathrm{id}_{\mathbb{N}}\rangle = \mathrm{id}_{\mathbb{N}}$ (left zero), and
   325	\item $+ \circ (s\times \mathrm{id}_{\mathbb{N}}) = s \circ +$ (left successor).
   326	\end{itemize}
   327	\end{definition}
   328	
   329	\begin{proposition}[Existence of addition]
   330	\label{prop:etcsadd}
   331	There exists a unique morphism $+$ as in \cref{def:etcsadd}.
   332	\end{proposition}
   333	\begin{proof}
   334	Apply the NNO universal property to the pointed endomorphism
   335	$(\mathbb{N}^{\mathbb{N}}, \mathrm{id}_{\mathbb{N}} : 1\to \mathbb{N}^{\mathbb{N}},
   336	\widehat{s\circ\mathrm{ev}}: \mathbb{N}^{\mathbb{N}}\to \mathbb{N}^{\mathbb{N}})$ where
   337	the basepoint is the constant function $\mathrm{id}_{\mathbb{N}}$ and the endomap is
   338	post-composition with $s$. This yields a unique
   339	$\widehat{+}: \mathbb{N} \to \mathbb{N}^{\mathbb{N}}$, which uncurries to
   340	$+: \mathbb{N}\times\mathbb{N}\to \mathbb{N}$ satisfying both equations.
   341	\end{proof}
   342	
   343	\begin{example}[Multiplication and exponentiation]
   344	Multiplication $\cdot$ is defined by the same recursion technique with
   345	$+$ in place of $s$:
   346	$\cdot\circ\langle 0,\mathrm{id}\rangle = 0$, $\cdot\circ (s\times \mathrm{id}) =
   347	+\circ\langle\mathrm{id},\cdot\rangle$.
   348	Exponentiation $\uparrow$ similarly: $\uparrow\circ\langle 0,\mathrm{id}\rangle = 1$,
   349	$\uparrow\circ (s\times \mathrm{id}) = \cdot\circ\langle\mathrm{id},\uparrow\rangle$.
   350	\end{example}
   351	
   352	\subsection{ETCS without choice}
   353	
   354	Removing A6 (choice) yields what is sometimes called \emph{ETCS-AC} or \emph{Topos+NNO+WP}
   355	(well-pointed topos with NNO). This system is consistent with both EM and $\neg$EM in
   356	non-trivial models. McLarty's bi-interpretation theorem extends to: ETCS-AC is
   357	bi-interpretable with $\mathbf{BZ}+\mathbf{R}$-AC. The constructive variant of ETCS
   358	(replace A5 well-pointedness by Kock's notion of subterminal-pointedness, drop A6 and A7)
   359	is bi-interpretable with appropriate fragments of IZF. We will see in
   360	\cref{sec:boundary} that AC is on the \emph{straddling} side of the univalence boundary.
   361	
   362	\subsection{Comparison with Awodey--Forssell categorical structuralism}
   363	
   364	Awodey \cite{Awodey2014} introduces a refined notion of \emph{structural foundation}: a
   365	formal system whose models satisfy isomorphism-invariance internally. ETCS satisfies
   366	this in the 1-categorical sense; its only non-invariant data are the choices of products,
   367	exponentials, etc., which are determined up to (unique) isomorphism. The
   368	``isomorphism-invariance'' guarantee in ETCS, however, is not a theorem of ETCS
   369	\emph{about itself}; it is a metatheorem (any two products are isomorphic; any property
   370	expressible in the categorical language is invariant under isomorphism). To make the
   371	guarantee \emph{internal}, one needs HoTT.
   372	
   373	\section{IZF: Intuitionistic Zermelo--Fraenkel}
   374	\label{sec:izf}
   375	
   376	\subsection{Axioms}
   377	
   378	IZF (Friedman 1973, Myhill, surveyed in
   379	\cite{StanfordIZFCZF}) is the system over intuitionistic first-order logic with equality
   380	and a binary predicate $\in$, having the following axioms.
   381	
   382	\begin{definition}[IZF axioms]
   383	\label{def:izf}
   384	We adopt the formulation of IZF using the strong \emph{Collection schema}
   385	(rather than the weaker Replacement schema); under intuitionistic logic, Collection is
   386	strictly stronger than Replacement, so this choice is significant. The remark following
   387	the definition discusses the difference.
   388	\begin{enumerate}
   389	\item[(I1)] (Extensionality) $\forall x\forall y\,[(\forall z\,(z\in x \Leftrightarrow
   390	z\in y))\Rightarrow x=y]$.
   391	\item[(I2)] (Empty set) $\exists x\, \forall y\,(y\notin x)$.
   392	\item[(I3)] (Pairing) $\forall x\forall y\, \exists z\,\forall w\,
   393	(w\in z\Leftrightarrow w=x\vee w=y)$.
   394	\item[(I4)] (Union) $\forall x\, \exists y\,\forall z\,(z\in y \Leftrightarrow \exists w
   395	\in x.\, z\in w)$.
   396	\item[(I5)] (Infinity) $\exists \omega\,(\emptyset\in\omega \wedge \forall x\in\omega.\,
   397	x\cup\{x\}\in\omega)$.
   398	\item[(I6)] (Full Separation) For every formula $\varphi(z)$, $\forall x\,\exists y\,
   399	\forall z\,(z\in y \Leftrightarrow z\in x \wedge \varphi(z))$.
   400	\item[(I7)] (Powerset) $\forall x\, \exists y\, \forall z\,(z\in y \Leftrightarrow z
   401	\subseteq x)$.
   402	\item[(I8)] (Collection) For every formula $\varphi(x,y)$, if $\forall x\in a.\,\exists
   403	y.\, \varphi(x,y)$, then $\exists b.\,\forall x\in a.\,\exists y\in b.\, \varphi(x,y)$.
   404	\item[(I9)] ($\in$-Induction) For every $\varphi$,
   405	$[\forall x\,((\forall y\in x.\,\varphi(y))\Rightarrow \varphi(x))]\Rightarrow \forall x.\,
   406	\varphi(x)$.
   407	\end{enumerate}
   408	The underlying logic is intuitionistic; \emph{Excluded Middle (EM)} and \emph{Choice (AC)}
   409	are not assumed.
   410	\end{definition}
   411	
   412	\begin{remark}
   413	A standard simplification replaces (I8) Collection by the weaker Replacement schema.
   414	Friedman's IZF uses Collection because, under intuitionistic logic, Collection is
   415	strictly stronger than Replacement: Replacement requires uniqueness of the witness, while
   416	Collection requires only existence. In classical logic, Collection is derivable from
   417	Replacement using EM; in IZF this implication fails.
   418	\end{remark}
   419	
   420	\subsection{IZF and ZFC: strength and divergence}
   421	
   422	\begin{theorem}[Friedman \cite{Friedman1973}]
   423	\label{thm:friedman}
   424	$\mathrm{ZF} = \mathrm{IZF} + \mathrm{EM}$, where $\mathrm{EM}$ is the schema
   425	$\varphi\vee\neg\varphi$ over the IZF language. Consequently, IZF and ZF are equiconsistent.
   426	\end{theorem}
   427	\begin{proof}[Sketch]
   428	Forward direction: $\mathrm{IZF}\subseteq \mathrm{ZF}$ definitionally, since classical
   429	logic includes intuitionistic logic and EM gives the rest. Reverse: every ZF axiom is in
   430	IZF except those needing EM in their classical forms, but Separation in IZF is full so
   431	the classical schema follows. The equiconsistency: any model of ZF is a model of
   432	IZF+EM; any model of IZF gives a Heyting-valued model that, under EM, becomes a model of
   433	ZF. Friedman's original proof uses double-negation translations.
   434	\end{proof}
   435	
   436	\begin{remark}[CZF vs IZF]
   437	Aczel's CZF (Constructive Zermelo--Fraenkel) replaces Powerset by \emph{Subset Collection}
   438	(or its equivalent \emph{Fullness} axiom) and Full Separation by \emph{Restricted
   439	Separation} (where $\varphi$ is bounded). CZF is significantly weaker than IZF:
   440	$\mathrm{CZF} \subsetneq \mathrm{IZF}$, and CZF is interpretable in Martin-L\"of type
   441	theory via Aczel's sets-in-types translation. IZF is impredicative
   442	(Powerset and Full Separation), which puts it in tension with the predicative spirit of
   443	MLTT and HoTT.
   444	\end{remark}
   445	
   446	\subsection{IZF, realisability, and HoTT}
   447	
   448	\begin{definition}[Realisability model]
   449	A \emph{realisability model} of IZF is a category-theoretic structure
   450	$(\mathbb{V}, \Vdash)$ where $\mathbb{V}$ is a class hierarchy and $\Vdash$ is a forcing
   451	relation specified by terms of an underlying calculus (e.g.\ untyped $\lambda$-calculus,
   452	PCAs, or partial combinatory algebras) such that the IZF axioms are forced.
   453	\end{definition}
   454	
   455	The connection to HoTT runs through the topos-theoretic interpretation. Hyland's
   456	effective topos $\mathcal{E}\!f\!f$ provides a realisability model in which IZF holds
   457	(via Full Separation, Collection, and Powerset using the lifted $\Omega$). Inside
   458	$\mathcal{E}\!f\!f$, the internal language is intuitionistic higher-order logic, which
   459	embeds into HoTT once we resolve coherence at higher levels. Shulman's results
   460	\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising
   461	to localic $(\infty,1)$-toposes gives realisability models of HoTT compatible with IZF.
   462	
   463	\begin{theorem}[Awodey--Warren propositions-as-types for IZF]
   464	\label{thm:awodey-warren}
   465	The $(-1)$-truncated fragment of HoTT (i.e.\ HoTT restricted to mere propositions)
   466	satisfies the IZF axioms in the following sense: there is an interpretation
   467	$\llbracket\cdot\rrbracket$ of IZF formulas into $(-1)$-truncated types such that
   468	$\mathrm{IZF}\vdash \varphi$ implies $\mathrm{HoTT}\vdash \llbracket\varphi\rrbracket$
   469	provided we add the propositional resizing axiom and the Mahlo--Universe axiom needed for
   470	Replacement.
   471	\end{theorem}
   472	\begin{proof}[Sketch]
   473	Each IZF set is interpreted as a well-founded $\mathbb{V}$-structure
   474	(Aczel's V) inside HoTT. Full Separation translates to subtype formation under
   475	propositional resizing. Powerset translates to $A \to \mathrm{hProp}$. Collection requires
   476	the Mahlo-style closure on the universe. See HoTT Book \cite{HoTTBook} \S10.5 for details.
   477	\end{proof}
   478	
   479	\subsection{Diaconescu's theorem and IZF}
   480	
   481	\begin{theorem}[Diaconescu 1975]
   482	\label{thm:diaconescu}
   483	In any topos satisfying the axiom of choice, the law of excluded middle holds. In
   484	particular, $\mathrm{IZF}+\mathrm{AC}$ proves $\mathrm{EM}$.
   485	\end{theorem}
   486	\begin{proof}[Sketch]
   487	Given a proposition $P$, consider the set $A = \{x\in\{0,1\}: x=0 \vee P\}$ and
   488	$B = \{x\in\{0,1\}: x=1\vee P\}$. By Pairing both are sets, and their union is
   489	$\{0,1\}$. AC gives a choice function on the family of these two non-empty sets,
   490	producing $a\in A, b\in B$. Now either $a=b$, in which case $P$ holds (decidably), or
   491	$a\neq b$, in which case $\neg P$ holds. Either way $P\vee\neg P$.
   492	\end{proof}
   493	
   494	\begin{corollary}
   495	$\mathrm{IZF}+\mathrm{AC}$ is equivalent to $\mathrm{ZFC}$. Hence the constructive
   496	content of IZF is genuinely tied to the absence of AC.
   497	\end{corollary}
   498	
   499	\subsection{Aczel's CZF and predicativity}
   500	
   501	A subtle but important alternative to IZF is Aczel's CZF (Constructive
   502	Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial
   503	ways:
   504	\begin{itemize}
   505	\item \emph{Restricted Separation}: the Separation schema is restricted to bounded
   506	formulas (formulas all of whose quantifiers are restricted to a set).
   507	\item \emph{Subset Collection (Fullness)}: replaces Powerset.
   508	\end{itemize}
   509	The result is a predicative theory, in the sense of Feferman: CZF can be interpreted
   510	in Martin-L\"of type theory (the sets-in-types interpretation \cite{Aczel1978}), and
   511	hence has the proof-theoretic strength of MLTT plus a single Mahlo-like inaccessible.
   512	
   513	\begin{remark}
   514	The IZF/CZF distinction matters for the comparison with HoTT: CZF is closer to HoTT in
   515	spirit (predicative, type-theoretic), whereas IZF is closer to ZF in spirit
   516	(impredicative, set-theoretic). Both can be interpreted in HoTT, but CZF more
   517	naturally.
   518	\end{remark}
   519	
   520	\section{FOLDS: First-Order Logic with Dependent Sorts}
   521	\label{sec:folds}
   522	
   523	\subsection{Dependent signatures}
   524	
   525	\begin{definition}[FOLDS signature, after Makkai \cite{Makkai1995}]
   526	\label{def:foldssig}
   527	A \emph{FOLDS signature} is a small category $\mathbf{L}$ that is:
   528	\begin{itemize}
   529	\item \emph{One-way}: there are no non-trivial endomorphisms or antiparallel parallel
   530	arrows.
   531	\item \emph{Direct}: every object has finitely many objects above it, and the order on
   532	``levels'' (height in the underlying graph) is well-founded.
   533	\item Equipped with a designated set of \emph{relation symbols}: distinguished objects
   534	intended to be interpreted as truth-valued (i.e.\ subterminal).
   535	\end{itemize}
   536	A \emph{kind} is a non-relation object; a \emph{relation} is one of the designated objects.
   537	\end{definition}
   538	
   539	\begin{example}[FOLDS signature for categories]
   540	\label{ex:foldscat}
   541	The signature $\mathbf{L}_{\mathrm{Cat}}$ has:
   542	\begin{itemize}
   543	\item Kind $O$ (objects).
   544	\item Kind $A$ (arrows), with two morphisms $s,t: A\to O$ (source, target). The
   545	dependency $A\to O\times O$ records that an arrow has a source and target object.
   546	\item Relation $T(g,h,k)$ on composable triples $(g, h, k:A)$ (where $t(g)=s(h)$ and the
   547	common boundary types match) expressing ``$k$ is the composite $h\circ g$''. This
   548	relation captures composition data without committing to a function symbol.
   549	\item Relation $I(f)$ on $A$ expressing ``$f$ is an identity arrow''. We list this
   550	relation explicitly because in FOLDS one cannot pick out identity arrows by equality
   551	with a chosen constant; instead, identities are designated via this relation, which is
   552	required to satisfy the laws $\forall f.\, I(f)\to T(f,g,g)$ and $T(g,f,g)$ for parallel
   553	$g$.
   554	\item Relation $E(f,g)$ on parallel arrows expressing arrow-equality. In FOLDS the
   555	equality predicate on each kind is itself a designated relation symbol, not a primitive
   556	of the logic; this is what guarantees isomorphism-invariance of FOLDS sentences.
   557	\end{itemize}
   558	A model is a category in the usual sense, where the three relations $T, I, E$ have
   559	distinct and complementary roles: $T$ records composition data, $I$ singles out the
   560	identity arrows, and $E$ provides arrow-equality. Together they suffice to express the
   561	category axioms (associativity, unit laws, identity laws) as FOLDS sentences.
   562	\end{example}
   563	
   564	\subsection{FOLDS-equivalence}
   565	
   566	\begin{definition}[FOLDS-equivalence, Makkai \cite{Makkai1995}]
   567	\label{def:foldsequiv}
   568	Two $\mathbf{L}$-structures $M, N$ are \emph{FOLDS-equivalent} (written $M\simeq_F N$)
   569	iff there exists a span of $\mathbf{L}$-structure homomorphisms
   570	\[
   571	M \xleftarrow{p} P \xrightarrow{q} N
   572	\]
   573	where both $p$ and $q$ are \emph{very surjective}: surjective on every kind, and on every
   574	relation symbol $R$, the induced map $R^P \to R^M\times_{(\text{kinds})} \cdots$ is
   575	surjective.
   576	\end{definition}
   577	
   578	\begin{remark}
   579	For the signature $\mathbf{L}_{\mathrm{Cat}}$, $M\simeq_F N$ coincides with the
   580	classical notion of equivalence of categories $M\simeq N$ (essentially surjective and
   581	fully faithful). For higher signatures (e.g.\ bicategories), FOLDS-equivalence
   582	correctly generalises bi-equivalence; for $n$-categories, $n$-equivalence; and so on for
   583	$\infty$-categorical signatures.
   584	\end{remark}
   585	
   586	\subsection{Makkai's Invariance Theorem}
   587	
   588	\begin{theorem}[Makkai's Invariance Theorem \cite{Makkai1995}]
   589	\label{thm:invariance}
   590	For every FOLDS signature $\mathbf{L}$ and every FOLDS sentence $\varphi$ in
   591	$\mathcal{L}(\mathbf{L})$, and any two $\mathbf{L}$-structures $M,N$:
   592	\[
   593	M\simeq_F N \;\Longrightarrow\; (M\models \varphi \Leftrightarrow N\models \varphi).
   594	\]
   595	\end{theorem}
   596	\begin{proof}[Sketch]
   597	By induction on $\varphi$. Atomic formulas are preserved by very surjective
   598	homomorphisms, both ways, by the surjectivity on relations. Connectives and the unique
   599	quantifier $\exists x: K$ (where $K$ is a kind) preserve preservation under very
   600	surjective spans because every element on each kind in $M$ (resp.\ $N$) is hit by some
   601	element of $P$. Full induction is given in
   602	\cite[Theorem 4.4]{Makkai1995}; an alternative homotopy-theoretic proof appears in
   603	Henry's work on the Isomorphism Property.
   604	\end{proof}
   605	
   606	\begin{corollary}
   607	\label{cor:invariance}
   608	No FOLDS sentence can distinguish two equivalent categories. In particular, the predicate
   609	``$X$ is the $\in$-rank-zero element of the universe'' is \emph{not} expressible in any
   610	FOLDS signature for ZF.
   611	\end{corollary}
   612	
   613	\subsection{FOLDS as a fragment of dependent type theory}
   614	
   615	Palmgren \cite{Palmgren2016} showed FOLDS embeds into intensional Martin-L\"of type
   616	theory. The dependence in a FOLDS signature is captured by the dependence of types in
   617	MLTT; relations become $(-1)$-types (mere propositions).
   618	
   619	\begin{theorem}[Palmgren \cite{Palmgren2016}]
   620	\label{thm:palmgren}

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '621,980p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   621	There is a faithful translation $\mathcal{T}$ from FOLDS signatures over a category
   622	$\mathbf{L}$ to dependent type theories with explicit substitutions
   623	$\mathrm{CwF}(\mathbf{L})$, such that:
   624	\begin{enumerate}
   625	\item Every FOLDS structure $M$ on $\mathbf{L}$ corresponds to a model of
   626	$\mathcal{T}(\mathbf{L})$.
   627	\item FOLDS-equivalence corresponds to equivalence of models of $\mathcal{T}(\mathbf{L})$.
   628	\end{enumerate}
   629	\end{theorem}
   630	
   631	\subsection{Worked FOLDS proofs}
   632	
   633	\begin{example}[Categorical equivalence is FOLDS-equivalence]
   634	\label{ex:catequivfolds}
   635	Take $\mathbf{L} = \mathbf{L}_{\mathrm{Cat}}$ and let $F:M\to N$ be a functor. Construct
   636	the cograph (mapping cylinder) $C(F)$: objects are
   637	$\mathrm{Ob}(M)\sqcup\mathrm{Ob}(N)$, with hom-sets given by
   638	\[
   639	C(F)(x,y) := \begin{cases}
   640	M(x,y) & x,y\in\mathrm{Ob}(M)\\
   641	N(x,y) & x,y\in\mathrm{Ob}(N)\\
   642	N(F(x), y) & x\in M, y\in N\\
   643	\emptyset & \text{otherwise.}
   644	\end{cases}
   645	\]
   646	Then both inclusions $M\hookrightarrow C(F)$ and $N\hookrightarrow C(F)$ are
   647	homomorphisms of $\mathbf{L}_{\mathrm{Cat}}$-structures. The inclusion of $M$ is
   648	\emph{very surjective} iff $F$ is essentially surjective and full. The inclusion of $N$
   649	is very surjective iff $F$ is faithful.  Combining, $F$ is an equivalence iff there is a
   650	zigzag of cograph cospans connecting $M$ and $N$ via very surjective maps --- i.e.\
   651	$M\simeq_F N$ in the FOLDS sense.
   652	\end{example}
   653	
   654	\begin{proposition}[Skeletality is not FOLDS-expressible]
   655	\label{prop:skeleton-not-folds}
   656	The predicate ``$\mathcal{C}$ is a skeletal category'' (every object is the unique
   657	representative of its isomorphism class) is not expressible by any FOLDS sentence.
   658	\end{proposition}
   659	\begin{proof}
   660	Suppose $\varphi$ is a FOLDS sentence in $\mathbf{L}_{\mathrm{Cat}}$ that holds in
   661	$\mathcal{C}$ iff $\mathcal{C}$ is skeletal. Take a non-skeletal $\mathcal{C}_0$ and a
   662	skeleton $\mathcal{C}_1\hookrightarrow \mathcal{C}_0$. The inclusion is an
   663	equivalence (essentially surjective and fully faithful), hence the cograph construction
   664	yields $\mathcal{C}_0 \simeq_F \mathcal{C}_1$. By Makkai's invariance theorem
   665	(\cref{thm:invariance}), $\mathcal{C}_0\models \varphi \Leftrightarrow \mathcal{C}_1
   666	\models\varphi$. But $\mathcal{C}_1$ is skeletal and $\mathcal{C}_0$ is not, so $\varphi$
   667	cannot distinguish them. Contradiction.
   668	\end{proof}
   669	
   670	\begin{remark}
   671	\Cref{prop:skeleton-not-folds} is paradigmatic: any predicate referring to specific
   672	\emph{representatives} of equivalence classes (rather than equivalence-classes themselves)
   673	fails to be FOLDS-expressible. This is the syntactic mechanism by which FOLDS enforces
   674	the equivalence principle: ``junk'' predicates cannot even be \emph{stated}.
   675	\end{remark}
   676	
   677	\subsection{Higher signatures: bicategories and \texorpdfstring{$\infty$}{infinity}-categories}
   678	
   679	The signature $\mathbf{L}_{\mathrm{Cat}}$ for ordinary categories generalises naturally
   680	to higher signatures:
   681	\begin{itemize}
   682	\item $\mathbf{L}_{\mathrm{Bicat}}$: kinds $O$, $A$, $C$ (cells), with
   683	$s,t:A\to O$, $s,t:C\to A$, and relations for vertical/horizontal composition,
   684	identities, and 2-cell equality. FOLDS-equivalence on $\mathbf{L}_{\mathrm{Bicat}}$
   685	is bi-equivalence of bicategories.
   686	\item $\mathbf{L}_{(\infty,1)}$: an infinite tower of kinds $A_n$ for $n$-cells, with
   687	boundary maps and a single ``hcomp'' relation per dimension. FOLDS-equivalence
   688	corresponds to Joyal-style $\infty$-equivalence (DK-equivalence).
   689	\end{itemize}
   690	Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose
   691	syntax converges to the syntax of HoTT.
   692	
   693	\section{HoTT: The unifying frame}
   694	\label{sec:hott}
   695	
   696	\subsection{Univalence as the equivalence-invariance axiom}
   697	
   698	Univalence (Voevodsky 2010, HoTT Book \cite{HoTTBook} \S2.10) is the axiom:
   699	\[
   700	\mathsf{ua}: (A\simeq B) \;\xrightarrow{\sim}\; (A=_{\mathcal{U}} B)
   701	\]
   702	saying that the canonical map ``$\mathrm{idtoeqv}$'' from identifications between types
   703	to equivalences between them is itself an equivalence. In short: \emph{equivalent types
   704	are identical}. The Structure Identity Principle (SIP) generalises this from raw types to
   705	typed structures: equivalent structures are identical.
   706	
   707	\subsection{Which structural principles become theorems}
   708	
   709	The following table summarises what passes from axiom-status (in ETCS, IZF, or as a
   710	metatheorem in FOLDS) to theorem-status in HoTT (Section 1 column reproduced for
   711	convenience):
   712	\begin{itemize}
   713	\item \textbf{NNO} is a theorem in HoTT --- the inductive type $\mathbb{N}$ is built into
   714	the type theory and contractibility of the type of NNO structures is provable
   715	(Paper~V Theorem~4.4 of our series).
   716	\item \textbf{Function extensionality} is a theorem in HoTT given univalence: Voevodsky's
   717	proof shows $\mathrm{UA}\Rightarrow \mathrm{FE}$.
   718	\item \textbf{Propositional extensionality} is a theorem in HoTT given univalence,
   719	restricted to mere propositions.
   720	\item \textbf{Structure Identity Principle} is a theorem in HoTT given univalence
   721	(see Paper~VI Theorems 10.3--10.4 of our series).
   722	\item \textbf{FOLDS-equivalence-implies-identity} is a theorem in HoTT given univalence
   723	(this is the Univalence Principle of Ahrens--North--Shulman--Tsementzis 2019).
   724	\end{itemize}
   725	
   726	We now make this last statement precise.
   727	
   728	\subsection{The Univalence Principle (ANST 2019)}
   729	
   730	\begin{theorem}[Univalence Principle, ANST \cite{ANST2019}]
   731	\label{thm:up}
   732	For any FOLDS signature $\mathbf{L}$ and any two $\mathbf{L}$-structures $M, N$ in HoTT,
   733	\[
   734	(M\simeq_F N)\;\simeq\;(M=_{\mathrm{Str}(\mathbf{L})} N).
   735	\]
   736	That is, FOLDS-equivalence is identification in the type of $\mathbf{L}$-structures.
   737	\end{theorem}
   738	\begin{proof}[Sketch]
   739	The dependent-sort structure of $\mathbf{L}$ is encoded as a Reedy diagram of types in
   740	HoTT. Each relation symbol becomes a $(-1)$-truncated type, each kind a type of the
   741	appropriate truncation level. By induction on the Reedy structure, FOLDS-equivalence
   742	unfolds into the data of an equivalence at each level, which by repeated application of
   743	the Structure Identity Principle (a consequence of univalence) gives an identification.
   744	The full proof requires careful management of the level structure of $\mathbf{L}$ and the
   745	Reedy fibrant replacement; see ANST.
   746	\end{proof}
   747	
   748	\begin{remark}
   749	\Cref{thm:up} subsumes Makkai's Invariance Theorem: indeed if $M\simeq_F N$ then
   750	$M=N$ in HoTT, hence any predicate is preserved (by transport along the identification).
   751	But \cref{thm:up} is stronger: it gives an \emph{equivalence}, not just an implication.
   752	The strength comes from univalence.
   753	\end{remark}
   754	
   755	\subsection{Internalising ETCS in HoTT}
   756	
   757	We now sketch how ETCS is recovered as a theorem inside HoTT, given univalence and
   758	sufficient choice/EM where needed.
   759	
   760	\begin{theorem}[Sets in HoTT form a model of ETCS-AC]
   761	\label{thm:setsmodel}
   762	Within HoTT, define $\mathrm{Set}$ to be the type of $0$-truncated types (sets in the
   763	sense of HoTT \S3.1):
   764	\[
   765	\mathrm{Set} := \Sigma_{X:\mathcal{U}}\,\mathrm{isSet}(X).
   766	\]
   767	Then $\mathrm{Set}$, with the obvious morphism structure (functions between sets) and
   768	identity and composition, is an elementary topos with NNO. Adding propositional resizing and
   769	the (provably independent) axioms EM and AC produces a model of ETCS.
   770	\end{theorem}
   771	\begin{proof}[Sketch]
   772	\textbf{Finite limits}: Sigma-types and product types are sets when their components are
   773	sets; equalisers are $\Sigma_{x:A} (f(x) = g(x))$, also a set.
   774	\textbf{Cartesian closure}: function types $A\to B$ are sets when $B$ is a set (by FE).
   775	\textbf{Subobject classifier}: $\Omega := \mathrm{hProp}$, the type of mere propositions;
   776	truth is the standard map.
   777	\textbf{NNO}: the inductive type $\mathbb{N}$.
   778	\textbf{Well-pointedness}: function extensionality.
   779	\textbf{AC}: axiom (independent in HoTT).
   780	\textbf{Two-valuedness}: requires EM (axiom).
   781	\textbf{Non-degeneracy}: $\mathbf{0}\not\simeq\mathbf{1}$ holds in any non-trivial model.
   782	\end{proof}
   783	
   784	\subsection{Internalising IZF in HoTT}
   785	
   786	Aczel's $\mathbb{V}$-construction inside HoTT:
   787	
   788	\begin{definition}[The HoTT cumulative hierarchy]
   789	\label{def:vhott}
   790	Define the higher inductive type $\mathbb{V}$ with:
   791	\begin{itemize}
   792	\item Constructor $\mathrm{set}: (A:\mathcal{U}) \to (A\to \mathbb{V})\to \mathbb{V}$.
   793	\item Path constructor: extensionality, $\mathrm{set}(A,f) =_{\mathbb{V}} \mathrm{set}(B,g)$
   794	iff there is a bisimulation between the trees $(A,f)$ and $(B,g)$.
   795	\item $0$-truncation.
   796	\end{itemize}
   797	\end{definition}
   798	
   799	\begin{theorem}[HoTT Book \S10.5]
   800	\label{thm:vmodelizf}
   801	$\mathbb{V}$ is a model of IZF in the following sense: every IZF axiom (Extensionality,
   802	Pairing, Union, Powerset, Infinity, Collection, Full Separation, $\in$-Induction)
   803	translates to a provable HoTT statement about $\mathbb{V}$, given propositional resizing.
   804	\end{theorem}
   805	
   806	\subsection{Internalising FOLDS in HoTT via the Univalence Principle}
   807	
   808	The key observation: FOLDS signatures, qua small categories, are themselves objects of
   809	HoTT. FOLDS-structures qua functors are objects of HoTT. The Univalence Principle
   810	(\cref{thm:up}) is the statement that the type of $\mathbf{L}$-structures has the
   811	expected identity type. So FOLDS is not just \emph{representable} in HoTT; the FOLDS
   812	metatheorem (Makkai's Invariance Theorem) becomes an internal HoTT theorem.
   813	
   814	\section{Models}
   815	\label{sec:models}
   816	
   817	\subsection{ETCS in toposes}
   818	
   819	A model of ETCS is a well-pointed elementary topos with NNO and AC. The category
   820	$\mathrm{Set}$ in ZFC is the prototype. Other models include:
   821	\begin{itemize}
   822	\item $\mathrm{Set}_{\mathrm{ZF+AC}}$: classical sets in ZF + AC.
   823	\item $\mathrm{Set}_{\mathrm{IZF+AC}}$: intuitionistic sets in IZF + AC (where AC implies
   824	EM via Diaconescu, hence equivalent to ZFC).
   825	\item $\mathrm{FinSet}$: finite sets satisfy A1--A6, fail A4 (no NNO), so not ETCS.
   826	\item Forcing extensions of $\mathrm{Set}$: ETCS+CH and ETCS+$\neg$CH.
   827	\end{itemize}
   828	
   829	\subsection{IZF and topos-valued models}
   830	
   831	Friedman--Aczel construction: in any cocomplete elementary topos $\mathcal{E}$ with NNO
   832	and a Mahlo-style universe object, the internal $\mathbb{V}$-structure (the
   833	``cumulative hierarchy'' inside $\mathcal{E}$) gives a model of IZF.
   834	
   835	\begin{theorem}[Friedman--Aczel--Joyal]
   836	The internal hierarchy $V_{\mathcal{E}}$ in a cocomplete topos with universe object
   837	satisfies all axioms of IZF.
   838	\end{theorem}
   839	
   840	The proof reduces each axiom (Extensionality, Pairing, Union, Powerset, Infinity,
   841	Collection, Full Separation, $\in$-Induction) to a property of $\mathcal{E}$ that holds
   842	by definition of cocomplete elementary topos with universe.
   843	
   844	\subsection{FOLDS in fibrations}
   845	
   846	A FOLDS signature $\mathbf{L}$ corresponds to a discrete Conduch\'e fibration over
   847	$\mathbf{L}^{\mathrm{op}}$. Models of $\mathbf{L}$ are categories of elements/sections of
   848	this fibration.
   849	
   850	\begin{theorem}[Makkai \cite{Makkai1995}]
   851	\label{thm:foldsfib}
   852	The category $\mathrm{Mod}(\mathbf{L})$ of $\mathbf{L}$-structures and homomorphisms is
   853	the slice $\mathrm{Set}/\mathbf{L}^{\mathrm{op}}$ when $\mathbf{L}$ is direct (with
   854	appropriate naturality), with FOLDS-equivalence being the localisation along
   855	very-surjective maps.
   856	\end{theorem}
   857	
   858	\subsection{HoTT in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
   859	
   860	\begin{theorem}[Shulman \cite{Shulman2019}]
   861	\label{thm:shulman}
   862	Every Grothendieck $(\infty,1)$-topos models HoTT with univalent universes.
   863	\end{theorem}
   864	\begin{proof}[Sketch]
   865	Shulman's strategy: use simplicial categories of fibrant types to build an interpretation
   866	of MLTT in any presentable $(\infty,1)$-topos $\mathcal{X}$, then use
   867	Reedy fibrant replacement and the local universe construction (Lumsdaine--Warren) to
   868	produce a univalent universe object.
   869	\end{proof}
   870	
   871	\subsection{The square of interpretations}
   872	
   873	\begin{center}
   874	\begin{tikzcd}[column sep=large, row sep=large]
   875	\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &
   876	\mathrm{BZ}+\mathrm{R} \arrow[d, "\text{Friedman}"] \\
   877	\mathrm{Topos+NNO+AC} \arrow[r, "\text{int.\ lang.}"'] &
   878	\mathrm{IZF}+\mathrm{AC} \arrow[r, leftrightarrow, "\text{Diaconescu}"]&\mathrm{ZFC}
   879	\end{tikzcd}
   880	\end{center}
   881	
   882	with FOLDS sitting orthogonal to all three (FOLDS is a logic, not a set theory; it
   883	specifies which sentences are admissible). HoTT sits ``above'' the diagram: any model of
   884	ETCS, IZF, or FOLDS yields a model of HoTT after passage through the
   885	$(\infty,1)$-topos completion.
   886	
   887	\subsection{Reverse-mathematical strengths}
   888	
   889	We summarise the proof-theoretic strength of each system:
   890	
   891	\begin{center}
   892	\begin{tabular}{|l|l|l|}
   893	\hline
   894	\textbf{System} & \textbf{Strength (consistency)} & \textbf{Reference} \\
   895	\hline
   896	ETCS & ZFC $-$ Replacement & McLarty 2004 \\
   897	ETCS+R (ETCS with Replacement) & ZFC & McLarty 2004 \\
   898	IZF & ZF & Friedman 1973 \\
   899	IZF+AC & ZFC & Diaconescu 1975 \\
   900	CZF & MLTT $+$ universes & Aczel 1978 \\
   901	CZF $+$ Mahlo & ZFC & Rathjen \\
   902	HoTT (with UA) & ZFC $+$ inaccessibles & Shulman 2019 \\
   903	HoTT (without UA) & MLTT & MLTT proof theory \\
   904	FOLDS (as logic) & --- & --- \\
   905	\hline
   906	\end{tabular}
   907	\end{center}
   908	
   909	The interesting feature: ETCS minus Replacement is strictly weaker than ZFC; recovering
   910	full ZFC strength requires a Replacement schema, in either material or structural form.
   911	HoTT with univalence and propositional resizing matches ZFC + countably many
   912	inaccessibles (Shulman \cite{Shulman2019}), since each universe behaves as a Grothendieck
   913	universe.
   914	
   915	\section{The univalence boundary}
   916	\label{sec:boundary}
   917	
   918	\subsection{Definition}
   919	
   920	\begin{definition}[Univalence boundary]
   921	\label{def:boundary}
   922	A structural principle $P$ \emph{lies on the far side of the univalence boundary} if
   923	$P$ holds in HoTT~+~UA but not in HoTT alone (i.e.\ in MLTT plus the assumption that
   924	identity types are well-behaved but without the univalence axiom). A principle lies on
   925	the \emph{near side} if it holds in HoTT without UA. We say $P$ \emph{straddles} the
   926	boundary if it is independent of UA in HoTT.
   927	\end{definition}
   928	
   929	\subsection{Far-side principles}
   930	
   931	\begin{theorem}[Far-side: SIP needs UA]
   932	\label{thm:sipneedsua}
   933	The Structure Identity Principle (SIP) is provably equivalent to univalence in HoTT.
   934	\end{theorem}
   935	\begin{proof}[Sketch]
   936	$\mathrm{UA}\Rightarrow \mathrm{SIP}$: the standard structure-identity proof (HoTT
   937	Book \S9.8) constructs the identification of structures using univalence applied to the
   938	underlying types and transport for the operations.
   939	$\mathrm{SIP}\Rightarrow \mathrm{UA}$: instantiate SIP at the trivial signature
   940	(structure-free) to extract univalence as the special case where the only operation is
   941	the identity.
   942	\end{proof}
   943	
   944	\begin{theorem}[Far-side: FOLDS-equivalence-implies-identity needs UA]
   945	\label{thm:foldsneedsua}
   946	The principle ``$M\simeq_F N \Rightarrow M=_{\mathrm{Str}(\mathbf{L})}N$'' for arbitrary
   947	FOLDS signatures $\mathbf{L}$ is equivalent to univalence (over MLTT with FE and PE).
   948	\end{theorem}
   949	\begin{proof}[Sketch]
   950	$\mathrm{UA}\Rightarrow$ statement: this is \cref{thm:up}.
   951	Statement $\Rightarrow \mathrm{UA}$: take $\mathbf{L}$ to be the signature with one kind
   952	and no relations. A model is just a type. FOLDS-equivalence on this signature is type
   953	equivalence. The conclusion that equivalence is identification is exactly UA.
   954	\end{proof}
   955	
   956	\subsection{Near-side principles}
   957	
   958	\begin{theorem}[Near-side: NNO existence is near]
   959	\label{thm:nnonear}
   960	The existence of an NNO in HoTT (as the inductive type $\mathbb{N}$) does not require UA.
   961	\end{theorem}
   962	\begin{proof}
   963	$\mathbb{N}$ is generated by the constructors $0:\mathbb{N}$ and $s:\mathbb{N}\to
   964	\mathbb{N}$ together with the universal property given by the recursor; this is the
   965	elimination rule of MLTT inductive types and does not invoke UA.
   966	\end{proof}
   967	
   968	\begin{theorem}[Near-side: function extensionality is near, given univalence is far]
   969	\label{thm:fefar}
   970	Function extensionality (FE) holds in HoTT~+~UA but is independent of MLTT alone.
   971	However, FE itself does not imply UA.
   972	\end{theorem}
   973	\begin{proof}[Sketch]
   974	$\mathrm{UA}\Rightarrow \mathrm{FE}$: Voevodsky's proof.
   975	$\mathrm{FE}\not\Rightarrow \mathrm{UA}$: the simplicial set model satisfies FE but
   976	without univalent universes (univalence requires more structure).
   977	\end{proof}
   978	
   979	\subsection{Straddlers}
   980	

exec
/usr/local/bin/zsh -lc 'rg -n "(LaTeX Warning|Package .* Warning|Overfull|Underfull|Undefined|Citation|Reference|Error|Emergency stop|Missing|multiply-defined|rerunfilecheck)" papers/latex/etcs-izf-folds.log papers/latex/etcs-izf-folds.aux papers/latex/etcs-izf-folds.out' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
papers/latex/etcs-izf-folds.log:610:(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty
papers/latex/etcs-izf-folds.log:611:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
papers/latex/etcs-izf-folds.log:616:Package uniquecounter Info: New unique counter `rerunfilecheck' on input line 2
papers/latex/etcs-izf-folds.log:774:Package rerunfilecheck Info: File `etcs-izf-folds.out' has not changed.
papers/latex/etcs-izf-folds.log:775:(rerunfilecheck)             Checksum: 8DF3F1FF9F91D1A610C232C3C6465E85;13232.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '981,1340p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   981	\begin{theorem}[Straddler: EM, AC are independent]
   982	\label{thm:straddlers}
   983	The law of excluded middle EM and the axiom of choice AC are independent of UA in HoTT.
   984	\end{theorem}
   985	\begin{proof}[Sketch]
   986	EM: the classical model (sets) satisfies EM and UA; the topological model satisfies UA
   987	but not EM. Similarly AC.
   988	\end{proof}
   989	
   990	\subsection{The boundary as a square}
   991	
   992	\begin{center}
   993	\begin{tabular}{c|cc}
   994	& \textbf{Without UA} & \textbf{With UA} \\
   995	\hline
   996	\textbf{NNO} & yes & yes \\
   997	\textbf{FE} & independent & yes \\
   998	\textbf{PE} & independent & yes \\
   999	\textbf{SIP} & no & yes \\
  1000	\textbf{FOLDS-eq=id} & no & yes \\
  1001	\textbf{EM} & independent & independent \\
  1002	\textbf{AC} & independent & independent \\
  1003	\textbf{Replacement} & yes (small) & yes (small) \\
  1004	\end{tabular}
  1005	\end{center}
  1006	
  1007	\subsection{Diagnostic principles}
  1008	
  1009	Given an arbitrary structural principle $P$, how can one test whether $P$ lies on the
  1010	near or far side of the boundary? We propose the following heuristic.
  1011	
  1012	\begin{proposition}[Diagnostic for far-side principles]
  1013	\label{prop:diagnostic}
  1014	A principle $P$ lies on the far side of the univalence boundary if and only if $P$
  1015	asserts that two equivalent structures are \emph{equal}, where equality is in the
  1016	sense of HoTT's identity type.
  1017	\end{proposition}
  1018	\begin{proof}[Heuristic argument]
  1019	The forward direction is clear: such principles are precisely instances of the SIP
  1020	schema (or the more general Univalence Principle), and we showed in
  1021	\cref{thm:sipneedsua,thm:foldsneedsua} that these need UA.
  1022	The reverse direction relies on a meta-theoretic observation: principles that are not
  1023	about identification are about \emph{existence} or \emph{construction}, and these are
  1024	unaffected by UA's content (which is about identity). A detailed proof requires
  1025	formalisation of the schema, deferred to \cite{ANST2019}.
  1026	\end{proof}
  1027	
  1028	\subsection{What is on the boundary?}
  1029	
  1030	A principle is \emph{on the boundary} if it is equivalent to UA in HoTT. Examples:
  1031	\begin{itemize}
  1032	\item SIP (\cref{thm:sipneedsua}).
  1033	\item Univalence Principle for FOLDS (\cref{thm:foldsneedsua}).
  1034	\item Function extensionality + propositional extensionality + Voevodsky's
  1035	``equivalence-induction'' rule (a known characterisation of UA, due to Voevodsky).
  1036	\item Equivalence of $\Pi$-types respecting equivalence of arguments (a partial
  1037	characterisation).
  1038	\end{itemize}
  1039	
  1040	Principles strictly weaker than UA (i.e.\ near side or straddle):
  1041	\begin{itemize}
  1042	\item FE alone is strictly weaker than UA (the simplicial model with non-univalent
  1043	universes satisfies FE).
  1044	\item PE alone is strictly weaker than UA.
  1045	\item NNO existence (theorem of MLTT, no UA needed).
  1046	\end{itemize}
  1047	
  1048	\section{Open problems}
  1049	\label{sec:open}
  1050	
  1051	\subsection{Problem 1: Contractibility of the type of ETCS structures}
  1052	
  1053	\begin{conjecture}
  1054	\label{conj:etcscontract}
  1055	In HoTT~+~UA, the type
  1056	\[
  1057	\mathrm{ETCS}\text{-Str} := \Sigma_{\mathcal{S}:\mathrm{Cat}_\infty}\,\Pi_{i=1}^{8}
  1058	\mathrm{Ax}_i(\mathcal{S})
  1059	\]
  1060	is contractible up to a fixed choice of universe parameter.
  1061	\end{conjecture}
  1062	
  1063	\noindent A proof would mirror Paper~V Theorem~4.4 (contractibility of the NNO type) but
  1064	at the level of the entire categorical universe. Tools needed: SIP for $\infty$-toposes,
  1065	internal $\infty$-Yoneda (Riehl--Shulman directed type theory).
  1066	
  1067	\subsection{Problem 2: Cubical Agda formalisation of FOLDS}
  1068	
  1069	\begin{conjecture}
  1070	\label{conj:cubicalfolds}
  1071	There is a Cubical Agda library implementing FOLDS signatures, FOLDS-equivalence, and
  1072	$n$-level FOLDS (Szumi\l{}o 2019), and proving \cref{thm:up} formally for $n\le 2$
  1073	(equivalence of FOLDS-equivalence and HoTT-identification at $n=0,1,2$).
  1074	\end{conjecture}
  1075	
  1076	\noindent Partial work exists in the agda-categories library and in Tsementzis's
  1077	formalisation of the SIP. Full FOLDS in Cubical Agda would close the gap between Makkai
  1078	1995 and ANST 2019 syntactically.
  1079	
  1080	\subsection{Problem 3: Identifying IZF axioms with HoTT principles}
  1081	
  1082	\begin{conjecture}
  1083	\label{conj:izfhott}
  1084	There is a precise correspondence between the IZF axioms and HoTT principles of the
  1085	following form:
  1086	\begin{itemize}
  1087	\item Extensionality $\leftrightarrow$ FE + PE.
  1088	\item Pairing/Union $\leftrightarrow$ Sigma/Coproduct.
  1089	\item Powerset $\leftrightarrow$ $A\to\mathrm{hProp}$ (with propositional resizing).
  1090	\item Collection $\leftrightarrow$ Mahlo universe axiom.
  1091	\item $\in$-Induction $\leftrightarrow$ accessibility predicate.
  1092	\item Full Separation $\leftrightarrow$ subtype formation under propositional resizing.
  1093	\end{itemize}
  1094	\end{conjecture}
  1095	
  1096	\noindent Partial work: HoTT Book \S10.5; Awodey--Warren; Rathjen--Tupailo on CZF.
  1097	
  1098	\section{Discussion}
  1099	\label{sec:discussion}
  1100	
  1101	\subsection{What does ``foundation'' mean today?}
  1102	
  1103	The three-way comparison reveals that ``foundations'' has split into three orthogonal
  1104	axes:
  1105	\begin{itemize}
  1106	\item \textbf{Material vs structural}: ZFC (material) vs ETCS (structural).
  1107	\item \textbf{Classical vs constructive}: ZFC vs IZF/CZF.
  1108	\item \textbf{0-categorical vs higher}: ETCS (1-categorical) vs HoTT ($\infty$-categorical).
  1109	\end{itemize}
  1110	FOLDS is orthogonal to all three: it is a \emph{logic}, applicable in any of the
  1111	combinations.
  1112	
  1113	\subsection{Practical recommendations}
  1114	
  1115	For the working mathematician:
  1116	\begin{itemize}
  1117	\item \textbf{Pure category theory, classical}: ETCS+AC.
  1118	\item \textbf{Pure category theory, constructive}: well-pointed Heyting topos.
  1119	\item \textbf{Higher category theory, classical}: HoTT+UA+AC (= simplicial sets model).
  1120	\item \textbf{Higher category theory, constructive}: HoTT+UA (= cubical model).
  1121	\item \textbf{Pure logic, isomorphism-invariant}: FOLDS over HoTT (Univalence Principle).
  1122	\item \textbf{Reverse-mathematical strength}: stay with ZFC variants.
  1123	\end{itemize}
  1124	
  1125	\subsection{Limitations}
  1126	
  1127	This paper does not prove the full Univalence Principle; we report the result of ANST
  1128	2019. We also do not address the predicativity issue: HoTT proper is predicative, IZF is
  1129	impredicative, ETCS sits in between. A precise predicativity-comparative analysis is
  1130	left to future work. Finally, the ``square of interpretations'' is not commutative on
  1131	the nose; the diagram commutes up to bi-interpretation, a notion we have not fully
  1132	formalised here.
  1133	
  1134	\section{Worked case study: monoid theory across the four foundations}
  1135	\label{sec:casestudy}
  1136	
  1137	To make the comparison concrete, we trace a single mathematical concept --- the theory
  1138	of monoids --- through ETCS, IZF, FOLDS, and HoTT. This illustrates how
  1139	``structural-ness'' progresses from convention (ETCS) to enforced syntax (FOLDS) to
  1140	internal theorem (HoTT+UA).
  1141	
  1142	\subsection{Monoids in ZFC and IZF}
  1143	
  1144	In ZFC/IZF, a monoid is a 4-tuple $(M, \cdot, e, \text{laws})$ where $M$ is a set, $\cdot:
  1145	M\times M\to M$, $e\in M$, and the associativity and unit laws hold. The encoding of the
  1146	4-tuple uses Kuratowski pairs. Two monoids are \emph{equal} iff they have the same
  1147	underlying $\in$-tree --- a notion that depends on the choice of pair encoding. Monoid
  1148	isomorphism is a derived notion: a bijection $\phi: M\to N$ commuting with operations.
  1149	Junk theorems (e.g.\ ``the underlying set of $\mathbb{Z}$ contains the empty set as an
  1150	element'') depend on encoding.
  1151	
  1152	\subsection{Monoids in ETCS}
  1153	
  1154	In ETCS, a monoid is an object $M$ together with morphisms $\cdot: M\times M\to M$,
  1155	$e: 1\to M$, and the equational axioms expressed using composition and the universal
  1156	property of products. There is no encoding choice for $\cdot$ or $e$. Two monoids are
  1157	isomorphic iff there is an invertible morphism between them respecting the operations.
  1158	The category $\mathrm{Mon}(\mathrm{ETCS})$ of monoids in ETCS is well-defined, and is the
  1159	category of models of the algebraic theory of monoids.
  1160	
  1161	\subsection{Monoids in FOLDS}
  1162	
  1163	A FOLDS signature for monoids:
  1164	\begin{itemize}
  1165	\item Kind $M$ (elements).
  1166	\item Relation $E(x,y)$ (equality, parallel arrows from triangulation).
  1167	\item Relation $P(x,y,z)$ (multiplication: $z = x\cdot y$).
  1168	\item Relation $U(x)$ (unit: $x = e$).
  1169	\end{itemize}
  1170	Axioms:
  1171	\begin{itemize}
  1172	\item Associativity:
  1173	\[
  1174	\begin{aligned}
  1175	\forall a,b,c,xy,yz,abc,abc': M.\;
  1176	& P(a,b,xy) \wedge P(xy,c,abc) \wedge P(b,c,yz) \\
  1177	& {} \wedge P(a,yz,abc') \;\Rightarrow\; E(abc, abc').
  1178	\end{aligned}
  1179	\]
  1180	\item Left unit: $\forall e, x, ex: M.\, U(e) \wedge P(e,x,ex) \Rightarrow E(ex, x)$.
  1181	\item Right unit: dual.
  1182	\end{itemize}
  1183	A FOLDS-equivalence between two monoids $M, N$ is a span via very surjective
  1184	homomorphisms, which here coincides with the usual monoid isomorphism. Makkai's
  1185	invariance theorem guarantees: any FOLDS sentence holding in $M$ also holds in $N$.
  1186	There is no way to express ``$M$ is the monoid whose elements are von Neumann ordinals
  1187	$\le 5$'' in FOLDS, since this is non-isomorphism-invariant.
  1188	
  1189	\subsection{Monoids in HoTT}
  1190	
  1191	In HoTT, a monoid is a Sigma-type:
  1192	\[
  1193	\mathrm{Monoid} := \Sigma_{M:\mathrm{Set}}\Sigma_{\cdot: M\to M\to M}\Sigma_{e:M}
  1194	\bigl(\mathrm{Assoc}(\cdot)\times \mathrm{LUnit}(\cdot,e)\times \mathrm{RUnit}(\cdot,e)\bigr).
  1195	\]
  1196	The components are: a set, a binary operation, an identity element, and proofs (mere
  1197	propositions) of the laws.
  1198	
  1199	\begin{theorem}[Structure Identity Principle for monoids]
  1200	\label{thm:sipmonoid}
  1201	For two monoids $M, N: \mathrm{Monoid}$:
  1202	\[
  1203	(M =_{\mathrm{Monoid}} N) \;\simeq\; \mathrm{MonoidIso}(M, N)
  1204	\]
  1205	where $\mathrm{MonoidIso}(M,N)$ is the type of monoid isomorphisms.
  1206	\end{theorem}
  1207	\begin{proof}[Sketch]
  1208	By Sigma-induction on $M, N$ and SIP for each component: the sets are identified by UA,
  1209	the operations and identity are transported, the laws are mere propositions and so
  1210	identified automatically. The full proof is a routine application of HoTT Book \S9.8.
  1211	\end{proof}
  1212	
  1213	\subsection{Comparison}
  1214	
  1215	\begin{center}
  1216	\begin{tabular}{|l|l|l|l|}
  1217	\hline
  1218	& \textbf{Equality} & \textbf{Iso} & \textbf{SIP-statement} \\
  1219	\hline
  1220	ZFC & encoding-dependent & derived & metatheorem (sociological) \\
  1221	IZF & encoding-dependent & derived & metatheorem \\
  1222	ETCS & up to unique iso & primitive & metatheorem (categorical) \\
  1223	FOLDS & up to FOLDS-eq & primitive & syntactic (invariance theorem) \\
  1224	HoTT+UA & SIP-statement & primitive & internal theorem \\
  1225	\hline
  1226	\end{tabular}
  1227	\end{center}
  1228	
  1229	The rightmost column is the key: only HoTT+UA makes the SIP an internal theorem, expressed
  1230	in the same language as the structures themselves. ETCS makes it a category-theoretic
  1231	metatheorem (true of every property of the category of sets). FOLDS makes it a
  1232	syntactic invariance theorem (true of every well-formed FOLDS sentence). ZFC and IZF
  1233	make it a sociological convention. Each escalation reduces the ``trust assumption'' needed.
  1234	
  1235	\section{Practical foundational choice}
  1236	\label{sec:practical}
  1237	
  1238	\subsection{Which foundation for which task?}
  1239	
  1240	The foundational pluralism we have surveyed is not just a curiosity; it has practical
  1241	consequences for formalisation projects.
  1242	
  1243	\begin{itemize}
  1244	\item \textbf{Number theory and analysis}: ZFC variants are best, due to the deep classical
  1245	results requiring AC and EM. Lean/Mathlib uses ZFC (via the type-theoretic
  1246	formalisation of $\mathsf{ZFSet}$ inside Lean).
  1247	\item \textbf{Category theory and topos theory}: ETCS or HoTT+UA. ETCS is sufficient for
  1248	1-categorical structuralism; HoTT+UA is needed for higher-categorical structuralism (the
  1249	theory of $(\infty,1)$-categories).
  1250	\item \textbf{Synthetic differential geometry, synthetic homotopy theory}: HoTT, naturally,
  1251	since the synthetic methods rely on the type-theoretic semantics.
  1252	\item \textbf{Constructive analysis and computer-verified mathematics}: CZF or HoTT
  1253	without UA, where computational interpretation is crucial.
  1254	\item \textbf{Foundations of foundations} (model theory of foundations themselves): IZF
  1255	and topos theory provide the best general-purpose framework.
  1256	\item \textbf{Pedagogy}: ETCS is arguably the cleanest entry point, since it explains
  1257	``what set theory is really doing'' without the encoding noise.
  1258	\end{itemize}
  1259	
  1260	\subsection{Foundational consensus or pluralism?}
  1261	
  1262	A plausible reading of the present landscape is that no single foundation dominates;
  1263	each excels in a particular domain. This contrasts with the 20th century, where ZFC was
  1264	dominant. We propose to call the current situation \emph{principled pluralism}: each
  1265	foundation is correct for its target domain, and translation theorems (McLarty,
  1266	Friedman--Aczel, ANST) tie them together.
  1267	
  1268	\subsection{Open foundational debates}
  1269	
  1270	Several debates remain unresolved as of 2026:
  1271	\begin{itemize}
  1272	\item \emph{Predicativity vs impredicativity}: HoTT proper is predicative; IZF is
  1273	impredicative. The right level of impredicativity for a unified foundation is contested.
  1274	\item \emph{Constructivity vs classicality}: HoTT defaults to constructive but is
  1275	compatible with EM; IZF is constructive; ZFC is classical; FOLDS is logic-agnostic.
  1276	\item \emph{Higher coherence}: how high should the dimensional ladder go? HoTT goes to
  1277	$\infty$; FOLDS-Szumi\l{}o goes to arbitrary $n$; ETCS stops at $1$.
  1278	\item \emph{The role of universes}: HoTT has a Russellian hierarchy; ETCS has none
  1279	(the category of all sets is the universe); IZF has none (the proper class of all sets);
  1280	FOLDS has small categories of structures.
  1281	\end{itemize}
  1282	
  1283	\section{Conclusion}
  1284	\label{sec:conclusion}
  1285	
  1286	We have presented ETCS, IZF, and FOLDS as three orthogonal responses to the same
  1287	underlying problem: how to build a foundation in which only structurally relevant
  1288	assertions are formulable or provable. ETCS attacks the problem at the level of
  1289	\emph{ontology} (replace sets-with-membership by sets-with-functions). IZF attacks the
  1290	problem at the level of \emph{logic} (move to intuitionistic logic, where structural
  1291	properties are easier to certify). FOLDS attacks the problem at the level of
  1292	\emph{syntax} (build a logic in which only invariant predicates are expressible).
  1293	
  1294	HoTT---in particular HoTT~+~UA---synthesises all three. The Structure Identity Principle
  1295	recapitulates the structural ontology of ETCS at the level of types. Constructive HoTT
  1296	(without EM, without AC) shares the logical environment of IZF. The Univalence Principle
  1297	recapitulates the syntactic invariance of FOLDS as a metatheorem.
  1298	
  1299	The univalence boundary precisely separates: the principles that hold in MLTT alone
  1300	(the near side: NNO, induction, basic structural reasoning), and the principles requiring
  1301	univalence (the far side: SIP, FOLDS-equivalence-as-identity, the full equivalence
  1302	principle). Mapping out this boundary is, we suggest, one of the more illuminating
  1303	exercises in 2026 foundations.
  1304	
  1305	\section*{Acknowledgements}
  1306	
  1307	The author thanks colleagues at the YonedaAI Research Collective for discussions on
  1308	structuralism and on FOLDS-style invariance proofs. This paper continues the
  1309	foundations programme of our prior series (Papers I--VI on HoTT and structural
  1310	foundations), to which the reader is referred for the technical prerequisites.
  1311	
  1312	\begin{thebibliography}{99}
  1313	
  1314	\bibitem{Lawvere1964}
  1315	F.\ W.\ Lawvere,
  1316	\emph{An elementary theory of the category of sets},
  1317	Proceedings of the National Academy of Sciences 52 (1964), 1506--1511.
  1318	Reprinted with author's commentary, TAC Reprints 11 (2005).
  1319	
  1320	\bibitem{LawvereRosebrugh2003}
  1321	F.\ W.\ Lawvere and R.\ Rosebrugh,
  1322	\emph{Sets for Mathematics},
  1323	Cambridge University Press, 2003.
  1324	
  1325	\bibitem{McLarty2004}
  1326	C.\ McLarty,
  1327	\emph{Exploring categorical structuralism},
  1328	Philosophia Mathematica 12 (2004), 37--53.
  1329	
  1330	\bibitem{Makkai1995}
  1331	M.\ Makkai,
  1332	\emph{First-order logic with dependent sorts, with applications to category theory},
  1333	Preprint, McGill University, 1995.
  1334	Available at \url{https://www.math.mcgill.ca/makkai/folds/foldsinpdf/FOLDS.pdf}.
  1335	
  1336	\bibitem{Friedman1973}
  1337	H.\ Friedman,
  1338	\emph{The consistency of classical set theory relative to a set theory with intuitionistic
  1339	logic},
  1340	Journal of Symbolic Logic 38 (1973), 315--319.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '1341,1700p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1341	
  1342	\bibitem{StanfordIZFCZF}
  1343	L.\ Crosilla,
  1344	\emph{Set theory: constructive and intuitionistic ZF},
  1345	Stanford Encyclopedia of Philosophy, Spring 2024 edition, ed.\ E.\ N.\ Zalta.
  1346	
  1347	\bibitem{Aczel1978}
  1348	P.\ Aczel,
  1349	\emph{The type theoretic interpretation of constructive set theory},
  1350	in Logic Colloquium '77, North-Holland (1978), 55--66.
  1351	
  1352	\bibitem{Awodey2014}
  1353	S.\ Awodey,
  1354	\emph{Structuralism, invariance, and univalence},
  1355	Philosophia Mathematica 22 (2014), 1--11.
  1356	
  1357	\bibitem{HoTTBook}
  1358	The Univalent Foundations Program,
  1359	\emph{Homotopy Type Theory: Univalent Foundations of Mathematics},
  1360	Institute for Advanced Study, 2013.
  1361	
  1362	\bibitem{Shulman2019}
  1363	M.\ Shulman,
  1364	\emph{All $(\infty,1)$-toposes have strict univalent universes},
  1365	arXiv:1904.07004 (2019).
  1366	
  1367	\bibitem{ANST2019}
  1368	B.\ Ahrens, P.\ R.\ North, M.\ Shulman, D.\ Tsementzis,
  1369	\emph{The Univalence Principle},
  1370	arXiv:2102.06275 (2019/2021).
  1371	
  1372	\bibitem{Palmgren2016}
  1373	E.\ Palmgren,
  1374	\emph{Categories with families and first-order logic with dependent sorts},
  1375	arXiv:1605.01586 (2016).
  1376	
  1377	\bibitem{Rasekh2018}
  1378	N.\ Rasekh,
  1379	\emph{Every elementary higher topos has a natural number object},
  1380	arXiv:1809.01734 (2018), TAC 37(13) 2021.
  1381	
  1382	\bibitem{Voevodsky2010}
  1383	V.\ Voevodsky,
  1384	\emph{Univalent foundations of mathematics},
  1385	preprint, IAS Princeton (2010).
  1386	
  1387	\bibitem{Hyland1982}
  1388	J.\ M.\ E.\ Hyland,
  1389	\emph{The effective topos},
  1390	in The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland (1982), 165--216.
  1391	
  1392	\bibitem{MyhillCST}
  1393	J.\ Myhill,
  1394	\emph{Constructive set theory},
  1395	Journal of Symbolic Logic 40 (1975), 347--382.
  1396	
  1397	\bibitem{Joyal1984}
  1398	A.\ Joyal and I.\ Moerdijk,
  1399	\emph{Algebraic Set Theory},
  1400	LMS Lecture Note Series 220, Cambridge University Press (1995).
  1401	
  1402	\bibitem{Tsementzis2017}
  1403	D.\ Tsementzis,
  1404	\emph{First-order logic with isomorphism},
  1405	arXiv:1603.03092 (2016/2017).
  1406	
  1407	\bibitem{Awodey2009StructuralismInvariance}
  1408	S.\ Awodey,
  1409	\emph{From sets to types to categories to sets},
  1410	in Foundational Theories of Classical and Constructive Mathematics, Springer (2009).
  1411	
  1412	\bibitem{Riehl2017}
  1413	E.\ Riehl and M.\ Shulman,
  1414	\emph{A type theory for synthetic $\infty$-categories},
  1415	Higher Structures 1 (2017), 147--224, arXiv:1705.07442.
  1416	
  1417	\bibitem{Szumilo2019}
  1418	K.\ Szumi\l{}o,
  1419	\emph{Frames in cofibration categories},
  1420	Journal of Homotopy and Related Structures 14 (2019), 345--378.
  1421	See also: \emph{$n$-FOLDS and Reedy fibrant diagrams},
  1422	preprint, 2019.
  1423	
  1424	\end{thebibliography}
  1425	
  1426	\end{document}

exec
/usr/local/bin/zsh -lc "wc -l papers/latex/etcs-izf-folds.tex && rg -n \"\\\\(ref|cite|cref|Cref|label)\\{|TODO|FIXME|\\\\begin\\{|\\\\end\\{|\\\\texorpdfstring|\\\\url|\\\\includegraphics|\\\\bibliography|thebibliography\" papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
    1426 papers/latex/etcs-izf-folds.tex
rg: regex parse error:
    (?:\(ref|cite|cref|Cref|label)\{|TODO|FIXME|\begin\{|\end\{|\texorpdfstring|\url|\includegraphics|\bibliography|thebibliography)
                                                         ^^
error: unrecognized escape sequence

codex
The existing log only showed `rerunfilecheck` info, no warnings from a prior run. I’m rerunning into a temporary output directory now so I can catch current compiler diagnostics without changing the source tree’s PDF/aux files.
exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\(ref|cite|cref|Cref|label)\\{' -e 'TODO|FIXME' -e '\\\\begin\\{' -e '\\\\end\\{' -e '\\\\texorpdfstring' -e '\\\\url' -e '\\\\includegraphics' -e '\\\\bibliography' -e 'thebibliography' papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
44:    \begin{tikzpicture}[remember picture, overlay]
54:    \end{tikzpicture}
65:\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
69:\begin{document}
73:\begin{abstract}
94:\end{abstract}
99:\label{sec:intro}
115:\begin{itemize}
126:\end{itemize}
136:Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the
139:\begin{definition}[Material set theory]
144:\end{definition}
146:\begin{definition}[Structural set theory]
151:\end{definition}
162:\begin{quote}
165:\end{quote}
173:We will argue in \cref{sec:boundary} that the boundary cuts as follows:
175:\begin{center}\small
176:\begin{tabular}{lcccc}
190:\end{tabular}
191:\end{center}
194:independent of MLTT alone; see \cref{sec:hott} and \cref{thm:fefar} for the precise
198:\Cref{sec:etcs} states the eight-axiom presentation of ETCS, proves the elementary
201:\Cref{sec:izf} presents IZF, contrasts it with CZF and ZFC, and discusses the
203:\Cref{sec:folds} develops Makkai's signature theory, defines FOLDS-equivalence, and
205:\Cref{sec:hott} reframes HoTT as the unifying framework: which structural principles
207:\Cref{sec:models} surveys models: ETCS in toposes, FOLDS in fibrations, HoTT in
209:\Cref{sec:boundary} formally analyses the univalence boundary.
210:\Cref{sec:open} states three open problems.
211:\Cref{sec:conclusion} concludes.
214:\label{sec:etcs}
220:\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and
221:McLarty \cite{McLarty2004}.
223:\begin{definition}[ETCS axioms]
224:\label{def:etcs}
226:\begin{enumerate}
248:\end{enumerate}
249:\end{definition}
251:\begin{remark}
257:\end{remark}
261:\begin{proposition}[Function extensionality in ETCS]
262:\label{prop:etcsfunext}
264:\end{proposition}
265:\begin{proof}
267:\end{proof}
269:\begin{proposition}[Power objects]
270:\label{prop:etcspower}
273:\end{proposition}
274:\begin{proof}
278:\end{proof}
280:\begin{theorem}[McLarty's bi-interpretation theorem]
281:\label{thm:mclarty}
285:\end{theorem}
286:\begin{proof}[Sketch]
292:in the appropriate 2-categorical sense. Full proof in McLarty \cite{McLarty2004}; we
293:return to it in \cref{sec:models}.
294:\end{proof}
306:\begin{example}
311:\end{example}
319:\begin{definition}[Addition in ETCS]
320:\label{def:etcsadd}
323:\begin{itemize}
326:\end{itemize}
327:\end{definition}
329:\begin{proposition}[Existence of addition]
330:\label{prop:etcsadd}
331:There exists a unique morphism $+$ as in \cref{def:etcsadd}.
332:\end{proposition}
333:\begin{proof}
341:\end{proof}
343:\begin{example}[Multiplication and exponentiation]
350:\end{example}
360:\cref{sec:boundary} that AC is on the \emph{straddling} side of the univalence boundary.
364:Awodey \cite{Awodey2014} introduces a refined notion of \emph{structural foundation}: a
374:\label{sec:izf}
379:\cite{StanfordIZFCZF}) is the system over intuitionistic first-order logic with equality
382:\begin{definition}[IZF axioms]
383:\label{def:izf}
388:\begin{enumerate}
407:\end{enumerate}
410:\end{definition}
412:\begin{remark}
418:\end{remark}
422:\begin{theorem}[Friedman \cite{Friedman1973}]
423:\label{thm:friedman}
426:\end{theorem}
427:\begin{proof}[Sketch]
434:\end{proof}
436:\begin{remark}[CZF vs IZF]
444:\end{remark}
448:\begin{definition}[Realisability model]
453:\end{definition}
460:\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising
463:\begin{theorem}[Awodey--Warren propositions-as-types for IZF]
464:\label{thm:awodey-warren}
471:\end{theorem}
472:\begin{proof}[Sketch]
476:the Mahlo-style closure on the universe. See HoTT Book \cite{HoTTBook} \S10.5 for details.
477:\end{proof}
481:\begin{theorem}[Diaconescu 1975]
482:\label{thm:diaconescu}
485:\end{theorem}
486:\begin{proof}[Sketch]
492:\end{proof}
494:\begin{corollary}
497:\end{corollary}
502:Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial
504:\begin{itemize}
508:\end{itemize}
510:in Martin-L\"of type theory (the sets-in-types interpretation \cite{Aczel1978}), and
513:\begin{remark}
518:\end{remark}
521:\label{sec:folds}
525:\begin{definition}[FOLDS signature, after Makkai \cite{Makkai1995}]
526:\label{def:foldssig}
528:\begin{itemize}
535:\end{itemize}
537:\end{definition}
539:\begin{example}[FOLDS signature for categories]
540:\label{ex:foldscat}
542:\begin{itemize}
557:\end{itemize}
562:\end{example}
566:\begin{definition}[FOLDS-equivalence, Makkai \cite{Makkai1995}]
567:\label{def:foldsequiv}
576:\end{definition}
578:\begin{remark}
584:\end{remark}
588:\begin{theorem}[Makkai's Invariance Theorem \cite{Makkai1995}]
589:\label{thm:invariance}
595:\end{theorem}
596:\begin{proof}[Sketch]
604:\end{proof}
606:\begin{corollary}
607:\label{cor:invariance}
611:\end{corollary}
615:Palmgren \cite{Palmgren2016} showed FOLDS embeds into intensional Martin-L\"of type
619:\begin{theorem}[Palmgren \cite{Palmgren2016}]
620:\label{thm:palmgren}
624:\begin{enumerate}
628:\end{enumerate}
629:\end{theorem}
633:\begin{example}[Categorical equivalence is FOLDS-equivalence]
634:\label{ex:catequivfolds}
639:C(F)(x,y) := \begin{cases}
644:\end{cases}
652:\end{example}
654:\begin{proposition}[Skeletality is not FOLDS-expressible]
655:\label{prop:skeleton-not-folds}
658:\end{proposition}
659:\begin{proof}
665:(\cref{thm:invariance}), $\mathcal{C}_0\models \varphi \Leftrightarrow \mathcal{C}_1
668:\end{proof}
670:\begin{remark}
671:\Cref{prop:skeleton-not-folds} is paradigmatic: any predicate referring to specific
675:\end{remark}
677:\subsection{Higher signatures: bicategories and \texorpdfstring{$\infty$}{infinity}-categories}
681:\begin{itemize}
689:\end{itemize}
690:Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose
694:\label{sec:hott}
698:Univalence (Voevodsky 2010, HoTT Book \cite{HoTTBook} \S2.10) is the axiom:
712:\begin{itemize}
724:\end{itemize}
730:\begin{theorem}[Univalence Principle, ANST \cite{ANST2019}]
731:\label{thm:up}
737:\end{theorem}
738:\begin{proof}[Sketch]
746:\end{proof}
748:\begin{remark}
749:\Cref{thm:up} subsumes Makkai's Invariance Theorem: indeed if $M\simeq_F N$ then
751:But \cref{thm:up} is stronger: it gives an \emph{equivalence}, not just an implication.
753:\end{remark}
760:\begin{theorem}[Sets in HoTT form a model of ETCS-AC]
761:\label{thm:setsmodel}
770:\end{theorem}
771:\begin{proof}[Sketch]
782:\end{proof}
788:\begin{definition}[The HoTT cumulative hierarchy]
789:\label{def:vhott}
791:\begin{itemize}
796:\end{itemize}
797:\end{definition}
799:\begin{theorem}[HoTT Book \S10.5]
800:\label{thm:vmodelizf}
804:\end{theorem}
810:(\cref{thm:up}) is the statement that the type of $\mathbf{L}$-structures has the
815:\label{sec:models}
821:\begin{itemize}
827:\end{itemize}
835:\begin{theorem}[Friedman--Aczel--Joyal]
838:\end{theorem}
850:\begin{theorem}[Makkai \cite{Makkai1995}]
851:\label{thm:foldsfib}
856:\end{theorem}
858:\subsection{HoTT in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
860:\begin{theorem}[Shulman \cite{Shulman2019}]
861:\label{thm:shulman}
863:\end{theorem}
864:\begin{proof}[Sketch]
869:\end{proof}
873:\begin{center}
874:\begin{tikzcd}[column sep=large, row sep=large]
879:\end{tikzcd}
880:\end{center}
891:\begin{center}
892:\begin{tabular}{|l|l|l|}
906:\end{tabular}
907:\end{center}
912:inaccessibles (Shulman \cite{Shulman2019}), since each universe behaves as a Grothendieck
916:\label{sec:boundary}
920:\begin{definition}[Univalence boundary]
921:\label{def:boundary}
927:\end{definition}
931:\begin{theorem}[Far-side: SIP needs UA]
932:\label{thm:sipneedsua}
934:\end{theorem}
935:\begin{proof}[Sketch]
942:\end{proof}
944:\begin{theorem}[Far-side: FOLDS-equivalence-implies-identity needs UA]
945:\label{thm:foldsneedsua}
948:\end{theorem}
949:\begin{proof}[Sketch]
950:$\mathrm{UA}\Rightarrow$ statement: this is \cref{thm:up}.
954:\end{proof}
958:\begin{theorem}[Near-side: NNO existence is near]
959:\label{thm:nnonear}
961:\end{theorem}
962:\begin{proof}
966:\end{proof}
968:\begin{theorem}[Near-side: function extensionality is near, given univalence is far]
969:\label{thm:fefar}
972:\end{theorem}
973:\begin{proof}[Sketch]
977:\end{proof}
981:\begin{theorem}[Straddler: EM, AC are independent]
982:\label{thm:straddlers}
984:\end{theorem}
985:\begin{proof}[Sketch]
988:\end{proof}
992:\begin{center}
993:\begin{tabular}{c|cc}
1004:\end{tabular}
1005:\end{center}
1012:\begin{proposition}[Diagnostic for far-side principles]
1013:\label{prop:diagnostic}
1017:\end{proposition}
1018:\begin{proof}[Heuristic argument]
1021:\cref{thm:sipneedsua,thm:foldsneedsua} that these need UA.
1025:formalisation of the schema, deferred to \cite{ANST2019}.
1026:\end{proof}
1031:\begin{itemize}
1032:\item SIP (\cref{thm:sipneedsua}).
1033:\item Univalence Principle for FOLDS (\cref{thm:foldsneedsua}).
1038:\end{itemize}
1041:\begin{itemize}
1046:\end{itemize}
1049:\label{sec:open}
1053:\begin{conjecture}
1054:\label{conj:etcscontract}
1061:\end{conjecture}
1069:\begin{conjecture}
1070:\label{conj:cubicalfolds}
1072:$n$-level FOLDS (Szumi\l{}o 2019), and proving \cref{thm:up} formally for $n\le 2$
1074:\end{conjecture}
1082:\begin{conjecture}
1083:\label{conj:izfhott}
1086:\begin{itemize}
1093:\end{itemize}
1094:\end{conjecture}
1099:\label{sec:discussion}
1105:\begin{itemize}
1109:\end{itemize}
1116:\begin{itemize}
1123:\end{itemize}
1135:\label{sec:casestudy}
1164:\begin{itemize}
1169:\end{itemize}
1171:\begin{itemize}
1174:\begin{aligned}
1178:\end{aligned}
1182:\end{itemize}
1199:\begin{theorem}[Structure Identity Principle for monoids]
1200:\label{thm:sipmonoid}
1206:\end{theorem}
1207:\begin{proof}[Sketch]
1211:\end{proof}
1215:\begin{center}
1216:\begin{tabular}{|l|l|l|l|}
1226:\end{tabular}
1227:\end{center}
1236:\label{sec:practical}
1243:\begin{itemize}
1258:\end{itemize}
1271:\begin{itemize}
1281:\end{itemize}
1284:\label{sec:conclusion}
1312:\begin{thebibliography}{99}
1334:Available at \url{https://www.math.mcgill.ca/makkai/folds/foldsinpdf/FOLDS.pdf}.
1424:\end{thebibliography}
1426:\end{document}

exec
/usr/local/bin/zsh -lc "rg -n -e '\\"'$[''^$]*$'"' -e '\\\\\\[' -e '\\\\\\]' -e '\\\\begin\\{tabular\\}' -e '\\\\begin\\{tikzcd\\}' -e '\\\\begin\\{aligned\\}' papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
65:\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
80:(McLarty 2004 for ETCS $\equiv$ Bounded Zermelo + Replacement; Friedman--Aczel for IZF;
105:topological spaces, schemes, $\infty$-categories) needs an underlying logic that respects
110:predicates such as ``$\emptyset \in 7$'' (a sentence whose truth value depends on
141:$\in$, with sets identified by extensionality (two sets are equal iff they have the same
143:a $\in$-tree.
149:unique isomorphism, and where membership is a derived notion ($x\in A$ means
150:``$x:1\to A$ is a global element'').
168:$(-1)$-truncated fragment, or the propositions-as-subsingletons fragment) lies on the
176:\begin{tabular}{lcccc}
184:FOLDS-eq.\ $=$ id & --- & --- & meta & \textbf{yes} \\
188:Powerset & derived & axiom & --- & impred.\ $\Omega$ \\
208:$(\infty,1)$-toposes.
225:A category $\mathcal{S}$ \emph{models ETCS} iff it satisfies:
227:\item[(A1)] $\mathcal{S}$ has finite limits (terminal object $1$, binary products $A\times B$,
229:\item[(A2)] $\mathcal{S}$ is Cartesian closed: for any objects $A,B$ there is an
230:exponential $B^A$ with evaluation $\mathrm{ev}: B^A \times A \to B$ enjoying the universal
231:property of $\lambda$-abstraction.
232:\item[(A3)] $\mathcal{S}$ has a subobject classifier: an object $\Omega$ with a morphism
233:$\top: 1 \to \Omega$ such that every monomorphism $m: A \hookrightarrow B$ arises as the
234:pullback of $\top$ along a unique characteristic morphism $\chi_m : B \to \Omega$.
235:\item[(A4)] $\mathcal{S}$ has a natural numbers object: an object $\mathbb{N}$ with maps
236:$0:1\to \mathbb{N}$ and $s:\mathbb{N}\to \mathbb{N}$ such that for every $(X, x_0:1\to X,
237:f:X\to X)$ there is a unique morphism $h:\mathbb{N}\to X$ with $h\circ 0 = x_0$ and
238:$h\circ s = f\circ h$.
239:\item[(A5)] $\mathcal{S}$ is well-pointed: if $f,g:A\to B$ are distinct morphisms, then
240:there exists $x:1\to A$ with $f\circ x \ne g\circ x$.
241:\item[(A6)] (Axiom of choice) Every epimorphism $e: A \twoheadrightarrow B$ has a section
242:$s: B \to A$ with $e \circ s = \mathrm{id}_B$.
243:\item[(A7)] (Two-valuedness; derivable from A5--A6 and A8) Any morphism $f:1\to \Omega$
244:equals either $\top$ or $\bot$, where $\bot$ is the unique map factoring through the
246:\item[(A8)] (Non-degeneracy) $0\not\cong 1$ (the initial object is not isomorphic to the
252:A1+A2+A3 alone make $\mathcal{S}$ an \emph{elementary topos} in the sense of
263:For $f,g: A\to B$, if $\forall x:1\to A,\, f\circ x = g\circ x$, then $f=g$.
271:$\mathcal{S}$ has power objects $P(A) := \Omega^A$, with the standard adjunction
272:$\mathrm{Sub}(B\times A)\cong \mathrm{Hom}(B, P(A))$.
275:Combine A2 and A3: $P(A) = \Omega^A$ classifies subobjects of any product
276:$B\times A$ via $\chi: B\times A \to \Omega$ uncurried as $\widetilde{\chi}:
277:B\to \Omega^A$.
289:$\mathbf{BZ}+\mathbf{R}$. Conversely, given a model $V$ of $\mathbf{BZ}+\mathbf{R}$,
290:define $\mathcal{S}_V$ to be the category of sets and functions inside $V$; one verifies
300:than the Kuratowski encoding $\langle a,b\rangle = \{\{a\},\{a,b\}\}$. Junk theorems
301:such as ``$3 \in 7$'' (vacuously true under von Neumann ordinals: $3 = \{0,1,2\}$ and
302:$7=\{0,\ldots,6\}$) are not formulable in the ETCS language: $3:1\to \mathbb{N}$ is a
303:global element, $7:1\to \mathbb{N}$ likewise, and there is no membership predicate
307:$\mathbb{N} \times \mathbb{N}$ in ETCS is the categorical product of $\mathbb{N}$ with
310:$\mathbf{BZ+R}$ is irrelevant to the structural object so produced.
316:property of the NNO. Given the NNO $(\mathbb{N},0,s)$, define addition
317:$+:\mathbb{N}\times\mathbb{N}\to\mathbb{N}$ as follows.
321:The addition map $+: \mathbb{N}\times\mathbb{N}\to\mathbb{N}$ is the unique morphism
324:\item $+ \circ \langle 0_{\mathbb{N}}, \mathrm{id}_{\mathbb{N}}\rangle = \mathrm{id}_{\mathbb{N}}$ (left zero), and
325:\item $+ \circ (s\times \mathrm{id}_{\mathbb{N}}) = s \circ +$ (left successor).
331:There exists a unique morphism $+$ as in \cref{def:etcsadd}.
335:$(\mathbb{N}^{\mathbb{N}}, \mathrm{id}_{\mathbb{N}} : 1\to \mathbb{N}^{\mathbb{N}},
336:\widehat{s\circ\mathrm{ev}}: \mathbb{N}^{\mathbb{N}}\to \mathbb{N}^{\mathbb{N}})$ where
337:the basepoint is the constant function $\mathrm{id}_{\mathbb{N}}$ and the endomap is
338:post-composition with $s$. This yields a unique
339:$\widehat{+}: \mathbb{N} \to \mathbb{N}^{\mathbb{N}}$, which uncurries to
340:$+: \mathbb{N}\times\mathbb{N}\to \mathbb{N}$ satisfying both equations.
344:Multiplication $\cdot$ is defined by the same recursion technique with
345:$+$ in place of $s$:
346:$\cdot\circ\langle 0,\mathrm{id}\rangle = 0$, $\cdot\circ (s\times \mathrm{id}) =
347:+\circ\langle\mathrm{id},\cdot\rangle$.
348:Exponentiation $\uparrow$ similarly: $\uparrow\circ\langle 0,\mathrm{id}\rangle = 1$,
349:$\uparrow\circ (s\times \mathrm{id}) = \cdot\circ\langle\mathrm{id},\uparrow\rangle$.
355:(well-pointed topos with NNO). This system is consistent with both EM and $\neg$EM in
357:bi-interpretable with $\mathbf{BZ}+\mathbf{R}$-AC. The constructive variant of ETCS
380:and a binary predicate $\in$, having the following axioms.
389:\item[(I1)] (Extensionality) $\forall x\forall y\,[(\forall z\,(z\in x \Leftrightarrow
390:z\in y))\Rightarrow x=y]$.
391:\item[(I2)] (Empty set) $\exists x\, \forall y\,(y\notin x)$.
392:\item[(I3)] (Pairing) $\forall x\forall y\, \exists z\,\forall w\,
393:(w\in z\Leftrightarrow w=x\vee w=y)$.
394:\item[(I4)] (Union) $\forall x\, \exists y\,\forall z\,(z\in y \Leftrightarrow \exists w
395:\in x.\, z\in w)$.
396:\item[(I5)] (Infinity) $\exists \omega\,(\emptyset\in\omega \wedge \forall x\in\omega.\,
397:x\cup\{x\}\in\omega)$.
398:\item[(I6)] (Full Separation) For every formula $\varphi(z)$, $\forall x\,\exists y\,
399:\forall z\,(z\in y \Leftrightarrow z\in x \wedge \varphi(z))$.
400:\item[(I7)] (Powerset) $\forall x\, \exists y\, \forall z\,(z\in y \Leftrightarrow z
401:\subseteq x)$.
402:\item[(I8)] (Collection) For every formula $\varphi(x,y)$, if $\forall x\in a.\,\exists
403:y.\, \varphi(x,y)$, then $\exists b.\,\forall x\in a.\,\exists y\in b.\, \varphi(x,y)$.
404:\item[(I9)] ($\in$-Induction) For every $\varphi$,
405:$[\forall x\,((\forall y\in x.\,\varphi(y))\Rightarrow \varphi(x))]\Rightarrow \forall x.\,
406:\varphi(x)$.
424:$\mathrm{ZF} = \mathrm{IZF} + \mathrm{EM}$, where $\mathrm{EM}$ is the schema
425:$\varphi\vee\neg\varphi$ over the IZF language. Consequently, IZF and ZF are equiconsistent.
428:Forward direction: $\mathrm{IZF}\subseteq \mathrm{ZF}$ definitionally, since classical
439:Separation} (where $\varphi$ is bounded). CZF is significantly weaker than IZF:
440:$\mathrm{CZF} \subsetneq \mathrm{IZF}$, and CZF is interpretable in Martin-L\"of type
450:$(\mathbb{V}, \Vdash)$ where $\mathbb{V}$ is a class hierarchy and $\Vdash$ is a forcing
451:relation specified by terms of an underlying calculus (e.g.\ untyped $\lambda$-calculus,
456:effective topos $\mathcal{E}\!f\!f$ provides a realisability model in which IZF holds
457:(via Full Separation, Collection, and Powerset using the lifted $\Omega$). Inside
458:$\mathcal{E}\!f\!f$, the internal language is intuitionistic higher-order logic, which
460:\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising
461:to localic $(\infty,1)$-toposes gives realisability models of HoTT compatible with IZF.
465:The $(-1)$-truncated fragment of HoTT (i.e.\ HoTT restricted to mere propositions)
467:$\llbracket\cdot\rrbracket$ of IZF formulas into $(-1)$-truncated types such that
468:$\mathrm{IZF}\vdash \varphi$ implies $\mathrm{HoTT}\vdash \llbracket\varphi\rrbracket$
473:Each IZF set is interpreted as a well-founded $\mathbb{V}$-structure
475:propositional resizing. Powerset translates to $A \to \mathrm{hProp}$. Collection requires
484:particular, $\mathrm{IZF}+\mathrm{AC}$ proves $\mathrm{EM}$.
487:Given a proposition $P$, consider the set $A = \{x\in\{0,1\}: x=0 \vee P\}$ and
488:$B = \{x\in\{0,1\}: x=1\vee P\}$. By Pairing both are sets, and their union is
489:$\{0,1\}$. AC gives a choice function on the family of these two non-empty sets,
490:producing $a\in A, b\in B$. Now either $a=b$, in which case $P$ holds (decidably), or
491:$a\neq b$, in which case $\neg P$ holds. Either way $P\vee\neg P$.
495:$\mathrm{IZF}+\mathrm{AC}$ is equivalent to $\mathrm{ZFC}$. Hence the constructive
527:A \emph{FOLDS signature} is a small category $\mathbf{L}$ that is:
541:The signature $\mathbf{L}_{\mathrm{Cat}}$ has:
543:\item Kind $O$ (objects).
544:\item Kind $A$ (arrows), with two morphisms $s,t: A\to O$ (source, target). The
545:dependency $A\to O\times O$ records that an arrow has a source and target object.
546:\item Relation $T(g,h,k)$ on composable triples $(g, h, k:A)$ (where $t(g)=s(h)$ and the
547:common boundary types match) expressing ``$k$ is the composite $h\circ g$''. This
549:\item Relation $I(f)$ on $A$ expressing ``$f$ is an identity arrow''. We list this
552:required to satisfy the laws $\forall f.\, I(f)\to T(f,g,g)$ and $T(g,f,g)$ for parallel
553:$g$.
554:\item Relation $E(f,g)$ on parallel arrows expressing arrow-equality. In FOLDS the
558:A model is a category in the usual sense, where the three relations $T, I, E$ have
559:distinct and complementary roles: $T$ records composition data, $I$ singles out the
560:identity arrows, and $E$ provides arrow-equality. Together they suffice to express the
568:Two $\mathbf{L}$-structures $M, N$ are \emph{FOLDS-equivalent} (written $M\simeq_F N$)
569:iff there exists a span of $\mathbf{L}$-structure homomorphisms
570:\[
572:\]
573:where both $p$ and $q$ are \emph{very surjective}: surjective on every kind, and on every
574:relation symbol $R$, the induced map $R^P \to R^M\times_{(\text{kinds})} \cdots$ is
579:For the signature $\mathbf{L}_{\mathrm{Cat}}$, $M\simeq_F N$ coincides with the
580:classical notion of equivalence of categories $M\simeq N$ (essentially surjective and
582:correctly generalises bi-equivalence; for $n$-categories, $n$-equivalence; and so on for
583:$\infty$-categorical signatures.
590:For every FOLDS signature $\mathbf{L}$ and every FOLDS sentence $\varphi$ in
591:$\mathcal{L}(\mathbf{L})$, and any two $\mathbf{L}$-structures $M,N$:
592:\[
594:\]
597:By induction on $\varphi$. Atomic formulas are preserved by very surjective
599:quantifier $\exists x: K$ (where $K$ is a kind) preserve preservation under very
600:surjective spans because every element on each kind in $M$ (resp.\ $N$) is hit by some
601:element of $P$. Full induction is given in
609:``$X$ is the $\in$-rank-zero element of the universe'' is \emph{not} expressible in any
617:MLTT; relations become $(-1)$-types (mere propositions).
621:There is a faithful translation $\mathcal{T}$ from FOLDS signatures over a category
622:$\mathbf{L}$ to dependent type theories with explicit substitutions
623:$\mathrm{CwF}(\mathbf{L})$, such that:
625:\item Every FOLDS structure $M$ on $\mathbf{L}$ corresponds to a model of
626:$\mathcal{T}(\mathbf{L})$.
627:\item FOLDS-equivalence corresponds to equivalence of models of $\mathcal{T}(\mathbf{L})$.
635:Take $\mathbf{L} = \mathbf{L}_{\mathrm{Cat}}$ and let $F:M\to N$ be a functor. Construct
636:the cograph (mapping cylinder) $C(F)$: objects are
637:$\mathrm{Ob}(M)\sqcup\mathrm{Ob}(N)$, with hom-sets given by
638:\[
645:\]
646:Then both inclusions $M\hookrightarrow C(F)$ and $N\hookrightarrow C(F)$ are
647:homomorphisms of $\mathbf{L}_{\mathrm{Cat}}$-structures. The inclusion of $M$ is
648:\emph{very surjective} iff $F$ is essentially surjective and full. The inclusion of $N$
649:is very surjective iff $F$ is faithful.  Combining, $F$ is an equivalence iff there is a
650:zigzag of cograph cospans connecting $M$ and $N$ via very surjective maps --- i.e.\
651:$M\simeq_F N$ in the FOLDS sense.
656:The predicate ``$\mathcal{C}$ is a skeletal category'' (every object is the unique
660:Suppose $\varphi$ is a FOLDS sentence in $\mathbf{L}_{\mathrm{Cat}}$ that holds in
661:$\mathcal{C}$ iff $\mathcal{C}$ is skeletal. Take a non-skeletal $\mathcal{C}_0$ and a
662:skeleton $\mathcal{C}_1\hookrightarrow \mathcal{C}_0$. The inclusion is an
664:yields $\mathcal{C}_0 \simeq_F \mathcal{C}_1$. By Makkai's invariance theorem
665:(\cref{thm:invariance}), $\mathcal{C}_0\models \varphi \Leftrightarrow \mathcal{C}_1
666:\models\varphi$. But $\mathcal{C}_1$ is skeletal and $\mathcal{C}_0$ is not, so $\varphi$
677:\subsection{Higher signatures: bicategories and \texorpdfstring{$\infty$}{infinity}-categories}
679:The signature $\mathbf{L}_{\mathrm{Cat}}$ for ordinary categories generalises naturally
682:\item $\mathbf{L}_{\mathrm{Bicat}}$: kinds $O$, $A$, $C$ (cells), with
683:$s,t:A\to O$, $s,t:C\to A$, and relations for vertical/horizontal composition,
684:identities, and 2-cell equality. FOLDS-equivalence on $\mathbf{L}_{\mathrm{Bicat}}$
686:\item $\mathbf{L}_{(\infty,1)}$: an infinite tower of kinds $A_n$ for $n$-cells, with
688:corresponds to Joyal-style $\infty$-equivalence (DK-equivalence).
690:Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose
699:\[
701:\]
702:saying that the canonical map ``$\mathrm{idtoeqv}$'' from identifications between types
713:\item \textbf{NNO} is a theorem in HoTT --- the inductive type $\mathbb{N}$ is built into
717:proof shows $\mathrm{UA}\Rightarrow \mathrm{FE}$.
732:For any FOLDS signature $\mathbf{L}$ and any two $\mathbf{L}$-structures $M, N$ in HoTT,
733:\[
735:\]
736:That is, FOLDS-equivalence is identification in the type of $\mathbf{L}$-structures.
739:The dependent-sort structure of $\mathbf{L}$ is encoded as a Reedy diagram of types in
740:HoTT. Each relation symbol becomes a $(-1)$-truncated type, each kind a type of the
744:The full proof requires careful management of the level structure of $\mathbf{L}$ and the
749:\Cref{thm:up} subsumes Makkai's Invariance Theorem: indeed if $M\simeq_F N$ then
750:$M=N$ in HoTT, hence any predicate is preserved (by transport along the identification).
762:Within HoTT, define $\mathrm{Set}$ to be the type of $0$-truncated types (sets in the
764:\[
766:\]
767:Then $\mathrm{Set}$, with the obvious morphism structure (functions between sets) and
773:sets; equalisers are $\Sigma_{x:A} (f(x) = g(x))$, also a set.
774:\textbf{Cartesian closure}: function types $A\to B$ are sets when $B$ is a set (by FE).
775:\textbf{Subobject classifier}: $\Omega := \mathrm{hProp}$, the type of mere propositions;
777:\textbf{NNO}: the inductive type $\mathbb{N}$.
781:\textbf{Non-degeneracy}: $\mathbf{0}\not\simeq\mathbf{1}$ holds in any non-trivial model.
786:Aczel's $\mathbb{V}$-construction inside HoTT:
790:Define the higher inductive type $\mathbb{V}$ with:
792:\item Constructor $\mathrm{set}: (A:\mathcal{U}) \to (A\to \mathbb{V})\to \mathbb{V}$.
793:\item Path constructor: extensionality, $\mathrm{set}(A,f) =_{\mathbb{V}} \mathrm{set}(B,g)$
794:iff there is a bisimulation between the trees $(A,f)$ and $(B,g)$.
795:\item $0$-truncation.
801:$\mathbb{V}$ is a model of IZF in the following sense: every IZF axiom (Extensionality,
802:Pairing, Union, Powerset, Infinity, Collection, Full Separation, $\in$-Induction)
803:translates to a provable HoTT statement about $\mathbb{V}$, given propositional resizing.
810:(\cref{thm:up}) is the statement that the type of $\mathbf{L}$-structures has the
820:$\mathrm{Set}$ in ZFC is the prototype. Other models include:
822:\item $\mathrm{Set}_{\mathrm{ZF+AC}}$: classical sets in ZF + AC.
823:\item $\mathrm{Set}_{\mathrm{IZF+AC}}$: intuitionistic sets in IZF + AC (where AC implies
825:\item $\mathrm{FinSet}$: finite sets satisfy A1--A6, fail A4 (no NNO), so not ETCS.
826:\item Forcing extensions of $\mathrm{Set}$: ETCS+CH and ETCS+$\neg$CH.
831:Friedman--Aczel construction: in any cocomplete elementary topos $\mathcal{E}$ with NNO
832:and a Mahlo-style universe object, the internal $\mathbb{V}$-structure (the
833:``cumulative hierarchy'' inside $\mathcal{E}$) gives a model of IZF.
836:The internal hierarchy $V_{\mathcal{E}}$ in a cocomplete topos with universe object
841:Collection, Full Separation, $\in$-Induction) to a property of $\mathcal{E}$ that holds
846:A FOLDS signature $\mathbf{L}$ corresponds to a discrete Conduch\'e fibration over
847:$\mathbf{L}^{\mathrm{op}}$. Models of $\mathbf{L}$ are categories of elements/sections of
852:The category $\mathrm{Mod}(\mathbf{L})$ of $\mathbf{L}$-structures and homomorphisms is
853:the slice $\mathrm{Set}/\mathbf{L}^{\mathrm{op}}$ when $\mathbf{L}$ is direct (with
858:\subsection{HoTT in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
862:Every Grothendieck $(\infty,1)$-topos models HoTT with univalent universes.
866:of MLTT in any presentable $(\infty,1)$-topos $\mathcal{X}$, then use
874:\begin{tikzcd}[column sep=large, row sep=large]
885:$(\infty,1)$-topos completion.
892:\begin{tabular}{|l|l|l|}
896:ETCS & ZFC $-$ Replacement & McLarty 2004 \\
900:CZF & MLTT $+$ universes & Aczel 1978 \\
901:CZF $+$ Mahlo & ZFC & Rathjen \\
902:HoTT (with UA) & ZFC $+$ inaccessibles & Shulman 2019 \\
922:A structural principle $P$ \emph{lies on the far side of the univalence boundary} if
923:$P$ holds in HoTT~+~UA but not in HoTT alone (i.e.\ in MLTT plus the assumption that
925:the \emph{near side} if it holds in HoTT without UA. We say $P$ \emph{straddles} the
936:$\mathrm{UA}\Rightarrow \mathrm{SIP}$: the standard structure-identity proof (HoTT
939:$\mathrm{SIP}\Rightarrow \mathrm{UA}$: instantiate SIP at the trivial signature
946:The principle ``$M\simeq_F N \Rightarrow M=_{\mathrm{Str}(\mathbf{L})}N$'' for arbitrary
947:FOLDS signatures $\mathbf{L}$ is equivalent to univalence (over MLTT with FE and PE).
950:$\mathrm{UA}\Rightarrow$ statement: this is \cref{thm:up}.
951:Statement $\Rightarrow \mathrm{UA}$: take $\mathbf{L}$ to be the signature with one kind
960:The existence of an NNO in HoTT (as the inductive type $\mathbb{N}$) does not require UA.
963:$\mathbb{N}$ is generated by the constructors $0:\mathbb{N}$ and $s:\mathbb{N}\to
964:\mathbb{N}$ together with the universal property given by the recursor; this is the
974:$\mathrm{UA}\Rightarrow \mathrm{FE}$: Voevodsky's proof.
975:$\mathrm{FE}\not\Rightarrow \mathrm{UA}$: the simplicial set model satisfies FE but
993:\begin{tabular}{c|cc}
1009:Given an arbitrary structural principle $P$, how can one test whether $P$ lies on the
1014:A principle $P$ lies on the far side of the univalence boundary if and only if $P$
1036:\item Equivalence of $\Pi$-types respecting equivalence of arguments (a partial
1056:\[
1059:\]
1064:at the level of the entire categorical universe. Tools needed: SIP for $\infty$-toposes,
1065:internal $\infty$-Yoneda (Riehl--Shulman directed type theory).
1072:$n$-level FOLDS (Szumi\l{}o 2019), and proving \cref{thm:up} formally for $n\le 2$
1073:(equivalence of FOLDS-equivalence and HoTT-identification at $n=0,1,2$).
1087:\item Extensionality $\leftrightarrow$ FE + PE.
1088:\item Pairing/Union $\leftrightarrow$ Sigma/Coproduct.
1089:\item Powerset $\leftrightarrow$ $A\to\mathrm{hProp}$ (with propositional resizing).
1090:\item Collection $\leftrightarrow$ Mahlo universe axiom.
1091:\item $\in$-Induction $\leftrightarrow$ accessibility predicate.
1092:\item Full Separation $\leftrightarrow$ subtype formation under propositional resizing.
1108:\item \textbf{0-categorical vs higher}: ETCS (1-categorical) vs HoTT ($\infty$-categorical).
1144:In ZFC/IZF, a monoid is a 4-tuple $(M, \cdot, e, \text{laws})$ where $M$ is a set, $\cdot:
1145:M\times M\to M$, $e\in M$, and the associativity and unit laws hold. The encoding of the
1147:underlying $\in$-tree --- a notion that depends on the choice of pair encoding. Monoid
1148:isomorphism is a derived notion: a bijection $\phi: M\to N$ commuting with operations.
1149:Junk theorems (e.g.\ ``the underlying set of $\mathbb{Z}$ contains the empty set as an
1154:In ETCS, a monoid is an object $M$ together with morphisms $\cdot: M\times M\to M$,
1155:$e: 1\to M$, and the equational axioms expressed using composition and the universal
1156:property of products. There is no encoding choice for $\cdot$ or $e$. Two monoids are
1158:The category $\mathrm{Mon}(\mathrm{ETCS})$ of monoids in ETCS is well-defined, and is the
1165:\item Kind $M$ (elements).
1166:\item Relation $E(x,y)$ (equality, parallel arrows from triangulation).
1167:\item Relation $P(x,y,z)$ (multiplication: $z = x\cdot y$).
1168:\item Relation $U(x)$ (unit: $x = e$).
1173:\[
1174:\begin{aligned}
1179:\]
1180:\item Left unit: $\forall e, x, ex: M.\, U(e) \wedge P(e,x,ex) \Rightarrow E(ex, x)$.
1183:A FOLDS-equivalence between two monoids $M, N$ is a span via very surjective
1185:invariance theorem guarantees: any FOLDS sentence holding in $M$ also holds in $N$.
1186:There is no way to express ``$M$ is the monoid whose elements are von Neumann ordinals
1187:$\le 5$'' in FOLDS, since this is non-isomorphism-invariant.
1192:\[
1195:\]
1201:For two monoids $M, N: \mathrm{Monoid}$:
1202:\[
1204:\]
1205:where $\mathrm{MonoidIso}(M,N)$ is the type of monoid isomorphisms.
1208:By Sigma-induction on $M, N$ and SIP for each component: the sets are identified by UA,
1216:\begin{tabular}{|l|l|l|l|}
1246:formalisation of $\mathsf{ZFSet}$ inside Lean).
1249:theory of $(\infty,1)$-categories).
1277:$\infty$; FOLDS-Szumi\l{}o goes to arbitrary $n$; ETCS stops at $1$.
1364:\emph{All $(\infty,1)$-toposes have strict univalent universes},
1414:\emph{A type theory for synthetic $\infty$-categories},
1421:See also: \emph{$n$-FOLDS and Reedy fibrant diagrams},

exec
/usr/local/bin/zsh -lc 'tmpdir=$(mktemp -d /tmp/etcs-izf-folds.XXXXXX) && cd papers/latex && latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir="$tmpdir" etcs-izf-folds.tex; status=$?; echo "TMPDIR=$tmpdir"; exit $status' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 1675ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./etcs-izf-folds.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./etcs-izf-folds.out) (./etcs-izf-folds.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(./etcs-izf-folds.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/upd
map/pdftex.map}] [2]) [3]

LaTeX Warning: Citation `Awodey2014' on page 4 undefined on input line 136.


LaTeX Warning: Citation `McLarty2004' on page 4 undefined on input line 136.

[4{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]

LaTeX Warning: Reference `sec:boundary' on page 1 undefined on input line 173.


LaTeX Warning: Reference `sec:hott' on page 1 undefined on input line 194.


LaTeX Warning: Reference `thm:fefar' on page 1 undefined on input line 194.


LaTeX Warning: Reference `sec:etcs' on page 1 undefined on input line 198.


LaTeX Warning: Reference `sec:izf' on page 1 undefined on input line 201.


LaTeX Warning: Reference `sec:folds' on page 1 undefined on input line 203.


LaTeX Warning: Reference `sec:hott' on page 1 undefined on input line 205.


LaTeX Warning: Reference `sec:models' on page 1 undefined on input line 207.


LaTeX Warning: Reference `sec:boundary' on page 1 undefined on input line 209.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 210.


LaTeX Warning: Reference `sec:conclusion' on page 1 undefined on input line 211
.


LaTeX Warning: Citation `Lawvere1964' on page 5 undefined on input line 220.


LaTeX Warning: Citation `LawvereRosebrugh2003' on page 5 undefined on input lin
e 220.


LaTeX Warning: Citation `McLarty2004' on page 5 undefined on input line 221.

[5]

LaTeX Warning: Citation `McLarty2004' on page 6 undefined on input line 292.


LaTeX Warning: Reference `sec:models' on page 1 undefined on input line 293.

[6]

LaTeX Warning: Reference `def:etcsadd' on page 1 undefined on input line 331.


LaTeX Warning: Reference `sec:boundary' on page 1 undefined on input line 360.


LaTeX Warning: Citation `Awodey2014' on page 7 undefined on input line 364.

[7]

LaTeX Warning: Citation `StanfordIZFCZF' on page 8 undefined on input line 379.



LaTeX Warning: Citation `Friedman1973' on page 8 undefined on input line 422.

[8]

LaTeX Warning: Citation `Shulman2019' on page 9 undefined on input line 460.


LaTeX Warning: Citation `HoTTBook' on page 9 undefined on input line 476.

[9]

LaTeX Warning: Citation `Aczel1978' on page 10 undefined on input line 502.


LaTeX Warning: Citation `Aczel1978' on page 10 undefined on input line 510.


LaTeX Warning: Citation `Makkai1995' on page 10 undefined on input line 525.

[10]

LaTeX Warning: Citation `Makkai1995' on page 11 undefined on input line 566.


LaTeX Warning: Citation `Makkai1995' on page 11 undefined on input line 588.


LaTeX Warning: Citation `Makkai1995' on page 11 undefined on input line 602.


LaTeX Warning: Citation `Palmgren2016' on page 11 undefined on input line 615.

[11]

LaTeX Warning: Citation `Palmgren2016' on page 12 undefined on input line 619.


LaTeX Warning: Reference `thm:invariance' on page 1 undefined on input line 665
.


LaTeX Warning: Reference `prop:skeleton-not-folds' on page 1 undefined on input
 line 671.

[12]

LaTeX Warning: Citation `Szumilo2019' on page 13 undefined on input line 690.


LaTeX Warning: Citation `HoTTBook' on page 13 undefined on input line 698.


LaTeX Warning: Citation `ANST2019' on page 13 undefined on input line 730.

[13]

LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 749.


LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 751.

[14]

LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 810.

[15]

LaTeX Warning: Citation `Makkai1995' on page 16 undefined on input line 850.


LaTeX Warning: Citation `Shulman2019' on page 16 undefined on input line 860.


LaTeX Warning: Citation `Shulman2019' on page 16 undefined on input line 912.

[16]

LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 950.

[17]

LaTeX Warning: Reference `thm:foldsneedsua' on page 1 undefined on input line 1
021.


LaTeX Warning: Reference `thm:sipneedsua' on page 1 undefined on input line 102
1.


LaTeX Warning: Citation `ANST2019' on page 18 undefined on input line 1025.


LaTeX Warning: Reference `thm:sipneedsua' on page 1 undefined on input line 103
2.


LaTeX Warning: Reference `thm:foldsneedsua' on page 1 undefined on input line 1
033.

[18]

LaTeX Warning: Reference `thm:up' on page 1 undefined on input line 1072.

[19] [20] [21] [22] [23] [24] [25]
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb
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
ve/2026/texmf-dist/fonts/type1/public/cm-super/sfti1200.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/stmaryrd/stmary10.pfb>
Output written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf (25 pag
es, 370861 bytes).
Transcript written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log.
Latexmk: Getting log file '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log'
Latexmk: Examining '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.fls'
Latexmk: Examining '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux
  /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.out

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/etcs-izf-folds.M2sthI"  "etcs-izf-folds.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./etcs-izf-folds.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.out)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.toc [1{/usr/local/texlive/20
26/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texliv
e/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}] [5] [6] [7]
[8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21] [22]
[23] [24] [25] (/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux) )</usr/l
ocal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/lo
cal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/loc
al/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/loca
l/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/
texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/te
xlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texl
ive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texliv
e/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/cm-super/sfti1200.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/stmaryrd/stmary10.pfb>
Output written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf (25 pag
es, 373555 bytes).
Transcript written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log.
Latexmk: Getting log file '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log'
Latexmk: Examining '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.fls'
Latexmk: Examining '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log'
Latexmk: Log file says output to '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/etcs-izf-folds.M2sthI"  "etcs-izf-folds.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./etcs-izf-folds.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/stmaryrd.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.out)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.toc [1{/usr/local/texlive/20
26/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2]) [3] [4{/usr/local/texliv
e/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}] [5] [6] [7]
[8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21] [22]
[23] [24] [25] (/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux) )</usr/l
ocal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/lo
cal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/loc
al/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbxti10.pfb></usr/loca
l/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local
/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/
texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/te
xlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texl
ive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texliv
e/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmtt10.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/symbols/msam10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/cm-super/sfrm1200.pfb></usr/local/texlive/2026/t
exmf-dist/fonts/type1/public/cm-super/sfti1200.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/stmaryrd/stmary10.pfb>
Output written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf (25 pag
es, 373555 bytes).
Transcript written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log.
Latexmk: Getting log file '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log'
Latexmk: Examining '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.fls'
Latexmk: Examining '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log'
Latexmk: Log file says output to '/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf'
Latexmk: All targets (/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf) are up-to-date

zsh:1: read-only variable: status

codex
The fresh build completed successfully after the normal multiple LaTeX passes; the wrapper exited nonzero only because I accidentally used zsh’s readonly `status` variable name after `latexmk` finished. I’m parsing the generated log directly now for box/reference/package diagnostics.
exec
/usr/local/bin/zsh -lc 'rg -n "(LaTeX Warning|Package .* Warning|Overfull|Underfull|Undefined|Citation|Reference|Error|Emergency stop|Missing|multiply-defined|rerunfilecheck|Font Warning|pdfTeX warning)" /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
611:(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty
612:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
617:Package uniquecounter Info: New unique counter `rerunfilecheck' on input line 2
777:Package rerunfilecheck Info: File `etcs-izf-folds.out' has not changed.
778:(rerunfilecheck)             Checksum: 8DF3F1FF9F91D1A610C232C3C6465E85;13232.

exec
/usr/local/bin/zsh -lc 'tail -n 80 /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
* \mag=1000
* \@twocolumnfalse
* \@twosidefalse
* \@mparswitchfalse
* \@reversemarginfalse
* (1in=72.27pt=25.4mm, 1cm=28.453pt)

LaTeX Font Info:    Trying to load font information for U+msa on input line 72.

(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd
File: umsa.fd 2013/01/14 v3.01 AMS symbols A
)
LaTeX Font Info:    Trying to load font information for U+msb on input line 72.


(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd
File: umsb.fd 2013/01/14 v3.01 AMS symbols B
)
LaTeX Font Info:    Trying to load font information for U+stmry on input line 7
2.

(/usr/local/texlive/2026/texmf-dist/tex/latex/stmaryrd/Ustmry.fd)
(/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.toc [1

{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}] [2])
\tf@toc=\write5
\openout5 = `etcs-izf-folds.toc'.

 [3] [4{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts
1.enc}] [5] [6] [7]
[8] [9] [10] [11] [12] [13] [14] [15] [16] [17] [18] [19] [20] [21] [22]
[23] [24] [25] (/private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.aux)
 ***********
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
 ***********
Package rerunfilecheck Info: File `etcs-izf-folds.out' has not changed.
(rerunfilecheck)             Checksum: 8DF3F1FF9F91D1A610C232C3C6465E85;13232.
 ) 
Here is how much of TeX's memory you used:
 24631 strings out of 467525
 471197 string characters out of 5418982
 877518 words of memory out of 5000000
 52990 multiletter control sequences out of 15000+600000
 646746 words of font info for 111 fonts, out of 8000000 for 9000
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
ve/2026/texmf-dist/fonts/type1/public/cm-super/sfti1200.pfb></usr/local/texlive
/2026/texmf-dist/fonts/type1/public/stmaryrd/stmary10.pfb>
Output written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf (25 pag
es, 373555 bytes).
PDF statistics:
 742 PDF objects out of 1000 (max. 8388607)
 658 compressed objects within 7 object streams
 167 named destinations out of 1000 (max. 500000)
 541 words of extra memory for PDF output out of 10000 (max. 10000000)


exec
/usr/local/bin/zsh -lc 'rg -n "Output written|Warning|Overfull|Underfull|Undefined|Fatal|Emergency|error" /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
4: file:line:error style messages enabled.
517:Package: infwarerr 2019/12/03 v1.5 Providing info/warning/error messages (HO)
813:Output written on /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.pdf (25 pag

codex
The compiler log is clean: no undefined references/citations after reruns, no missing packages, and no overfull/underfull boxes. I’m doing one source-level pass now for styling/spacing inconsistencies that TeX will not warn about.
exec
/usr/local/bin/zsh -lc 'command -v chktex || true; command -v lacheck || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex
/Library/TeX/texbin/lacheck

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\begin\\{center\\}' -e '\\\\begin\\{tabular\\}' -e '\\\\hline' -e '\\|l\\|' -e '---|--' -e '\\\\quad|\\\\;' -e '  +' -e '\\"'$-AC|ETCS-AC|BZ'"\\+R|ZF \\+ AC|2019/2021|\\"'$'"\\\\mathbf\\{[A-Z+]+\\}' papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
43:  \ifnum\value{page}=1
44:    \begin{tikzpicture}[remember picture, overlay]
45:      \node[
46:        rotate=90,
47:        anchor=south,
48:        font=\Large\sffamily\bfseries\color{grokgray},
49:        inner sep=0pt
50:      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
51:      {GrokRxiv:2026.05.etcs-izf-folds\quad
52:       [\,math.LO\,]\quad
53:       04 May 2026};
54:    \end{tikzpicture}
55:  \fi
76:Zermelo--Fraenkel set theory (IZF), and Makkai's First-Order Logic with Dependent Sorts
80:(McLarty 2004 for ETCS $\equiv$ Bounded Zermelo + Replacement; Friedman--Aczel for IZF;
92:foundations programme of Paper~VI of our prior series and complements Papers~II--V on
107:Classical Zermelo--Fraenkel set theory with Choice (ZFC), the de facto standard since the
108:1920s, supports this principle only by a sociological convention --- the convention to
109:prove only structural properties --- but the formalism itself permits non-structural
154:Categories) are structural; FOLDS is neither --- it is a logic, applicable to either
175:\begin{center}\small
176:\begin{tabular}{lcccc}
177:\hline
179:\hline
183:SIP & meta & --- & meta & \textbf{yes} \\
184:FOLDS-eq.\ $=$ id & --- & --- & meta & \textbf{yes} \\
187:Replacement & axiom & axiom & --- & thm (small) \\
188:Powerset & derived & axiom & --- & impred.\ $\Omega$ \\
189:\hline
220:\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and
243:\item[(A7)] (Two-valuedness; derivable from A5--A6 and A8) Any morphism $f:1\to \Omega$
253:Lawvere--Tierney. Adding A4 gives a \emph{topos with NNO}. Adding A5--A8 specialises to
289:$\mathbf{BZ}+\mathbf{R}$. Conversely, given a model $V$ of $\mathbf{BZ}+\mathbf{R}$,
291:A1--A8 directly. Composition produces models that are equivalent
310:$\mathbf{BZ+R}$ is irrelevant to the structural object so produced.
354:Removing A6 (choice) yields what is sometimes called \emph{ETCS-AC} or \emph{Topos+NNO+WP}
356:non-trivial models. McLarty's bi-interpretation theorem extends to: ETCS-AC is
357:bi-interpretable with $\mathbf{BZ}+\mathbf{R}$-AC. The constructive variant of ETCS
362:\subsection{Comparison with Awodey--Forssell categorical structuralism}
373:\section{IZF: Intuitionistic Zermelo--Fraenkel}
437:Aczel's CZF (Constructive Zermelo--Fraenkel) replaces Powerset by \emph{Subset Collection}
463:\begin{theorem}[Awodey--Warren propositions-as-types for IZF]
469:provided we add the propositional resizing axiom and the Mahlo--Universe axiom needed for
502:Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial
527:A \emph{FOLDS signature} is a small category $\mathbf{L}$ that is:
541:The signature $\mathbf{L}_{\mathrm{Cat}}$ has:
568:Two $\mathbf{L}$-structures $M, N$ are \emph{FOLDS-equivalent} (written $M\simeq_F N$)
569:iff there exists a span of $\mathbf{L}$-structure homomorphisms
579:For the signature $\mathbf{L}_{\mathrm{Cat}}$, $M\simeq_F N$ coincides with the
590:For every FOLDS signature $\mathbf{L}$ and every FOLDS sentence $\varphi$ in
591:$\mathcal{L}(\mathbf{L})$, and any two $\mathbf{L}$-structures $M,N$:
593:M\simeq_F N \;\Longrightarrow\; (M\models \varphi \Leftrightarrow N\models \varphi).
622:$\mathbf{L}$ to dependent type theories with explicit substitutions
625:\item Every FOLDS structure $M$ on $\mathbf{L}$ corresponds to a model of
635:Take $\mathbf{L} = \mathbf{L}_{\mathrm{Cat}}$ and let $F:M\to N$ be a functor. Construct
647:homomorphisms of $\mathbf{L}_{\mathrm{Cat}}$-structures. The inclusion of $M$ is
649:is very surjective iff $F$ is faithful.  Combining, $F$ is an equivalence iff there is a
650:zigzag of cograph cospans connecting $M$ and $N$ via very surjective maps --- i.e.\
660:Suppose $\varphi$ is a FOLDS sentence in $\mathbf{L}_{\mathrm{Cat}}$ that holds in
679:The signature $\mathbf{L}_{\mathrm{Cat}}$ for ordinary categories generalises naturally
682:\item $\mathbf{L}_{\mathrm{Bicat}}$: kinds $O$, $A$, $C$ (cells), with
684:identities, and 2-cell equality. FOLDS-equivalence on $\mathbf{L}_{\mathrm{Bicat}}$
686:\item $\mathbf{L}_{(\infty,1)}$: an infinite tower of kinds $A_n$ for $n$-cells, with
700:\mathsf{ua}: (A\simeq B) \;\xrightarrow{\sim}\; (A=_{\mathcal{U}} B)
713:\item \textbf{NNO} is a theorem in HoTT --- the inductive type $\mathbb{N}$ is built into
721:(see Paper~VI Theorems 10.3--10.4 of our series).
723:(this is the Univalence Principle of Ahrens--North--Shulman--Tsementzis 2019).
732:For any FOLDS signature $\mathbf{L}$ and any two $\mathbf{L}$-structures $M, N$ in HoTT,
734:(M\simeq_F N)\;\simeq\;(M=_{\mathrm{Str}(\mathbf{L})} N).
736:That is, FOLDS-equivalence is identification in the type of $\mathbf{L}$-structures.
739:The dependent-sort structure of $\mathbf{L}$ is encoded as a Reedy diagram of types in
744:The full proof requires careful management of the level structure of $\mathbf{L}$ and the
760:\begin{theorem}[Sets in HoTT form a model of ETCS-AC]
810:(\cref{thm:up}) is the statement that the type of $\mathbf{L}$-structures has the
822:\item $\mathrm{Set}_{\mathrm{ZF+AC}}$: classical sets in ZF + AC.
823:\item $\mathrm{Set}_{\mathrm{IZF+AC}}$: intuitionistic sets in IZF + AC (where AC implies
825:\item $\mathrm{FinSet}$: finite sets satisfy A1--A6, fail A4 (no NNO), so not ETCS.
831:Friedman--Aczel construction: in any cocomplete elementary topos $\mathcal{E}$ with NNO
835:\begin{theorem}[Friedman--Aczel--Joyal]
846:A FOLDS signature $\mathbf{L}$ corresponds to a discrete Conduch\'e fibration over
847:$\mathbf{L}^{\mathrm{op}}$. Models of $\mathbf{L}$ are categories of elements/sections of
852:The category $\mathrm{Mod}(\mathbf{L})$ of $\mathbf{L}$-structures and homomorphisms is
853:the slice $\mathrm{Set}/\mathbf{L}^{\mathrm{op}}$ when $\mathbf{L}$ is direct (with
867:Reedy fibrant replacement and the local universe construction (Lumsdaine--Warren) to
873:\begin{center}
891:\begin{center}
892:\begin{tabular}{|l|l|l|}
893:\hline
895:\hline
904:FOLDS (as logic) & --- & --- \\
905:\hline
947:FOLDS signatures $\mathbf{L}$ is equivalent to univalence (over MLTT with FE and PE).
951:Statement $\Rightarrow \mathrm{UA}$: take $\mathbf{L}$ to be the signature with one kind
992:\begin{center}
993:\begin{tabular}{c|cc}
995:\hline
1065:internal $\infty$-Yoneda (Riehl--Shulman directed type theory).
1096:\noindent Partial work: HoTT Book \S10.5; Awodey--Warren; Rathjen--Tupailo on CZF.
1137:To make the comparison concrete, we trace a single mathematical concept --- the theory
1138:of monoids --- through ETCS, IZF, FOLDS, and HoTT. This illustrates how
1147:underlying $\in$-tree --- a notion that depends on the choice of pair encoding. Monoid
1175:\forall a,b,c,xy,yz,abc,abc': M.\;
1177:& {} \wedge P(a,yz,abc') \;\Rightarrow\; E(abc, abc').
1203:(M =_{\mathrm{Monoid}} N) \;\simeq\; \mathrm{MonoidIso}(M, N)
1215:\begin{center}
1216:\begin{tabular}{|l|l|l|l|}
1217:\hline
1219:\hline
1225:\hline
1266:Friedman--Aczel, ANST) tie them together.
1294:HoTT---in particular HoTT~+~UA---synthesises all three. The Structure Identity Principle
1309:foundations programme of our prior series (Papers I--VI on HoTT and structural
1317:Proceedings of the National Academy of Sciences 52 (1964), 1506--1511.
1328:Philosophia Mathematica 12 (2004), 37--53.
1340:Journal of Symbolic Logic 38 (1973), 315--319.
1350:in Logic Colloquium '77, North-Holland (1978), 55--66.
1355:Philosophia Mathematica 22 (2014), 1--11.
1370:arXiv:2102.06275 (2019/2021).
1390:in The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland (1982), 165--216.
1395:Journal of Symbolic Logic 40 (1975), 347--382.
1415:Higher Structures 1 (2017), 147--224, arXiv:1705.07442.
1420:Journal of Homotopy and Related Structures 14 (2019), 345--378.

exec
/usr/local/bin/zsh -lc "perl -ne 'print \""'$.:$_" if length($_)>100'"' papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
324:\item $+ \circ \langle 0_{\mathbb{N}}, \mathrm{id}_{\mathbb{N}}\rangle = \mathrm{id}_{\mathbb{N}}$ (left zero), and

exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/etcs-izf-folds.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/etcs-izf-folds.tex", line 316: missing `\@' before `.' in "NNO."
"papers/latex/etcs-izf-folds.tex", line 357: missing `\@' before `.' in "AC."
"papers/latex/etcs-izf-folds.tex", line 359: missing `\@' before `.' in "IZF."
"papers/latex/etcs-izf-folds.tex", line 433: missing `\@' before `.' in "ZF."
"papers/latex/etcs-izf-folds.tex", line 474: missing `\@' before `.' in "TT."
"papers/latex/etcs-izf-folds.tex", line 740: missing `\@' before `.' in "TT."
"papers/latex/etcs-izf-folds.tex", line 768: missing `\@' before `.' in "NNO."
"papers/latex/etcs-izf-folds.tex", line 809: missing `\@' before `.' in "TT."
"papers/latex/etcs-izf-folds.tex", line 809: missing `\@' before `.' in "TT."
"papers/latex/etcs-izf-folds.tex", line 819: missing `\@' before `.' in "AC."
"papers/latex/etcs-izf-folds.tex", line 925: missing `\@' before `.' in "UA."
"papers/latex/etcs-izf-folds.tex", line 987: missing `\@' before `.' in "EM."
"papers/latex/etcs-izf-folds.tex", line 1021: missing `\@' before `.' in "UA."
"papers/latex/etcs-izf-folds.tex", line 1030: missing `\@' before `.' in "TT."
"papers/latex/etcs-izf-folds.tex", line 1077: missing `\@' before `.' in "SIP."
"papers/latex/etcs-izf-folds.tex", line 1138: missing `\@' before `.' in "TT."
"papers/latex/etcs-izf-folds.tex", line 1245: missing `\@' before `.' in "EM."
"papers/latex/etcs-izf-folds.tex", line 1247: missing `\@' before `.' in "UA."
"papers/latex/etcs-izf-folds.tex", line 1296: missing `\@' before `.' in "IZF."

exec
/usr/local/bin/zsh -lc "sed -n '1,220p' /private/tmp/etcs-izf-folds.M2sthI/etcs-izf-folds.toc | nl -ba" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\contentsline {section}{\numberline {1}Introduction}{3}{section.1}%
     2	\contentsline {subsection}{\numberline {1.1}Why three foundations}{3}{subsection.1.1}%
     3	\contentsline {subsection}{\numberline {1.2}Structural vs material set theory}{4}{subsection.1.2}%
     4	\contentsline {subsection}{\numberline {1.3}The univalence boundary}{4}{subsection.1.3}%
     5	\contentsline {subsection}{\numberline {1.4}Outline}{5}{subsection.1.4}%
     6	\contentsline {section}{\numberline {2}ETCS: The Elementary Theory of the Category of Sets}{5}{section.2}%
     7	\contentsline {subsection}{\numberline {2.1}The eight axioms}{5}{subsection.2.1}%
     8	\contentsline {subsection}{\numberline {2.2}Elementary consequences}{6}{subsection.2.2}%
     9	\contentsline {subsection}{\numberline {2.3}Encoding-free arithmetic}{7}{subsection.2.3}%
    10	\contentsline {subsection}{\numberline {2.4}Worked example: arithmetic via the recursor}{7}{subsection.2.4}%
    11	\contentsline {subsection}{\numberline {2.5}ETCS without choice}{7}{subsection.2.5}%
    12	\contentsline {subsection}{\numberline {2.6}Comparison with Awodey--Forssell categorical structuralism}{8}{subsection.2.6}%
    13	\contentsline {section}{\numberline {3}IZF: Intuitionistic Zermelo--Fraenkel}{8}{section.3}%
    14	\contentsline {subsection}{\numberline {3.1}Axioms}{8}{subsection.3.1}%
    15	\contentsline {subsection}{\numberline {3.2}IZF and ZFC: strength and divergence}{9}{subsection.3.2}%
    16	\contentsline {subsection}{\numberline {3.3}IZF, realisability, and HoTT}{9}{subsection.3.3}%
    17	\contentsline {subsection}{\numberline {3.4}Diaconescu's theorem and IZF}{9}{subsection.3.4}%
    18	\contentsline {subsection}{\numberline {3.5}Aczel's CZF and predicativity}{10}{subsection.3.5}%
    19	\contentsline {section}{\numberline {4}FOLDS: First-Order Logic with Dependent Sorts}{10}{section.4}%
    20	\contentsline {subsection}{\numberline {4.1}Dependent signatures}{10}{subsection.4.1}%
    21	\contentsline {subsection}{\numberline {4.2}FOLDS-equivalence}{11}{subsection.4.2}%
    22	\contentsline {subsection}{\numberline {4.3}Makkai's Invariance Theorem}{11}{subsection.4.3}%
    23	\contentsline {subsection}{\numberline {4.4}FOLDS as a fragment of dependent type theory}{12}{subsection.4.4}%
    24	\contentsline {subsection}{\numberline {4.5}Worked FOLDS proofs}{12}{subsection.4.5}%
    25	\contentsline {subsection}{\numberline {4.6}Higher signatures: bicategories and $\infty $-categories}{13}{subsection.4.6}%
    26	\contentsline {section}{\numberline {5}HoTT: The unifying frame}{13}{section.5}%
    27	\contentsline {subsection}{\numberline {5.1}Univalence as the equivalence-invariance axiom}{13}{subsection.5.1}%
    28	\contentsline {subsection}{\numberline {5.2}Which structural principles become theorems}{13}{subsection.5.2}%
    29	\contentsline {subsection}{\numberline {5.3}The Univalence Principle (ANST 2019)}{14}{subsection.5.3}%
    30	\contentsline {subsection}{\numberline {5.4}Internalising ETCS in HoTT}{14}{subsection.5.4}%
    31	\contentsline {subsection}{\numberline {5.5}Internalising IZF in HoTT}{14}{subsection.5.5}%
    32	\contentsline {subsection}{\numberline {5.6}Internalising FOLDS in HoTT via the Univalence Principle}{15}{subsection.5.6}%
    33	\contentsline {section}{\numberline {6}Models}{15}{section.6}%
    34	\contentsline {subsection}{\numberline {6.1}ETCS in toposes}{15}{subsection.6.1}%
    35	\contentsline {subsection}{\numberline {6.2}IZF and topos-valued models}{15}{subsection.6.2}%
    36	\contentsline {subsection}{\numberline {6.3}FOLDS in fibrations}{16}{subsection.6.3}%
    37	\contentsline {subsection}{\numberline {6.4}HoTT in $(\infty ,1)$-toposes}{16}{subsection.6.4}%
    38	\contentsline {subsection}{\numberline {6.5}The square of interpretations}{16}{subsection.6.5}%
    39	\contentsline {subsection}{\numberline {6.6}Reverse-mathematical strengths}{16}{subsection.6.6}%
    40	\contentsline {section}{\numberline {7}The univalence boundary}{17}{section.7}%
    41	\contentsline {subsection}{\numberline {7.1}Definition}{17}{subsection.7.1}%
    42	\contentsline {subsection}{\numberline {7.2}Far-side principles}{17}{subsection.7.2}%
    43	\contentsline {subsection}{\numberline {7.3}Near-side principles}{17}{subsection.7.3}%
    44	\contentsline {subsection}{\numberline {7.4}Straddlers}{18}{subsection.7.4}%
    45	\contentsline {subsection}{\numberline {7.5}The boundary as a square}{18}{subsection.7.5}%
    46	\contentsline {subsection}{\numberline {7.6}Diagnostic principles}{18}{subsection.7.6}%
    47	\contentsline {subsection}{\numberline {7.7}What is on the boundary?}{18}{subsection.7.7}%
    48	\contentsline {section}{\numberline {8}Open problems}{19}{section.8}%
    49	\contentsline {subsection}{\numberline {8.1}Problem 1: Contractibility of the type of ETCS structures}{19}{subsection.8.1}%
    50	\contentsline {subsection}{\numberline {8.2}Problem 2: Cubical Agda formalisation of FOLDS}{19}{subsection.8.2}%
    51	\contentsline {subsection}{\numberline {8.3}Problem 3: Identifying IZF axioms with HoTT principles}{19}{subsection.8.3}%
    52	\contentsline {section}{\numberline {9}Discussion}{20}{section.9}%
    53	\contentsline {subsection}{\numberline {9.1}What does ``foundation'' mean today?}{20}{subsection.9.1}%
    54	\contentsline {subsection}{\numberline {9.2}Practical recommendations}{20}{subsection.9.2}%
    55	\contentsline {subsection}{\numberline {9.3}Limitations}{20}{subsection.9.3}%
    56	\contentsline {section}{\numberline {10}Worked case study: monoid theory across the four foundations}{20}{section.10}%
    57	\contentsline {subsection}{\numberline {10.1}Monoids in ZFC and IZF}{21}{subsection.10.1}%
    58	\contentsline {subsection}{\numberline {10.2}Monoids in ETCS}{21}{subsection.10.2}%
    59	\contentsline {subsection}{\numberline {10.3}Monoids in FOLDS}{21}{subsection.10.3}%
    60	\contentsline {subsection}{\numberline {10.4}Monoids in HoTT}{22}{subsection.10.4}%
    61	\contentsline {subsection}{\numberline {10.5}Comparison}{22}{subsection.10.5}%
    62	\contentsline {section}{\numberline {11}Practical foundational choice}{22}{section.11}%
    63	\contentsline {subsection}{\numberline {11.1}Which foundation for which task?}{22}{subsection.11.1}%
    64	\contentsline {subsection}{\numberline {11.2}Foundational consensus or pluralism?}{23}{subsection.11.2}%
    65	\contentsline {subsection}{\numberline {11.3}Open foundational debates}{23}{subsection.11.3}%
    66	\contentsline {section}{\numberline {12}Conclusion}{23}{section.12}%

exec
/usr/local/bin/zsh -lc 'chktex -q -n 1 -n 8 -n 12 -n 13 -n 16 -n 17 -n 22 -n 24 -n 26 -n 30 -n 36 -n 46 papers/latex/etcs-izf-folds.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 2 in papers/latex/etcs-izf-folds.tex line 136: Non-breaking space (`~') should have been used.
Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the  
                ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 136: Non-breaking space (`~') should have been used.
Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the  
                                           ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 177: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 179: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 189: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 2 in papers/latex/etcs-izf-folds.tex line 220: Non-breaking space (`~') should have been used.
\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 220: Non-breaking space (`~') should have been used.
\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and  
                                                   ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 221: Non-breaking space (`~') should have been used.
McLarty \cite{McLarty2004}.  
       ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 292: Non-breaking space (`~') should have been used.
in the appropriate 2-categorical sense. Full proof in McLarty \cite{McLarty2004}; we  
                                                             ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 364: Non-breaking space (`~') should have been used.
Awodey \cite{Awodey2014} introduces a refined notion of \emph{structural foundation}: a  
      ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 379: Non-breaking space (`~') should have been used.
\cite{StanfordIZFCZF}) is the system over intuitionistic first-order logic with equality  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 422: Non-breaking space (`~') should have been used.
\begin{theorem}[Friedman \cite{Friedman1973}]  
                        ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 460: Non-breaking space (`~') should have been used.
\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 476: Non-breaking space (`~') should have been used.
the Mahlo-style closure on the universe. See HoTT Book \cite{HoTTBook} \S10.5 for details.  
                                                      ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 502: Non-breaking space (`~') should have been used.
Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial  
                                 ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 510: Non-breaking space (`~') should have been used.
in Martin-L\"of type theory (the sets-in-types interpretation \cite{Aczel1978}), and  
                                                             ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 525: Non-breaking space (`~') should have been used.
\begin{definition}[FOLDS signature, after Makkai \cite{Makkai1995}]  
                                                ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 566: Non-breaking space (`~') should have been used.
\begin{definition}[FOLDS-equivalence, Makkai \cite{Makkai1995}]  
                                            ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 588: Non-breaking space (`~') should have been used.
\begin{theorem}[Makkai's Invariance Theorem \cite{Makkai1995}]  
                                           ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 602: Non-breaking space (`~') should have been used.
\cite[Theorem 4.4]{Makkai1995}; an alternative homotopy-theoretic proof appears in  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 615: Non-breaking space (`~') should have been used.
Palmgren \cite{Palmgren2016} showed FOLDS embeds into intensional Martin-L\"of type  
        ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 619: Non-breaking space (`~') should have been used.
\begin{theorem}[Palmgren \cite{Palmgren2016}]  
                        ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 690: Non-breaking space (`~') should have been used.
Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose  
          ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 698: Non-breaking space (`~') should have been used.
Univalence (Voevodsky 2010, HoTT Book \cite{HoTTBook} \S2.10) is the axiom:  
                                     ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 730: Non-breaking space (`~') should have been used.
\begin{theorem}[Univalence Principle, ANST \cite{ANST2019}]  
                                          ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 850: Non-breaking space (`~') should have been used.
\begin{theorem}[Makkai \cite{Makkai1995}]  
                      ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 860: Non-breaking space (`~') should have been used.
\begin{theorem}[Shulman \cite{Shulman2019}]  
                       ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 875: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                        ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 875: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                                       ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 875: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                                                    ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 875: Use either `` or '' as an alternative to `"'.
\mathrm{ETCS} \arrow[r, "\text{McLarty}"] \arrow[d, "\text{Joyal}"'] &  
                                                                 ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 876: Use either `` or '' as an alternative to `"'.
\mathrm{BZ}+\mathrm{R} \arrow[d, "\text{Friedman}"] \\  
                                 ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 876: Use either `` or '' as an alternative to `"'.
\mathrm{BZ}+\mathrm{R} \arrow[d, "\text{Friedman}"] \\  
                                                 ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 877: Use either `` or '' as an alternative to `"'.
\mathrm{Topos+NNO+AC} \arrow[r, "\text{int.\ lang.}"'] &  
                                ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 877: Use either `` or '' as an alternative to `"'.
\mathrm{Topos+NNO+AC} \arrow[r, "\text{int.\ lang.}"'] &  
                                                   ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 878: Use either `` or '' as an alternative to `"'.
\mathrm{IZF}+\mathrm{AC} \arrow[r, leftrightarrow, "\text{Diaconescu}"]&\mathrm{ZFC}  
                                                   ^
Warning 18 in papers/latex/etcs-izf-folds.tex line 878: Use either `` or '' as an alternative to `"'.
\mathrm{IZF}+\mathrm{AC} \arrow[r, leftrightarrow, "\text{Diaconescu}"]&\mathrm{ZFC}  
                                                                     ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 892: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{|l|l|l|}  
^^^^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 893: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 895: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 905: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 2 in papers/latex/etcs-izf-folds.tex line 912: Non-breaking space (`~') should have been used.
inaccessibles (Shulman \cite{Shulman2019}), since each universe behaves as a Grothendieck  
                      ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 993: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{c|cc}  
^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 995: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 2 in papers/latex/etcs-izf-folds.tex line 1025: Non-breaking space (`~') should have been used.
formalisation of the schema, deferred to \cite{ANST2019}.  
                                        ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1216: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{|l|l|l|l|}  
^^^^^^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1217: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1219: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1225: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^

exec
/usr/local/bin/zsh -lc 'tmpdir=$(mktemp -d /tmp/etcs-izf-folds-verify.XXXXXX); cd papers/latex; latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir="$tmpdir" etcs-izf-folds.tex >/tmp/etcs-izf-folds-verify.out 2>&1; rc=$?; echo "rc=$rc"; echo "tmpdir=$tmpdir"; rg -n "(LaTeX Warning|Package .* Warning|Overfull|Underfull|Undefined|Citation|Reference|Error|Emergency stop|Missing|multiply-defined|Font Warning|pdfTeX warning)" "$tmpdir/etcs-izf-folds.log" || true; exit $rc' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 1749ms:
rc=0
tmpdir=/tmp/etcs-izf-folds-verify.GLoZlY

codex
Checked with fresh `latexmk` into `/tmp`: compile exits `0`; final log has no LaTeX/package warnings, undefined refs/citations, missing packages, or overfull/underfull boxes.

Issues found:

1. Lines 136, 220, 221, 292, 364, 379, 422, 460, 476, 502, 510, 525, 566, 588, 602, 615, 619, 690, 698, 730, 850, 860, 912, 1025: citations can break away from the preceding name/text. Use non-breaking spaces, e.g. `Awodey~\cite{Awodey2014}`, `HoTT Book~\cite{HoTTBook}`, `deferred to~\cite{ANST2019}`.

2. Lines 316, 357, 359, 433, 474, 740, 768, 809, 819, 925, 987, 1021, 1030, 1077, 1138, 1245, 1247, 1296: sentence-ending acronyms get abbreviation spacing. Use `\@.` after the acronym, e.g. `NNO\@. Given`, `IZF\@. We`, `UA\@. The`.

3. Lines 176, 892, 993, 1216: table styling is inconsistent: one table uses no vertical rules, two use full vertical rules, one uses a single internal rule. Pick one convention. Recommended fix: add `\usepackage{booktabs}` and replace `\hline` with `\toprule`, `\midrule`, `\bottomrule`; remove vertical bars from tabular specs.

4. Lines 310, 354, 356-357, 822-823, 877, 896, 900-902: compound theory names are inconsistently typeset. Examples: `\mathbf{BZ+R}` vs `\mathbf{BZ}+\mathbf{R}`, `ETCS-AC`, `\mathrm{ZF+AC}`. Use a single style such as `\mathbf{BZ}+\mathbf{R}`, `(\mathbf{BZ}+\mathbf{R})-\mathbf{AC}`, `ETCS\(-\)AC`, `\mathrm{Set}_{\mathrm{ZF}+\mathrm{AC}}`.

5. Line 649: double intersentence source spacing in `faithful.  Combining`. Replace with one space: `faithful. Combining`.

6. Line 878: missing source-space before the final `&` in the `tikzcd` row: `"]&\mathrm{ZFC}`. Change to `"] & \mathrm{ZFC}` for consistent source formatting.

VERDICT: NEEDS_FIX
2026-05-04T23:40:20.823506Z ERROR codex_core::session: failed to record rollout items: thread 019df55a-dbdc-7340-92fb-550c08b45b21 not found
tokens used
101,828
Checked with fresh `latexmk` into `/tmp`: compile exits `0`; final log has no LaTeX/package warnings, undefined refs/citations, missing packages, or overfull/underfull boxes.

Issues found:

1. Lines 136, 220, 221, 292, 364, 379, 422, 460, 476, 502, 510, 525, 566, 588, 602, 615, 619, 690, 698, 730, 850, 860, 912, 1025: citations can break away from the preceding name/text. Use non-breaking spaces, e.g. `Awodey~\cite{Awodey2014}`, `HoTT Book~\cite{HoTTBook}`, `deferred to~\cite{ANST2019}`.

2. Lines 316, 357, 359, 433, 474, 740, 768, 809, 819, 925, 987, 1021, 1030, 1077, 1138, 1245, 1247, 1296: sentence-ending acronyms get abbreviation spacing. Use `\@.` after the acronym, e.g. `NNO\@. Given`, `IZF\@. We`, `UA\@. The`.

3. Lines 176, 892, 993, 1216: table styling is inconsistent: one table uses no vertical rules, two use full vertical rules, one uses a single internal rule. Pick one convention. Recommended fix: add `\usepackage{booktabs}` and replace `\hline` with `\toprule`, `\midrule`, `\bottomrule`; remove vertical bars from tabular specs.

4. Lines 310, 354, 356-357, 822-823, 877, 896, 900-902: compound theory names are inconsistently typeset. Examples: `\mathbf{BZ+R}` vs `\mathbf{BZ}+\mathbf{R}`, `ETCS-AC`, `\mathrm{ZF+AC}`. Use a single style such as `\mathbf{BZ}+\mathbf{R}`, `(\mathbf{BZ}+\mathbf{R})-\mathbf{AC}`, `ETCS\(-\)AC`, `\mathrm{Set}_{\mathrm{ZF}+\mathrm{AC}}`.

5. Line 649: double intersentence source spacing in `faithful.  Combining`. Replace with one space: `faithful. Combining`.

6. Line 878: missing source-space before the final `&` in the `tikzcd` row: `"]&\mathrm{ZFC}`. Change to `"] & \mathrm{ZFC}` for consistent source formatting.

VERDICT: NEEDS_FIX

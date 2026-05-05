---
reviewer: codex (OpenAI)
type: formatting
paper: etcs-izf-folds
round: 2
date: 2026-05-04T23:35:53Z
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
session id: 019df559-26e7-7273-ba7c-796775df53a0
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. Focus on whether the paper compiles cleanly without overfull or undefined-control errors. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll do this read-only: first inspect the paper and project layout, then run the available LaTeX build/check tools so the findings are grounded in actual compiler output.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
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
    23	\usepackage{everypage}
    24	\usepackage{xcolor}
    25	
    26	% Theorem environments
    27	\newtheorem{theorem}{Theorem}[section]
    28	\newtheorem{proposition}[theorem]{Proposition}
    29	\newtheorem{lemma}[theorem]{Lemma}
    30	\newtheorem{corollary}[theorem]{Corollary}
    31	\newtheorem{conjecture}[theorem]{Conjecture}
    32	\theoremstyle{definition}
    33	\newtheorem{definition}[theorem]{Definition}
    34	\newtheorem{example}[theorem]{Example}
    35	\theoremstyle{remark}
    36	\newtheorem{remark}[theorem]{Remark}
    37	
    38	% Provide \emergencystretch for line-breaking in long sentences
    39	\setlength{\emergencystretch}{2em}
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
   176	\begin{center}\small
   177	\begin{tabular}{lcccc}
   178	\hline
   179	\textbf{Principle} & ETCS & IZF & FOLDS & UA in HoTT? \\
   180	\hline
   181	NNO existence & axiom & thm & expr.\ & no \\
   182	Function ext. & thm & thm & axiom & implied by UA\(^{*}\) \\
   183	Prop.\ ext. & thm & thm & expr.\ & no \\
   184	SIP & meta & --- & meta & \textbf{yes} \\
   185	FOLDS-eq.\ $=$ id & --- & --- & meta & \textbf{yes} \\
   186	EM & axiom & reject & expr.\ & indep. \\
   187	Choice & AC & reject & expr.\ & indep.\ (PEM+AC) \\
   188	Replacement & axiom & axiom & --- & thm (small) \\
   189	Powerset & derived & axiom & --- & impred.\ $\Omega$ \\
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
reviews/coalgebraic-transcendentals-review-round-3.md
reviews/coalgebraic-transcendentals-review-round-2.md
reviews/etcs-izf-folds-review-round-1.md
reviews/infinity-nno-review.md
reviews/directed-univalence-review.md
reviews/directed-univalence-codex-review-round-2.md
reviews/etcs-izf-folds-codex-review-round-1.md
reviews/etcs-izf-folds-codex-review-round-2.md
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
papers/latex/cubical-hiit-cauchy.pdf
papers/latex/etcs-izf-folds.out
lean/langlands-analytic-number-theory/Zeta.lean
lean/directed-univalence/Directed.lean
lean/coalgebraic-transcendentals/Streams.lean
lean/etcs-izf-folds/ETCS.lean
lean/infinity-nno/NNO.lean
lean/cubical-hiit-cauchy/Reals.lean

codex
The file is standalone LaTeX with a local `.log` already present. I’m checking the whole source plus a fresh build log so stale artifacts do not hide current reference or box warnings.
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
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '621,1040p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
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
   678	\subsection{Higher signatures: bicategories and \texorpdfstring{$\infty$}{infinity}-categories}
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
   729	\subsection{The Univalence Principle (ANST 2019)}
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
   769	identity and composition, is an elementary topos with NNO. Adding propositional resizing and
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
   859	\subsection{HoTT in \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
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

exec
/usr/local/bin/zsh -lc 'which latexmk || true; which pdflatex || true; which chktex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk
/Library/TeX/texbin/pdflatex
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/etcs-izf-folds.tex | sed -n '1041,1500p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
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
  1173	\item Associativity:
  1174	\[
  1175	\begin{aligned}
  1176	\forall a,b,c,xy,yz,abc,abc': M.\;
  1177	& P(a,b,xy) \wedge P(xy,c,abc) \wedge P(b,c,yz) \\
  1178	& {} \wedge P(a,yz,abc') \;\Rightarrow\; E(abc, abc').
  1179	\end{aligned}
  1180	\]
  1181	\item Left unit: $\forall e, x, ex: M.\, U(e) \wedge P(e,x,ex) \Rightarrow E(ex, x)$.
  1182	\item Right unit: dual.
  1183	\end{itemize}
  1184	A FOLDS-equivalence between two monoids $M, N$ is a span via very surjective
  1185	homomorphisms, which here coincides with the usual monoid isomorphism. Makkai's
  1186	invariance theorem guarantees: any FOLDS sentence holding in $M$ also holds in $N$.
  1187	There is no way to express ``$M$ is the monoid whose elements are von Neumann ordinals
  1188	$\le 5$'' in FOLDS, since this is non-isomorphism-invariant.
  1189	
  1190	\subsection{Monoids in HoTT}
  1191	
  1192	In HoTT, a monoid is a Sigma-type:
  1193	\[
  1194	\mathrm{Monoid} := \Sigma_{M:\mathrm{Set}}\Sigma_{\cdot: M\to M\to M}\Sigma_{e:M}
  1195	\bigl(\mathrm{Assoc}(\cdot)\times \mathrm{LUnit}(\cdot,e)\times \mathrm{RUnit}(\cdot,e)\bigr).
  1196	\]
  1197	The components are: a set, a binary operation, an identity element, and proofs (mere
  1198	propositions) of the laws.
  1199	
  1200	\begin{theorem}[Structure Identity Principle for monoids]
  1201	\label{thm:sipmonoid}
  1202	For two monoids $M, N: \mathrm{Monoid}$:
  1203	\[
  1204	(M =_{\mathrm{Monoid}} N) \;\simeq\; \mathrm{MonoidIso}(M, N)
  1205	\]
  1206	where $\mathrm{MonoidIso}(M,N)$ is the type of monoid isomorphisms.
  1207	\end{theorem}
  1208	\begin{proof}[Sketch]
  1209	By Sigma-induction on $M, N$ and SIP for each component: the sets are identified by UA,
  1210	the operations and identity are transported, the laws are mere propositions and so
  1211	identified automatically. The full proof is a routine application of HoTT Book \S9.8.
  1212	\end{proof}
  1213	
  1214	\subsection{Comparison}
  1215	
  1216	\begin{center}
  1217	\begin{tabular}{|l|l|l|l|}
  1218	\hline
  1219	& \textbf{Equality} & \textbf{Iso} & \textbf{SIP-statement} \\
  1220	\hline
  1221	ZFC & encoding-dependent & derived & metatheorem (sociological) \\
  1222	IZF & encoding-dependent & derived & metatheorem \\
  1223	ETCS & up to unique iso & primitive & metatheorem (categorical) \\
  1224	FOLDS & up to FOLDS-eq & primitive & syntactic (invariance theorem) \\
  1225	HoTT+UA & SIP-statement & primitive & internal theorem \\
  1226	\hline
  1227	\end{tabular}
  1228	\end{center}
  1229	
  1230	The rightmost column is the key: only HoTT+UA makes the SIP an internal theorem, expressed
  1231	in the same language as the structures themselves. ETCS makes it a category-theoretic
  1232	metatheorem (true of every property of the category of sets). FOLDS makes it a
  1233	syntactic invariance theorem (true of every well-formed FOLDS sentence). ZFC and IZF
  1234	make it a sociological convention. Each escalation reduces the ``trust assumption'' needed.
  1235	
  1236	\section[Practical foundational choice]{Discussion (extended): practical foundational choice}
  1237	\label{sec:practical}
  1238	
  1239	\subsection{Which foundation for which task?}
  1240	
  1241	The foundational pluralism we have surveyed is not just a curiosity; it has practical
  1242	consequences for formalisation projects.
  1243	
  1244	\begin{itemize}
  1245	\item \textbf{Number theory and analysis}: ZFC variants are best, due to the deep classical
  1246	results requiring AC and EM. Lean/Mathlib uses ZFC (via the type-theoretic
  1247	formalisation of $\mathsf{ZFSet}$ inside Lean).
  1248	\item \textbf{Category theory and topos theory}: ETCS or HoTT+UA. ETCS is sufficient for
  1249	1-categorical structuralism; HoTT+UA is needed for higher-categorical structuralism (the
  1250	theory of $(\infty,1)$-categories).
  1251	\item \textbf{Synthetic differential geometry, synthetic homotopy theory}: HoTT, naturally,
  1252	since the synthetic methods rely on the type-theoretic semantics.
  1253	\item \textbf{Constructive analysis and computer-verified mathematics}: CZF or HoTT
  1254	without UA, where computational interpretation is crucial.
  1255	\item \textbf{Foundations of foundations} (model theory of foundations themselves): IZF
  1256	and topos theory provide the best general-purpose framework.
  1257	\item \textbf{Pedagogy}: ETCS is arguably the cleanest entry point, since it explains
  1258	``what set theory is really doing'' without the encoding noise.
  1259	\end{itemize}
  1260	
  1261	\subsection{Foundational consensus or pluralism?}
  1262	
  1263	A plausible reading of the present landscape is that no single foundation dominates;
  1264	each excels in a particular domain. This contrasts with the 20th century, where ZFC was
  1265	dominant. We propose to call the current situation \emph{principled pluralism}: each
  1266	foundation is correct for its target domain, and translation theorems (McLarty,
  1267	Friedman--Aczel, ANST) tie them together.
  1268	
  1269	\subsection{Open foundational debates}
  1270	
  1271	Several debates remain unresolved as of 2026:
  1272	\begin{itemize}
  1273	\item \emph{Predicativity vs impredicativity}: HoTT proper is predicative; IZF is
  1274	impredicative. The right level of impredicativity for a unified foundation is contested.
  1275	\item \emph{Constructivity vs classicality}: HoTT defaults to constructive but is
  1276	compatible with EM; IZF is constructive; ZFC is classical; FOLDS is logic-agnostic.
  1277	\item \emph{Higher coherence}: how high should the dimensional ladder go? HoTT goes to
  1278	$\infty$; FOLDS-Szumi\l{}o goes to arbitrary $n$; ETCS stops at $1$.
  1279	\item \emph{The role of universes}: HoTT has a Russellian hierarchy; ETCS has none
  1280	(the category of all sets is the universe); IZF has none (the proper class of all sets);
  1281	FOLDS has small categories of structures.
  1282	\end{itemize}
  1283	
  1284	\section{Conclusion}
  1285	\label{sec:conclusion}
  1286	
  1287	We have presented ETCS, IZF, and FOLDS as three orthogonal responses to the same
  1288	underlying problem: how to build a foundation in which only structurally relevant
  1289	assertions are formulable or provable. ETCS attacks the problem at the level of
  1290	\emph{ontology} (replace sets-with-membership by sets-with-functions). IZF attacks the
  1291	problem at the level of \emph{logic} (move to intuitionistic logic, where structural
  1292	properties are easier to certify). FOLDS attacks the problem at the level of
  1293	\emph{syntax} (build a logic in which only invariant predicates are expressible).
  1294	
  1295	HoTT---in particular HoTT~+~UA---synthesises all three. The Structure Identity Principle
  1296	recapitulates the structural ontology of ETCS at the level of types. Constructive HoTT
  1297	(without EM, without AC) shares the logical environment of IZF. The Univalence Principle
  1298	recapitulates the syntactic invariance of FOLDS as a metatheorem.
  1299	
  1300	The univalence boundary precisely separates: the principles that hold in MLTT alone
  1301	(the near side: NNO, induction, basic structural reasoning), and the principles requiring
  1302	univalence (the far side: SIP, FOLDS-equivalence-as-identity, the full equivalence
  1303	principle). Mapping out this boundary is, we suggest, one of the more illuminating
  1304	exercises in 2026 foundations.
  1305	
  1306	\section*{Acknowledgements}
  1307	
  1308	The author thanks colleagues at the YonedaAI Research Collective for discussions on
  1309	structuralism and on FOLDS-style invariance proofs. This paper continues the
  1310	foundations programme of our prior series (Papers I--VI on HoTT and structural
  1311	foundations), to which the reader is referred for the technical prerequisites.
  1312	
  1313	\begin{thebibliography}{99}
  1314	
  1315	\bibitem{Lawvere1964}
  1316	F.\ W.\ Lawvere,
  1317	\emph{An elementary theory of the category of sets},
  1318	Proceedings of the National Academy of Sciences 52 (1964), 1506--1511.
  1319	Reprinted with author's commentary, TAC Reprints 11 (2005).
  1320	
  1321	\bibitem{LawvereRosebrugh2003}
  1322	F.\ W.\ Lawvere and R.\ Rosebrugh,
  1323	\emph{Sets for Mathematics},
  1324	Cambridge University Press, 2003.
  1325	
  1326	\bibitem{McLarty2004}
  1327	C.\ McLarty,
  1328	\emph{Exploring categorical structuralism},
  1329	Philosophia Mathematica 12 (2004), 37--53.
  1330	
  1331	\bibitem{Makkai1995}
  1332	M.\ Makkai,
  1333	\emph{First-order logic with dependent sorts, with applications to category theory},
  1334	Preprint, McGill University, 1995.
  1335	Available at \url{https://www.math.mcgill.ca/makkai/folds/foldsinpdf/FOLDS.pdf}.
  1336	
  1337	\bibitem{Friedman1973}
  1338	H.\ Friedman,
  1339	\emph{The consistency of classical set theory relative to a set theory with intuitionistic
  1340	logic},
  1341	Journal of Symbolic Logic 38 (1973), 315--319.
  1342	
  1343	\bibitem{StanfordIZFCZF}
  1344	L.\ Crosilla,
  1345	\emph{Set theory: constructive and intuitionistic ZF},
  1346	Stanford Encyclopedia of Philosophy, Spring 2024 edition, ed.\ E.\ N.\ Zalta.
  1347	
  1348	\bibitem{Aczel1978}
  1349	P.\ Aczel,
  1350	\emph{The type theoretic interpretation of constructive set theory},
  1351	in Logic Colloquium '77, North-Holland (1978), 55--66.
  1352	
  1353	\bibitem{Awodey2014}
  1354	S.\ Awodey,
  1355	\emph{Structuralism, invariance, and univalence},
  1356	Philosophia Mathematica 22 (2014), 1--11.
  1357	
  1358	\bibitem{HoTTBook}
  1359	The Univalent Foundations Program,
  1360	\emph{Homotopy Type Theory: Univalent Foundations of Mathematics},
  1361	Institute for Advanced Study, 2013.
  1362	
  1363	\bibitem{Shulman2019}
  1364	M.\ Shulman,
  1365	\emph{All $(\infty,1)$-toposes have strict univalent universes},
  1366	arXiv:1904.07004 (2019).
  1367	
  1368	\bibitem{ANST2019}
  1369	B.\ Ahrens, P.\ R.\ North, M.\ Shulman, D.\ Tsementzis,
  1370	\emph{The Univalence Principle},
  1371	arXiv:2102.06275 (2019/2021).
  1372	
  1373	\bibitem{Palmgren2016}
  1374	E.\ Palmgren,
  1375	\emph{Categories with families and first-order logic with dependent sorts},
  1376	arXiv:1605.01586 (2016).
  1377	
  1378	\bibitem{Rasekh2018}
  1379	N.\ Rasekh,
  1380	\emph{Every elementary higher topos has a natural number object},
  1381	arXiv:1809.01734 (2018), TAC 37(13) 2021.
  1382	
  1383	\bibitem{Voevodsky2010}
  1384	V.\ Voevodsky,
  1385	\emph{Univalent foundations of mathematics},
  1386	preprint, IAS Princeton (2010).
  1387	
  1388	\bibitem{Hyland1982}
  1389	J.\ M.\ E.\ Hyland,
  1390	\emph{The effective topos},
  1391	in The L.\ E.\ J.\ Brouwer Centenary Symposium, North-Holland (1982), 165--216.
  1392	
  1393	\bibitem{MyhillCST}
  1394	J.\ Myhill,
  1395	\emph{Constructive set theory},
  1396	Journal of Symbolic Logic 40 (1975), 347--382.
  1397	
  1398	\bibitem{Joyal1984}
  1399	A.\ Joyal and I.\ Moerdijk,
  1400	\emph{Algebraic Set Theory},
  1401	LMS Lecture Note Series 220, Cambridge University Press (1995).
  1402	
  1403	\bibitem{Tsementzis2017}
  1404	D.\ Tsementzis,
  1405	\emph{First-order logic with isomorphism},
  1406	arXiv:1603.03092 (2016/2017).
  1407	
  1408	\bibitem{Awodey2009StructuralismInvariance}
  1409	S.\ Awodey,
  1410	\emph{From sets to types to categories to sets},
  1411	in Foundational Theories of Classical and Constructive Mathematics, Springer (2009).
  1412	
  1413	\bibitem{Riehl2017}
  1414	E.\ Riehl and M.\ Shulman,
  1415	\emph{A type theory for synthetic $\infty$-categories},
  1416	Higher Structures 1 (2017), 147--224, arXiv:1705.07442.
  1417	
  1418	\bibitem{Szumilo2019}
  1419	K.\ Szumi\l{}o,
  1420	\emph{Frames in cofibration categories},
  1421	Journal of Homotopy and Related Structures 14 (2019), 345--378.
  1422	See also: \emph{$n$-FOLDS and Reedy fibrant diagrams},
  1423	preprint, 2019.
  1424	
  1425	\end{thebibliography}
  1426	
  1427	\end{document}

exec
/usr/local/bin/zsh -lc 'latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error etcs-izf-folds.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex
 succeeded in 630ms:
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
 (./etcs-izf-folds.aux)
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
map/pdftex.map}] [2]) [3] [4{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips
/cm-super/cm-super-ts1.enc}] [5] [6] [7] [8] [9] [10] [11] [12] [13] [14]
[15] [16] [17] [18] [19] [20] [21]
Underfull \hbox (badness 3942) in paragraph at lines 1236--1236
[]\OT1/cmr/bx/n/17.28 Discussion (ex-tended): prac-ti-cal foun-da-tional
[22] [23] [24] [25] (./etcs-izf-folds.aux) )
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
1/public/cm-super/sfti1200.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/stmaryrd/stmary10.pfb>
Output written on etcs-izf-folds.pdf (25 pages, 373610 bytes).
Transcript written on etcs-izf-folds.log.
Latexmk: Getting log file 'etcs-izf-folds.log'
Latexmk: Examining 'etcs-izf-folds.fls'
Latexmk: Examining 'etcs-izf-folds.log'
Latexmk: Log file says output to 'etcs-izf-folds.pdf'
Latexmk: All targets (etcs-izf-folds.pdf) are up-to-date


codex
The fresh `latexmk -pdf` run completed, so there are no fatal undefined-control or missing-package errors. I’m now narrowing the log to warnings and box diagnostics, then I’ll map them back to source lines.
exec
/usr/local/bin/zsh -lc 'rg -n "(''^!|Undefined control sequence|LaTeX Warning|Package .* Warning|Overfull|Underfull|undefined|Rerun|multiply defined|Citation .* undefined|Reference .* undefined|badness)" etcs-izf-folds.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex
 succeeded in 0ms:
612:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
660:Package everypage Warning: Functionality similar to this package has recently
666:Package everypage Warning: You appear to be running a version of LaTeX
789:Underfull \hbox (badness 3942) in paragraph at lines 1236--1236

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|cref|Cref|cite)\\{|\\\\label\\{\" papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|cref|Cref|cite)\{|\label\{)
                               ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc 'chktex -q -n22 -n30 -n8 papers/latex/etcs-izf-folds.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 13 in papers/latex/etcs-izf-folds.tex line 81: Intersentence spacing (`\@') should perhaps be used.
(McLarty 2004 for ETCS $\equiv$ Bounded Zermelo + Replacement; Friedman--Aczel for IZF;  
                                                                                      ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 94: Intersentence spacing (`\@') should perhaps be used.
HoTT.  
    ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 100: Delete this space to maintain correct pagereferences.
\label{sec:intro}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 137: Non-breaking space (`~') should have been used.
Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the  
                ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 137: Non-breaking space (`~') should have been used.
Following Awodey \cite{Awodey2014}, McLarty \cite{McLarty2004}, and Shulman, we use the  
                                           ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 178: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 13 in papers/latex/etcs-izf-folds.tex line 179: Intersentence spacing (`\@') should perhaps be used.
\textbf{Principle} & ETCS & IZF & FOLDS & UA in HoTT? \\  
                                                    ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 180: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 190: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 13 in papers/latex/etcs-izf-folds.tex line 203: Intersentence spacing (`\@') should perhaps be used.
realisability and topos-valued models that connect IZF to HoTT.  
                                                              ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 214: Intersentence spacing (`\@') should perhaps be used.
\section{ETCS: The Elementary Theory of the Category of Sets}  
             ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 215: Delete this space to maintain correct pagereferences.
\label{sec:etcs}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 221: Non-breaking space (`~') should have been used.
\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 221: Non-breaking space (`~') should have been used.
\cite{Lawvere1964} as updated by Lawvere--Rosebrugh \cite{LawvereRosebrugh2003} and  
                                                   ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 222: Non-breaking space (`~') should have been used.
McLarty \cite{McLarty2004}.  
       ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 225: Delete this space to maintain correct pagereferences.
\label{def:etcs}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 263: Delete this space to maintain correct pagereferences.
\label{prop:etcsfunext}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 271: Delete this space to maintain correct pagereferences.
\label{prop:etcspower}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 282: Delete this space to maintain correct pagereferences.
\label{thm:mclarty}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 293: Non-breaking space (`~') should have been used.
in the appropriate 2-categorical sense. Full proof in McLarty \cite{McLarty2004}; we  
                                                             ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 317: Intersentence spacing (`\@') should perhaps be used.
property of the NNO. Given the NNO $(\mathbb{N},0,s)$, define addition  
                   ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 321: Delete this space to maintain correct pagereferences.
\label{def:etcsadd}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 331: Delete this space to maintain correct pagereferences.
\label{prop:etcsadd}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 358: Intersentence spacing (`\@') should perhaps be used.
bi-interpretable with $\mathbf{BZ}+\mathbf{R}$-AC. The constructive variant of ETCS  
                                                 ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 360: Intersentence spacing (`\@') should perhaps be used.
is bi-interpretable with appropriate fragments of IZF. We will see in  
                                                     ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 365: Non-breaking space (`~') should have been used.
Awodey \cite{Awodey2014} introduces a refined notion of \emph{structural foundation}: a  
      ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 372: Intersentence spacing (`\@') should perhaps be used.
guarantee \emph{internal}, one needs HoTT.  
                                         ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 374: Intersentence spacing (`\@') should perhaps be used.
\section{IZF: Intuitionistic Zermelo--Fraenkel}  
            ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 375: Delete this space to maintain correct pagereferences.
\label{sec:izf}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 380: Non-breaking space (`~') should have been used.
\cite{StanfordIZFCZF}) is the system over intuitionistic first-order logic with equality  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 384: Delete this space to maintain correct pagereferences.
\label{def:izf}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 418: Intersentence spacing (`\@') should perhaps be used.
Replacement using EM; in IZF this implication fails.  
                    ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 421: Intersentence spacing (`\@') should perhaps be used.
\subsection{IZF and ZFC: strength and divergence}  
                       ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 423: Non-breaking space (`~') should have been used.
\begin{theorem}[Friedman \cite{Friedman1973}]  
                        ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 424: Delete this space to maintain correct pagereferences.
\label{thm:friedman}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 433: Intersentence spacing (`\@') should perhaps be used.
IZF+EM; any model of IZF gives a Heyting-valued model that, under EM, becomes a model of  
      ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 434: Intersentence spacing (`\@') should perhaps be used.
ZF. Friedman's original proof uses double-negation translations.  
  ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 440: Intersentence spacing (`\@') should perhaps be used.
Separation} (where $\varphi$ is bounded). CZF is significantly weaker than IZF:  
                                                                              ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 444: Intersentence spacing (`\@') should perhaps be used.
MLTT and HoTT.  
             ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 461: Non-breaking space (`~') should have been used.
\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 461: Intersentence spacing (`\@') should perhaps be used.
\cite{Shulman2019} show every Grothendieck $(\infty,1)$-topos models HoTT; specialising  
                                                                         ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 462: Intersentence spacing (`\@') should perhaps be used.
to localic $(\infty,1)$-toposes gives realisability models of HoTT compatible with IZF.  
                                                                                      ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 465: Delete this space to maintain correct pagereferences.
\label{thm:awodey-warren}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 475: Intersentence spacing (`\@') should perhaps be used.
(Aczel's V) inside HoTT. Full Separation translates to subtype formation under  
                       ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 477: Non-breaking space (`~') should have been used.
the Mahlo-style closure on the universe. See HoTT Book \cite{HoTTBook} \S10.5 for details.  
                                                      ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 483: Delete this space to maintain correct pagereferences.
\label{thm:diaconescu}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 497: Intersentence spacing (`\@') should perhaps be used.
content of IZF is genuinely tied to the absence of AC.  
                                                     ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 503: Non-breaking space (`~') should have been used.
Zermelo--Fraenkel), formulated in \cite{Aczel1978}. CZF differs from IZF in two crucial  
                                 ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 511: Non-breaking space (`~') should have been used.
in Martin-L\"of type theory (the sets-in-types interpretation \cite{Aczel1978}), and  
                                                             ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 515: Intersentence spacing (`\@') should perhaps be used.
The IZF/CZF distinction matters for the comparison with HoTT: CZF is closer to HoTT in  
                                                            ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 521: Intersentence spacing (`\@') should perhaps be used.
\section{FOLDS: First-Order Logic with Dependent Sorts}  
              ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 522: Delete this space to maintain correct pagereferences.
\label{sec:folds}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 526: Non-breaking space (`~') should have been used.
\begin{definition}[FOLDS signature, after Makkai \cite{Makkai1995}]  
                                                ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 527: Delete this space to maintain correct pagereferences.
\label{def:foldssig}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 541: Delete this space to maintain correct pagereferences.
\label{ex:foldscat}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 567: Non-breaking space (`~') should have been used.
\begin{definition}[FOLDS-equivalence, Makkai \cite{Makkai1995}]  
                                            ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 568: Delete this space to maintain correct pagereferences.
\label{def:foldsequiv}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 589: Non-breaking space (`~') should have been used.
\begin{theorem}[Makkai's Invariance Theorem \cite{Makkai1995}]  
                                           ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 590: Delete this space to maintain correct pagereferences.
\label{thm:invariance}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 603: Non-breaking space (`~') should have been used.
\cite[Theorem 4.4]{Makkai1995}; an alternative homotopy-theoretic proof appears in  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 608: Delete this space to maintain correct pagereferences.
\label{cor:invariance}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 611: Intersentence spacing (`\@') should perhaps be used.
FOLDS signature for ZF.  
                      ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 616: Non-breaking space (`~') should have been used.
Palmgren \cite{Palmgren2016} showed FOLDS embeds into intensional Martin-L\"of type  
        ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 618: Intersentence spacing (`\@') should perhaps be used.
MLTT; relations become $(-1)$-types (mere propositions).  
    ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 620: Non-breaking space (`~') should have been used.
\begin{theorem}[Palmgren \cite{Palmgren2016}]  
                        ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 621: Delete this space to maintain correct pagereferences.
\label{thm:palmgren}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 635: Delete this space to maintain correct pagereferences.
\label{ex:catequivfolds}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 656: Delete this space to maintain correct pagereferences.
\label{prop:skeleton-not-folds}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 691: Non-breaking space (`~') should have been used.
Szumi\l{}o \cite{Szumilo2019} extends this to a hierarchy of $n$-FOLDS logics whose  
          ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 692: Intersentence spacing (`\@') should perhaps be used.
syntax converges to the syntax of HoTT.  
                                      ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 694: Intersentence spacing (`\@') should perhaps be used.
\section{HoTT: The unifying frame}  
             ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 695: Delete this space to maintain correct pagereferences.
\label{sec:hott}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 699: Non-breaking space (`~') should have been used.
Univalence (Voevodsky 2010, HoTT Book \cite{HoTTBook} \S2.10) is the axiom:  
                                     ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 731: Non-breaking space (`~') should have been used.
\begin{theorem}[Univalence Principle, ANST \cite{ANST2019}]  
                                          ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 732: Delete this space to maintain correct pagereferences.
\label{thm:up}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 741: Intersentence spacing (`\@') should perhaps be used.
HoTT. Each relation symbol becomes a $(-1)$-truncated type, each kind a type of the  
    ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 746: Intersentence spacing (`\@') should perhaps be used.
Reedy fibrant replacement; see ANST.  
                                   ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 762: Delete this space to maintain correct pagereferences.
\label{thm:setsmodel}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 769: Intersentence spacing (`\@') should perhaps be used.
identity and composition, is an elementary topos with NNO. Adding propositional resizing and  
                                                         ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 770: Intersentence spacing (`\@') should perhaps be used.
the (provably independent) axioms EM and AC produces a model of ETCS.  
                                                                    ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 787: Intersentence spacing (`\@') should perhaps be used.
Aczel's $\mathbb{V}$-construction inside HoTT:  
                                             ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 790: Delete this space to maintain correct pagereferences.
\label{def:vhott}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 801: Delete this space to maintain correct pagereferences.
\label{thm:vmodelizf}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 810: Intersentence spacing (`\@') should perhaps be used.
HoTT. FOLDS-structures qua functors are objects of HoTT. The Univalence Principle  
    ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 810: Intersentence spacing (`\@') should perhaps be used.
HoTT. FOLDS-structures qua functors are objects of HoTT. The Univalence Principle  
                                                       ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 812: Intersentence spacing (`\@') should perhaps be used.
expected identity type. So FOLDS is not just \emph{representable} in HoTT; the FOLDS  
                                                                         ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 816: Delete this space to maintain correct pagereferences.
\label{sec:models}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 820: Intersentence spacing (`\@') should perhaps be used.
A model of ETCS is a well-pointed elementary topos with NNO and AC. The category  
                                                                  ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 823: Intersentence spacing (`\@') should perhaps be used.
\item $\mathrm{Set}_{\mathrm{ZF+AC}}$: classical sets in ZF + AC.  
                                                                ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 826: Intersentence spacing (`\@') should perhaps be used.
\item $\mathrm{FinSet}$: finite sets satisfy A1--A6, fail A4 (no NNO), so not ETCS.  
                                                                                  ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 827: Intersentence spacing (`\@') should perhaps be used.
\item Forcing extensions of $\mathrm{Set}$: ETCS+CH and ETCS+$\neg$CH.  
                                                                     ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 834: Intersentence spacing (`\@') should perhaps be used.
``cumulative hierarchy'' inside $\mathcal{E}$) gives a model of IZF.  
                                                                   ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 838: Intersentence spacing (`\@') should perhaps be used.
satisfies all axioms of IZF.  
                           ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 851: Non-breaking space (`~') should have been used.
\begin{theorem}[Makkai \cite{Makkai1995}]  
                      ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 852: Delete this space to maintain correct pagereferences.
\label{thm:foldsfib}  
^
Warning 2 in papers/latex/etcs-izf-folds.tex line 861: Non-breaking space (`~') should have been used.
\begin{theorem}[Shulman \cite{Shulman2019}]  
                       ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 862: Delete this space to maintain correct pagereferences.
\label{thm:shulman}  
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
Warning 13 in papers/latex/etcs-izf-folds.tex line 910: Intersentence spacing (`\@') should perhaps be used.
The interesting feature: ETCS minus Replacement is strictly weaker than ZFC; recovering  
                                                                           ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 913: Non-breaking space (`~') should have been used.
inaccessibles (Shulman \cite{Shulman2019}), since each universe behaves as a Grothendieck  
                      ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 917: Delete this space to maintain correct pagereferences.
\label{sec:boundary}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 922: Delete this space to maintain correct pagereferences.
\label{def:boundary}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 926: Intersentence spacing (`\@') should perhaps be used.
the \emph{near side} if it holds in HoTT without UA. We say $P$ \emph{straddles} the  
                                                   ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 927: Intersentence spacing (`\@') should perhaps be used.
boundary if it is independent of UA in HoTT.  
                                           ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 933: Delete this space to maintain correct pagereferences.
\label{thm:sipneedsua}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 934: Intersentence spacing (`\@') should perhaps be used.
The Structure Identity Principle (SIP) is provably equivalent to univalence in HoTT.  
                                                                                   ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 946: Delete this space to maintain correct pagereferences.
\label{thm:foldsneedsua}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 954: Intersentence spacing (`\@') should perhaps be used.
equivalence. The conclusion that equivalence is identification is exactly UA.  
                                                                            ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 960: Delete this space to maintain correct pagereferences.
\label{thm:nnonear}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 961: Intersentence spacing (`\@') should perhaps be used.
The existence of an NNO in HoTT (as the inductive type $\mathbb{N}$) does not require UA.  
                                                                                        ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 966: Intersentence spacing (`\@') should perhaps be used.
elimination rule of MLTT inductive types and does not invoke UA.  
                                                               ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 970: Delete this space to maintain correct pagereferences.
\label{thm:fefar}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 972: Intersentence spacing (`\@') should perhaps be used.
However, FE itself does not imply UA.  
                                    ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 983: Delete this space to maintain correct pagereferences.
\label{thm:straddlers}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 984: Intersentence spacing (`\@') should perhaps be used.
The law of excluded middle EM and the axiom of choice AC are independent of UA in HoTT.  
                                                                                      ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 987: Intersentence spacing (`\@') should perhaps be used.
EM: the classical model (sets) satisfies EM and UA; the topological model satisfies UA  
  ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 987: Intersentence spacing (`\@') should perhaps be used.
EM: the classical model (sets) satisfies EM and UA; the topological model satisfies UA  
                                                  ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 988: Intersentence spacing (`\@') should perhaps be used.
but not EM. Similarly AC.  
          ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 988: Intersentence spacing (`\@') should perhaps be used.
but not EM. Similarly AC.  
                        ^
Warning 44 in papers/latex/etcs-izf-folds.tex line 994: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{c|cc}  
^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 996: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1014: Delete this space to maintain correct pagereferences.
\label{prop:diagnostic}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1022: Intersentence spacing (`\@') should perhaps be used.
\cref{thm:sipneedsua,thm:foldsneedsua} that these need UA.  
                                                         ^
Warning 2 in papers/latex/etcs-izf-folds.tex line 1026: Non-breaking space (`~') should have been used.
formalisation of the schema, deferred to \cite{ANST2019}.  
                                        ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1031: Intersentence spacing (`\@') should perhaps be used.
A principle is \emph{on the boundary} if it is equivalent to UA in HoTT. Examples:  
                                                                       ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1045: Intersentence spacing (`\@') should perhaps be used.
\item PE alone is strictly weaker than UA.  
                                         ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1050: Delete this space to maintain correct pagereferences.
\label{sec:open}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1055: Delete this space to maintain correct pagereferences.
\label{conj:etcscontract}  
^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1071: Delete this space to maintain correct pagereferences.
\label{conj:cubicalfolds}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1078: Intersentence spacing (`\@') should perhaps be used.
formalisation of the SIP. Full FOLDS in Cubical Agda would close the gap between Makkai  
                        ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1084: Delete this space to maintain correct pagereferences.
\label{conj:izfhott}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1088: Intersentence spacing (`\@') should perhaps be used.
\item Extensionality $\leftrightarrow$ FE + PE.  
                                              ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1097: Intersentence spacing (`\@') should perhaps be used.
\noindent Partial work: HoTT Book \S10.5; Awodey--Warren; Rathjen--Tupailo on CZF.  
                                                                                 ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1100: Delete this space to maintain correct pagereferences.
\label{sec:discussion}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1108: Intersentence spacing (`\@') should perhaps be used.
\item \textbf{Classical vs constructive}: ZFC vs IZF/CZF.  
                                                        ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1118: Intersentence spacing (`\@') should perhaps be used.
\item \textbf{Pure category theory, classical}: ETCS+AC.  
                                                       ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1136: Delete this space to maintain correct pagereferences.
\label{sec:casestudy}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1139: Intersentence spacing (`\@') should perhaps be used.
of monoids --- through ETCS, IZF, FOLDS, and HoTT. This illustrates how  
                                                 ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1201: Delete this space to maintain correct pagereferences.
\label{thm:sipmonoid}  
^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1217: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{|l|l|l|l|}  
^^^^^^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1218: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1220: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/etcs-izf-folds.tex line 1226: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1237: Delete this space to maintain correct pagereferences.
\label{sec:practical}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1246: Intersentence spacing (`\@') should perhaps be used.
results requiring AC and EM. Lean/Mathlib uses ZFC (via the type-theoretic  
                           ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1248: Intersentence spacing (`\@') should perhaps be used.
\item \textbf{Category theory and topos theory}: ETCS or HoTT+UA. ETCS is sufficient for  
                                                                ^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1276: Intersentence spacing (`\@') should perhaps be used.
compatible with EM; IZF is constructive; ZFC is classical; FOLDS is logic-agnostic.  
                  ^
Warning 24 in papers/latex/etcs-izf-folds.tex line 1285: Delete this space to maintain correct pagereferences.
\label{sec:conclusion}  
^
Warning 13 in papers/latex/etcs-izf-folds.tex line 1297: Intersentence spacing (`\@') should perhaps be used.
(without EM, without AC) shares the logical environment of IZF. The Univalence Principle  
                                                              ^

exec
/usr/local/bin/zsh -lc 'rg -n "LaTeX Warning: (Reference|Citation)|undefined references|There were undefined|multiply-defined|Overfull|Underfull|Package everypage Warning|Undefined control sequence|''^!" etcs-izf-folds.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex
 succeeded in 0ms:
660:Package everypage Warning: Functionality similar to this package has recently
666:Package everypage Warning: You appear to be running a version of LaTeX
789:Underfull \hbox (badness 3942) in paragraph at lines 1236--1236

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\\\label{\" papers/latex/etcs-izf-folds.tex; rg -n -F \"\\\\cref{\" papers/latex/etcs-izf-folds.tex; rg -n -F \"\\\\Cref{\" papers/latex/etcs-izf-folds.tex; rg -n -F \"\\\\cite{\" papers/latex/etcs-izf-folds.tex; rg -n -F \"\\\\cite[\" papers/latex/etcs-izf-folds.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
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
1201:\label{thm:sipmonoid}
1237:\label{sec:practical}
1285:\label{sec:conclusion}
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
603:\cite[Theorem 4.4]{Makkai1995}; an alternative homotopy-theoretic proof appears in

exec
/usr/local/bin/zsh -lc 'latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error etcs-izf-folds.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex
 succeeded in 0ms:
Rc files read (in order):
  NONE
Latexmk: This is Latexmk, John Collins, 9 March 2026. Version 4.88.
Latexmk: Nothing to do for 'etcs-izf-folds.tex'.
Latexmk: All targets (etcs-izf-folds.pdf) are up-to-date


codex
Ran `latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error etcs-izf-folds.tex` from `papers/latex`.

1. [etcs-izf-folds.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex:23): `everypage` emits package warnings under current LaTeX because it is now legacy and may not be strictly compatible.
   Fix: remove `\usepackage{everypage}` and replace [line 43](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex:43) `\AddEverypageHook{...}` with the kernel hook:
   ```tex
   \AddToHook{shipout/foreground}{%
     \ifnum\value{page}=1
       ...
     \fi
   }
   ```

2. [etcs-izf-folds.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex:1236): LaTeX reports `Underfull \hbox (badness 3942)` for the displayed section title `Discussion (extended): practical foundational choice`.
   Fix: shorten the displayed heading, e.g.
   ```tex
   \section{Practical foundational choice}
   ```
   or manually break it:
   ```tex
   \section[Practical foundational choice]{Discussion (extended):\\ practical foundational choice}
   ```

No fatal compilation errors, missing-package errors, undefined-control errors, undefined references, undefined citations, or overfull boxes appeared in the fresh build log.

VERDICT: NEEDS_FIX
2026-05-04T23:37:03.245206Z ERROR codex_core::session: failed to record rollout items: thread 019df559-26e7-7273-ba7c-796775df53a0 not found
tokens used
70,694
Ran `latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error etcs-izf-folds.tex` from `papers/latex`.

1. [etcs-izf-folds.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex:23): `everypage` emits package warnings under current LaTeX because it is now legacy and may not be strictly compatible.
   Fix: remove `\usepackage{everypage}` and replace [line 43](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex:43) `\AddEverypageHook{...}` with the kernel hook:
   ```tex
   \AddToHook{shipout/foreground}{%
     \ifnum\value{page}=1
       ...
     \fi
   }
   ```

2. [etcs-izf-folds.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/etcs-izf-folds.tex:1236): LaTeX reports `Underfull \hbox (badness 3942)` for the displayed section title `Discussion (extended): practical foundational choice`.
   Fix: shorten the displayed heading, e.g.
   ```tex
   \section{Practical foundational choice}
   ```
   or manually break it:
   ```tex
   \section[Practical foundational choice]{Discussion (extended):\\ practical foundational choice}
   ```

No fatal compilation errors, missing-package errors, undefined-control errors, undefined references, undefined citations, or overfull boxes appeared in the fresh build log.

VERDICT: NEEDS_FIX

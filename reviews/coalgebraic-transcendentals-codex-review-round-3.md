---
reviewer: codex (OpenAI)
type: formatting
paper: coalgebraic-transcendentals
round: 3
date: 2026-05-04T23:54:33Z
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
session id: 019df56a-3f83-7cd3-b7c8-20ae10077f24
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll inspect the TeX source and the local build setup first, then run the narrowest available LaTeX build/check so the findings are grounded in actual diagnostics rather than just visual scanning.
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
reviews/coalgebraic-transcendentals-codex-review-round-3.md
reviews/coalgebraic-transcendentals-review.md
reviews/infinity-nno-codex-review.md
reviews/etcs-izf-folds-codex-review-round-2.md
reviews/etcs-izf-folds-codex-review-round-3.md
reviews/directed-univalence-codex-review-round-1.md
reviews/infinity-nno-codex-review-round-1.md
reviews/coalgebraic-transcendentals-codex-review-round-2.md
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
images/cubical-hiit-cauchy.png
papers/pdf/directed-univalence.pdf
papers/pdf/infinity-nno.pdf
papers/pdf/etcs-izf-folds.pdf
papers/pdf/cubical-hiit-cauchy.pdf
papers/latex/infinity-nno.tex
papers/latex/langlands-analytic-number-theory.aux
papers/latex/coalgebraic-transcendentals.tex
papers/latex/coalgebraic-transcendentals.toc
papers/latex/langlands-analytic-number-theory.log
papers/latex/etcs-izf-folds.fdb_latexmk
papers/latex/directed-univalence.tex
papers/latex/cubical-hiit-cauchy.fls
papers/latex/cubical-hiit-cauchy.aux
papers/latex/coalgebraic-transcendentals.out
papers/latex/cubical-hiit-cauchy.log
papers/latex/coalgebraic-transcendentals.pdf
papers/latex/etcs-izf-folds.fls
papers/latex/etcs-izf-folds.aux
papers/latex/etcs-izf-folds.log
papers/latex/langlands-analytic-number-theory.out
papers/latex/cubical-hiit-cauchy.toc
papers/latex/cubical-hiit-cauchy.tex
papers/latex/coalgebraic-transcendentals.log
papers/latex/cubical-hiit-cauchy.out
papers/latex/langlands-analytic-number-theory.toc
papers/latex/langlands-analytic-number-theory.tex
papers/latex/coalgebraic-transcendentals.aux
papers/latex/cubical-hiit-cauchy.fdb_latexmk
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
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% --- Core math (load first) ---
     4	\usepackage{amsmath, amssymb, amsthm}
     5	\usepackage{mathtools}
     6	
     7	% --- Page layout ---
     8	\usepackage[margin=1in]{geometry}
     9	
    10	% --- Graphics ---
    11	\usepackage{graphicx}
    12	\usepackage{xcolor}
    13	
    14	% --- Diagrams ---
    15	\usepackage{tikz}
    16	\usepackage{tikz-cd}
    17	\usetikzlibrary{calc,positioning,arrows.meta}
    18	
    19	% --- Tables ---
    20	\usepackage{tabularx, array, booktabs}
    21	
    22	% --- Listings ---
    23	\usepackage{listings}
    24	\lstset{
    25	  basicstyle=\ttfamily\small,
    26	  breaklines=true,
    27	  columns=flexible,
    28	  keepspaces=true,
    29	  showstringspaces=false
    30	}
    31	
    32	% --- References (must come after most other packages) ---
    33	\usepackage{hyperref}
    34	\usepackage{cleveref}
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
    76	\AddToHook{shipout/background}{%
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
   144	\subsection{\texorpdfstring{Two presentations of $\R$, two presentations of $\pi$}{Two presentations of R, two presentations of pi}}
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
   155	    $\Rc$~\cite{booij}, presented as the initial algebra of a signature
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

exec
/usr/local/bin/zsh -lc 'git status --short' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
?? .knowledge-base.md
?? images/
?? lean/
?? papers/
?? reviews/
?? src/

codex
The repo has a previously generated PDF/log for this paper, so I’m going to use the existing log as one evidence source and then rebuild from the TeX file to catch current diagnostics.
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
   351	\[
   352	  \out: \Stream\,A \to A \times \Stream\,A
   353	\]
   354	decomposes into the two component maps
   355	\[
   356	  \hd: \Stream\,A \to A, \qquad
   357	  \tl: \Stream\,A \to \Stream\,A.
   358	\]
   359	\end{definition}
   360	
   361	\begin{remark}[Cubical realisation]
   362	In cubical HoTT, $\Stream\,A$ admits a definition by guarded
   363	recursion using the modality $\rhd$ of Birkedal et al.~\cite{birkedal}:
   364	$\Stream\,A \cong A \times \rhd \Stream\,A$. The fixed point exists
   365	because $\rhd$ is a contractive functor and the guarded recursion
   366	theorem applies.
   367	\end{remark}
   368	
   369	% =============================================================
   370	\section{Lambek's lemma and coinduction}\label{sec:lambek}
   371	% =============================================================
   372	
   373	We recall Lambek's lemma in its dual coalgebraic form, which is
   374	the cornerstone of all coinductive characterisations.
   375	
   376	\begin{lemma}[Dual Lambek]\label{lem:lambek}
   377	If $(\nu F, \out)$ is a final $F$-coalgebra, then
   378	$\out: \nu F \to F(\nu F)$ is a path-equivalence.
   379	\end{lemma}
   380	
   381	\begin{proof}
   382	Consider the coalgebra $(F(\nu F), F\out)$. Finality yields a
   383	unique map $\theta: F(\nu F) \to \nu F$ with
   384	$\out \circ \theta = F(F\out) \circ F\,\out = F(\out \circ \theta)$.
   385	Then $\theta \circ \out: \nu F \to \nu F$ is a coalgebra morphism,
   386	and so is $\id_{\nu F}$, so by uniqueness $\theta\circ\out = \id$.
   387	Symmetrically, $\out \circ \theta$ is a coalgebra morphism on
   388	$(F(\nu F), F\out)$ to itself, equal to the identity. Hence
   389	$\out$ is a path-equivalence with inverse $\theta$.
   390	\end{proof}
   391	
   392	\begin{remark}
   393	\Cref{lem:lambek} is conceptually crucial: it says the
   394	final coalgebra is a fixed point of $F$ \emph{up to path
   395	equivalence}, the coinductive dual of Lambek's algebraic
   396	``$\mu F \cong F(\mu F)$''. In cubical HoTT this equivalence is
   397	\emph{strict} (definitional after path-application) at base types,
   398	which is what makes $\hd, \tl$ definable.
   399	\end{remark}
   400	
   401	\begin{definition}[Bisimulation]\label{def:bisim}
   402	A relation $R: C \times C \to \Type$ on the carrier of an
   403	$F$-coalgebra $(C,\gamma)$ is an $F$-bisimulation if there exists
   404	a coalgebra structure
   405	$\bar\gamma: \Sigma_{(x,y):C\times C}R(x,y) \to F(\Sigma\dots R)$
   406	making the two projections coalgebra morphisms. Concretely, for
   407	the stream functor $F_A\,X = A \times X$, the unfolded definition
   408	is: a relation $R$ on $\Stream\,A$ is a bisimulation iff for all
   409	$(x,y)$ with $R(x,y)$, we have $\hd(x) = \hd(y)$ and
   410	$R(\tl(x), \tl(y))$.
   411	\end{definition}
   412	
   413	\begin{theorem}[Coinduction principle]\label{thm:coinduction}
   414	Let $(\nu F, \out)$ be a final $F$-coalgebra. For any
   415	$F$-bisimulation $R$ and any $x, y: \nu F$, if $R(x,y)$ holds,
   416	then $x = y$ in $\nu F$.
   417	\end{theorem}
   418	
   419	\begin{proof}
   420	By \Cref{def:bisim} the projections
   421	$\pi_1, \pi_2: \Sigma_{(x,y)}R(x,y) \to \nu F$ are coalgebra
   422	morphisms into the final coalgebra. By uniqueness of mediating
   423	maps, $\pi_1 = \pi_2$ as coalgebra morphisms, hence as
   424	functions, hence pointwise. So if $(x,y,p):\Sigma_{(x,y)}R(x,y)$
   425	then $\pi_1(x,y,p) = \pi_2(x,y,p)$, i.e.\ $x = y$.
   426	\end{proof}
   427	
   428	This is the fundamental \emph{coinductive proof principle}: to
   429	exhibit a path between two elements of a final coalgebra it
   430	suffices to exhibit a bisimulation containing them.
   431	
   432	% =============================================================
   433	\section{Stream coalgebras and digit streams}\label{sec:streams}
   434	% =============================================================
   435	
   436	\subsection{The stream functor and its final coalgebra}
   437	
   438	\begin{theorem}[Streams as final coalgebra]\label{thm:streamfinal}
   439	For any type $A$, the M-type $\Stream\,A$ together with
   440	$\out = \langle\hd,\tl\rangle$ is the final coalgebra of
   441	$F_A = A\times(-)$.
   442	\end{theorem}
   443	
   444	\begin{proof}[Proof sketch]
   445	For coalgebra $(C,\gamma:C\to A\times C)$, define
   446	$\unfold_\gamma: C \to \Stream\,A$ by guarded corecursion:
   447	\begin{align*}
   448	\hd(\unfold_\gamma(c)) &:= \pi_1(\gamma(c)),\\
   449	\tl(\unfold_\gamma(c)) &:= \unfold_\gamma(\pi_2(\gamma(c))).
   450	\end{align*}
   451	The morphism property $\out \circ \unfold_\gamma = F_A\,\unfold_\gamma \circ \gamma$
   452	is judgmental. Uniqueness follows from coinduction
   453	(\Cref{thm:coinduction}) applied to the relation $R(s,t) :=
   454	\Sigma_{c:C}\,(s = \unfold_\gamma(c))\times(t = \unfold_\gamma(c))$.
   455	\end{proof}
   456	
   457	\begin{example}[Constant stream]
   458	For $a:A$, $\mathsf{const}_a := \unfold_\gamma$ where $C = \mathbf{1}$
   459	and $\gamma(\star) = (a,\star)$, so
   460	$\hd(\mathsf{const}_a) = a$ and $\tl(\mathsf{const}_a) = \mathsf{const}_a$.
   461	\end{example}
   462	
   463	\begin{example}[Naturals as stream]
   464	$\mathsf{nats} := \unfold_\gamma$ where $C = \N$ and
   465	$\gamma(n) = (n, n+1)$. Yields $\mathsf{nats} = 0,1,2,3,\dots$
   466	\end{example}
   467	
   468	\subsection{\texorpdfstring{Base-$b$ digit streams and approximation maps}{Base-b digit streams and approximation maps}}
   469	
   470	Fix $b \geq 2$. We work with digit streams of $\mathsf{Fin}(b)$.
   471	
   472	\begin{definition}[Approximation map]\label{def:approx}
   473	The base-$b$ \emph{approximation map}
   474	$\alpha_b: \Stream\,\mathsf{Fin}(b) \to \Rc$ takes a stream
   475	$d_0 d_1 d_2 \dots$ to the Cauchy real
   476	\[
   477	\alpha_b(d) := \lim_{n\to\infty}\sum_{k=0}^{n-1}\frac{d_k}{b^{k+1}},
   478	\]
   479	which exists because the partial sums form a $b^{-n}$-Cauchy
   480	approximation in Booij's sense: for $m \geq n$ the difference
   481	$\bigl|\sum_{k=0}^{m-1}\!d_k/b^{k+1} - \sum_{k=0}^{n-1}\!d_k/b^{k+1}\bigr|
   482	= \sum_{k=n}^{m-1}\!d_k/b^{k+1} \leq \sum_{k=n}^{\infty}(b-1)/b^{k+1} = b^{-n}$,
   483	so the partial sums are uniformly Cauchy with modulus $b^{-n}$
   484	and Booij's $\lim$-constructor applies.
   485	\end{definition}
   486	
   487	\begin{lemma}[Approximation surjects onto ${[0,1]}$]\label{lem:approx-surj}
   488	$\alpha_b: \Stream\,\mathsf{Fin}(b) \to \Rc$ has image $[0,1]\subset\Rc$.
   489	\end{lemma}
   490	
   491	\begin{proof}
   492	Surjection onto $[0,1]$ is the standard digit-expansion: given
   493	$x\in[0,1]\cap \Rc$, define $d_k = \lfloor b^{k+1} x\rfloor \mod b$
   494	using the floor function on Cauchy reals. The sum converges
   495	to $x$ by the standard estimate. Existence of floor on $\Rc$
   496	uses Booij's order. (Note that floor is not constant on
   497	bisimulation classes; this is the source of the carry equivalence.)
   498	\end{proof}
   499	
   500	\begin{definition}[Carry-bisimulation]\label{def:carry}
   501	The relation $\bisim_b$ on $\Stream\,\mathsf{Fin}(b)$ is the smallest
   502	equivalence such that $\alpha_b(s) = \alpha_b(t)$ implies
   503	$s \bisim_b t$. Concretely, for any $n$ and any $d\in\mathsf{Fin}(b-1)$,
   504	\[
   505	d_0\cdots d_{n-1}\,d\,(b{-}1)(b{-}1)\cdots
   506	\;\bisim_b\;
   507	d_0\cdots d_{n-1}\,(d{+}1)\,0\,0\cdots
   508	\]
   509	This is exactly the ``$0.999\ldots = 1.000\ldots$'' identification.
   510	\end{definition}
   511	
   512	\begin{theorem}[${[0,1]}$ as quotient final coalgebra]\label{thm:01-quotient}
   513	The set-quotient $\Stream\,\mathsf{Fin}(b)/{\bisim_b}$ is in
   514	HoTT-equivalence with $[0,1] \subset \Rc$ via $\alpha_b$.
   515	\end{theorem}
   516	
   517	\begin{proof}
   518	$\alpha_b$ factors through the quotient by definition of $\bisim_b$.
   519	The induced map is injective by the kernel of $\alpha_b$ being
   520	$\bisim_b$, and surjective by \Cref{lem:approx-surj}. Both maps
   521	are set-functions (between h-sets), hence the resulting bijection
   522	is an equivalence by univalence-for-sets.
   523	\end{proof}
   524	
   525	\begin{remark}[$\R$ from ${[0,1]}$]
   526	The whole real line $\R$ is recovered as
   527	$\Z \times [0,1] / \sim$ with the obvious carrying identifications,
   528	or equivalently as the final coalgebra of the functor
   529	$G\,X = \Z \times \Stream\,\mathsf{Fin}(b)\,X$ modulo
   530	the appropriate bisimulation.
   531	\end{remark}
   532	
   533	% =============================================================
   534	\section{Bisimulation-closed predicates and coinduction up-to}\label{sec:bisim}
   535	% =============================================================
   536	
   537	To characterise $\pi$ and $e$ \emph{internally} to the final
   538	coalgebra, we need predicates that respect $\bisim_b$. We
   539	formalise this notion and develop the up-to technique.
   540	
   541	\begin{definition}[Bisimulation-closed predicate]\label{def:bclosed}
   542	A predicate $P: \Stream\,\mathsf{Fin}(b) \to \mathsf{Prop}$ is
   543	\emph{$\bisim_b$-closed} (or simply \emph{closed}) if
   544	$s \bisim_b t \to P(s) \leftrightarrow P(t)$. Equivalently, $P$
   545	factors through the quotient $\Stream\,\mathsf{Fin}(b)/{\bisim_b}$.
   546	\end{definition}
   547	
   548	\begin{example}\label{ex:closed}
   549	The predicate $P(s) := (\alpha_b(s) < 1/2)$ is closed; the
   550	predicate $P(s) := (\hd(s) = 4)$ in base $10$ is \emph{not}
   551	closed: the stream $0.4\,9\,9\,9\dots$ has $\hd = 4$ but is
   552	bisimilar to $0.5\,0\,0\dots$ which has $\hd = 5$.
   553	\end{example}
   554	
   555	\begin{definition}[Observable predicate]\label{def:observable}
   556	A predicate $P$ is \emph{observable} if it is determined by the
   557	function $\alpha_b$, i.e.\ $P(s) = Q(\alpha_b(s))$ for some
   558	$Q: \Rc \to \mathsf{Prop}$. Every observable predicate is closed,
   559	but not conversely.
   560	\end{definition}
   561	
   562	\begin{lemma}\label{lem:observable-closed}
   563	A predicate is closed iff it factors through $\alpha_b$.
   564	\end{lemma}
   565	
   566	\begin{proof}
   567	$(\Rightarrow)$ A closed predicate factors through
   568	$\Stream/{\bisim_b}$, and $\alpha_b$ induces an equivalence
   569	between $\Stream/{\bisim_b}$ and $\im(\alpha_b)\subseteq\Rc$
   570	(\Cref{thm:01-quotient}). Composition with the inverse equivalence
   571	gives the factorisation.
   572	$(\Leftarrow)$ Immediate: factoring through $\alpha_b$ implies
   573	$\alpha_b(s)=\alpha_b(t)\Rightarrow P(s)\leftrightarrow P(t)$, which
   574	is the definition of closure under the kernel of $\alpha_b$.
   575	\end{proof}
   576	
   577	\subsection{Coinduction up-to-context}
   578	
   579	The plain coinduction principle (\Cref{thm:coinduction}) requires
   580	exhibiting a strict bisimulation. In practice this is often
   581	inconvenient: one wants to prove $s = t$ by exhibiting a relation
   582	$R$ such that $R(s,t)$ implies that the heads agree and the
   583	tails are related by $R$ \emph{after some closure operations}.
   584	Sangiorgi--Rutten formalised this via the \emph{up-to} technique.
   585	
   586	\begin{definition}[$\Phi$-up-to]\label{def:upto}
   587	Let $\Phi$ be a monotone operator on relations on $\Stream\,A$.
   588	A relation $R$ is a \emph{bisimulation up-to $\Phi$} if for every
   589	$(s,t) \in R$, $\hd(s) = \hd(t)$ and
   590	$(\tl(s), \tl(t)) \in \Phi(R)$.
   591	\end{definition}
   592	
   593	\begin{theorem}[Up-to-context soundness]\label{thm:upto-sound}
   594	If $\Phi$ is \emph{compatible} (i.e.\ $\Phi$ preserves bisimulations
   595	in the sense of Pous--Sangiorgi~\cite{poussangiorgi}), then any
   596	bisimulation up-to $\Phi$ is contained in $\bisim$.
   597	\end{theorem}
   598	
   599	\begin{proof}[Proof sketch]
   600	Define $R^* := \bigcup_{n\geq 0}\Phi^n(R)$. Show by induction
   601	that $R^*$ is a (plain) bisimulation: heads agree because
   602	$\Phi$ preserves head-equality, and tails of $R^*$-related pairs
   603	remain in $R^*$ because $\Phi^n(R) \subseteq \Phi^{n+1}(R)$ by
   604	monotonicity and the bisimulation-up-to-$\Phi$ condition.
   605	\end{proof}
   606	
   607	\begin{example}[Equivalence-closure up-to]
   608	$\Phi(R) := \{(s,t) : \exists s', t'\,R(s',t') \wedge s = s' \wedge t = t'\}$
   609	is compatible. So one may freely substitute path-equal streams
   610	inside coinductive proofs.
   611	\end{example}
   612	
   613	\begin{example}[Arithmetic up-to]
   614	For arithmetic operations on base-$b$ digit streams (addition,
   615	multiplication, division, exponentiation by digit), the operators
   616	\[
   617	\Phi_+(R) := \{(s+u, t+u) : R(s,t)\},\qquad
   618	\Phi_\cdot(R) := \{(s\cdot u, t\cdot u) : R(s,t)\}
   619	\]
   620	are compatible (their compatibility reduces to verifying that

exec
/usr/local/bin/zsh -lc 'command -v latexmk || true; command -v pdflatex || true; command -v chktex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk
/Library/TeX/texbin/pdflatex
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc 'rg -n "(Warning|Error|Undefined|Overfull|Underfull|Citation|Reference|Label|Package|Missing|Runaway|Emergency stop|There were undefined|multiply-defined|Token not allowed|pdfTeX warning)" papers/latex/coalgebraic-transcendentals.log papers/latex/coalgebraic-transcendentals.aux papers/latex/coalgebraic-transcendentals.out' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
papers/latex/coalgebraic-transcendentals.log:28:Package: amsmath 2025/07/09 v2.17z AMS math features
papers/latex/coalgebraic-transcendentals.log:33:Package: amstext 2024/11/17 v2.01 AMS text
papers/latex/coalgebraic-transcendentals.log:41:Package: amsbsy 1999/11/29 v1.2d Bold Symbols
papers/latex/coalgebraic-transcendentals.log:45:Package: amsopn 2022/04/08 v2.04 operator names
papers/latex/coalgebraic-transcendentals.log:96:Package: amssymb 2013/01/14 v3.01 AMS font symbols
papers/latex/coalgebraic-transcendentals.log:99:Package: amsfonts 2013/01/14 v3.01 Basic AMSFonts support
papers/latex/coalgebraic-transcendentals.log:107:Package: amsthm 2020/05/29 v2.20.6
papers/latex/coalgebraic-transcendentals.log:119:Package: mathtools 2024/10/04 v1.31 mathematical typesetting tools
papers/latex/coalgebraic-transcendentals.log:122:Package: keyval 2022/05/29 v1.15 key=value parser (DPC)
papers/latex/coalgebraic-transcendentals.log:126:Package: calc 2025/03/01 v4.3b Infix arithmetic (KKT,FJ)
papers/latex/coalgebraic-transcendentals.log:139:Package: mhsetup 2021/03/18 v1.4 programming setup (MH)
papers/latex/coalgebraic-transcendentals.log:154:Package: geometry 2026/03/07 v6.0 Page Geometry
papers/latex/coalgebraic-transcendentals.log:157:Package: ifvtex 2019/10/25 v1.7 ifvtex legacy package. Use iftex instead.
papers/latex/coalgebraic-transcendentals.log:160:Package: iftex 2024/12/12 v1.0g TeX engine tests
papers/latex/coalgebraic-transcendentals.log:176:Package: graphicx 2024/12/31 v1.2e Enhanced LaTeX Graphics (DPC,SPQR)
papers/latex/coalgebraic-transcendentals.log:179:Package: graphics 2024/08/06 v1.4g Standard LaTeX Graphics (DPC,SPQR)
papers/latex/coalgebraic-transcendentals.log:182:Package: trig 2023/12/02 v1.11 sin cos tan (DPC)
papers/latex/coalgebraic-transcendentals.log:187:Package graphics Info: Driver file: pdftex.def on input line 106.
papers/latex/coalgebraic-transcendentals.log:196:Package: xcolor 2024/09/29 v3.02 LaTeX color extensions (UK)
papers/latex/coalgebraic-transcendentals.log:201:Package xcolor Info: Driver file: pdftex.def on input line 274.
papers/latex/coalgebraic-transcendentals.log:204:Package xcolor Info: Model `cmy' substituted by `cmy0' on input line 1349.
papers/latex/coalgebraic-transcendentals.log:205:Package xcolor Info: Model `hsb' substituted by `rgb' on input line 1353.
papers/latex/coalgebraic-transcendentals.log:206:Package xcolor Info: Model `RGB' extended on input line 1365.
papers/latex/coalgebraic-transcendentals.log:207:Package xcolor Info: Model `HTML' substituted by `rgb' on input line 1367.
papers/latex/coalgebraic-transcendentals.log:208:Package xcolor Info: Model `Hsb' substituted by `hsb' on input line 1368.
papers/latex/coalgebraic-transcendentals.log:209:Package xcolor Info: Model `tHsb' substituted by `hsb' on input line 1369.
papers/latex/coalgebraic-transcendentals.log:210:Package xcolor Info: Model `HSB' substituted by `hsb' on input line 1370.
papers/latex/coalgebraic-transcendentals.log:211:Package xcolor Info: Model `Gray' substituted by `gray' on input line 1371.
papers/latex/coalgebraic-transcendentals.log:212:Package xcolor Info: Model `wave' substituted by `hsb' on input line 1372.
papers/latex/coalgebraic-transcendentals.log:227:Package: pgfrcs 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:229:Package: pgf 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:234:Package: pgfsys 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:288:Package: pgfcore 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:431:Package: pgfcomp-version-0-65 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:437:Package: pgfcomp-version-1-18 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:445:Package: pgffor 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:453:Package: tikz 2025-08-29 v3.1.11a (3.1.11a)
papers/latex/coalgebraic-transcendentals.log:492:Package: tikz-cd 2021/05/04 v1.0 Commutative diagrams with TikZ
papers/latex/coalgebraic-transcendentals.log:520:Package: tabularx 2023/12/11 v2.12a `tabularx' package (DPC)
papers/latex/coalgebraic-transcendentals.log:523:Package: array 2025/09/25 v2.6n Tabular extension package (FMi)
papers/latex/coalgebraic-transcendentals.log:541:Package: booktabs 2020/01/12 v1.61803398 Publication quality tables
papers/latex/coalgebraic-transcendentals.log:586:Package: listings 2025/11/14 1.11b (Carsten Heinz)
papers/latex/coalgebraic-transcendentals.log:595:Package: hyperref 2026-01-29 v7.01p Hypertext links for LaTeX
papers/latex/coalgebraic-transcendentals.log:598:Package: kvsetkeys 2022-10-05 v1.19 Key value parser (HO)
papers/latex/coalgebraic-transcendentals.log:601:Package: kvdefinekeys 2019-12-19 v1.6 Define keys (HO)
papers/latex/coalgebraic-transcendentals.log:604:Package: pdfescape 2019/12/09 v1.15 Implements pdfTeX's escape features (HO)
papers/latex/coalgebraic-transcendentals.log:607:Package: ltxcmds 2023-12-04 v1.26 LaTeX kernel commands for general use (HO)
papers/latex/coalgebraic-transcendentals.log:610:Package: pdftexcmds 2020-06-27 v0.33 Utility functions of pdfTeX for LuaTeX (HO
papers/latex/coalgebraic-transcendentals.log:614:Package: infwarerr 2019/12/03 v1.5 Providing info/warning/error messages (HO)
papers/latex/coalgebraic-transcendentals.log:616:Package pdftexcmds Info: \pdf@primitive is available.
papers/latex/coalgebraic-transcendentals.log:617:Package pdftexcmds Info: \pdf@ifprimitive is available.
papers/latex/coalgebraic-transcendentals.log:618:Package pdftexcmds Info: \pdfdraftmode found.
papers/latex/coalgebraic-transcendentals.log:621:Package: hycolor 2020-01-27 v1.10 Color options for hyperref/bookmark (HO)
papers/latex/coalgebraic-transcendentals.log:624:Package: nameref 2026-01-29 v2.58 Cross-referencing by name of section
papers/latex/coalgebraic-transcendentals.log:627:Package: refcount 2019/12/15 v3.6 Data extraction from label references (HO)
papers/latex/coalgebraic-transcendentals.log:631:Package: gettitlestring 2019/12/15 v1.6 Cleanup title references (HO)
papers/latex/coalgebraic-transcendentals.log:633:Package: kvoptions 2022-06-15 v3.15 Key value format for package options (HO)
papers/latex/coalgebraic-transcendentals.log:638:Package: etoolbox 2025/10/02 v2.5m e-TeX tools for LaTeX (JAW)
papers/latex/coalgebraic-transcendentals.log:642:Package: stringenc 2019/11/29 v1.12 Convert strings between diff. encodings (HO
papers/latex/coalgebraic-transcendentals.log:655:Package: intcalc 2019/12/15 v1.3 Expandable calculations with integers (HO)
papers/latex/coalgebraic-transcendentals.log:664:Package hyperref Info: Hyper figures OFF on input line 4201.
papers/latex/coalgebraic-transcendentals.log:665:Package hyperref Info: Link nesting OFF on input line 4206.
papers/latex/coalgebraic-transcendentals.log:666:Package hyperref Info: Hyper index ON on input line 4209.
papers/latex/coalgebraic-transcendentals.log:667:Package hyperref Info: Plain pages OFF on input line 4216.
papers/latex/coalgebraic-transcendentals.log:668:Package hyperref Info: Backreferencing OFF on input line 4221.
papers/latex/coalgebraic-transcendentals.log:669:Package hyperref Info: Implicit mode ON; LaTeX internals redefined.
papers/latex/coalgebraic-transcendentals.log:670:Package hyperref Info: Bookmarks ON on input line 4468.
papers/latex/coalgebraic-transcendentals.log:675:Package: url 2013/09/16  ver 3.4  Verb mode for urls, etc.
papers/latex/coalgebraic-transcendentals.log:681:Package: bitset 2019/12/09 v1.3 Handle bit-vector datatype (HO)
papers/latex/coalgebraic-transcendentals.log:684:Package: bigintcalc 2019/12/15 v1.5 Expandable calculations on big integers (HO
papers/latex/coalgebraic-transcendentals.log:690:Package hyperref Info: Hyper figures OFF on input line 6084.
papers/latex/coalgebraic-transcendentals.log:691:Package hyperref Info: Link nesting OFF on input line 6089.
papers/latex/coalgebraic-transcendentals.log:692:Package hyperref Info: Hyper index ON on input line 6092.
papers/latex/coalgebraic-transcendentals.log:693:Package hyperref Info: backreferencing OFF on input line 6099.
papers/latex/coalgebraic-transcendentals.log:694:Package hyperref Info: Link coloring OFF on input line 6104.
papers/latex/coalgebraic-transcendentals.log:695:Package hyperref Info: Link coloring with OCG OFF on input line 6109.
papers/latex/coalgebraic-transcendentals.log:696:Package hyperref Info: PDF/A mode OFF on input line 6114.
papers/latex/coalgebraic-transcendentals.log:701:Package hyperref Info: Driver (autodetected): hpdftex.
papers/latex/coalgebraic-transcendentals.log:709:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
papers/latex/coalgebraic-transcendentals.log:712:Package: uniquecounter 2019/12/15 v1.4 Provide unlimited unique counter (HO)
papers/latex/coalgebraic-transcendentals.log:714:Package uniquecounter Info: New unique counter `rerunfilecheck' on input line 2
papers/latex/coalgebraic-transcendentals.log:719:Package: cleveref 2018/03/27 v0.21.4 Intelligent cross-referencing
papers/latex/coalgebraic-transcendentals.log:720:Package cleveref Info: `hyperref' support loaded on input line 2370.
papers/latex/coalgebraic-transcendentals.log:731:Package cleveref Info: `amsthm' support loaded on input line 3026.
papers/latex/coalgebraic-transcendentals.log:732:Package cleveref Info: `listings' support loaded on input line 3131.
papers/latex/coalgebraic-transcendentals.log:810:Package: epstopdf-base 2020-01-24 v2.11 Base part for package epstopdf
papers/latex/coalgebraic-transcendentals.log:811:Package epstopdf-base Info: Redefining graphics rule for `.eps' on input line 4
papers/latex/coalgebraic-transcendentals.log:819:Package hyperref Info: Link coloring OFF on input line 104.
papers/latex/coalgebraic-transcendentals.log:852:Package rerunfilecheck Info: File `coalgebraic-transcendentals.out' has not cha

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '621,980p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   621	each operation is itself definable as coalgebra morphisms, which
   622	is~\cite{ghani-hancock-pattinson}).
   623	\end{example}
   624	
   625	% =============================================================
   626	\section{\texorpdfstring{Coalgebraic characterisations of $\pi$ and $e$}{Coalgebraic characterisations of pi and e}}\label{sec:pi-e}
   627	% =============================================================
   628	
   629	We now state the main results of the paper.
   630	
   631	\subsection{\texorpdfstring{The case of $e$}{The case of e}}
   632	
   633	\begin{definition}[Series coalgebra for $e$]\label{def:e-coalg}
   634	Define a coalgebra $(C_e, \gamma_e)$ on
   635	$C_e := \N \times \N \times \N \times \N \times \N$
   636	(state: $(n, k, \mathrm{num}, \mathrm{den}, \mathrm{outdig})$
   637	representing partial summation of $\sum_k 1/k!$ in base $b$),
   638	with transition $\gamma_e$ implementing the streaming
   639	factorial-series algorithm of Sale~\cite{sale-e-1968} (refined to
   640	spigot form by Rabinowitz--Wagon~\cite{rabwagon-spigot} and Gibbons~\cite{gibbons-spigot})
   641	for streaming the digits of $e$ in base $b$. Concretely,
   642	$\gamma_e(s) = (d(s), s')$ where $d(s) \in \mathsf{Fin}(b)$ is the
   643	next emitted digit and $s'$ is the updated state.
   644	\end{definition}
   645	
   646	\begin{theorem}[$e$ as final-coalgebra unfold]\label{thm:e-final}
   647	$\unfold_{\gamma_e}(s_0) = s_e \in \Stream\,\mathsf{Fin}(b)$
   648	where $s_0$ is the initial state and
   649	$\alpha_b(s_e) = e - 2 \in [0,1]$. Equivalently, the digit stream
   650	of $e$ (after subtracting the integer part) is the unique
   651	solution of the corecursive equation
   652	\[
   653	s_e = \mathsf{streamingFraction}(\langle 1/k! \rangle_{k\geq 0}).
   654	\]
   655	\end{theorem}
   656	
   657	\begin{proof}
   658	Existence is by guarded corecursion using the productivity of the
   659	streaming-factorial algorithm: the state-evolution is structurally
   660	decreasing on a measure (the rational interval bounding the
   661	unprocessed tail shrinks geometrically), so each output digit is
   662	produced after finitely many state transitions. The image under
   663	$\alpha_b$ equals $e-2$ by the algorithm's correctness
   664	theorem (a classical fact; see Sale~\cite{sale-e-1968} and the
   665	spigot-algorithm analysis in~\cite{rabwagon-spigot,gibbons-spigot}).
   666	\end{proof}
   667	
   668	\begin{definition}[Predicate $P_e$]\label{def:Pe}
   669	$P_e: \Stream\,\mathsf{Fin}(b) \to \mathsf{Prop}$ is the predicate
   670	$P_e(s) := \alpha_b(s) = e - 2$. It is observable
   671	(\Cref{def:observable}) hence closed (\Cref{lem:observable-closed}).
   672	\end{definition}
   673	
   674	\begin{theorem}[Coalgebraic characterisation of $e$]\label{thm:e-char}
   675	The type
   676	\[
   677	\Sigma_{s : \Stream\,\mathsf{Fin}(b)}\,P_e(s)
   678	\]
   679	quotiented by $\bisim_b$ is contractible. Equivalently:
   680	$e - 2$ is the unique element of $\nu F_b/{\bisim_b}$ satisfying $P_e$.
   681	\end{theorem}
   682	
   683	\begin{proof}
   684	Existence: \Cref{thm:e-final} gives an inhabitant.
   685	Uniqueness: if $s_1, s_2$ both satisfy $P_e$ then
   686	$\alpha_b(s_1) = e - 2 = \alpha_b(s_2)$, so $s_1 \bisim_b s_2$
   687	by definition of $\bisim_b$. Hence after quotient they coincide.
   688	Since the fibres of the quotient map are propositions (a
   689	consequence of working with h-sets), the total space is a
   690	proposition. Combined with inhabitation, this proves
   691	contractibility.
   692	\end{proof}
   693	
   694	\begin{remark}
   695	\Cref{thm:e-char} is internal in the sense that
   696	$P_e$ is expressed in terms of $\alpha_b$, which is itself
   697	definable by guarded corecursion. The HIIT path constructors of
   698	Booij's $\Rc$ enter only \emph{inside} $\alpha_b$. If one is
   699	willing to take $\alpha_b$ as the basic ``observation'', the
   700	characterisation is purely coalgebraic. We discuss this point
   701	further in \Cref{sec:cauchy-vs-coalg}.
   702	\end{remark}
   703	
   704	\subsection{\texorpdfstring{The case of $\pi$}{The case of pi}}
   705	
   706	For $\pi$ the situation is more subtle because no \emph{finite-state}
   707	streaming algorithm is known. We use Bailey--Borwein--Plouffe (BBP)
   708	in base 16, which is streamable digit-by-digit although the state
   709	grows linearly.
   710	
   711	\begin{definition}[BBP coalgebra]\label{def:bbp}
   712	The Bailey--Borwein--Plouffe identity (1995):
   713	\[
   714	\pi = \sum_{k=0}^\infty \frac{1}{16^k}
   715	\left(\frac{4}{8k+1} - \frac{2}{8k+4} - \frac{1}{8k+5} -
   716	\frac{1}{8k+6}\right).
   717	\]
   718	This induces a coalgebra
   719	$(C_\pi, \gamma_\pi)$ with $C_\pi$ encoding partial summation
   720	state, and $\gamma_\pi$ implementing the BBP digit extraction
   721	algorithm in base 16.
   722	\end{definition}
   723	
   724	\begin{theorem}[$\pi$ as final-coalgebra unfold]\label{thm:pi-final}
   725	$\unfold_{\gamma_\pi}(s_0) = s_\pi \in \Stream\,\mathsf{Fin}(16)$
   726	satisfies $\alpha_{16}(s_\pi) = \pi - 3$.
   727	\end{theorem}
   728	
   729	\begin{proof}
   730	By the BBP correctness theorem (which is constructively valid;
   731	see~\cite{bbp}), the partial sums $\sum_{k=0}^{n-1}$ approximate
   732	$\pi$ to within $O(16^{-n})$. The hexadecimal digit-extraction
   733	state evolves productively, so guarded corecursion yields a
   734	stream whose image under $\alpha_{16}$ equals $\pi - 3$.
   735	\end{proof}
   736	
   737	\begin{definition}[Predicate $P_\pi$]\label{def:Ppi}
   738	$P_\pi: \Stream\,\mathsf{Fin}(16) \to \mathsf{Prop}$ is
   739	$P_\pi(s) := \alpha_{16}(s) = \pi - 3$. Closed by
   740	\Cref{lem:observable-closed}.
   741	\end{definition}
   742	
   743	\begin{theorem}[Coalgebraic characterisation of $\pi$]\label{thm:pi-char}
   744	The type
   745	$\Sigma_{s : \Stream\,\mathsf{Fin}(16)}\,P_\pi(s)$ quotiented by
   746	$\bisim_{16}$ is contractible.
   747	\end{theorem}
   748	
   749	\begin{proof}
   750	Same structure as \Cref{thm:e-char}, using \Cref{thm:pi-final}.
   751	\end{proof}
   752	
   753	\subsection{\texorpdfstring{Internalisation: removing the reference to $\Rc$}{Internalisation: removing the reference to R\_c}}
   754	
   755	\Cref{thm:e-char} and \Cref{thm:pi-char} reference $e-2$ and
   756	$\pi - 3$ as elements of $\Rc$, hence implicitly the HIIT.
   757	We now upgrade these to characterisations expressed
   758	\emph{purely} in terms of bisimulations between streams.
   759	
   760	\begin{theorem}[Internal characterisation of $e$]\label{thm:e-internal}
   761	There is a stream $s^* \in \Stream\,\mathsf{Fin}(b)$ defined by
   762	guarded corecursion (no use of $\Rc$ or HIIT) such that:
   763	\begin{enumerate}
   764	\item $s_e \bisim_b s^*$, where $s_e$ is from \Cref{thm:e-final}.
   765	\item For any stream $t$, if $t$ satisfies the corecursive equation
   766	$\out(t) = \gamma_e(\mathrm{state}(t))$ for the (no-$\Rc$) state
   767	projection $\mathrm{state}: \Stream \to \N^5$ (a partial function
   768	defined on the image of $\unfold_{\gamma_e}$, see \Cref{app:state}),
   769	then $s^* \bisim_b t$.
   770	\end{enumerate}
   771	The unique-existence is proved by coinduction up-to-context.
   772	\end{theorem}
   773	
   774	\begin{proof}
   775	Take $s^* := \unfold_{\gamma_e}(s_0)$ where $\gamma_e$ from
   776	\Cref{def:e-coalg} is purely combinatorial (state in $\N^5$, no
   777	real numbers; the explicit transition rules are spelled out in
   778	\Cref{app:state}). Existence: \Cref{thm:e-final}.
   779	
   780	Uniqueness is the substantive part. Suppose $t \in \Stream\,\mathsf{Fin}(b)$
   781	satisfies the equation $\out(t) = \gamma_e(\mathrm{state}(t))$ for some
   782	state-projection function $\mathrm{state}: \Stream \to \N^5$ that
   783	agrees with $s_0$ at $t$. Define the relation
   784	\[
   785	R(u_1, u_2) \;:=\; \Sigma_{c:\N^5}\,
   786	  \bigl( u_1 = \unfold_{\gamma_e}(c) \bigr)\times
   787	  \bigl( u_2 = \unfold_{\gamma_e}(c) \bigr).
   788	\]
   789	This is reflexive on the image of $\unfold_{\gamma_e}$. We claim
   790	$R$ is a bisimulation \emph{up-to the closure} $\Phi$ defined by
   791	$\Phi(R)(v_1,v_2) := \Sigma_{c}\,R(\unfold_{\gamma_e}(c),\unfold_{\gamma_e}(c))$
   792	(equivalently, $\Phi$ is the equivalence-closure under
   793	$\unfold_{\gamma_e}$-substitution; this is compatible by the
   794	example following \Cref{thm:upto-sound}). To verify
   795	the bisimulation-up-to property: given $R(u_1,u_2)$ with witness
   796	$c$, both heads equal $\pi_1(\gamma_e(c))$ and both tails
   797	equal $\unfold_{\gamma_e}(\pi_2(\gamma_e(c)))$, so heads agree
   798	and tails are again related (with the new witness
   799	$\pi_2(\gamma_e(c))$). By \Cref{thm:upto-sound} $R \subseteq \bisim$,
   800	and by \Cref{thm:coinduction} $R(s^*, t)$ implies $s^* = t$.
   801	
   802	Now apply this with $u_1 := s^* = \unfold_{\gamma_e}(s_0)$ and
   803	$u_2 := t$: we need to exhibit a $c$ with $t = \unfold_{\gamma_e}(c)$.
   804	Such a $c$ is provided by $\mathrm{state}(t) = s_0$ together with
   805	the corecursive equation, by another application of coinduction
   806	(using $R'(v_1,v_2) := \exists c.\,v_2 = \unfold_{\gamma_e}(c)\wedge
   807	\mathrm{state}(v_1) = c\wedge v_1\text{ satisfies the equation}$).
   808	Hence $s^* = t$.
   809	
   810	Therefore $s^*$ is the unique stream satisfying the corecursive
   811	equation, and the bisimulation class
   812	$[s^*] \in \Stream/{\bisim_b}$ is uniquely identified by an
   813	internal predicate.
   814	\end{proof}
   815	
   816	\begin{theorem}[Internal characterisation of $\pi$]\label{thm:pi-internal}
   817	There is a stream $s^*_\pi \in \Stream\,\mathsf{Fin}(16)$
   818	defined by guarded corecursion (no use of $\Rc$) such that
   819	$s^*_\pi \bisim_{16} s_\pi$ uniquely up to bisimulation,
   820	characterised by the recursion:
   821	\[
   822	\out(s^*_\pi) = \gamma_\pi^{\text{combinatorial}}(\mathrm{state}_0).
   823	\]
   824	\end{theorem}
   825	
   826	\begin{proof}
   827	The argument is structurally identical to that of
   828	\Cref{thm:e-internal}. Concretely, replace $\gamma_e$ by the
   829	combinatorial BBP transition function $\gamma_\pi^{\text{combinatorial}}$:
   830	its state space is $\N^k$ (with $k=4$ corresponding to the four
   831	sub-series in BBP, plus a position counter; see~\cite{bbp})
   832	holding the integer numerators and denominators of the modular
   833	partial sums. The relation
   834	\[
   835	R(u_1, u_2) \;:=\; \Sigma_{c:\N^k}\,
   836	  ( u_1 = \unfold_{\gamma_\pi^{\text{combinatorial}}}(c))\times
   837	  ( u_2 = \unfold_{\gamma_\pi^{\text{combinatorial}}}(c))
   838	\]
   839	is a bisimulation up-to the substitution-closure $\Phi$, by the
   840	same head/tail computation as in \Cref{thm:e-internal}, and the
   841	BBP modular-arithmetic update of $c$ ensures the up-to-context
   842	operator is compatible (as in the arithmetic example following
   843	\Cref{thm:upto-sound}). By \Cref{thm:upto-sound,thm:coinduction}
   844	$s^*_\pi$ is the unique stream up to $\bisim_{16}$ satisfying the
   845	BBP corecursive equation.
   846	\end{proof}
   847	
   848	\begin{remark}[What \Cref{thm:e-internal} and \Cref{thm:pi-internal} do and do not say]
   849	\label{rem:internal-scope}
   850	The key advance of \Cref{thm:e-internal} and \Cref{thm:pi-internal}
   851	over \Cref{thm:e-char} and \Cref{thm:pi-char} is that the
   852	characterising predicate is now of the form ``satisfies the
   853	corecursive equation $\out(s) = \gamma(\mathrm{state}(s))$'',
   854	expressed purely in terms of $\out$, $\hd$, $\tl$, and
   855	combinatorial operations on $\N$.
   856	No reference to $\Rc$ or its path constructors is needed. This
   857	realises programmes (a)--(c) of \cite[\S 9.2]{paperIII} with
   858	$F = F_b$ and $P = P_\pi$ resp.\ $P_e$.
   859	
   860	We are however candid about a limitation: the predicate
   861	``$s$ satisfies the corecursive equation
   862	$\out(s)=\gamma(\mathrm{state}(s))$'' is, in a sense, exactly the
   863	description of being the unfold of $\gamma$, and the state
   864	projection $\mathrm{state}$ is canonically defined only on the
   865	image of $\unfold_\gamma$ (see \Cref{app:state}). Read
   866	\emph{externally}, the theorem says: ``the unique stream
   867	satisfying the corecursive equation for algorithm $X$ is the
   868	stream generated by algorithm $X$.'' This is not yet a
   869	characterisation of $\pi$ or $e$ as classical reals \emph{without
   870	reference to any external structure}. Such a fully external
   871	characterisation would require either (a) an internal proof that
   872	two distinct combinatorial algorithms (e.g.\ Leibniz and BBP) are
   873	bisimilar, or (b) an internal axiomatisation of which streams
   874	are ``transcendental''.
   875	
   876	What \Cref{thm:e-internal,thm:pi-internal} \emph{do} establish
   877	is that the bisimulation classes
   878	\[
   879	  [s_e]_{\bisim_b} \in \Stream/{\bisim_b}
   880	  \qquad\text{and}\qquad
   881	  [s_\pi]_{\bisim_{16}} \in \Stream/{\bisim_{16}}
   882	\]
   883	are the unique fixed points of combinatorial corecursive
   884	equations, with no path-constructor data (HIIT-data) needed to
   885	express the predicate.
   886	This is a strict logical advance over the inductive
   887	characterisation of Paper~V Definition 8.1, which uses sin-zero
   888	data internal to $\Rc$. The remaining ``gap'' is exactly
   889	\Cref{prob:internal} below.
   890	\end{remark}
   891	
   892	\subsection{\texorpdfstring{Comparison: Leibniz, Machin, BBP all name the same $\pi$}{Comparison: Leibniz, Machin, BBP all name the same pi}}
   893	
   894	To illustrate the strength of bisimulation as an equality
   895	principle in HoTT, we show how three distinct corecursive
   896	definitions of $\pi$-as-stream are proved equal by
   897	coinduction.
   898	
   899	\begin{definition}[Three coalgebras for $\pi$]\label{def:three-pi}
   900	Let $\gamma_L$ (Leibniz), $\gamma_M$ (Machin), $\gamma_B$ (BBP)
   901	be three coalgebras whose unfolds in base 10 (resp.\ 10, 16)
   902	yield streams $s_L, s_M, s_B$. Each algorithm is a corecursive
   903	streaming version of the corresponding analytic identity for
   904	$\pi$.
   905	\end{definition}
   906	
   907	\begin{proposition}\label{prop:three-equal}
   908	$s_L \bisim_{10} s_M$, and
   909	$s_L \bisim_{10} \mathrm{base\text{-}conversion}(s_B)$.
   910	\end{proposition}
   911	
   912	\begin{proof}
   913	$\alpha_{10}(s_L) = \alpha_{10}(s_M) = \pi - 3 = \alpha_{10}(\mathrm{conv}(s_B))$
   914	by classical analytic identities (Leibniz, Machin, BBP all sum to
   915	$\pi$). Bisimulation follows from \Cref{lem:observable-closed} and
   916	the definition of $\bisim_b$ as the kernel of $\alpha_b$.
   917	\end{proof}
   918	
   919	\begin{remark}[Limitation: external vs.\ internal equivalence]
   920	\Cref{prop:three-equal} \emph{factors through} the approximation
   921	map $\alpha_{10}$, hence through $\Rc$. This is therefore not
   922	yet a fully \emph{internal} proof of bisimilarity: the
   923	equality of streams is established by mapping to the inductive
   924	$\Rc$, computing the values, and pulling back along the kernel
   925	of $\alpha_{10}$.
   926	
   927	A truly internal proof would establish a direct stream-level
   928	bisimulation between the Leibniz, Machin, and BBP state machines
   929	(after base conversion). Schematically, one might construct a
   930	\emph{product coalgebra} on $C_L \times C_M \times C_B'$
   931	(running all three algorithms in parallel, with $C_B'$ the
   932	base-converted BBP state), together with an invariant
   933	$I \subseteq C_L \times C_M \times C_B'$ asserting that the
   934	three running partial sums agree to within a shrinking
   935	$10^{-n}$ window. The bisimulation
   936	$R(u_L, u_M, u_B) := \exists (c_L, c_M, c_B) \in I.\,
   937	\bigwedge u_X = \unfold_{\gamma_X}(c_X)$
   938	would then be \emph{coinductively} a bisimulation, and
   939	\Cref{thm:coinduction} would conclude. The technical obstacle
   940	is constructing the invariant $I$ in HoTT without circular
   941	reference to the value of $\pi$. This is precisely the form
   942	\Cref{prob:internal} would take and we do not claim a solution.
   943	
   944	The conceptual picture is striking even in the weaker
   945	``factor-through-$\Rc$'' form: in HoTT, \emph{algorithm
   946	equivalence} on streams becomes \emph{path-equality} on the
   947	final coalgebra, and coinduction is the proof method.
   948	\end{remark}
   949	
   950	% =============================================================
   951	\section{Cubical M-types and stream realisation}\label{sec:cubical}
   952	% =============================================================
   953	
   954	We sketch the cubical-HoTT realisation of the M-type used
   955	above, following ACS~\cite{ACS}.
   956	
   957	\subsection{The M-type construction}
   958	
   959	\begin{definition}[M-type]\label{def:Mtype}
   960	For container $(A,B)$, define
   961	\[
   962	M\,A\,B \;:=\; \lim_{n}\,W_n
   963	\]
   964	where $W_0 = \mathbf{1}$, $W_{n+1} = \Sigma_{a:A}(B(a) \to W_n)$,
   965	and the limit is taken along the projections induced by the unique
   966	map $W_1 \to W_0 = \mathbf{1}$.
   967	\end{definition}
   968	
   969	\begin{theorem}[Cubical M-type, ACS]\label{thm:cubicalM}
   970	In cubical HoTT (CCHM), the limit \Cref{def:Mtype} exists and
   971	$M\,A\,B$ is the carrier of the final $F_{(A,B)}$-coalgebra.
   972	The destructor $\out: M\,A\,B \to F_{(A,B)}(M\,A\,B)$ is the
   973	projection onto the first level.
   974	\end{theorem}
   975	
   976	\begin{remark}[Why cubical, not just MLTT]
   977	In plain MLTT one cannot prove that $\out$ is an equivalence
   978	(\Cref{lem:lambek}) without function extensionality and
   979	$\eta$-rules. Cubical HoTT provides function extensionality
   980	\emph{judgmentally} (via path-application) and treats

exec
/usr/local/bin/zsh -lc 'latexmk -pdf -interaction=nonstopmode -halt-on-error coalgebraic-transcendentals.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex
exec
/usr/local/bin/zsh -lc 'chktex -q -n1 -n8 -n36 papers/latex/coalgebraic-transcendentals.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 38 in papers/latex/coalgebraic-transcendentals.tex line 214: You should not use punctuation in front of quotes.
This separates the question ``what does $\pi$ name?'' into a  
                                                  ^
Warning 3 in papers/latex/coalgebraic-transcendentals.tex line 241: You should enclose the previous parenthesis with `{}'.
\pi = 4\sum_{n=0}^\infty \frac{(-1)^n}{2n+1}.  
                                  ^
Warning 24 in papers/latex/coalgebraic-transcendentals.tex line 281: Delete this space to maintain correct pagereferences.
\label{def:poly}  
^
Warning 40 in papers/latex/coalgebraic-transcendentals.tex line 637: You should put punctuation outside inner math mode.
representing partial summation of $\sum_k 1/k!$ in base $b$),  
                                             ^
Warning 13 in papers/latex/coalgebraic-transcendentals.tex line 756: Intersentence spacing (`\@') should perhaps be used.
$\pi - 3$ as elements of $\Rc$, hence implicitly the HIIT.  
                                                         ^
Warning 24 in papers/latex/coalgebraic-transcendentals.tex line 849: Delete this space to maintain correct pagereferences.
\label{rem:internal-scope}  
^
Warning 2 in papers/latex/coalgebraic-transcendentals.tex line 857: Non-breaking space (`~') should have been used.
realises programmes (a)--(c) of \cite[\S 9.2]{paperIII} with  
                               ^
Warning 38 in papers/latex/coalgebraic-transcendentals.tex line 868: You should not use punctuation in front of quotes.
stream generated by algorithm $X$.'' This is not yet a  
                                 ^
Warning 3 in papers/latex/coalgebraic-transcendentals.tex line 879: You should enclose the previous parenthesis with `{}'.
  [s_e]_{\bisim_b} \in \Stream/{\bisim_b}  
      ^
Warning 3 in papers/latex/coalgebraic-transcendentals.tex line 881: You should enclose the previous parenthesis with `{}'.
  [s_\pi]_{\bisim_{16}} \in \Stream/{\bisim_{16}}  
        ^
Warning 35 in papers/latex/coalgebraic-transcendentals.tex line 1005: You should perhaps use `\lim' instead.
Recursor: $f(\mathrm{rat}\,q),\,f(\mathrm{lim}\,x),\,f(\mathrm{path}\,\dots)$ & Corecursor: $\hd(\unfold(c)),\,\tl(\unfold(c))$\\  
                                          ^^^
Warning 35 in papers/latex/coalgebraic-transcendentals.tex line 1047: You should perhaps use `\lim' instead.
$f(\mathrm{lim}\,x)$, and verify path coherence.  
           ^^^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1170: Interword spacing (`\ ') should perhaps be used.
\subsection{The carry-bisimulation as HIT vs. propositional truncation}  
                                             ^
Warning 3 in papers/latex/coalgebraic-transcendentals.tex line 1204: You should enclose the previous parenthesis with `{}'.
\item Catalan's constant $G = \sum_{n=0}^\infty (-1)^n/(2n+1)^2$  
                                                   ^
Warning 3 in papers/latex/coalgebraic-transcendentals.tex line 1204: You should enclose the previous parenthesis with `{}'.
\item Catalan's constant $G = \sum_{n=0}^\infty (-1)^n/(2n+1)^2$  
                                                            ^
Warning 13 in papers/latex/coalgebraic-transcendentals.tex line 1235: Intersentence spacing (`\@') should perhaps be used.
Formulate a coalgebraic Lindemann--Weierstrass theorem in HoTT.  
                                                              ^
Warning 24 in papers/latex/coalgebraic-transcendentals.tex line 1292: Delete this space to maintain correct pagereferences.
\label{app:prereq}  
^
Warning 2 in papers/latex/coalgebraic-transcendentals.tex line 1299: Non-breaking space (`~') should have been used.
(see \cite{HoTTbook,booij,rutten,ACS,jacobs}), or a routine  
    ^
Warning 13 in papers/latex/coalgebraic-transcendentals.tex line 1315: Intersentence spacing (`\@') should perhaps be used.
in the form proved by ACS.  
                         ^
Warning 24 in papers/latex/coalgebraic-transcendentals.tex line 1357: Delete this space to maintain correct pagereferences.
\label{app:state}  
^
Warning 2 in papers/latex/coalgebraic-transcendentals.tex line 1399: Non-breaking space (`~') should have been used.
By \cite[\S 6]{poussangiorgi}, an up-to operator is compatible  
  ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1413: Interword spacing (`\ ') should perhaps be used.
Long, M. (2026). \emph{Universal Properties of Real Numbers and  
                ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1417: Interword spacing (`\ ') should perhaps be used.
Long, M. (2026). \emph{The HoTT Perspective: Numbers as Inductive  
                ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1422: Interword spacing (`\ ') should perhaps be used.
Long, M. (2026). \emph{The Univalent Correspondence: How Six  
                ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1427: Interword spacing (`\ ') should perhaps be used.
Booij, A. (2020). \emph{Analysis in Univalent Type Theory}.  
                 ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1432: Interword spacing (`\ ') should perhaps be used.
systems. \emph{Theoretical Computer Science} 249(1):3--80.  
        ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1435: Interword spacing (`\ ') should perhaps be used.
Jacobs, B. (2016). \emph{Introduction to Coalgebra: Towards  
                  ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1441: Interword spacing (`\ ') should perhaps be used.
trees in homotopy type theory. \emph{Proc.\ TLCA}.  
                              ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1446: Interword spacing (`\ ') should perhaps be used.
univalence axiom. \emph{IfCoLog Journal of Logics}.  
                 ^
Warning 13 in papers/latex/coalgebraic-transcendentals.tex line 1457: Intersentence spacing (`\@') should perhaps be used.
Bisimulation and Coinduction}, CUP.  
                                  ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1461: Interword spacing (`\ ') should perhaps be used.
functions on final coalgebras. \emph{ENTCS} 249:3--18.  
                              ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1465: Interword spacing (`\ ') should perhaps be used.
digits. \emph{The Computer Journal} 11(2):229--230.  
       ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1469: Interword spacing (`\ ') should perhaps be used.
digits of $\pi$. \emph{American Math.\ Monthly} 102:195--203.  
                ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1473: Interword spacing (`\ ') should perhaps be used.
of pi. \emph{American Math.\ Monthly} 113:318--328.  
      ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1481: Interword spacing (`\ ') should perhaps be used.
Weihrauch, K. (2000). \emph{Computable Analysis: An Introduction}.  
                     ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1486: Interword spacing (`\ ') should perhaps be used.
$L$-functions in Lean. \emph{Annals of Formalized Mathematics} 1.  
                      ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1490: Interword spacing (`\ ') should perhaps be used.
The Univalent Foundations Program. (2013). \emph{Homotopy Type  
                                          ^
Warning 13 in papers/latex/coalgebraic-transcendentals.tex line 1496: Intersentence spacing (`\@') should perhaps be used.
foundations of mathematics. Lecture series, IAS.  
                                               ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1500: Interword spacing (`\ ') should perhaps be used.
group of the circle in homotopy type theory. \emph{Proc.\ LICS}.  
                                            ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1503: Interword spacing (`\ ') should perhaps be used.
Coquand, T. (1994). Infinite objects in type theory. \emph{Types  
                                                    ^
Warning 13 in papers/latex/coalgebraic-transcendentals.tex line 1504: Intersentence spacing (`\@') should perhaps be used.
for Proofs and Programs}, Springer LNCS.  
                                       ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1512: Interword spacing (`\ ') should perhaps be used.
Aczel, P. (1988). \emph{Non-Well-Founded Sets}. CSLI Lecture  
                 ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1517: Interword spacing (`\ ') should perhaps be used.
streams revisited. \emph{Journal of Automated Reasoning}.  
                  ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1520: Interword spacing (`\ ') should perhaps be used.
Kleene, S.C. (1952). \emph{Introduction to Metamathematics}.  
                    ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1525: Interword spacing (`\ ') should perhaps be used.
to the Entscheidungsproblem. \emph{Proc.\ London Math.\ Soc.}\ 42:230--265.  
                            ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1529: Interword spacing (`\ ') should perhaps be used.
univalent foundations (after Voevodsky). \emph{Journal of the  
                                        ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1534: Interword spacing (`\ ') should perhaps be used.
homotopy type theory. \emph{Math.\ Structures Comp.\ Sci.}\ 28:856--941.  
                     ^
Warning 12 in papers/latex/coalgebraic-transcendentals.tex line 1537: Interword spacing (`\ ') should perhaps be used.
Sangiorgi, D. (2012). \emph{Introduction to Bisimulation and  
                     ^

 succeeded in 647ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./coalgebraic-transcendentals.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/graphics.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-def/pdftex.def)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics-cfg/color.cfg)
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/mathcolor.ltx))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/frontendlayer/tikz.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgf.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/utilities/pgfrcs.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-common.te
x)
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfutil-latex.def
) (/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/utilities/pgfrcs.code.tex
(/usr/local/texlive/2026/texmf-dist/tex/generic/pgf/pgf.revision.tex)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/pgf/basiclayer/pgfcore.sty
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
code.tex))
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/tabularx.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/tools/array.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/booktabs/booktabs.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstpatch.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/lstmisc.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.cfg))
==> First Aid for listings.sty no longer applied!
    Expected:
        2024/09/23 1.10c (Carsten Heinz)
    but found:
        2025/11/14 1.11b (Carsten Heinz)
    so I'm assuming it got fixed.
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(./coalgebraic-transcendentals.aux)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(./coalgebraic-transcendentals.out) (./coalgebraic-transcendentals.out)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(./coalgebraic-transcendentals.toc [1{/usr/local/texlive/2026/texmf-var/fonts/m
ap/pdftex/updmap/pdftex.map}{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips
/cm-super/cm-super-ts1.enc}]) [2] [3] [4] [5] [6] [7] [8] [9] [10] [11]
[12] [13] [14] [15] [16] [17] [18] [19] [20] [21] [22]
(./coalgebraic-transcendentals.aux) )</usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/t
ype1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texmf-dist/fonts/ty
pe1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type
1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1
/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/p
ublic/amsfonts/cm/cmmi6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfont
s/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/c
m/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm
/cmss8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/c
mssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/
cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/c
msy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cms
y8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmti1
0.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmti12
.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmti8.p
fb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmtt12.pf
b></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/symbols/msam1
0.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/symbols/m
sbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm-super/sfrm1
095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm-super/sfrm120
0.pfb>
Output written on coalgebraic-transcendentals.pdf (22 pages, 403222 bytes).
Transcript written on coalgebraic-transcendentals.log.
Latexmk: Getting log file 'coalgebraic-transcendentals.log'
Latexmk: Examining 'coalgebraic-transcendentals.fls'
Latexmk: Examining 'coalgebraic-transcendentals.log'
Latexmk: Log file says output to 'coalgebraic-transcendentals.pdf'
Latexmk: All targets (coalgebraic-transcendentals.pdf) are up-to-date


codex
The rebuild completes under `pdflatex` with no hard compilation error. I’m now checking the post-build log and the remaining source sections for reference/style problems that still produce warnings or bad output.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/coalgebraic-transcendentals.tex | sed -n '981,1565p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   981	M-types coherently with the path structure, which is what we
   982	need for the coinduction principle to compute.
   983	\end{remark}
   984	
   985	\subsection{Productivity and guarded recursion}
   986	
   987	In cubical HoTT, the topos of trees~\cite{birkedal} provides a
   988	guarded modality $\rhd$ (read ``later''). Streams are then a fixed point
   989	$\Stream\,A \cong A \times \rhd \Stream\,A$, and corecursion is
   990	just guarded recursion: the recursive call is hidden under $\rhd$,
   991	ensuring productivity at the type level. This is what makes our
   992	$\unfold_\gamma$ judgmentally well-defined.
   993	
   994	% =============================================================
   995	\section{Comparison with the Cauchy HIIT}\label{sec:cauchy-vs-coalg}
   996	% =============================================================
   997	
   998	\subsection{Side-by-side}
   999	
  1000	\begin{center}
  1001	\begin{tabularx}{\textwidth}{>{\raggedright\arraybackslash}X>{\raggedright\arraybackslash}X}
  1002	\toprule
  1003	\textbf{Inductive (Booij/HoTT Cauchy)} & \textbf{Coinductive (final coalgebra)}\\\midrule
  1004	HIIT $\Rc$ with rat, lim, path-constr & M-type $\Stream\,\mathsf{Fin}(b)$ + $\bisim_b$\\
  1005	Recursor: $f(\mathrm{rat}\,q),\,f(\mathrm{lim}\,x),\,f(\mathrm{path}\,\dots)$ & Corecursor: $\hd(\unfold(c)),\,\tl(\unfold(c))$\\
  1006	$\pi := $ centre of contractible sin-zero type (Paper~V Def.~8.1) & $\pi := $ centre of contractible BBP unfold type (\Cref{thm:pi-internal})\\
  1007	Equality by computation rule + truncation & Equality by bisimulation\\
  1008	Computational content: Cauchy realiser & Computational content: digit stream\\
  1009	$\Rc$ has join-semilattice + lim-axioms & $\Stream/{\bisim_b}$ has digit-shift action\\
  1010	\bottomrule
  1011	\end{tabularx}
  1012	\end{center}
  1013	
  1014	\subsection{Equivalence theorem}
  1015	
  1016	\begin{theorem}[Inductive--Coinductive equivalence]\label{thm:hiitequal}
  1017	There is a HoTT equivalence
  1018	\[
  1019	\beta_b: \Stream\,\mathsf{Fin}(b)/{\bisim_b}\;\simeq\;[0,1]\subset\Rc
  1020	\]
  1021	sending the bisimulation class of $s$ to $\alpha_b(s)$.
  1022	\end{theorem}
  1023	
  1024	\begin{proof}
  1025	Forward direction by \Cref{thm:01-quotient}. Inverse: given
  1026	$x \in [0,1]\cap \Rc$, produce its base-$b$ digit stream by
  1027	the floor algorithm of \Cref{lem:approx-surj}; the resulting
  1028	class $[s]\in\Stream/{\bisim_b}$ is well-defined because
  1029	two different digit-expansion choices for the same $x$ differ
  1030	only at carry boundaries (the $0.999\dots = 1$ identifications),
  1031	which is exactly $\bisim_b$.
  1032	\end{proof}
  1033	
  1034	\begin{corollary}\label{cor:both-pi}
  1035	Under $\beta_b$, the inductive $\pi$ (Paper~V Definition 8.1) and
  1036	the coinductive $\pi$ (\Cref{thm:pi-internal}) coincide.
  1037	\end{corollary}
  1038	
  1039	\subsection{Why the duality matters}
  1040	
  1041	\Cref{thm:hiitequal} says the two presentations describe the
  1042	same mathematical object. But \emph{computationally} they differ:
  1043	
  1044	\begin{itemize}
  1045	\item The inductive presentation supports \emph{recursion}:
  1046	to define $f: \Rc \to X$ specify $f(\mathrm{rat}\,q)$,
  1047	$f(\mathrm{lim}\,x)$, and verify path coherence.
  1048	\item The coinductive presentation supports \emph{corecursion}:
  1049	to define $g: X \to \Stream$ specify $\hd(g(c))$ and $\tl(g(c))$
  1050	in terms of head/tail of an evolving state.
  1051	\end{itemize}
  1052	
  1053	For the transcendentals, the natural definitions are
  1054	\emph{corecursive}: $e$ and $\pi$ are typically given by
  1055	streaming-digit algorithms (Sale, BBP, spigot algorithms in
  1056	general). The coinductive presentation matches these algorithms
  1057	\emph{judgmentally}; the inductive presentation requires a layer
  1058	of approximation-and-quotient.
  1059	
  1060	% =============================================================
  1061	\section{\texorpdfstring{Connection to the $\zeta$-prerequisite chain}{Connection to the zeta-prerequisite chain}}\label{sec:zeta}
  1062	% =============================================================
  1063	
  1064	\subsection{The principal open problem}
  1065	
  1066	The synthesis paper~\cite[\S 7.3, \S 8 item 2]{synthesis} identifies
  1067	``$\zeta(s)=0$ as a HoTT-native statement'' as the principal open
  1068	problem. Loeffler--Stoll~\cite{loefflerstoll} formalised
  1069	$\zeta$ in classical Lean/Mathlib (3300 lines for the analytic
  1070	continuation alone), but no HoTT-native formalisation of the
  1071	Riemann zeta function is known.
  1072	
  1073	The coalgebraic toolkit developed here suggests an attack route:
  1074	
  1075	\begin{conjecture}[Coalgebraic $\zeta$]\label{conj:zeta}
  1076	There is a polynomial endofunctor $H: \Type \to \Type$ with $\nu H$
  1077	modelling the Riemann zeta function as a stream of digits in some
  1078	base parametrised by the complex argument $s \in \mathbb{C}_c$,
  1079	such that:
  1080	\begin{enumerate}
  1081	\item For $s$ with $\Re(s) > 1$, $\unfold_{\gamma_\zeta(s)}$ produces
  1082	the stream of digits of $\zeta(s)$ via the Dirichlet series.
  1083	\item For $s$ in the analytic continuation domain $\mathbb{C}_c\setminus\{1\}$,
  1084	$\unfold_{\gamma_\zeta'(s)}$ produces digits via Hurwitz formula.
  1085	\item There is a bisimulation-closed predicate
  1086	$P_{\zeta=0}: \nu H \to \mathsf{Prop}$ such that $\zeta(s) = 0$
  1087	in $\mathbb{C}_c$ iff the unique unfold satisfies $P_{\zeta=0}$.
  1088	\end{enumerate}
  1089	\end{conjecture}
  1090	
  1091	This conjecture is open. We make some progress in
  1092	\Cref{prop:dirichlet-stream} below.
  1093	
  1094	\subsection{Dirichlet series as stream}
  1095	
  1096	\begin{proposition}[Dirichlet partial-sum stream]\label{prop:dirichlet-stream}
  1097	For $s \in \mathbb{C}_c$ with $\Re(s) > 1$, define a coalgebra
  1098	$(C_s, \gamma_s)$ on $C_s := \N \times \mathbb{C}_c$ with
  1099	$\gamma_s(n, z) = (\mathrm{digit}(z'), (n+1, z'))$ where
  1100	$z' = z + n^{-s}$ (the next partial-sum). Then
  1101	$\alpha_b(\unfold_{\gamma_s}(0,0)) = \zeta(s)$, modulo
  1102	the carry-bisimulation.
  1103	\end{proposition}
  1104	
  1105	\begin{proof}[Proof sketch]
  1106	The partial sums $\sum_{n=1}^N n^{-s}$ form a Cauchy approximation
  1107	to $\zeta(s)$ for $\Re(s) > 1$ (standard fact, constructive proof in
  1108	Booij's framework). Streaming digits is then \Cref{def:approx} applied
  1109	to that Cauchy approximation.
  1110	\end{proof}
  1111	
  1112	\Cref{prop:dirichlet-stream} only handles the convergence
  1113	half-plane. The hard part is analytic continuation (steps 2 and 3
  1114	of \Cref{conj:zeta}). The classical Mellin-transform approach
  1115	(Loeffler--Stoll) does not obviously translate to the coalgebraic
  1116	setting because contour integration along non-trivial paths in
  1117	$\mathbb{C}_c$ is itself a non-trivial constructive issue. We
  1118	mark this as the principal open problem of the present series.
  1119	
  1120	\subsection{Toward analytic continuation coalgebraically}
  1121	
  1122	A possible attack: use the functional equation of $\zeta$,
  1123	\[
  1124	\zeta(s) = 2^s \pi^{s-1} \sin\!\left(\frac{\pi s}{2}\right)
  1125	\Gamma(1-s)\,\zeta(1-s),
  1126	\]
  1127	to define $\zeta$ on $\Re(s) < 0$ by reflection. This is a
  1128	\emph{recursive} definition (refer $\zeta(s)$ to $\zeta(1-s)$),
  1129	which corresponds in our framework to a \emph{morphism between
  1130	two coalgebras} for the same functor $H$, with the morphism
  1131	implementing the $s \leftrightarrow 1-s$ symmetry. A
  1132	construction of such a morphism in HoTT requires:
  1133	
  1134	\begin{itemize}
  1135	\item A coalgebraic $\sin$ and $\Gamma$ in $\mathbb{C}_c$ (the
  1136	former is approachable via the universal property of $\exp$ from
  1137	Paper~III \S 4.3; the latter is significantly harder).
  1138	\item A coalgebraic $z^s$ (complex exponentiation), again via
  1139	$\exp$ and $\log$.
  1140	\end{itemize}
  1141	
  1142	This is a substantial programme; we leave it as a long-term goal
  1143	of the YonedaAI HoTT mathematics initiative.
  1144	
  1145	% =============================================================
  1146	\section{Open problems and future work}\label{sec:open}
  1147	% =============================================================
  1148	
  1149	\subsection{The internalisation gap}
  1150	
  1151	\Cref{thm:e-internal} and \Cref{thm:pi-internal} characterise
  1152	$\pi, e$ via combinatorial corecursive equations. But the
  1153	correctness theorems (that the unfold equals $\pi - 3$ resp.\
  1154	$e - 2$) still reference $\Rc$ via $\alpha_b$.
  1155	
  1156	\begin{problem}[Fully internal correctness]\label{prob:internal}
  1157	Find a HoTT statement $\Phi(s)$ in the language of streams alone
  1158	(no $\Rc$, no $\alpha_b$) such that
  1159	$\Phi(s_\pi) \leftrightarrow \mathrm{ChurchRosserlikeProperty}(s_\pi)$,
  1160	where the property captures $\alpha_{16}(s_\pi) = \pi - 3$ via a
  1161	purely stream-theoretic invariant.
  1162	\end{problem}
  1163	
  1164	A candidate: stream-bisimulation between $s_\pi$ and the unfold
  1165	of an alternative coalgebra (Machin, Leibniz after base
  1166	conversion). This makes the correctness theorem a
  1167	bisimulation-only statement, but at the cost of relating
  1168	\emph{distinct combinatorial} algorithms via coinduction.
  1169	
  1170	\subsection{The carry-bisimulation as HIT vs. propositional truncation}
  1171	
  1172	The quotient $\Stream/{\bisim_b}$ in \Cref{thm:01-quotient} can
  1173	be presented as either (i) a set-quotient HIT, or (ii) a Voevodsky
  1174	propositional truncation of the equivalence relation. The two are
  1175	HoTT-equal by univalence-for-sets but differ in computation.
  1176	
  1177	\begin{problem}\label{prob:carry-hit}
  1178	Compare the cubical realisation of $\Stream/{\bisim_b}$ as set-HIT
  1179	vs.\ propositional truncation. Which presentation makes
  1180	$\beta_b: \Stream/{\bisim_b} \simeq [0,1]$ \emph{computational}
  1181	(i.e.\ $\beta_b \circ \beta_b^{-1} \equiv \id$ judgmentally)?
  1182	\end{problem}
  1183	
  1184	\subsection{\texorpdfstring{Productivity and the totality of $\unfold$}{Productivity and the totality of unfold}}
  1185	
  1186	In MLTT-without-cubical, the totality of $\unfold$ requires a
  1187	guardedness check on the coalgebra. In our case the BBP and
  1188	Sale algorithms are guarded by construction (each step emits
  1189	exactly one digit and modifies state), but a fully formal
  1190	proof of guardedness is currently absent in our Lean
  1191	artefact.
  1192	
  1193	\begin{problem}\label{prob:lean-productivity}
  1194	Formalise productivity of the BBP and Sale digit-extraction
  1195	algorithms in Lean~4/Mathlib using the \texttt{Stream'} API and
  1196	the \texttt{Coinductive} machinery.
  1197	\end{problem}
  1198	
  1199	\subsection{Higher transcendentals}
  1200	
  1201	The methods of this paper apply (with the obvious modifications) to other
  1202	transcendentals with known spigot/streaming algorithms:
  1203	\begin{itemize}
  1204	\item Catalan's constant $G = \sum_{n=0}^\infty (-1)^n/(2n+1)^2$
  1205	\item Apéry's constant $\zeta(3)$ (Apéry's series gives a streaming
  1206	algorithm)
  1207	\item Euler--Mascheroni $\gamma$ (no known streaming algorithm of
  1208	state $\mathrm{poly}(n)$, an open problem in itself)
  1209	\end{itemize}
  1210	
  1211	\begin{problem}\label{prob:higher-trans}
  1212	Extend the coalgebraic characterisation to $\zeta(3)$, Catalan's
  1213	constant, and (failing that) prove that $\gamma$ has no
  1214	finite-state stream coalgebra unfold-equal to it.
  1215	\end{problem}
  1216	
  1217	\subsection{Coalgebraic transcendence proofs}
  1218	
  1219	The Lindemann--Weierstrass theorem proves the algebraic
  1220	independence of $e^{\alpha_1},\ldots,e^{\alpha_n}$ for
  1221	$\Q$-linearly independent algebraic $\alpha_i$. Paper~V
  1222	\S 8.3--8.4 marks this as ``partially formalisable'' in
  1223	$\Rc$. A coalgebraic proof would require:
  1224	
  1225	\begin{itemize}
  1226	\item A coalgebraic structure on the algebraic numbers
  1227	$\overline{\Q}$ (perhaps as a final coalgebra of an
  1228	``algebraic-extension'' functor).
  1229	\item A coalgebraic $\exp$ as the unique coalgebra
  1230	morphism $\Rc \to \Stream\,\mathsf{Fin}(b)$ from the
  1231	ODE $f' = f$ universal property.
  1232	\end{itemize}
  1233	
  1234	\begin{problem}\label{prob:trans-coalg}
  1235	Formulate a coalgebraic Lindemann--Weierstrass theorem in HoTT.
  1236	\end{problem}
  1237	
  1238	% =============================================================
  1239	\section{Conclusion}
  1240	% =============================================================
  1241	
  1242	We have given a coinductive characterisation of $\pi$ and $e$
  1243	in homotopy type theory, completing the programme sketched in
  1244	Paper~III \S 5 of the prior series. The principal new results are:
  1245	
  1246	\begin{itemize}
  1247	\item A clean statement of the coinduction principle in cubical
  1248	HoTT (\Cref{thm:coinduction}).
  1249	\item Stream coalgebras realising digit expansions
  1250	(\Cref{thm:streamfinal}, \Cref{thm:01-quotient}).
  1251	\item Coalgebraic characterisations of $\pi$ and $e$ as unique
  1252	unfolds satisfying bisimulation-closed observable predicates
  1253	(\Cref{thm:e-char}, \Cref{thm:pi-char}, \Cref{thm:e-internal},
  1254	\Cref{thm:pi-internal}).
  1255	\item An equivalence theorem (\Cref{thm:hiitequal}) showing the
  1256	coinductive presentation matches Booij's HIIT $\Rc$ on $[0,1]$.
  1257	\item A Dirichlet-series stream coalgebra (\Cref{prop:dirichlet-stream})
  1258	giving partial progress towards a coalgebraic $\zeta$.
  1259	\end{itemize}
  1260	
  1261	An accompanying executable framework is provided in Haskell:
  1262	the stream functor, unfold/corecursion, the carry-bisimulation,
  1263	and the spigot algorithms for $\pi$ (Leibniz, Machin) and $e$
  1264	(factorial series), together with QuickCheck properties for
  1265	stream operations and approximation round-trips. The Lean~4
  1266	companion file (using Mathlib's \texttt{Stream'} API) formalises
  1267	the basic coalgebra structure, the corecursive \texttt{unfold},
  1268	and a (classical, set-level) coinduction principle; it does
  1269	\emph{not} include a formal proof of the productivity of the
  1270	Sale or BBP transitions, which is left as
  1271	\Cref{prob:lean-productivity}. The Lean component should be
  1272	read as a partial certification of the type-theoretic
  1273	infrastructure, not as a complete formalisation of the main
  1274	theorems. The full formalisation effort is substantial: the
  1275	main open problem (\Cref{conj:zeta}) is the construction of a
  1276	HoTT-native coalgebraic Riemann zeta function with
  1277	$\zeta(s) = 0$ as a bisimulation-closed predicate; this remains
  1278	far from solved.
  1279	
  1280	Coinductively, the picture has unified beauty:
  1281	$\pi$ is a \emph{stream}, namely the unique stream produced
  1282	by the BBP corecursive equation; $e$ is a \emph{stream},
  1283	namely the unique stream produced by the factorial-series
  1284	corecursive equation; $[0,1]$ is the \emph{type of streams modulo
  1285	carry}; and equality of streams is exactly bisimulation.
  1286	The HIIT route of Booij is one face of these objects; the
  1287	final-coalgebra route is the other. Univalence binds them.
  1288	
  1289	% =============================================================
  1290	\appendix
  1291	\section{Prerequisites from the prior series, made explicit}
  1292	\label{app:prereq}
  1293	% =============================================================
  1294	
  1295	To make the present paper self-contained, we restate (without
  1296	re-proving) the prior results on which our arguments rely. Each
  1297	is either a textbook fact found in the standard references on
  1298	HoTT and coalgebra
  1299	(see \cite{HoTTbook,booij,rutten,ACS,jacobs}), or a routine
  1300	adaptation of a textbook fact to the cubical setting. Where we
  1301	cite the prior series~\cite{paperIII,paperV,synthesis}, the
  1302	citation is to a particular textbook-style adaptation, and the
  1303	underlying proofs are the standard ones.
  1304	
  1305	\begin{theorem}[A.1; cf.\ Paper~III Theorem~5.2]\label{thm:app-streams-final}
  1306	For any type $A : \Type$, the M-type
  1307	\[
  1308	  M(A,\lambda{-}.\mathbf{1}) \cong A^\N
  1309	\]
  1310	together with $\out := \langle\hd,\tl\rangle$ is a final coalgebra
  1311	of the endofunctor $F_A\,X = A \times X$.
  1312	\end{theorem}
  1313	This is the cubical-HoTT version of Rutten~\cite{rutten}
  1314	\S 2 \emph{combined with} ACS~\cite{ACS} Theorem~3.5. We use it
  1315	in the form proved by ACS.
  1316	
  1317	\begin{theorem}[A.2; cf.\ Paper~III Theorem~5.3]\label{thm:app-coinduction}
  1318	For final coalgebra $(\nu F, \out)$ of polynomial endofunctor $F$,
  1319	two elements $x, y : \nu F$ satisfy a path equality $x = y$ iff
  1320	there exists an $F$-bisimulation $R$ with $R(x,y)$.
  1321	\end{theorem}
  1322	This is restated as our \Cref{thm:coinduction} and proved
  1323	internally to the present paper.
  1324	
  1325	\begin{theorem}[A.3; cf.\ Paper~III Theorem~4.1]\label{thm:app-uniqueR}
  1326	There is, up to unique order-preserving HoTT-equivalence, a
  1327	unique Dedekind-complete Archimedean ordered field $\R$. Booij's
  1328	Cauchy HIIT $\Rc$ is one such; the quotient
  1329	$\bigl(\Z \times (\Stream\,\mathsf{Fin}(b))\bigr)/{\bisim_b'}$ for
  1330	the natural extension of $\bisim_b$ to $\Z$-shifted streams is
  1331	another.
  1332	\end{theorem}
  1333	We use this in the form: the two presentations agree on $[0,1]$,
  1334	which is \Cref{thm:hiitequal}.
  1335	
  1336	\begin{theorem}[A.4; cf.\ Paper~V Definition~8.1, Theorem~5.7]\label{thm:app-pi}
  1337	In Booij's HIIT $\Rc$, the type
  1338	$\Sigma_{p:\Rc}\,(\sin p = 0)\times(p>0)\times(\forall x\in (0,p),\,\sin x>0)$
  1339	is contractible. Its centre is by definition $\pi$.
  1340	\end{theorem}
  1341	
  1342	\begin{theorem}[A.5; cf.\ Paper~V Definition~8.2, Theorem~4.3]\label{thm:app-e}
  1343	In Booij's HIIT $\Rc$, the type
  1344	$\Sigma_{f:\Rc\to\Rc}\Sigma_{x:\Rc}\,(f'=f)\times(f(0)=1)\times(x = f(1))$
  1345	is contractible (the universal-property of $\exp$). Its centre's
  1346	$x$-component is by definition $e$.
  1347	\end{theorem}
  1348	
  1349	These five statements are the only places where the prior series
  1350	enters our arguments. Reader who prefers to take them as
  1351	\emph{assumptions} of the present paper may do so; the rest of
  1352	the paper then becomes a self-contained development atop these
  1353	five axioms together with the standard cubical-HoTT
  1354	infrastructure of~\cite{cchm,ACS}.
  1355	
  1356	\section{Detailed state-space layout for the proof of Theorem~\ref{thm:e-internal}}
  1357	\label{app:state}
  1358	
  1359	We expand the state-space promise of \Cref{thm:e-internal}.
  1360	The streaming-factorial spigot algorithm
  1361	of~\cite{sale-e-1968,gibbons-spigot} maintains a state in $\N^5$:
  1362	$(n, k, p, q, d)$ where $n$ is the digit position emitted so far,
  1363	$k$ is the next factorial index ready to be summed, and
  1364	$(p, q, d)$ are the bookkeeping triple of (current scaled
  1365	remainder numerator, current scaled denominator, current digit-out).
  1366	
  1367	The transition $\gamma_e: \N^5 \to \mathsf{Fin}(b) \times \N^5$ is:
  1368	
  1369	\begin{enumerate}
  1370	\item Multiply $(p, q)$ by $b$:
  1371	$(p', q') := (b\cdot p, q)$.
  1372	\item Extract the integer part: $d' := p' \div q'$, $p'' := p' \mod q'$.
  1373	(In the cubical implementation $\div$ and $\mod$ are total
  1374	constructive operations on $\N$.)
  1375	\item Update the position: $n' := n + 1$, $k' := k$ (unchanged).
  1376	\item If the remainder $p''/q'$ is below the precision threshold
  1377	$1/q'$, advance the factorial: $q'' := q' \cdot k'$, $k'' := k' + 1$,
  1378	and re-normalise $p''$ by adding the new term's contribution.
  1379	\item Output: $(d', (n', k'', p_{\mathrm{new}}, q''))$, where
  1380	$p_{\mathrm{new}}$ is the renormalised remainder.
  1381	\end{enumerate}
  1382	
  1383	The state projection function $\mathrm{state}: \Stream\,\mathsf{Fin}(b) \to \N^5$
  1384	of \Cref{thm:e-internal} is the canonical retraction:
  1385	$\mathrm{state}(s) = $ the unique $c$ such that $s = \unfold_{\gamma_e}(c)$,
  1386	when such $c$ exists. This is a \emph{partial} function in
  1387	general, but defined on the image of $\unfold_{\gamma_e}$, which
  1388	is the only place it is used.
  1389	
  1390	\textbf{Compatibility of the up-to operator.} The up-to operator
  1391	$\Phi$ used in the proof of \Cref{thm:e-internal} is
  1392	\[
  1393	\Phi(R) \;:=\; \{(u_1, u_2) :
  1394	  \exists c, c'.\, R(\unfold_{\gamma_e}(c), \unfold_{\gamma_e}(c'))
  1395	  \wedge u_1 = \unfold_{\gamma_e}(c)
  1396	  \wedge u_2 = \unfold_{\gamma_e}(c')
  1397	\}.
  1398	\]
  1399	By \cite[\S 6]{poussangiorgi}, an up-to operator is compatible
  1400	iff it preserves the \emph{evolution} structure of the coalgebra.
  1401	For our $\gamma_e$ this reduces to the observation that
  1402	$\unfold_{\gamma_e}$ is a coalgebra morphism: heads commute with
  1403	$\Phi$ by definition (they are determined by the first projection
  1404	of $\gamma_e$), and tails commute by the recursive call. Hence
  1405	$\Phi$ is compatible and \Cref{thm:upto-sound} applies.
  1406	
  1407	% =============================================================
  1408	% Bibliography
  1409	% =============================================================
  1410	\begin{thebibliography}{99}
  1411	
  1412	\bibitem{paperIII}
  1413	Long, M. (2026). \emph{Universal Properties of Real Numbers and
  1414	Transcendentals}. Paper III, YonedaAI HoTT Foundations Series.
  1415	
  1416	\bibitem{paperV}
  1417	Long, M. (2026). \emph{The HoTT Perspective: Numbers as Inductive
  1418	Types up to Path Equivalence}. Paper V, YonedaAI HoTT Foundations
  1419	Series.
  1420	
  1421	\bibitem{synthesis}
  1422	Long, M. (2026). \emph{The Univalent Correspondence: How Six
  1423	Perspectives on Number Become One}. Synthesis Paper, YonedaAI
  1424	HoTT Foundations Series.
  1425	
  1426	\bibitem{booij}
  1427	Booij, A. (2020). \emph{Analysis in Univalent Type Theory}.
  1428	Ph.D.\ Thesis, University of Birmingham.
  1429	
  1430	\bibitem{rutten}
  1431	Rutten, J.J.M.M. (2000). Universal coalgebra: a theory of
  1432	systems. \emph{Theoretical Computer Science} 249(1):3--80.
  1433	
  1434	\bibitem{jacobs}
  1435	Jacobs, B. (2016). \emph{Introduction to Coalgebra: Towards
  1436	Mathematics of States and Observation}. Cambridge Tracts in
  1437	Theoretical Computer Science.
  1438	
  1439	\bibitem{ACS}
  1440	Ahrens, B., Capriotti, P., \& Spadotti, R. (2015). Non-wellfounded
  1441	trees in homotopy type theory. \emph{Proc.\ TLCA}.
  1442	
  1443	\bibitem{cchm}
  1444	Cohen, C., Coquand, T., Huber, S., \& M\"ortberg, A. (2018).
  1445	Cubical Type Theory: a constructive interpretation of the
  1446	univalence axiom. \emph{IfCoLog Journal of Logics}.
  1447	
  1448	\bibitem{birkedal}
  1449	Birkedal, L., M{\o}gelberg, R.E., Schwinghammer, J., \&
  1450	St{\o}vring, K. (2012). First steps in synthetic guarded
  1451	domain theory: step-indexing in the topos of trees.
  1452	\emph{Logical Methods in Computer Science} 8.
  1453	
  1454	\bibitem{poussangiorgi}
  1455	Pous, D., \& Sangiorgi, D. (2012). Enhancements of the
  1456	bisimulation proof method, in \emph{Advanced Topics in
  1457	Bisimulation and Coinduction}, CUP.
  1458	
  1459	\bibitem{ghani-hancock-pattinson}
  1460	Ghani, N., Hancock, P., \& Pattinson, D. (2009). Continuous
  1461	functions on final coalgebras. \emph{ENTCS} 249:3--18.
  1462	
  1463	\bibitem{sale-e-1968}
  1464	Sale, A.H.J. (1968). The calculation of $e$ to many significant
  1465	digits. \emph{The Computer Journal} 11(2):229--230.
  1466	
  1467	\bibitem{rabwagon-spigot}
  1468	Rabinowitz, S., \& Wagon, S. (1995). A spigot algorithm for the
  1469	digits of $\pi$. \emph{American Math.\ Monthly} 102:195--203.
  1470	
  1471	\bibitem{gibbons-spigot}
  1472	Gibbons, J. (2006). Unbounded spigot algorithms for the digits
  1473	of pi. \emph{American Math.\ Monthly} 113:318--328.
  1474	
  1475	\bibitem{bbp}
  1476	Bailey, D.H., Borwein, P., \& Plouffe, S. (1997). On the rapid
  1477	computation of various polylogarithmic constants.
  1478	\emph{Mathematics of Computation} 66:903--913.
  1479	
  1480	\bibitem{weihrauch}
  1481	Weihrauch, K. (2000). \emph{Computable Analysis: An Introduction}.
  1482	Springer.
  1483	
  1484	\bibitem{loefflerstoll}
  1485	Loeffler, D., \& Stoll, M. (2025). Formalizing zeta and
  1486	$L$-functions in Lean. \emph{Annals of Formalized Mathematics} 1.
  1487	arXiv:2503.00959.
  1488	
  1489	\bibitem{HoTTbook}
  1490	The Univalent Foundations Program. (2013). \emph{Homotopy Type
  1491	Theory: Univalent Foundations of Mathematics}. Institute for
  1492	Advanced Study.
  1493	
  1494	\bibitem{voevodsky}
  1495	Voevodsky, V. (2010). The univalence axiom and the
  1496	foundations of mathematics. Lecture series, IAS.
  1497	
  1498	\bibitem{licatashulman}
  1499	Licata, D.R., \& Shulman, M. (2013). Calculating the fundamental
  1500	group of the circle in homotopy type theory. \emph{Proc.\ LICS}.
  1501	
  1502	\bibitem{coquand-coinductive}
  1503	Coquand, T. (1994). Infinite objects in type theory. \emph{Types
  1504	for Proofs and Programs}, Springer LNCS.
  1505	
  1506	\bibitem{rutten-streams}
  1507	Rutten, J.J.M.M. (2003). Behavioural differential equations: a
  1508	coinductive calculus of streams, automata, and power series.
  1509	\emph{Theoretical Computer Science} 308:1--53.
  1510	
  1511	\bibitem{aczel}
  1512	Aczel, P. (1988). \emph{Non-Well-Founded Sets}. CSLI Lecture
  1513	Notes 14.
  1514	
  1515	\bibitem{bordg-paulson}
  1516	Bordg, A., \& Paulson, L. (2024). Coinductive proofs in Isabelle:
  1517	streams revisited. \emph{Journal of Automated Reasoning}.
  1518	
  1519	\bibitem{kleene}
  1520	Kleene, S.C. (1952). \emph{Introduction to Metamathematics}.
  1521	North-Holland.
  1522	
  1523	\bibitem{turing}
  1524	Turing, A.M. (1937). On computable numbers, with an application
  1525	to the Entscheidungsproblem. \emph{Proc.\ London Math.\ Soc.}\ 42:230--265.
  1526	
  1527	\bibitem{kapulkin-lumsdaine}
  1528	Kapulkin, K., \& Lumsdaine, P.L. (2021). The simplicial model of
  1529	univalent foundations (after Voevodsky). \emph{Journal of the
  1530	European Mathematical Society} 23:2071--2126.
  1531	
  1532	\bibitem{shulman-cohesive}
  1533	Shulman, M. (2018). Brouwer's fixed-point theorem in real-cohesive
  1534	homotopy type theory. \emph{Math.\ Structures Comp.\ Sci.}\ 28:856--941.
  1535	
  1536	\bibitem{sangiorgi-coind-book}
  1537	Sangiorgi, D. (2012). \emph{Introduction to Bisimulation and
  1538	Coinduction}. Cambridge University Press.
  1539	
  1540	\bibitem{abbott-altenkirch}
  1541	Abbott, M., Altenkirch, T., \& Ghani, N. (2005).
  1542	\emph{Containers: Constructing Strictly Positive Types}.
  1543	Theoretical Computer Science 342:3--27.
  1544	
  1545	\end{thebibliography}
  1546	
  1547	\end{document}

exec
/usr/local/bin/zsh -lc 'rg -n "(Warning|Error|Undefined|Overfull|Underfull|Citation|Reference|Label|Missing|Runaway|Emergency stop|There were undefined|multiply-defined|Token not allowed|pdfTeX warning|Rerun)" papers/latex/coalgebraic-transcendentals.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
708:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|Cref|cref|cite)\\{|label\\{|bibitem\\{|begin\\{|end\\{|TODO|undefined|overfull|Underfull|hbox|vbox|\\\\appendix|\\\\section|\\\\subsection\" papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|Cref|cref|cite)\{|label\{|bibitem\{|begin\{|end\{|TODO|undefined|overfull|Underfull|hbox|vbox|\appendix|\section|\subsection)
                                                                                                                                         ^
error: unopened group

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(?:Cref|cref|ref|cite)(?:\\[["'^'"\\]]*\\])?\\{(["'^}]*)'"\\}/g){print \""'$.:$1'"\\n\"}' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\label\\{(["'^}]*)'"\\}/g){print \""'$.:$1'"\\n\"}' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
116:paperIII
146:synthesis
155:booij
164:rutten
172:weihrauch
225:ACS
230:thm:coinduction
250:sec:framework
252:sec:lambek
254:sec:streams
255:sec:bisim
257:sec:pi-e
258:sec:cubical
259:sec:cauchy-vs-coalg
260:sec:zeta
262:sec:open
271:cchm
304:ex:streamfun
322:rutten
336:ACS
363:birkedal
393:lem:lambek
420:def:bisim
453:thm:coinduction
520:lem:approx-surj
570:thm:01-quotient
579:thm:coinduction
595:poussangiorgi
622:ghani-hancock-pattinson
639:sale-e-1968
640:rabwagon-spigot
640:gibbons-spigot
664:sale-e-1968
665:rabwagon-spigot,gibbons-spigot
671:def:observable
671:lem:observable-closed
684:thm:e-final
695:thm:e-char
701:sec:cauchy-vs-coalg
731:bbp
740:lem:observable-closed
750:thm:e-char
750:thm:pi-final
755:thm:e-char
755:thm:pi-char
764:thm:e-final
768:app:state
776:def:e-coalg
778:app:state
778:thm:e-final
794:thm:upto-sound
799:thm:upto-sound
800:thm:coinduction
828:thm:e-internal
831:bbp
840:thm:e-internal
843:thm:upto-sound
843:thm:upto-sound,thm:coinduction
848:thm:e-internal
848:thm:pi-internal
850:thm:e-internal
850:thm:pi-internal
851:thm:e-char
851:thm:pi-char
857:paperIII
865:app:state
876:thm:e-internal,thm:pi-internal
889:prob:internal
915:lem:observable-closed
920:prop:three-equal
939:thm:coinduction
942:prob:internal
955:ACS
970:def:Mtype
978:lem:lambek
987:birkedal
1006:thm:pi-internal
1025:thm:01-quotient
1027:lem:approx-surj
1036:thm:pi-internal
1041:thm:hiitequal
1066:synthesis
1068:loefflerstoll
1092:prop:dirichlet-stream
1108:def:approx
1112:prop:dirichlet-stream
1114:conj:zeta
1151:thm:e-internal
1151:thm:pi-internal
1172:thm:01-quotient
1248:thm:coinduction
1250:thm:streamfinal
1250:thm:01-quotient
1253:thm:e-char
1253:thm:pi-char
1253:thm:e-internal
1254:thm:pi-internal
1255:thm:hiitequal
1257:prop:dirichlet-stream
1271:prob:lean-productivity
1275:conj:zeta
1299:HoTTbook,booij,rutten,ACS,jacobs
1301:paperIII,paperV,synthesis
1313:rutten
1314:ACS
1322:thm:coinduction
1334:thm:hiitequal
1354:cchm,ACS
1356:thm:e-internal
1359:thm:e-internal
1361:sale-e-1968,gibbons-spigot
1384:thm:e-internal
1391:thm:e-internal
1399:poussangiorgi
1405:thm:upto-sound

 succeeded in 0ms:
265:sec:framework
281:def:poly
294:ex:streamfun
301:ex:digit
307:def:coalg
315:def:final
339:thm:ACS
349:def:streamcoalg
370:sec:lambek
376:lem:lambek
401:def:bisim
413:thm:coinduction
433:sec:streams
438:thm:streamfinal
472:def:approx
487:lem:approx-surj
500:def:carry
512:thm:01-quotient
534:sec:bisim
541:def:bclosed
548:ex:closed
555:def:observable
562:lem:observable-closed
586:def:upto
593:thm:upto-sound
626:sec:pi-e
633:def:e-coalg
646:thm:e-final
668:def:Pe
674:thm:e-char
711:def:bbp
724:thm:pi-final
737:def:Ppi
743:thm:pi-char
760:thm:e-internal
816:thm:pi-internal
849:rem:internal-scope
899:def:three-pi
907:prop:three-equal
951:sec:cubical
959:def:Mtype
969:thm:cubicalM
995:sec:cauchy-vs-coalg
1016:thm:hiitequal
1034:cor:both-pi
1061:sec:zeta
1075:conj:zeta
1096:prop:dirichlet-stream
1146:sec:open
1156:prob:internal
1177:prob:carry-hit
1193:prob:lean-productivity
1211:prob:higher-trans
1234:prob:trans-coalg
1292:app:prereq
1305:thm:app-streams-final
1317:thm:app-coinduction
1325:thm:app-uniqueR
1336:thm:app-pi
1342:thm:app-e
1357:app:state

exec
/usr/local/bin/zsh -lc 'command -v lacheck || true; command -v texfot || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\bibitem\\{(["'^}]*)'"\\}/g){print \""'$.:$1'"\\n\"}' papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/lacheck
/Library/TeX/texbin/texfot

 succeeded in 0ms:
1412:paperIII
1416:paperV
1421:synthesis
1426:booij
1430:rutten
1434:jacobs
1439:ACS
1443:cchm
1448:birkedal
1454:poussangiorgi
1459:ghani-hancock-pattinson
1463:sale-e-1968
1467:rabwagon-spigot
1471:gibbons-spigot
1475:bbp
1480:weihrauch
1484:loefflerstoll
1489:HoTTbook
1494:voevodsky
1498:licatashulman
1502:coquand-coinductive
1506:rutten-streams
1511:aczel
1515:bordg-paulson
1519:kleene
1523:turing
1527:kapulkin-lumsdaine
1532:shulman-cohesive
1536:sangiorgi-coind-book
1540:abbott-altenkirch

exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/coalgebraic-transcendentals.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/coalgebraic-transcendentals.tex", line 24: possible unwanted space at "{"
"papers/latex/coalgebraic-transcendentals.tex", line 637: punctuation mark "!" should be placed after end of math mode
"papers/latex/coalgebraic-transcendentals.tex", line 756: missing `\@' before `.' in "HIIT."
"papers/latex/coalgebraic-transcendentals.tex", line 1170: missing `\ ' after "vs."

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\([A-Za-z]+)?ref\\{|\\\\Cref\\{|\\\\cite\" papers/latex/coalgebraic-transcendentals.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\([A-Za-z]+)?ref\{|\Cref\{|\cite)
                          ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc 'rg -n "Overfull|Underfull|undefined|Undefined|Citation|Reference|multiply|Rerun|Warning|Error" papers/latex/coalgebraic-transcendentals.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
708:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)

codex
**Findings**

1. [coalgebraic-transcendentals.tex:756](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:756) has incorrect sentence spacing after the all-caps word `HIIT.` TeX treats periods after uppercase letters as abbreviation spacing.
Fix: change `HIIT.` to `HIIT\@.`

2. [coalgebraic-transcendentals.tex:1170](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1170) uses `vs.` in a heading without forcing the following interword space, which `lacheck` flags.
Fix: change `vs. propositional` to `vs.\ propositional`, or rewrite as `versus propositional truncation`.

I rebuilt with `latexmk -pdf -interaction=nonstopmode -halt-on-error`; compilation succeeds, and the log shows no undefined references/citations and no overfull/underfull box warnings.

VERDICT: NEEDS_FIX
2026-05-04T23:56:01.019756Z ERROR codex_core::session: failed to record rollout items: thread 019df56a-3f83-7cd3-b7c8-20ae10077f24 not found
tokens used
49,575
**Findings**

1. [coalgebraic-transcendentals.tex:756](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:756) has incorrect sentence spacing after the all-caps word `HIIT.` TeX treats periods after uppercase letters as abbreviation spacing.
Fix: change `HIIT.` to `HIIT\@.`

2. [coalgebraic-transcendentals.tex:1170](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/coalgebraic-transcendentals.tex:1170) uses `vs.` in a heading without forcing the following interword space, which `lacheck` flags.
Fix: change `vs. propositional` to `vs.\ propositional`, or rewrite as `versus propositional truncation`.

I rebuilt with `latexmk -pdf -interaction=nonstopmode -halt-on-error`; compilation succeeds, and the log shows no undefined references/citations and no overfull/underfull box warnings.

VERDICT: NEEDS_FIX

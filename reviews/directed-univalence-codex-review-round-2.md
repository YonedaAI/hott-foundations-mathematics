---
reviewer: codex (OpenAI)
type: formatting
paper: directed-univalence
round: 2
date: 2026-05-04T23:33:23Z
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
session id: 019df556-dd78-7c53-981f-15428aec301a
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex for LaTeX formatting issues only: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems, mismatched braces or environments, undefined commands. List all issues you find with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll review this read-only and ground the findings in the actual `.tex` source. I’ll first inspect structure and macros, then use any available LaTeX/checker commands that can run without modifying the repo.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '1,240p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	
     6	% Page layout (load early)
     7	\usepackage[margin=1in]{geometry}
     8	
     9	% Graphics, color
    10	\usepackage{graphicx}
    11	\usepackage{xcolor}
    12	
    13	% Diagrams
    14	\usepackage{tikz-cd}
    15	\usepackage{tikz}
    16	\usetikzlibrary{decorations.markings, arrows.meta, positioning}
    17	
    18	% Tables
    19	\usepackage{booktabs}
    20	
    21	% Listings for code blocks
    22	\usepackage{listings}
    23	
    24	% GrokRxiv sidebar (uses everypage + tikz overlay)
    25	\usepackage{everypage}
    26	
    27	% References (load near the end)
    28	\usepackage{hyperref}
    29	\usepackage{cleveref}
    30	\lstset{
    31	  basicstyle=\ttfamily\footnotesize,
    32	  columns=fullflexible,
    33	  breaklines=true,
    34	  showstringspaces=false,
    35	  frame=single,
    36	  framerule=0.4pt,
    37	  rulecolor=\color{black!40},
    38	  xleftmargin=0pt,
    39	  xrightmargin=0pt
    40	}
    41	
    42	% Theorem environments
    43	\newtheorem{theorem}{Theorem}[section]
    44	\newtheorem{proposition}[theorem]{Proposition}
    45	\newtheorem{lemma}[theorem]{Lemma}
    46	\newtheorem{corollary}[theorem]{Corollary}
    47	\theoremstyle{definition}
    48	\newtheorem{definition}[theorem]{Definition}
    49	\newtheorem{example}[theorem]{Example}
    50	\theoremstyle{remark}
    51	\newtheorem{remark}[theorem]{Remark}
    52	\newtheorem{conjecture}[theorem]{Conjecture}
    53	\newtheorem{question}[theorem]{Question}
    54	
    55	% Macros
    56	\newcommand{\Type}{\mathsf{Type}}
    57	\newcommand{\U}{\mathcal{U}}
    58	\newcommand{\N}{\mathbb{N}}
    59	\newcommand{\Z}{\mathbb{Z}}
    60	\newcommand{\Cat}{\mathsf{Cat}}
    61	\newcommand{\Set}{\mathsf{Set}}
    62	\newcommand{\Grpd}{\mathsf{Grpd}}
    63	\newcommand{\Hom}{\mathsf{Hom}}
    64	\newcommand{\Fun}{\mathsf{Fun}}
    65	\newcommand{\Id}{\mathsf{Id}}
    66	\newcommand{\id}{\mathsf{id}}
    67	\newcommand{\refl}{\mathsf{refl}}
    68	\newcommand{\ua}{\mathsf{ua}}
    69	\newcommand{\dua}{\mathsf{dua}}
    70	\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
    71	\newcommand{\funtohom}{\mathsf{funtohom}}
    72	\newcommand{\eqv}{\simeq}
    73	\newcommand{\op}{\mathrm{op}}
    74	\newcommand{\isContr}{\mathsf{isContr}}
    75	\newcommand{\isProp}{\mathsf{isProp}}
    76	\newcommand{\isSet}{\mathsf{isSet}}
    77	\newcommand{\isSegal}{\mathsf{isSegal}}
    78	\newcommand{\isRezk}{\mathsf{isRezk}}
    79	\newcommand{\isDisc}{\mathsf{isDiscrete}}
    80	\newcommand{\disc}{\mathsf{disc}}
    81	\newcommand{\Disc}{\mathsf{Disc}}
    82	\newcommand{\Triv}{\mathsf{Triv}}
    83	\newcommand{\STT}{\mathbf{STT}}
    84	\newcommand{\TTT}{\mathbf{TTT}}
    85	\newcommand{\HoTT}{\mathbf{HoTT}}
    86	\newcommand{\rzk}{\mathsf{rzk}}
    87	\newcommand{\twoI}{\mathbf{2}}
    88	\newcommand{\inv}{^{-1}}
    89	\newcommand{\into}{\hookrightarrow}
    90	\newcommand{\seg}{\Lambda}
    91	
    92	% GrokRxiv sidebar
    93	\definecolor{grokgray}{RGB}{110,110,110}
    94	\AddEverypageHook{%
    95	  \ifnum\value{page}=1
    96	    \begin{tikzpicture}[remember picture, overlay]
    97	      \node[
    98	        rotate=90,
    99	        anchor=south,
   100	        font=\Large\sffamily\bfseries\color{grokgray},
   101	        inner sep=0pt
   102	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
   103	      {GrokRxiv:2026.05.directed-univalence\quad
   104	       [\,math.CT\,]\quad
   105	       04 May 2026};
   106	    \end{tikzpicture}
   107	  \fi
   108	}
   109	
   110	\title{Directed Univalence: From Riehl--Shulman to a Complete Principle}
   111	\author{YonedaAI Research \\
   112	\textit{Magneton Foundational Studies}}
   113	\date{4 May 2026}
   114	
   115	\begin{document}
   116	\maketitle
   117	
   118	\begin{abstract}
   119	Voevodsky's univalence axiom equates path identification with type-equivalence and lies at the heart of homotopy type theory (HoTT). Its directed analogue --- which would equate hom-types in the universe with functions between types --- has been pursued since the introduction of \emph{simplicial type theory} (STT) by Riehl and Shulman (2017). Riehl--Shulman gives a synthetic theory of $(\infty,1)$-categories whose internal hom-types $\Hom_A(a,b)$ behave correctly inside Segal types, and a \emph{partial} directed univalence holds for covariant fibrations: the universe of discrete types restricted along a covariant family is recovered from the family itself. A complete principle for the entire universe remained out of reach. Gratzer, Weinberger and Buchholtz (2024) introduce \emph{triangulated type theory} (TTT), an extension of STT with a system of modalities ($\flat$, $\sharp$, $\Disc$, opposite), and prove a directed univalence theorem for the universe $\mathcal{S}$ of \emph{discrete} types: $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$. This is the first complete fragment of a directed univalence principle.
   120	
   121	We give an expository, structured account of the line of work from Riehl--Shulman 2017 through Gratzer--Weinberger--Buchholtz 2024. We isolate the technical contents of partial directed univalence, formulate four candidate \emph{full} directed univalence principles of increasing strength, and analyse what would be required to prove each. We propose a programme of \emph{layered} directed univalence indexed by the Segal/Rezk/discrete hierarchy, give toy implementations in Haskell and Lean~4, and connect the project to natural number objects in $(\infty,1)$-toposes, higher inductive types, and synthetic representation theory. The complete principle remains open; we make explicit the obstructions, including modal dependence, opposite-type coherence, and the lack of an internal universe of $(\infty,1)$-categories.
   122	\end{abstract}
   123	
   124	\tableofcontents
   125	
   126	\section{Introduction}\label{sec:intro}
   127	
   128	Univalence is the structural principle that distinguishes homotopy type theory from intensional Martin--L\"of type theory. Its statement,
   129	\[
   130	\ua : (A \eqv B) \xrightarrow{\;\;\eqv\;\;} (A =_{\U} B),
   131	\]
   132	internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself~\cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
   133	
   134	Yet univalence as stated lives in a fundamentally \emph{symmetric} world. The identity type $A =_{\U} B$ is a groupoid: it has inverses. This reflects a basic fact about the type-theoretic universe: every type, in HoTT, is treated as an $\infty$-groupoid. Categories proper --- where morphisms can be non-invertible --- do not admit a clean internal description in HoTT without artefacts.
   135	
   136	Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper~\cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
   137	\[
   138	\langle \prod_{t : \twoI} A(t) \mid \Phi \mapsto a \rangle,
   139	\]
   140	the type of dependent functions on $\twoI$ that on the tope $\Phi$ agree definitionally with a prescribed partial function $a$. Hom-types are then defined as extension types out of $\twoI$.
   141	
   142	Within $\STT$ there is no \emph{a priori} guarantee that an arbitrary type $A$ describes an $(\infty,1)$-category --- only that it has a mapping space structure. Two predicates $\isSegal(A)$ (composition of hom-types) and $\isRezk(A)$ (equivalences are identities) cut out the types of interest, the Rezk types, which model complete Segal spaces and hence $(\infty,1)$-categories.
   143	
   144	The natural question is then: \emph{is there a directed analogue of univalence?} If $\mathcal{S}$ is some directed universe of types, is the hom-type $\Hom_{\mathcal{S}}(A,B)$ equivalent to the type of functions $\Fun(A,B) := A \to B$? Riehl--Shulman prove a partial result: a covariant family $P : A \to \U$ is classified by a functor $A \to \mathcal{S}_{\disc}$ into the \emph{discrete} sub-universe, and the data of the family is recovered up to equivalence from the functor. This is directed univalence \emph{for covariant families} but not for the universe at large.
   145	
   146	For seven years, the question of whether the directed universe itself satisfies a directed univalence principle was open. Gratzer, Weinberger and Buchholtz (2024) settle the question for the discrete sub-universe: they introduce a system of modalities adequate to express both the directed universe and the symmetric universe of $\infty$-groupoids inside it, and prove
   147	\[
   148	\dua_{\mathcal{S}} : \Hom_{\mathcal{S}}(A,B) \;\eqv\; \Fun(A,B),
   149	\]
   150	where $\mathcal{S}$ is the universe of discrete types~\cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
   151	
   152	This paper has four aims:
   153	\begin{enumerate}
   154	\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
   155	\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
   156	\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
   157	\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
   158	\end{enumerate}
   159	
   160	We accompany the exposition with formal sketches in Haskell (\texttt{src/directed-univalence/}) and Lean~4 (\texttt{lean/directed-univalence/}) that mechanise the relevant equivalences for the discrete fragment and lay out the directed universe API\@. The Haskell modules are not Lean proofs --- they implement \emph{toy} models that exhibit the algebraic content (covariant fibrations as $A \to \mathcal{S}$ functors, hom-types as Day convolutions on a $\twoI$-action) so that the conceptual content can be machine-checked even if foundationally weakened. Lean~4 sketches use postulates where appropriate.
   161	
   162	Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
   163	
   164	\paragraph{Conventions.} We write $\U$ for an ambient (symmetric) universe; $\mathcal{S}$ for a directed sub-universe; $A : \U$ or $A : \mathcal{S}$ for a type/object; $a, b : A$ for terms. The directed interval is $\twoI = \{0 \le 1\}$. Hom-types are written $\Hom_A(a,b)$ and identity types $a =_A b$. We use $f \eqv g$ for the type of equivalences. Throughout, $\STT$ refers to Riehl--Shulman 2017 simplicial type theory, $\TTT$ to Gratzer--Weinberger--Buchholtz 2024 triangulated type theory.
   165	
   166	\section{Background: Symmetric Univalence and Directed Motivation}\label{sec:background}
   167	
   168	\subsection{Voevodsky's univalence axiom}
   169	
   170	We recall the symmetric statement, both for orientation and to highlight what \emph{breaks} when one passes to the directed setting.
   171	
   172	\begin{definition}[Equivalence]\label{def:equiv}
   173	For $A, B : \U$, an \emph{equivalence} is a function $f : A \to B$ together with a witness that the fibre $\sum_{x : A} f(x) =_B y$ is contractible for every $y : B$. We write $A \eqv B$ for the type of equivalences.
   174	\end{definition}
   175	
   176	\begin{definition}[$\idtoeqv$]\label{def:idtoeqv}
   177	For each $A, B : \U$, the path induction principle defines a map
   178	\[
   179	\idtoeqv_{A,B} : (A =_{\U} B) \to (A \eqv B)
   180	\]
   181	sending $\refl_A$ to the identity equivalence $\id_A : A \eqv A$.
   182	\end{definition}
   183	
   184	\begin{theorem}[Voevodsky's univalence axiom]\label{thm:univalence}
   185	For every $A, B : \U$ the function $\idtoeqv_{A,B}$ is itself an equivalence.
   186	\end{theorem}
   187	
   188	The axiom yields its inverse $\ua : (A \eqv B) \to (A =_{\U} B)$ and the computation $\idtoeqv \circ \ua \sim \id$. Operationally, every equivalence delivers a path in the universe, and transport along this path acts as the equivalence.
   189	
   190	\paragraph{What is symmetric.}
   191	Two structural features of $A =_{\U} B$ make it manifestly \emph{symmetric}:
   192	\begin{enumerate}
   193	\item It has \emph{inverses}: if $p : A =_{\U} B$ then $p\inv : B =_{\U} A$.
   194	\item It is \emph{recursive}: $\idtoeqv$ may be defined by path induction, which is symmetric in $A$ and $B$.
   195	\end{enumerate}
   196	Both features are absent in the directed setting we wish to formalise.
   197	
   198	\subsection{What ``directed'' should mean}
   199	
   200	A directed type theory ought to admit, for each type $A$ and pair of terms $a, b : A$, a hom-type
   201	\[
   202	\Hom_A(a, b) : \U,
   203	\]
   204	together with composition $\Hom_A(b,c) \times \Hom_A(a,b) \to \Hom_A(a,c)$ and identities $\id_a : \Hom_A(a,a)$, satisfying associativity and unit laws \emph{up to higher coherent homotopy}. Crucially, $\Hom_A(a,b)$ should not in general carry inverses: if it did, the theory would collapse back to a symmetric one.
   205	
   206	We can articulate desiderata.
   207	
   208	\begin{enumerate}
   209	\item[(D1)] \emph{Hom is non-invertible.} The composition is not in general invertible.
   210	\item[(D2)] \emph{Functoriality.} Functions $f : A \to B$ act on hom-types: $f_*: \Hom_A(a,b) \to \Hom_B(f(a),f(b))$.
   211	\item[(D3)] \emph{Equivalences are identities.} For appropriately structured types, an invertible morphism in $\Hom_A(a,b)$ should yield an identity $a =_A b$.
   212	\item[(D4)] \emph{Synthetic $(\infty,1)$-category theory.} The Yoneda lemma, adjoint functors, Kan extensions, and limits/colimits should be expressible \emph{synthetically} on top of these primitives.
   213	\item[(D5)] \emph{Directed univalence.} The universe should reflect its own hom-structure: hom in the universe = function type.
   214	\end{enumerate}
   215	
   216	(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work~\cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
   217	
   218	\subsection{$(\infty,1)$-categorical motivation}
   219	
   220	There is a clean semantic picture explaining why directed univalence is hard. In HoTT, the universe $\U$ is interpreted as an object classifier in an $(\infty,1)$-topos: $\U$ classifies small bundles up to fibrewise equivalence. Univalence is the corresponding internal statement: equivalences of bundles are paths in $\U$.
   221	
   222	The directed analogue would have a universe $\mathcal{S}$ classifying bundles \emph{up to map}, not just equivalence. In an $(\infty,1)$-topos $\mathcal{X}$, the natural such classifier is the cocartesian fibration of the $(\infty,1)$-category $\mathcal{X}_{/-}$ over $\mathcal{X}$ itself. But this is no longer a single object: it is a structured presentable $(\infty,1)$-category. The naive analogue --- ``a small object in $\mathcal{X}$ that classifies maps'' --- requires \emph{at least} a handle on $\mathcal{X}$ as an $(\infty,1)$-category internal to $\mathcal{X}$, a strictly stronger demand than internal $\infty$-groupoids.
   223	
   224	This is the structural reason a complete directed univalence principle is hard: it forces the type theory to internalise its own large $(\infty,1)$-categorical structure, not merely its $\infty$-groupoidal one.
   225	
   226	\section{Riehl--Shulman Simplicial Type Theory}\label{sec:rs}
   227	
   228	\subsection{Topes, cubes, extension types}
   229	
   230	$\STT$ is a three-layer system: a homotopy type theory; a strict cube layer with the directed interval $\twoI = \{0 \le 1\}$; and a tope layer of decidable propositions over the cube. We sketch each layer.
   231	
   232	\begin{definition}[Cube]\label{def:cube}
   233	A \emph{cube} is built inductively from a primitive directed interval $\twoI$, the unit cube $\mathbf{1}$, and finite products. Cubes are denoted $I, J, K$.
   234	\end{definition}
   235	
   236	\begin{definition}[Tope]\label{def:tope}
   237	A \emph{tope} on a cube $I$ is a polynomial inequality in the coordinates of $I$, closed under $\top$, $\bot$, $\wedge$, $\vee$. Topes form a distributive lattice. The standard examples on $\twoI$ are $\{0\}$, $\{1\}$, $\{0 \le t\}$, $\{t \le 1\}$.
   238	\end{definition}
   239	
   240	\begin{definition}[Extension type]\label{def:exttype}

exec
/usr/local/bin/zsh -lc "rg -n \"(\\\\(label|ref|cite|input|include|usepackage|newcommand|renewcommand|begin|end)|TODO|undefined|overfull|hspace|vspace|quad|qquad|\\\\[a-zA-Z]+)\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:(\(label|ref|cite|input|include|usepackage|newcommand|renewcommand|begin|end)|TODO|undefined|overfull|hspace|vspace|quad|qquad|\[a-zA-Z]+))
                                                                                                                                                 ^
error: unopened group

exec
/usr/local/bin/zsh -lc "ls -la papers/latex && rg --files papers/latex | sed -n '1,200p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
total 3008
drwxr-xr-x  26 mlong  staff     832 May  4 17:33 .
drwxr-xr-x   4 mlong  staff     128 May  4 17:04 ..
-rw-r--r--   1 mlong  staff   54802 May  4 17:32 coalgebraic-transcendentals.tex
-rw-r--r--   1 mlong  staff   11995 May  4 17:33 cubical-hiit-cauchy.aux
-rw-r--r--   1 mlong  staff   35545 May  4 17:33 cubical-hiit-cauchy.log
-rw-r--r--   1 mlong  staff    8408 May  4 17:33 cubical-hiit-cauchy.out
-rw-r--r--   1 mlong  staff   48861 May  4 17:33 cubical-hiit-cauchy.tex
-rw-r--r--   1 mlong  staff    4341 May  4 17:33 cubical-hiit-cauchy.toc
-rw-r--r--   1 mlong  staff   14069 May  4 17:26 directed-univalence.aux
-rw-r--r--   1 mlong  staff   36875 May  4 17:26 directed-univalence.log
-rw-r--r--   1 mlong  staff    8138 May  4 17:26 directed-univalence.out
-rw-r--r--   1 mlong  staff   44665 May  4 17:33 directed-univalence.tex
-rw-r--r--   1 mlong  staff    3879 May  4 17:26 directed-univalence.toc
-rw-r--r--   1 mlong  staff   17204 May  4 17:31 etcs-izf-folds.aux
-rw-r--r--   1 mlong  staff   34179 May  4 17:31 etcs-izf-folds.log
-rw-r--r--   1 mlong  staff   13441 May  4 17:31 etcs-izf-folds.out
-rw-r--r--   1 mlong  staff  369466 May  4 17:31 etcs-izf-folds.pdf
-rw-r--r--   1 mlong  staff   63554 May  4 17:31 etcs-izf-folds.tex
-rw-r--r--   1 mlong  staff    6169 May  4 17:31 etcs-izf-folds.toc
-rw-r--r--   1 mlong  staff   48220 May  4 17:31 infinity-nno.tex
-rw-r--r--   1 mlong  staff   25112 May  4 17:29 langlands-analytic-number-theory.aux
-rw-r--r--   1 mlong  staff   49933 May  4 17:29 langlands-analytic-number-theory.log
-rw-r--r--   1 mlong  staff   17658 May  4 17:29 langlands-analytic-number-theory.out
-rw-r--r--   1 mlong  staff  432032 May  4 17:29 langlands-analytic-number-theory.pdf
-rw-r--r--   1 mlong  staff   77396 May  4 17:33 langlands-analytic-number-theory.tex
-rw-r--r--   1 mlong  staff    8322 May  4 17:29 langlands-analytic-number-theory.toc
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

codex
The file already has a prior `.log` beside it, so I can use that as direct compile evidence without writing new build artifacts. I’m continuing through the source and checking the log for undefined references, box warnings, and hard errors.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '241,520p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   241	Given a cube $I$, a tope $\Phi$ on $I$, a type family $A : I \to \U$, and a partial term $a : \prod_{t : \Phi} A(t)$ defined on $\Phi$, the \emph{extension type}
   242	\[
   243	\big\langle \prod_{t : I} A(t) \;\big|\; \Phi \mapsto a \big\rangle
   244	\]
   245	is the type of dependent functions $f : \prod_{t : I} A(t)$ such that for $t : \Phi$, $f(t) \equiv a(t)$ judgmentally.
   246	\end{definition}
   247	
   248	\begin{remark}
   249	Extension types provide a uniform mechanism for \emph{strict boundary conditions}: the value of $f$ on the tope $\Phi$ is fixed up to definitional equality. This is what lets STT speak about, e.g., morphisms with prescribed source and target.
   250	\end{remark}
   251	
   252	\subsection{Hom-types and Segal types}
   253	
   254	\begin{definition}[Hom-type]\label{def:hom}
   255	Let $A : \U$ and $a, b : A$. The \emph{hom-type} is the extension type
   256	\[
   257	\Hom_A(a,b) := \big\langle \prod_{t : \twoI} A \;\big|\; \{0\} \mapsto a, \{1\} \mapsto b \big\rangle.
   258	\]
   259	\end{definition}
   260	
   261	So a morphism from $a$ to $b$ is a function $\twoI \to A$ taking $0$ to $a$ and $1$ to $b$. The directed interval is \emph{ordered}, hence so is the hom-type.
   262	
   263	\begin{definition}[Segal predicate]\label{def:segal}
   264	A type $A$ is \emph{Segal}, written $\isSegal(A)$, if the canonical map
   265	\[
   266	\Hom_A(a,b) \times \Hom_A(b,c) \to \Big\langle \prod_{(t,s) : \seg^2_1} A \;\big|\; (a, \cdot, c) \Big\rangle
   267	\]
   268	into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.
   269	\end{definition}
   270	
   271	Segal types are the STT version of Segal complete spaces. Composition is then a definable operation:
   272	\[
   273	\circ : \Hom_A(b,c) \times \Hom_A(a,b) \to \Hom_A(a,c)
   274	\]
   275	when $\isSegal(A)$.
   276	
   277	\begin{definition}[Rezk predicate]\label{def:rezk}
   278	A Segal type $A$ is \emph{Rezk} if the canonical map
   279	\[
   280	(a =_A b) \to \mathsf{Iso}_A(a,b)
   281	\]
   282	is an equivalence, where $\mathsf{Iso}_A(a,b) \subset \Hom_A(a,b)$ is the sub-type of two-sidedly invertible morphisms. (This is internal univalence on $A$.)
   283	\end{definition}
   284	
   285	\begin{theorem}[Riehl--Shulman, semantic]\label{thm:rs-semantic}
   286	Rezk types in $\STT$ correspond, in the semantic interpretation in bisimplicial sets, to complete Segal spaces, and hence to $(\infty,1)$-categories.
   287	\end{theorem}
   288	
   289	\subsection{Discrete types}
   290	
   291	\begin{definition}[Discrete type]\label{def:discrete}
   292	A type $A$ is \emph{discrete}, written $\isDisc(A)$, if for every $a, b : A$ the canonical map
   293	\[
   294	(a =_A b) \to \Hom_A(a,b)
   295	\]
   296	is an equivalence; equivalently, every morphism in $A$ is invertible. Discrete types are the STT counterpart of $\infty$-groupoids.
   297	\end{definition}
   298	
   299	\begin{example}\label{ex:discrete-types}
   300	The natural numbers $\N$ are discrete in $\STT$ (they carry no non-trivial 1-cells). More generally, every type imported from a model of HoTT into $\STT$ via the discrete inclusion is discrete.
   301	\end{example}
   302	
   303	\subsection{Synthetic Yoneda lemma}
   304	
   305	A high point of~\cite{RiehlShulman} is a synthetic Yoneda lemma. We state it informally.
   306	
   307	\begin{theorem}[Synthetic Yoneda, RS Thm 9.1]\label{thm:yoneda}
   308	Let $A$ be a Segal type and $\mathcal{S}$ the universe of discrete types. Then for any covariant functor $F : A \to \mathcal{S}$ and any $a : A$, evaluation at $\id_a$ gives an equivalence
   309	\[
   310	\Big( \prod_{x : A} \Hom_A(a, x) \to F(x) \Big) \;\eqv\; F(a).
   311	\]
   312	\end{theorem}
   313	
   314	\begin{proof}[Proof sketch]
   315	Both sides are recovered from the dependent product structure on $A$ and the universal property of the representable $\Hom_A(a,-)$. Detailed proof: see \cite[\S 9]{RiehlShulman}.
   316	\end{proof}
   317	
   318	This is the engine that drives much of synthetic $(\infty,1)$-category theory in $\STT$.
   319	
   320	\section{Partial Directed Univalence (Riehl--Shulman 2017)}\label{sec:partial}
   321	
   322	\subsection{Covariant fibrations}
   323	
   324	\begin{definition}[Covariant fibration]\label{def:covariant}
   325	Let $A : \U$ be a Segal type. A type family $P : A \to \U$ is \emph{covariant} if for each $\alpha : \Hom_A(a,b)$ and each $u : P(a)$ there is a chosen lift $\alpha_*(u) : P(b)$, depending functorially on $\alpha$.
   326	\end{definition}
   327	
   328	In semantic terms, covariant families correspond to \emph{left fibrations}: functors $A \to \mathcal{S}$ classified by a particular kind of straightening.
   329	
   330	\begin{theorem}[Straightening, partial directed univalence for covariant families]\label{thm:straightening}
   331	For a Rezk type $A$, the following types are equivalent:
   332	\begin{enumerate}
   333	\item Covariant type families $P : A \to \U$ valued in discrete types.
   334	\item Functors $A \to \mathcal{S}_{\disc}$, where $\mathcal{S}_{\disc}$ is the universe of discrete types.
   335	\end{enumerate}
   336	\end{theorem}
   337	
   338	This is \emph{directed univalence for covariant fibrations valued in discrete types}: the universe $\mathcal{S}_{\disc}$ classifies covariant families, in exact analogy with $\U$ classifying type families up to equivalence.
   339	
   340	\subsection{What is partial about it}
   341	
   342	Theorem~\ref{thm:straightening} stops short of asserting
   343	\[
   344	\Hom_{\mathcal{S}}(A, B) \;\eqv\; \Fun(A, B)
   345	\]
   346	for the universe $\mathcal{S}$ \emph{itself} treated as a Segal type. Two reasons.
   347	
   348	\paragraph{(1) The universe is not internally Segal.}
   349	In $\STT$ as set up by Riehl--Shulman, the discrete universe $\mathcal{S}_{\disc}$ is given as a sub-type of $\U$, but its hom-type $\Hom_{\mathcal{S}_{\disc}}(A,B)$ is not directly described. The straightening theorem describes covariant \emph{maps into} $\mathcal{S}_{\disc}$, not the hom-type \emph{within} $\mathcal{S}_{\disc}$.
   350	
   351	\paragraph{(2) Modal pieces are missing.}
   352	To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from~\cite{RiehlShulman}.
   353	
   354	\subsection{Limitations made formal}
   355	
   356	\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
   357	In Riehl--Shulman simplicial type theory:
   358	\begin{enumerate}
   359	\item There is a directed straightening for covariant families into the discrete universe (Theorem~\ref{thm:straightening}).
   360	\item There is \emph{no internally definable} hom-type for the discrete universe $\mathcal{S}_{\disc}$ qua object of the universe $\U$ that satisfies $\Hom_{\mathcal{S}_{\disc}}(A,B) \eqv \Fun(A,B)$.
   361	\item There is no Segal-completion theorem for $\mathcal{S}_{\disc}$ producing a Segal-type version with the desired hom.
   362	\end{enumerate}
   363	\end{proposition}
   364	
   365	These limitations motivate the modal extension we now describe.
   366	
   367	\section{Triangulated Type Theory (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
   368	
   369	\subsection{Modal layer}
   370	
   371	The crucial new ingredient in~\cite{GWB2024} is a system of modalities. We describe four.
   372	
   373	\begin{definition}[The four modalities]\label{def:modalities}
   374	$\TTT$ extends $\STT$ with modalities:
   375	\begin{enumerate}
   376	\item $\flat$ ``crisp'' / ``discrete-discrete'': forces a type to be discrete and only depends on globally defined data.
   377	\item $\sharp$ ``codiscrete'': right adjoint to $\flat$.
   378	\item $\Disc$: the modality whose modal types are the discrete types.
   379	\item $(-)^{\op}$: the opposite modality reversing direction.
   380	\end{enumerate}
   381	With $\flat \dashv \Disc \dashv \sharp$ a triangle of cohesion-like modalities, and $(-)^{\op}$ as duality.
   382	\end{definition}
   383	
   384	\begin{remark}
   385	The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT\@.
   386	\end{remark}
   387	
   388	\subsection{The discrete universe $\mathcal{S}$}
   389	
   390	\begin{definition}[Discrete universe]\label{def:disc-universe}
   391	The \emph{discrete universe} $\mathcal{S}$ in $\TTT$ is the type of $\Disc$-modal types: $\mathcal{S} := \sum_{A : \U} \isDisc(A)$, with universe structure inherited from $\U$.
   392	\end{definition}
   393	
   394	\begin{theorem}[GWB, $\mathcal{S}$ is Segal]\label{thm:s-segal}
   395	The discrete universe $\mathcal{S}$ is a Segal type in $\TTT$. The hom-type $\Hom_{\mathcal{S}}(A, B)$ is well-defined as an extension type out of $\twoI$ valued in $\mathcal{S}$.
   396	\end{theorem}
   397	
   398	\begin{proof}[Proof outline]
   399	The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.
   400	\end{proof}
   401	
   402	\subsection{The directed univalence theorem}
   403	
   404	\begin{theorem}[Directed univalence in $\TTT$, GWB Thm 8.1]\label{thm:dua-s}
   405	For all $A, B : \mathcal{S}$, the canonical map
   406	\[
   407	\funtohom_{A,B} : \Fun(A,B) \;\longrightarrow\; \Hom_{\mathcal{S}}(A,B)
   408	\]
   409	is an equivalence. Concretely, every directed morphism in the universe of discrete types is uniquely (up to coherent homotopy) the type-theoretic action of a function.
   410	\end{theorem}
   411	
   412	\begin{proof}[Proof sketch]
   413	The proof has three parts.
   414	\begin{enumerate}
   415	\item \emph{Define $\funtohom$.} Given $f : A \to B$, define the family $A_f : \twoI \to \mathcal{S}$ by $A_f(0) := A$, $A_f(1) := B$, $A_f(t) := \mathsf{cofib}(f, t)$, where $\mathsf{cofib}(f, t)$ denotes a standard cofibrant path-object construction interpolating between $A$ and $B$ along $f$ (concretely, the homotopy pushout of $f$ with the trivial map at parameter $t$). The $\Disc$ modality ensures $A_f(t)$ stays discrete for $t \in (0,1)$.
   416	\item \emph{Inverse construction.} Given $\alpha : \Hom_{\mathcal{S}}(A,B)$, extract the function $\alpha^\flat : A \to B$ via the $\flat$ modality applied at the endpoint $\{1\}$.
   417	\item \emph{Coherence.} Composition $\funtohom \circ \flat = \id$ and $\flat \circ \funtohom = \id$ both follow from the universal property of extension types and the Beck--Chevalley conditions for $\flat \dashv \Disc \dashv \sharp$.
   418	\end{enumerate}
   419	See \cite[\S 8]{GWB2024} for full details.
   420	\end{proof}
   421	
   422	\begin{corollary}[Yoneda for $\mathcal{S}$]\label{cor:yoneda-s}
   423	Every covariant functor $F : \mathcal{S} \to \mathcal{S}$ is naturally equivalent to $\Hom_{\mathcal{S}}(F^\flat(\mathbf{1}), -)$ for a uniquely determined object $F^\flat(\mathbf{1}) : \mathcal{S}$.
   424	\end{corollary}
   425	
   426	\begin{remark}
   427	Theorem~\ref{thm:dua-s} is a complete directed univalence statement for the discrete fragment. It is ``triangulated'' in the sense that its formulation requires the triangle $\flat \dashv \Disc \dashv \sharp$.
   428	\end{remark}
   429	
   430	\subsection{What is and is not proved}
   431	
   432	\begin{proposition}[Scope of GWB]\label{prop:scope-gwb}
   433	Theorem~\ref{thm:dua-s} establishes directed univalence for the discrete universe $\mathcal{S}$. It does \emph{not} establish:
   434	\begin{enumerate}
   435	\item Directed univalence for any non-discrete sub-universe of $\U$.
   436	\item A directed analogue of Voevodsky univalence for the universe $\U$ itself.
   437	\item A universe of $(\infty,1)$-categories (Rezk types) with hom-types behaving as functors.
   438	\end{enumerate}
   439	\end{proposition}
   440	
   441	\section{Toward a Complete Principle}\label{sec:complete}
   442	
   443	We now formulate four candidate \emph{complete} directed univalence principles in increasing strength, and analyse what would be required to prove each.
   444	
   445	\subsection{Four candidates}
   446	
   447	\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
   448	\emph{Candidate I\@.} For the discrete universe $\mathcal{S}$, $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$.
   449	
   450	\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
   451	\end{definition}
   452	
   453	\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
   454	\emph{Candidate II\@.} For the universe $\mathcal{S}_{\mathsf{Seg}}$ of Segal types, $\Hom_{\mathcal{S}_{\mathsf{Seg}}}(A,B) \eqv \mathsf{SegFun}(A,B)$, where $\mathsf{SegFun}$ is the type of functors preserving Segal structure (= ordinary functions, since composition is uniquely determined).
   455	
   456	\textbf{Status:} Open. Conjectured.
   457	\end{definition}
   458	
   459	\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
   460	\emph{Candidate III\@.} For the universe $\mathcal{S}_{\mathsf{Rezk}}$ of Rezk types, $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B) \eqv \Fun(A,B)$.
   461	
   462	\textbf{Status:} Open. The principal target.
   463	\end{definition}
   464	
   465	\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
   466	\emph{Candidate IV\@.} For the entire universe $\U$, equipped with the directed structure inherited from extension types out of $\twoI$, $\Hom_{\U}(A,B) \eqv \Fun(A,B)$.
   467	
   468	\textbf{Status:} Open. Likely requires a 2-level theory.
   469	\end{definition}
   470	
   471	\subsection{Layered programme}
   472	
   473	\begin{conjecture}[Layered directed univalence]\label{conj:layered}
   474	There is a tower of universes
   475	\[
   476	\mathcal{S}_{\disc} \subset \mathcal{S}_{\mathsf{Rezk}} \subset \mathcal{S}_{\mathsf{Seg}} \subset \U
   477	\]
   478	such that each level satisfies a directed univalence principle of its own kind, with the inclusions being conservative.
   479	\end{conjecture}
   480	
   481	We articulate a layered \emph{programme} as follows. Let $L_n$ denote a universe at layer $n$. Then:
   482	\begin{itemize}
   483	\item $L_0 = \mathcal{S}_{\disc}$: classical directed univalence (Candidate I).
   484	\item $L_1 = \mathcal{S}_{\mathsf{Seg}}$: Segal directed univalence (Candidate II); morphisms are Segal functors.
   485	\item $L_2 = \mathcal{S}_{\mathsf{Rezk}}$: Rezk directed univalence (Candidate III); morphisms are functors of $(\infty,1)$-categories.
   486	\item $L_3 = \U$: universal directed univalence (Candidate IV); requires reflective sub-universe technology.
   487	\end{itemize}
   488	
   489	\subsection{Obstructions to Candidates II--IV}
   490	
   491	\begin{proposition}[Obstruction: opposite-type coherence]\label{prop:opp-coh}
   492	Candidates II--IV require a coherent theory of opposite types $A^{\op}$. The opposite type construction in $\STT$ is well-defined, but its compatibility with the universe structure is subtle: $(-)^{\op}$ is a non-trivial involution on $\U$ that interacts non-trivially with $\Hom$.
   493	\end{proposition}
   494	
   495	\begin{proposition}[Obstruction: modal dependence]\label{prop:modal-dep}
   496	Candidates II--IV likely require a modal layer richer than $\flat \dashv \Disc \dashv \sharp$. In particular, the modality picking out Rezk types is not in general a left or right adjoint to either $\flat$ or $\Disc$, so cannot be expressed in cohesion-like form.
   497	\end{proposition}
   498	
   499	\begin{proposition}[Obstruction: large vs.\ small]\label{prop:large}
   500	Candidate IV in its naive form is inconsistent: $\U$ cannot internalise its own ``large'' $(\infty,1)$-categorical structure. A 2-level approach (\`a la Annenkov--Capriotti--Kraus--Sattler) appears necessary, with a strict inner universe and a homotopical outer one.
   501	\end{proposition}
   502	
   503	\subsection{Sketch of a proof attempt for Candidate III}
   504	
   505	We sketch what a proof of Candidate III would look like, identifying the gaps.
   506	
   507	\begin{enumerate}
   508	\item Define the universe $\mathcal{S}_{\mathsf{Rezk}}$ as the sub-type of $\U$ on Rezk types: $\mathcal{S}_{\mathsf{Rezk}} := \sum_{A : \U} \isRezk(A)$.
   509	\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is Segal in $\TTT$. This is plausibly an extension of Theorem~\ref{thm:s-segal} but requires that $\isRezk$ commute with extension types out of $\twoI$, which is non-trivial.
   510	\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is in fact Rezk (so that ``equivalences in $\mathcal{S}_{\mathsf{Rezk}}$ are identities''). Equivalences in this context are functors that are essentially surjective and fully faithful in the synthetic sense.
   511	\item Construct $\funtohom : \Fun(A,B) \to \Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B)$. Functions between Rezk types are functors of $(\infty,1)$-categories.
   512	\item Construct an inverse using a twisted modality $\Disc^{\mathsf{Rezk}}$ that picks out Rezk types as a localisation of $\STT$.
   513	\end{enumerate}
   514	
   515	Step 5 is the principal technical gap. The modality $\Disc^{\mathsf{Rezk}}$ does not exist in published $\TTT$.
   516	
   517	\begin{question}\label{q:rezk-modality}
   518	Does there exist an extension of $\TTT$ with a modality $\Disc^{\mathsf{Rezk}}$ such that:
   519	\begin{enumerate}
   520	\item Modal types are exactly Rezk types.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '521,900p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   521	\item The triangle $\flat \dashv \Disc^{\mathsf{Rezk}} \dashv \sharp_{\mathsf{Rezk}}$ extends the discrete cohesion.
   522	\item $\funtohom$ is an equivalence?
   523	\end{enumerate}
   524	\end{question}
   525	
   526	\subsection{Cubical comparison}
   527	
   528	\begin{remark}[Cubical analogue]\label{rem:cubical}
   529	Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments~\cite{Cisinski}; the rzk proof assistant aims at a computational interpretation~\cite{rzk}.
   530	\end{remark}
   531	
   532	\subsection{Summary table}
   533	
   534	\begin{center}
   535	\begin{tabular}{lll}
   536	\toprule
   537	\textbf{Universe} & \textbf{Variant} & \textbf{Status} \\
   538	\midrule
   539	$\U$ & symmetric & Voevodsky univalence (theorem in cubical) \\
   540	$\mathcal{S}_{\disc}$ & directed, discrete & GWB 2024 (Theorem~\ref{thm:dua-s}) \\
   541	$\mathcal{S}_{\mathsf{Seg}}$ & directed, Segal & Open (Cand.\ II) \\
   542	$\mathcal{S}_{\mathsf{Rezk}}$ & directed, Rezk & Open (Cand.\ III, principal) \\
   543	$\U_{\mathsf{dir}}$ & directed, all types & Open (Cand.\ IV, requires 2-level) \\
   544	\bottomrule
   545	\end{tabular}
   546	\end{center}
   547	
   548	\section{Connections to $(\infty,1)$-Natural Number Objects and HITs}\label{sec:hit}
   549	
   550	\subsection{Natural number objects in directed type theory}
   551	
   552	In ordinary HoTT, the natural numbers $\N$ are characterised by an initiality universal property: $(\N, 0, \mathsf{succ})$ is initial in the type of pointed endo-types. This characterisation generalises directly to the discrete sub-universe of $\TTT$: $\N$ is a type in $\mathcal{S}$ and is initial.
   553	
   554	\begin{proposition}[NNO in discrete directed type theory]\label{prop:nno-disc}
   555	In $\TTT$, the natural numbers $\N : \mathcal{S}$ are characterised up to equivalence by initiality:
   556	\[
   557	\isContr\Big( \sum_{f : \N \to A} f(0) =_A a_0, \;\text{compatible with succ} \Big)
   558	\]
   559	for any pointed endo-discrete-type $(A, a_0, s)$. Directed univalence (Theorem~\ref{thm:dua-s}) then identifies these initiality witnesses with directed morphisms in $\mathcal{S}$.
   560	\end{proposition}
   561	
   562	\subsection{Higher inductive types and directed univalence}
   563	
   564	A higher inductive type (HIT) like $S^1$ has constructors and \emph{path constructors} producing identifications. In the directed setting one wants \emph{directed-path constructors}: a type with constructors and prescribed hom-types, defined synthetically.
   565	
   566	\begin{definition}[Directed HIT]\label{def:dhit}
   567	A \emph{directed higher inductive type} is a type generated by point constructors plus directed-edge constructors valued in $\Hom$-types.
   568	\end{definition}
   569	
   570	\begin{example}[Walking arrow]\label{ex:walking-arrow}
   571	The simplest directed HIT is the \emph{walking arrow} $\twoI$ itself: two points $0, 1$ and a generator $\sigma : \Hom_{\twoI}(0,1)$.
   572	\end{example}
   573	
   574	\begin{example}[Walking commutative square]\label{ex:walking-square}
   575	Four points $00, 01, 10, 11$, four directed edges, and a 2-cell witnessing commutativity. Models the $\Delta^1 \times \Delta^1$ shape.
   576	\end{example}
   577	
   578	\subsection{Synthetic representation theory}
   579	
   580	Directed univalence connects to representation theory through the slogan: \emph{representations are functors}. A representation of a group $G$ on a vector space is a functor $BG \to \mathsf{Vect}$, where $BG$ is the classifying type of $G$. In a hypothetical full directed type theory:
   581	
   582	\begin{definition}[Synthetic representation]\label{def:rep}
   583	A \emph{synthetic representation} of a Rezk-type group $G$ is a directed morphism $BG \to \mathsf{Vect}$ in $\mathcal{S}_{\mathsf{Rezk}}$. Here, as in classical higher category theory, the group $G$ is presented through its \emph{delooping} $BG$ --- the one-object Rezk-type whose endomorphism hom-type is $G$ itself; representations are then functors out of this delooping. Sub-representations are directed monomorphisms in this sense.
   584	\end{definition}
   585	
   586	\begin{remark}\label{rem:langlands-distant}
   587	Eventually, automorphic representations (functors $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ for $\mathbb{A}$ adelic) would be morphisms in a directed universe. This is highly speculative and depends on Candidate III\@.
   588	\end{remark}
   589	
   590	\subsection{Comparison to formalisations: Coq-HoTT, Lean-mathlib, Cubical Agda, rzk}
   591	
   592	\begin{itemize}
   593	\item Coq-HoTT and Lean-mathlib formalise symmetric univalence as a postulate.
   594	\item Cubical Agda makes symmetric univalence \emph{computational}.
   595	\item The experimental proof assistant rzk~\cite{rzk} implements $\STT$ with topes and extension types; it does \emph{not} yet implement triangulated modalities or prove directed univalence.
   596	\end{itemize}
   597	
   598	\section{Discussion}\label{sec:discussion}
   599	
   600	\subsection{Why is directed univalence so hard?}
   601	
   602	We can summarise the difficulty in three points.
   603	
   604	\begin{enumerate}
   605	\item \emph{Asymmetry of hom.} The hom-type $\Hom_A(a,b)$ is asymmetric in $(a,b)$, while the identity type $a =_A b$ is symmetric. Many path-induction-based arguments fail directly.
   606	\item \emph{Modal dependence.} Even the discrete fragment requires modalities to mediate between symmetric and directed worlds. Non-discrete fragments will likely need richer modal apparatus.
   607	\item \emph{Size issue.} The universe is a large object. A directed structure on it would package its $(\infty,1)$-categorical morphisms internally --- a strictly stronger demand than packaging $\infty$-groupoidal equivalences.
   608	\end{enumerate}
   609	
   610	\subsection{What would change if Candidate III were proven?}
   611	
   612	\begin{enumerate}
   613	\item Synthetic $(\infty,1)$-category theory in $\STT$/$\TTT$ would gain a \emph{universe-theoretic} foundation, not just a Yoneda-based one.
   614	\item Functors $A \to B$ between Rezk types would automatically be morphisms in a Rezk universe, enabling direct manipulation of categories of categories.
   615	\item Adjunctions would internalise: an adjunction $F \dashv G$ would correspond to a single object in $\mathsf{Adj}(\mathcal{S}_{\mathsf{Rezk}})$, accessible through directed transport.
   616	\item Formalisation in a directed proof assistant (extension of rzk) would become tractable.
   617	\end{enumerate}
   618	
   619	\subsection{What would change if Candidate IV were proven?}
   620	
   621	Candidate IV is qualitatively stronger. If proven (likely in a 2-level theory):
   622	
   623	\begin{enumerate}
   624	\item The universe itself would be both an $\infty$-groupoid and an $(\infty,1)$-category --- with the structures coherently related.
   625	\item Univalence and directed univalence would be compatible.
   626	\item Higher directed univalence (for $(\infty, n)$-categories) could be tackled inductively.
   627	\end{enumerate}
   628	
   629	\subsection{Limitations of this paper}
   630	
   631	This paper is expository and programmatic. We do not prove a new directed univalence theorem. The accompanying Haskell and Lean code formalise the discrete fragment of $\TTT$ in a toy model (Haskell) and as a postulate-based sketch (Lean), and exhibit the algebraic content. We hope these provide a productive substrate for future work.
   632	
   633	\section{Open Problems}\label{sec:open}
   634	
   635	We list four explicit open problems.
   636	
   637	\begin{question}[Rezk directed univalence]\label{q:rezk}
   638	Prove or disprove Candidate III: $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A, B) \eqv \Fun(A, B)$ for all Rezk types $A, B$.
   639	\end{question}
   640	
   641	\begin{question}[$(\infty,1)$-Cat as a primitive type]\label{q:icat}
   642	Is there an extension of $\TTT$ with a primitive type $\mathsf{Cat}_{\infty,1}$ of $(\infty,1)$-categories, satisfying its own directed univalence?
   643	\end{question}
   644	
   645	\begin{question}[Internal language of cocartesian fibrations]\label{q:cocart}
   646	Develop the internal language of cocartesian fibrations in $\TTT$, in the spirit of Cisinski--Nguyen~\cite{CisinskiNguyen}.
   647	\end{question}
   648	
   649	\begin{question}[Directed Langlands]\label{q:langlands}
   650	Reformulate automorphic representations as directed morphisms $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ in a fully directed type theory.
   651	\end{question}
   652	
   653	\section{Conclusion}\label{sec:conclusion}
   654	
   655	Directed univalence has come a long way since Riehl--Shulman 2017. Their original framework gave us simplicial type theory with an internalised hom-type and a partial straightening theorem for covariant fibrations. Gratzer--Weinberger--Buchholtz 2024 introduced the modal apparatus needed to internalise directed structure on the universe, and proved the first complete directed univalence theorem for the universe of discrete types.
   656	
   657	The complete principle remains a research target. The path forward is layered: extend the modality structure to capture Segal-ness and Rezk-ness, prove successively stronger directed univalence statements at each layer, and ultimately reach a 2-level account where the universe carries both directed and undirected structure coherently. The reward, if it can be obtained, is a synthetic foundation for $(\infty,1)$-category theory in which functors are directed morphisms in the universe --- an \emph{ipso facto} foundation for synthetic representation theory and beyond.
   658	
   659	We close with a final observation. The classical univalence axiom internalised the slogan ``isomorphic objects are equal''. A complete directed univalence axiom would internalise the slogan ``functors are arrows in the universe of categories''. These are both deeply structuralist principles. The latter, if it can be proved, would unify the structuralist viewpoints of Lawvere, Awodey, and Voevodsky into a single foundational system in which the universe is itself a category.
   660	
   661	\bigskip
   662	
   663	\section*{Acknowledgments}
   664	
   665	This is a derivative exposition; original results are due to Emily Riehl, Michael Shulman, Daniel Gratzer, Jonathan Weinberger, and Ulrik Buchholtz. We thank these authors for the foundational work surveyed here.
   666	
   667	\begin{thebibliography}{99}
   668	
   669	\bibitem{HoTTBook} The Univalent Foundations Program. \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study, 2013.
   670	
   671	\bibitem{Voevodsky} V.\ Voevodsky. \emph{The univalence axiom}. Talks and lecture notes, 2010--2014.
   672	
   673	\bibitem{RiehlShulman} E.\ Riehl and M.\ Shulman. ``A type theory for synthetic $\infty$-categories.'' \emph{Higher Structures} 1(1):147--224, 2017. arXiv:1705.07442.
   674	
   675	\bibitem{GWB2024} D.\ Gratzer, J.\ Weinberger, and U.\ Buchholtz. ``Directed univalence in simplicial homotopy type theory.'' arXiv:2407.09146, 2024.
   676	
   677	\bibitem{Buchholtz} U.\ Buchholtz. \emph{Higher structures in homotopy type theory}. Habilitation, TU Darmstadt, 2019.
   678	
   679	\bibitem{Riehl2025} E.\ Riehl. ``Synthetic perspectives on spaces and categories.'' Survey article, in preparation (2025); preprint announced on the author's webpage.
   680	
   681	\bibitem{Cisinski} D.-C.\ Cisinski. \emph{Higher categories and homotopical algebra}. Cambridge Studies in Advanced Mathematics 180, 2019.
   682	
   683	\bibitem{CisinskiNguyen} D.-C.\ Cisinski and H.-K.\ Nguyen. ``The universal cocartesian fibration.'' arXiv:2210.08945, 2022.
   684	
   685	\bibitem{KavvosWeaver} G.\ A.\ Kavvos and M.\ Weaver. ``On directed type theory.'' Ongoing work, 2024--2025; cf.\ M.\ Weaver and D.\ Licata, ``A Constructive Model of Directed Univalence in Bicubical Sets,'' \emph{LICS 2020}.
   686	
   687	\bibitem{Shulman2019} M.\ Shulman. ``All $(\infty,1)$-toposes have strict univalent universes.'' arXiv:1904.07004, 2019.
   688	
   689	\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.
   690	
   691	\bibitem{Lurie} J.\ Lurie. \emph{Higher Topos Theory}. Annals of Mathematics Studies 170, Princeton, 2009.
   692	
   693	\bibitem{ACKS} D.\ Annenkov, P.\ Capriotti, N.\ Kraus, and C.\ Sattler. ``Two-level type theory and applications.'' \emph{Math.\ Struct.\ Comput.\ Sci.} 33(8), 2023.
   694	
   695	\bibitem{Lumsdaine} P.\ Lumsdaine and M.\ Shulman. ``Semantics of higher inductive types.'' arXiv:1705.07088, 2017.
   696	
   697	\bibitem{LicataShulman} D.\ R.\ Licata and M.\ Shulman. ``Calculating the fundamental group of the circle in homotopy type theory.'' \emph{LICS 2013}, pp.\ 223--232.
   698	
   699	\bibitem{Joyal} A.\ Joyal. ``Quasi-categories and Kan complexes.'' \emph{J.\ Pure Appl.\ Algebra} 175(1):207--222, 2002.
   700	
   701	\bibitem{RezkComplete} C.\ Rezk. ``A model for the homotopy theory of homotopy theory.'' \emph{Trans.\ AMS} 353(3):973--1007, 2001.
   702	
   703	\bibitem{NorthDirected} P.\ R.\ North. ``Towards a directed homotopy type theory.'' \emph{ENTCS} 347, 2019.
   704	
   705	\bibitem{Awodey} S.\ Awodey. ``Structuralism, invariance, and univalence.'' \emph{Phil.\ Math.} 22(1), 2014.
   706	
   707	\end{thebibliography}
   708	
   709	\end{document}

exec
/usr/local/bin/zsh -lc 'rg -n "(! |Undefined|LaTeX Warning|Package .* Warning|Overfull|Underfull|Missing|Runaway|Emergency|Fatal|multiply defined|undefined references|undefined citations|Reference .* undefined|Citation .* undefined)" papers/latex/directed-univalence.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
645:Package everypage Warning: Functionality similar to this package has recently
651:Package everypage Warning: You appear to be running a version of LaTeX
800:LaTeX Warning: Citation `HoTTBook' on page 2 undefined on input line 129.
803:LaTeX Warning: Citation `Voevodsky' on page 2 undefined on input line 129.
806:LaTeX Warning: Citation `RiehlShulman' on page 2 undefined on input line 133.
809:LaTeX Warning: Citation `GWB2024' on page 2 undefined on input line 147.
813:LaTeX Warning: Reference `sec:rs' on page 3 undefined on input line 151.
816:LaTeX Warning: Reference `sec:partial' on page 3 undefined on input line 151.
819:LaTeX Warning: Reference `sec:gwb' on page 3 undefined on input line 152.
822:LaTeX Warning: Reference `sec:complete' on page 3 undefined on input line 153.
825:LaTeX Warning: Reference `sec:hit' on page 3 undefined on input line 154.
828:Overfull \hbox (14.54851pt too wide) in paragraph at lines 157--158
834:LaTeX Warning: Reference `sec:open' on page 3 undefined on input line 159.
837:Overfull \hbox (17.07487pt too wide) in paragraph at lines 200--202
840:cmr/m/n/12 ) \OMS/cmsy/m/n/12 ! [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; c\OT1/
846:Overfull \hbox (24.11427pt too wide) in paragraph at lines 207--208
848:f \OT1/cmr/m/n/12 : \OML/cmm/m/it/12 A \OMS/cmsy/m/n/12 ! \OML/cmm/m/it/12 B$ \
850:OML/cmm/m/it/12 a; b\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ! [][]\OT1/cmr/m/n/12 (\
856:LaTeX Warning: Citation `RiehlShulman' on page 4 undefined on input line 213.
859:LaTeX Warning: Citation `Buchholtz' on page 4 undefined on input line 213.
862:LaTeX Warning: Citation `Cisinski' on page 4 undefined on input line 213.
865:LaTeX Warning: Citation `KavvosWeaver' on page 4 undefined on input line 213.
868:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
872:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
876:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
881:LaTeX Warning: Citation `RiehlShulman' on page 6 undefined on input line 302.
884:LaTeX Warning: Citation `RiehlShulman' on page 6 undefined on input line 312.
888:LaTeX Warning: Reference `thm:straightening' on page 7 undefined on input line 
892:LaTeX Warning: Citation `RiehlShulman' on page 7 undefined on input line 349.
895:LaTeX Warning: Reference `thm:straightening' on page 7 undefined on input line 
900:Overfull \hbox (61.00455pt too wide) in paragraph at lines 364--364
906:LaTeX Warning: Citation `GWB2024' on page 8 undefined on input line 368.
909:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
913:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
917:LaTeX Warning: Citation `GWB2024' on page 8 undefined on input line 396.
921:LaTeX Warning: Citation `GWB2024' on page 9 undefined on input line 416.
924:LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 424.
927:LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 430.
930:Overfull \hbox (9.85336pt too wide) in paragraph at lines 440--441
936:LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 447.
940:LaTeX Warning: Reference `thm:s-segal' on page 11 undefined on input line 506.
943:LaTeX Warning: Citation `Cisinski' on page 11 undefined on input line 526.
946:LaTeX Warning: Citation `rzk' on page 11 undefined on input line 526.
949:LaTeX Warning: Reference `thm:dua-s' on page 11 undefined on input line 535.
953:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
957:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
961:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
965:LaTeX Warning: Reference `thm:dua-s' on page 12 undefined on input line 553.
969:LaTeX Warning: Citation `rzk' on page 13 undefined on input line 589.
973:LaTeX Warning: Citation `CisinskiNguyen' on page 14 undefined on input line 640
977:Underfull \hbox (badness 10000) in paragraph at lines 677--678
983:Underfull \hbox (badness 10000) in paragraph at lines 689--690
995:LaTeX Warning: There were undefined references.
998:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
1001:Package rerunfilecheck Warning: File `directed-univalence.out' has changed.

codex
The existing log looks like a first pass, so its undefined references/citations may be stale. I’m going to run a temp-output compile twice into `/tmp` to separate real source issues from rerun noise.
codex
The sandbox blocks even redirecting checker output into `/tmp`, so I’m keeping verification to captured command output and the checked-in log/source. I’ll still try a direct temp-output compile without shell redirection.
exec
/usr/local/bin/zsh -lc 'pdflatex -interaction=nonstopmode -halt-on-error -output-directory=/tmp /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
! I can't write on file `directed-univalence.log'.
(Press Enter to retry, or Control-D to exit; default file extension is `.log')
Please type another transcript file name
! Emergency stop
!  ==> Fatal error occurred, no output PDF file produced!

exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/directed-univalence.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/directed-univalence.tex", line 30: possible unwanted space at "{"

exec
/usr/local/bin/zsh -lc 'rg -n "(newlabel|bibcite|citation|undefined|Warning|Overfull|Underfull|! )" papers/latex/directed-univalence.aux papers/latex/directed-univalence.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
papers/latex/directed-univalence.aux:6:\citation{HoTTBook}
papers/latex/directed-univalence.aux:7:\citation{Voevodsky}
papers/latex/directed-univalence.aux:8:\citation{RiehlShulman}
papers/latex/directed-univalence.aux:9:\citation{GWB2024}
papers/latex/directed-univalence.aux:11:\newlabel{sec:intro}{{1}{2}{Introduction}{section.1}{}}
papers/latex/directed-univalence.aux:12:\newlabel{sec:intro@cref}{{[section][1][]1}{[1][1][]2}{}{}{}}
papers/latex/directed-univalence.aux:15:\newlabel{sec:background}{{2}{3}{Background: Symmetric Univalence and Directed Motivation}{section.2}{}}
papers/latex/directed-univalence.aux:16:\newlabel{sec:background@cref}{{[section][2][]2}{[1][3][]3}{}{}{}}
papers/latex/directed-univalence.aux:18:\newlabel{def:equiv}{{2.1}{3}{Equivalence}{theorem.2.1}{}}
papers/latex/directed-univalence.aux:19:\newlabel{def:equiv@cref}{{[theorem][1][2]2.1}{[1][3][]3}{}{}{}}
papers/latex/directed-univalence.aux:20:\citation{RiehlShulman}
papers/latex/directed-univalence.aux:21:\citation{Buchholtz}
papers/latex/directed-univalence.aux:22:\citation{Cisinski}
papers/latex/directed-univalence.aux:23:\citation{KavvosWeaver}
papers/latex/directed-univalence.aux:24:\newlabel{def:idtoeqv}{{2.2}{4}{$\idtoeqv $}{theorem.2.2}{}}
papers/latex/directed-univalence.aux:25:\newlabel{def:idtoeqv@cref}{{[theorem][2][2]2.2}{[1][3][]4}{}{}{}}
papers/latex/directed-univalence.aux:26:\newlabel{thm:univalence}{{2.3}{4}{Voevodsky's univalence axiom}{theorem.2.3}{}}
papers/latex/directed-univalence.aux:27:\newlabel{thm:univalence@cref}{{[theorem][3][2]2.3}{[1][4][]4}{}{}{}}
papers/latex/directed-univalence.aux:32:\newlabel{sec:rs}{{3}{5}{Riehl--Shulman Simplicial Type Theory}{section.3}{}}
papers/latex/directed-univalence.aux:33:\newlabel{sec:rs@cref}{{[section][3][]3}{[1][5][]5}{}{}{}}
papers/latex/directed-univalence.aux:35:\newlabel{def:cube}{{3.1}{5}{Cube}{theorem.3.1}{}}
papers/latex/directed-univalence.aux:36:\newlabel{def:cube@cref}{{[theorem][1][3]3.1}{[1][5][]5}{}{}{}}
papers/latex/directed-univalence.aux:37:\newlabel{def:tope}{{3.2}{5}{Tope}{theorem.3.2}{}}
papers/latex/directed-univalence.aux:38:\newlabel{def:tope@cref}{{[theorem][2][3]3.2}{[1][5][]5}{}{}{}}
papers/latex/directed-univalence.aux:39:\newlabel{def:exttype}{{3.3}{5}{Extension type}{theorem.3.3}{}}
papers/latex/directed-univalence.aux:40:\newlabel{def:exttype@cref}{{[theorem][3][3]3.3}{[1][5][]5}{}{}{}}
papers/latex/directed-univalence.aux:42:\newlabel{def:hom}{{3.5}{5}{Hom-type}{theorem.3.5}{}}
papers/latex/directed-univalence.aux:43:\newlabel{def:hom@cref}{{[theorem][5][3]3.5}{[1][5][]5}{}{}{}}
papers/latex/directed-univalence.aux:44:\citation{RiehlShulman}
papers/latex/directed-univalence.aux:45:\citation{RiehlShulman}
papers/latex/directed-univalence.aux:46:\newlabel{def:segal}{{3.6}{6}{Segal predicate}{theorem.3.6}{}}
papers/latex/directed-univalence.aux:47:\newlabel{def:segal@cref}{{[theorem][6][3]3.6}{[1][6][]6}{}{}{}}
papers/latex/directed-univalence.aux:48:\newlabel{def:rezk}{{3.7}{6}{Rezk predicate}{theorem.3.7}{}}
papers/latex/directed-univalence.aux:49:\newlabel{def:rezk@cref}{{[theorem][7][3]3.7}{[1][6][]6}{}{}{}}
papers/latex/directed-univalence.aux:50:\newlabel{thm:rs-semantic}{{3.8}{6}{Riehl--Shulman, semantic}{theorem.3.8}{}}
papers/latex/directed-univalence.aux:51:\newlabel{thm:rs-semantic@cref}{{[theorem][8][3]3.8}{[1][6][]6}{}{}{}}
papers/latex/directed-univalence.aux:53:\newlabel{def:discrete}{{3.9}{6}{Discrete type}{theorem.3.9}{}}
papers/latex/directed-univalence.aux:54:\newlabel{def:discrete@cref}{{[theorem][9][3]3.9}{[1][6][]6}{}{}{}}
papers/latex/directed-univalence.aux:55:\newlabel{ex:discrete-types}{{3.10}{6}{}{theorem.3.10}{}}
papers/latex/directed-univalence.aux:56:\newlabel{ex:discrete-types@cref}{{[theorem][10][3]3.10}{[1][6][]6}{}{}{}}
papers/latex/directed-univalence.aux:58:\newlabel{thm:yoneda}{{3.11}{6}{Synthetic Yoneda, RS Thm 9.1}{theorem.3.11}{}}
papers/latex/directed-univalence.aux:59:\newlabel{thm:yoneda@cref}{{[theorem][11][3]3.11}{[1][6][]6}{}{}{}}
papers/latex/directed-univalence.aux:60:\citation{RiehlShulman}
papers/latex/directed-univalence.aux:62:\newlabel{sec:partial}{{4}{7}{Partial Directed Univalence (Riehl--Shulman 2017)}{section.4}{}}
papers/latex/directed-univalence.aux:63:\newlabel{sec:partial@cref}{{[section][4][]4}{[1][7][]7}{}{}{}}
papers/latex/directed-univalence.aux:65:\newlabel{def:covariant}{{4.1}{7}{Covariant fibration}{theorem.4.1}{}}
papers/latex/directed-univalence.aux:66:\newlabel{def:covariant@cref}{{[theorem][1][4]4.1}{[1][7][]7}{}{}{}}
papers/latex/directed-univalence.aux:67:\newlabel{thm:straightening}{{4.2}{7}{Straightening, partial directed univalence for covariant families}{theorem.4.2}{}}
papers/latex/directed-univalence.aux:68:\newlabel{thm:straightening@cref}{{[theorem][2][4]4.2}{[1][7][]7}{}{}{}}
papers/latex/directed-univalence.aux:72:\citation{GWB2024}
papers/latex/directed-univalence.aux:73:\citation{GWB2024}
papers/latex/directed-univalence.aux:75:\newlabel{prop:limitations}{{4.3}{8}{Limitations of $\STT $}{theorem.4.3}{}}
papers/latex/directed-univalence.aux:76:\newlabel{prop:limitations@cref}{{[theorem][3][4]4.3}{[1][7][]8}{}{}{}}
papers/latex/directed-univalence.aux:78:\newlabel{sec:gwb}{{5}{8}{Triangulated Type Theory (Gratzer--Weinberger--Buchholtz 2024)}{section.5}{}}
papers/latex/directed-univalence.aux:79:\newlabel{sec:gwb@cref}{{[section][5][]5}{[1][8][]8}{}{}{}}
papers/latex/directed-univalence.aux:81:\newlabel{def:modalities}{{5.1}{8}{The four modalities}{theorem.5.1}{}}
papers/latex/directed-univalence.aux:82:\newlabel{def:modalities@cref}{{[theorem][1][5]5.1}{[1][8][]8}{}{}{}}
papers/latex/directed-univalence.aux:84:\newlabel{def:disc-universe}{{5.3}{8}{Discrete universe}{theorem.5.3}{}}
papers/latex/directed-univalence.aux:85:\newlabel{def:disc-universe@cref}{{[theorem][3][5]5.3}{[1][8][]8}{}{}{}}
papers/latex/directed-univalence.aux:86:\newlabel{thm:s-segal}{{5.4}{8}{GWB, $\mathcal {S}$ is Segal}{theorem.5.4}{}}
papers/latex/directed-univalence.aux:87:\newlabel{thm:s-segal@cref}{{[theorem][4][5]5.4}{[1][8][]8}{}{}{}}
papers/latex/directed-univalence.aux:88:\citation{GWB2024}
papers/latex/directed-univalence.aux:90:\newlabel{thm:dua-s}{{5.5}{9}{Directed univalence in $\TTT $, GWB Thm 8.1}{theorem.5.5}{}}
papers/latex/directed-univalence.aux:91:\newlabel{thm:dua-s@cref}{{[theorem][5][5]5.5}{[1][8][]9}{}{}{}}
papers/latex/directed-univalence.aux:92:\newlabel{cor:yoneda-s}{{5.6}{9}{Yoneda for $\mathcal {S}$}{theorem.5.6}{}}
papers/latex/directed-univalence.aux:93:\newlabel{cor:yoneda-s@cref}{{[theorem][6][5]5.6}{[1][9][]9}{}{}{}}
papers/latex/directed-univalence.aux:95:\newlabel{prop:scope-gwb}{{5.8}{9}{Scope of GWB}{theorem.5.8}{}}
papers/latex/directed-univalence.aux:96:\newlabel{prop:scope-gwb@cref}{{[theorem][8][5]5.8}{[1][9][]9}{}{}{}}
papers/latex/directed-univalence.aux:98:\newlabel{sec:complete}{{6}{9}{Toward a Complete Principle}{section.6}{}}
papers/latex/directed-univalence.aux:99:\newlabel{sec:complete@cref}{{[section][6][]6}{[1][9][]9}{}{}{}}
papers/latex/directed-univalence.aux:101:\newlabel{def:cand-i}{{6.1}{10}{Candidate I: Discrete directed univalence}{theorem.6.1}{}}
papers/latex/directed-univalence.aux:102:\newlabel{def:cand-i@cref}{{[theorem][1][6]6.1}{[1][9][]10}{}{}{}}
papers/latex/directed-univalence.aux:103:\newlabel{def:cand-ii}{{6.2}{10}{Candidate II: Segal directed univalence}{theorem.6.2}{}}
papers/latex/directed-univalence.aux:104:\newlabel{def:cand-ii@cref}{{[theorem][2][6]6.2}{[1][9][]10}{}{}{}}
papers/latex/directed-univalence.aux:105:\newlabel{def:cand-iii}{{6.3}{10}{Candidate III: Rezk directed univalence}{theorem.6.3}{}}
papers/latex/directed-univalence.aux:106:\newlabel{def:cand-iii@cref}{{[theorem][3][6]6.3}{[1][10][]10}{}{}{}}
papers/latex/directed-univalence.aux:107:\newlabel{def:cand-iv}{{6.4}{10}{Candidate IV: Universal directed univalence}{theorem.6.4}{}}
papers/latex/directed-univalence.aux:108:\newlabel{def:cand-iv@cref}{{[theorem][4][6]6.4}{[1][10][]10}{}{}{}}
papers/latex/directed-univalence.aux:110:\newlabel{conj:layered}{{6.5}{10}{Layered directed univalence}{theorem.6.5}{}}
papers/latex/directed-univalence.aux:111:\newlabel{conj:layered@cref}{{[theorem][5][6]6.5}{[1][10][]10}{}{}{}}
papers/latex/directed-univalence.aux:113:\newlabel{prop:opp-coh}{{6.6}{10}{Obstruction: opposite-type coherence}{theorem.6.6}{}}
papers/latex/directed-univalence.aux:114:\newlabel{prop:opp-coh@cref}{{[theorem][6][6]6.6}{[1][10][]10}{}{}{}}
papers/latex/directed-univalence.aux:115:\citation{Cisinski}
papers/latex/directed-univalence.aux:116:\citation{rzk}
papers/latex/directed-univalence.aux:117:\newlabel{prop:modal-dep}{{6.7}{11}{Obstruction: modal dependence}{theorem.6.7}{}}
papers/latex/directed-univalence.aux:118:\newlabel{prop:modal-dep@cref}{{[theorem][7][6]6.7}{[1][10][]11}{}{}{}}
papers/latex/directed-univalence.aux:119:\newlabel{prop:large}{{6.8}{11}{Obstruction: large vs.\ small}{theorem.6.8}{}}
papers/latex/directed-univalence.aux:120:\newlabel{prop:large@cref}{{[theorem][8][6]6.8}{[1][10][]11}{}{}{}}
papers/latex/directed-univalence.aux:122:\newlabel{q:rezk-modality}{{6.9}{11}{}{theorem.6.9}{}}
papers/latex/directed-univalence.aux:123:\newlabel{q:rezk-modality@cref}{{[theorem][9][6]6.9}{[1][11][]11}{}{}{}}
papers/latex/directed-univalence.aux:125:\newlabel{rem:cubical}{{6.10}{11}{Cubical analogue}{theorem.6.10}{}}
papers/latex/directed-univalence.aux:126:\newlabel{rem:cubical@cref}{{[theorem][10][6]6.10}{[1][11][]11}{}{}{}}
papers/latex/directed-univalence.aux:129:\newlabel{sec:hit}{{7}{12}{Connections to $(\infty ,1)$-Natural Number Objects and HITs}{section.7}{}}
papers/latex/directed-univalence.aux:130:\newlabel{sec:hit@cref}{{[section][7][]7}{[1][12][]12}{}{}{}}
papers/latex/directed-univalence.aux:132:\newlabel{prop:nno-disc}{{7.1}{12}{NNO in discrete directed type theory}{theorem.7.1}{}}
papers/latex/directed-univalence.aux:133:\newlabel{prop:nno-disc@cref}{{[theorem][1][7]7.1}{[1][12][]12}{}{}{}}
papers/latex/directed-univalence.aux:135:\newlabel{def:dhit}{{7.2}{12}{Directed HIT}{theorem.7.2}{}}
papers/latex/directed-univalence.aux:136:\newlabel{def:dhit@cref}{{[theorem][2][7]7.2}{[1][12][]12}{}{}{}}
papers/latex/directed-univalence.aux:137:\newlabel{ex:walking-arrow}{{7.3}{12}{Walking arrow}{theorem.7.3}{}}
papers/latex/directed-univalence.aux:138:\newlabel{ex:walking-arrow@cref}{{[theorem][3][7]7.3}{[1][12][]12}{}{}{}}
papers/latex/directed-univalence.aux:139:\newlabel{ex:walking-square}{{7.4}{12}{Walking commutative square}{theorem.7.4}{}}
papers/latex/directed-univalence.aux:140:\newlabel{ex:walking-square@cref}{{[theorem][4][7]7.4}{[1][12][]12}{}{}{}}
papers/latex/directed-univalence.aux:142:\citation{rzk}
papers/latex/directed-univalence.aux:143:\newlabel{def:rep}{{7.5}{13}{Synthetic representation}{theorem.7.5}{}}
papers/latex/directed-univalence.aux:144:\newlabel{def:rep@cref}{{[theorem][5][7]7.5}{[1][12][]13}{}{}{}}
papers/latex/directed-univalence.aux:145:\newlabel{rem:langlands-distant}{{7.6}{13}{}{theorem.7.6}{}}
papers/latex/directed-univalence.aux:146:\newlabel{rem:langlands-distant@cref}{{[theorem][6][7]7.6}{[1][13][]13}{}{}{}}
papers/latex/directed-univalence.aux:149:\newlabel{sec:discussion}{{8}{13}{Discussion}{section.8}{}}
papers/latex/directed-univalence.aux:150:\newlabel{sec:discussion@cref}{{[section][8][]8}{[1][13][]13}{}{}{}}
papers/latex/directed-univalence.aux:153:\citation{CisinskiNguyen}
papers/latex/directed-univalence.aux:157:\newlabel{sec:open}{{9}{14}{Open Problems}{section.9}{}}
papers/latex/directed-univalence.aux:158:\newlabel{sec:open@cref}{{[section][9][]9}{[1][14][]14}{}{}{}}
papers/latex/directed-univalence.aux:159:\newlabel{q:rezk}{{9.1}{14}{Rezk directed univalence}{theorem.9.1}{}}
papers/latex/directed-univalence.aux:160:\newlabel{q:rezk@cref}{{[theorem][1][9]9.1}{[1][14][]14}{}{}{}}
papers/latex/directed-univalence.aux:161:\newlabel{q:icat}{{9.2}{14}{$(\infty ,1)$-Cat as a primitive type}{theorem.9.2}{}}
papers/latex/directed-univalence.aux:162:\newlabel{q:icat@cref}{{[theorem][2][9]9.2}{[1][14][]14}{}{}{}}
papers/latex/directed-univalence.aux:163:\newlabel{q:cocart}{{9.3}{14}{Internal language of cocartesian fibrations}{theorem.9.3}{}}
papers/latex/directed-univalence.aux:164:\newlabel{q:cocart@cref}{{[theorem][3][9]9.3}{[1][14][]14}{}{}{}}
papers/latex/directed-univalence.aux:165:\newlabel{q:langlands}{{9.4}{14}{Directed Langlands}{theorem.9.4}{}}
papers/latex/directed-univalence.aux:166:\newlabel{q:langlands@cref}{{[theorem][4][9]9.4}{[1][14][]14}{}{}{}}
papers/latex/directed-univalence.aux:168:\newlabel{sec:conclusion}{{10}{14}{Conclusion}{section.10}{}}
papers/latex/directed-univalence.aux:169:\newlabel{sec:conclusion@cref}{{[section][10][]10}{[1][14][]14}{}{}{}}
papers/latex/directed-univalence.aux:170:\bibcite{HoTTBook}{1}
papers/latex/directed-univalence.aux:171:\bibcite{Voevodsky}{2}
papers/latex/directed-univalence.aux:172:\bibcite{RiehlShulman}{3}
papers/latex/directed-univalence.aux:173:\bibcite{GWB2024}{4}
papers/latex/directed-univalence.aux:174:\bibcite{Buchholtz}{5}
papers/latex/directed-univalence.aux:175:\bibcite{Riehl2025}{6}
papers/latex/directed-univalence.aux:176:\bibcite{Cisinski}{7}
papers/latex/directed-univalence.aux:177:\bibcite{CisinskiNguyen}{8}
papers/latex/directed-univalence.aux:178:\bibcite{KavvosWeaver}{9}
papers/latex/directed-univalence.aux:179:\bibcite{Shulman2019}{10}
papers/latex/directed-univalence.aux:180:\bibcite{rzk}{11}
papers/latex/directed-univalence.aux:181:\bibcite{Lurie}{12}
papers/latex/directed-univalence.aux:182:\bibcite{ACKS}{13}
papers/latex/directed-univalence.aux:183:\bibcite{Lumsdaine}{14}
papers/latex/directed-univalence.aux:184:\bibcite{LicataShulman}{15}
papers/latex/directed-univalence.aux:185:\bibcite{Joyal}{16}
papers/latex/directed-univalence.aux:186:\bibcite{RezkComplete}{17}
papers/latex/directed-univalence.aux:187:\bibcite{NorthDirected}{18}
papers/latex/directed-univalence.aux:188:\bibcite{Awodey}{19}
papers/latex/directed-univalence.log:645:Package everypage Warning: Functionality similar to this package has recently
papers/latex/directed-univalence.log:651:Package everypage Warning: You appear to be running a version of LaTeX
papers/latex/directed-univalence.log:800:LaTeX Warning: Citation `HoTTBook' on page 2 undefined on input line 129.
papers/latex/directed-univalence.log:803:LaTeX Warning: Citation `Voevodsky' on page 2 undefined on input line 129.
papers/latex/directed-univalence.log:806:LaTeX Warning: Citation `RiehlShulman' on page 2 undefined on input line 133.
papers/latex/directed-univalence.log:809:LaTeX Warning: Citation `GWB2024' on page 2 undefined on input line 147.
papers/latex/directed-univalence.log:813:LaTeX Warning: Reference `sec:rs' on page 3 undefined on input line 151.
papers/latex/directed-univalence.log:816:LaTeX Warning: Reference `sec:partial' on page 3 undefined on input line 151.
papers/latex/directed-univalence.log:819:LaTeX Warning: Reference `sec:gwb' on page 3 undefined on input line 152.
papers/latex/directed-univalence.log:822:LaTeX Warning: Reference `sec:complete' on page 3 undefined on input line 153.
papers/latex/directed-univalence.log:825:LaTeX Warning: Reference `sec:hit' on page 3 undefined on input line 154.
papers/latex/directed-univalence.log:828:Overfull \hbox (14.54851pt too wide) in paragraph at lines 157--158
papers/latex/directed-univalence.log:834:LaTeX Warning: Reference `sec:open' on page 3 undefined on input line 159.
papers/latex/directed-univalence.log:837:Overfull \hbox (17.07487pt too wide) in paragraph at lines 200--202
papers/latex/directed-univalence.log:840:cmr/m/n/12 ) \OMS/cmsy/m/n/12 ! [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; c\OT1/
papers/latex/directed-univalence.log:846:Overfull \hbox (24.11427pt too wide) in paragraph at lines 207--208
papers/latex/directed-univalence.log:848:f \OT1/cmr/m/n/12 : \OML/cmm/m/it/12 A \OMS/cmsy/m/n/12 ! \OML/cmm/m/it/12 B$ \
papers/latex/directed-univalence.log:850:OML/cmm/m/it/12 a; b\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ! [][]\OT1/cmr/m/n/12 (\
papers/latex/directed-univalence.log:856:LaTeX Warning: Citation `RiehlShulman' on page 4 undefined on input line 213.
papers/latex/directed-univalence.log:859:LaTeX Warning: Citation `Buchholtz' on page 4 undefined on input line 213.
papers/latex/directed-univalence.log:862:LaTeX Warning: Citation `Cisinski' on page 4 undefined on input line 213.
papers/latex/directed-univalence.log:865:LaTeX Warning: Citation `KavvosWeaver' on page 4 undefined on input line 213.
papers/latex/directed-univalence.log:868:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:872:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:876:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:881:LaTeX Warning: Citation `RiehlShulman' on page 6 undefined on input line 302.
papers/latex/directed-univalence.log:884:LaTeX Warning: Citation `RiehlShulman' on page 6 undefined on input line 312.
papers/latex/directed-univalence.log:888:LaTeX Warning: Reference `thm:straightening' on page 7 undefined on input line 
papers/latex/directed-univalence.log:892:LaTeX Warning: Citation `RiehlShulman' on page 7 undefined on input line 349.
papers/latex/directed-univalence.log:895:LaTeX Warning: Reference `thm:straightening' on page 7 undefined on input line 
papers/latex/directed-univalence.log:900:Overfull \hbox (61.00455pt too wide) in paragraph at lines 364--364
papers/latex/directed-univalence.log:906:LaTeX Warning: Citation `GWB2024' on page 8 undefined on input line 368.
papers/latex/directed-univalence.log:909:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:913:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:917:LaTeX Warning: Citation `GWB2024' on page 8 undefined on input line 396.
papers/latex/directed-univalence.log:921:LaTeX Warning: Citation `GWB2024' on page 9 undefined on input line 416.
papers/latex/directed-univalence.log:924:LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 424.
papers/latex/directed-univalence.log:927:LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 430.
papers/latex/directed-univalence.log:930:Overfull \hbox (9.85336pt too wide) in paragraph at lines 440--441
papers/latex/directed-univalence.log:936:LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 447.
papers/latex/directed-univalence.log:940:LaTeX Warning: Reference `thm:s-segal' on page 11 undefined on input line 506.
papers/latex/directed-univalence.log:943:LaTeX Warning: Citation `Cisinski' on page 11 undefined on input line 526.
papers/latex/directed-univalence.log:946:LaTeX Warning: Citation `rzk' on page 11 undefined on input line 526.
papers/latex/directed-univalence.log:949:LaTeX Warning: Reference `thm:dua-s' on page 11 undefined on input line 535.
papers/latex/directed-univalence.log:953:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:957:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:961:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
papers/latex/directed-univalence.log:965:LaTeX Warning: Reference `thm:dua-s' on page 12 undefined on input line 553.
papers/latex/directed-univalence.log:969:LaTeX Warning: Citation `rzk' on page 13 undefined on input line 589.
papers/latex/directed-univalence.log:973:LaTeX Warning: Citation `CisinskiNguyen' on page 14 undefined on input line 640
papers/latex/directed-univalence.log:977:Underfull \hbox (badness 10000) in paragraph at lines 677--678
papers/latex/directed-univalence.log:983:Underfull \hbox (badness 10000) in paragraph at lines 689--690
papers/latex/directed-univalence.log:995:LaTeX Warning: There were undefined references.
papers/latex/directed-univalence.log:998:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.
papers/latex/directed-univalence.log:1001:Package rerunfilecheck Warning: File `directed-univalence.out' has changed.

exec
/usr/local/bin/zsh -lc "chktex -q -f '%l:%c:%d:%k:%n:%m\\n' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
110:39:2:Warning:8:Wrong length of dash may have been used.\n119:351:2:Warning:8:Wrong length of dash may have been used.\n121:73:2:Warning:8:Wrong length of dash may have been used.\n121:103:2:Warning:8:Wrong length of dash may have been used.\n121:115:2:Warning:8:Wrong length of dash may have been used.\n128:103:2:Warning:8:Wrong length of dash may have been used.\n144:242:2:Warning:8:Wrong length of dash may have been used.\n150:255:2:Warning:8:Wrong length of dash may have been used.\n155:26:2:Warning:8:Wrong length of dash may have been used.\n155:38:2:Warning:8:Wrong length of dash may have been used.\n164:387:2:Warning:8:Wrong length of dash may have been used.\n164:443:2:Warning:8:Wrong length of dash may have been used.\n164:455:2:Warning:8:Wrong length of dash may have been used.\n216:7:1:Warning:36:You should put a space in front of parenthesis.\n216:34:2:Warning:8:Wrong length of dash may have been used.\n226:15:2:Warning:8:Wrong length of dash may have been used.\n268:354:1:Warning:2:Non-breaking space (`~') should have been used.\n285:22:2:Warning:8:Wrong length of dash may have been used.\n315:152:1:Warning:2:Non-breaking space (`~') should have been used.\n320:44:2:Warning:8:Wrong length of dash may have been used.\n349:29:2:Warning:8:Wrong length of dash may have been used.\n352:300:2:Warning:8:Wrong length of dash may have been used.\n352:312:2:Warning:8:Wrong length of dash may have been used.\n357:9:2:Warning:8:Wrong length of dash may have been used.\n367:43:2:Warning:8:Wrong length of dash may have been used.\n367:55:2:Warning:8:Wrong length of dash may have been used.\n379:10:1:Warning:3:You should enclose the previous parenthesis with `{}'.\n381:88:1:Warning:3:You should enclose the previous parenthesis with `{}'.\n385:112:2:Warning:8:Wrong length of dash may have been used.\n385:174:1:Warning:3:You should enclose the previous parenthesis with `{}'.\n399:299:1:Warning:2:Non-breaking space (`~') should have been used.\n417:172:2:Warning:8:Wrong length of dash may have been used.\n419:4:1:Warning:2:Non-breaking space (`~') should have been used.\n447:31:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\n453:32:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\n459:33:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\n465:32:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\n489:42:2:Warning:8:Wrong length of dash may have been used.\n492:14:2:Warning:8:Wrong length of dash may have been used.\n492:196:1:Warning:3:You should enclose the previous parenthesis with `{}'.\n496:14:2:Warning:8:Wrong length of dash may have been used.\n500:162:2:Warning:8:Wrong length of dash may have been used.\n500:173:2:Warning:8:Wrong length of dash may have been used.\n500:180:2:Warning:8:Wrong length of dash may have been used.\n529:106:2:Warning:8:Wrong length of dash may have been used.\n529:115:2:Warning:8:Wrong length of dash may have been used.\n529:122:2:Warning:8:Wrong length of dash may have been used.\n638:32:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\n646:93:2:Warning:8:Wrong length of dash may have been used.\n655:52:2:Warning:8:Wrong length of dash may have been used.\n655:223:2:Warning:8:Wrong length of dash may have been used.\n655:235:2:Warning:8:Wrong length of dash may have been used.\n669:54:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n671:35:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n673:100:1:Warning:38:You should not use punctuation in front of quotes.\n673:149:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n675:123:1:Warning:38:You should not use punctuation in front of quotes.\n677:35:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n679:81:1:Warning:38:You should not use punctuation in front of quotes.\n681:36:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n683:98:1:Warning:38:You should not use punctuation in front of quotes.\n685:80:1:Warning:38:You should not use punctuation in front of quotes.\n685:205:1:Warning:38:You should not use punctuation in front of quotes.\n687:94:1:Warning:38:You should not use punctuation in front of quotes.\n689:33:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n689:117:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n691:27:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\n693:113:1:Warning:38:You should not use punctuation in front of quotes.\n695:89:1:Warning:38:You should not use punctuation in front of quotes.\n697:130:1:Warning:38:You should not use punctuation in front of quotes.\n699:64:1:Warning:38:You should not use punctuation in front of quotes.\n701:86:1:Warning:38:You should not use punctuation in front of quotes.\n703:81:1:Warning:38:You should not use punctuation in front of quotes.\n705:73:1:Warning:38:You should not use punctuation in front of quotes.\n
exec
/usr/local/bin/zsh -lc "sed -n '820,940p' papers/latex/directed-univalence.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:


LaTeX Warning: Reference `sec:complete' on page 3 undefined on input line 153.


LaTeX Warning: Reference `sec:hit' on page 3 undefined on input line 154.


Overfull \hbox (14.54851pt too wide) in paragraph at lines 157--158
[]\OT1/cmr/m/n/12 We ac-com-pany the ex-po-si-tion with for-mal sketches in Has
kell (\OT1/cmtt/m/n/12 src/directed-univalence/\OT1/cmr/m/n/12 )
 []


LaTeX Warning: Reference `sec:open' on page 3 undefined on input line 159.

[3]
Overfull \hbox (17.07487pt too wide) in paragraph at lines 200--202
\OT1/cmr/m/n/12 together with com-po-si-tion $[][](\OML/cmm/m/it/12 b; c\OT1/cm
r/m/n/12 ) \OMS/cmsy/m/n/12 ^^B [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; b\OT1/
cmr/m/n/12 ) \OMS/cmsy/m/n/12 ! [][]\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a; c\OT1/
cmr/m/n/12 )$ and iden-ti-ties $[][] : [][](\OML/cmm/m/it/12 a; a\OT1/cmr/m/n/1
2 )$,
 []


Overfull \hbox (24.11427pt too wide) in paragraph at lines 207--208
[]\OT1/cmr/m/it/12 Functoriality. \OT1/cmr/m/n/12 Func-tions $\OML/cmm/m/it/12 
f \OT1/cmr/m/n/12 : \OML/cmm/m/it/12 A \OMS/cmsy/m/n/12 ! \OML/cmm/m/it/12 B$ \
OT1/cmr/m/n/12 act on hom-types: $\OML/cmm/m/it/12 f[] \OT1/cmr/m/n/12 : [][](\
OML/cmm/m/it/12 a; b\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n/12 ! [][]\OT1/cmr/m/n/12 (\
OML/cmm/m/it/12 f\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 a\OT1/cmr/m/n/12 )\OML/cmm/m
/it/12 ; f\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 b\OT1/cmr/m/n/12 ))$. 
 []


LaTeX Warning: Citation `RiehlShulman' on page 4 undefined on input line 213.


LaTeX Warning: Citation `Buchholtz' on page 4 undefined on input line 213.


LaTeX Warning: Citation `Cisinski' on page 4 undefined on input line 213.


LaTeX Warning: Citation `KavvosWeaver' on page 4 undefined on input line 213.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 215.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 215.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 215.

[4] [5]

LaTeX Warning: Citation `RiehlShulman' on page 6 undefined on input line 302.


LaTeX Warning: Citation `RiehlShulman' on page 6 undefined on input line 312.

[6]

LaTeX Warning: Reference `thm:straightening' on page 7 undefined on input line 
339.


LaTeX Warning: Citation `RiehlShulman' on page 7 undefined on input line 349.


LaTeX Warning: Reference `thm:straightening' on page 7 undefined on input line 
356.

[7{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc
}]
Overfull \hbox (61.00455pt too wide) in paragraph at lines 364--364
[]\OT1/cmr/bx/n/17.28 Triangulated Type The-ory (Gratzer--Weinberger--Buchholtz

 []


LaTeX Warning: Citation `GWB2024' on page 8 undefined on input line 368.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 385.


LaTeX Warning: Citation `GWB2024' on page 8 undefined on input line 396.

[8]

LaTeX Warning: Citation `GWB2024' on page 9 undefined on input line 416.


LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 424.


LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 430.


Overfull \hbox (9.85336pt too wide) in paragraph at lines 440--441
\OT1/cmr/m/n/12 We now for-mu-late four can-di-date \OT1/cmr/m/it/12 com-plete 
\OT1/cmr/m/n/12 di-rected uni-va-lence prin-ci-ples in in-creas-ing strength,
 []


LaTeX Warning: Reference `thm:dua-s' on page 9 undefined on input line 447.

[9] [10]

LaTeX Warning: Reference `thm:s-segal' on page 11 undefined on input line 506.

exec
/usr/local/bin/zsh -lc "sed -n '940,1010p' papers/latex/directed-univalence.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "sed -n '635,660p' papers/latex/directed-univalence.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
LaTeX Warning: Reference `thm:s-segal' on page 11 undefined on input line 506.


LaTeX Warning: Citation `Cisinski' on page 11 undefined on input line 526.


LaTeX Warning: Citation `rzk' on page 11 undefined on input line 526.


LaTeX Warning: Reference `thm:dua-s' on page 11 undefined on input line 535.

[11]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 542.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 542.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 542.


LaTeX Warning: Reference `thm:dua-s' on page 12 undefined on input line 553.

[12]

LaTeX Warning: Citation `rzk' on page 13 undefined on input line 589.

[13]

LaTeX Warning: Citation `CisinskiNguyen' on page 14 undefined on input line 640
.

[14]
Underfull \hbox (badness 10000) in paragraph at lines 677--678
[]\OT1/cmr/m/n/12 D.-C. Cisin-ski and H.-K. Nguyen. ``The uni-ver-sal co-carte-
sian fi-bra-tion.''
 []

[15]
Underfull \hbox (badness 10000) in paragraph at lines 689--690
[]\OT1/cmr/m/n/12 P. Lums-daine and M. Shul-man. ``Se-man-tics of higher in-duc
-tive types.''
 []

[16] (./directed-univalence.aux)
 ***********
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
 ***********


LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `directed-univalence.out' has changed.
(rerunfilecheck)                Rerun to get outlines right
(rerunfilecheck)                or use package `bookmark'.

Package rerunfilecheck Info: Checksums for `directed-univalence.out':
(rerunfilecheck)             Before: <no file>
(rerunfilecheck)             After:  5C28FB68802F60C8F5435E4A9A269CA6;8138.
 ) 
Here is how much of TeX's memory you used:
 25431 strings out of 467525

 succeeded in 0ms:
\Gm@layoutwidth=\dimen285
\Gm@layoutheight=\dimen286
\Gm@layouthoffset=\dimen287
\Gm@layoutvoffset=\dimen288
\Gm@dimlist=\toks41
)
(/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty
Package: everypage 2020/10/17 R2.0b Hooks to run on every page


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
\lst@mode=\count332

codex
The auxiliary/log files are older than the `.tex`, so I’m treating first-pass reference warnings as stale unless the current source is missing the label/key. I’m checking current labels/cites directly now.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\cite(\\[["'^]]*'"\\])?\\{["'^}]+'"\\}|\\\\bibitem\\{["'^}]+'"\\}|\\\\label\\{["'^}]+'"\\}|\\\\ref\\{["'^}]+'"\\}\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\cite(\[[^]]*\])?\{[^}]+\}|\bibitem\{[^}]+\}|\label\{[^}]+\}|\ref\{[^}]+\})
       ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\section|\\\\subsection|\\\\paragraph|\\\\begin\\{|\\\\end\\{|\\\\url\\{|\\\\href|\\\\AddEverypageHook|everypage|\\\\lstset|\\\\begin\\{tabular\\}|\\\\begin\\{center\\}\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\section|\subsection|\paragraph|\begin\{|\end\{|\url\{|\href|\AddEverypageHook|everypage|\lstset|\begin\{tabular\}|\begin\{center\})
                                                ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc "ruby -ne 'scan(/\\\\\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]*)'"\\}/){|m| m[0].split(/,/).each{|k| puts \"CITE #{k.strip}\"}}; scan(/\\\\\\\\bibitem\\{(["'^}]*)'"\\}/){|m| puts \"BIB #{m[0]}\"}; scan(/\\\\\\\\ref\\{(["'^}]*)'"\\}/){|m| puts \"REF #{m[0]}\"}; scan(/\\\\\\\\label\\{(["'^}]*)'"\\}/){|m| puts \"LABEL #{m[0]}\"}' papers/latex/directed-univalence.tex | sort" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 1518ms:
-e:1:in `<main>': undefined method `scan' for main:Object (NoMethodError)

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]*)'"\\}/g){for "'$k (split /,/, $1){$k =~ s/''^'"\\s+|\\s+"'$//g; print "CITE $k'"\\n\"}} while(/\\\\bibitem\\{(["'^}]*)'"\\}/g){print \"BIB "'$1'"\\n\"} while(/\\\\ref\\{(["'^}]*)'"\\}/g){print \"REF "'$1'"\\n\"} while(/\\\\label\\{(["'^}]*)'"\\}/g){print \"LABEL "'$1'"\\n\"}' papers/latex/directed-univalence.tex | sort" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "rg -n -F '\\section' papers/latex/directed-univalence.tex && rg -n -F '\\subsection' papers/latex/directed-univalence.tex && rg -n -F '\\paragraph' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
BIB ACKS
BIB Awodey
BIB Buchholtz
BIB Cisinski
BIB CisinskiNguyen
BIB GWB2024
BIB HoTTBook
BIB Joyal
BIB KavvosWeaver
BIB LicataShulman
BIB Lumsdaine
BIB Lurie
BIB NorthDirected
BIB RezkComplete
BIB Riehl2025
BIB RiehlShulman
BIB Shulman2019
BIB Voevodsky
BIB rzk
CITE Buchholtz
CITE Cisinski
CITE Cisinski
CITE CisinskiNguyen
CITE GWB2024
CITE GWB2024
CITE GWB2024
CITE GWB2024
CITE HoTTBook
CITE KavvosWeaver
CITE RiehlShulman
CITE RiehlShulman
CITE RiehlShulman
CITE RiehlShulman
CITE RiehlShulman
CITE RiehlShulman
CITE Voevodsky
CITE rzk
CITE rzk
LABEL conj:layered
LABEL cor:yoneda-s
LABEL def:cand-i
LABEL def:cand-ii
LABEL def:cand-iii
LABEL def:cand-iv
LABEL def:covariant
LABEL def:cube
LABEL def:dhit
LABEL def:disc-universe
LABEL def:discrete
LABEL def:equiv
LABEL def:exttype
LABEL def:hom
LABEL def:idtoeqv
LABEL def:modalities
LABEL def:rep
LABEL def:rezk
LABEL def:segal
LABEL def:tope
LABEL ex:discrete-types
LABEL ex:walking-arrow
LABEL ex:walking-square
LABEL prop:large
LABEL prop:limitations
LABEL prop:modal-dep
LABEL prop:nno-disc
LABEL prop:opp-coh
LABEL prop:scope-gwb
LABEL q:cocart
LABEL q:icat
LABEL q:langlands
LABEL q:rezk
LABEL q:rezk-modality
LABEL rem:cubical
LABEL rem:langlands-distant
LABEL sec:background
LABEL sec:complete
LABEL sec:conclusion
LABEL sec:discussion
LABEL sec:gwb
LABEL sec:hit
LABEL sec:intro
LABEL sec:open
LABEL sec:partial
LABEL sec:rs
LABEL thm:dua-s
LABEL thm:rs-semantic
LABEL thm:s-segal
LABEL thm:straightening
LABEL thm:univalence
LABEL thm:yoneda
REF sec:complete
REF sec:gwb
REF sec:hit
REF sec:open
REF sec:partial
REF sec:rs
REF thm:dua-s
REF thm:dua-s
REF thm:dua-s
REF thm:dua-s
REF thm:dua-s
REF thm:s-segal
REF thm:straightening
REF thm:straightening

 succeeded in 0ms:
126:\section{Introduction}\label{sec:intro}
166:\section{Background: Symmetric Univalence and Directed Motivation}\label{sec:background}
226:\section{Riehl--Shulman Simplicial Type Theory}\label{sec:rs}
320:\section{Partial Directed Univalence (Riehl--Shulman 2017)}\label{sec:partial}
367:\section{Triangulated Type Theory (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
441:\section{Toward a Complete Principle}\label{sec:complete}
548:\section{Connections to $(\infty,1)$-Natural Number Objects and HITs}\label{sec:hit}
598:\section{Discussion}\label{sec:discussion}
633:\section{Open Problems}\label{sec:open}
653:\section{Conclusion}\label{sec:conclusion}
663:\section*{Acknowledgments}
168:\subsection{Voevodsky's univalence axiom}
198:\subsection{What ``directed'' should mean}
218:\subsection{$(\infty,1)$-categorical motivation}
228:\subsection{Topes, cubes, extension types}
252:\subsection{Hom-types and Segal types}
289:\subsection{Discrete types}
303:\subsection{Synthetic Yoneda lemma}
322:\subsection{Covariant fibrations}
340:\subsection{What is partial about it}
354:\subsection{Limitations made formal}
369:\subsection{Modal layer}
388:\subsection{The discrete universe $\mathcal{S}$}
402:\subsection{The directed univalence theorem}
430:\subsection{What is and is not proved}
445:\subsection{Four candidates}
471:\subsection{Layered programme}
489:\subsection{Obstructions to Candidates II--IV}
503:\subsection{Sketch of a proof attempt for Candidate III}
526:\subsection{Cubical comparison}
532:\subsection{Summary table}
550:\subsection{Natural number objects in directed type theory}
562:\subsection{Higher inductive types and directed univalence}
578:\subsection{Synthetic representation theory}
590:\subsection{Comparison to formalisations: Coq-HoTT, Lean-mathlib, Cubical Agda, rzk}
600:\subsection{Why is directed univalence so hard?}
610:\subsection{What would change if Candidate III were proven?}
619:\subsection{What would change if Candidate IV were proven?}
629:\subsection{Limitations of this paper}
164:\paragraph{Conventions.} We write $\U$ for an ambient (symmetric) universe; $\mathcal{S}$ for a directed sub-universe; $A : \U$ or $A : \mathcal{S}$ for a type/object; $a, b : A$ for terms. The directed interval is $\twoI = \{0 \le 1\}$. Hom-types are written $\Hom_A(a,b)$ and identity types $a =_A b$. We use $f \eqv g$ for the type of equivalences. Throughout, $\STT$ refers to Riehl--Shulman 2017 simplicial type theory, $\TTT$ to Gratzer--Weinberger--Buchholtz 2024 triangulated type theory.
190:\paragraph{What is symmetric.}
348:\paragraph{(1) The universe is not internally Segal.}
351:\paragraph{(2) Modal pieces are missing.}

exec
/usr/local/bin/zsh -lc "rg -n -F '\\begin{' papers/latex/directed-univalence.tex && rg -n -F '\\end{' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
96:    \begin{tikzpicture}[remember picture, overlay]
115:\begin{document}
118:\begin{abstract}
153:\begin{enumerate}
172:\begin{definition}[Equivalence]\label{def:equiv}
176:\begin{definition}[$\idtoeqv$]\label{def:idtoeqv}
184:\begin{theorem}[Voevodsky's univalence axiom]\label{thm:univalence}
192:\begin{enumerate}
208:\begin{enumerate}
232:\begin{definition}[Cube]\label{def:cube}
236:\begin{definition}[Tope]\label{def:tope}
240:\begin{definition}[Extension type]\label{def:exttype}
248:\begin{remark}
254:\begin{definition}[Hom-type]\label{def:hom}
263:\begin{definition}[Segal predicate]\label{def:segal}
277:\begin{definition}[Rezk predicate]\label{def:rezk}
285:\begin{theorem}[Riehl--Shulman, semantic]\label{thm:rs-semantic}
291:\begin{definition}[Discrete type]\label{def:discrete}
299:\begin{example}\label{ex:discrete-types}
307:\begin{theorem}[Synthetic Yoneda, RS Thm 9.1]\label{thm:yoneda}
314:\begin{proof}[Proof sketch]
324:\begin{definition}[Covariant fibration]\label{def:covariant}
330:\begin{theorem}[Straightening, partial directed univalence for covariant families]\label{thm:straightening}
332:\begin{enumerate}
356:\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
358:\begin{enumerate}
373:\begin{definition}[The four modalities]\label{def:modalities}
375:\begin{enumerate}
384:\begin{remark}
390:\begin{definition}[Discrete universe]\label{def:disc-universe}
394:\begin{theorem}[GWB, $\mathcal{S}$ is Segal]\label{thm:s-segal}
398:\begin{proof}[Proof outline]
404:\begin{theorem}[Directed univalence in $\TTT$, GWB Thm 8.1]\label{thm:dua-s}
412:\begin{proof}[Proof sketch]
414:\begin{enumerate}
422:\begin{corollary}[Yoneda for $\mathcal{S}$]\label{cor:yoneda-s}
426:\begin{remark}
432:\begin{proposition}[Scope of GWB]\label{prop:scope-gwb}
434:\begin{enumerate}
447:\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
453:\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
459:\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
465:\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
473:\begin{conjecture}[Layered directed univalence]\label{conj:layered}
482:\begin{itemize}
491:\begin{proposition}[Obstruction: opposite-type coherence]\label{prop:opp-coh}
495:\begin{proposition}[Obstruction: modal dependence]\label{prop:modal-dep}
499:\begin{proposition}[Obstruction: large vs.\ small]\label{prop:large}
507:\begin{enumerate}
517:\begin{question}\label{q:rezk-modality}
519:\begin{enumerate}
528:\begin{remark}[Cubical analogue]\label{rem:cubical}
534:\begin{center}
535:\begin{tabular}{lll}
554:\begin{proposition}[NNO in discrete directed type theory]\label{prop:nno-disc}
566:\begin{definition}[Directed HIT]\label{def:dhit}
570:\begin{example}[Walking arrow]\label{ex:walking-arrow}
574:\begin{example}[Walking commutative square]\label{ex:walking-square}
582:\begin{definition}[Synthetic representation]\label{def:rep}
586:\begin{remark}\label{rem:langlands-distant}
592:\begin{itemize}
604:\begin{enumerate}
612:\begin{enumerate}
623:\begin{enumerate}
637:\begin{question}[Rezk directed univalence]\label{q:rezk}
641:\begin{question}[$(\infty,1)$-Cat as a primitive type]\label{q:icat}
645:\begin{question}[Internal language of cocartesian fibrations]\label{q:cocart}
649:\begin{question}[Directed Langlands]\label{q:langlands}
667:\begin{thebibliography}{99}
106:    \end{tikzpicture}
122:\end{abstract}
158:\end{enumerate}
174:\end{definition}
182:\end{definition}
186:\end{theorem}
195:\end{enumerate}
214:\end{enumerate}
234:\end{definition}
238:\end{definition}
246:\end{definition}
250:\end{remark}
259:\end{definition}
269:\end{definition}
283:\end{definition}
287:\end{theorem}
297:\end{definition}
301:\end{example}
312:\end{theorem}
316:\end{proof}
326:\end{definition}
335:\end{enumerate}
336:\end{theorem}
362:\end{enumerate}
363:\end{proposition}
380:\end{enumerate}
382:\end{definition}
386:\end{remark}
392:\end{definition}
396:\end{theorem}
400:\end{proof}
410:\end{theorem}
418:\end{enumerate}
420:\end{proof}
424:\end{corollary}
428:\end{remark}
438:\end{enumerate}
439:\end{proposition}
451:\end{definition}
457:\end{definition}
463:\end{definition}
469:\end{definition}
479:\end{conjecture}
487:\end{itemize}
493:\end{proposition}
497:\end{proposition}
501:\end{proposition}
513:\end{enumerate}
523:\end{enumerate}
524:\end{question}
530:\end{remark}
545:\end{tabular}
546:\end{center}
560:\end{proposition}
568:\end{definition}
572:\end{example}
576:\end{example}
584:\end{definition}
588:\end{remark}
596:\end{itemize}
608:\end{enumerate}
617:\end{enumerate}
627:\end{enumerate}
639:\end{question}
643:\end{question}
647:\end{question}
651:\end{question}
707:\end{thebibliography}
709:\end{document}

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '20,32p;154,164p;198,212p;216,220p;364,390p;440,448p;548,548p;681,696p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
    20	
    21	% Listings for code blocks
    22	\usepackage{listings}
    23	
    24	% GrokRxiv sidebar (uses everypage + tikz overlay)
    25	\usepackage{everypage}
    26	
    27	% References (load near the end)
    28	\usepackage{hyperref}
    29	\usepackage{cleveref}
    30	\lstset{
    31	  basicstyle=\ttfamily\footnotesize,
    32	  columns=fullflexible,
   154	\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
   155	\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
   156	\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
   157	\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
   158	\end{enumerate}
   159	
   160	We accompany the exposition with formal sketches in Haskell (\texttt{src/directed-univalence/}) and Lean~4 (\texttt{lean/directed-univalence/}) that mechanise the relevant equivalences for the discrete fragment and lay out the directed universe API\@. The Haskell modules are not Lean proofs --- they implement \emph{toy} models that exhibit the algebraic content (covariant fibrations as $A \to \mathcal{S}$ functors, hom-types as Day convolutions on a $\twoI$-action) so that the conceptual content can be machine-checked even if foundationally weakened. Lean~4 sketches use postulates where appropriate.
   161	
   162	Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
   163	
   164	\paragraph{Conventions.} We write $\U$ for an ambient (symmetric) universe; $\mathcal{S}$ for a directed sub-universe; $A : \U$ or $A : \mathcal{S}$ for a type/object; $a, b : A$ for terms. The directed interval is $\twoI = \{0 \le 1\}$. Hom-types are written $\Hom_A(a,b)$ and identity types $a =_A b$. We use $f \eqv g$ for the type of equivalences. Throughout, $\STT$ refers to Riehl--Shulman 2017 simplicial type theory, $\TTT$ to Gratzer--Weinberger--Buchholtz 2024 triangulated type theory.
   198	\subsection{What ``directed'' should mean}
   199	
   200	A directed type theory ought to admit, for each type $A$ and pair of terms $a, b : A$, a hom-type
   201	\[
   202	\Hom_A(a, b) : \U,
   203	\]
   204	together with composition $\Hom_A(b,c) \times \Hom_A(a,b) \to \Hom_A(a,c)$ and identities $\id_a : \Hom_A(a,a)$, satisfying associativity and unit laws \emph{up to higher coherent homotopy}. Crucially, $\Hom_A(a,b)$ should not in general carry inverses: if it did, the theory would collapse back to a symmetric one.
   205	
   206	We can articulate desiderata.
   207	
   208	\begin{enumerate}
   209	\item[(D1)] \emph{Hom is non-invertible.} The composition is not in general invertible.
   210	\item[(D2)] \emph{Functoriality.} Functions $f : A \to B$ act on hom-types: $f_*: \Hom_A(a,b) \to \Hom_B(f(a),f(b))$.
   211	\item[(D3)] \emph{Equivalences are identities.} For appropriately structured types, an invertible morphism in $\Hom_A(a,b)$ should yield an identity $a =_A b$.
   212	\item[(D4)] \emph{Synthetic $(\infty,1)$-category theory.} The Yoneda lemma, adjoint functors, Kan extensions, and limits/colimits should be expressible \emph{synthetically} on top of these primitives.
   216	(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work~\cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
   217	
   218	\subsection{$(\infty,1)$-categorical motivation}
   219	
   220	There is a clean semantic picture explaining why directed univalence is hard. In HoTT, the universe $\U$ is interpreted as an object classifier in an $(\infty,1)$-topos: $\U$ classifies small bundles up to fibrewise equivalence. Univalence is the corresponding internal statement: equivalences of bundles are paths in $\U$.
   364	
   365	These limitations motivate the modal extension we now describe.
   366	
   367	\section{Triangulated Type Theory (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
   368	
   369	\subsection{Modal layer}
   370	
   371	The crucial new ingredient in~\cite{GWB2024} is a system of modalities. We describe four.
   372	
   373	\begin{definition}[The four modalities]\label{def:modalities}
   374	$\TTT$ extends $\STT$ with modalities:
   375	\begin{enumerate}
   376	\item $\flat$ ``crisp'' / ``discrete-discrete'': forces a type to be discrete and only depends on globally defined data.
   377	\item $\sharp$ ``codiscrete'': right adjoint to $\flat$.
   378	\item $\Disc$: the modality whose modal types are the discrete types.
   379	\item $(-)^{\op}$: the opposite modality reversing direction.
   380	\end{enumerate}
   381	With $\flat \dashv \Disc \dashv \sharp$ a triangle of cohesion-like modalities, and $(-)^{\op}$ as duality.
   382	\end{definition}
   383	
   384	\begin{remark}
   385	The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT\@.
   386	\end{remark}
   387	
   388	\subsection{The discrete universe $\mathcal{S}$}
   389	
   390	\begin{definition}[Discrete universe]\label{def:disc-universe}
   440	
   441	\section{Toward a Complete Principle}\label{sec:complete}
   442	
   443	We now formulate four candidate \emph{complete} directed univalence principles in increasing strength, and analyse what would be required to prove each.
   444	
   445	\subsection{Four candidates}
   446	
   447	\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
   448	\emph{Candidate I\@.} For the discrete universe $\mathcal{S}$, $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$.
   548	\section{Connections to $(\infty,1)$-Natural Number Objects and HITs}\label{sec:hit}
   681	\bibitem{Cisinski} D.-C.\ Cisinski. \emph{Higher categories and homotopical algebra}. Cambridge Studies in Advanced Mathematics 180, 2019.
   682	
   683	\bibitem{CisinskiNguyen} D.-C.\ Cisinski and H.-K.\ Nguyen. ``The universal cocartesian fibration.'' arXiv:2210.08945, 2022.
   684	
   685	\bibitem{KavvosWeaver} G.\ A.\ Kavvos and M.\ Weaver. ``On directed type theory.'' Ongoing work, 2024--2025; cf.\ M.\ Weaver and D.\ Licata, ``A Constructive Model of Directed Univalence in Bicubical Sets,'' \emph{LICS 2020}.
   686	
   687	\bibitem{Shulman2019} M.\ Shulman. ``All $(\infty,1)$-toposes have strict univalent universes.'' arXiv:1904.07004, 2019.
   688	
   689	\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.
   690	
   691	\bibitem{Lurie} J.\ Lurie. \emph{Higher Topos Theory}. Annals of Mathematics Studies 170, Princeton, 2009.
   692	
   693	\bibitem{ACKS} D.\ Annenkov, P.\ Capriotti, N.\ Kraus, and C.\ Sattler. ``Two-level type theory and applications.'' \emph{Math.\ Struct.\ Comput.\ Sci.} 33(8), 2023.
   694	
   695	\bibitem{Lumsdaine} P.\ Lumsdaine and M.\ Shulman. ``Semantics of higher inductive types.'' arXiv:1705.07088, 2017.
   696	

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\ref\\{(["'^}]*)'"\\}/g){print \""'$ARGV:$.:REF:$1'"\\n\"} while(/\\\\label\\{(["'^}]*)'"\\}/g){print \""'$ARGV:$.:LABEL:$1'"\\n\"}' papers/latex/directed-univalence.tex | awk -F: '/:REF:/ {refs["'$4]=refs[$4]" "$2} /:LABEL:/ {labels[$4]=1} END {for (r in refs) if (!(r in labels)) print "MISSING_REF " r refs[r]}'"'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\cite(?:\\[["'^'"\\]]*\\])?\\{(["'^}]*)'"\\}/g){for "'$k (split /,/, $1){$k =~ s/''^'"\\s+|\\s+"'$//g; print "$ARGV:$.:CITE:$k'"\\n\"}} while(/\\\\bibitem\\{(["'^}]*)'"\\}/g){print \""'$ARGV:$.:BIB:$1'"\\n\"}' papers/latex/directed-univalence.tex | awk -F: '/:CITE:/ {cites["'$4]=cites[$4]" "$2} /:BIB:/ {bibs[$4]=1} END {for (c in cites) if (!(c in bibs)) print "MISSING_CITE " c cites[c]}'"'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
codex
I found formatting/build hygiene issues, but no missing labels, missing `\bibitem`s, mismatched environments, or undefined commands in the current source.

1. Line 25 / 94: `everypage` is legacy on current LaTeX and the existing log warns breakage may occur.  
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with LaTeX’s kernel hook:
   ```tex
   \AddToHook{shipout/background}{%
     ...
   }
   ```

2. Lines 218, 388, 548: section/subsection titles contain math, producing `hyperref` PDF-string warnings.  
   Fix with `\texorpdfstring`, e.g.
   ```tex
   \subsection{\texorpdfstring{$(\infty,1)$-categorical motivation}{(infinity,1)-categorical motivation}}
   \subsection{\texorpdfstring{The discrete universe $\mathcal{S}$}{The discrete universe S}}
   \section{\texorpdfstring{Connections to $(\infty,1)$-Natural Number Objects and HITs}{Connections to (infinity,1)-Natural Number Objects and HITs}}
   ```

3. Line 160: overfull box from unbreakable `\texttt{src/directed-univalence/}` / `\texttt{lean/directed-univalence/}` paths.  
   Fix: use breakable paths:
   ```tex
   \path{src/directed-univalence/}
   \path{lean/directed-univalence/}
   ```

4. Lines 204 and 210: inline hom-type formulas are too long and caused overfull boxes.  
   Fix: move the formulas to display math, especially the composition map and `f_*` map.

5. Line 367: the section heading is too long and caused an overfull box.  
   Fix: shorten the printed heading or force a controlled break:
   ```tex
   \section[Triangulated Type Theory]{Triangulated Type Theory\\(Gratzer--Weinberger--Buchholtz 2024)}
   ```

6. Line 443: paragraph text caused a small overfull box.  
   Fix: rephrase shorter, e.g. “We now formulate four increasingly strong candidate principles and analyse what each proof would require.”

7. Lines 683 and 695: bibliography entries caused underfull boxes.  
   Fix: add `microtype` and/or local bibliography stretch:
   ```tex
   \usepackage[final]{microtype}
   \emergencystretch=2em
   ```

VERDICT: NEEDS_FIX
2026-05-04T23:36:04.486955Z ERROR codex_core::session: failed to record rollout items: thread 019df556-dd78-7c53-981f-15428aec301a not found
tokens used
117,269
I found formatting/build hygiene issues, but no missing labels, missing `\bibitem`s, mismatched environments, or undefined commands in the current source.

1. Line 25 / 94: `everypage` is legacy on current LaTeX and the existing log warns breakage may occur.  
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with LaTeX’s kernel hook:
   ```tex
   \AddToHook{shipout/background}{%
     ...
   }
   ```

2. Lines 218, 388, 548: section/subsection titles contain math, producing `hyperref` PDF-string warnings.  
   Fix with `\texorpdfstring`, e.g.
   ```tex
   \subsection{\texorpdfstring{$(\infty,1)$-categorical motivation}{(infinity,1)-categorical motivation}}
   \subsection{\texorpdfstring{The discrete universe $\mathcal{S}$}{The discrete universe S}}
   \section{\texorpdfstring{Connections to $(\infty,1)$-Natural Number Objects and HITs}{Connections to (infinity,1)-Natural Number Objects and HITs}}
   ```

3. Line 160: overfull box from unbreakable `\texttt{src/directed-univalence/}` / `\texttt{lean/directed-univalence/}` paths.  
   Fix: use breakable paths:
   ```tex
   \path{src/directed-univalence/}
   \path{lean/directed-univalence/}
   ```

4. Lines 204 and 210: inline hom-type formulas are too long and caused overfull boxes.  
   Fix: move the formulas to display math, especially the composition map and `f_*` map.

5. Line 367: the section heading is too long and caused an overfull box.  
   Fix: shorten the printed heading or force a controlled break:
   ```tex
   \section[Triangulated Type Theory]{Triangulated Type Theory\\(Gratzer--Weinberger--Buchholtz 2024)}
   ```

6. Line 443: paragraph text caused a small overfull box.  
   Fix: rephrase shorter, e.g. “We now formulate four increasingly strong candidate principles and analyse what each proof would require.”

7. Lines 683 and 695: bibliography entries caused underfull boxes.  
   Fix: add `microtype` and/or local bibliography stretch:
   ```tex
   \usepackage[final]{microtype}
   \emergencystretch=2em
   ```

VERDICT: NEEDS_FIX

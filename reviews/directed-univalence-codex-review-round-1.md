---
reviewer: codex (OpenAI)
type: formatting
paper: directed-univalence
round: 1
date: 2026-05-04T23:29:13Z
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
session id: 019df553-100a-7983-98f3-d618cf0def8b
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex for LaTeX formatting issues only: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems, mismatched braces or environments, undefined commands. List all issues you find with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll keep this strictly read-only and focus on LaTeX mechanics, not content or mathematical correctness. I’m doing a quick memory check first only to see whether this repo has prior formatting-review conventions, then I’ll inspect the target file directly.
exec
/usr/local/bin/zsh -lc 'rg -n "hott-foundations|directed-univalence|HoTT|latex" /Users/mlong/.codex/memories/MEMORY.md' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
codex
No prior memory hit for this file/repo, so I’m proceeding from the file itself. I’ll first map the document structure and undefined-style risks, then check references and obvious layout hazards.
exec
/usr/local/bin/zsh -lc 'wc -l papers/latex/directed-univalence.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     709 papers/latex/directed-univalence.tex

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(documentclass|usepackage|newcommand|Declare|begin\\{|end\\{|label\\{|ref\\{|autoref\\{|cite\\{|bibliography|bibliographystyle|includegraphics|input|include|todo|TODO|undefined|overfull|hbox|vbox)\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(documentclass|usepackage|newcommand|Declare|begin\{|end\{|label\{|ref\{|autoref\{|cite\{|bibliography|bibliographystyle|includegraphics|input|include|todo|TODO|undefined|overfull|hbox|vbox))
                                                                                                                                                                                                      ^
error: unopened group

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\[A-Za-z@]+|\\\\.|\\\\\\*|\\\\\\[|\\\\\\]|\\\\\\(|\\\\\\)|\\\\\\{|\\\\\\}\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\[A-Za-z@]+|\.|\\*|\\[|\\]|\\(|\\)|\\{|\\})
                                             ^
error: repetition quantifier expects a valid decimal

codex
The first pattern sweep had an escaping issue, so I’m switching to simpler line-numbered reads plus fixed-string searches. No files are being modified.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '1,180p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '181,360p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	
     6	% Diagrams
     7	\usepackage{tikz-cd}
     8	\usepackage{tikz}
     9	\usetikzlibrary{decorations.markings, arrows.meta, positioning}
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
    21	% Tables
    22	\usepackage{booktabs}
    23	
    24	% GrokRxiv sidebar
    25	\usepackage{everypage}
    26	\usepackage{xcolor}
    27	
    28	% Listings for code blocks
    29	\usepackage{listings}
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
   132	internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself \cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
   133	
   134	Yet univalence as stated lives in a fundamentally \emph{symmetric} world. The identity type $A =_{\U} B$ is a groupoid: it has inverses. This reflects a basic fact about the type-theoretic universe: every type, in HoTT, is treated as an $\infty$-groupoid. Categories proper --- where morphisms can be non-invertible --- do not admit a clean internal description in HoTT without artefacts.
   135	
   136	Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper \cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
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
   150	where $\mathcal{S}$ is the universe of discrete types \cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
   151	
   152	This paper has four aims:
   153	\begin{enumerate}
   154	\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
   155	\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
   156	\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
   157	\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
   158	\end{enumerate}
   159	
   160	We accompany the exposition with formal sketches in Haskell (\texttt{src/directed-univalence/}) and Lean~4 (\texttt{lean/directed-univalence/}) that mechanise the relevant equivalences for the discrete fragment and lay out the directed universe API. The Haskell modules are not Lean proofs --- they implement \emph{toy} models that exhibit the algebraic content (covariant fibrations as $A \to \mathcal{S}$ functors, hom-types as Day convolutions on a $\twoI$-action) so that the conceptual content can be machine-checked even if foundationally weakened. Lean~4 sketches use postulates where appropriate.
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

 succeeded in 0ms:
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
   216	(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work \cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
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
   305	A high point of \cite{RiehlShulman} is a synthetic Yoneda lemma. We state it informally.
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
   352	To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from \cite{RiehlShulman}.
   353	
   354	\subsection{Limitations made formal}
   355	
   356	\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
   357	In Riehl--Shulman simplicial type theory:
   358	\begin{enumerate}
   359	\item There is a directed straightening for covariant families into the discrete universe (Theorem~\ref{thm:straightening}).
   360	\item There is \emph{no internally definable} hom-type for the discrete universe $\mathcal{S}_{\disc}$ qua object of the universe $\U$ that satisfies $\Hom_{\mathcal{S}_{\disc}}(A,B) \eqv \Fun(A,B)$.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '361,540p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
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
   371	The crucial new ingredient in \cite{GWB2024} is a system of modalities. We describe four.
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
   385	The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT.
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
   448	\emph{Candidate I.} For the discrete universe $\mathcal{S}$, $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$.
   449	
   450	\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
   451	\end{definition}
   452	
   453	\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
   454	\emph{Candidate II.} For the universe $\mathcal{S}_{\mathsf{Seg}}$ of Segal types, $\Hom_{\mathcal{S}_{\mathsf{Seg}}}(A,B) \eqv \mathsf{SegFun}(A,B)$, where $\mathsf{SegFun}$ is the type of functors preserving Segal structure (= ordinary functions, since composition is uniquely determined).
   455	
   456	\textbf{Status:} Open. Conjectured.
   457	\end{definition}
   458	
   459	\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
   460	\emph{Candidate III.} For the universe $\mathcal{S}_{\mathsf{Rezk}}$ of Rezk types, $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B) \eqv \Fun(A,B)$.
   461	
   462	\textbf{Status:} Open. The principal target.
   463	\end{definition}
   464	
   465	\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
   466	\emph{Candidate IV.} For the entire universe $\U$, equipped with the directed structure inherited from extension types out of $\twoI$, $\Hom_{\U}(A,B) \eqv \Fun(A,B)$.
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
   521	\item The triangle $\flat \dashv \Disc^{\mathsf{Rezk}} \dashv \sharp_{\mathsf{Rezk}}$ extends the discrete cohesion.
   522	\item $\funtohom$ is an equivalence?
   523	\end{enumerate}
   524	\end{question}
   525	
   526	\subsection{Cubical comparison}
   527	
   528	\begin{remark}[Cubical analogue]\label{rem:cubical}
   529	Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments \cite{Cisinski}; the rzk proof assistant aims at a computational interpretation \cite{rzk}.
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

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '541,760p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
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
   587	Eventually, automorphic representations (functors $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ for $\mathbb{A}$ adelic) would be morphisms in a directed universe. This is highly speculative and depends on Candidate III.
   588	\end{remark}
   589	
   590	\subsection{Comparison to formalisations: Coq-HoTT, Lean-mathlib, Cubical Agda, rzk}
   591	
   592	\begin{itemize}
   593	\item Coq-HoTT and Lean-mathlib formalise symmetric univalence as a postulate.
   594	\item Cubical Agda makes symmetric univalence \emph{computational}.
   595	\item The experimental proof assistant rzk \cite{rzk} implements $\STT$ with topes and extension types; it does \emph{not} yet implement triangulated modalities or prove directed univalence.
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
   646	Develop the internal language of cocartesian fibrations in $\TTT$, in the spirit of Cisinski--Nguyen \cite{CisinskiNguyen}.
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

codex
The structure is a single self-contained article with inline bibliography, so the useful next step is an isolated LaTeX run to catch package/command/reference diagnostics. I’ll direct all generated files to `/tmp` so the repo stays untouched; if the sandbox blocks that, I’ll report the limitation.
codex
The sandbox blocks even `/tmp` writes, so a real LaTeX run is not possible in this turn. I’m continuing with static checks: command inventory, label/reference consistency, brace/environment balance, and known layout-sensitive constructs.
exec
/usr/local/bin/zsh -lc 'command -v chktex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\label{\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
126:\section{Introduction}\label{sec:intro}
166:\section{Background: Symmetric Univalence and Directed Motivation}\label{sec:background}
172:\begin{definition}[Equivalence]\label{def:equiv}
176:\begin{definition}[$\idtoeqv$]\label{def:idtoeqv}
184:\begin{theorem}[Voevodsky's univalence axiom]\label{thm:univalence}
226:\section{Riehl--Shulman Simplicial Type Theory}\label{sec:rs}
232:\begin{definition}[Cube]\label{def:cube}
236:\begin{definition}[Tope]\label{def:tope}
240:\begin{definition}[Extension type]\label{def:exttype}
254:\begin{definition}[Hom-type]\label{def:hom}
263:\begin{definition}[Segal predicate]\label{def:segal}
277:\begin{definition}[Rezk predicate]\label{def:rezk}
285:\begin{theorem}[Riehl--Shulman, semantic]\label{thm:rs-semantic}
291:\begin{definition}[Discrete type]\label{def:discrete}
299:\begin{example}\label{ex:discrete-types}
307:\begin{theorem}[Synthetic Yoneda, RS Thm 9.1]\label{thm:yoneda}
320:\section{Partial Directed Univalence (Riehl--Shulman 2017)}\label{sec:partial}
324:\begin{definition}[Covariant fibration]\label{def:covariant}
330:\begin{theorem}[Straightening, partial directed univalence for covariant families]\label{thm:straightening}
356:\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
367:\section{Triangulated Type Theory (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
373:\begin{definition}[The four modalities]\label{def:modalities}
390:\begin{definition}[Discrete universe]\label{def:disc-universe}
394:\begin{theorem}[GWB, $\mathcal{S}$ is Segal]\label{thm:s-segal}
404:\begin{theorem}[Directed univalence in $\TTT$, GWB Thm 8.1]\label{thm:dua-s}
422:\begin{corollary}[Yoneda for $\mathcal{S}$]\label{cor:yoneda-s}
432:\begin{proposition}[Scope of GWB]\label{prop:scope-gwb}
441:\section{Toward a Complete Principle}\label{sec:complete}
447:\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
453:\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
459:\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
465:\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
473:\begin{conjecture}[Layered directed univalence]\label{conj:layered}
491:\begin{proposition}[Obstruction: opposite-type coherence]\label{prop:opp-coh}
495:\begin{proposition}[Obstruction: modal dependence]\label{prop:modal-dep}
499:\begin{proposition}[Obstruction: large vs.\ small]\label{prop:large}
517:\begin{question}\label{q:rezk-modality}
528:\begin{remark}[Cubical analogue]\label{rem:cubical}
548:\section{Connections to $(\infty,1)$-Natural Number Objects and HITs}\label{sec:hit}
554:\begin{proposition}[NNO in discrete directed type theory]\label{prop:nno-disc}
566:\begin{definition}[Directed HIT]\label{def:dhit}
570:\begin{example}[Walking arrow]\label{ex:walking-arrow}
574:\begin{example}[Walking commutative square]\label{ex:walking-square}
582:\begin{definition}[Synthetic representation]\label{def:rep}
586:\begin{remark}\label{rem:langlands-distant}
598:\section{Discussion}\label{sec:discussion}
633:\section{Open Problems}\label{sec:open}
637:\begin{question}[Rezk directed univalence]\label{q:rezk}
641:\begin{question}[$(\infty,1)$-Cat as a primitive type]\label{q:icat}
645:\begin{question}[Internal language of cocartesian fibrations]\label{q:cocart}
649:\begin{question}[Directed Langlands]\label{q:langlands}
653:\section{Conclusion}\label{sec:conclusion}

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\ref{\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
154:\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
155:\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
156:\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
157:\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
162:Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
342:Theorem~\ref{thm:straightening} stops short of asserting
359:\item There is a directed straightening for covariant families into the discrete universe (Theorem~\ref{thm:straightening}).
427:Theorem~\ref{thm:dua-s} is a complete directed univalence statement for the discrete fragment. It is ``triangulated'' in the sense that its formulation requires the triangle $\flat \dashv \Disc \dashv \sharp$.
433:Theorem~\ref{thm:dua-s} establishes directed univalence for the discrete universe $\mathcal{S}$. It does \emph{not} establish:
450:\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
509:\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is Segal in $\TTT$. This is plausibly an extension of Theorem~\ref{thm:s-segal} but requires that $\isRezk$ commute with extension types out of $\twoI$, which is non-trivial.
540:$\mathcal{S}_{\disc}$ & directed, discrete & GWB 2024 (Theorem~\ref{thm:dua-s}) \\
559:for any pointed endo-discrete-type $(A, a_0, s)$. Directed univalence (Theorem~\ref{thm:dua-s}) then identifies these initiality witnesses with directed morphisms in $\mathcal{S}$.

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\cite{\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
132:internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself \cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
136:Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper \cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
150:where $\mathcal{S}$ is the universe of discrete types \cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
216:(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work \cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
305:A high point of \cite{RiehlShulman} is a synthetic Yoneda lemma. We state it informally.
352:To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from \cite{RiehlShulman}.
371:The crucial new ingredient in \cite{GWB2024} is a system of modalities. We describe four.
529:Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments \cite{Cisinski}; the rzk proof assistant aims at a computational interpretation \cite{rzk}.
595:\item The experimental proof assistant rzk \cite{rzk} implements $\STT$ with topes and extension types; it does \emph{not} yet implement triangulated modalities or prove directed univalence.
646:Develop the internal language of cocartesian fibrations in $\TTT$, in the spirit of Cisinski--Nguyen \cite{CisinskiNguyen}.

exec
/usr/local/bin/zsh -lc "chktex -q -I0 -f '%f:%l:%c:%d:%k:%n:%m\\n' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
papers/latex/directed-univalence.tex:110:39:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:119:351:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:121:73:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:121:103:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:121:115:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:128:103:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:132:95:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:136:335:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:144:242:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:150:54:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:150:255:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:155:26:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:155:38:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:160:249:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:164:387:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:164:443:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:164:455:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:216:7:1:Warning:36:You should put a space in front of parenthesis.\npapers/latex/directed-univalence.tex:216:34:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:216:75:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:226:15:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:268:354:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:285:22:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:305:16:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:315:152:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:320:44:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:349:29:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:352:300:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:352:312:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:352:345:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:357:9:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:367:43:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:367:55:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:371:30:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:379:10:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/latex/directed-univalence.tex:381:88:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/latex/directed-univalence.tex:385:112:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:385:174:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/latex/directed-univalence.tex:385:222:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:399:299:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:417:172:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:419:4:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:447:31:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:453:32:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:459:33:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:465:32:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:489:42:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:492:14:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:492:196:1:Warning:3:You should enclose the previous parenthesis with `{}'.\npapers/latex/directed-univalence.tex:496:14:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:500:162:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:500:173:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:500:180:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:529:106:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:529:115:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:529:122:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:529:362:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:529:442:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:587:226:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:595:43:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:638:32:1:Warning:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:646:93:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:646:101:1:Warning:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:655:52:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:655:223:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:655:235:2:Warning:8:Wrong length of dash may have been used.\npapers/latex/directed-univalence.tex:669:54:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:671:35:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:673:100:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:673:149:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:675:123:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:677:35:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:679:81:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:681:36:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:683:98:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:685:80:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:685:205:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:687:94:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:689:33:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:689:117:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:691:27:1:Warning:12:Interword spacing (`\ ') should perhaps be used.\npapers/latex/directed-univalence.tex:693:113:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:695:89:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:697:130:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:699:64:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:701:86:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:703:81:1:Warning:38:You should not use punctuation in front of quotes.\npapers/latex/directed-univalence.tex:705:73:1:Warning:38:You should not use punctuation in front of quotes.\n
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(begin|end)\\{(["'^}]+)'"\\}/g){print \""'$1 $2 $.'"\\n\"}' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
begin tikzpicture 96
end tikzpicture 106
begin document 115
begin abstract 118
end abstract 122
begin enumerate 153
end enumerate 158
begin definition 172
end definition 174
begin definition 176
end definition 182
begin theorem 184
end theorem 186
begin enumerate 192
end enumerate 195
begin enumerate 208
end enumerate 214
begin definition 232
end definition 234
begin definition 236
end definition 238
begin definition 240
end definition 246
begin remark 248
end remark 250
begin definition 254
end definition 259
begin definition 263
end definition 269
begin definition 277
end definition 283
begin theorem 285
end theorem 287
begin definition 291
end definition 297
begin example 299
end example 301
begin theorem 307
end theorem 312
begin proof 314
end proof 316
begin definition 324
end definition 326
begin theorem 330
begin enumerate 332
end enumerate 335
end theorem 336
begin proposition 356
begin enumerate 358
end enumerate 362
end proposition 363
begin definition 373
begin enumerate 375
end enumerate 380
end definition 382
begin remark 384
end remark 386
begin definition 390
end definition 392
begin theorem 394
end theorem 396
begin proof 398
end proof 400
begin theorem 404
end theorem 410
begin proof 412
begin enumerate 414
end enumerate 418
end proof 420
begin corollary 422
end corollary 424
begin remark 426
end remark 428
begin proposition 432
begin enumerate 434
end enumerate 438
end proposition 439
begin definition 447
end definition 451
begin definition 453
end definition 457
begin definition 459
end definition 463
begin definition 465
end definition 469
begin conjecture 473
end conjecture 479
begin itemize 482
end itemize 487
begin proposition 491
end proposition 493
begin proposition 495
end proposition 497
begin proposition 499
end proposition 501
begin enumerate 507
end enumerate 513
begin question 517
begin enumerate 519
end enumerate 523
end question 524
begin remark 528
end remark 530
begin center 534
begin tabular 535
end tabular 545
end center 546
begin proposition 554
end proposition 560
begin definition 566
end definition 568
begin example 570
end example 572
begin example 574
end example 576
begin definition 582
end definition 584
begin remark 586
end remark 588
begin itemize 592
end itemize 596
begin enumerate 604
end enumerate 608
begin enumerate 612
end enumerate 617
begin enumerate 623
end enumerate 627
begin question 637
end question 639
begin question 641
end question 643
begin question 645
end question 647
begin question 649
end question 651
begin thebibliography 667
end thebibliography 707
end document 709

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\([A-Za-z@]+)/g){print \""'$1'"\\n\"}' papers/latex/directed-univalence.tex | sort | uniq -c | sort -k2" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   1 AddEverypageHook
   6 Big
   1 Cat
   2 Delta
  16 Disc
  13 Fun
   1 Grpd
   1 HoTT
  45 Hom
   1 Id
   1 Lambda
   1 Large
   7 N
   8 Phi
   4 S
  17 STT
   1 Set
  17 TTT
   1 Triv
   1 Type
  40 U
   1 Z
   5 alpha
   1 author
  69 begin
   1 bfseries
  19 bibitem
   7 big
   1 bigskip
   1 bot
   1 bottomrule
   1 cdot
   4 circ
  15 cite
   2 color
  15 dashv
   1 date
   1 definecolor
  15 disc
   1 documentclass
   2 dua
  87 emph
  69 end
   1 equiv
  19 eqv
   1 fi
  18 flat
   1 footnotesize
   7 funtohom
   1 hookrightarrow
   7 id
   6 idtoeqv
   1 ifnum
   1 in
  44 infty
   1 into
   2 inv
   2 isContr
   3 isDisc
   1 isProp
   4 isRezk
   4 isSegal
   1 isSet
  51 item
  52 label
   4 langle
   5 le
   1 longrightarrow
   1 lstset
   1 maketitle
   4 mapsto
   5 mathbb
   7 mathbf
  81 mathcal
   3 mathrm
  59 mathsf
   2 mid
   1 midrule
  35 newcommand
   9 newtheorem
   1 node
   6 op
   1 paperheight
   4 paragraph
   7 prod
   2 quad
   4 rangle
  14 ref
   2 refl
   1 rzk
  11 section
   4 seg
   1 sffamily
   9 sharp
   1 sigma
   1 sim
   1 simeq
  28 subsection
   4 subset
   4 sum
   1 tableofcontents
   3 text
   7 textbf
   1 textit
   2 texttt
   2 theoremstyle
   5 times
   1 title
  34 to
   1 top
   1 toprule
   1 ttfamily
  23 twoI
   4 ua
   1 url
  11 usepackage
   1 usetikzlibrary
   1 value
   1 vee
   1 wedge
   1 xrightarrow

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(?:ref|autoref|cref|Cref)\\{(["'^}]+)'"\\}/g){print \""'$. $1'"\\n\"}' papers/latex/directed-univalence.tex | sort -k2" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
156 sec:complete
155 sec:gwb
157 sec:hit
162 sec:open
154 sec:partial
154 sec:rs
427 thm:dua-s
433 thm:dua-s
450 thm:dua-s
540 thm:dua-s
559 thm:dua-s
509 thm:s-segal
342 thm:straightening
359 thm:straightening

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\cite(?:\\[["'^]]*'"\\])?\\{(["'^}]+)'"\\}/g){for "'$k(split /,/, $1){$k=~s/''^'"\\s+|\\s+"'$//g; print "$. $k'"\\n\"}}' papers/latex/directed-univalence.tex | sort -k2" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
216 Buchholtz
216 Cisinski
529 Cisinski
646 CisinskiNguyen
150 GWB2024
371 GWB2024
399 GWB2024
419 GWB2024
132 HoTTBook
216 KavvosWeaver
136 RiehlShulman
216 RiehlShulman
268 RiehlShulman
305 RiehlShulman
315 RiehlShulman
352 RiehlShulman
132 Voevodsky
529 rzk
595 rzk

exec
/usr/local/bin/zsh -lc 'command -v lacheck || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/lacheck

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\label\\{(["'^}]+)'"\\}/g){print \""'$1'"\\n\"}' papers/latex/directed-univalence.tex | sort | uniq -d" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\bibitem\\{(["'^}]+)'"\\}/g){print \""'$1'"\\n\"}' papers/latex/directed-univalence.tex | sort" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
ACKS
Awodey
Buchholtz
Cisinski
CisinskiNguyen
GWB2024
HoTTBook
Joyal
KavvosWeaver
LicataShulman
Lumsdaine
Lurie
NorthDirected
RezkComplete
Riehl2025
RiehlShulman
Shulman2019
Voevodsky
rzk

exec
/usr/local/bin/zsh -lc "rg -n \"TODO|FIXME|undefined|Undefined|overfull|Underfull|\\\\hbox|\\\\vbox|\\\\mbox|\\\\hspace|\\\\vspace|\\\\quad|\\\\qquad|\\\\"'!|'"\\\\,|\\\\;|\\\\:|\\\\phantom|\\\\raisebox|\\\\hfill|\\\\newpage|\\\\pagebreak|\\\\linebreak\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:TODO|FIXME|undefined|Undefined|overfull|Underfull|\hbox|\vbox|\mbox|\hspace|\vspace|\quad|\qquad|\!|\,|\;|\:|\phantom|\raisebox|\hfill|\newpage|\pagebreak|\linebreak)
                                                         ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/directed-univalence.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/directed-univalence.tex", line 30: possible unwanted space at "{"
"papers/latex/directed-univalence.tex", line 160: missing `\@' before `.' in "API."

exec
/usr/local/bin/zsh -lc "rg -n -F '\\\\' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
111:\author{YonedaAI Research \\
537:\textbf{Universe} & \textbf{Variant} & \textbf{Status} \\
539:$\U$ & symmetric & Voevodsky univalence (theorem in cubical) \\
540:$\mathcal{S}_{\disc}$ & directed, discrete & GWB 2024 (Theorem~\ref{thm:dua-s}) \\
541:$\mathcal{S}_{\mathsf{Seg}}$ & directed, Segal & Open (Cand.\ II) \\
542:$\mathcal{S}_{\mathsf{Rezk}}$ & directed, Rezk & Open (Cand.\ III, principal) \\
543:$\U_{\mathsf{dir}}$ & directed, all types & Open (Cand.\ IV, requires 2-level) \\

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "kpsewhich cleveref.sty hyperref.sty tikz-cd.sty listings.sty booktabs.sty | sed -n '1,20p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty

 succeeded in 0ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/listings/listings.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/booktabs/booktabs.sty

exec
/usr/local/bin/zsh -lc 'rg -n "AddEverypageHook|ProvidesPackage|AddThispageHook|Everypage" /usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
33:\ProvidesPackage{everypage}%
56:\newcommand*{\AddEverypageHook}[1]{%
58:\newcommand*{\AddThispageHook}[1]{%

exec
/usr/local/bin/zsh -lc "rg -n -F \"\\url\" /usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty | sed -n '1,20p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
4803:\let\HyOrg@url\url
4807:\DeclareRobustCommand*{\url}{\hyper@normalise\url@}
4808:\def\url@#1{\hyper@linkurl{\Hurl{#1}}{#1}}

exec
/usr/local/bin/zsh -lc 'rg -n "TODO|FIXME|undefined|Undefined|overfull|Underfull" papers/latex/directed-univalence.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc "chktex -q -n1 -n2 -n3 -n8 -n12 -n36 -n38 -f '%f:%l:%c:%n:%m\\n' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
papers/latex/directed-univalence.tex:160:249:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:385:222:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:447:31:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:453:32:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:459:33:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:465:32:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:587:226:13:Intersentence spacing (`\@') should perhaps be used.\npapers/latex/directed-univalence.tex:638:32:13:Intersentence spacing (`\@') should perhaps be used.\n
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '156,162p;382,386p;444,466p;584,588p;636,639p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   156	\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
   157	\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
   158	\end{enumerate}
   159	
   160	We accompany the exposition with formal sketches in Haskell (\texttt{src/directed-univalence/}) and Lean~4 (\texttt{lean/directed-univalence/}) that mechanise the relevant equivalences for the discrete fragment and lay out the directed universe API. The Haskell modules are not Lean proofs --- they implement \emph{toy} models that exhibit the algebraic content (covariant fibrations as $A \to \mathcal{S}$ functors, hom-types as Day convolutions on a $\twoI$-action) so that the conceptual content can be machine-checked even if foundationally weakened. Lean~4 sketches use postulates where appropriate.
   161	
   162	Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
   382	\end{definition}
   383	
   384	\begin{remark}
   385	The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT.
   386	\end{remark}
   444	
   445	\subsection{Four candidates}
   446	
   447	\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
   448	\emph{Candidate I.} For the discrete universe $\mathcal{S}$, $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$.
   449	
   450	\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
   451	\end{definition}
   452	
   453	\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
   454	\emph{Candidate II.} For the universe $\mathcal{S}_{\mathsf{Seg}}$ of Segal types, $\Hom_{\mathcal{S}_{\mathsf{Seg}}}(A,B) \eqv \mathsf{SegFun}(A,B)$, where $\mathsf{SegFun}$ is the type of functors preserving Segal structure (= ordinary functions, since composition is uniquely determined).
   455	
   456	\textbf{Status:} Open. Conjectured.
   457	\end{definition}
   458	
   459	\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
   460	\emph{Candidate III.} For the universe $\mathcal{S}_{\mathsf{Rezk}}$ of Rezk types, $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B) \eqv \Fun(A,B)$.
   461	
   462	\textbf{Status:} Open. The principal target.
   463	\end{definition}
   464	
   465	\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
   466	\emph{Candidate IV.} For the entire universe $\U$, equipped with the directed structure inherited from extension types out of $\twoI$, $\Hom_{\U}(A,B) \eqv \Fun(A,B)$.
   584	\end{definition}
   585	
   586	\begin{remark}\label{rem:langlands-distant}
   587	Eventually, automorphic representations (functors $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ for $\mathbb{A}$ adelic) would be morphisms in a directed universe. This is highly speculative and depends on Candidate III.
   588	\end{remark}
   636	
   637	\begin{question}[Rezk directed univalence]\label{q:rezk}
   638	Prove or disprove Candidate III: $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A, B) \eqv \Fun(A, B)$ for all Rezk types $A, B$.
   639	\end{question}

exec
/usr/local/bin/zsh -lc "chktex -q -n1 -n3 -n8 -n12 -n13 -n36 -n38 -f '%f:%l:%c:%n:%m\\n' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
papers/latex/directed-univalence.tex:132:95:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:136:335:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:150:54:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:216:75:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:268:354:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:305:16:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:315:152:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:352:345:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:371:30:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:399:299:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:419:4:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:529:362:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:529:442:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:595:43:2:Non-breaking space (`~') should have been used.\npapers/latex/directed-univalence.tex:646:101:2:Non-breaking space (`~') should have been used.\n
codex
Static LaTeX review only. I could not run `pdflatex` because the read-only sandbox blocks creating even `/tmp` build files, so overfull/underfull boxes are not compiler-verified.

Issues found:

1. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:11): `hyperref` / `cleveref` are loaded before later packages such as `geometry`, `xcolor`, `listings`, and `booktabs`. This is inconsistent with the usual LaTeX load order and can cause link/page-size quirks.
   Fix: load `geometry`, graphics/color/listing/table packages first, then `hyperref`, then `cleveref` last.

2. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:132): citation is separated by a breakable space: `itself \cite{...}`.
   Fix: `itself~\cite{HoTTBook,Voevodsky}`. Same issue at lines 136, 150, 216, 268, 305, 315, 352, 371, 399, 419, 529, 595, and 646: use `~\cite...`.

3. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:160): sentence-ending acronym spacing: `API. The`.
   Fix: `API\@. The`.

4. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:385): sentence-ending acronym spacing: `HoTT.`.
   Fix: `HoTT\@.`.

5. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:448): Roman numeral sentence-ending spacing inside emphasis: `\emph{Candidate I.} For`.
   Fix: `\emph{Candidate I\@.} For`. Same issue at lines 454, 460, and 466 for `II`, `III`, and `IV`.

6. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:587): sentence-ending Roman numeral spacing: `Candidate III.`
   Fix: `Candidate III\@.`.

No duplicate labels, undefined `\ref`s, missing cited `\bibitem`s, mismatched `\begin`/`\end` pairs, or obvious undefined commands were found by static inspection.

VERDICT: NEEDS_FIX
2026-05-04T23:32:20.585785Z ERROR codex_core::session: failed to record rollout items: thread 019df553-100a-7983-98f3-d618cf0def8b not found
tokens used
67,053
Static LaTeX review only. I could not run `pdflatex` because the read-only sandbox blocks creating even `/tmp` build files, so overfull/underfull boxes are not compiler-verified.

Issues found:

1. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:11): `hyperref` / `cleveref` are loaded before later packages such as `geometry`, `xcolor`, `listings`, and `booktabs`. This is inconsistent with the usual LaTeX load order and can cause link/page-size quirks.
   Fix: load `geometry`, graphics/color/listing/table packages first, then `hyperref`, then `cleveref` last.

2. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:132): citation is separated by a breakable space: `itself \cite{...}`.
   Fix: `itself~\cite{HoTTBook,Voevodsky}`. Same issue at lines 136, 150, 216, 268, 305, 315, 352, 371, 399, 419, 529, 595, and 646: use `~\cite...`.

3. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:160): sentence-ending acronym spacing: `API. The`.
   Fix: `API\@. The`.

4. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:385): sentence-ending acronym spacing: `HoTT.`.
   Fix: `HoTT\@.`.

5. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:448): Roman numeral sentence-ending spacing inside emphasis: `\emph{Candidate I.} For`.
   Fix: `\emph{Candidate I\@.} For`. Same issue at lines 454, 460, and 466 for `II`, `III`, and `IV`.

6. [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:587): sentence-ending Roman numeral spacing: `Candidate III.`
   Fix: `Candidate III\@.`.

No duplicate labels, undefined `\ref`s, missing cited `\bibitem`s, mismatched `\begin`/`\end` pairs, or obvious undefined commands were found by static inspection.

VERDICT: NEEDS_FIX

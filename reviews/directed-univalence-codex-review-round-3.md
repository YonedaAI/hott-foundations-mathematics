---
reviewer: codex (OpenAI)
type: formatting
paper: directed-univalence
round: 3
date: 2026-05-04T23:37:04Z
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
session id: 019df55a-3b7b-7f21-a4f8-c908f7bc7500
--------
user
Review the LaTeX file at /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex for LaTeX formatting issues only: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems, mismatched braces or environments, undefined commands. List all issues you find with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll keep this read-only and focus strictly on LaTeX/rendering hygiene. I’m first checking for any relevant prior notes, then I’ll inspect the source with line numbers and lightweight LaTeX tooling if available.
exec
/usr/local/bin/zsh -lc 'rg -n "hott-foundations|directed-univalence|LaTeX|latex" /Users/mlong/.codex/memories/MEMORY.md' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
19:- rollout_summaries/2026-05-04T04-25-46-CquY-website_nextjs_audit_katex_metadata_a11y_assets.md (cwd=/Users/mlong/Documents/Development/magneton_work/theology-faith-and-perfectionism, rollout_path=/Users/mlong/.codex/sessions/2026/05/03/rollout-2026-05-03T22-25-46-019df13c-2f74-7a00-ae6a-47b0cb1d9d18.jsonl, updated_at=2026-05-04T04:29:41+00:00, thread_id=019df13c-2f74-7a00-ae6a-47b0cb1d9d18, includes TOC/raw-LaTeX and a11y findings)
23:- strict numbered issue list, critical major minor, absolute file paths, line numbers, TableOfContents.tsx, focus-visible, touch target, fixed PDF button, raw LaTeX, duplicate h1
43:- Symptom: navigation labels leak raw LaTeX while article math looks fine. Cause: headings were extracted before math rendering. Fix/pivot: inspect heading-extraction order whenever rendered headings are reused in TOCs or navigation [Task 2]

exec
/usr/local/bin/zsh -lc "wc -l papers/latex/directed-univalence.tex && rg -n \"(TODO|\\\\label|\\\\ref|\\\\cite|\\\\begin|\\\\end|\\\\input|\\\\include|\\\\usepackage|\\\\newcommand|\\\\DeclareMathOperator|undefined|overfull|underfull)\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
     721 papers/latex/directed-univalence.tex
rg: regex parse error:
    (?:(TODO|\label|\ref|\cite|\begin|\end|\input|\include|\usepackage|\newcommand|\DeclareMathOperator|undefined|overfull|underfull))
             ^^
error: unrecognized escape sequence

codex
No prior note appears to cover this paper; the only memory hit was for a different site audit, so I’m proceeding from the local file itself. The first search pattern had an escaping issue, and I’m rerunning it with a simpler literal-oriented pass.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
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
    27	% Microtype + emergency stretch for nicer line-breaking, esp. in the bibliography
    28	\usepackage[final]{microtype}
    29	
    30	% References (load near the end)
    31	\usepackage{hyperref}
    32	\usepackage{cleveref}
    33	
    34	\emergencystretch=2em
    35	\lstset{
    36	  basicstyle=\ttfamily\footnotesize,
    37	  columns=fullflexible,
    38	  breaklines=true,
    39	  showstringspaces=false,
    40	  frame=single,
    41	  framerule=0.4pt,
    42	  rulecolor=\color{black!40},
    43	  xleftmargin=0pt,
    44	  xrightmargin=0pt
    45	}
    46	
    47	% Theorem environments
    48	\newtheorem{theorem}{Theorem}[section]
    49	\newtheorem{proposition}[theorem]{Proposition}
    50	\newtheorem{lemma}[theorem]{Lemma}
    51	\newtheorem{corollary}[theorem]{Corollary}
    52	\theoremstyle{definition}
    53	\newtheorem{definition}[theorem]{Definition}
    54	\newtheorem{example}[theorem]{Example}
    55	\theoremstyle{remark}
    56	\newtheorem{remark}[theorem]{Remark}
    57	\newtheorem{conjecture}[theorem]{Conjecture}
    58	\newtheorem{question}[theorem]{Question}
    59	
    60	% Macros
    61	\newcommand{\Type}{\mathsf{Type}}
    62	\newcommand{\U}{\mathcal{U}}
    63	\newcommand{\N}{\mathbb{N}}
    64	\newcommand{\Z}{\mathbb{Z}}
    65	\newcommand{\Cat}{\mathsf{Cat}}
    66	\newcommand{\Set}{\mathsf{Set}}
    67	\newcommand{\Grpd}{\mathsf{Grpd}}
    68	\newcommand{\Hom}{\mathsf{Hom}}
    69	\newcommand{\Fun}{\mathsf{Fun}}
    70	\newcommand{\Id}{\mathsf{Id}}
    71	\newcommand{\id}{\mathsf{id}}
    72	\newcommand{\refl}{\mathsf{refl}}
    73	\newcommand{\ua}{\mathsf{ua}}
    74	\newcommand{\dua}{\mathsf{dua}}
    75	\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
    76	\newcommand{\funtohom}{\mathsf{funtohom}}
    77	\newcommand{\eqv}{\simeq}
    78	\newcommand{\op}{\mathrm{op}}
    79	\newcommand{\isContr}{\mathsf{isContr}}
    80	\newcommand{\isProp}{\mathsf{isProp}}
    81	\newcommand{\isSet}{\mathsf{isSet}}
    82	\newcommand{\isSegal}{\mathsf{isSegal}}
    83	\newcommand{\isRezk}{\mathsf{isRezk}}
    84	\newcommand{\isDisc}{\mathsf{isDiscrete}}
    85	\newcommand{\disc}{\mathsf{disc}}
    86	\newcommand{\Disc}{\mathsf{Disc}}
    87	\newcommand{\Triv}{\mathsf{Triv}}
    88	\newcommand{\STT}{\mathbf{STT}}
    89	\newcommand{\TTT}{\mathbf{TTT}}
    90	\newcommand{\HoTT}{\mathbf{HoTT}}
    91	\newcommand{\rzk}{\mathsf{rzk}}
    92	\newcommand{\twoI}{\mathbf{2}}
    93	\newcommand{\inv}{^{-1}}
    94	\newcommand{\into}{\hookrightarrow}
    95	\newcommand{\seg}{\Lambda}
    96	
    97	% GrokRxiv sidebar
    98	\definecolor{grokgray}{RGB}{110,110,110}
    99	\AddEverypageHook{%
   100	  \ifnum\value{page}=1
   101	    \begin{tikzpicture}[remember picture, overlay]
   102	      \node[
   103	        rotate=90,
   104	        anchor=south,
   105	        font=\Large\sffamily\bfseries\color{grokgray},
   106	        inner sep=0pt
   107	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
   108	      {GrokRxiv:2026.05.directed-univalence\quad
   109	       [\,math.CT\,]\quad
   110	       04 May 2026};
   111	    \end{tikzpicture}
   112	  \fi
   113	}
   114	
   115	\title{Directed Univalence: From Riehl--Shulman to a Complete Principle}
   116	\author{YonedaAI Research \\
   117	\textit{Magneton Foundational Studies}}
   118	\date{4 May 2026}
   119	
   120	\begin{document}
   121	\maketitle
   122	
   123	\begin{abstract}
   124	Voevodsky's univalence axiom equates path identification with type-equivalence and lies at the heart of homotopy type theory (HoTT). Its directed analogue --- which would equate hom-types in the universe with functions between types --- has been pursued since the introduction of \emph{simplicial type theory} (STT) by Riehl and Shulman (2017). Riehl--Shulman gives a synthetic theory of $(\infty,1)$-categories whose internal hom-types $\Hom_A(a,b)$ behave correctly inside Segal types, and a \emph{partial} directed univalence holds for covariant fibrations: the universe of discrete types restricted along a covariant family is recovered from the family itself. A complete principle for the entire universe remained out of reach. Gratzer, Weinberger and Buchholtz (2024) introduce \emph{triangulated type theory} (TTT), an extension of STT with a system of modalities ($\flat$, $\sharp$, $\Disc$, opposite), and prove a directed univalence theorem for the universe $\mathcal{S}$ of \emph{discrete} types: $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$. This is the first complete fragment of a directed univalence principle.
   125	
   126	We give an expository, structured account of the line of work from Riehl--Shulman 2017 through Gratzer--Weinberger--Buchholtz 2024. We isolate the technical contents of partial directed univalence, formulate four candidate \emph{full} directed univalence principles of increasing strength, and analyse what would be required to prove each. We propose a programme of \emph{layered} directed univalence indexed by the Segal/Rezk/discrete hierarchy, give toy implementations in Haskell and Lean~4, and connect the project to natural number objects in $(\infty,1)$-toposes, higher inductive types, and synthetic representation theory. The complete principle remains open; we make explicit the obstructions, including modal dependence, opposite-type coherence, and the lack of an internal universe of $(\infty,1)$-categories.
   127	\end{abstract}
   128	
   129	\tableofcontents
   130	
   131	\section{Introduction}\label{sec:intro}
   132	
   133	Univalence is the structural principle that distinguishes homotopy type theory from intensional Martin--L\"of type theory. Its statement,
   134	\[
   135	\ua : (A \eqv B) \xrightarrow{\;\;\eqv\;\;} (A =_{\U} B),
   136	\]
   137	internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself~\cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
   138	
   139	Yet univalence as stated lives in a fundamentally \emph{symmetric} world. The identity type $A =_{\U} B$ is a groupoid: it has inverses. This reflects a basic fact about the type-theoretic universe: every type, in HoTT, is treated as an $\infty$-groupoid. Categories proper --- where morphisms can be non-invertible --- do not admit a clean internal description in HoTT without artefacts.
   140	
   141	Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper~\cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
   142	\[
   143	\langle \prod_{t : \twoI} A(t) \mid \Phi \mapsto a \rangle,
   144	\]
   145	the type of dependent functions on $\twoI$ that on the tope $\Phi$ agree definitionally with a prescribed partial function $a$. Hom-types are then defined as extension types out of $\twoI$.
   146	
   147	Within $\STT$ there is no \emph{a priori} guarantee that an arbitrary type $A$ describes an $(\infty,1)$-category --- only that it has a mapping space structure. Two predicates $\isSegal(A)$ (composition of hom-types) and $\isRezk(A)$ (equivalences are identities) cut out the types of interest, the Rezk types, which model complete Segal spaces and hence $(\infty,1)$-categories.
   148	
   149	The natural question is then: \emph{is there a directed analogue of univalence?} If $\mathcal{S}$ is some directed universe of types, is the hom-type $\Hom_{\mathcal{S}}(A,B)$ equivalent to the type of functions $\Fun(A,B) := A \to B$? Riehl--Shulman prove a partial result: a covariant family $P : A \to \U$ is classified by a functor $A \to \mathcal{S}_{\disc}$ into the \emph{discrete} sub-universe, and the data of the family is recovered up to equivalence from the functor. This is directed univalence \emph{for covariant families} but not for the universe at large.
   150	
   151	For seven years, the question of whether the directed universe itself satisfies a directed univalence principle was open. Gratzer, Weinberger and Buchholtz (2024) settle the question for the discrete sub-universe: they introduce a system of modalities adequate to express both the directed universe and the symmetric universe of $\infty$-groupoids inside it, and prove
   152	\[
   153	\dua_{\mathcal{S}} : \Hom_{\mathcal{S}}(A,B) \;\eqv\; \Fun(A,B),
   154	\]
   155	where $\mathcal{S}$ is the universe of discrete types~\cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
   156	
   157	This paper has four aims:
   158	\begin{enumerate}
   159	\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
   160	\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
   161	\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
   162	\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
   163	\end{enumerate}
   164	
   165	We accompany the exposition with formal sketches in Haskell (under \texttt{src/}) and Lean~4 (under \texttt{lean/}) that mechanise the relevant equivalences for the discrete fragment and lay out the directed universe API\@. The Haskell modules are not Lean proofs --- they implement \emph{toy} models that exhibit the algebraic content (covariant fibrations as $A \to \mathcal{S}$ functors, hom-types as Day convolutions on a $\twoI$-action) so that the conceptual content can be machine-checked even if foundationally weakened. Lean~4 sketches use postulates where appropriate.
   166	
   167	Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
   168	
   169	\paragraph{Conventions.} We write $\U$ for an ambient (symmetric) universe; $\mathcal{S}$ for a directed sub-universe; $A : \U$ or $A : \mathcal{S}$ for a type/object; $a, b : A$ for terms. The directed interval is $\twoI = \{0 \le 1\}$. Hom-types are written $\Hom_A(a,b)$ and identity types $a =_A b$. We use $f \eqv g$ for the type of equivalences. Throughout, $\STT$ refers to Riehl--Shulman 2017 simplicial type theory, $\TTT$ to Gratzer--Weinberger--Buchholtz 2024 triangulated type theory.
   170	
   171	\section{Background: Symmetric Univalence and Directed Motivation}\label{sec:background}
   172	
   173	\subsection{Voevodsky's univalence axiom}
   174	
   175	We recall the symmetric statement, both for orientation and to highlight what \emph{breaks} when one passes to the directed setting.
   176	
   177	\begin{definition}[Equivalence]\label{def:equiv}
   178	For $A, B : \U$, an \emph{equivalence} is a function $f : A \to B$ together with a witness that the fibre $\sum_{x : A} f(x) =_B y$ is contractible for every $y : B$. We write $A \eqv B$ for the type of equivalences.
   179	\end{definition}
   180	
   181	\begin{definition}[$\idtoeqv$]\label{def:idtoeqv}
   182	For each $A, B : \U$, the path induction principle defines a map
   183	\[
   184	\idtoeqv_{A,B} : (A =_{\U} B) \to (A \eqv B)
   185	\]
   186	sending $\refl_A$ to the identity equivalence $\id_A : A \eqv A$.
   187	\end{definition}
   188	
   189	\begin{theorem}[Voevodsky's univalence axiom]\label{thm:univalence}
   190	For every $A, B : \U$ the function $\idtoeqv_{A,B}$ is itself an equivalence.
   191	\end{theorem}
   192	
   193	The axiom yields its inverse $\ua : (A \eqv B) \to (A =_{\U} B)$ and the computation $\idtoeqv \circ \ua \sim \id$. Operationally, every equivalence delivers a path in the universe, and transport along this path acts as the equivalence.
   194	
   195	\paragraph{What is symmetric.}
   196	Two structural features of $A =_{\U} B$ make it manifestly \emph{symmetric}:
   197	\begin{enumerate}
   198	\item It has \emph{inverses}: if $p : A =_{\U} B$ then $p\inv : B =_{\U} A$.
   199	\item It is \emph{recursive}: $\idtoeqv$ may be defined by path induction, which is symmetric in $A$ and $B$.
   200	\end{enumerate}
   201	Both features are absent in the directed setting we wish to formalise.
   202	
   203	\subsection{What ``directed'' should mean}
   204	
   205	A directed type theory ought to admit, for each type $A$ and pair of terms $a, b : A$, a hom-type
   206	\[
   207	\Hom_A(a, b) : \U,
   208	\]
   209	together with composition
   210	\[
   211	\circ : \Hom_A(b,c) \times \Hom_A(a,b) \;\longrightarrow\; \Hom_A(a,c)
   212	\]
   213	and identities $\id_a : \Hom_A(a,a)$, satisfying associativity and unit laws \emph{up to higher coherent homotopy}. Crucially, $\Hom_A(a,b)$ should not in general carry inverses: if it did, the theory would collapse back to a symmetric one.
   214	
   215	We can articulate desiderata.
   216	
   217	\begin{enumerate}
   218	\item[(D1)] \emph{Hom is non-invertible.} The composition is not in general invertible.
   219	\item[(D2)] \emph{Functoriality.} Functions $f : A \to B$ act on hom-types:
   220	\[

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(label|ref|eqref|autoref|cite|begin|end|input|include|usepackage|newcommand|DeclareMathOperator|operatorname|href|url)' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
4:\usepackage{amsmath, amssymb, amsthm}
7:\usepackage[margin=1in]{geometry}
10:\usepackage{graphicx}
11:\usepackage{xcolor}
14:\usepackage{tikz-cd}
15:\usepackage{tikz}
19:\usepackage{booktabs}
22:\usepackage{listings}
25:\usepackage{everypage}
28:\usepackage[final]{microtype}
31:\usepackage{hyperref}
32:\usepackage{cleveref}
61:\newcommand{\Type}{\mathsf{Type}}
62:\newcommand{\U}{\mathcal{U}}
63:\newcommand{\N}{\mathbb{N}}
64:\newcommand{\Z}{\mathbb{Z}}
65:\newcommand{\Cat}{\mathsf{Cat}}
66:\newcommand{\Set}{\mathsf{Set}}
67:\newcommand{\Grpd}{\mathsf{Grpd}}
68:\newcommand{\Hom}{\mathsf{Hom}}
69:\newcommand{\Fun}{\mathsf{Fun}}
70:\newcommand{\Id}{\mathsf{Id}}
71:\newcommand{\id}{\mathsf{id}}
72:\newcommand{\refl}{\mathsf{refl}}
73:\newcommand{\ua}{\mathsf{ua}}
74:\newcommand{\dua}{\mathsf{dua}}
75:\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
76:\newcommand{\funtohom}{\mathsf{funtohom}}
77:\newcommand{\eqv}{\simeq}
78:\newcommand{\op}{\mathrm{op}}
79:\newcommand{\isContr}{\mathsf{isContr}}
80:\newcommand{\isProp}{\mathsf{isProp}}
81:\newcommand{\isSet}{\mathsf{isSet}}
82:\newcommand{\isSegal}{\mathsf{isSegal}}
83:\newcommand{\isRezk}{\mathsf{isRezk}}
84:\newcommand{\isDisc}{\mathsf{isDiscrete}}
85:\newcommand{\disc}{\mathsf{disc}}
86:\newcommand{\Disc}{\mathsf{Disc}}
87:\newcommand{\Triv}{\mathsf{Triv}}
88:\newcommand{\STT}{\mathbf{STT}}
89:\newcommand{\TTT}{\mathbf{TTT}}
90:\newcommand{\HoTT}{\mathbf{HoTT}}
91:\newcommand{\rzk}{\mathsf{rzk}}
92:\newcommand{\twoI}{\mathbf{2}}
93:\newcommand{\inv}{^{-1}}
94:\newcommand{\into}{\hookrightarrow}
95:\newcommand{\seg}{\Lambda}
101:    \begin{tikzpicture}[remember picture, overlay]
111:    \end{tikzpicture}
120:\begin{document}
123:\begin{abstract}
127:\end{abstract}
131:\section{Introduction}\label{sec:intro}
137:internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself~\cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
141:Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper~\cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
155:where $\mathcal{S}$ is the universe of discrete types~\cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
158:\begin{enumerate}
159:\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
160:\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
161:\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
162:\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
163:\end{enumerate}
167:Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
171:\section{Background: Symmetric Univalence and Directed Motivation}\label{sec:background}
177:\begin{definition}[Equivalence]\label{def:equiv}
179:\end{definition}
181:\begin{definition}[$\idtoeqv$]\label{def:idtoeqv}
186:sending $\refl_A$ to the identity equivalence $\id_A : A \eqv A$.
187:\end{definition}
189:\begin{theorem}[Voevodsky's univalence axiom]\label{thm:univalence}
191:\end{theorem}
197:\begin{enumerate}
200:\end{enumerate}
217:\begin{enumerate}
226:\end{enumerate}
228:(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work~\cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
238:\section{Riehl--Shulman Simplicial Type Theory}\label{sec:rs}
244:\begin{definition}[Cube]\label{def:cube}
246:\end{definition}
248:\begin{definition}[Tope]\label{def:tope}
250:\end{definition}
252:\begin{definition}[Extension type]\label{def:exttype}
258:\end{definition}
260:\begin{remark}
262:\end{remark}
266:\begin{definition}[Hom-type]\label{def:hom}
271:\end{definition}
275:\begin{definition}[Segal predicate]\label{def:segal}
280:into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.
281:\end{definition}
289:\begin{definition}[Rezk predicate]\label{def:rezk}
295:\end{definition}
297:\begin{theorem}[Riehl--Shulman, semantic]\label{thm:rs-semantic}
299:\end{theorem}
303:\begin{definition}[Discrete type]\label{def:discrete}
309:\end{definition}
311:\begin{example}\label{ex:discrete-types}
313:\end{example}
317:A high point of~\cite{RiehlShulman} is a synthetic Yoneda lemma. We state it informally.
319:\begin{theorem}[Synthetic Yoneda, RS Thm 9.1]\label{thm:yoneda}
324:\end{theorem}
326:\begin{proof}[Proof sketch]
327:Both sides are recovered from the dependent product structure on $A$ and the universal property of the representable $\Hom_A(a,-)$. Detailed proof: see \cite[\S 9]{RiehlShulman}.
328:\end{proof}
332:\section{Partial Directed Univalence (Riehl--Shulman 2017)}\label{sec:partial}
336:\begin{definition}[Covariant fibration]\label{def:covariant}
338:\end{definition}
342:\begin{theorem}[Straightening, partial directed univalence for covariant families]\label{thm:straightening}
344:\begin{enumerate}
347:\end{enumerate}
348:\end{theorem}
354:Theorem~\ref{thm:straightening} stops short of asserting
364:To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from~\cite{RiehlShulman}.
368:\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
370:\begin{enumerate}
371:\item There is a directed straightening for covariant families into the discrete universe (Theorem~\ref{thm:straightening}).
374:\end{enumerate}
375:\end{proposition}
379:\section[Triangulated Type Theory]{Triangulated Type Theory \\ (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
383:The crucial new ingredient in~\cite{GWB2024} is a system of modalities. We describe four.
385:\begin{definition}[The four modalities]\label{def:modalities}
387:\begin{enumerate}
392:\end{enumerate}
394:\end{definition}
396:\begin{remark}
398:\end{remark}
402:\begin{definition}[Discrete universe]\label{def:disc-universe}
404:\end{definition}
406:\begin{theorem}[GWB, $\mathcal{S}$ is Segal]\label{thm:s-segal}
408:\end{theorem}
410:\begin{proof}[Proof outline]
411:The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.
412:\end{proof}
416:\begin{theorem}[Directed univalence in $\TTT$, GWB Thm 8.1]\label{thm:dua-s}
422:\end{theorem}
424:\begin{proof}[Proof sketch]
426:\begin{enumerate}
430:\end{enumerate}
431:See \cite[\S 8]{GWB2024} for full details.
432:\end{proof}
434:\begin{corollary}[Yoneda for $\mathcal{S}$]\label{cor:yoneda-s}
436:\end{corollary}
438:\begin{remark}
439:Theorem~\ref{thm:dua-s} is a complete directed univalence statement for the discrete fragment. It is ``triangulated'' in the sense that its formulation requires the triangle $\flat \dashv \Disc \dashv \sharp$.
440:\end{remark}
444:\begin{proposition}[Scope of GWB]\label{prop:scope-gwb}
445:Theorem~\ref{thm:dua-s} establishes directed univalence for the discrete universe $\mathcal{S}$. It does \emph{not} establish:
446:\begin{enumerate}
450:\end{enumerate}
451:\end{proposition}
453:\section{Toward a Complete Principle}\label{sec:complete}
459:\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
462:\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
463:\end{definition}
465:\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
469:\end{definition}
471:\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
475:\end{definition}
477:\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
481:\end{definition}
485:\begin{conjecture}[Layered directed univalence]\label{conj:layered}
491:\end{conjecture}
494:\begin{itemize}
499:\end{itemize}
503:\begin{proposition}[Obstruction: opposite-type coherence]\label{prop:opp-coh}
505:\end{proposition}
507:\begin{proposition}[Obstruction: modal dependence]\label{prop:modal-dep}
509:\end{proposition}
511:\begin{proposition}[Obstruction: large vs.\ small]\label{prop:large}
513:\end{proposition}
519:\begin{enumerate}
521:\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is Segal in $\TTT$. This is plausibly an extension of Theorem~\ref{thm:s-segal} but requires that $\isRezk$ commute with extension types out of $\twoI$, which is non-trivial.
525:\end{enumerate}
529:\begin{question}\label{q:rezk-modality}
531:\begin{enumerate}
535:\end{enumerate}
536:\end{question}
540:\begin{remark}[Cubical analogue]\label{rem:cubical}
541:Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments~\cite{Cisinski}; the rzk proof assistant aims at a computational interpretation~\cite{rzk}.
542:\end{remark}
546:\begin{center}
547:\begin{tabular}{lll}
552:$\mathcal{S}_{\disc}$ & directed, discrete & GWB 2024 (Theorem~\ref{thm:dua-s}) \\
557:\end{tabular}
558:\end{center}
560:\section{\texorpdfstring{Connections to $(\infty,1)$-Natural Number Objects and HITs}{Connections to (infinity,1)-Natural Number Objects and HITs}}\label{sec:hit}
566:\begin{proposition}[NNO in discrete directed type theory]\label{prop:nno-disc}
571:for any pointed endo-discrete-type $(A, a_0, s)$. Directed univalence (Theorem~\ref{thm:dua-s}) then identifies these initiality witnesses with directed morphisms in $\mathcal{S}$.
572:\end{proposition}
578:\begin{definition}[Directed HIT]\label{def:dhit}
580:\end{definition}
582:\begin{example}[Walking arrow]\label{ex:walking-arrow}
584:\end{example}
586:\begin{example}[Walking commutative square]\label{ex:walking-square}
588:\end{example}
594:\begin{definition}[Synthetic representation]\label{def:rep}
596:\end{definition}
598:\begin{remark}\label{rem:langlands-distant}
600:\end{remark}
604:\begin{itemize}
607:\item The experimental proof assistant rzk~\cite{rzk} implements $\STT$ with topes and extension types; it does \emph{not} yet implement triangulated modalities or prove directed univalence.
608:\end{itemize}
610:\section{Discussion}\label{sec:discussion}
616:\begin{enumerate}
620:\end{enumerate}
624:\begin{enumerate}
629:\end{enumerate}
635:\begin{enumerate}
639:\end{enumerate}
645:\section{Open Problems}\label{sec:open}
649:\begin{question}[Rezk directed univalence]\label{q:rezk}
651:\end{question}
653:\begin{question}[$(\infty,1)$-Cat as a primitive type]\label{q:icat}
655:\end{question}
657:\begin{question}[Internal language of cocartesian fibrations]\label{q:cocart}
658:Develop the internal language of cocartesian fibrations in $\TTT$, in the spirit of Cisinski--Nguyen~\cite{CisinskiNguyen}.
659:\end{question}
661:\begin{question}[Directed Langlands]\label{q:langlands}
663:\end{question}
665:\section{Conclusion}\label{sec:conclusion}
679:\begin{thebibliography}{99}
701:\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.
719:\end{thebibliography}
721:\end{document}

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(todo|TODO|undefined|Overfull|Underfull|hbox|vbox)|[{}]' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
1:\documentclass[12pt]{article}
4:\usepackage{amsmath, amssymb, amsthm}
7:\usepackage[margin=1in]{geometry}
10:\usepackage{graphicx}
11:\usepackage{xcolor}
14:\usepackage{tikz-cd}
15:\usepackage{tikz}
16:\usetikzlibrary{decorations.markings, arrows.meta, positioning}
19:\usepackage{booktabs}
22:\usepackage{listings}
25:\usepackage{everypage}
28:\usepackage[final]{microtype}
31:\usepackage{hyperref}
32:\usepackage{cleveref}
35:\lstset{
42:  rulecolor=\color{black!40},
45:}
48:\newtheorem{theorem}{Theorem}[section]
49:\newtheorem{proposition}[theorem]{Proposition}
50:\newtheorem{lemma}[theorem]{Lemma}
51:\newtheorem{corollary}[theorem]{Corollary}
52:\theoremstyle{definition}
53:\newtheorem{definition}[theorem]{Definition}
54:\newtheorem{example}[theorem]{Example}
55:\theoremstyle{remark}
56:\newtheorem{remark}[theorem]{Remark}
57:\newtheorem{conjecture}[theorem]{Conjecture}
58:\newtheorem{question}[theorem]{Question}
61:\newcommand{\Type}{\mathsf{Type}}
62:\newcommand{\U}{\mathcal{U}}
63:\newcommand{\N}{\mathbb{N}}
64:\newcommand{\Z}{\mathbb{Z}}
65:\newcommand{\Cat}{\mathsf{Cat}}
66:\newcommand{\Set}{\mathsf{Set}}
67:\newcommand{\Grpd}{\mathsf{Grpd}}
68:\newcommand{\Hom}{\mathsf{Hom}}
69:\newcommand{\Fun}{\mathsf{Fun}}
70:\newcommand{\Id}{\mathsf{Id}}
71:\newcommand{\id}{\mathsf{id}}
72:\newcommand{\refl}{\mathsf{refl}}
73:\newcommand{\ua}{\mathsf{ua}}
74:\newcommand{\dua}{\mathsf{dua}}
75:\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
76:\newcommand{\funtohom}{\mathsf{funtohom}}
77:\newcommand{\eqv}{\simeq}
78:\newcommand{\op}{\mathrm{op}}
79:\newcommand{\isContr}{\mathsf{isContr}}
80:\newcommand{\isProp}{\mathsf{isProp}}
81:\newcommand{\isSet}{\mathsf{isSet}}
82:\newcommand{\isSegal}{\mathsf{isSegal}}
83:\newcommand{\isRezk}{\mathsf{isRezk}}
84:\newcommand{\isDisc}{\mathsf{isDiscrete}}
85:\newcommand{\disc}{\mathsf{disc}}
86:\newcommand{\Disc}{\mathsf{Disc}}
87:\newcommand{\Triv}{\mathsf{Triv}}
88:\newcommand{\STT}{\mathbf{STT}}
89:\newcommand{\TTT}{\mathbf{TTT}}
90:\newcommand{\HoTT}{\mathbf{HoTT}}
91:\newcommand{\rzk}{\mathsf{rzk}}
92:\newcommand{\twoI}{\mathbf{2}}
93:\newcommand{\inv}{^{-1}}
94:\newcommand{\into}{\hookrightarrow}
95:\newcommand{\seg}{\Lambda}
98:\definecolor{grokgray}{RGB}{110,110,110}
99:\AddEverypageHook{%
100:  \ifnum\value{page}=1
101:    \begin{tikzpicture}[remember picture, overlay]
105:        font=\Large\sffamily\bfseries\color{grokgray},
108:      {GrokRxiv:2026.05.directed-univalence\quad
110:       04 May 2026};
111:    \end{tikzpicture}
113:}
115:\title{Directed Univalence: From Riehl--Shulman to a Complete Principle}
116:\author{YonedaAI Research \\
117:\textit{Magneton Foundational Studies}}
118:\date{4 May 2026}
120:\begin{document}
123:\begin{abstract}
124:Voevodsky's univalence axiom equates path identification with type-equivalence and lies at the heart of homotopy type theory (HoTT). Its directed analogue --- which would equate hom-types in the universe with functions between types --- has been pursued since the introduction of \emph{simplicial type theory} (STT) by Riehl and Shulman (2017). Riehl--Shulman gives a synthetic theory of $(\infty,1)$-categories whose internal hom-types $\Hom_A(a,b)$ behave correctly inside Segal types, and a \emph{partial} directed univalence holds for covariant fibrations: the universe of discrete types restricted along a covariant family is recovered from the family itself. A complete principle for the entire universe remained out of reach. Gratzer, Weinberger and Buchholtz (2024) introduce \emph{triangulated type theory} (TTT), an extension of STT with a system of modalities ($\flat$, $\sharp$, $\Disc$, opposite), and prove a directed univalence theorem for the universe $\mathcal{S}$ of \emph{discrete} types: $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$. This is the first complete fragment of a directed univalence principle.
126:We give an expository, structured account of the line of work from Riehl--Shulman 2017 through Gratzer--Weinberger--Buchholtz 2024. We isolate the technical contents of partial directed univalence, formulate four candidate \emph{full} directed univalence principles of increasing strength, and analyse what would be required to prove each. We propose a programme of \emph{layered} directed univalence indexed by the Segal/Rezk/discrete hierarchy, give toy implementations in Haskell and Lean~4, and connect the project to natural number objects in $(\infty,1)$-toposes, higher inductive types, and synthetic representation theory. The complete principle remains open; we make explicit the obstructions, including modal dependence, opposite-type coherence, and the lack of an internal universe of $(\infty,1)$-categories.
127:\end{abstract}
131:\section{Introduction}\label{sec:intro}
135:\ua : (A \eqv B) \xrightarrow{\;\;\eqv\;\;} (A =_{\U} B),
137:internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself~\cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
139:Yet univalence as stated lives in a fundamentally \emph{symmetric} world. The identity type $A =_{\U} B$ is a groupoid: it has inverses. This reflects a basic fact about the type-theoretic universe: every type, in HoTT, is treated as an $\infty$-groupoid. Categories proper --- where morphisms can be non-invertible --- do not admit a clean internal description in HoTT without artefacts.
141:Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper~\cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
143:\langle \prod_{t : \twoI} A(t) \mid \Phi \mapsto a \rangle,
147:Within $\STT$ there is no \emph{a priori} guarantee that an arbitrary type $A$ describes an $(\infty,1)$-category --- only that it has a mapping space structure. Two predicates $\isSegal(A)$ (composition of hom-types) and $\isRezk(A)$ (equivalences are identities) cut out the types of interest, the Rezk types, which model complete Segal spaces and hence $(\infty,1)$-categories.
149:The natural question is then: \emph{is there a directed analogue of univalence?} If $\mathcal{S}$ is some directed universe of types, is the hom-type $\Hom_{\mathcal{S}}(A,B)$ equivalent to the type of functions $\Fun(A,B) := A \to B$? Riehl--Shulman prove a partial result: a covariant family $P : A \to \U$ is classified by a functor $A \to \mathcal{S}_{\disc}$ into the \emph{discrete} sub-universe, and the data of the family is recovered up to equivalence from the functor. This is directed univalence \emph{for covariant families} but not for the universe at large.
153:\dua_{\mathcal{S}} : \Hom_{\mathcal{S}}(A,B) \;\eqv\; \Fun(A,B),
155:where $\mathcal{S}$ is the universe of discrete types~\cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
158:\begin{enumerate}
159:\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
160:\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
161:\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
162:\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
163:\end{enumerate}
165:We accompany the exposition with formal sketches in Haskell (under \texttt{src/}) and Lean~4 (under \texttt{lean/}) that mechanise the relevant equivalences for the discrete fragment and lay out the directed universe API\@. The Haskell modules are not Lean proofs --- they implement \emph{toy} models that exhibit the algebraic content (covariant fibrations as $A \to \mathcal{S}$ functors, hom-types as Day convolutions on a $\twoI$-action) so that the conceptual content can be machine-checked even if foundationally weakened. Lean~4 sketches use postulates where appropriate.
167:Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
169:\paragraph{Conventions.} We write $\U$ for an ambient (symmetric) universe; $\mathcal{S}$ for a directed sub-universe; $A : \U$ or $A : \mathcal{S}$ for a type/object; $a, b : A$ for terms. The directed interval is $\twoI = \{0 \le 1\}$. Hom-types are written $\Hom_A(a,b)$ and identity types $a =_A b$. We use $f \eqv g$ for the type of equivalences. Throughout, $\STT$ refers to Riehl--Shulman 2017 simplicial type theory, $\TTT$ to Gratzer--Weinberger--Buchholtz 2024 triangulated type theory.
171:\section{Background: Symmetric Univalence and Directed Motivation}\label{sec:background}
173:\subsection{Voevodsky's univalence axiom}
175:We recall the symmetric statement, both for orientation and to highlight what \emph{breaks} when one passes to the directed setting.
177:\begin{definition}[Equivalence]\label{def:equiv}
178:For $A, B : \U$, an \emph{equivalence} is a function $f : A \to B$ together with a witness that the fibre $\sum_{x : A} f(x) =_B y$ is contractible for every $y : B$. We write $A \eqv B$ for the type of equivalences.
179:\end{definition}
181:\begin{definition}[$\idtoeqv$]\label{def:idtoeqv}
184:\idtoeqv_{A,B} : (A =_{\U} B) \to (A \eqv B)
187:\end{definition}
189:\begin{theorem}[Voevodsky's univalence axiom]\label{thm:univalence}
190:For every $A, B : \U$ the function $\idtoeqv_{A,B}$ is itself an equivalence.
191:\end{theorem}
193:The axiom yields its inverse $\ua : (A \eqv B) \to (A =_{\U} B)$ and the computation $\idtoeqv \circ \ua \sim \id$. Operationally, every equivalence delivers a path in the universe, and transport along this path acts as the equivalence.
195:\paragraph{What is symmetric.}
196:Two structural features of $A =_{\U} B$ make it manifestly \emph{symmetric}:
197:\begin{enumerate}
198:\item It has \emph{inverses}: if $p : A =_{\U} B$ then $p\inv : B =_{\U} A$.
199:\item It is \emph{recursive}: $\idtoeqv$ may be defined by path induction, which is symmetric in $A$ and $B$.
200:\end{enumerate}
203:\subsection{What ``directed'' should mean}
213:and identities $\id_a : \Hom_A(a,a)$, satisfying associativity and unit laws \emph{up to higher coherent homotopy}. Crucially, $\Hom_A(a,b)$ should not in general carry inverses: if it did, the theory would collapse back to a symmetric one.
217:\begin{enumerate}
218:\item[(D1)] \emph{Hom is non-invertible.} The composition is not in general invertible.
219:\item[(D2)] \emph{Functoriality.} Functions $f : A \to B$ act on hom-types:
223:\item[(D3)] \emph{Equivalences are identities.} For appropriately structured types, an invertible morphism in $\Hom_A(a,b)$ should yield an identity $a =_A b$.
224:\item[(D4)] \emph{Synthetic $(\infty,1)$-category theory.} The Yoneda lemma, adjoint functors, Kan extensions, and limits/colimits should be expressible \emph{synthetically} on top of these primitives.
225:\item[(D5)] \emph{Directed univalence.} The universe should reflect its own hom-structure: hom in the universe = function type.
226:\end{enumerate}
228:(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work~\cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
230:\subsection{\texorpdfstring{$(\infty,1)$-categorical motivation}{(infinity,1)-categorical motivation}}
234:The directed analogue would have a universe $\mathcal{S}$ classifying bundles \emph{up to map}, not just equivalence. In an $(\infty,1)$-topos $\mathcal{X}$, the natural such classifier is the cocartesian fibration of the $(\infty,1)$-category $\mathcal{X}_{/-}$ over $\mathcal{X}$ itself. But this is no longer a single object: it is a structured presentable $(\infty,1)$-category. The naive analogue --- ``a small object in $\mathcal{X}$ that classifies maps'' --- requires \emph{at least} a handle on $\mathcal{X}$ as an $(\infty,1)$-category internal to $\mathcal{X}$, a strictly stronger demand than internal $\infty$-groupoids.
238:\section{Riehl--Shulman Simplicial Type Theory}\label{sec:rs}
240:\subsection{Topes, cubes, extension types}
242:$\STT$ is a three-layer system: a homotopy type theory; a strict cube layer with the directed interval $\twoI = \{0 \le 1\}$; and a tope layer of decidable propositions over the cube. We sketch each layer.
244:\begin{definition}[Cube]\label{def:cube}
245:A \emph{cube} is built inductively from a primitive directed interval $\twoI$, the unit cube $\mathbf{1}$, and finite products. Cubes are denoted $I, J, K$.
246:\end{definition}
248:\begin{definition}[Tope]\label{def:tope}
249:A \emph{tope} on a cube $I$ is a polynomial inequality in the coordinates of $I$, closed under $\top$, $\bot$, $\wedge$, $\vee$. Topes form a distributive lattice. The standard examples on $\twoI$ are $\{0\}$, $\{1\}$, $\{0 \le t\}$, $\{t \le 1\}$.
250:\end{definition}
252:\begin{definition}[Extension type]\label{def:exttype}
253:Given a cube $I$, a tope $\Phi$ on $I$, a type family $A : I \to \U$, and a partial term $a : \prod_{t : \Phi} A(t)$ defined on $\Phi$, the \emph{extension type}
255:\big\langle \prod_{t : I} A(t) \;\big|\; \Phi \mapsto a \big\rangle
257:is the type of dependent functions $f : \prod_{t : I} A(t)$ such that for $t : \Phi$, $f(t) \equiv a(t)$ judgmentally.
258:\end{definition}
260:\begin{remark}
261:Extension types provide a uniform mechanism for \emph{strict boundary conditions}: the value of $f$ on the tope $\Phi$ is fixed up to definitional equality. This is what lets STT speak about, e.g., morphisms with prescribed source and target.
262:\end{remark}
264:\subsection{Hom-types and Segal types}
266:\begin{definition}[Hom-type]\label{def:hom}
267:Let $A : \U$ and $a, b : A$. The \emph{hom-type} is the extension type
269:\Hom_A(a,b) := \big\langle \prod_{t : \twoI} A \;\big|\; \{0\} \mapsto a, \{1\} \mapsto b \big\rangle.
271:\end{definition}
273:So a morphism from $a$ to $b$ is a function $\twoI \to A$ taking $0$ to $a$ and $1$ to $b$. The directed interval is \emph{ordered}, hence so is the hom-type.
275:\begin{definition}[Segal predicate]\label{def:segal}
276:A type $A$ is \emph{Segal}, written $\isSegal(A)$, if the canonical map
278:\Hom_A(a,b) \times \Hom_A(b,c) \to \Big\langle \prod_{(t,s) : \seg^2_1} A \;\big|\; (a, \cdot, c) \Big\rangle
280:into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.
281:\end{definition}
289:\begin{definition}[Rezk predicate]\label{def:rezk}
290:A Segal type $A$ is \emph{Rezk} if the canonical map
292:(a =_A b) \to \mathsf{Iso}_A(a,b)
294:is an equivalence, where $\mathsf{Iso}_A(a,b) \subset \Hom_A(a,b)$ is the sub-type of two-sidedly invertible morphisms. (This is internal univalence on $A$.)
295:\end{definition}
297:\begin{theorem}[Riehl--Shulman, semantic]\label{thm:rs-semantic}
299:\end{theorem}
301:\subsection{Discrete types}
303:\begin{definition}[Discrete type]\label{def:discrete}
304:A type $A$ is \emph{discrete}, written $\isDisc(A)$, if for every $a, b : A$ the canonical map
309:\end{definition}
311:\begin{example}\label{ex:discrete-types}
313:\end{example}
315:\subsection{Synthetic Yoneda lemma}
317:A high point of~\cite{RiehlShulman} is a synthetic Yoneda lemma. We state it informally.
319:\begin{theorem}[Synthetic Yoneda, RS Thm 9.1]\label{thm:yoneda}
320:Let $A$ be a Segal type and $\mathcal{S}$ the universe of discrete types. Then for any covariant functor $F : A \to \mathcal{S}$ and any $a : A$, evaluation at $\id_a$ gives an equivalence
322:\Big( \prod_{x : A} \Hom_A(a, x) \to F(x) \Big) \;\eqv\; F(a).
324:\end{theorem}
326:\begin{proof}[Proof sketch]
327:Both sides are recovered from the dependent product structure on $A$ and the universal property of the representable $\Hom_A(a,-)$. Detailed proof: see \cite[\S 9]{RiehlShulman}.
328:\end{proof}
332:\section{Partial Directed Univalence (Riehl--Shulman 2017)}\label{sec:partial}
334:\subsection{Covariant fibrations}
336:\begin{definition}[Covariant fibration]\label{def:covariant}
337:Let $A : \U$ be a Segal type. A type family $P : A \to \U$ is \emph{covariant} if for each $\alpha : \Hom_A(a,b)$ and each $u : P(a)$ there is a chosen lift $\alpha_*(u) : P(b)$, depending functorially on $\alpha$.
338:\end{definition}
340:In semantic terms, covariant families correspond to \emph{left fibrations}: functors $A \to \mathcal{S}$ classified by a particular kind of straightening.
342:\begin{theorem}[Straightening, partial directed univalence for covariant families]\label{thm:straightening}
344:\begin{enumerate}
346:\item Functors $A \to \mathcal{S}_{\disc}$, where $\mathcal{S}_{\disc}$ is the universe of discrete types.
347:\end{enumerate}
348:\end{theorem}
350:This is \emph{directed univalence for covariant fibrations valued in discrete types}: the universe $\mathcal{S}_{\disc}$ classifies covariant families, in exact analogy with $\U$ classifying type families up to equivalence.
352:\subsection{What is partial about it}
354:Theorem~\ref{thm:straightening} stops short of asserting
356:\Hom_{\mathcal{S}}(A, B) \;\eqv\; \Fun(A, B)
358:for the universe $\mathcal{S}$ \emph{itself} treated as a Segal type. Two reasons.
360:\paragraph{(1) The universe is not internally Segal.}
361:In $\STT$ as set up by Riehl--Shulman, the discrete universe $\mathcal{S}_{\disc}$ is given as a sub-type of $\U$, but its hom-type $\Hom_{\mathcal{S}_{\disc}}(A,B)$ is not directly described. The straightening theorem describes covariant \emph{maps into} $\mathcal{S}_{\disc}$, not the hom-type \emph{within} $\mathcal{S}_{\disc}$.
363:\paragraph{(2) Modal pieces are missing.}
364:To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from~\cite{RiehlShulman}.
366:\subsection{Limitations made formal}
368:\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
370:\begin{enumerate}
371:\item There is a directed straightening for covariant families into the discrete universe (Theorem~\ref{thm:straightening}).
372:\item There is \emph{no internally definable} hom-type for the discrete universe $\mathcal{S}_{\disc}$ qua object of the universe $\U$ that satisfies $\Hom_{\mathcal{S}_{\disc}}(A,B) \eqv \Fun(A,B)$.
373:\item There is no Segal-completion theorem for $\mathcal{S}_{\disc}$ producing a Segal-type version with the desired hom.
374:\end{enumerate}
375:\end{proposition}
379:\section[Triangulated Type Theory]{Triangulated Type Theory \\ (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
381:\subsection{Modal layer}
383:The crucial new ingredient in~\cite{GWB2024} is a system of modalities. We describe four.
385:\begin{definition}[The four modalities]\label{def:modalities}
387:\begin{enumerate}
391:\item $(-)^{\op}$: the opposite modality reversing direction.
392:\end{enumerate}
393:With $\flat \dashv \Disc \dashv \sharp$ a triangle of cohesion-like modalities, and $(-)^{\op}$ as duality.
394:\end{definition}
396:\begin{remark}
397:The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT\@.
398:\end{remark}
400:\subsection{\texorpdfstring{The discrete universe $\mathcal{S}$}{The discrete universe S}}
402:\begin{definition}[Discrete universe]\label{def:disc-universe}
403:The \emph{discrete universe} $\mathcal{S}$ in $\TTT$ is the type of $\Disc$-modal types: $\mathcal{S} := \sum_{A : \U} \isDisc(A)$, with universe structure inherited from $\U$.
404:\end{definition}
406:\begin{theorem}[GWB, $\mathcal{S}$ is Segal]\label{thm:s-segal}
407:The discrete universe $\mathcal{S}$ is a Segal type in $\TTT$. The hom-type $\Hom_{\mathcal{S}}(A, B)$ is well-defined as an extension type out of $\twoI$ valued in $\mathcal{S}$.
408:\end{theorem}
410:\begin{proof}[Proof outline]
411:The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.
412:\end{proof}
414:\subsection{The directed univalence theorem}
416:\begin{theorem}[Directed univalence in $\TTT$, GWB Thm 8.1]\label{thm:dua-s}
417:For all $A, B : \mathcal{S}$, the canonical map
419:\funtohom_{A,B} : \Fun(A,B) \;\longrightarrow\; \Hom_{\mathcal{S}}(A,B)
422:\end{theorem}
424:\begin{proof}[Proof sketch]
426:\begin{enumerate}
427:\item \emph{Define $\funtohom$.} Given $f : A \to B$, define the family $A_f : \twoI \to \mathcal{S}$ by $A_f(0) := A$, $A_f(1) := B$, $A_f(t) := \mathsf{cofib}(f, t)$, where $\mathsf{cofib}(f, t)$ denotes a standard cofibrant path-object construction interpolating between $A$ and $B$ along $f$ (concretely, the homotopy pushout of $f$ with the trivial map at parameter $t$). The $\Disc$ modality ensures $A_f(t)$ stays discrete for $t \in (0,1)$.
428:\item \emph{Inverse construction.} Given $\alpha : \Hom_{\mathcal{S}}(A,B)$, extract the function $\alpha^\flat : A \to B$ via the $\flat$ modality applied at the endpoint $\{1\}$.
429:\item \emph{Coherence.} Composition $\funtohom \circ \flat = \id$ and $\flat \circ \funtohom = \id$ both follow from the universal property of extension types and the Beck--Chevalley conditions for $\flat \dashv \Disc \dashv \sharp$.
430:\end{enumerate}
431:See \cite[\S 8]{GWB2024} for full details.
432:\end{proof}
434:\begin{corollary}[Yoneda for $\mathcal{S}$]\label{cor:yoneda-s}
435:Every covariant functor $F : \mathcal{S} \to \mathcal{S}$ is naturally equivalent to $\Hom_{\mathcal{S}}(F^\flat(\mathbf{1}), -)$ for a uniquely determined object $F^\flat(\mathbf{1}) : \mathcal{S}$.
436:\end{corollary}
438:\begin{remark}
439:Theorem~\ref{thm:dua-s} is a complete directed univalence statement for the discrete fragment. It is ``triangulated'' in the sense that its formulation requires the triangle $\flat \dashv \Disc \dashv \sharp$.
440:\end{remark}
442:\subsection{What is and is not proved}
444:\begin{proposition}[Scope of GWB]\label{prop:scope-gwb}
445:Theorem~\ref{thm:dua-s} establishes directed univalence for the discrete universe $\mathcal{S}$. It does \emph{not} establish:
446:\begin{enumerate}
450:\end{enumerate}
451:\end{proposition}
453:\section{Toward a Complete Principle}\label{sec:complete}
457:\subsection{Four candidates}
459:\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
460:\emph{Candidate I\@.} For the discrete universe $\mathcal{S}$, $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$.
462:\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
463:\end{definition}
465:\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
466:\emph{Candidate II\@.} For the universe $\mathcal{S}_{\mathsf{Seg}}$ of Segal types, $\Hom_{\mathcal{S}_{\mathsf{Seg}}}(A,B) \eqv \mathsf{SegFun}(A,B)$, where $\mathsf{SegFun}$ is the type of functors preserving Segal structure (= ordinary functions, since composition is uniquely determined).
468:\textbf{Status:} Open. Conjectured.
469:\end{definition}
471:\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
472:\emph{Candidate III\@.} For the universe $\mathcal{S}_{\mathsf{Rezk}}$ of Rezk types, $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B) \eqv \Fun(A,B)$.
474:\textbf{Status:} Open. The principal target.
475:\end{definition}
477:\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
478:\emph{Candidate IV\@.} For the entire universe $\U$, equipped with the directed structure inherited from extension types out of $\twoI$, $\Hom_{\U}(A,B) \eqv \Fun(A,B)$.
480:\textbf{Status:} Open. Likely requires a 2-level theory.
481:\end{definition}
483:\subsection{Layered programme}
485:\begin{conjecture}[Layered directed univalence]\label{conj:layered}
488:\mathcal{S}_{\disc} \subset \mathcal{S}_{\mathsf{Rezk}} \subset \mathcal{S}_{\mathsf{Seg}} \subset \U
491:\end{conjecture}
493:We articulate a layered \emph{programme} as follows. Let $L_n$ denote a universe at layer $n$. Then:
494:\begin{itemize}
495:\item $L_0 = \mathcal{S}_{\disc}$: classical directed univalence (Candidate I).
496:\item $L_1 = \mathcal{S}_{\mathsf{Seg}}$: Segal directed univalence (Candidate II); morphisms are Segal functors.
497:\item $L_2 = \mathcal{S}_{\mathsf{Rezk}}$: Rezk directed univalence (Candidate III); morphisms are functors of $(\infty,1)$-categories.
499:\end{itemize}
501:\subsection{Obstructions to Candidates II--IV}
503:\begin{proposition}[Obstruction: opposite-type coherence]\label{prop:opp-coh}
504:Candidates II--IV require a coherent theory of opposite types $A^{\op}$. The opposite type construction in $\STT$ is well-defined, but its compatibility with the universe structure is subtle: $(-)^{\op}$ is a non-trivial involution on $\U$ that interacts non-trivially with $\Hom$.
505:\end{proposition}
507:\begin{proposition}[Obstruction: modal dependence]\label{prop:modal-dep}
509:\end{proposition}
511:\begin{proposition}[Obstruction: large vs.\ small]\label{prop:large}
513:\end{proposition}
515:\subsection{Sketch of a proof attempt for Candidate III}
519:\begin{enumerate}
520:\item Define the universe $\mathcal{S}_{\mathsf{Rezk}}$ as the sub-type of $\U$ on Rezk types: $\mathcal{S}_{\mathsf{Rezk}} := \sum_{A : \U} \isRezk(A)$.
521:\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is Segal in $\TTT$. This is plausibly an extension of Theorem~\ref{thm:s-segal} but requires that $\isRezk$ commute with extension types out of $\twoI$, which is non-trivial.
522:\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is in fact Rezk (so that ``equivalences in $\mathcal{S}_{\mathsf{Rezk}}$ are identities''). Equivalences in this context are functors that are essentially surjective and fully faithful in the synthetic sense.
523:\item Construct $\funtohom : \Fun(A,B) \to \Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B)$. Functions between Rezk types are functors of $(\infty,1)$-categories.
524:\item Construct an inverse using a twisted modality $\Disc^{\mathsf{Rezk}}$ that picks out Rezk types as a localisation of $\STT$.
525:\end{enumerate}
527:Step 5 is the principal technical gap. The modality $\Disc^{\mathsf{Rezk}}$ does not exist in published $\TTT$.
529:\begin{question}\label{q:rezk-modality}
530:Does there exist an extension of $\TTT$ with a modality $\Disc^{\mathsf{Rezk}}$ such that:
531:\begin{enumerate}
533:\item The triangle $\flat \dashv \Disc^{\mathsf{Rezk}} \dashv \sharp_{\mathsf{Rezk}}$ extends the discrete cohesion.
535:\end{enumerate}
536:\end{question}
538:\subsection{Cubical comparison}
540:\begin{remark}[Cubical analogue]\label{rem:cubical}
541:Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments~\cite{Cisinski}; the rzk proof assistant aims at a computational interpretation~\cite{rzk}.
542:\end{remark}
544:\subsection{Summary table}
546:\begin{center}
547:\begin{tabular}{lll}
549:\textbf{Universe} & \textbf{Variant} & \textbf{Status} \\
552:$\mathcal{S}_{\disc}$ & directed, discrete & GWB 2024 (Theorem~\ref{thm:dua-s}) \\
553:$\mathcal{S}_{\mathsf{Seg}}$ & directed, Segal & Open (Cand.\ II) \\
554:$\mathcal{S}_{\mathsf{Rezk}}$ & directed, Rezk & Open (Cand.\ III, principal) \\
555:$\U_{\mathsf{dir}}$ & directed, all types & Open (Cand.\ IV, requires 2-level) \\
557:\end{tabular}
558:\end{center}
560:\section{\texorpdfstring{Connections to $(\infty,1)$-Natural Number Objects and HITs}{Connections to (infinity,1)-Natural Number Objects and HITs}}\label{sec:hit}
562:\subsection{Natural number objects in directed type theory}
564:In ordinary HoTT, the natural numbers $\N$ are characterised by an initiality universal property: $(\N, 0, \mathsf{succ})$ is initial in the type of pointed endo-types. This characterisation generalises directly to the discrete sub-universe of $\TTT$: $\N$ is a type in $\mathcal{S}$ and is initial.
566:\begin{proposition}[NNO in discrete directed type theory]\label{prop:nno-disc}
567:In $\TTT$, the natural numbers $\N : \mathcal{S}$ are characterised up to equivalence by initiality:
569:\isContr\Big( \sum_{f : \N \to A} f(0) =_A a_0, \;\text{compatible with succ} \Big)
571:for any pointed endo-discrete-type $(A, a_0, s)$. Directed univalence (Theorem~\ref{thm:dua-s}) then identifies these initiality witnesses with directed morphisms in $\mathcal{S}$.
572:\end{proposition}
574:\subsection{Higher inductive types and directed univalence}
576:A higher inductive type (HIT) like $S^1$ has constructors and \emph{path constructors} producing identifications. In the directed setting one wants \emph{directed-path constructors}: a type with constructors and prescribed hom-types, defined synthetically.
578:\begin{definition}[Directed HIT]\label{def:dhit}
579:A \emph{directed higher inductive type} is a type generated by point constructors plus directed-edge constructors valued in $\Hom$-types.
580:\end{definition}
582:\begin{example}[Walking arrow]\label{ex:walking-arrow}
583:The simplest directed HIT is the \emph{walking arrow} $\twoI$ itself: two points $0, 1$ and a generator $\sigma : \Hom_{\twoI}(0,1)$.
584:\end{example}
586:\begin{example}[Walking commutative square]\label{ex:walking-square}
588:\end{example}
590:\subsection{Synthetic representation theory}
592:Directed univalence connects to representation theory through the slogan: \emph{representations are functors}. A representation of a group $G$ on a vector space is a functor $BG \to \mathsf{Vect}$, where $BG$ is the classifying type of $G$. In a hypothetical full directed type theory:
594:\begin{definition}[Synthetic representation]\label{def:rep}
595:A \emph{synthetic representation} of a Rezk-type group $G$ is a directed morphism $BG \to \mathsf{Vect}$ in $\mathcal{S}_{\mathsf{Rezk}}$. Here, as in classical higher category theory, the group $G$ is presented through its \emph{delooping} $BG$ --- the one-object Rezk-type whose endomorphism hom-type is $G$ itself; representations are then functors out of this delooping. Sub-representations are directed monomorphisms in this sense.
596:\end{definition}
598:\begin{remark}\label{rem:langlands-distant}
599:Eventually, automorphic representations (functors $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ for $\mathbb{A}$ adelic) would be morphisms in a directed universe. This is highly speculative and depends on Candidate III\@.
600:\end{remark}
602:\subsection{Comparison to formalisations: Coq-HoTT, Lean-mathlib, Cubical Agda, rzk}
604:\begin{itemize}
606:\item Cubical Agda makes symmetric univalence \emph{computational}.
607:\item The experimental proof assistant rzk~\cite{rzk} implements $\STT$ with topes and extension types; it does \emph{not} yet implement triangulated modalities or prove directed univalence.
608:\end{itemize}
610:\section{Discussion}\label{sec:discussion}
612:\subsection{Why is directed univalence so hard?}
616:\begin{enumerate}
617:\item \emph{Asymmetry of hom.} The hom-type $\Hom_A(a,b)$ is asymmetric in $(a,b)$, while the identity type $a =_A b$ is symmetric. Many path-induction-based arguments fail directly.
618:\item \emph{Modal dependence.} Even the discrete fragment requires modalities to mediate between symmetric and directed worlds. Non-discrete fragments will likely need richer modal apparatus.
619:\item \emph{Size issue.} The universe is a large object. A directed structure on it would package its $(\infty,1)$-categorical morphisms internally --- a strictly stronger demand than packaging $\infty$-groupoidal equivalences.
620:\end{enumerate}
622:\subsection{What would change if Candidate III were proven?}
624:\begin{enumerate}
625:\item Synthetic $(\infty,1)$-category theory in $\STT$/$\TTT$ would gain a \emph{universe-theoretic} foundation, not just a Yoneda-based one.
627:\item Adjunctions would internalise: an adjunction $F \dashv G$ would correspond to a single object in $\mathsf{Adj}(\mathcal{S}_{\mathsf{Rezk}})$, accessible through directed transport.
629:\end{enumerate}
631:\subsection{What would change if Candidate IV were proven?}
635:\begin{enumerate}
639:\end{enumerate}
641:\subsection{Limitations of this paper}
645:\section{Open Problems}\label{sec:open}
649:\begin{question}[Rezk directed univalence]\label{q:rezk}
650:Prove or disprove Candidate III: $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A, B) \eqv \Fun(A, B)$ for all Rezk types $A, B$.
651:\end{question}
653:\begin{question}[$(\infty,1)$-Cat as a primitive type]\label{q:icat}
654:Is there an extension of $\TTT$ with a primitive type $\mathsf{Cat}_{\infty,1}$ of $(\infty,1)$-categories, satisfying its own directed univalence?
655:\end{question}
657:\begin{question}[Internal language of cocartesian fibrations]\label{q:cocart}
658:Develop the internal language of cocartesian fibrations in $\TTT$, in the spirit of Cisinski--Nguyen~\cite{CisinskiNguyen}.
659:\end{question}
661:\begin{question}[Directed Langlands]\label{q:langlands}
662:Reformulate automorphic representations as directed morphisms $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ in a fully directed type theory.
663:\end{question}
665:\section{Conclusion}\label{sec:conclusion}
669:The complete principle remains a research target. The path forward is layered: extend the modality structure to capture Segal-ness and Rezk-ness, prove successively stronger directed univalence statements at each layer, and ultimately reach a 2-level account where the universe carries both directed and undirected structure coherently. The reward, if it can be obtained, is a synthetic foundation for $(\infty,1)$-category theory in which functors are directed morphisms in the universe --- an \emph{ipso facto} foundation for synthetic representation theory and beyond.
675:\section*{Acknowledgments}
679:\begin{thebibliography}{99}
681:\bibitem{HoTTBook} The Univalent Foundations Program. \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study, 2013.
683:\bibitem{Voevodsky} V.\ Voevodsky. \emph{The univalence axiom}. Talks and lecture notes, 2010--2014.
685:\bibitem{RiehlShulman} E.\ Riehl and M.\ Shulman. ``A type theory for synthetic $\infty$-categories.'' \emph{Higher Structures} 1(1):147--224, 2017. arXiv:1705.07442.
687:\bibitem{GWB2024} D.\ Gratzer, J.\ Weinberger, and U.\ Buchholtz. ``Directed univalence in simplicial homotopy type theory.'' arXiv:2407.09146, 2024.
689:\bibitem{Buchholtz} U.\ Buchholtz. \emph{Higher structures in homotopy type theory}. Habilitation, TU Darmstadt, 2019.
691:\bibitem{Riehl2025} E.\ Riehl. ``Synthetic perspectives on spaces and categories.'' Survey article, in preparation (2025); preprint announced on the author's webpage.
693:\bibitem{Cisinski} D.-C.\ Cisinski. \emph{Higher categories and homotopical algebra}. Cambridge Studies in Advanced Mathematics 180, 2019.
695:\bibitem{CisinskiNguyen} D.-C.\ Cisinski and H.-K.\ Nguyen. ``The universal cocartesian fibration.'' arXiv:2210.08945, 2022.
697:\bibitem{KavvosWeaver} G.\ A.\ Kavvos and M.\ Weaver. ``On directed type theory.'' Ongoing work, 2024--2025; cf.\ M.\ Weaver and D.\ Licata, ``A Constructive Model of Directed Univalence in Bicubical Sets,'' \emph{LICS 2020}.
699:\bibitem{Shulman2019} M.\ Shulman. ``All $(\infty,1)$-toposes have strict univalent universes.'' arXiv:1904.07004, 2019.
701:\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.
703:\bibitem{Lurie} J.\ Lurie. \emph{Higher Topos Theory}. Annals of Mathematics Studies 170, Princeton, 2009.
705:\bibitem{ACKS} D.\ Annenkov, P.\ Capriotti, N.\ Kraus, and C.\ Sattler. ``Two-level type theory and applications.'' \emph{Math.\ Struct.\ Comput.\ Sci.} 33(8), 2023.
707:\bibitem{Lumsdaine} P.\ Lumsdaine and M.\ Shulman. ``Semantics of higher inductive types.'' arXiv:1705.07088, 2017.
709:\bibitem{LicataShulman} D.\ R.\ Licata and M.\ Shulman. ``Calculating the fundamental group of the circle in homotopy type theory.'' \emph{LICS 2013}, pp.\ 223--232.
711:\bibitem{Joyal} A.\ Joyal. ``Quasi-categories and Kan complexes.'' \emph{J.\ Pure Appl.\ Algebra} 175(1):207--222, 2002.
713:\bibitem{RezkComplete} C.\ Rezk. ``A model for the homotopy theory of homotopy theory.'' \emph{Trans.\ AMS} 353(3):973--1007, 2001.
715:\bibitem{NorthDirected} P.\ R.\ North. ``Towards a directed homotopy type theory.'' \emph{ENTCS} 347, 2019.
717:\bibitem{Awodey} S.\ Awodey. ``Structuralism, invariance, and univalence.'' \emph{Phil.\ Math.} 22(1), 2014.
719:\end{thebibliography}
721:\end{document}

codex
I’ve got the preamble and reference/citation surface. Next I’m reading the full body in line-numbered chunks and checking whether local LaTeX lint/build tools are present; that will separate source-level issues from actual compiler diagnostics.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '220,460p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   220	\[
   221	f_*: \Hom_A(a,b) \;\longrightarrow\; \Hom_B(f(a),f(b)).
   222	\]
   223	\item[(D3)] \emph{Equivalences are identities.} For appropriately structured types, an invertible morphism in $\Hom_A(a,b)$ should yield an identity $a =_A b$.
   224	\item[(D4)] \emph{Synthetic $(\infty,1)$-category theory.} The Yoneda lemma, adjoint functors, Kan extensions, and limits/colimits should be expressible \emph{synthetically} on top of these primitives.
   225	\item[(D5)] \emph{Directed univalence.} The universe should reflect its own hom-structure: hom in the universe = function type.
   226	\end{enumerate}
   227	
   228	(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work~\cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
   229	
   230	\subsection{\texorpdfstring{$(\infty,1)$-categorical motivation}{(infinity,1)-categorical motivation}}
   231	
   232	There is a clean semantic picture explaining why directed univalence is hard. In HoTT, the universe $\U$ is interpreted as an object classifier in an $(\infty,1)$-topos: $\U$ classifies small bundles up to fibrewise equivalence. Univalence is the corresponding internal statement: equivalences of bundles are paths in $\U$.
   233	
   234	The directed analogue would have a universe $\mathcal{S}$ classifying bundles \emph{up to map}, not just equivalence. In an $(\infty,1)$-topos $\mathcal{X}$, the natural such classifier is the cocartesian fibration of the $(\infty,1)$-category $\mathcal{X}_{/-}$ over $\mathcal{X}$ itself. But this is no longer a single object: it is a structured presentable $(\infty,1)$-category. The naive analogue --- ``a small object in $\mathcal{X}$ that classifies maps'' --- requires \emph{at least} a handle on $\mathcal{X}$ as an $(\infty,1)$-category internal to $\mathcal{X}$, a strictly stronger demand than internal $\infty$-groupoids.
   235	
   236	This is the structural reason a complete directed univalence principle is hard: it forces the type theory to internalise its own large $(\infty,1)$-categorical structure, not merely its $\infty$-groupoidal one.
   237	
   238	\section{Riehl--Shulman Simplicial Type Theory}\label{sec:rs}
   239	
   240	\subsection{Topes, cubes, extension types}
   241	
   242	$\STT$ is a three-layer system: a homotopy type theory; a strict cube layer with the directed interval $\twoI = \{0 \le 1\}$; and a tope layer of decidable propositions over the cube. We sketch each layer.
   243	
   244	\begin{definition}[Cube]\label{def:cube}
   245	A \emph{cube} is built inductively from a primitive directed interval $\twoI$, the unit cube $\mathbf{1}$, and finite products. Cubes are denoted $I, J, K$.
   246	\end{definition}
   247	
   248	\begin{definition}[Tope]\label{def:tope}
   249	A \emph{tope} on a cube $I$ is a polynomial inequality in the coordinates of $I$, closed under $\top$, $\bot$, $\wedge$, $\vee$. Topes form a distributive lattice. The standard examples on $\twoI$ are $\{0\}$, $\{1\}$, $\{0 \le t\}$, $\{t \le 1\}$.
   250	\end{definition}
   251	
   252	\begin{definition}[Extension type]\label{def:exttype}
   253	Given a cube $I$, a tope $\Phi$ on $I$, a type family $A : I \to \U$, and a partial term $a : \prod_{t : \Phi} A(t)$ defined on $\Phi$, the \emph{extension type}
   254	\[
   255	\big\langle \prod_{t : I} A(t) \;\big|\; \Phi \mapsto a \big\rangle
   256	\]
   257	is the type of dependent functions $f : \prod_{t : I} A(t)$ such that for $t : \Phi$, $f(t) \equiv a(t)$ judgmentally.
   258	\end{definition}
   259	
   260	\begin{remark}
   261	Extension types provide a uniform mechanism for \emph{strict boundary conditions}: the value of $f$ on the tope $\Phi$ is fixed up to definitional equality. This is what lets STT speak about, e.g., morphisms with prescribed source and target.
   262	\end{remark}
   263	
   264	\subsection{Hom-types and Segal types}
   265	
   266	\begin{definition}[Hom-type]\label{def:hom}
   267	Let $A : \U$ and $a, b : A$. The \emph{hom-type} is the extension type
   268	\[
   269	\Hom_A(a,b) := \big\langle \prod_{t : \twoI} A \;\big|\; \{0\} \mapsto a, \{1\} \mapsto b \big\rangle.
   270	\]
   271	\end{definition}
   272	
   273	So a morphism from $a$ to $b$ is a function $\twoI \to A$ taking $0$ to $a$ and $1$ to $b$. The directed interval is \emph{ordered}, hence so is the hom-type.
   274	
   275	\begin{definition}[Segal predicate]\label{def:segal}
   276	A type $A$ is \emph{Segal}, written $\isSegal(A)$, if the canonical map
   277	\[
   278	\Hom_A(a,b) \times \Hom_A(b,c) \to \Big\langle \prod_{(t,s) : \seg^2_1} A \;\big|\; (a, \cdot, c) \Big\rangle
   279	\]
   280	into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.
   281	\end{definition}
   282	
   283	Segal types are the STT version of Segal complete spaces. Composition is then a definable operation:
   284	\[
   285	\circ : \Hom_A(b,c) \times \Hom_A(a,b) \to \Hom_A(a,c)
   286	\]
   287	when $\isSegal(A)$.
   288	
   289	\begin{definition}[Rezk predicate]\label{def:rezk}
   290	A Segal type $A$ is \emph{Rezk} if the canonical map
   291	\[
   292	(a =_A b) \to \mathsf{Iso}_A(a,b)
   293	\]
   294	is an equivalence, where $\mathsf{Iso}_A(a,b) \subset \Hom_A(a,b)$ is the sub-type of two-sidedly invertible morphisms. (This is internal univalence on $A$.)
   295	\end{definition}
   296	
   297	\begin{theorem}[Riehl--Shulman, semantic]\label{thm:rs-semantic}
   298	Rezk types in $\STT$ correspond, in the semantic interpretation in bisimplicial sets, to complete Segal spaces, and hence to $(\infty,1)$-categories.
   299	\end{theorem}
   300	
   301	\subsection{Discrete types}
   302	
   303	\begin{definition}[Discrete type]\label{def:discrete}
   304	A type $A$ is \emph{discrete}, written $\isDisc(A)$, if for every $a, b : A$ the canonical map
   305	\[
   306	(a =_A b) \to \Hom_A(a,b)
   307	\]
   308	is an equivalence; equivalently, every morphism in $A$ is invertible. Discrete types are the STT counterpart of $\infty$-groupoids.
   309	\end{definition}
   310	
   311	\begin{example}\label{ex:discrete-types}
   312	The natural numbers $\N$ are discrete in $\STT$ (they carry no non-trivial 1-cells). More generally, every type imported from a model of HoTT into $\STT$ via the discrete inclusion is discrete.
   313	\end{example}
   314	
   315	\subsection{Synthetic Yoneda lemma}
   316	
   317	A high point of~\cite{RiehlShulman} is a synthetic Yoneda lemma. We state it informally.
   318	
   319	\begin{theorem}[Synthetic Yoneda, RS Thm 9.1]\label{thm:yoneda}
   320	Let $A$ be a Segal type and $\mathcal{S}$ the universe of discrete types. Then for any covariant functor $F : A \to \mathcal{S}$ and any $a : A$, evaluation at $\id_a$ gives an equivalence
   321	\[
   322	\Big( \prod_{x : A} \Hom_A(a, x) \to F(x) \Big) \;\eqv\; F(a).
   323	\]
   324	\end{theorem}
   325	
   326	\begin{proof}[Proof sketch]
   327	Both sides are recovered from the dependent product structure on $A$ and the universal property of the representable $\Hom_A(a,-)$. Detailed proof: see \cite[\S 9]{RiehlShulman}.
   328	\end{proof}
   329	
   330	This is the engine that drives much of synthetic $(\infty,1)$-category theory in $\STT$.
   331	
   332	\section{Partial Directed Univalence (Riehl--Shulman 2017)}\label{sec:partial}
   333	
   334	\subsection{Covariant fibrations}
   335	
   336	\begin{definition}[Covariant fibration]\label{def:covariant}
   337	Let $A : \U$ be a Segal type. A type family $P : A \to \U$ is \emph{covariant} if for each $\alpha : \Hom_A(a,b)$ and each $u : P(a)$ there is a chosen lift $\alpha_*(u) : P(b)$, depending functorially on $\alpha$.
   338	\end{definition}
   339	
   340	In semantic terms, covariant families correspond to \emph{left fibrations}: functors $A \to \mathcal{S}$ classified by a particular kind of straightening.
   341	
   342	\begin{theorem}[Straightening, partial directed univalence for covariant families]\label{thm:straightening}
   343	For a Rezk type $A$, the following types are equivalent:
   344	\begin{enumerate}
   345	\item Covariant type families $P : A \to \U$ valued in discrete types.
   346	\item Functors $A \to \mathcal{S}_{\disc}$, where $\mathcal{S}_{\disc}$ is the universe of discrete types.
   347	\end{enumerate}
   348	\end{theorem}
   349	
   350	This is \emph{directed univalence for covariant fibrations valued in discrete types}: the universe $\mathcal{S}_{\disc}$ classifies covariant families, in exact analogy with $\U$ classifying type families up to equivalence.
   351	
   352	\subsection{What is partial about it}
   353	
   354	Theorem~\ref{thm:straightening} stops short of asserting
   355	\[
   356	\Hom_{\mathcal{S}}(A, B) \;\eqv\; \Fun(A, B)
   357	\]
   358	for the universe $\mathcal{S}$ \emph{itself} treated as a Segal type. Two reasons.
   359	
   360	\paragraph{(1) The universe is not internally Segal.}
   361	In $\STT$ as set up by Riehl--Shulman, the discrete universe $\mathcal{S}_{\disc}$ is given as a sub-type of $\U$, but its hom-type $\Hom_{\mathcal{S}_{\disc}}(A,B)$ is not directly described. The straightening theorem describes covariant \emph{maps into} $\mathcal{S}_{\disc}$, not the hom-type \emph{within} $\mathcal{S}_{\disc}$.
   362	
   363	\paragraph{(2) Modal pieces are missing.}
   364	To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from~\cite{RiehlShulman}.
   365	
   366	\subsection{Limitations made formal}
   367	
   368	\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
   369	In Riehl--Shulman simplicial type theory:
   370	\begin{enumerate}
   371	\item There is a directed straightening for covariant families into the discrete universe (Theorem~\ref{thm:straightening}).
   372	\item There is \emph{no internally definable} hom-type for the discrete universe $\mathcal{S}_{\disc}$ qua object of the universe $\U$ that satisfies $\Hom_{\mathcal{S}_{\disc}}(A,B) \eqv \Fun(A,B)$.
   373	\item There is no Segal-completion theorem for $\mathcal{S}_{\disc}$ producing a Segal-type version with the desired hom.
   374	\end{enumerate}
   375	\end{proposition}
   376	
   377	These limitations motivate the modal extension we now describe.
   378	
   379	\section[Triangulated Type Theory]{Triangulated Type Theory \\ (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
   380	
   381	\subsection{Modal layer}
   382	
   383	The crucial new ingredient in~\cite{GWB2024} is a system of modalities. We describe four.
   384	
   385	\begin{definition}[The four modalities]\label{def:modalities}
   386	$\TTT$ extends $\STT$ with modalities:
   387	\begin{enumerate}
   388	\item $\flat$ ``crisp'' / ``discrete-discrete'': forces a type to be discrete and only depends on globally defined data.
   389	\item $\sharp$ ``codiscrete'': right adjoint to $\flat$.
   390	\item $\Disc$: the modality whose modal types are the discrete types.
   391	\item $(-)^{\op}$: the opposite modality reversing direction.
   392	\end{enumerate}
   393	With $\flat \dashv \Disc \dashv \sharp$ a triangle of cohesion-like modalities, and $(-)^{\op}$ as duality.
   394	\end{definition}
   395	
   396	\begin{remark}
   397	The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT\@.
   398	\end{remark}
   399	
   400	\subsection{\texorpdfstring{The discrete universe $\mathcal{S}$}{The discrete universe S}}
   401	
   402	\begin{definition}[Discrete universe]\label{def:disc-universe}
   403	The \emph{discrete universe} $\mathcal{S}$ in $\TTT$ is the type of $\Disc$-modal types: $\mathcal{S} := \sum_{A : \U} \isDisc(A)$, with universe structure inherited from $\U$.
   404	\end{definition}
   405	
   406	\begin{theorem}[GWB, $\mathcal{S}$ is Segal]\label{thm:s-segal}
   407	The discrete universe $\mathcal{S}$ is a Segal type in $\TTT$. The hom-type $\Hom_{\mathcal{S}}(A, B)$ is well-defined as an extension type out of $\twoI$ valued in $\mathcal{S}$.
   408	\end{theorem}
   409	
   410	\begin{proof}[Proof outline]
   411	The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.
   412	\end{proof}
   413	
   414	\subsection{The directed univalence theorem}
   415	
   416	\begin{theorem}[Directed univalence in $\TTT$, GWB Thm 8.1]\label{thm:dua-s}
   417	For all $A, B : \mathcal{S}$, the canonical map
   418	\[
   419	\funtohom_{A,B} : \Fun(A,B) \;\longrightarrow\; \Hom_{\mathcal{S}}(A,B)
   420	\]
   421	is an equivalence. Concretely, every directed morphism in the universe of discrete types is uniquely (up to coherent homotopy) the type-theoretic action of a function.
   422	\end{theorem}
   423	
   424	\begin{proof}[Proof sketch]
   425	The proof has three parts.
   426	\begin{enumerate}
   427	\item \emph{Define $\funtohom$.} Given $f : A \to B$, define the family $A_f : \twoI \to \mathcal{S}$ by $A_f(0) := A$, $A_f(1) := B$, $A_f(t) := \mathsf{cofib}(f, t)$, where $\mathsf{cofib}(f, t)$ denotes a standard cofibrant path-object construction interpolating between $A$ and $B$ along $f$ (concretely, the homotopy pushout of $f$ with the trivial map at parameter $t$). The $\Disc$ modality ensures $A_f(t)$ stays discrete for $t \in (0,1)$.
   428	\item \emph{Inverse construction.} Given $\alpha : \Hom_{\mathcal{S}}(A,B)$, extract the function $\alpha^\flat : A \to B$ via the $\flat$ modality applied at the endpoint $\{1\}$.
   429	\item \emph{Coherence.} Composition $\funtohom \circ \flat = \id$ and $\flat \circ \funtohom = \id$ both follow from the universal property of extension types and the Beck--Chevalley conditions for $\flat \dashv \Disc \dashv \sharp$.
   430	\end{enumerate}
   431	See \cite[\S 8]{GWB2024} for full details.
   432	\end{proof}
   433	
   434	\begin{corollary}[Yoneda for $\mathcal{S}$]\label{cor:yoneda-s}
   435	Every covariant functor $F : \mathcal{S} \to \mathcal{S}$ is naturally equivalent to $\Hom_{\mathcal{S}}(F^\flat(\mathbf{1}), -)$ for a uniquely determined object $F^\flat(\mathbf{1}) : \mathcal{S}$.
   436	\end{corollary}
   437	
   438	\begin{remark}
   439	Theorem~\ref{thm:dua-s} is a complete directed univalence statement for the discrete fragment. It is ``triangulated'' in the sense that its formulation requires the triangle $\flat \dashv \Disc \dashv \sharp$.
   440	\end{remark}
   441	
   442	\subsection{What is and is not proved}
   443	
   444	\begin{proposition}[Scope of GWB]\label{prop:scope-gwb}
   445	Theorem~\ref{thm:dua-s} establishes directed univalence for the discrete universe $\mathcal{S}$. It does \emph{not} establish:
   446	\begin{enumerate}
   447	\item Directed univalence for any non-discrete sub-universe of $\U$.
   448	\item A directed analogue of Voevodsky univalence for the universe $\U$ itself.
   449	\item A universe of $(\infty,1)$-categories (Rezk types) with hom-types behaving as functors.
   450	\end{enumerate}
   451	\end{proposition}
   452	
   453	\section{Toward a Complete Principle}\label{sec:complete}
   454	
   455	We now formulate four increasingly strong candidate principles and analyse what each proof would require.
   456	
   457	\subsection{Four candidates}
   458	
   459	\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
   460	\emph{Candidate I\@.} For the discrete universe $\mathcal{S}$, $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/directed-univalence.tex | sed -n '460,721p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   460	\emph{Candidate I\@.} For the discrete universe $\mathcal{S}$, $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$.
   461	
   462	\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
   463	\end{definition}
   464	
   465	\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
   466	\emph{Candidate II\@.} For the universe $\mathcal{S}_{\mathsf{Seg}}$ of Segal types, $\Hom_{\mathcal{S}_{\mathsf{Seg}}}(A,B) \eqv \mathsf{SegFun}(A,B)$, where $\mathsf{SegFun}$ is the type of functors preserving Segal structure (= ordinary functions, since composition is uniquely determined).
   467	
   468	\textbf{Status:} Open. Conjectured.
   469	\end{definition}
   470	
   471	\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
   472	\emph{Candidate III\@.} For the universe $\mathcal{S}_{\mathsf{Rezk}}$ of Rezk types, $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B) \eqv \Fun(A,B)$.
   473	
   474	\textbf{Status:} Open. The principal target.
   475	\end{definition}
   476	
   477	\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
   478	\emph{Candidate IV\@.} For the entire universe $\U$, equipped with the directed structure inherited from extension types out of $\twoI$, $\Hom_{\U}(A,B) \eqv \Fun(A,B)$.
   479	
   480	\textbf{Status:} Open. Likely requires a 2-level theory.
   481	\end{definition}
   482	
   483	\subsection{Layered programme}
   484	
   485	\begin{conjecture}[Layered directed univalence]\label{conj:layered}
   486	There is a tower of universes
   487	\[
   488	\mathcal{S}_{\disc} \subset \mathcal{S}_{\mathsf{Rezk}} \subset \mathcal{S}_{\mathsf{Seg}} \subset \U
   489	\]
   490	such that each level satisfies a directed univalence principle of its own kind, with the inclusions being conservative.
   491	\end{conjecture}
   492	
   493	We articulate a layered \emph{programme} as follows. Let $L_n$ denote a universe at layer $n$. Then:
   494	\begin{itemize}
   495	\item $L_0 = \mathcal{S}_{\disc}$: classical directed univalence (Candidate I).
   496	\item $L_1 = \mathcal{S}_{\mathsf{Seg}}$: Segal directed univalence (Candidate II); morphisms are Segal functors.
   497	\item $L_2 = \mathcal{S}_{\mathsf{Rezk}}$: Rezk directed univalence (Candidate III); morphisms are functors of $(\infty,1)$-categories.
   498	\item $L_3 = \U$: universal directed univalence (Candidate IV); requires reflective sub-universe technology.
   499	\end{itemize}
   500	
   501	\subsection{Obstructions to Candidates II--IV}
   502	
   503	\begin{proposition}[Obstruction: opposite-type coherence]\label{prop:opp-coh}
   504	Candidates II--IV require a coherent theory of opposite types $A^{\op}$. The opposite type construction in $\STT$ is well-defined, but its compatibility with the universe structure is subtle: $(-)^{\op}$ is a non-trivial involution on $\U$ that interacts non-trivially with $\Hom$.
   505	\end{proposition}
   506	
   507	\begin{proposition}[Obstruction: modal dependence]\label{prop:modal-dep}
   508	Candidates II--IV likely require a modal layer richer than $\flat \dashv \Disc \dashv \sharp$. In particular, the modality picking out Rezk types is not in general a left or right adjoint to either $\flat$ or $\Disc$, so cannot be expressed in cohesion-like form.
   509	\end{proposition}
   510	
   511	\begin{proposition}[Obstruction: large vs.\ small]\label{prop:large}
   512	Candidate IV in its naive form is inconsistent: $\U$ cannot internalise its own ``large'' $(\infty,1)$-categorical structure. A 2-level approach (\`a la Annenkov--Capriotti--Kraus--Sattler) appears necessary, with a strict inner universe and a homotopical outer one.
   513	\end{proposition}
   514	
   515	\subsection{Sketch of a proof attempt for Candidate III}
   516	
   517	We sketch what a proof of Candidate III would look like, identifying the gaps.
   518	
   519	\begin{enumerate}
   520	\item Define the universe $\mathcal{S}_{\mathsf{Rezk}}$ as the sub-type of $\U$ on Rezk types: $\mathcal{S}_{\mathsf{Rezk}} := \sum_{A : \U} \isRezk(A)$.
   521	\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is Segal in $\TTT$. This is plausibly an extension of Theorem~\ref{thm:s-segal} but requires that $\isRezk$ commute with extension types out of $\twoI$, which is non-trivial.
   522	\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is in fact Rezk (so that ``equivalences in $\mathcal{S}_{\mathsf{Rezk}}$ are identities''). Equivalences in this context are functors that are essentially surjective and fully faithful in the synthetic sense.
   523	\item Construct $\funtohom : \Fun(A,B) \to \Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A,B)$. Functions between Rezk types are functors of $(\infty,1)$-categories.
   524	\item Construct an inverse using a twisted modality $\Disc^{\mathsf{Rezk}}$ that picks out Rezk types as a localisation of $\STT$.
   525	\end{enumerate}
   526	
   527	Step 5 is the principal technical gap. The modality $\Disc^{\mathsf{Rezk}}$ does not exist in published $\TTT$.
   528	
   529	\begin{question}\label{q:rezk-modality}
   530	Does there exist an extension of $\TTT$ with a modality $\Disc^{\mathsf{Rezk}}$ such that:
   531	\begin{enumerate}
   532	\item Modal types are exactly Rezk types.
   533	\item The triangle $\flat \dashv \Disc^{\mathsf{Rezk}} \dashv \sharp_{\mathsf{Rezk}}$ extends the discrete cohesion.
   534	\item $\funtohom$ is an equivalence?
   535	\end{enumerate}
   536	\end{question}
   537	
   538	\subsection{Cubical comparison}
   539	
   540	\begin{remark}[Cubical analogue]\label{rem:cubical}
   541	Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments~\cite{Cisinski}; the rzk proof assistant aims at a computational interpretation~\cite{rzk}.
   542	\end{remark}
   543	
   544	\subsection{Summary table}
   545	
   546	\begin{center}
   547	\begin{tabular}{lll}
   548	\toprule
   549	\textbf{Universe} & \textbf{Variant} & \textbf{Status} \\
   550	\midrule
   551	$\U$ & symmetric & Voevodsky univalence (theorem in cubical) \\
   552	$\mathcal{S}_{\disc}$ & directed, discrete & GWB 2024 (Theorem~\ref{thm:dua-s}) \\
   553	$\mathcal{S}_{\mathsf{Seg}}$ & directed, Segal & Open (Cand.\ II) \\
   554	$\mathcal{S}_{\mathsf{Rezk}}$ & directed, Rezk & Open (Cand.\ III, principal) \\
   555	$\U_{\mathsf{dir}}$ & directed, all types & Open (Cand.\ IV, requires 2-level) \\
   556	\bottomrule
   557	\end{tabular}
   558	\end{center}
   559	
   560	\section{\texorpdfstring{Connections to $(\infty,1)$-Natural Number Objects and HITs}{Connections to (infinity,1)-Natural Number Objects and HITs}}\label{sec:hit}
   561	
   562	\subsection{Natural number objects in directed type theory}
   563	
   564	In ordinary HoTT, the natural numbers $\N$ are characterised by an initiality universal property: $(\N, 0, \mathsf{succ})$ is initial in the type of pointed endo-types. This characterisation generalises directly to the discrete sub-universe of $\TTT$: $\N$ is a type in $\mathcal{S}$ and is initial.
   565	
   566	\begin{proposition}[NNO in discrete directed type theory]\label{prop:nno-disc}
   567	In $\TTT$, the natural numbers $\N : \mathcal{S}$ are characterised up to equivalence by initiality:
   568	\[
   569	\isContr\Big( \sum_{f : \N \to A} f(0) =_A a_0, \;\text{compatible with succ} \Big)
   570	\]
   571	for any pointed endo-discrete-type $(A, a_0, s)$. Directed univalence (Theorem~\ref{thm:dua-s}) then identifies these initiality witnesses with directed morphisms in $\mathcal{S}$.
   572	\end{proposition}
   573	
   574	\subsection{Higher inductive types and directed univalence}
   575	
   576	A higher inductive type (HIT) like $S^1$ has constructors and \emph{path constructors} producing identifications. In the directed setting one wants \emph{directed-path constructors}: a type with constructors and prescribed hom-types, defined synthetically.
   577	
   578	\begin{definition}[Directed HIT]\label{def:dhit}
   579	A \emph{directed higher inductive type} is a type generated by point constructors plus directed-edge constructors valued in $\Hom$-types.
   580	\end{definition}
   581	
   582	\begin{example}[Walking arrow]\label{ex:walking-arrow}
   583	The simplest directed HIT is the \emph{walking arrow} $\twoI$ itself: two points $0, 1$ and a generator $\sigma : \Hom_{\twoI}(0,1)$.
   584	\end{example}
   585	
   586	\begin{example}[Walking commutative square]\label{ex:walking-square}
   587	Four points $00, 01, 10, 11$, four directed edges, and a 2-cell witnessing commutativity. Models the $\Delta^1 \times \Delta^1$ shape.
   588	\end{example}
   589	
   590	\subsection{Synthetic representation theory}
   591	
   592	Directed univalence connects to representation theory through the slogan: \emph{representations are functors}. A representation of a group $G$ on a vector space is a functor $BG \to \mathsf{Vect}$, where $BG$ is the classifying type of $G$. In a hypothetical full directed type theory:
   593	
   594	\begin{definition}[Synthetic representation]\label{def:rep}
   595	A \emph{synthetic representation} of a Rezk-type group $G$ is a directed morphism $BG \to \mathsf{Vect}$ in $\mathcal{S}_{\mathsf{Rezk}}$. Here, as in classical higher category theory, the group $G$ is presented through its \emph{delooping} $BG$ --- the one-object Rezk-type whose endomorphism hom-type is $G$ itself; representations are then functors out of this delooping. Sub-representations are directed monomorphisms in this sense.
   596	\end{definition}
   597	
   598	\begin{remark}\label{rem:langlands-distant}
   599	Eventually, automorphic representations (functors $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ for $\mathbb{A}$ adelic) would be morphisms in a directed universe. This is highly speculative and depends on Candidate III\@.
   600	\end{remark}
   601	
   602	\subsection{Comparison to formalisations: Coq-HoTT, Lean-mathlib, Cubical Agda, rzk}
   603	
   604	\begin{itemize}
   605	\item Coq-HoTT and Lean-mathlib formalise symmetric univalence as a postulate.
   606	\item Cubical Agda makes symmetric univalence \emph{computational}.
   607	\item The experimental proof assistant rzk~\cite{rzk} implements $\STT$ with topes and extension types; it does \emph{not} yet implement triangulated modalities or prove directed univalence.
   608	\end{itemize}
   609	
   610	\section{Discussion}\label{sec:discussion}
   611	
   612	\subsection{Why is directed univalence so hard?}
   613	
   614	We can summarise the difficulty in three points.
   615	
   616	\begin{enumerate}
   617	\item \emph{Asymmetry of hom.} The hom-type $\Hom_A(a,b)$ is asymmetric in $(a,b)$, while the identity type $a =_A b$ is symmetric. Many path-induction-based arguments fail directly.
   618	\item \emph{Modal dependence.} Even the discrete fragment requires modalities to mediate between symmetric and directed worlds. Non-discrete fragments will likely need richer modal apparatus.
   619	\item \emph{Size issue.} The universe is a large object. A directed structure on it would package its $(\infty,1)$-categorical morphisms internally --- a strictly stronger demand than packaging $\infty$-groupoidal equivalences.
   620	\end{enumerate}
   621	
   622	\subsection{What would change if Candidate III were proven?}
   623	
   624	\begin{enumerate}
   625	\item Synthetic $(\infty,1)$-category theory in $\STT$/$\TTT$ would gain a \emph{universe-theoretic} foundation, not just a Yoneda-based one.
   626	\item Functors $A \to B$ between Rezk types would automatically be morphisms in a Rezk universe, enabling direct manipulation of categories of categories.
   627	\item Adjunctions would internalise: an adjunction $F \dashv G$ would correspond to a single object in $\mathsf{Adj}(\mathcal{S}_{\mathsf{Rezk}})$, accessible through directed transport.
   628	\item Formalisation in a directed proof assistant (extension of rzk) would become tractable.
   629	\end{enumerate}
   630	
   631	\subsection{What would change if Candidate IV were proven?}
   632	
   633	Candidate IV is qualitatively stronger. If proven (likely in a 2-level theory):
   634	
   635	\begin{enumerate}
   636	\item The universe itself would be both an $\infty$-groupoid and an $(\infty,1)$-category --- with the structures coherently related.
   637	\item Univalence and directed univalence would be compatible.
   638	\item Higher directed univalence (for $(\infty, n)$-categories) could be tackled inductively.
   639	\end{enumerate}
   640	
   641	\subsection{Limitations of this paper}
   642	
   643	This paper is expository and programmatic. We do not prove a new directed univalence theorem. The accompanying Haskell and Lean code formalise the discrete fragment of $\TTT$ in a toy model (Haskell) and as a postulate-based sketch (Lean), and exhibit the algebraic content. We hope these provide a productive substrate for future work.
   644	
   645	\section{Open Problems}\label{sec:open}
   646	
   647	We list four explicit open problems.
   648	
   649	\begin{question}[Rezk directed univalence]\label{q:rezk}
   650	Prove or disprove Candidate III: $\Hom_{\mathcal{S}_{\mathsf{Rezk}}}(A, B) \eqv \Fun(A, B)$ for all Rezk types $A, B$.
   651	\end{question}
   652	
   653	\begin{question}[$(\infty,1)$-Cat as a primitive type]\label{q:icat}
   654	Is there an extension of $\TTT$ with a primitive type $\mathsf{Cat}_{\infty,1}$ of $(\infty,1)$-categories, satisfying its own directed univalence?
   655	\end{question}
   656	
   657	\begin{question}[Internal language of cocartesian fibrations]\label{q:cocart}
   658	Develop the internal language of cocartesian fibrations in $\TTT$, in the spirit of Cisinski--Nguyen~\cite{CisinskiNguyen}.
   659	\end{question}
   660	
   661	\begin{question}[Directed Langlands]\label{q:langlands}
   662	Reformulate automorphic representations as directed morphisms $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ in a fully directed type theory.
   663	\end{question}
   664	
   665	\section{Conclusion}\label{sec:conclusion}
   666	
   667	Directed univalence has come a long way since Riehl--Shulman 2017. Their original framework gave us simplicial type theory with an internalised hom-type and a partial straightening theorem for covariant fibrations. Gratzer--Weinberger--Buchholtz 2024 introduced the modal apparatus needed to internalise directed structure on the universe, and proved the first complete directed univalence theorem for the universe of discrete types.
   668	
   669	The complete principle remains a research target. The path forward is layered: extend the modality structure to capture Segal-ness and Rezk-ness, prove successively stronger directed univalence statements at each layer, and ultimately reach a 2-level account where the universe carries both directed and undirected structure coherently. The reward, if it can be obtained, is a synthetic foundation for $(\infty,1)$-category theory in which functors are directed morphisms in the universe --- an \emph{ipso facto} foundation for synthetic representation theory and beyond.
   670	
   671	We close with a final observation. The classical univalence axiom internalised the slogan ``isomorphic objects are equal''. A complete directed univalence axiom would internalise the slogan ``functors are arrows in the universe of categories''. These are both deeply structuralist principles. The latter, if it can be proved, would unify the structuralist viewpoints of Lawvere, Awodey, and Voevodsky into a single foundational system in which the universe is itself a category.
   672	
   673	\bigskip
   674	
   675	\section*{Acknowledgments}
   676	
   677	This is a derivative exposition; original results are due to Emily Riehl, Michael Shulman, Daniel Gratzer, Jonathan Weinberger, and Ulrik Buchholtz. We thank these authors for the foundational work surveyed here.
   678	
   679	\begin{thebibliography}{99}
   680	
   681	\bibitem{HoTTBook} The Univalent Foundations Program. \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study, 2013.
   682	
   683	\bibitem{Voevodsky} V.\ Voevodsky. \emph{The univalence axiom}. Talks and lecture notes, 2010--2014.
   684	
   685	\bibitem{RiehlShulman} E.\ Riehl and M.\ Shulman. ``A type theory for synthetic $\infty$-categories.'' \emph{Higher Structures} 1(1):147--224, 2017. arXiv:1705.07442.
   686	
   687	\bibitem{GWB2024} D.\ Gratzer, J.\ Weinberger, and U.\ Buchholtz. ``Directed univalence in simplicial homotopy type theory.'' arXiv:2407.09146, 2024.
   688	
   689	\bibitem{Buchholtz} U.\ Buchholtz. \emph{Higher structures in homotopy type theory}. Habilitation, TU Darmstadt, 2019.
   690	
   691	\bibitem{Riehl2025} E.\ Riehl. ``Synthetic perspectives on spaces and categories.'' Survey article, in preparation (2025); preprint announced on the author's webpage.
   692	
   693	\bibitem{Cisinski} D.-C.\ Cisinski. \emph{Higher categories and homotopical algebra}. Cambridge Studies in Advanced Mathematics 180, 2019.
   694	
   695	\bibitem{CisinskiNguyen} D.-C.\ Cisinski and H.-K.\ Nguyen. ``The universal cocartesian fibration.'' arXiv:2210.08945, 2022.
   696	
   697	\bibitem{KavvosWeaver} G.\ A.\ Kavvos and M.\ Weaver. ``On directed type theory.'' Ongoing work, 2024--2025; cf.\ M.\ Weaver and D.\ Licata, ``A Constructive Model of Directed Univalence in Bicubical Sets,'' \emph{LICS 2020}.
   698	
   699	\bibitem{Shulman2019} M.\ Shulman. ``All $(\infty,1)$-toposes have strict univalent universes.'' arXiv:1904.07004, 2019.
   700	
   701	\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.
   702	
   703	\bibitem{Lurie} J.\ Lurie. \emph{Higher Topos Theory}. Annals of Mathematics Studies 170, Princeton, 2009.
   704	
   705	\bibitem{ACKS} D.\ Annenkov, P.\ Capriotti, N.\ Kraus, and C.\ Sattler. ``Two-level type theory and applications.'' \emph{Math.\ Struct.\ Comput.\ Sci.} 33(8), 2023.
   706	
   707	\bibitem{Lumsdaine} P.\ Lumsdaine and M.\ Shulman. ``Semantics of higher inductive types.'' arXiv:1705.07088, 2017.
   708	
   709	\bibitem{LicataShulman} D.\ R.\ Licata and M.\ Shulman. ``Calculating the fundamental group of the circle in homotopy type theory.'' \emph{LICS 2013}, pp.\ 223--232.
   710	
   711	\bibitem{Joyal} A.\ Joyal. ``Quasi-categories and Kan complexes.'' \emph{J.\ Pure Appl.\ Algebra} 175(1):207--222, 2002.
   712	
   713	\bibitem{RezkComplete} C.\ Rezk. ``A model for the homotopy theory of homotopy theory.'' \emph{Trans.\ AMS} 353(3):973--1007, 2001.
   714	
   715	\bibitem{NorthDirected} P.\ R.\ North. ``Towards a directed homotopy type theory.'' \emph{ENTCS} 347, 2019.
   716	
   717	\bibitem{Awodey} S.\ Awodey. ``Structuralism, invariance, and univalence.'' \emph{Phil.\ Math.} 22(1), 2014.
   718	
   719	\end{thebibliography}
   720	
   721	\end{document}

exec
/usr/local/bin/zsh -lc 'command -v latexmk; command -v pdflatex; command -v tectonic; command -v chktex; command -v lacheck' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/latexmk
/Library/TeX/texbin/pdflatex
/Library/TeX/texbin/chktex
/Library/TeX/texbin/lacheck

codex
The source scan shows balanced theorem/list/math environments at a glance. I’m going to try a build with outputs redirected to `/tmp` plus `chktex`/`lacheck`; if the sandbox blocks temp writes I’ll report that limitation explicitly.
exec
/usr/local/bin/zsh -lc 'chktex -q -n1 -n8 -n11 -n13 -n24 -n36 papers/latex/directed-univalence.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 2 in papers/latex/directed-univalence.tex line 280: Non-breaking space (`~') should have been used.
into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.  
                                                                                                                                                                                                                                                                                                                                                                 ^
Warning 2 in papers/latex/directed-univalence.tex line 327: Non-breaking space (`~') should have been used.
Both sides are recovered from the dependent product structure on $A$ and the universal property of the representable $\Hom_A(a,-)$. Detailed proof: see \cite[\S 9]{RiehlShulman}.  
                                                                                                                                                       ^
Warning 3 in papers/latex/directed-univalence.tex line 391: You should enclose the previous parenthesis with `{}'.
\item $(-)^{\op}$: the opposite modality reversing direction.  
         ^
Warning 3 in papers/latex/directed-univalence.tex line 393: You should enclose the previous parenthesis with `{}'.
With $\flat \dashv \Disc \dashv \sharp$ a triangle of cohesion-like modalities, and $(-)^{\op}$ as duality.  
                                                                                       ^
Warning 3 in papers/latex/directed-univalence.tex line 397: You should enclose the previous parenthesis with `{}'.
The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT\@.  
                                                                                                                                                                             ^
Warning 2 in papers/latex/directed-univalence.tex line 411: Non-breaking space (`~') should have been used.
The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.  
                                                                                                                                                                                                                                                                                                          ^
Warning 2 in papers/latex/directed-univalence.tex line 431: Non-breaking space (`~') should have been used.
See \cite[\S 8]{GWB2024} for full details.  
   ^
Warning 3 in papers/latex/directed-univalence.tex line 504: You should enclose the previous parenthesis with `{}'.
Candidates II--IV require a coherent theory of opposite types $A^{\op}$. The opposite type construction in $\STT$ is well-defined, but its compatibility with the universe structure is subtle: $(-)^{\op}$ is a non-trivial involution on $\U$ that interacts non-trivially with $\Hom$.  
                                                                                                                                                                                                   ^
Warning 12 in papers/latex/directed-univalence.tex line 681: Interword spacing (`\ ') should perhaps be used.
\bibitem{HoTTBook} The Univalent Foundations Program. \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}. Institute for Advanced Study, 2013.  
                                                     ^
Warning 12 in papers/latex/directed-univalence.tex line 683: Interword spacing (`\ ') should perhaps be used.
\bibitem{Voevodsky} V.\ Voevodsky. \emph{The univalence axiom}. Talks and lecture notes, 2010--2014.  
                                  ^
Warning 38 in papers/latex/directed-univalence.tex line 685: You should not use punctuation in front of quotes.
\bibitem{RiehlShulman} E.\ Riehl and M.\ Shulman. ``A type theory for synthetic $\infty$-categories.'' \emph{Higher Structures} 1(1):147--224, 2017. arXiv:1705.07442.  
                                                                                                   ^
Warning 12 in papers/latex/directed-univalence.tex line 685: Interword spacing (`\ ') should perhaps be used.
\bibitem{RiehlShulman} E.\ Riehl and M.\ Shulman. ``A type theory for synthetic $\infty$-categories.'' \emph{Higher Structures} 1(1):147--224, 2017. arXiv:1705.07442.  
                                                                                                                                                    ^
Warning 38 in papers/latex/directed-univalence.tex line 687: You should not use punctuation in front of quotes.
\bibitem{GWB2024} D.\ Gratzer, J.\ Weinberger, and U.\ Buchholtz. ``Directed univalence in simplicial homotopy type theory.'' arXiv:2407.09146, 2024.  
                                                                                                                          ^
Warning 12 in papers/latex/directed-univalence.tex line 689: Interword spacing (`\ ') should perhaps be used.
\bibitem{Buchholtz} U.\ Buchholtz. \emph{Higher structures in homotopy type theory}. Habilitation, TU Darmstadt, 2019.  
                                  ^
Warning 38 in papers/latex/directed-univalence.tex line 691: You should not use punctuation in front of quotes.
\bibitem{Riehl2025} E.\ Riehl. ``Synthetic perspectives on spaces and categories.'' Survey article, in preparation (2025); preprint announced on the author's webpage.  
                                                                                ^
Warning 12 in papers/latex/directed-univalence.tex line 693: Interword spacing (`\ ') should perhaps be used.
\bibitem{Cisinski} D.-C.\ Cisinski. \emph{Higher categories and homotopical algebra}. Cambridge Studies in Advanced Mathematics 180, 2019.  
                                   ^
Warning 38 in papers/latex/directed-univalence.tex line 695: You should not use punctuation in front of quotes.
\bibitem{CisinskiNguyen} D.-C.\ Cisinski and H.-K.\ Nguyen. ``The universal cocartesian fibration.'' arXiv:2210.08945, 2022.  
                                                                                                 ^
Warning 38 in papers/latex/directed-univalence.tex line 697: You should not use punctuation in front of quotes.
\bibitem{KavvosWeaver} G.\ A.\ Kavvos and M.\ Weaver. ``On directed type theory.'' Ongoing work, 2024--2025; cf.\ M.\ Weaver and D.\ Licata, ``A Constructive Model of Directed Univalence in Bicubical Sets,'' \emph{LICS 2020}.  
                                                                               ^
Warning 38 in papers/latex/directed-univalence.tex line 697: You should not use punctuation in front of quotes.
\bibitem{KavvosWeaver} G.\ A.\ Kavvos and M.\ Weaver. ``On directed type theory.'' Ongoing work, 2024--2025; cf.\ M.\ Weaver and D.\ Licata, ``A Constructive Model of Directed Univalence in Bicubical Sets,'' \emph{LICS 2020}.  
                                                                                                                                                                                                            ^
Warning 38 in papers/latex/directed-univalence.tex line 699: You should not use punctuation in front of quotes.
\bibitem{Shulman2019} M.\ Shulman. ``All $(\infty,1)$-toposes have strict univalent universes.'' arXiv:1904.07004, 2019.  
                                                                                             ^
Warning 12 in papers/latex/directed-univalence.tex line 701: Interword spacing (`\ ') should perhaps be used.
\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.  
                                ^
Warning 12 in papers/latex/directed-univalence.tex line 701: Interword spacing (`\ ') should perhaps be used.
\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.  
                                                                                                                    ^
Warning 12 in papers/latex/directed-univalence.tex line 703: Interword spacing (`\ ') should perhaps be used.
\bibitem{Lurie} J.\ Lurie. \emph{Higher Topos Theory}. Annals of Mathematics Studies 170, Princeton, 2009.  
                          ^
Warning 38 in papers/latex/directed-univalence.tex line 705: You should not use punctuation in front of quotes.
\bibitem{ACKS} D.\ Annenkov, P.\ Capriotti, N.\ Kraus, and C.\ Sattler. ``Two-level type theory and applications.'' \emph{Math.\ Struct.\ Comput.\ Sci.} 33(8), 2023.  
                                                                                                                ^
Warning 38 in papers/latex/directed-univalence.tex line 707: You should not use punctuation in front of quotes.
\bibitem{Lumsdaine} P.\ Lumsdaine and M.\ Shulman. ``Semantics of higher inductive types.'' arXiv:1705.07088, 2017.  
                                                                                        ^
Warning 38 in papers/latex/directed-univalence.tex line 709: You should not use punctuation in front of quotes.
\bibitem{LicataShulman} D.\ R.\ Licata and M.\ Shulman. ``Calculating the fundamental group of the circle in homotopy type theory.'' \emph{LICS 2013}, pp.\ 223--232.  
                                                                                                                                 ^
Warning 38 in papers/latex/directed-univalence.tex line 711: You should not use punctuation in front of quotes.
\bibitem{Joyal} A.\ Joyal. ``Quasi-categories and Kan complexes.'' \emph{J.\ Pure Appl.\ Algebra} 175(1):207--222, 2002.  
                                                               ^
Warning 38 in papers/latex/directed-univalence.tex line 713: You should not use punctuation in front of quotes.
\bibitem{RezkComplete} C.\ Rezk. ``A model for the homotopy theory of homotopy theory.'' \emph{Trans.\ AMS} 353(3):973--1007, 2001.  
                                                                                     ^
Warning 38 in papers/latex/directed-univalence.tex line 715: You should not use punctuation in front of quotes.
\bibitem{NorthDirected} P.\ R.\ North. ``Towards a directed homotopy type theory.'' \emph{ENTCS} 347, 2019.  
                                                                                ^
Warning 38 in papers/latex/directed-univalence.tex line 717: You should not use punctuation in front of quotes.
\bibitem{Awodey} S.\ Awodey. ``Structuralism, invariance, and univalence.'' \emph{Phil.\ Math.} 22(1), 2014.  
                                                                        ^

exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/directed-univalence.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/directed-univalence.tex", line 35: possible unwanted space at "{"

codex
The sandbox blocks all build output creation, including `/tmp`, so I can’t produce a real `.log` for overfull/underfull boxes in this turn. I can still verify package availability, label/citation consistency, and lint warnings directly from the source.
exec
/usr/local/bin/zsh -lc "rg -o '\\\\label\\{["'^}]+'"\\}' papers/latex/directed-univalence.tex | sort | uniq -c" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   1 \label{conj:layered}
   1 \label{cor:yoneda-s}
   1 \label{def:cand-iii}
   1 \label{def:cand-ii}
   1 \label{def:cand-iv}
   1 \label{def:cand-i}
   1 \label{def:covariant}
   1 \label{def:cube}
   1 \label{def:dhit}
   1 \label{def:disc-universe}
   1 \label{def:discrete}
   1 \label{def:equiv}
   1 \label{def:exttype}
   1 \label{def:hom}
   1 \label{def:idtoeqv}
   1 \label{def:modalities}
   1 \label{def:rep}
   1 \label{def:rezk}
   1 \label{def:segal}
   1 \label{def:tope}
   1 \label{ex:discrete-types}
   1 \label{ex:walking-arrow}
   1 \label{ex:walking-square}
   1 \label{prop:large}
   1 \label{prop:limitations}
   1 \label{prop:modal-dep}
   1 \label{prop:nno-disc}
   1 \label{prop:opp-coh}
   1 \label{prop:scope-gwb}
   1 \label{q:cocart}
   1 \label{q:icat}
   1 \label{q:langlands}
   1 \label{q:rezk-modality}
   1 \label{q:rezk}
   1 \label{rem:cubical}
   1 \label{rem:langlands-distant}
   1 \label{sec:background}
   1 \label{sec:complete}
   1 \label{sec:conclusion}
   1 \label{sec:discussion}
   1 \label{sec:gwb}
   1 \label{sec:hit}
   1 \label{sec:intro}
   1 \label{sec:open}
   1 \label{sec:partial}
   1 \label{sec:rs}
   1 \label{thm:dua-s}
   1 \label{thm:rs-semantic}
   1 \label{thm:s-segal}
   1 \label{thm:straightening}
   1 \label{thm:univalence}
   1 \label{thm:yoneda}

exec
/usr/local/bin/zsh -lc "rg -o '\\\\(?:ref|eqref|autoref|cref|Cref)\\{["'^}]+'"\\}' papers/latex/directed-univalence.tex | sort | uniq -c" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   1 \ref{sec:complete}
   1 \ref{sec:gwb}
   1 \ref{sec:hit}
   1 \ref{sec:open}
   1 \ref{sec:partial}
   1 \ref{sec:rs}
   5 \ref{thm:dua-s}
   1 \ref{thm:s-segal}
   2 \ref{thm:straightening}

exec
/usr/local/bin/zsh -lc "rg -o '\\\\cite(?:\\[["'^]]*'"\\])?\\{["'^}]+'"\\}|\\\\bibitem\\{["'^}]+'"\\}' papers/latex/directed-univalence.tex | sort | uniq -c" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   1 \bibitem{ACKS}
   1 \bibitem{Awodey}
   1 \bibitem{Buchholtz}
   1 \bibitem{CisinskiNguyen}
   1 \bibitem{Cisinski}
   1 \bibitem{GWB2024}
   1 \bibitem{HoTTBook}
   1 \bibitem{Joyal}
   1 \bibitem{KavvosWeaver}
   1 \bibitem{LicataShulman}
   1 \bibitem{Lumsdaine}
   1 \bibitem{Lurie}
   1 \bibitem{NorthDirected}
   1 \bibitem{RezkComplete}
   1 \bibitem{Riehl2025}
   1 \bibitem{RiehlShulman}
   1 \bibitem{Shulman2019}
   1 \bibitem{Voevodsky}
   1 \bibitem{rzk}
   1 \cite[\S 5]{RiehlShulman}
   1 \cite[\S 6]{GWB2024}
   1 \cite[\S 8]{GWB2024}
   1 \cite[\S 9]{RiehlShulman}
   1 \cite{CisinskiNguyen}
   1 \cite{Cisinski}
   2 \cite{GWB2024}
   1 \cite{HoTTBook,Voevodsky}
   1 \cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}
   3 \cite{RiehlShulman}
   2 \cite{rzk}

exec
/usr/local/bin/zsh -lc "for p in amsmath.sty amssymb.sty amsthm.sty geometry.sty graphicx.sty xcolor.sty tikz-cd.sty tikz.sty booktabs.sty listings.sty everypage.sty microtype.sty hyperref.sty cleveref.sty; do printf '%s ' \""'$p"; kpsewhich "$p" >/dev/null && echo OK || echo MISSING; done' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 816ms:
OK
amsthm.sty OK
geometry.sty OK
graphicx.sty OK
xcolor.sty OK
tikz-cd.sty OK
tikz.sty OK
booktabs.sty OK
listings.sty OK
everypage.sty OK
microtype.sty OK
hyperref.sty OK
cleveref.sty OK

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\cite(?:\\[["'^]]*'"\\])?\\{(["'^}]+)'"\\}/g){for(split /,/, "'$1){s/''^'"\\s+|\\s+"'$//g; $c{$_}++}} while(/'"\\\\bibitem\\{(["'^}]+)'"\\}/g){"'$b{$1}++} END{for $k(sort keys %c){print "UNDEFINED_CITE $k'"\\n\" unless "'$b{$k}} for $k(sort keys %b){print "UNUSED_BIBITEM $k'"\\n\" unless "'$c{$k}}}'"' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(?:ref|eqref|autoref|cref|Cref)\\{(["'^}]+)'"\\}/g){"'$r{$1}++} while(/'"\\\\label\\{(["'^}]+)'"\\}/g){"'$l{$1}++} END{for $k(sort keys %r){print "UNDEFINED_REF $k'"\\n\" unless "'$l{$k}} for $k(sort keys %l){print "DUP_LABEL $k'"\\n\" if "'$l{$k}>1}}'"' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
UNUSED_BIBITEM ACKS
UNUSED_BIBITEM Awodey
UNUSED_BIBITEM Joyal
UNUSED_BIBITEM LicataShulman
UNUSED_BIBITEM Lumsdaine
UNUSED_BIBITEM Lurie
UNUSED_BIBITEM NorthDirected
UNUSED_BIBITEM RezkComplete
UNUSED_BIBITEM Riehl2025
UNUSED_BIBITEM Shulman2019

 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\begin\\{(["'^}]+)'"\\}/g){push @s,["'$1,$.]} while(/'"\\\\end\\{(["'^}]+)'"\\}/g){"'$e=$1; $t=pop @s; if(!$t){print "UNMATCHED_END $e line $.'"\\n\"} elsif("'$t->[0] ne $e){print "MISMATCH begin $t->[0] line $t->[1] end $e line $.'"\\n\"}} END{for "'$t(@s){print "UNMATCHED_BEGIN $t->[0] line $t->[1]'"\\n\"}}' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\([A-Za-z@]+|.)/g){"'$cmd{$1}++} END{for $k(sort keys %cmd){print "'"\\\\"'$k $cmd{$k}'"\\n\"}}' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
\  46
\" 2
\, 2
\; 23
\@ 7
\AddEverypageHook 1
\Big 6
\Cat 1
\Delta 2
\Disc 16
\Fun 13
\Grpd 1
\HoTT 1
\Hom 45
\Id 1
\Lambda 1
\Large 1
\N 7
\Phi 8
\S 4
\STT 17
\Set 1
\TTT 17
\Triv 1
\Type 1
\U 40
\Z 1
\[ 18
\\ 8
\] 18
\` 1
\alpha 5
\author 1
\begin 69
\bfseries 1
\bibitem 19
\big 7
\bigskip 1
\bot 1
\bottomrule 1
\cdot 1
\circ 5
\cite 15
\color 2
\dashv 15
\date 1
\definecolor 1
\disc 15
\documentclass 1
\dua 2
\emergencystretch 1
\emph 86
\end 69
\equiv 1
\eqv 19
\fi 1
\flat 18
\footnotesize 1
\funtohom 7
\hookrightarrow 1
\id 7
\idtoeqv 6
\ifnum 1
\in 1
\infty 44
\into 1
\inv 2
\isContr 2
\isDisc 3
\isProp 1
\isRezk 4
\isSegal 4
\isSet 1
\item 51
\label 52
\langle 4
\le 5
\longrightarrow 3
\lstset 1
\maketitle 1
\mapsto 4
\mathbb 5
\mathbf 7
\mathcal 81
\mathrm 3
\mathsf 59
\mid 2
\midrule 1
\newcommand 35
\newtheorem 9
\node 1
\op 6
\paperheight 1
\paragraph 4
\prod 7
\quad 2
\rangle 4
\ref 14
\refl 2
\rzk 1
\section 11
\seg 4
\sffamily 1
\sharp 9
\sigma 1
\sim 1
\simeq 1
\subsection 28
\subset 4
\sum 4
\tableofcontents 1
\texorpdfstring 3
\text 3
\textbf 7
\textit 1
\texttt 2
\theoremstyle 2
\times 5
\title 1
\to 32
\top 1
\toprule 1
\ttfamily 1
\twoI 23
\ua 4
\url 1
\usepackage 12
\usetikzlibrary 1
\value 1
\vee 1
\wedge 1
\xrightarrow 1
\{ 10
\} 10

exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>220 {print FNR ":" length($0) ":" $0}'"' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
124:1121:Voevodsky's univalence axiom equates path identification with type-equivalence and lies at the heart of homotopy type theory (HoTT). Its directed analogue --- which would equate hom-types in the universe with functions between types --- has been pursued since the introduction of \emph{simplicial type theory} (STT) by Riehl and Shulman (2017). Riehl--Shulman gives a synthetic theory of $(\infty,1)$-categories whose internal hom-types $\Hom_A(a,b)$ behave correctly inside Segal types, and a \emph{partial} directed univalence holds for covariant fibrations: the universe of discrete types restricted along a covariant family is recovered from the family itself. A complete principle for the entire universe remained out of reach. Gratzer, Weinberger and Buchholtz (2024) introduce \emph{triangulated type theory} (TTT), an extension of STT with a system of modalities ($\flat$, $\sharp$, $\Disc$, opposite), and prove a directed univalence theorem for the universe $\mathcal{S}$ of \emph{discrete} types: $\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$. This is the first complete fragment of a directed univalence principle.
126:820:We give an expository, structured account of the line of work from Riehl--Shulman 2017 through Gratzer--Weinberger--Buchholtz 2024. We isolate the technical contents of partial directed univalence, formulate four candidate \emph{full} directed univalence principles of increasing strength, and analyse what would be required to prove each. We propose a programme of \emph{layered} directed univalence indexed by the Segal/Rezk/discrete hierarchy, give toy implementations in Haskell and Lean~4, and connect the project to natural number objects in $(\infty,1)$-toposes, higher inductive types, and synthetic representation theory. The complete principle remains open; we make explicit the obstructions, including modal dependence, opposite-type coherence, and the lack of an internal universe of $(\infty,1)$-categories.
137:430:internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself~\cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
139:388:Yet univalence as stated lives in a fundamentally \emph{symmetric} world. The identity type $A =_{\U} B$ is a groupoid: it has inverses. This reflects a basic fact about the type-theoretic universe: every type, in HoTT, is treated as an $\infty$-groupoid. Categories proper --- where morphisms can be non-invertible --- do not admit a clean internal description in HoTT without artefacts.
141:656:Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper~\cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
147:380:Within $\STT$ there is no \emph{a priori} guarantee that an arbitrary type $A$ describes an $(\infty,1)$-category --- only that it has a mapping space structure. Two predicates $\isSegal(A)$ (composition of hom-types) and $\isRezk(A)$ (equivalences are identities) cut out the types of interest, the Rezk types, which model complete Segal spaces and hence $(\infty,1)$-categories.
149:571:The natural question is then: \emph{is there a directed analogue of univalence?} If $\mathcal{S}$ is some directed universe of types, is the hom-type $\Hom_{\mathcal{S}}(A,B)$ equivalent to the type of functions $\Fun(A,B) := A \to B$? Riehl--Shulman prove a partial result: a covariant family $P : A \to \U$ is classified by a functor $A \to \mathcal{S}_{\disc}$ into the \emph{discrete} sub-universe, and the data of the family is recovered up to equivalence from the functor. This is directed univalence \emph{for covariant families} but not for the universe at large.
151:368:For seven years, the question of whether the directed universe itself satisfies a directed univalence principle was open. Gratzer, Weinberger and Buchholtz (2024) settle the question for the discrete sub-universe: they introduce a system of modalities adequate to express both the directed universe and the symmetric universe of $\infty$-groupoids inside it, and prove
155:273:where $\mathcal{S}$ is the universe of discrete types~\cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
165:578:We accompany the exposition with formal sketches in Haskell (under \texttt{src/}) and Lean~4 (under \texttt{lean/}) that mechanise the relevant equivalences for the discrete fragment and lay out the directed universe API\@. The Haskell modules are not Lean proofs --- they implement \emph{toy} models that exhibit the algebraic content (covariant fibrations as $A \to \mathcal{S}$ functors, hom-types as Day convolutions on a $\twoI$-action) so that the conceptual content can be machine-checked even if foundationally weakened. Lean~4 sketches use postulates where appropriate.
167:231:Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
169:496:\paragraph{Conventions.} We write $\U$ for an ambient (symmetric) universe; $\mathcal{S}$ for a directed sub-universe; $A : \U$ or $A : \mathcal{S}$ for a type/object; $a, b : A$ for terms. The directed interval is $\twoI = \{0 \le 1\}$. Hom-types are written $\Hom_A(a,b)$ and identity types $a =_A b$. We use $f \eqv g$ for the type of equivalences. Throughout, $\STT$ refers to Riehl--Shulman 2017 simplicial type theory, $\TTT$ to Gratzer--Weinberger--Buchholtz 2024 triangulated type theory.
193:236:The axiom yields its inverse $\ua : (A \eqv B) \to (A =_{\U} B)$ and the computation $\idtoeqv \circ \ua \sim \id$. Operationally, every equivalence delivers a path in the universe, and transport along this path acts as the equivalence.
213:240:and identities $\id_a : \Hom_A(a,a)$, satisfying associativity and unit laws \emph{up to higher coherent homotopy}. Crucially, $\Hom_A(a,b)$ should not in general carry inverses: if it did, the theory would collapse back to a symmetric one.
232:323:There is a clean semantic picture explaining why directed univalence is hard. In HoTT, the universe $\U$ is interpreted as an object classifier in an $(\infty,1)$-topos: $\U$ classifies small bundles up to fibrewise equivalence. Univalence is the corresponding internal statement: equivalences of bundles are paths in $\U$.
234:633:The directed analogue would have a universe $\mathcal{S}$ classifying bundles \emph{up to map}, not just equivalence. In an $(\infty,1)$-topos $\mathcal{X}$, the natural such classifier is the cocartesian fibration of the $(\infty,1)$-category $\mathcal{X}_{/-}$ over $\mathcal{X}$ itself. But this is no longer a single object: it is a structured presentable $(\infty,1)$-category. The naive analogue --- ``a small object in $\mathcal{X}$ that classifies maps'' --- requires \emph{at least} a handle on $\mathcal{X}$ as an $(\infty,1)$-category internal to $\mathcal{X}$, a strictly stronger demand than internal $\infty$-groupoids.
249:248:A \emph{tope} on a cube $I$ is a polynomial inequality in the coordinates of $I$, closed under $\top$, $\bot$, $\wedge$, $\vee$. Topes form a distributive lattice. The standard examples on $\twoI$ are $\{0\}$, $\{1\}$, $\{0 \le t\}$, $\{t \le 1\}$.
261:242:Extension types provide a uniform mechanism for \emph{strict boundary conditions}: the value of $f$ on the tope $\Phi$ is fixed up to definitional equality. This is what lets STT speak about, e.g., morphisms with prescribed source and target.
280:481:into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.
350:223:This is \emph{directed univalence for covariant fibrations valued in discrete types}: the universe $\mathcal{S}_{\disc}$ classifies covariant families, in exact analogy with $\U$ classifying type families up to equivalence.
361:332:In $\STT$ as set up by Riehl--Shulman, the discrete universe $\mathcal{S}_{\disc}$ is given as a sub-type of $\U$, but its hom-type $\Hom_{\mathcal{S}_{\disc}}(A,B)$ is not directly described. The straightening theorem describes covariant \emph{maps into} $\mathcal{S}_{\disc}$, not the hom-type \emph{within} $\mathcal{S}_{\disc}$.
364:365:To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from~\cite{RiehlShulman}.
397:224:The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT\@.
411:320:The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.
427:448:\item \emph{Define $\funtohom$.} Given $f : A \to B$, define the family $A_f : \twoI \to \mathcal{S}$ by $A_f(0) := A$, $A_f(1) := B$, $A_f(t) := \mathsf{cofib}(f, t)$, where $\mathsf{cofib}(f, t)$ denotes a standard cofibrant path-object construction interpolating between $A$ and $B$ along $f$ (concretely, the homotopy pushout of $f$ with the trivial map at parameter $t$). The $\Disc$ modality ensures $A_f(t)$ stays discrete for $t \in (0,1)$.
429:233:\item \emph{Coherence.} Composition $\funtohom \circ \flat = \id$ and $\flat \circ \funtohom = \id$ both follow from the universal property of extension types and the Beck--Chevalley conditions for $\flat \dashv \Disc \dashv \sharp$.
466:293:\emph{Candidate II\@.} For the universe $\mathcal{S}_{\mathsf{Seg}}$ of Segal types, $\Hom_{\mathcal{S}_{\mathsf{Seg}}}(A,B) \eqv \mathsf{SegFun}(A,B)$, where $\mathsf{SegFun}$ is the type of functors preserving Segal structure (= ordinary functions, since composition is uniquely determined).
504:281:Candidates II--IV require a coherent theory of opposite types $A^{\op}$. The opposite type construction in $\STT$ is well-defined, but its compatibility with the universe structure is subtle: $(-)^{\op}$ is a non-trivial involution on $\U$ that interacts non-trivially with $\Hom$.
508:263:Candidates II--IV likely require a modal layer richer than $\flat \dashv \Disc \dashv \sharp$. In particular, the modality picking out Rezk types is not in general a left or right adjoint to either $\flat$ or $\Disc$, so cannot be expressed in cohesion-like form.
512:266:Candidate IV in its naive form is inconsistent: $\U$ cannot internalise its own ``large'' $(\infty,1)$-categorical structure. A 2-level approach (\`a la Annenkov--Capriotti--Kraus--Sattler) appears necessary, with a strict inner universe and a homotopical outer one.
522:249:\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is in fact Rezk (so that ``equivalences in $\mathcal{S}_{\mathsf{Rezk}}$ are identities''). Equivalences in this context are functors that are essentially surjective and fully faithful in the synthetic sense.
541:453:Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments~\cite{Cisinski}; the rzk proof assistant aims at a computational interpretation~\cite{rzk}.
564:299:In ordinary HoTT, the natural numbers $\N$ are characterised by an initiality universal property: $(\N, 0, \mathsf{succ})$ is initial in the type of pointed endo-types. This characterisation generalises directly to the discrete sub-universe of $\TTT$: $\N$ is a type in $\mathcal{S}$ and is initial.
576:256:A higher inductive type (HIT) like $S^1$ has constructors and \emph{path constructors} producing identifications. In the directed setting one wants \emph{directed-path constructors}: a type with constructors and prescribed hom-types, defined synthetically.
592:285:Directed univalence connects to representation theory through the slogan: \emph{representations are functors}. A representation of a group $G$ on a vector space is a functor $BG \to \mathsf{Vect}$, where $BG$ is the classifying type of $G$. In a hypothetical full directed type theory:
595:436:A \emph{synthetic representation} of a Rezk-type group $G$ is a directed morphism $BG \to \mathsf{Vect}$ in $\mathcal{S}_{\mathsf{Rezk}}$. Here, as in classical higher category theory, the group $G$ is presented through its \emph{delooping} $BG$ --- the one-object Rezk-type whose endomorphism hom-type is $G$ itself; representations are then functors out of this delooping. Sub-representations are directed monomorphisms in this sense.
599:228:Eventually, automorphic representations (functors $\mathrm{GL}(n, \mathbb{A}) \to \infty\text{-Grpd}$ for $\mathbb{A}$ adelic) would be morphisms in a directed universe. This is highly speculative and depends on Candidate III\@.
619:227:\item \emph{Size issue.} The universe is a large object. A directed structure on it would package its $(\infty,1)$-categorical morphisms internally --- a strictly stronger demand than packaging $\infty$-groupoidal equivalences.
643:336:This paper is expository and programmatic. We do not prove a new directed univalence theorem. The accompanying Haskell and Lean code formalise the discrete fragment of $\TTT$ in a toy model (Haskell) and as a postulate-based sketch (Lean), and exhibit the algebraic content. We hope these provide a productive substrate for future work.
667:433:Directed univalence has come a long way since Riehl--Shulman 2017. Their original framework gave us simplicial type theory with an internalised hom-type and a partial straightening theorem for covariant fibrations. Gratzer--Weinberger--Buchholtz 2024 introduced the modal apparatus needed to internalise directed structure on the universe, and proved the first complete directed univalence theorem for the universe of discrete types.
669:571:The complete principle remains a research target. The path forward is layered: extend the modality structure to capture Segal-ness and Rezk-ness, prove successively stronger directed univalence statements at each layer, and ultimately reach a 2-level account where the universe carries both directed and undirected structure coherently. The reward, if it can be obtained, is a synthetic foundation for $(\infty,1)$-category theory in which functors are directed morphisms in the universe --- an \emph{ipso facto} foundation for synthetic representation theory and beyond.
671:478:We close with a final observation. The classical univalence axiom internalised the slogan ``isomorphic objects are equal''. A complete directed univalence axiom would internalise the slogan ``functors are arrows in the universe of categories''. These are both deeply structuralist principles. The latter, if it can be proved, would unify the structuralist viewpoints of Lawvere, Awodey, and Voevodsky into a single foundational system in which the universe is itself a category.
697:225:\bibitem{KavvosWeaver} G.\ A.\ Kavvos and M.\ Weaver. ``On directed type theory.'' Ongoing work, 2024--2025; cf.\ M.\ Weaver and D.\ Licata, ``A Constructive Model of Directed Univalence in Bicubical Sets,'' \emph{LICS 2020}.

exec
/usr/local/bin/zsh -lc "rg -n ' \\{cite| see \\\\cite| See \\\\cite|\\(-\\)\\"'^'"\\{\\\\op\\}|\\\\cite\\[' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
280:into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.
327:Both sides are recovered from the dependent product structure on $A$ and the universal property of the representable $\Hom_A(a,-)$. Detailed proof: see \cite[\S 9]{RiehlShulman}.
391:\item $(-)^{\op}$: the opposite modality reversing direction.
393:With $\flat \dashv \Disc \dashv \sharp$ a triangle of cohesion-like modalities, and $(-)^{\op}$ as duality.
397:The $\flat \dashv \Disc \dashv \sharp$ adjunction is structurally identical to the cohesive triple in Schreiber--Shulman cohesion. The new aspect is the interaction with $(-)^{\op}$, which has no analogue in cohesive HoTT\@.
411:The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.
431:See \cite[\S 8]{GWB2024} for full details.
504:Candidates II--IV require a coherent theory of opposite types $A^{\op}$. The opposite type construction in $\STT$ is well-defined, but its compatibility with the universe structure is subtle: $(-)^{\op}$ is a non-trivial involution on $\U$ that interacts non-trivially with $\Hom$.

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty | xargs rg -n "AddEverypageHook|ProvidesPackage|Deprecated|deprecated"' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
33:\ProvidesPackage{everypage}%
56:\newcommand*{\AddEverypageHook}[1]{%

exec
/usr/local/bin/zsh -lc "perl -ne '"'$line=$_; $line =~ s/'"\\\\\\"'$//g; $count=()=$line=~/'"\\"'$/g; print "ODD_DOLLARS line $. count $count: $_" if $count % 2'"' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "perl -ne '"'$opens=()=/'"\\{/g; "'$closes=()=/'"\\}/g; "'$bal += $opens - $closes; print "NEG_BRACE line $. bal $bal'"\\n\" if "'$bal < 0; END{print "FINAL_BRACE_BALANCE $bal'"\\n\"}' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
FINAL_BRACE_BALANCE 0

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(includegraphics|input|include|bibliography|bibliographystyle|label|ref|cite|url|href)|TODO|FIXME|\\\\todo' papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
72:\newcommand{\refl}{\mathsf{refl}}
131:\section{Introduction}\label{sec:intro}
137:internalises Mac Lane's slogan \emph{isomorphic objects are equal} into the type theory itself~\cite{HoTTBook,Voevodsky}. Once one accepts univalence, virtually every homotopy-theoretic and category-theoretic phenomenon admits a natural type-theoretic expression: equivalences become identities, transport along an equivalence is automatic, and the structure identity principle becomes a theorem rather than a methodological wish.
141:Directed type theory aims to repair this asymmetry by introducing a directed analogue of the path type, often written $\Hom_A(a,b)$, which need not be invertible. The objective is a synthetic theory of $(\infty,1)$-categories analogous to the way HoTT serves as a synthetic theory of $\infty$-groupoids. Riehl and Shulman's 2017 paper~\cite{RiehlShulman} introduces simplicial type theory ($\STT$) as such a foundation. The fundamental new ingredient is a strict interval $\twoI$ with two distinct endpoints $0,1 : \twoI$ and a sub-type-system of \emph{topes} (propositions over the cube of intervals) that lets one write \emph{extension types} of the form
155:where $\mathcal{S}$ is the universe of discrete types~\cite{GWB2024}. They name the resulting system \emph{triangulated type theory} ($\TTT$), reflecting the appearance of a triangle of modalities $\flat \dashv \Disc \dashv \sharp$ analogous to Schreiber--Shulman cohesion.
159:\item Give a self-contained, structured account of $\STT$ (Section~\ref{sec:rs}) and partial directed univalence (Section~\ref{sec:partial}).
160:\item Present the Gratzer--Weinberger--Buchholtz construction (Section~\ref{sec:gwb}) and isolate exactly what is and is not proved.
161:\item Formulate four candidate \emph{complete} directed univalence principles (Section~\ref{sec:complete}) and analyse the obstructions.
162:\item Connect directed univalence to higher inductive types, $(\infty,1)$-natural number objects, and synthetic representation theory (Section~\ref{sec:hit}).
167:Open problems are collected in Section~\ref{sec:open}. We list four: extension to non-discrete universes, $(\infty,1)$-Cat as a primitive type, internal language theorems for cocartesian fibrations, and the connection to Langlands.
171:\section{Background: Symmetric Univalence and Directed Motivation}\label{sec:background}
177:\begin{definition}[Equivalence]\label{def:equiv}
181:\begin{definition}[$\idtoeqv$]\label{def:idtoeqv}
186:sending $\refl_A$ to the identity equivalence $\id_A : A \eqv A$.
189:\begin{theorem}[Voevodsky's univalence axiom]\label{thm:univalence}
228:(D1)--(D4) are addressed by Riehl--Shulman and the body of subsequent work~\cite{RiehlShulman,Buchholtz,Cisinski,KavvosWeaver}. (D5) is the topic of this paper.
238:\section{Riehl--Shulman Simplicial Type Theory}\label{sec:rs}
244:\begin{definition}[Cube]\label{def:cube}
248:\begin{definition}[Tope]\label{def:tope}
252:\begin{definition}[Extension type]\label{def:exttype}
266:\begin{definition}[Hom-type]\label{def:hom}
275:\begin{definition}[Segal predicate]\label{def:segal}
280:into the type of $\seg^2_1$-fillers is an equivalence, where $\seg^2_1$ is the inner horn of the standard 2-simplex --- concretely, the sub-cube of the unit square $\twoI \times \twoI$ given by the tope $\{ (t,s) \mid t \le s \}$ minus its long edge from $(0,0)$ to $(1,1)$, equivalently the shape generated by the two boundary edges $(t,0)$ and $(1,s)$ \cite[\S 5]{RiehlShulman}. In particular, every pair of composable morphisms admits a unique-up-to-coherent-homotopy composite.
289:\begin{definition}[Rezk predicate]\label{def:rezk}
297:\begin{theorem}[Riehl--Shulman, semantic]\label{thm:rs-semantic}
303:\begin{definition}[Discrete type]\label{def:discrete}
311:\begin{example}\label{ex:discrete-types}
317:A high point of~\cite{RiehlShulman} is a synthetic Yoneda lemma. We state it informally.
319:\begin{theorem}[Synthetic Yoneda, RS Thm 9.1]\label{thm:yoneda}
327:Both sides are recovered from the dependent product structure on $A$ and the universal property of the representable $\Hom_A(a,-)$. Detailed proof: see \cite[\S 9]{RiehlShulman}.
332:\section{Partial Directed Univalence (Riehl--Shulman 2017)}\label{sec:partial}
336:\begin{definition}[Covariant fibration]\label{def:covariant}
342:\begin{theorem}[Straightening, partial directed univalence for covariant families]\label{thm:straightening}
354:Theorem~\ref{thm:straightening} stops short of asserting
364:To formulate ``$\Hom_{\mathcal{S}}(A,B) \eqv \Fun(A,B)$'' coherently, one needs to mediate between the directed setting (where the universe carries non-trivial morphisms) and the symmetric setting (where it carries only equivalences). This is precisely the function of the modal apparatus of Gratzer--Weinberger--Buchholtz, which is absent from~\cite{RiehlShulman}.
368:\begin{proposition}[Limitations of $\STT$]\label{prop:limitations}
371:\item There is a directed straightening for covariant families into the discrete universe (Theorem~\ref{thm:straightening}).
379:\section[Triangulated Type Theory]{Triangulated Type Theory \\ (Gratzer--Weinberger--Buchholtz 2024)}\label{sec:gwb}
383:The crucial new ingredient in~\cite{GWB2024} is a system of modalities. We describe four.
385:\begin{definition}[The four modalities]\label{def:modalities}
402:\begin{definition}[Discrete universe]\label{def:disc-universe}
406:\begin{theorem}[GWB, $\mathcal{S}$ is Segal]\label{thm:s-segal}
411:The proof uses the modal layer to control how the family $A : \twoI \to \mathcal{S}$ behaves at the endpoints. Key step: the dependent product over $\twoI$ in $\mathcal{S}$ exists because the discreteness predicate is preserved by extension types, which is established via the $\flat$ modality. See \cite[\S 6]{GWB2024}.
416:\begin{theorem}[Directed univalence in $\TTT$, GWB Thm 8.1]\label{thm:dua-s}
431:See \cite[\S 8]{GWB2024} for full details.
434:\begin{corollary}[Yoneda for $\mathcal{S}$]\label{cor:yoneda-s}
439:Theorem~\ref{thm:dua-s} is a complete directed univalence statement for the discrete fragment. It is ``triangulated'' in the sense that its formulation requires the triangle $\flat \dashv \Disc \dashv \sharp$.
444:\begin{proposition}[Scope of GWB]\label{prop:scope-gwb}
445:Theorem~\ref{thm:dua-s} establishes directed univalence for the discrete universe $\mathcal{S}$. It does \emph{not} establish:
453:\section{Toward a Complete Principle}\label{sec:complete}
459:\begin{definition}[Candidate I: Discrete directed univalence]\label{def:cand-i}
462:\textbf{Status:} Proven (Theorem~\ref{thm:dua-s}, GWB 2024).
465:\begin{definition}[Candidate II: Segal directed univalence]\label{def:cand-ii}
471:\begin{definition}[Candidate III: Rezk directed univalence]\label{def:cand-iii}
477:\begin{definition}[Candidate IV: Universal directed univalence]\label{def:cand-iv}
485:\begin{conjecture}[Layered directed univalence]\label{conj:layered}
503:\begin{proposition}[Obstruction: opposite-type coherence]\label{prop:opp-coh}
507:\begin{proposition}[Obstruction: modal dependence]\label{prop:modal-dep}
511:\begin{proposition}[Obstruction: large vs.\ small]\label{prop:large}
521:\item Show $\mathcal{S}_{\mathsf{Rezk}}$ is Segal in $\TTT$. This is plausibly an extension of Theorem~\ref{thm:s-segal} but requires that $\isRezk$ commute with extension types out of $\twoI$, which is non-trivial.
529:\begin{question}\label{q:rezk-modality}
540:\begin{remark}[Cubical analogue]\label{rem:cubical}
541:Voevodsky univalence is a postulate in Book HoTT but a \emph{theorem} in cubical type theory (CCHM, Cohen--Coquand--Huber--M\"ortberg) due to Glue types. The analogous question for the directed setting is open: is there a cubical-flavoured presentation of $\TTT$ (or its successors) in which directed univalence is constructive? Cisinski has suggested fragments~\cite{Cisinski}; the rzk proof assistant aims at a computational interpretation~\cite{rzk}.
552:$\mathcal{S}_{\disc}$ & directed, discrete & GWB 2024 (Theorem~\ref{thm:dua-s}) \\
560:\section{\texorpdfstring{Connections to $(\infty,1)$-Natural Number Objects and HITs}{Connections to (infinity,1)-Natural Number Objects and HITs}}\label{sec:hit}
566:\begin{proposition}[NNO in discrete directed type theory]\label{prop:nno-disc}
571:for any pointed endo-discrete-type $(A, a_0, s)$. Directed univalence (Theorem~\ref{thm:dua-s}) then identifies these initiality witnesses with directed morphisms in $\mathcal{S}$.
578:\begin{definition}[Directed HIT]\label{def:dhit}
582:\begin{example}[Walking arrow]\label{ex:walking-arrow}
586:\begin{example}[Walking commutative square]\label{ex:walking-square}
594:\begin{definition}[Synthetic representation]\label{def:rep}
598:\begin{remark}\label{rem:langlands-distant}
607:\item The experimental proof assistant rzk~\cite{rzk} implements $\STT$ with topes and extension types; it does \emph{not} yet implement triangulated modalities or prove directed univalence.
610:\section{Discussion}\label{sec:discussion}
645:\section{Open Problems}\label{sec:open}
649:\begin{question}[Rezk directed univalence]\label{q:rezk}
653:\begin{question}[$(\infty,1)$-Cat as a primitive type]\label{q:icat}
657:\begin{question}[Internal language of cocartesian fibrations]\label{q:cocart}
658:Develop the internal language of cocartesian fibrations in $\TTT$, in the spirit of Cisinski--Nguyen~\cite{CisinskiNguyen}.
661:\begin{question}[Directed Langlands]\label{q:langlands}
665:\section{Conclusion}\label{sec:conclusion}
701:\bibitem{rzk} N.\ Bubenik et al. \emph{rzk: an experimental proof assistant for synthetic $\infty$-category theory}. \url{https://rzk-lang.github.io/rzk/}, accessed 2026.

codex
I found only source-level LaTeX formatting issues. I could not run a real `pdflatex` build/log check because the read-only sandbox blocked all output directories, including `/tmp`; package lookup, label/citation checks, brace/environment balance, `chktex`, and `lacheck` were run.

- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:280): citation should be tied with a nonbreaking space. Fix `$(1,s)$ \cite[...]` to `$(1,s)$~\cite[...]`.
- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:327): same issue. Fix `see \cite[...]` to `see~\cite[...]`.
- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:411): same issue. Fix `See \cite[...]` to `See~\cite[...]`.
- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:431): same issue. Fix `See \cite[...]` to `See~\cite[...]`.

- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:391), lines 393, 397, 504: `(-)^{\op}` applies the superscript to the closing parenthesis token rather than a grouped expression. Fix each to `${(-)}^{\op}$` or define/use a macro such as `\newcommand{\opmod}{{(-)}^{\op}}`.

No missing packages, undefined refs/cites, duplicate labels, odd `$` lines, brace imbalance, or mismatched `\begin`/`\end` pairs were found by the source checks.

VERDICT: NEEDS_FIX
2026-05-04T23:39:39.195081Z ERROR codex_core::session: failed to record rollout items: thread 019df55a-3b7b-7f21-a4f8-c908f7bc7500 not found
tokens used
83,828
I found only source-level LaTeX formatting issues. I could not run a real `pdflatex` build/log check because the read-only sandbox blocked all output directories, including `/tmp`; package lookup, label/citation checks, brace/environment balance, `chktex`, and `lacheck` were run.

- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:280): citation should be tied with a nonbreaking space. Fix `$(1,s)$ \cite[...]` to `$(1,s)$~\cite[...]`.
- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:327): same issue. Fix `see \cite[...]` to `see~\cite[...]`.
- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:411): same issue. Fix `See \cite[...]` to `See~\cite[...]`.
- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:431): same issue. Fix `See \cite[...]` to `See~\cite[...]`.

- [directed-univalence.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/directed-univalence.tex:391), lines 393, 397, 504: `(-)^{\op}` applies the superscript to the closing parenthesis token rather than a grouped expression. Fix each to `${(-)}^{\op}$` or define/use a macro such as `\newcommand{\opmod}{{(-)}^{\op}}`.

No missing packages, undefined refs/cites, duplicate labels, odd `$` lines, brace imbalance, or mismatched `\begin`/`\end` pairs were found by the source checks.

VERDICT: NEEDS_FIX

---
reviewer: codex (OpenAI)
type: formatting
paper: infinity-nno
round: 2
date: 2026-05-04T23:36:46Z
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
session id: 019df559-f804-74c3-940e-dd2d11e13e4d
--------
user
Review papers/latex/infinity-nno.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).

The file path is: /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex
codex
I’ll inspect the LaTeX source first, then try a local compile if the repo has the expected toolchain so the review covers both static issues and actual TeX diagnostics.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
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
    11	% Graphics
    12	\usepackage{graphicx}
    13	
    14	% Page layout
    15	\usepackage[margin=1in]{geometry}
    16	
    17	% URL handling (must come before hyperref)
    18	\usepackage{xurl}
    19	
    20	% References
    21	\usepackage{hyperref}
    22	\usepackage{cleveref}
    23	
    24	% GrokRxiv sidebar
    25	\usepackage{everypage}
    26	\usepackage{xcolor}
    27	
    28	% Allow URLs to break flexibly to avoid underfull \hbox warnings
    29	\Urlmuskip=0mu plus 1mu
    30	
    31	% Theorem environments
    32	\newtheorem{theorem}{Theorem}[section]
    33	\newtheorem{proposition}[theorem]{Proposition}
    34	\newtheorem{lemma}[theorem]{Lemma}
    35	\newtheorem{corollary}[theorem]{Corollary}
    36	\theoremstyle{definition}
    37	\newtheorem{definition}[theorem]{Definition}
    38	\theoremstyle{remark}
    39	\newtheorem{remark}[theorem]{Remark}
    40	\newtheorem{example}[theorem]{Example}
    41	
    42	% Macros
    43	\newcommand{\N}{\mathbb{N}}
    44	\newcommand{\Z}{\mathbb{Z}}
    45	\newcommand{\Q}{\mathbb{Q}}
    46	\newcommand{\R}{\mathbb{R}}
    47	\newcommand{\Set}{\mathbf{Set}}
    48	\newcommand{\op}{\mathrm{op}}
    49	\newcommand{\id}{\mathrm{id}}
    50	\newcommand{\Hom}{\mathrm{Hom}}
    51	\newcommand{\Map}{\mathrm{Map}}
    52	\newcommand{\Nat}{\mathrm{Nat}}
    53	\newcommand{\zero}{\mathsf{zero}}
    54	\newcommand{\suc}{\mathsf{succ}}
    55	\newcommand{\PtEndo}{\mathbf{PtEndo}}
    56	\newcommand{\iso}{\cong}
    57	\newcommand{\eqv}{\simeq}
    58	\newcommand{\NNO}{\mathrm{NNO}}
    59	\newcommand{\Type}{\mathsf{Type}}
    60	\newcommand{\U}{\mathcal{U}}
    61	\newcommand{\Id}{\mathsf{Id}}
    62	\newcommand{\refl}{\mathsf{refl}}
    63	\newcommand{\transport}{\mathsf{transport}}
    64	\newcommand{\ua}{\mathsf{ua}}
    65	\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
    66	\newcommand{\looppath}{\mathsf{loop}}
    67	\newcommand{\base}{\mathsf{base}}
    68	\newcommand{\Sone}{S^{1}}
    69	\newcommand{\isContr}{\mathsf{isContr}}
    70	\newcommand{\isProp}{\mathsf{isProp}}
    71	\newcommand{\isSet}{\mathsf{isSet}}
    72	\newcommand{\Cat}{\mathbf{Cat}}
    73	\newcommand{\Cati}{\mathbf{Cat}_{\infty}}
    74	\newcommand{\Spc}{\mathcal{S}}
    75	\newcommand{\Topos}{\mathbf{Top}}
    76	\newcommand{\ETopos}{\mathbf{ETop}}
    77	\newcommand{\colim}{\mathrm{colim}}
    78	\newcommand{\rec}{\mathsf{rec}}
    79	\newcommand{\ind}{\mathsf{ind}}
    80	\newcommand{\Sigmatype}{\Sigma}
    81	\newcommand{\Pitype}{\Pi}
    82	
    83	% Hyperref setup
    84	\hypersetup{
    85	  colorlinks=true,
    86	  linkcolor=blue!60!black,
    87	  citecolor=blue!60!black,
    88	  urlcolor=blue!60!black
    89	}
    90	
    91	% GrokRxiv sidebar
    92	\definecolor{grokgray}{RGB}{110,110,110}
    93	\AddEverypageHook{%
    94	  \ifnum\value{page}=1
    95	    \begin{tikzpicture}[remember picture, overlay]
    96	      \node[
    97	        rotate=90,
    98	        anchor=south,
    99	        font=\Large\sffamily\bfseries\color{grokgray},
   100	        inner sep=0pt
   101	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
   102	      {GrokRxiv:2026.05.infinity-nno\quad
   103	       [\,math.CT\,]\quad
   104	       04 May 2026};
   105	    \end{tikzpicture}
   106	  \fi
   107	}
   108	
   109	\title{Higher-Categorical Natural Numbers Objects:\\
   110	Contractibility, $\infty$-Toposes, and Lurie's NNO}
   111	
   112	\author{YonedaAI \\
   113	\textit{Magneton Research Collective} \\
   114	\textit{Independent Mathematical Foundations Group} \\
   115	San Francisco, CA \\
   116	\texttt{research@yonedaai.org} $\cdot$ \url{https://yonedaai.org}}
   117	
   118	\date{4 May 2026}
   119	
   120	\begin{document}
   121	
   122	\maketitle
   123	
   124	\begin{abstract}
   125	The natural numbers object (NNO) of an elementary topos is, classically, an object equipped with a global element $0$ and an endomorphism $s$ such that the resulting pointed dynamical system is initial. In a $1$-topos any two NNOs are connected by a unique isomorphism, and the automorphism group of an NNO is trivial: NNO structures form a contractible groupoid, equivalently a $(-2)$-truncated $\infty$-groupoid. In homotopy type theory (HoTT), Theorem~2.7 of Paper~III (and the equivalent Theorem~4.4 of Paper~V of the present series) refines this rigidity: the type
   126	\[
   127	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s)
   128	\]
   129	is contractible. By Shulman's interpretation theorem, every $(\infty,1)$-topos $\mathcal{E}$ admits a model of HoTT~+~univalence, so the corresponding statement transports to an internal contractibility result for the type of NNO structures inside $\mathcal{E}$.
   130	
   131	This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.
   132	
   133	\medskip\noindent\textbf{Keywords.} Natural numbers object; $(\infty,1)$-topos; elementary higher topos; contractibility; homotopy type theory; Rasekh's theorem; Lurie HTT.
   134	
   135	\medskip\noindent\textbf{MSC2020.} 18N60, 03B38, 18B25, 03G30.
   136	\end{abstract}
   137	
   138	\tableofcontents
   139	
   140	\section{Introduction}\label{sec:intro}
   141	
   142	The natural numbers object (NNO) is among the most basic universal constructions of categorical logic. Lawvere's 1964 axiomatisation of the elementary theory of the category of sets (ETCS) treats the NNO as an irreducible primitive on equal footing with the terminal object, the subobject classifier, and exponentials. In any cartesian closed category $\mathcal{C}$ with a terminal object $\mathbf{1}$, an NNO is a triple $(N, 0\colon \mathbf{1}\to N, s\colon N\to N)$ such that for every $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ there exists a unique morphism $h\colon N\to X$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$. Two NNOs are related by a unique isomorphism; the automorphism group of an NNO is trivial. In $\Set$ the NNO is the von Neumann set $\omega = \{0,1,2,\ldots\}$ with successor; up to canonical isomorphism, ``the natural numbers'' is a property, not a choice of structure.
   143	
   144	The HoTT version is finer. Working in the univalent universe $\U$, define
   145	\[
   146	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
   147	\]
   148	where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
   149	
   150	By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
   151	
   152	The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
   153	
   154	\subsection*{Contributions}
   155	
   156	\begin{enumerate}
   157	  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
   158	  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
   159	  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
   160	  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   161	  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
   162	  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
   163	\end{enumerate}
   164	
   165	\subsection*{Outline}
   166	
   167	\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
   168	
   169	\subsection*{Conventions}
   170	
   171	We use $\Cati$ for the $(\infty,2)$-category of $(\infty,1)$-categories and $\Spc$ for the $(\infty,1)$-category of $\infty$-groupoids (``spaces''). For an $(\infty,1)$-category $\mathcal{C}$, $\Map_{\mathcal{C}}(X,Y)\in\Spc$ denotes the mapping space. We write $\mathbf{1}$ for a terminal object. Throughout, ``HoTT'' refers to Martin-L\"of type theory with $\Sigmatype$, $\Pitype$, identity types, finite coproducts, the natural numbers type, function extensionality, and the univalence axiom for at least one hierarchy of universes.
   172	
   173	\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
   174	
   175	We begin by recalling the classical material in a form that will generalise cleanly to the $\infty$-categorical setting.
   176	
   177	\subsection{Pointed endomorphisms and \texorpdfstring{$1$}{1}-NNO}
   178	
   179	\begin{definition}[Pointed dynamical system]\label{def:ptendo}
   180	Let $\mathcal{C}$ be a category with terminal object $\mathbf{1}$. The category $\PtEndo(\mathcal{C})$ has as objects triples $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$, and morphisms $(X,x_{0},f)\to(Y,y_{0},g)$ are arrows $h\colon X\to Y$ in $\mathcal{C}$ such that $h\circ x_{0}=y_{0}$ and $h\circ f = g\circ h$.
   181	\end{definition}
   182	
   183	\begin{definition}[NNO]\label{def:nno}
   184	A natural numbers object in $\mathcal{C}$ is an initial object of $\PtEndo(\mathcal{C})$.
   185	\end{definition}
   186	
   187	Equivalently, viewing the endofunctor $F\colon \mathcal{C}\to \mathcal{C}$ given by $FX = \mathbf{1}+X$ (when coproducts exist), an NNO is an initial $F$-algebra: a pair $(N,[0,s]\colon \mathbf{1}+N\to N)$ initial in $F\text{-}\mathbf{Alg}$.
   188	
   189	\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
   190	If $I,I'$ are initial in any category, there is a unique isomorphism $I\to I'$, and the automorphism group $\mathrm{Aut}(I)$ is trivial.
   191	\end{lemma}
   192	
   193	\begin{proof}
   194	Initiality of $I$ gives a unique map $u\colon I\to I'$, and dually a unique $v\colon I'\to I$. The composites $v\circ u$ and $\id_{I}$ are both morphisms $I\to I$; since $I$ is initial, the hom-set $\Hom(I,I)$ has exactly one element, hence $v\circ u=\id_{I}$. Similarly $u\circ v = \id_{I'}$. Applying the same argument with $I=I'$, every endomorphism of $I$ equals $\id_{I}$, so $\mathrm{Aut}(I)=\{\id_{I}\}$.
   195	\end{proof}
   196	
   197	\begin{lemma}[Lambek]\label{lem:lambek}
   198	If $(I,\iota\colon FI\to I)$ is an initial $F$-algebra, then $\iota$ is an isomorphism.
   199	\end{lemma}
   200	
   201	\begin{proof}
   202	The map $F\iota\colon F(FI)\to FI$ endows $FI$ with the structure of an $F$-algebra, denoted $(FI,F\iota)$. By initiality of $(I,\iota)$ there is a unique $F$-algebra homomorphism $h\colon (I,\iota)\to (FI,F\iota)$, that is, a morphism $h\colon I\to FI$ in $\mathcal{C}$ with
   203	\[
   204	h\circ \iota \;=\; F\iota\circ Fh.
   205	\]
   206	On the other hand, $\iota$ itself is an $F$-algebra homomorphism $(FI,F\iota)\to(I,\iota)$, since $\iota\circ F\iota = \iota\circ F\iota$ trivially. Thus $\iota\circ h\colon (I,\iota)\to (I,\iota)$ is an $F$-algebra endomorphism, and by initiality (applied to $(I,\iota)$ as the source of a unique map to itself) it equals $\id_{I}$. We conclude $\iota\circ h = \id_{I}$. For the other composite, observe
   207	\[
   208	h\circ \iota \;=\; F\iota\circ Fh \;=\; F(\iota\circ h) \;=\; F(\id_{I}) \;=\; \id_{FI},
   209	\]
   210	using functoriality of $F$. Thus $h$ is two-sided inverse to $\iota$, and $\iota$ is an isomorphism.
   211	\end{proof}
   212	
   213	\begin{remark}
   214	The Lambek square depicting the proof is
   215	\[
   216	\begin{tikzcd}[column sep=large, row sep=large]
   217	FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\
   218	I \arrow[r, "h"'] & FI
   219	\end{tikzcd}
   220	\]
   221	which commutes by definition of $h$ as an $F$-algebra homomorphism.
   222	\end{remark}
   223	
   224	\begin{theorem}[Universal property of NNO]\label{thm:up}
   225	Let $(N,0,s)$ be an NNO in $\mathcal{C}$. For every $(X,x_{0},f)$ in $\PtEndo(\mathcal{C})$ there exists a unique $h\colon N\to X$ in $\mathcal{C}$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$.
   226	\end{theorem}
   227	
   228	\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
   229	
   230	We use the standard truncation conventions: a $(-2)$-type is contractible, a $(-1)$-type is a (mere) proposition (a groupoid in which any two objects are connected by at most one morphism), and a $0$-type is a set. A nonempty groupoid in which every hom-set is a singleton is contractible---a $(-2)$-type.
   231	
   232	In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
   233	
   234	\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
   235	In any category $\mathcal{C}$ with terminal object, the groupoid $\NNO(\mathcal{C})$ of NNO structures is either empty or contractible (i.e.\ a $(-2)$-type). Equivalently, the moduli space of NNOs in $\mathcal{C}$ is a (mere) proposition: existence implies essential uniqueness, with no nontrivial automorphisms or higher cells (which are absent at the $1$-categorical level).
   236	\end{theorem}
   237	
   238	\begin{proof}
   239	\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
   240	\end{proof}
   241	
   242	\subsection{HoTT contractibility}\label{sec:hott-contr}
   243	
   244	In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
   245	
   246	\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
   247	\[
   248	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
   249	\]
   250	where
   251	\[
   252	\mathsf{isInitial}(X,x_{0},s) \;\coloneqq\; \Pitype_{(Y,y_{0},f):\PtEndo(\U)}\,\isContr\!\bigl(\Sigmatype_{h:X\to Y}(h\,x_{0}=y_{0})\times\Pitype_{x:X}(h(s\,x)=f(h\,x))\bigr).
   253	\]
   254	\end{definition}
   255	
   256	Note that $\mathsf{isInitial}(X,x_{0},s)$ is, by construction, an iterated $\Pitype$-type whose body is $\isContr$ of a $\Sigmatype$-type; since $\isContr$ is a (mere) proposition and $\Pitype$ of propositions is a proposition, $\mathsf{isInitial}$ is a proposition.
   257	
   258	\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
   259	The type $\NNO$ is contractible. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical witness of initiality given by the standard recursor $\rec_{\N}$ together with its computation rules.
   260	\end{theorem}

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
reviews/infinity-nno-codex-review-round-2.md
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
papers/latex/infinity-nno.toc
papers/latex/langlands-analytic-number-theory.aux
papers/latex/coalgebraic-transcendentals.tex
papers/latex/langlands-analytic-number-theory.log
papers/latex/etcs-izf-folds.fdb_latexmk
papers/latex/directed-univalence.tex
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
/usr/local/bin/zsh -lc "ls -la papers/latex && find papers/latex -maxdepth 2 -type f \\( -name '*.bib' -o -name '*.sty' -o -name '*.tex' -o -name 'Makefile' -o -name 'latexmkrc' \\) -print" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
total 4784
drwxr-xr-x  34 mlong  staff    1088 May  4 17:36 .
drwxr-xr-x   4 mlong  staff     128 May  4 17:04 ..
-rw-r--r--   1 mlong  staff   60725 May  4 17:36 coalgebraic-transcendentals.tex
-rw-r--r--   1 mlong  staff   11998 May  4 17:37 cubical-hiit-cauchy.aux
-rw-r--r--   1 mlong  staff   31178 May  4 17:37 cubical-hiit-cauchy.log
-rw-r--r--   1 mlong  staff    8453 May  4 17:37 cubical-hiit-cauchy.out
-rw-r--r--   1 mlong  staff  380402 May  4 17:34 cubical-hiit-cauchy.pdf
-rw-r--r--   1 mlong  staff   49162 May  4 17:36 cubical-hiit-cauchy.tex
-rw-r--r--   1 mlong  staff    4342 May  4 17:37 cubical-hiit-cauchy.toc
-rw-r--r--   1 mlong  staff   14069 May  4 17:26 directed-univalence.aux
-rw-r--r--   1 mlong  staff   36875 May  4 17:26 directed-univalence.log
-rw-r--r--   1 mlong  staff    8138 May  4 17:26 directed-univalence.out
-rw-r--r--   1 mlong  staff   44977 May  4 17:36 directed-univalence.tex
-rw-r--r--   1 mlong  staff    3879 May  4 17:26 directed-univalence.toc
-rw-r--r--   1 mlong  staff   17125 May  4 17:36 etcs-izf-folds.aux
-rw-r--r--   1 mlong  staff   26461 May  4 17:36 etcs-izf-folds.fdb_latexmk
-rw-r--r--   1 mlong  staff   27429 May  4 17:36 etcs-izf-folds.fls
-rw-r--r--   1 mlong  staff   32682 May  4 17:36 etcs-izf-folds.log
-rw-r--r--   1 mlong  staff   13232 May  4 17:36 etcs-izf-folds.out
-rw-r--r--   1 mlong  staff  373610 May  4 17:36 etcs-izf-folds.pdf
-rw-r--r--   1 mlong  staff   63492 May  4 17:35 etcs-izf-folds.tex
-rw-r--r--   1 mlong  staff    6113 May  4 17:36 etcs-izf-folds.toc
-rw-r--r--   1 mlong  staff    9532 May  4 17:36 infinity-nno.aux
-rw-r--r--   1 mlong  staff   32957 May  4 17:36 infinity-nno.log
-rw-r--r--   1 mlong  staff    6227 May  4 17:36 infinity-nno.out
-rw-r--r--   1 mlong  staff  352805 May  4 17:36 infinity-nno.pdf
-rw-r--r--   1 mlong  staff   48711 May  4 17:36 infinity-nno.tex
-rw-r--r--   1 mlong  staff    2767 May  4 17:36 infinity-nno.toc
-rw-r--r--   1 mlong  staff   25161 May  4 17:34 langlands-analytic-number-theory.aux
-rw-r--r--   1 mlong  staff   49014 May  4 17:34 langlands-analytic-number-theory.log
-rw-r--r--   1 mlong  staff   17657 May  4 17:34 langlands-analytic-number-theory.out
-rw-r--r--   1 mlong  staff  435249 May  4 17:34 langlands-analytic-number-theory.pdf
-rw-r--r--   1 mlong  staff   78192 May  4 17:33 langlands-analytic-number-theory.tex
-rw-r--r--   1 mlong  staff    7974 May  4 17:34 langlands-analytic-number-theory.toc
papers/latex/etcs-izf-folds.tex
papers/latex/langlands-analytic-number-theory.tex
papers/latex/cubical-hiit-cauchy.tex
papers/latex/directed-univalence.tex
papers/latex/coalgebraic-transcendentals.tex
papers/latex/infinity-nno.tex

codex
The source is a standalone article with generated aux/log/pdf already present. I’m reading the rest of the file and the existing log, then I’ll re-run compilation to catch stale-reference and box diagnostics.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '261,560p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   261	
   262	\begin{proof}
   263	We must show $\isContr(\NNO)$, i.e.\ produce a centre $c\in\NNO$ and a continuous family of paths from $c$ to every point of $\NNO$.
   264	
   265	\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
   266	\[
   267	\Sigmatype_{h\colon \N\to Y}(h\,\zero=y_{0})\times\Pitype_{n:\N}(h(\suc\,n)=f(h\,n))
   268	\]
   269	is contractible: $h=\rec_{\N}\,y_{0}\,f$ together with the $\refl$-witnesses of the equations is the centre, and the contraction is provided by the $\ind_{\N}$ step above.
   270	
   271	\emph{Contraction onto the centre.} Take any $(X,x_{0},s,\iota)\in\NNO$. We must produce a path
   272	\[
   273	p\colon (\N,\zero,\suc,\star) \;=\; (X,x_{0},s,\iota) \quad\text{in}\quad \NNO.
   274	\]
   275	Apply $\iota$ to the pointed system $(\N,\zero,\suc)$: it yields a contractible type whose centre is a unique map $u\colon X\to \N$ with $u\,x_{0}=\zero$ and $u\circ s\sim \suc\circ u$. Apply $\star$ to $(X,x_{0},s)$: a unique map $v\colon \N\to X$ with $v\,\zero=x_{0}$ and $v\circ \suc\sim s\circ v$. The composites $u\circ v\colon \N\to\N$ and $\id_{\N}$ both satisfy the universal-property equations for $(\N,\zero,\suc,\star)$; uniqueness inside the contractible type of recursors forces $u\circ v=\id_{\N}$ via $\ind_{\N}$, and likewise $v\circ u=\id_{X}$ via $\iota$. Thus $u\colon X\eqv\N$ is an equivalence (with quasi-inverse $v$). Univalence ($\ua$) converts the equivalence into a path $p_{1}\colon X = \N$ in $\U$. Transporting $(x_{0},s,\iota)$ along $p_{1}$ produces $(\zero,\suc,\star')$ for some witness $\star'\colon \mathsf{isInitial}(\N,\zero,\suc)$. Since $\mathsf{isInitial}$ is a proposition, $\star'=\star$. Pairing yields the required path $p$ in $\NNO$.
   276	
   277	The map $(X,x_{0},s,\iota)\mapsto p$ is itself constructed by transport and is thus a continuous family of paths from $c$, exhibiting $c$ as the centre of contraction.
   278	\end{proof}
   279	
   280	\begin{remark}[The infinite tower]
   281	The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
   282	\end{remark}
   283	
   284	\begin{remark}[Why this is stronger]
   285	\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
   286	\end{remark}
   287	
   288	\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}\label{sec:lurie}
   289	
   290	We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
   291	
   292	\subsection{Lurie's parametrised NNO}
   293	
   294	\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
   295	Let $\mathcal{E}$ be a presentable $(\infty,1)$-topos with terminal object $\mathbf{1}$. An NNO is an object $N\in\mathcal{E}$ together with morphisms $0\colon \mathbf{1}\to N$ and $s\colon N\to N$ such that for every diagram $\mathbf{1}\xrightarrow{x_{0}}X\xrightarrow{f}X$ in $\mathcal{E}$, the mapping space
   296	\[
   297	\Map_{\PtEndo(\mathcal{E})}\bigl((N,0,s),(X,x_{0},f)\bigr)
   298	\]
   299	is contractible.
   300	\end{definition}
   301	
   302	Here $\PtEndo(\mathcal{E})$ is the $(\infty,1)$-category of pointed endomorphisms in $\mathcal{E}$. Concretely, an object of $\PtEndo(\mathcal{E})$ is a triple $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ where $X\in\mathcal{E}$, $x_{0}$ is a global element, and $f$ is an endomorphism. A morphism $(X,x_{0},f)\to(Y,y_{0},g)$ is a tuple $(h, \alpha, \beta)$ where $h\colon X\to Y$ is a morphism in $\mathcal{E}$, $\alpha\colon h\circ x_{0}\sim y_{0}$ is a $1$-cell in $\Map_{\mathcal{E}}(\mathbf{1},Y)$, and $\beta\colon h\circ f\sim g\circ h$ is a $1$-cell in $\Map_{\mathcal{E}}(X,Y)$, together with the higher cells provided by composing in $\mathcal{E}$. In symbols this is the $\infty$-categorical limit (formally, an iterated comma object)
   303	\[
   304	\PtEndo(\mathcal{E}) \;\coloneqq\; \mathcal{E}_{\mathbf{1}/}\;\times_{\mathcal{E}}\; \mathcal{E}^{[1]}
   305	\]
   306	parametrising pairs $(x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$.
   307	
   308	\begin{remark}
   309	Equivalently, an $(\infty,1)$-NNO is an initial object in $\PtEndo(\mathcal{E})$, where ``initial'' is interpreted in the $(\infty,1)$-categorical sense: the mapping space to every other object is contractible. Lurie phrases the definition via a small-colimit-preserving recursion functor; the equivalence is straightforward.
   310	\end{remark}
   311	
   312	\begin{example}
   313	When $\mathcal{E}=\Spc$, the NNO is the constant functor at $\N$. Its existence and contractibility of the mapping space is the homotopy-coherent version of the Set-theoretic recursion principle.
   314	\end{example}
   315	
   316	\begin{example}
   317	For $\mathcal{E}=\mathrm{PSh}(\mathcal{C})$ the $(\infty,1)$-category of presheaves of spaces on a small $(\infty,1)$-category $\mathcal{C}$, the NNO is the constant presheaf at $\N$, $c\mapsto \N$.
   318	\end{example}
   319	
   320	\begin{example}
   321	For $\mathcal{E}=\mathrm{Sh}(X)$ the $(\infty,1)$-topos of sheaves on a topological space $X$, the NNO is the constant sheaf $\underline{\N}$.
   322	\end{example}
   323	
   324	\subsection{Existence in presentable \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
   325	
   326	\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
   327	Every presentable $(\infty,1)$-topos has an NNO.
   328	\end{theorem}
   329	
   330	\begin{proof}[Sketch]
   331	Presentability ensures small colimits and a small generating set. Build $N$ as the sequential colimit
   332	\[
   333	N \;=\; \colim\bigl(\mathbf{1}\xrightarrow{j_{0}}\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{1}}\mathbf{1}\sqcup\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{2}}\cdots\bigr),
   334	\]
   335	where $j_{n}$ adds a new copy of $\mathbf{1}$. Equivalently, $N=\bigsqcup_{n\geq 0}\mathbf{1}$. Verification of the universal property uses the universal property of sequential colimits and contractibility of the relevant mapping spaces.
   336	\end{proof}
   337	
   338	\subsection{Elementary \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes and Rasekh's NNO}
   339	
   340	A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
   341	\begin{enumerate}
   342	  \item finite limits,
   343	  \item locally cartesian closure,
   344	  \item subobject classifier,
   345	  \item object classifier (a univalent universe of small types),
   346	  \item finite colimits.
   347	\end{enumerate}
   348	They need not be presentable.
   349	
   350	\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
   351	Every elementary $(\infty,1)$-topos has an NNO. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.
   352	\end{theorem}
   353	
   354	\begin{proof}[Sketch of Rasekh's argument]
   355	The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO. The argument uses descent, locality, and classification of univalent maps.
   356	\end{proof}
   357	
   358	\begin{remark}
   359	Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
   360	\end{remark}
   361	
   362	\subsection{Equivalence with the \texorpdfstring{$1$}{1}-NNO when \texorpdfstring{$\mathcal{E}$}{E} is a \texorpdfstring{$1$}{1}-topos}
   363	
   364	\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
   365	Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
   366	\end{theorem}
   367	
   368	\begin{proof}
   369	The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space
   370	\[
   371	\Map_{\PtEndo(\mathcal{E}^{(\infty)})}\bigl((N,0,s),(X,x_{0},f)\bigr)
   372	\]
   373	is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible.
   374	\end{proof}
   375	
   376	\section{Higher coherences}\label{sec:higher-coh}
   377	
   378	Why is the $(\infty,1)$-NNO ``more delicate''? The naive answer is: in a $1$-category, ``unique map'' is a single condition. In an $(\infty,1)$-category, ``unique map'' must be promoted to ``unique up to coherent homotopy''. Concretely, given two NNOs $N_{1}, N_{2}$ in $\mathcal{E}$, we need a comparison map $u\colon N_{1}\to N_{2}$ together with the homotopies filling the squares
   379	\[
   380	\begin{tikzcd}[column sep=large, row sep=large]
   381	\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\
   382	& N_{2} \arrow[r, "s_{2}"'] & N_{2}
   383	\end{tikzcd}
   384	\]
   385	Filling the upper-left triangle is a $1$-cell $\alpha\colon u\circ 0_{1}\sim 0_{2}$, and filling the right-hand square is a $1$-cell $\beta\colon u\circ s_{1}\sim s_{2}\circ u$. Beyond these, we need:
   386	\begin{enumerate}
   387	  \item compatibilities of these homotopies (i.e.\ $2$-cells filling in the obvious squares),
   388	  \item compatibilities of those compatibilities ($3$-cells),
   389	  \item and so on, ad infinitum.
   390	\end{enumerate}
   391	
   392	\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
   393	The initiality of an $(\infty,1)$-NNO already encodes, in a single property, the entire infinite tower of coherence data sketched above. Concretely, for any two $(\infty,1)$-NNOs $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ in an $(\infty,1)$-category $\mathcal{E}$, the mapping space
   394	\[
   395	M \;\coloneqq\; \Map_{\PtEndo(\mathcal{E})}\bigl((N_{1},0_{1},s_{1}),(N_{2},0_{2},s_{2})\bigr)
   396	\]
   397	is contractible.
   398	\end{proposition}
   399	
   400	\begin{proof}
   401	By definition of $(\infty,1)$-NNO, both $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ are initial objects of $\PtEndo(\mathcal{E})$. Initial objects in any $(\infty,1)$-category have contractible mapping spaces to every object, in particular to each other. Contractibility of $M$ is equivalent to existence of a $0$-cell (the comparison map $u$ and the homotopies $\alpha,\beta$), uniqueness up to a contractible space of $1$-cells (the next-level coherences), uniqueness of those up to a contractible space of $2$-cells, and so on inductively at every level $n\geq 0$.
   402	\end{proof}
   403	
   404	\begin{remark}
   405	The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
   406	\begin{itemize}
   407	  \item $\pi_{0}M = *$: existence and uniqueness up to homotopy of the comparison map;
   408	  \item $\pi_{n}M = 0$ for all $n\geq 1$: triviality of all higher loop spaces, i.e.\ the entire tower of compatibilities.
   409	\end{itemize}
   410	\end{remark}
   411	
   412	\subsection{Truncation level of \texorpdfstring{$\mathrm{NNO}(\mathcal{E})$}{NNO(E)}}
   413	
   414	Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.
   415	
   416	\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
   417	For any $(\infty,1)$-topos $\mathcal{E}$ in which an NNO exists, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   418	\end{theorem}
   419	
   420	\begin{proof}
   421	The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
   422	\end{proof}
   423	
   424	\section{The main theorem: contractibility for \texorpdfstring{$(\infty,1)$}{(infinity,1)}-NNOs}\label{sec:main}
   425	
   426	\subsection{Statement and proof}
   427	
   428	We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
   429	
   430	\begin{theorem}[Main theorem]\label{thm:main}
   431	Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos by \cite{Shulman2019}). Then:
   432	\begin{enumerate}
   433	  \item There exists an $(\infty,1)$-NNO in $\mathcal{E}$ (\cref{def:lurie-nno}).
   434	  \item The space $\mathrm{NNO}(\mathcal{E})$ is contractible (a $(-2)$-type).
   435	  \item Any two $(\infty,1)$-NNOs in $\mathcal{E}$ are connected by an essentially unique equivalence.
   436	  \item The automorphism $\infty$-group of an $(\infty,1)$-NNO is contractible.
   437	\end{enumerate}
   438	\end{theorem}
   439	
   440	\begin{proof}
   441	By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
   442	
   443	\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
   444	
   445	Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
   446	\end{proof}
   447	
   448	\subsection{What ``contractible'' contributes beyond ``unique iso''}
   449	
   450	\begin{remark}[Higher coherence cancellation]
   451	\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
   452	\begin{itemize}
   453	  \item a $1$-cell witnessing $h\circ 0\sim x_{0}$,
   454	  \item a $1$-cell witnessing $h\circ s\sim f\circ h$,
   455	  \item $2$-cells expressing that the choice of $1$-cells is unique up to homotopy,
   456	  \item $\ldots$
   457	\end{itemize}
   458	\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
   459	\end{remark}
   460	
   461	\subsection{Identification with Rasekh's NNO}
   462	
   463	\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
   464	Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
   465	\end{theorem}
   466	
   467	\begin{proof}
   468	By \cref{thm:main}(2), $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (Theorem~\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
   469	\end{proof}
   470	
   471	\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
   472	
   473	We now sharpen the discussion of Rasekh's circle-construction.
   474	
   475	\subsection{The role of \texorpdfstring{$\Sone$}{S\^{}1}}
   476	
   477	In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
   478	
   479	\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
   480	$\Omega\Sone\eqv\Z$ in any elementary $(\infty,1)$-topos $\mathcal{E}$, where $\Z$ is the group object obtained from the type of integers in $\mathcal{E}$.
   481	\end{theorem}
   482	
   483	\begin{proof}[Idea]
   484	Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration
   485	\[
   486	\mathrm{code}\colon \Sone\to \U \qquad\text{with}\qquad \mathrm{code}(\base)\eqv\Z,
   487	\]
   488	where the loop $\looppath$ acts as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
   489	\end{proof}
   490	
   491	\begin{remark}[Recovery of $\N$ from $\Z$]
   492	Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
   493	\end{remark}
   494	
   495	\subsection{Why this fails in \texorpdfstring{$1$}{1}-topos theory}
   496	
   497	In a $1$-topos $\mathcal{E}_{1}$, every type is $0$-truncated, so $\Omega\Sone = \Sone\times_{\Sone}\Sone$ is the singleton (a single point with no nontrivial loops, since paths don't exist). The encode--decode argument collapses, and we cannot recover $\Z$ or $\N$ this way. The $\infty$-categorical setting is therefore not just a technical generalisation: it makes essentially new constructions possible.
   498	
   499	\subsection{Power objects vs object classifier}
   500	
   501	A subtle point in the elementary axiomatic is whether one assumes power objects (like $1$-toposes) or an object classifier (Lurie's $(\infty,1)$-version). Power objects classify subobjects; the object classifier classifies all small maps.
   502	
   503	\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
   504	In an elementary $(\infty,1)$-topos with object classifier $\U$, the NNO can be constructed without separate appeal to power objects.
   505	\end{proposition}
   506	
   507	\begin{proof}
   508	The construction in \cref{thm:rasekh-hott} uses only $\U$ and pushouts; no separate power-object axiom is invoked.
   509	\end{proof}
   510	
   511	\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
   512	
   513	Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
   514	
   515	\subsection{An NNO in STT}
   516	
   517	In STT, one can define the type
   518	\[
   519	\NNO_{\mathrm{dir}} \;\coloneqq\; \Sigmatype_{X}\,\Sigmatype_{x_{0}\colon \mathbf{1}\to X}\,\Sigmatype_{s\colon X\to X}\,\mathsf{isInitial}_{\mathrm{dir}}(X,x_{0},s),
   520	\]
   521	where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
   522	
   523	\begin{remark}[Open]
   524	A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.
   525	\end{remark}
   526	
   527	\subsection{Comparing internal language flavours}
   528	
   529	\begin{itemize}
   530	  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
   531	  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}); types are general $(\infty,1)$-spaces.
   532	  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
   533	\end{itemize}
   534	
   535	For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.
   536	
   537	\section{Open problems}\label{sec:open}
   538	
   539	\begin{enumerate}
   540	  \item \textbf{Internal-to-external transfer.}
   541	  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
   542	  \item \textbf{Elementary case (Rasekh).}
   543	  Prove \cref{thm:contractibility-infty} for arbitrary elementary $(\infty,1)$-toposes without invoking Shulman's theorem; the latter is currently stated for Grothendieck $(\infty,1)$-toposes and is only conjectured for the elementary case.
   544	  \item \textbf{Synthetic NNO contractibility in STT.}
   545	  Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory, using only Rezk-completeness of the universe of discrete types.
   546	  \item \textbf{Course-of-values and primitive recursion.}
   547	  Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
   548	  \item \textbf{Lurie's parametrised NNO.}
   549	  Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here. Show that the parametrisation is functorial up to contractible choice.
   550	  \item \textbf{Cubical Agda formalisation.}
   551	  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
   552	  \item \textbf{Univalent foundations of arithmetic.}
   553	  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
   554	\end{enumerate}
   555	
   556	\section{Discussion}
   557	
   558	\subsection{Philosophical remarks}
   559	
   560	The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?''. The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible''.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '561,920p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   561	
   562	\subsection{Relationship to other modular foundations}
   563	
   564	In the modular framework adopted by the broader research programme, the NNO sits at the bottom of a tower:
   565	\begin{enumerate}
   566	  \item \textbf{NNO} (this paper): provides arithmetic.
   567	  \item \textbf{Real numbers HIIT}: built on $\N$ (Paper~V \S5).
   568	  \item \textbf{Coalgebraic transcendentals}: built on streams over $\R$ (Topic 1).
   569	  \item \textbf{$(\infty,1)$-Langlands}: built on $\R, \Q_{p}, \mathbb{A}$ (Topic 2).
   570	  \item \textbf{Higher inductive types of all kinds}: built on the entire HoTT framework (Topic 6).
   571	\end{enumerate}
   572	The contractibility of NNO at the $(\infty,1)$-level ensures that everything built on top of NNO inherits a unique, canonical foundation. This is the modular composition principle: each layer is uniquely determined by the previous one, up to contractible choice.
   573	
   574	\subsection{Limitations}
   575	
   576	\begin{itemize}
   577	  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
   578	  \item Higher coherence verification, while ``automatic'' in HoTT, requires actual computation in concrete models. We have not exhibited explicit cellular witnesses for, say, the bisimplicial set model.
   579	  \item The connection to Rasekh's circle-construction is via contractibility: we know the two NNOs agree, but we do not give an explicit comparison map.
   580	\end{itemize}
   581	
   582	\section{Conclusion}
   583	
   584	The natural numbers object is one of the simplest universal constructions in category theory; nonetheless, lifting it from the $1$-categorical to the $(\infty,1)$-categorical setting illustrates the full power of modern higher-categorical machinery. The key insight is that contractibility, as defined in HoTT (a single propositional condition), automatically encodes an infinite tower of homotopy coherences. This makes HoTT the ideal language to state and prove $(\infty,1)$-categorical universal properties without the bookkeeping of explicit cell-by-cell verification.
   585	
   586	We have presented:
   587	\begin{itemize}
   588	  \item the $1$-categorical NNO and its contractibility (\cref{thm:contr-1cat});
   589	  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
   590	  \item Rasekh's circle-construction of an NNO in any elementary $(\infty,1)$-topos (\cref{thm:rasekh});
   591	  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;
   592	  \item a synthetic perspective via simplicial type theory.
   593	\end{itemize}
   594	
   595	The remaining open problems---particularly the synthetic STT proof and the Cubical Agda formalisation---are within reach of current methods. Once completed, they will close the gap between the conceptual ``contractibility solves it'' answer and the explicit cellular-coherent verification.
   596	
   597	\section*{Acknowledgements}
   598	
   599	The author thanks the Magneton Research Collective for ongoing discussion, and acknowledges the foundational work of Lurie, Rasekh, Shulman, Riehl, and the HoTT community.
   600	
   601	\begin{thebibliography}{99}
   602	
   603	\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009. arXiv:math/0608040.
   604	
   605	\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018. \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
   606	
   607	\bibitem{Rasekh2018ETop} N.~Rasekh, \emph{A Theory of Elementary Higher Toposes}, arXiv:1805.03805, 2018.
   608	
   609	\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377. arXiv:1809.01734.
   610	
   611	\bibitem{Shulman2019} M.~Shulman, \emph{All $(\infty,1)$-toposes have strict univalent universes}, arXiv:1904.07004, 2019.
   612	
   613	\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book/}.
   614	
   615	\bibitem{LicataShulman} D.~R.~Licata and M.~Shulman, \emph{Calculating the fundamental group of the circle in homotopy type theory}, LICS 2013, 223--232.
   616	
   617	\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224. arXiv:1705.07442.
   618	
   619	\bibitem{GWB2024} D.~Gratzer, J.~Weinberger, and U.~Buchholtz, \emph{Directed univalence in simplicial homotopy type theory}, arXiv:2407.09146, 2024.
   620	
   621	\bibitem{SchreiberShulman} U.~Schreiber and M.~Shulman, \emph{Quantum gauge field theory in cohesive homotopy type theory}, EPTCS \textbf{158} (2014), 109--126.
   622	
   623	\bibitem{Lambek1968} J.~Lambek, \emph{A fixpoint theorem for complete categories}, Math. Z. \textbf{103} (1968), 151--161.
   624	
   625	\bibitem{Lawvere1964} F.~W.~Lawvere, \emph{An elementary theory of the category of sets}, PNAS \textbf{52} (1964), 1506--1511.
   626	
   627	\bibitem{Awodey2010} S.~Awodey, \emph{Type theory and homotopy}, in \emph{Epistemology versus Ontology}, Springer, 2012, 183--201.
   628	
   629	\bibitem{Benacerraf1965} P.~Benacerraf, \emph{What numbers could not be}, Philosophical Review \textbf{74} (1965), 47--73.
   630	
   631	\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011. \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
   632	
   633	\bibitem{MartinLof1984} P.~Martin-L\"of, \emph{Intuitionistic Type Theory}, Bibliopolis, Naples, 1984.
   634	
   635	\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010. \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
   636	
   637	\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008. \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
   638	
   639	\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
   640	
   641	\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
   642	
   643	\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
   644	
   645	\bibitem{Synthesis} YonedaAI, \emph{The Univalent Correspondence: Synthesis}, Magneton Research Collective, 2026.
   646	
   647	\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J. Eur. Math. Soc. \textbf{23} (2021), 2071--2126.
   648	
   649	\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015. arXiv:1611.02108.
   650	
   651	\bibitem{Riehl2025} E.~Riehl, \emph{Synthetic perspectives on spaces and categories}, arXiv:2510.15795, 2025.
   652	
   653	\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos}. \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
   654	
   655	\bibitem{nLabNNO} The nLab, \emph{natural numbers object}. \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
   656	
   657	\end{thebibliography}
   658	
   659	\end{document}

exec
/usr/local/bin/zsh -lc 'rg -n "''^(LaTeX Warning|Package .* Warning|Overfull|Underfull|!|l'"\\.|Reference|Citation|Undefined|Missing|Runaway|Emergency|Fatal)\" papers/latex/infinity-nno.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
655:Package everypage Warning: Functionality similar to this package has recently
661:Package everypage Warning: You appear to be running a version of LaTeX
779:Overfull \hbox (27.81357pt too wide) in paragraph at lines 532--533
786:Overfull \hbox (25.34355pt too wide) in paragraph at lines 542--544
792:Overfull \hbox (15.34981pt too wide) in paragraph at lines 552--554
805:LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

codex
The existing log has no fatal errors, but it does report three overfull boxes and a rerun warning. I’m compiling into a temporary output directory now so I don’t churn the checked-in aux/log/pdf while confirming current diagnostics.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(label|ref|cref|Cref|cite)\\{|undefined|TODO|FIXME|\\\\pageref|\\\\autoref\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(label|ref|cref|Cref|cite)\{|undefined|TODO|FIXME|\pageref|\autoref)
                                                                           ^
error: unopened group

exec
/usr/local/bin/zsh -lc "sed -n '760,800p' papers/latex/infinity-nno.log && sed -n '640,670p' papers/latex/infinity-nno.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:

(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd
File: umsa.fd 2013/01/14 v3.01 AMS symbols A
)
LaTeX Font Info:    Trying to load font information for U+msb on input line 123
.

(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd
File: umsb.fd 2013/01/14 v3.01 AMS symbols B
)
(./infinity-nno.toc [1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updma
p/pdftex.map}

{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]
)
\tf@toc=\write5
\openout5 = `infinity-nno.toc'.

 [2] [3] [4] [5] [6] [7] [8] [9] [10] [11] [12]
Overfull \hbox (27.81357pt too wide) in paragraph at lines 532--533
[]\OT1/cmr/m/n/12 Cohesive HoTT: dif-fer-en-tial and ge-o-met-ric am-bi-ent $(\
OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/12 1)$-toposes (Schreiber--Shu
lman [[]]). 
 []


Overfull \hbox (25.34355pt too wide) in paragraph at lines 542--544
\OT1/cmr/m/n/12 toposes with-out in-vok-ing Shul-man's the-o-rem. The lat-ter i
s cur-rently stated for Grothendieck
 []

[13]
Overfull \hbox (15.34981pt too wide) in paragraph at lines 552--554
\OT1/cmr/m/n/12 metic the-o-rems (as-so-cia-tiv-ity of $+$, com-mu-ta-tiv-ity, 
dis-tribu-tiv-ity) at the $(\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/1
2 1)$-categorical
 []

[14] [15] [16] [17] (./infinity-nno.aux)
 ***********
LaTeX2e <2025-11-01>
LaTeX Info: Redefining \crefrange on input line 2370.
LaTeX Info: Redefining \Crefrange on input line 2370.
LaTeX Info: Redefining \cpageref on input line 2370.
LaTeX Info: Redefining \Cpageref on input line 2370.
LaTeX Info: Redefining \cpagerefrange on input line 2370.
LaTeX Info: Redefining \Cpagerefrange on input line 2370.
LaTeX Info: Redefining \labelcref on input line 2370.
LaTeX Info: Redefining \labelcpageref on input line 2370.
Package cleveref Info: `amsthm' support loaded on input line 3026.
)
==> First Aid for cleveref.sty applied!
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

)
\c@theorem=\count335

exec
/usr/local/bin/zsh -lc 'tmp=$(mktemp -d /tmp/infinity-nno-tex.XXXXXX); latexmk -pdf -interaction=nonstopmode -halt-on-error -file-line-error -outdir="$tmp" papers/latex/infinity-nno.tex; status=$?; echo "TMP=$tmp STATUS=$status"; rg -n "''^(LaTeX Warning|Package .* Warning|Overfull|Underfull|!|l'"\\.|Reference|Citation|Undefined|Missing|Runaway|Emergency|Fatal)\" \""'$tmp/infinity-nno.log" || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 1708ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/infinity-nno.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/xurl/xurl.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty))
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
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
 (/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
No file infinity-nno.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/l
ocal/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]

LaTeX Warning: Reference `sec:background' on page 2 undefined on input line 148
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 148
.


LaTeX Warning: Citation `Shulman2019' on page 2 undefined on input line 150.


LaTeX Warning: Citation `LurieHTT' on page 2 undefined on input line 152.


LaTeX Warning: Citation `LurieSAG' on page 2 undefined on input line 152.


LaTeX Warning: Citation `Rasekh2021' on page 2 undefined on input line 152.


LaTeX Warning: Reference `sec:background' on page 2 undefined on input line 157
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 157
.

[2]

LaTeX Warning: Reference `sec:lurie' on page 3 undefined on input line 158.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 158.



LaTeX Warning: Reference `thm:lurie-nno-equiv' on page 1 undefined on input lin
e 158.


LaTeX Warning: Reference `sec:higher-coh' on page 3 undefined on input line 159
.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 159.


LaTeX Warning: Reference `sec:main' on page 3 undefined on input line 160.


LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 160.


LaTeX Warning: Reference `sec:rasekh' on page 3 undefined on input line 161.


LaTeX Warning: Reference `sec:stt' on page 3 undefined on input line 162.


LaTeX Warning: Reference `sec:open' on page 3 undefined on input line 162.


LaTeX Warning: Reference `sec:background' on page 1 undefined on input line 167
.


LaTeX Warning: Reference `sec:lurie' on page 1 undefined on input line 167.


LaTeX Warning: Reference `sec:higher-coh' on page 1 undefined on input line 167
.


LaTeX Warning: Reference `sec:main' on page 1 undefined on input line 167.


LaTeX Warning: Reference `sec:rasekh' on page 1 undefined on input line 167.


LaTeX Warning: Reference `sec:stt' on page 1 undefined on input line 167.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 167.

[3]

LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 232.

[4]

LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 239.


LaTeX Warning: Citation `PaperIII' on page 5 undefined on input line 244.


LaTeX Warning: Citation `PaperV' on page 5 undefined on input line 244.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 244.


LaTeX Warning: Citation `PaperIII' on page 5 undefined on input line 258.


LaTeX Warning: Citation `PaperV' on page 5 undefined on input line 258.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 265.

[5]

LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 281
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 285
.


LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 285
.


LaTeX Warning: Reference `def:nno' on page 1 undefined on input line 290.

[6]

LaTeX Warning: Citation `Rasekh2018ETop' on page 7 undefined on input line 340.


[7]

LaTeX Warning: Citation `Rasekh2021' on page 8 undefined on input line 350.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 365.



LaTeX Warning: Reference `def:ptendo' on page 1 undefined on input line 373.

[8]

LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 405.


LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 421.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 421.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 421.

[9]

LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 428.


LaTeX Warning: Citation `Shulman2019' on page 10 undefined on input line 431.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 433.



LaTeX Warning: Reference `def:nno-type' on page 1 undefined on input line 441.


LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 441
.


LaTeX Warning: Citation `KapulkinLumsdaine' on page 10 undefined on input line 
443.


LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 445
.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 445.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 451.

[10]

LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 458.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 464.



LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 468.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 468.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 468.



LaTeX Warning: Citation `LicataShulman' on page 11 undefined on input line 484.



LaTeX Warning: Reference `thm:rasekh-hott' on page 1 undefined on input line 49
2.


LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 492
.

[11]

LaTeX Warning: Reference `thm:rasekh-hott' on page 1 undefined on input line 50
8.


LaTeX Warning: Citation `RiehlShulman2017' on page 12 undefined on input line 5
13.


LaTeX Warning: Citation `GWB2024' on page 12 undefined on input line 521.


LaTeX Warning: Citation `GWB2024' on page 12 undefined on input line 524.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 524.


LaTeX Warning: Citation `Shulman2019' on page 12 undefined on input line 530.


LaTeX Warning: Citation `RiehlShulman2017' on page 12 undefined on input line 5
31.


Overfull \hbox (1.72295pt too wide) in paragraph at lines 531--532
[]\OT1/cmr/m/n/12 STT in-ter-nal lan-guage: $(\OMS/cmsy/m/n/12 1\OML/cmm/m/it/1
2 ; \OT1/cmr/m/n/12 1)$-categories (Riehl--Shulman [[]]); types are gen-eral $(
\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/12 1)$-
[12]

LaTeX Warning: Citation `SchreiberShulman' on page 13 undefined on input line 5
32.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 541.


LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 543.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 551.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 553.


Overfull \hbox (14.54877pt too wide) in paragraph at lines 552--554
[]\OT1/cmr/bx/n/12 Univalent foun-da-tions of arith-metic. \OT1/cmr/m/n/12 Use 
[] to for-malise ba-sic arith-metic theorems---

LaTeX Warning: Citation `Benacerraf1965' on page 13 undefined on input line 560
.

[13]

LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 577
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 588
.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 589.



LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 589
.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 590.

[14]

LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 591.

[15] [16] (/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux)

LaTeX Warning: There were undefined references.


LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.


Package rerunfilecheck Warning: File `infinity-nno.out' has changed.
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
t/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/cm/cmr7.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/c
m-super/sfrm1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm-
super/sfrm1200.pfb>
Output written on /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.pdf (16 pag
es, 343378 bytes).
Transcript written on /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log.
Latexmk: Getting log file '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log'
Latexmk: Examining '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.fls'
Latexmk: Examining '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log'
Latexmk: Missing input file 'infinity-nno.toc' message in .log file:
  No file infinity-nno.toc.
Latexmk: References changed.
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux
  /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.out
  /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.toc

------------
Run number 2 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/infinity-nno-tex.1seLqV"  "papers/latex/infinity-nno.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/infinity-nno.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/xurl/xurl.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty))
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
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
 (/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.out)
(/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.out)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.toc [1{/usr/local/texlive/20
26/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/local/texlive/2026/texmf-
dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]) [2] [3] [4] [5] [6] [7]
[8] [9] [10] [11] [12]
Overfull \hbox (1.22289pt too wide) in paragraph at lines 531--532
[]\OT1/cmr/m/n/12 STT in-ter-nal lan-guage: $(\OMS/cmsy/m/n/12 1\OML/cmm/m/it/1
2 ; \OT1/cmr/m/n/12 1)$-categories (Riehl--Shulman [[]]); types are gen-eral $(
\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/12 1)$-

Overfull \hbox (19.6862pt too wide) in paragraph at lines 542--544
\OT1/cmr/m/n/12 toposes with-out in-vok-ing Shul-man's the-o-rem; the lat-ter i
s cur-rently stated for Grothendieck
[13] [14] [15] [16] [17] (/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux
)

LaTeX Warning: Label(s) may have changed. Rerun to get cross-references right.

 )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/cm/cmr7.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/c
m-super/sfrm1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm-
super/sfrm1200.pfb>
Output written on /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.pdf (17 pag
es, 352790 bytes).
Transcript written on /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log.
Latexmk: Getting log file '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log'
Latexmk: Examining '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.fls'
Latexmk: Examining '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log'
Latexmk: References changed.
Latexmk: Log file says output to '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.pdf'
Latexmk: applying rule 'pdflatex'...
Rule 'pdflatex':  Reasons for rerun
Changed files or newly in use/created:
  /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux
  /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.toc

------------
Run number 3 of rule 'pdflatex'
------------
------------
Running 'pdflatex  -interaction=nonstopmode -halt-on-error -file-line-error -recorder -output-directory="/private/tmp/infinity-nno-tex.1seLqV"  "papers/latex/infinity-nno.tex"'
------------
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./papers/latex/infinity-nno.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/geometry/geometry.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/ifvtex.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/iftex/iftex.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/xurl/xurl.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/url/url.sty))
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
(/usr/local/texlive/2026/texmf-dist/tex/generic/bitset/bitset.sty
(/usr/local/texlive/2026/texmf-dist/tex/generic/bigintcalc/bigintcalc.sty)))
(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hpdftex.def
(/usr/local/texlive/2026/texmf-dist/tex/latex/rerunfilecheck/rerunfilecheck.sty

(/usr/local/texlive/2026/texmf-dist/tex/generic/uniquecounter/uniquecounter.sty
))) (/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty)
==> First Aid for cleveref.sty applied!
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
 (/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.out)
(/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.out)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.toc [1{/usr/local/texlive/20
26/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/local/texlive/2026/texmf-
dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]) [2] [3] [4] [5] [6] [7]
[8] [9] [10] [11] [12]
Overfull \hbox (1.22289pt too wide) in paragraph at lines 531--532
[]\OT1/cmr/m/n/12 STT in-ter-nal lan-guage: $(\OMS/cmsy/m/n/12 1\OML/cmm/m/it/1
2 ; \OT1/cmr/m/n/12 1)$-categories (Riehl--Shulman [[]]); types are gen-eral $(
\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/12 1)$-

Overfull \hbox (19.6862pt too wide) in paragraph at lines 542--544
\OT1/cmr/m/n/12 toposes with-out in-vok-ing Shul-man's the-o-rem; the lat-ter i
s cur-rently stated for Grothendieck
[13] [14] [15] [16] [17] (/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.aux
) )
(see the transcript file for additional information)</usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr/local/texlive/2026/texmf-di
st/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/local/texlive/2026/texmf-dis
t/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/local/texlive/2026/texmf-dist/
fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/local/texlive/2026/texmf-dist/fo
nts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/texlive/2026/texmf-dist/font
s/type1/public/amsfonts/cm/cmr17.pfb></usr/local/texlive/2026/texmf-dist/fonts/
type1/public/amsfonts/cm/cmr6.pfb></usr/local/texlive/2026/texmf-dist/fonts/typ
e1/public/amsfonts/cm/cmr7.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/
public/amsfonts/cm/cmr8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/pub
lic/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publ
ic/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/publi
c/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/
amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/am
sfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/ams
fonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsf
onts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfo
nts/symbols/msbm10.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/c
m-super/sfrm1095.pfb></usr/local/texlive/2026/texmf-dist/fonts/type1/public/cm-
super/sfrm1200.pfb>
Output written on /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.pdf (17 pag
es, 352795 bytes).
Transcript written on /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log.
Latexmk: Getting log file '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log'
Latexmk: Examining '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.fls'
Latexmk: Examining '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log'
Latexmk: Log file says output to '/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.pdf'
Latexmk: All targets (/private/tmp/infinity-nno-tex.1seLqV/infinity-nno.pdf) are up-to-date

zsh:1: read-only variable: status

exec
/usr/local/bin/zsh -lc "rg -n 'LaTeX Warning|Package .*Warning|Overfull|Underfull|"'^!'"' /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
656:Package everypage Warning: Functionality similar to this package has recently
662:Package everypage Warning: You appear to be running a version of LaTeX
782:Overfull \hbox (1.22289pt too wide) in paragraph at lines 531--532
789:Overfull \hbox (19.6862pt too wide) in paragraph at lines 542--544

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(label|ref|cref|Cref|cite)\\{' papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
140:\section{Introduction}\label{sec:intro}
148:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
150:By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
152:The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
157:  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
158:  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
159:  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
160:  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
161:  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
162:  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
167:\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
173:\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
179:\begin{definition}[Pointed dynamical system]\label{def:ptendo}
183:\begin{definition}[NNO]\label{def:nno}
189:\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
197:\begin{lemma}[Lambek]\label{lem:lambek}
224:\begin{theorem}[Universal property of NNO]\label{thm:up}
228:\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
232:In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
234:\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
239:\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
242:\subsection{HoTT contractibility}\label{sec:hott-contr}
244:In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
246:\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
258:\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
265:\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
281:The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
285:\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
288:\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}\label{sec:lurie}
290:We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
294:\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
326:\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
340:A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
350:\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
364:\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
365:Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
373:is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible.
376:\section{Higher coherences}\label{sec:higher-coh}
392:\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
405:The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
416:\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
421:The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
424:\section{The main theorem: contractibility for \texorpdfstring{$(\infty,1)$}{(infinity,1)}-NNOs}\label{sec:main}
428:We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
430:\begin{theorem}[Main theorem]\label{thm:main}
431:Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos by \cite{Shulman2019}). Then:
433:  \item There exists an $(\infty,1)$-NNO in $\mathcal{E}$ (\cref{def:lurie-nno}).
441:By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
443:\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
445:Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
451:\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
458:\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
463:\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
464:Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
468:By \cref{thm:main}(2), $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (Theorem~\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
471:\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
479:\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
484:Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration
492:Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
503:\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
508:The construction in \cref{thm:rasekh-hott} uses only $\U$ and pushouts; no separate power-object axiom is invoked.
511:\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
513:Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
521:where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
524:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.
530:  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
531:  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}); types are general $(\infty,1)$-spaces.
532:  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
537:\section{Open problems}\label{sec:open}
541:  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
543:  Prove \cref{thm:contractibility-infty} for arbitrary elementary $(\infty,1)$-toposes without invoking Shulman's theorem; the latter is currently stated for Grothendieck $(\infty,1)$-toposes and is only conjectured for the elementary case.
551:  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
553:  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
560:The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?''. The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible''.
577:  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
588:  \item the $1$-categorical NNO and its contractibility (\cref{thm:contr-1cat});
589:  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
590:  \item Rasekh's circle-construction of an NNO in any elementary $(\infty,1)$-topos (\cref{thm:rasekh});
591:  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '520,555p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   520	\]
   521	where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
   522	
   523	\begin{remark}[Open]
   524	A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.
   525	\end{remark}
   526	
   527	\subsection{Comparing internal language flavours}
   528	
   529	\begin{itemize}
   530	  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
   531	  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}); types are general $(\infty,1)$-spaces.
   532	  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
   533	\end{itemize}
   534	
   535	For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.
   536	
   537	\section{Open problems}\label{sec:open}
   538	
   539	\begin{enumerate}
   540	  \item \textbf{Internal-to-external transfer.}
   541	  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
   542	  \item \textbf{Elementary case (Rasekh).}
   543	  Prove \cref{thm:contractibility-infty} for arbitrary elementary $(\infty,1)$-toposes without invoking Shulman's theorem; the latter is currently stated for Grothendieck $(\infty,1)$-toposes and is only conjectured for the elementary case.
   544	  \item \textbf{Synthetic NNO contractibility in STT.}
   545	  Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory, using only Rezk-completeness of the universe of discrete types.
   546	  \item \textbf{Course-of-values and primitive recursion.}
   547	  Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
   548	  \item \textbf{Lurie's parametrised NNO.}
   549	  Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here. Show that the parametrisation is functorial up to contractible choice.
   550	  \item \textbf{Cubical Agda formalisation.}
   551	  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
   552	  \item \textbf{Univalent foundations of arithmetic.}
   553	  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
   554	\end{enumerate}
   555	

codex
The clean `latexmk` build resolves all citations and cross-references after reruns. The remaining concrete diagnostics are two overfull boxes plus the `everypage` legacy warning; I’m doing one more lightweight static pass for obvious source-level reference/package issues before finalizing.
exec
/usr/local/bin/zsh -lc 'command -v chktex || true; command -v lacheck || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex
/Library/TeX/texbin/lacheck

exec
/usr/local/bin/zsh -lc "rg -n '\\\\usepackage|\\\\newcommand|\\\\begin\\{|\\\\end\\{|\\\\label\\{|\\\\bibitem\\{|\\\\cite\\{' papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
4:\usepackage{amsmath, amssymb, amsthm}
5:\usepackage{mathtools}
8:\usepackage{tikz-cd}
9:\usepackage{tikz}
12:\usepackage{graphicx}
15:\usepackage[margin=1in]{geometry}
18:\usepackage{xurl}
21:\usepackage{hyperref}
22:\usepackage{cleveref}
25:\usepackage{everypage}
26:\usepackage{xcolor}
43:\newcommand{\N}{\mathbb{N}}
44:\newcommand{\Z}{\mathbb{Z}}
45:\newcommand{\Q}{\mathbb{Q}}
46:\newcommand{\R}{\mathbb{R}}
47:\newcommand{\Set}{\mathbf{Set}}
48:\newcommand{\op}{\mathrm{op}}
49:\newcommand{\id}{\mathrm{id}}
50:\newcommand{\Hom}{\mathrm{Hom}}
51:\newcommand{\Map}{\mathrm{Map}}
52:\newcommand{\Nat}{\mathrm{Nat}}
53:\newcommand{\zero}{\mathsf{zero}}
54:\newcommand{\suc}{\mathsf{succ}}
55:\newcommand{\PtEndo}{\mathbf{PtEndo}}
56:\newcommand{\iso}{\cong}
57:\newcommand{\eqv}{\simeq}
58:\newcommand{\NNO}{\mathrm{NNO}}
59:\newcommand{\Type}{\mathsf{Type}}
60:\newcommand{\U}{\mathcal{U}}
61:\newcommand{\Id}{\mathsf{Id}}
62:\newcommand{\refl}{\mathsf{refl}}
63:\newcommand{\transport}{\mathsf{transport}}
64:\newcommand{\ua}{\mathsf{ua}}
65:\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
66:\newcommand{\looppath}{\mathsf{loop}}
67:\newcommand{\base}{\mathsf{base}}
68:\newcommand{\Sone}{S^{1}}
69:\newcommand{\isContr}{\mathsf{isContr}}
70:\newcommand{\isProp}{\mathsf{isProp}}
71:\newcommand{\isSet}{\mathsf{isSet}}
72:\newcommand{\Cat}{\mathbf{Cat}}
73:\newcommand{\Cati}{\mathbf{Cat}_{\infty}}
74:\newcommand{\Spc}{\mathcal{S}}
75:\newcommand{\Topos}{\mathbf{Top}}
76:\newcommand{\ETopos}{\mathbf{ETop}}
77:\newcommand{\colim}{\mathrm{colim}}
78:\newcommand{\rec}{\mathsf{rec}}
79:\newcommand{\ind}{\mathsf{ind}}
80:\newcommand{\Sigmatype}{\Sigma}
81:\newcommand{\Pitype}{\Pi}
95:    \begin{tikzpicture}[remember picture, overlay]
105:    \end{tikzpicture}
120:\begin{document}
124:\begin{abstract}
136:\end{abstract}
140:\section{Introduction}\label{sec:intro}
150:By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
152:The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
156:\begin{enumerate}
163:\end{enumerate}
173:\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
179:\begin{definition}[Pointed dynamical system]\label{def:ptendo}
181:\end{definition}
183:\begin{definition}[NNO]\label{def:nno}
185:\end{definition}
189:\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
191:\end{lemma}
193:\begin{proof}
195:\end{proof}
197:\begin{lemma}[Lambek]\label{lem:lambek}
199:\end{lemma}
201:\begin{proof}
211:\end{proof}
213:\begin{remark}
216:\begin{tikzcd}[column sep=large, row sep=large]
219:\end{tikzcd}
222:\end{remark}
224:\begin{theorem}[Universal property of NNO]\label{thm:up}
226:\end{theorem}
228:\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
234:\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
236:\end{theorem}
238:\begin{proof}
240:\end{proof}
242:\subsection{HoTT contractibility}\label{sec:hott-contr}
244:In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
246:\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
254:\end{definition}
258:\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
260:\end{theorem}
262:\begin{proof}
265:\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
278:\end{proof}
280:\begin{remark}[The infinite tower]
282:\end{remark}
284:\begin{remark}[Why this is stronger]
286:\end{remark}
288:\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}\label{sec:lurie}
294:\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
300:\end{definition}
308:\begin{remark}
310:\end{remark}
312:\begin{example}
314:\end{example}
316:\begin{example}
318:\end{example}
320:\begin{example}
322:\end{example}
326:\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
328:\end{theorem}
330:\begin{proof}[Sketch]
336:\end{proof}
340:A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
341:\begin{enumerate}
347:\end{enumerate}
350:\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
352:\end{theorem}
354:\begin{proof}[Sketch of Rasekh's argument]
356:\end{proof}
358:\begin{remark}
360:\end{remark}
364:\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
366:\end{theorem}
368:\begin{proof}
374:\end{proof}
376:\section{Higher coherences}\label{sec:higher-coh}
380:\begin{tikzcd}[column sep=large, row sep=large]
383:\end{tikzcd}
386:\begin{enumerate}
390:\end{enumerate}
392:\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
398:\end{proposition}
400:\begin{proof}
402:\end{proof}
404:\begin{remark}
406:\begin{itemize}
409:\end{itemize}
410:\end{remark}
416:\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
418:\end{theorem}
420:\begin{proof}
422:\end{proof}
424:\section{The main theorem: contractibility for \texorpdfstring{$(\infty,1)$}{(infinity,1)}-NNOs}\label{sec:main}
430:\begin{theorem}[Main theorem]\label{thm:main}
431:Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos by \cite{Shulman2019}). Then:
432:\begin{enumerate}
437:\end{enumerate}
438:\end{theorem}
440:\begin{proof}
443:\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
446:\end{proof}
450:\begin{remark}[Higher coherence cancellation]
452:\begin{itemize}
457:\end{itemize}
459:\end{remark}
463:\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
465:\end{theorem}
467:\begin{proof}
469:\end{proof}
471:\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
479:\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
481:\end{theorem}
483:\begin{proof}[Idea]
484:Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration
489:\end{proof}
491:\begin{remark}[Recovery of $\N$ from $\Z$]
493:\end{remark}
503:\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
505:\end{proposition}
507:\begin{proof}
509:\end{proof}
511:\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
513:Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
521:where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
523:\begin{remark}[Open]
524:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.
525:\end{remark}
529:\begin{itemize}
530:  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
531:  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}); types are general $(\infty,1)$-spaces.
532:  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
533:\end{itemize}
537:\section{Open problems}\label{sec:open}
539:\begin{enumerate}
554:\end{enumerate}
560:The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?''. The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible''.
565:\begin{enumerate}
571:\end{enumerate}
576:\begin{itemize}
580:\end{itemize}
587:\begin{itemize}
593:\end{itemize}
601:\begin{thebibliography}{99}
603:\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009. arXiv:math/0608040.
605:\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018. \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
607:\bibitem{Rasekh2018ETop} N.~Rasekh, \emph{A Theory of Elementary Higher Toposes}, arXiv:1805.03805, 2018.
609:\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377. arXiv:1809.01734.
611:\bibitem{Shulman2019} M.~Shulman, \emph{All $(\infty,1)$-toposes have strict univalent universes}, arXiv:1904.07004, 2019.
613:\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book/}.
615:\bibitem{LicataShulman} D.~R.~Licata and M.~Shulman, \emph{Calculating the fundamental group of the circle in homotopy type theory}, LICS 2013, 223--232.
617:\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224. arXiv:1705.07442.
619:\bibitem{GWB2024} D.~Gratzer, J.~Weinberger, and U.~Buchholtz, \emph{Directed univalence in simplicial homotopy type theory}, arXiv:2407.09146, 2024.
621:\bibitem{SchreiberShulman} U.~Schreiber and M.~Shulman, \emph{Quantum gauge field theory in cohesive homotopy type theory}, EPTCS \textbf{158} (2014), 109--126.
623:\bibitem{Lambek1968} J.~Lambek, \emph{A fixpoint theorem for complete categories}, Math. Z. \textbf{103} (1968), 151--161.
625:\bibitem{Lawvere1964} F.~W.~Lawvere, \emph{An elementary theory of the category of sets}, PNAS \textbf{52} (1964), 1506--1511.
627:\bibitem{Awodey2010} S.~Awodey, \emph{Type theory and homotopy}, in \emph{Epistemology versus Ontology}, Springer, 2012, 183--201.
629:\bibitem{Benacerraf1965} P.~Benacerraf, \emph{What numbers could not be}, Philosophical Review \textbf{74} (1965), 47--73.
631:\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011. \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
633:\bibitem{MartinLof1984} P.~Martin-L\"of, \emph{Intuitionistic Type Theory}, Bibliopolis, Naples, 1984.
635:\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010. \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
637:\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008. \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
639:\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
641:\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
643:\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
645:\bibitem{Synthesis} YonedaAI, \emph{The Univalent Correspondence: Synthesis}, Magneton Research Collective, 2026.
647:\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J. Eur. Math. Soc. \textbf{23} (2021), 2071--2126.
649:\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015. arXiv:1611.02108.
651:\bibitem{Riehl2025} E.~Riehl, \emph{Synthetic perspectives on spaces and categories}, arXiv:2510.15795, 2025.
653:\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos}. \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
655:\bibitem{nLabNNO} The nLab, \emph{natural numbers object}. \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
657:\end{thebibliography}
659:\end{document}

exec
/usr/local/bin/zsh -lc "rg -n 'Warning|undefined|Undefined|Overfull|Underfull|Error|Fatal|Emergency|Rerun' /private/tmp/infinity-nno-tex.1seLqV/infinity-nno.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
627:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
656:Package everypage Warning: Functionality similar to this package has recently
662:Package everypage Warning: You appear to be running a version of LaTeX
782:Overfull \hbox (1.22289pt too wide) in paragraph at lines 531--532
789:Overfull \hbox (19.6862pt too wide) in paragraph at lines 542--544

exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/infinity-nno.tex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/infinity-nno.tex", line 84: possible unwanted space at "{"
"papers/latex/infinity-nno.tex", line 131: missing `\@' before `.' in "NNO."
"papers/latex/infinity-nno.tex", line 351: missing `\@' before `.' in "NNO."
"papers/latex/infinity-nno.tex", line 355: missing `\@' before `.' in "NNO."
"papers/latex/infinity-nno.tex", line 477: missing `\@' before `.' in "HIT."
"papers/latex/infinity-nno.tex", line 524: missing `\@' before `.' in "STT."

exec
/usr/local/bin/zsh -lc 'chktex -q -n8 -n24 -n44 papers/latex/infinity-nno.tex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
Warning 13 in papers/latex/infinity-nno.tex line 131: Intersentence spacing (`\@') should perhaps be used.
This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.  
                                                                                                                                                                                                                                                                                                                                                                                                           ^
Warning 13 in papers/latex/infinity-nno.tex line 133: Intersentence spacing (`\@') should perhaps be used.
\medskip\noindent\textbf{Keywords.} Natural numbers object; $(\infty,1)$-topos; elementary higher topos; contractibility; homotopy type theory; Rasekh's theorem; Lurie HTT.  
                                                                                                                                                                           ^
Warning 13 in papers/latex/infinity-nno.tex line 167: Intersentence spacing (`\@') should perhaps be used.
\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.  
                                                                                                                                                                                                                     ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
             ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                             ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                                   ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                                                         ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                                                                ^
Warning 18 in papers/latex/infinity-nno.tex line 218: Use either `` or '' as an alternative to `"'.
I \arrow[r, "h"'] & FI  
            ^
Warning 18 in papers/latex/infinity-nno.tex line 218: Use either `` or '' as an alternative to `"'.
I \arrow[r, "h"'] & FI  
              ^
Warning 13 in papers/latex/infinity-nno.tex line 327: Intersentence spacing (`\@') should perhaps be used.
Every presentable $(\infty,1)$-topos has an NNO.  
                                               ^
Warning 13 in papers/latex/infinity-nno.tex line 340: Intersentence spacing (`\@') should perhaps be used.
A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:  
                                                                                         ^
Warning 13 in papers/latex/infinity-nno.tex line 351: Intersentence spacing (`\@') should perhaps be used.
Every elementary $(\infty,1)$-topos has an NNO. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.  
                                              ^
Warning 13 in papers/latex/infinity-nno.tex line 355: Intersentence spacing (`\@') should perhaps be used.
The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO. The argument uses descent, locality, and classification of univalent maps.  
                                                                                                                                                                                                                                                                                                                                                        ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                     ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                           ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                         ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                               ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                     ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                       ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                    ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                          ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                 ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                                   ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                                                                    ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                                                                      ^
Warning 18 in papers/latex/infinity-nno.tex line 382: Use either `` or '' as an alternative to `"'.
& N_{2} \arrow[r, "s_{2}"'] & N_{2}  
                  ^
Warning 18 in papers/latex/infinity-nno.tex line 382: Use either `` or '' as an alternative to `"'.
& N_{2} \arrow[r, "s_{2}"'] & N_{2}  
                        ^
Warning 36 in papers/latex/infinity-nno.tex line 412: You should put a space in front of parenthesis.
\subsection{Truncation level of \texorpdfstring{$\mathrm{NNO}(\mathcal{E})$}{NNO(E)}}  
                                                                                ^
Warning 3 in papers/latex/infinity-nno.tex line 414: You should enclose the previous parenthesis with `{}'.
Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.  
                                                                                                     ^
Warning 2 in papers/latex/infinity-nno.tex line 431: Non-breaking space (`~') should have been used.
Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos by \cite{Shulman2019}). Then:  
                                                                                                                                 ^
Warning 36 in papers/latex/infinity-nno.tex line 468: You should put a space in front of parenthesis.
By \cref{thm:main}(2), $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (Theorem~\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.  
                  ^
Warning 13 in papers/latex/infinity-nno.tex line 477: Intersentence spacing (`\@') should perhaps be used.
In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.  
                                                                                                                                                                                                                                                        ^
Warning 2 in papers/latex/infinity-nno.tex line 524: Non-breaking space (`~') should have been used.
A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.  
                                                                                                ^
Warning 13 in papers/latex/infinity-nno.tex line 524: Intersentence spacing (`\@') should perhaps be used.
A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.  
                                                                                                                                                                                ^
Warning 13 in papers/latex/infinity-nno.tex line 532: Intersentence spacing (`\@') should perhaps be used.
  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).  
                     ^
Warning 38 in papers/latex/infinity-nno.tex line 560: You should not use punctuation in front of quotes.
The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?''. The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible''.  
                                                                                                                                                                      ^
Warning 38 in papers/latex/infinity-nno.tex line 560: You should not use punctuation in front of quotes.
The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?''. The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible''.  
                                                                                                                                                                                                                                  ^
Warning 12 in papers/latex/infinity-nno.tex line 603: Interword spacing (`\ ') should perhaps be used.
\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009. arXiv:math/0608040.  
                                                                                                                                   ^
Warning 12 in papers/latex/infinity-nno.tex line 605: Interword spacing (`\ ') should perhaps be used.
\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018. \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.  
                                                                                           ^
Warning 12 in papers/latex/infinity-nno.tex line 609: Interword spacing (`\ ') should perhaps be used.
\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377. arXiv:1809.01734.  
                                                                                                                                                                             ^
Warning 12 in papers/latex/infinity-nno.tex line 613: Interword spacing (`\ ') should perhaps be used.
\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book/}.  
                                                                                                                                                            ^
Warning 12 in papers/latex/infinity-nno.tex line 617: Interword spacing (`\ ') should perhaps be used.
\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224. arXiv:1705.07442.  
                                                                                                                                                                 ^
Warning 12 in papers/latex/infinity-nno.tex line 631: Interword spacing (`\ ') should perhaps be used.
\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011. \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.  
                                                                                                                      ^
Warning 12 in papers/latex/infinity-nno.tex line 635: Interword spacing (`\ ') should perhaps be used.
\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010. \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.  
                                                                                                                                  ^
Warning 12 in papers/latex/infinity-nno.tex line 637: Interword spacing (`\ ') should perhaps be used.
\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008. \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.  
                                                                                      ^
Warning 12 in papers/latex/infinity-nno.tex line 649: Interword spacing (`\ ') should perhaps be used.
\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015. arXiv:1611.02108.  
                                                                                                                                                                ^
Warning 12 in papers/latex/infinity-nno.tex line 653: Interword spacing (`\ ') should perhaps be used.
\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos}. \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.  
                                                                 ^
Warning 36 in papers/latex/infinity-nno.tex line 653: You should put a space in front of parenthesis.
\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos}. \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.  
                                                                                                                ^
Warning 12 in papers/latex/infinity-nno.tex line 655: Interword spacing (`\ ') should perhaps be used.
\bibitem{nLabNNO} The nLab, \emph{natural numbers object}. \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.  
                                                          ^

exec
/usr/local/bin/zsh -lc 'git status --short -- papers/latex/infinity-nno.tex papers/latex/infinity-nno.aux papers/latex/infinity-nno.log papers/latex/infinity-nno.pdf papers/latex/infinity-nno.out papers/latex/infinity-nno.toc' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
?? papers/latex/infinity-nno.aux
?? papers/latex/infinity-nno.log
?? papers/latex/infinity-nno.out
?? papers/latex/infinity-nno.pdf
?? papers/latex/infinity-nno.tex
?? papers/latex/infinity-nno.toc

codex
Clean temp `latexmk -pdf` build completes with no compilation errors, missing packages, undefined references, or undefined citations. Remaining issues:

1. [infinity-nno.tex:25](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:25), [infinity-nno.tex:93](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:93): `everypage` emits legacy-package warnings under current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with the kernel hook `\AddToHook{shipout/background}{...}`.

2. [infinity-nno.tex:531](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:531): overfull `\hbox` in the STT bullet.
   Fix: split the item into shorter sentences, e.g. end after `\cite{RiehlShulman2017}` and start `Types are general ...`.

3. [infinity-nno.tex:543](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:543): overfull `\hbox` in the “Elementary case” open problem.
   Fix: shorten or split the sentence after “Shulman’s theorem”; alternatively use a nested sentence after the bold item heading.

4. [infinity-nno.tex:131](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:131), [167](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:167), [351](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:351), [355](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:355), [477](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:477), [524](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:524): acronym sentence endings use TeX’s reduced spacing after uppercase letters.
   Fix: write `NNO\@.`, `HIT\@.`, `STT\@.` where a real sentence break follows.

5. [infinity-nno.tex:431](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:431), [524](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:524): breakable spaces before citations.
   Fix: use nonbreaking citation spacing, e.g. `by~\cite{Shulman2019}` and `of~\cite{GWB2024}`, or name the authors before `~\cite`.

6. [infinity-nno.tex:468](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:468): `\cref{thm:main}(2)` is cramped/inconsistent reference styling.
   Fix: use `\cref{thm:main}\,(2)` or, better, `part~(2) of \cref{thm:main}`.

7. [infinity-nno.tex:560](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:560): duplicated sentence punctuation after a quoted question: `?''.`
   Fix: remove the outside period: `?'' The answer is...`.

8. Bibliography spacing: [603](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:603), [605](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:605), [609](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:609), [613](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:613), [617](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:617), [631](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:631), [635](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:635), [637](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:637), [649](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:649), [653](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:653), [655](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:655): inconsistent spacing before `arXiv:`/`\url`.
   Fix: use controlled spacing such as `.\ arXiv:...` / `.\ \url{...}`, or rewrite as `, arXiv:...` consistently.

VERDICT: NEEDS_FIX
2026-05-04T23:38:59.982501Z ERROR codex_core::session: failed to record rollout items: thread 019df559-f804-74c3-940e-dd2d11e13e4d not found
tokens used
90,541
Clean temp `latexmk -pdf` build completes with no compilation errors, missing packages, undefined references, or undefined citations. Remaining issues:

1. [infinity-nno.tex:25](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:25), [infinity-nno.tex:93](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:93): `everypage` emits legacy-package warnings under current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` with the kernel hook `\AddToHook{shipout/background}{...}`.

2. [infinity-nno.tex:531](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:531): overfull `\hbox` in the STT bullet.
   Fix: split the item into shorter sentences, e.g. end after `\cite{RiehlShulman2017}` and start `Types are general ...`.

3. [infinity-nno.tex:543](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:543): overfull `\hbox` in the “Elementary case” open problem.
   Fix: shorten or split the sentence after “Shulman’s theorem”; alternatively use a nested sentence after the bold item heading.

4. [infinity-nno.tex:131](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:131), [167](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:167), [351](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:351), [355](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:355), [477](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:477), [524](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:524): acronym sentence endings use TeX’s reduced spacing after uppercase letters.
   Fix: write `NNO\@.`, `HIT\@.`, `STT\@.` where a real sentence break follows.

5. [infinity-nno.tex:431](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:431), [524](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:524): breakable spaces before citations.
   Fix: use nonbreaking citation spacing, e.g. `by~\cite{Shulman2019}` and `of~\cite{GWB2024}`, or name the authors before `~\cite`.

6. [infinity-nno.tex:468](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:468): `\cref{thm:main}(2)` is cramped/inconsistent reference styling.
   Fix: use `\cref{thm:main}\,(2)` or, better, `part~(2) of \cref{thm:main}`.

7. [infinity-nno.tex:560](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:560): duplicated sentence punctuation after a quoted question: `?''.`
   Fix: remove the outside period: `?'' The answer is...`.

8. Bibliography spacing: [603](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:603), [605](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:605), [609](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:609), [613](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:613), [617](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:617), [631](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:631), [635](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:635), [637](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:637), [649](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:649), [653](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:653), [655](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:655): inconsistent spacing before `arXiv:`/`\url`.
   Fix: use controlled spacing such as `.\ arXiv:...` / `.\ \url{...}`, or rewrite as `, arXiv:...` consistently.

VERDICT: NEEDS_FIX

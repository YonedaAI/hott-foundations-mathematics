---
reviewer: codex (OpenAI)
type: formatting
paper: infinity-nno
round: 3
date: 2026-05-04T23:41:13Z
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
session id: 019df55e-072f-7652-858d-bd46e14c31cb
--------
user
Review papers/latex/infinity-nno.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).

The file path is: /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex
codex
I’ll review this read-only, starting with the LaTeX source and nearby build context so any line-numbered findings are grounded in the actual file and compile path.
exec
/usr/local/bin/zsh -lc "pwd && rg --files -g 'infinity-nno.tex' -g '*.tex' -g '*.sty' -g 'latexmkrc' -g 'Makefile' -g '*.bib'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
papers/latex/infinity-nno.tex
papers/latex/coalgebraic-transcendentals.tex
papers/latex/directed-univalence.tex
papers/latex/cubical-hiit-cauchy.tex
papers/latex/langlands-analytic-number-theory.tex
papers/latex/etcs-izf-folds.tex

exec
/usr/local/bin/zsh -lc 'nl -ba papers/latex/infinity-nno.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
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
    25	\usepackage{xcolor}
    26	
    27	% Allow URLs to break flexibly to avoid underfull \hbox warnings
    28	\Urlmuskip=0mu plus 1mu
    29	
    30	% Theorem environments
    31	\newtheorem{theorem}{Theorem}[section]
    32	\newtheorem{proposition}[theorem]{Proposition}
    33	\newtheorem{lemma}[theorem]{Lemma}
    34	\newtheorem{corollary}[theorem]{Corollary}
    35	\theoremstyle{definition}
    36	\newtheorem{definition}[theorem]{Definition}
    37	\theoremstyle{remark}
    38	\newtheorem{remark}[theorem]{Remark}
    39	\newtheorem{example}[theorem]{Example}
    40	
    41	% Macros
    42	\newcommand{\N}{\mathbb{N}}
    43	\newcommand{\Z}{\mathbb{Z}}
    44	\newcommand{\Q}{\mathbb{Q}}
    45	\newcommand{\R}{\mathbb{R}}
    46	\newcommand{\Set}{\mathbf{Set}}
    47	\newcommand{\op}{\mathrm{op}}
    48	\newcommand{\id}{\mathrm{id}}
    49	\newcommand{\Hom}{\mathrm{Hom}}
    50	\newcommand{\Map}{\mathrm{Map}}
    51	\newcommand{\Nat}{\mathrm{Nat}}
    52	\newcommand{\zero}{\mathsf{zero}}
    53	\newcommand{\suc}{\mathsf{succ}}
    54	\newcommand{\PtEndo}{\mathbf{PtEndo}}
    55	\newcommand{\iso}{\cong}
    56	\newcommand{\eqv}{\simeq}
    57	\newcommand{\NNO}{\mathrm{NNO}}
    58	\newcommand{\Type}{\mathsf{Type}}
    59	\newcommand{\U}{\mathcal{U}}
    60	\newcommand{\Id}{\mathsf{Id}}
    61	\newcommand{\refl}{\mathsf{refl}}
    62	\newcommand{\transport}{\mathsf{transport}}
    63	\newcommand{\ua}{\mathsf{ua}}
    64	\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
    65	\newcommand{\looppath}{\mathsf{loop}}
    66	\newcommand{\base}{\mathsf{base}}
    67	\newcommand{\Sone}{S^{1}}
    68	\newcommand{\isContr}{\mathsf{isContr}}
    69	\newcommand{\isProp}{\mathsf{isProp}}
    70	\newcommand{\isSet}{\mathsf{isSet}}
    71	\newcommand{\Cat}{\mathbf{Cat}}
    72	\newcommand{\Cati}{\mathbf{Cat}_{\infty}}
    73	\newcommand{\Spc}{\mathcal{S}}
    74	\newcommand{\Topos}{\mathbf{Top}}
    75	\newcommand{\ETopos}{\mathbf{ETop}}
    76	\newcommand{\colim}{\mathrm{colim}}
    77	\newcommand{\rec}{\mathsf{rec}}
    78	\newcommand{\ind}{\mathsf{ind}}
    79	\newcommand{\Sigmatype}{\Sigma}
    80	\newcommand{\Pitype}{\Pi}
    81	
    82	% Hyperref setup
    83	\hypersetup{
    84	  colorlinks=true,
    85	  linkcolor=blue!60!black,
    86	  citecolor=blue!60!black,
    87	  urlcolor=blue!60!black
    88	}
    89	
    90	% GrokRxiv sidebar (native LaTeX hook on first page only)
    91	\definecolor{grokgray}{RGB}{110,110,110}
    92	\AddToHook{shipout/background}{%
    93	  \ifnum\value{page}=1
    94	    \begin{tikzpicture}[remember picture, overlay]
    95	      \node[
    96	        rotate=90,
    97	        anchor=south,
    98	        font=\Large\sffamily\bfseries\color{grokgray},
    99	        inner sep=0pt
   100	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
   101	      {GrokRxiv:2026.05.infinity-nno\quad
   102	       [\,math.CT\,]\quad
   103	       04 May 2026};
   104	    \end{tikzpicture}%
   105	  \fi
   106	}
   107	
   108	\title{Higher-Categorical Natural Numbers Objects:\\
   109	Contractibility, $\infty$-Toposes, and Lurie's NNO}
   110	
   111	\author{YonedaAI \\
   112	\textit{Magneton Research Collective} \\
   113	\textit{Independent Mathematical Foundations Group} \\
   114	San Francisco, CA \\
   115	\texttt{research@yonedaai.org} $\cdot$ \url{https://yonedaai.org}}
   116	
   117	\date{4 May 2026}
   118	
   119	\begin{document}
   120	
   121	\maketitle
   122	
   123	\begin{abstract}
   124	The natural numbers object (NNO) of an elementary topos is, classically, an object equipped with a global element $0$ and an endomorphism $s$ such that the resulting pointed dynamical system is initial. In a $1$-topos any two NNOs are connected by a unique isomorphism, and the automorphism group of an NNO is trivial: NNO structures form a contractible groupoid, equivalently a $(-2)$-truncated $\infty$-groupoid. In homotopy type theory (HoTT), Theorem~2.7 of Paper~III (and the equivalent Theorem~4.4 of Paper~V of the present series) refines this rigidity: the type
   125	\[
   126	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s)
   127	\]
   128	is contractible. By Shulman's interpretation theorem, every $(\infty,1)$-topos $\mathcal{E}$ admits a model of HoTT~+~univalence, so the corresponding statement transports to an internal contractibility result for the type of NNO structures inside $\mathcal{E}$.
   129	
   130	This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.
   131	
   132	\medskip\noindent\textbf{Keywords.} Natural numbers object; $(\infty,1)$-topos; elementary higher topos; contractibility; homotopy type theory; Rasekh's theorem; Lurie HTT\@.
   133	
   134	\medskip\noindent\textbf{MSC2020.} 18N60, 03B38, 18B25, 03G30.
   135	\end{abstract}
   136	
   137	\tableofcontents
   138	
   139	\section{Introduction}\label{sec:intro}
   140	
   141	The natural numbers object (NNO) is among the most basic universal constructions of categorical logic. Lawvere's 1964 axiomatisation of the elementary theory of the category of sets (ETCS) treats the NNO as an irreducible primitive on equal footing with the terminal object, the subobject classifier, and exponentials. In any cartesian closed category $\mathcal{C}$ with a terminal object $\mathbf{1}$, an NNO is a triple $(N, 0\colon \mathbf{1}\to N, s\colon N\to N)$ such that for every $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ there exists a unique morphism $h\colon N\to X$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$. Two NNOs are related by a unique isomorphism; the automorphism group of an NNO is trivial. In $\Set$ the NNO is the von Neumann set $\omega = \{0,1,2,\ldots\}$ with successor; up to canonical isomorphism, ``the natural numbers'' is a property, not a choice of structure.
   142	
   143	The HoTT version is finer. Working in the univalent universe $\U$, define
   144	\[
   145	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
   146	\]
   147	where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
   148	
   149	By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
   150	
   151	The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
   152	
   153	\subsection*{Contributions}
   154	
   155	\begin{enumerate}
   156	  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
   157	  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
   158	  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
   159	  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   160	  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
   161	  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
   162	\end{enumerate}
   163	
   164	\subsection*{Outline}
   165	
   166	\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
   167	
   168	\subsection*{Conventions}
   169	
   170	We use $\Cati$ for the $(\infty,2)$-category of $(\infty,1)$-categories and $\Spc$ for the $(\infty,1)$-category of $\infty$-groupoids (``spaces''). For an $(\infty,1)$-category $\mathcal{C}$, $\Map_{\mathcal{C}}(X,Y)\in\Spc$ denotes the mapping space. We write $\mathbf{1}$ for a terminal object. Throughout, ``HoTT'' refers to Martin-L\"of type theory with $\Sigmatype$, $\Pitype$, identity types, finite coproducts, the natural numbers type, function extensionality, and the univalence axiom for at least one hierarchy of universes.
   171	
   172	\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
   173	
   174	We begin by recalling the classical material in a form that will generalise cleanly to the $\infty$-categorical setting.
   175	
   176	\subsection{Pointed endomorphisms and \texorpdfstring{$1$}{1}-NNO}
   177	
   178	\begin{definition}[Pointed dynamical system]\label{def:ptendo}
   179	Let $\mathcal{C}$ be a category with terminal object $\mathbf{1}$. The category $\PtEndo(\mathcal{C})$ has as objects triples $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$, and morphisms $(X,x_{0},f)\to(Y,y_{0},g)$ are arrows $h\colon X\to Y$ in $\mathcal{C}$ such that $h\circ x_{0}=y_{0}$ and $h\circ f = g\circ h$.
   180	\end{definition}
   181	
   182	\begin{definition}[NNO]\label{def:nno}
   183	A natural numbers object in $\mathcal{C}$ is an initial object of $\PtEndo(\mathcal{C})$.
   184	\end{definition}
   185	
   186	Equivalently, viewing the endofunctor $F\colon \mathcal{C}\to \mathcal{C}$ given by $FX = \mathbf{1}+X$ (when coproducts exist), an NNO is an initial $F$-algebra: a pair $(N,[0,s]\colon \mathbf{1}+N\to N)$ initial in $F\text{-}\mathbf{Alg}$.
   187	
   188	\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
   189	If $I,I'$ are initial in any category, there is a unique isomorphism $I\to I'$, and the automorphism group $\mathrm{Aut}(I)$ is trivial.
   190	\end{lemma}
   191	
   192	\begin{proof}
   193	Initiality of $I$ gives a unique map $u\colon I\to I'$, and dually a unique $v\colon I'\to I$. The composites $v\circ u$ and $\id_{I}$ are both morphisms $I\to I$; since $I$ is initial, the hom-set $\Hom(I,I)$ has exactly one element, hence $v\circ u=\id_{I}$. Similarly $u\circ v = \id_{I'}$. Applying the same argument with $I=I'$, every endomorphism of $I$ equals $\id_{I}$, so $\mathrm{Aut}(I)=\{\id_{I}\}$.
   194	\end{proof}
   195	
   196	\begin{lemma}[Lambek]\label{lem:lambek}
   197	If $(I,\iota\colon FI\to I)$ is an initial $F$-algebra, then $\iota$ is an isomorphism.
   198	\end{lemma}
   199	
   200	\begin{proof}
   201	The map $F\iota\colon F(FI)\to FI$ endows $FI$ with the structure of an $F$-algebra, denoted $(FI,F\iota)$. By initiality of $(I,\iota)$ there is a unique $F$-algebra homomorphism $h\colon (I,\iota)\to (FI,F\iota)$, that is, a morphism $h\colon I\to FI$ in $\mathcal{C}$ with
   202	\[
   203	h\circ \iota \;=\; F\iota\circ Fh.
   204	\]
   205	On the other hand, $\iota$ itself is an $F$-algebra homomorphism $(FI,F\iota)\to(I,\iota)$, since $\iota\circ F\iota = \iota\circ F\iota$ trivially. Thus $\iota\circ h\colon (I,\iota)\to (I,\iota)$ is an $F$-algebra endomorphism, and by initiality (applied to $(I,\iota)$ as the source of a unique map to itself) it equals $\id_{I}$. We conclude $\iota\circ h = \id_{I}$. For the other composite, observe
   206	\[
   207	h\circ \iota \;=\; F\iota\circ Fh \;=\; F(\iota\circ h) \;=\; F(\id_{I}) \;=\; \id_{FI},
   208	\]
   209	using functoriality of $F$. Thus $h$ is two-sided inverse to $\iota$, and $\iota$ is an isomorphism.
   210	\end{proof}
   211	
   212	\begin{remark}
   213	The Lambek square depicting the proof is
   214	\[
   215	\begin{tikzcd}[column sep=large, row sep=large]
   216	FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\
   217	I \arrow[r, "h"'] & FI
   218	\end{tikzcd}
   219	\]
   220	which commutes by definition of $h$ as an $F$-algebra homomorphism.
   221	\end{remark}
   222	
   223	\begin{theorem}[Universal property of NNO]\label{thm:up}
   224	Let $(N,0,s)$ be an NNO in $\mathcal{C}$. For every $(X,x_{0},f)$ in $\PtEndo(\mathcal{C})$ there exists a unique $h\colon N\to X$ in $\mathcal{C}$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$.
   225	\end{theorem}
   226	
   227	\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
   228	
   229	We use the standard truncation conventions: a $(-2)$-type is contractible, a $(-1)$-type is a (mere) proposition (a groupoid in which any two objects are connected by at most one morphism), and a $0$-type is a set. A nonempty groupoid in which every hom-set is a singleton is contractible---a $(-2)$-type.
   230	
   231	In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
   232	
   233	\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
   234	In any category $\mathcal{C}$ with terminal object, the groupoid $\NNO(\mathcal{C})$ of NNO structures is either empty or contractible (i.e.\ a $(-2)$-type). Equivalently, the moduli space of NNOs in $\mathcal{C}$ is a (mere) proposition: existence implies essential uniqueness, with no nontrivial automorphisms or higher cells (which are absent at the $1$-categorical level).
   235	\end{theorem}
   236	
   237	\begin{proof}
   238	\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
   239	\end{proof}
   240	
   241	\subsection{HoTT contractibility}\label{sec:hott-contr}
   242	
   243	In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
   244	
   245	\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
   246	\[
   247	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
   248	\]
   249	where
   250	\[
   251	\mathsf{isInitial}(X,x_{0},s) \;\coloneqq\; \Pitype_{(Y,y_{0},f):\PtEndo(\U)}\,\isContr\!\bigl(\Sigmatype_{h:X\to Y}(h\,x_{0}=y_{0})\times\Pitype_{x:X}(h(s\,x)=f(h\,x))\bigr).
   252	\]
   253	\end{definition}
   254	
   255	Note that $\mathsf{isInitial}(X,x_{0},s)$ is, by construction, an iterated $\Pitype$-type whose body is $\isContr$ of a $\Sigmatype$-type; since $\isContr$ is a (mere) proposition and $\Pitype$ of propositions is a proposition, $\mathsf{isInitial}$ is a proposition.
   256	
   257	\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
   258	The type $\NNO$ is contractible. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical witness of initiality given by the standard recursor $\rec_{\N}$ together with its computation rules.
   259	\end{theorem}
   260	
   261	\begin{proof}
   262	We must show $\isContr(\NNO)$, i.e.\ produce a centre $c\in\NNO$ and a continuous family of paths from $c$ to every point of $\NNO$.
   263	
   264	\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
   265	\[
   266	\Sigmatype_{h\colon \N\to Y}(h\,\zero=y_{0})\times\Pitype_{n:\N}(h(\suc\,n)=f(h\,n))
   267	\]
   268	is contractible: $h=\rec_{\N}\,y_{0}\,f$ together with the $\refl$-witnesses of the equations is the centre, and the contraction is provided by the $\ind_{\N}$ step above.
   269	
   270	\emph{Contraction onto the centre.} Take any $(X,x_{0},s,\iota)\in\NNO$. We must produce a path
   271	\[
   272	p\colon (\N,\zero,\suc,\star) \;=\; (X,x_{0},s,\iota) \quad\text{in}\quad \NNO.
   273	\]
   274	Apply $\iota$ to the pointed system $(\N,\zero,\suc)$: it yields a contractible type whose centre is a unique map $u\colon X\to \N$ with $u\,x_{0}=\zero$ and $u\circ s\sim \suc\circ u$. Apply $\star$ to $(X,x_{0},s)$: a unique map $v\colon \N\to X$ with $v\,\zero=x_{0}$ and $v\circ \suc\sim s\circ v$. The composites $u\circ v\colon \N\to\N$ and $\id_{\N}$ both satisfy the universal-property equations for $(\N,\zero,\suc,\star)$; uniqueness inside the contractible type of recursors forces $u\circ v=\id_{\N}$ via $\ind_{\N}$, and likewise $v\circ u=\id_{X}$ via $\iota$. Thus $u\colon X\eqv\N$ is an equivalence (with quasi-inverse $v$). Univalence ($\ua$) converts the equivalence into a path $p_{1}\colon X = \N$ in $\U$. Transporting $(x_{0},s,\iota)$ along $p_{1}$ produces $(\zero,\suc,\star')$ for some witness $\star'\colon \mathsf{isInitial}(\N,\zero,\suc)$. Since $\mathsf{isInitial}$ is a proposition, $\star'=\star$. Pairing yields the required path $p$ in $\NNO$.
   275	
   276	The map $(X,x_{0},s,\iota)\mapsto p$ is itself constructed by transport and is thus a continuous family of paths from $c$, exhibiting $c$ as the centre of contraction.
   277	\end{proof}
   278	
   279	\begin{remark}[The infinite tower]
   280	The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
   281	\end{remark}
   282	
   283	\begin{remark}[Why this is stronger]
   284	\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
   285	\end{remark}
   286	
   287	\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}\label{sec:lurie}
   288	
   289	We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
   290	
   291	\subsection{Lurie's parametrised NNO}
   292	
   293	\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
   294	Let $\mathcal{E}$ be a presentable $(\infty,1)$-topos with terminal object $\mathbf{1}$. An NNO is an object $N\in\mathcal{E}$ together with morphisms $0\colon \mathbf{1}\to N$ and $s\colon N\to N$ such that for every diagram $\mathbf{1}\xrightarrow{x_{0}}X\xrightarrow{f}X$ in $\mathcal{E}$, the mapping space
   295	\[
   296	\Map_{\PtEndo(\mathcal{E})}\bigl((N,0,s),(X,x_{0},f)\bigr)
   297	\]
   298	is contractible.
   299	\end{definition}
   300	
   301	Here $\PtEndo(\mathcal{E})$ is the $(\infty,1)$-category of pointed endomorphisms in $\mathcal{E}$. Concretely, an object of $\PtEndo(\mathcal{E})$ is a triple $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ where $X\in\mathcal{E}$, $x_{0}$ is a global element, and $f$ is an endomorphism. A morphism $(X,x_{0},f)\to(Y,y_{0},g)$ is a tuple $(h, \alpha, \beta)$ where $h\colon X\to Y$ is a morphism in $\mathcal{E}$, $\alpha\colon h\circ x_{0}\sim y_{0}$ is a $1$-cell in $\Map_{\mathcal{E}}(\mathbf{1},Y)$, and $\beta\colon h\circ f\sim g\circ h$ is a $1$-cell in $\Map_{\mathcal{E}}(X,Y)$, together with the higher cells provided by composing in $\mathcal{E}$. In symbols this is the $\infty$-categorical limit (formally, an iterated comma object)
   302	\[
   303	\PtEndo(\mathcal{E}) \;\coloneqq\; \mathcal{E}_{\mathbf{1}/}\;\times_{\mathcal{E}}\; \mathcal{E}^{[1]}
   304	\]
   305	parametrising pairs $(x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$.
   306	
   307	\begin{remark}
   308	Equivalently, an $(\infty,1)$-NNO is an initial object in $\PtEndo(\mathcal{E})$, where ``initial'' is interpreted in the $(\infty,1)$-categorical sense: the mapping space to every other object is contractible. Lurie phrases the definition via a small-colimit-preserving recursion functor; the equivalence is straightforward.
   309	\end{remark}
   310	
   311	\begin{example}
   312	When $\mathcal{E}=\Spc$, the NNO is the constant functor at $\N$. Its existence and contractibility of the mapping space is the homotopy-coherent version of the Set-theoretic recursion principle.
   313	\end{example}
   314	
   315	\begin{example}
   316	For $\mathcal{E}=\mathrm{PSh}(\mathcal{C})$ the $(\infty,1)$-category of presheaves of spaces on a small $(\infty,1)$-category $\mathcal{C}$, the NNO is the constant presheaf at $\N$, $c\mapsto \N$.
   317	\end{example}
   318	
   319	\begin{example}
   320	For $\mathcal{E}=\mathrm{Sh}(X)$ the $(\infty,1)$-topos of sheaves on a topological space $X$, the NNO is the constant sheaf $\underline{\N}$.
   321	\end{example}
   322	
   323	\subsection{Existence in presentable \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
   324	
   325	\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
   326	Every presentable $(\infty,1)$-topos has an NNO.
   327	\end{theorem}
   328	
   329	\begin{proof}[Sketch]
   330	Presentability ensures small colimits and a small generating set. Build $N$ as the sequential colimit
   331	\[
   332	N \;=\; \colim\bigl(\mathbf{1}\xrightarrow{j_{0}}\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{1}}\mathbf{1}\sqcup\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{2}}\cdots\bigr),
   333	\]
   334	where $j_{n}$ adds a new copy of $\mathbf{1}$. Equivalently, $N=\bigsqcup_{n\geq 0}\mathbf{1}$. Verification of the universal property uses the universal property of sequential colimits and contractibility of the relevant mapping spaces.
   335	\end{proof}
   336	
   337	\subsection{Elementary \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes and Rasekh's NNO}
   338	
   339	A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
   340	\begin{enumerate}
   341	  \item finite limits,
   342	  \item locally cartesian closure,
   343	  \item subobject classifier,
   344	  \item object classifier (a univalent universe of small types),
   345	  \item finite colimits.
   346	\end{enumerate}
   347	They need not be presentable.
   348	
   349	\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
   350	Every elementary $(\infty,1)$-topos has an NNO\@. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.
   351	\end{theorem}
   352	
   353	\begin{proof}[Sketch of Rasekh's argument]
   354	The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO\@. The argument uses descent, locality, and classification of univalent maps.
   355	\end{proof}
   356	
   357	\begin{remark}
   358	Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
   359	\end{remark}
   360	
   361	\subsection{Equivalence with the \texorpdfstring{$1$}{1}-NNO when \texorpdfstring{$\mathcal{E}$}{E} is a \texorpdfstring{$1$}{1}-topos}
   362	
   363	\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
   364	Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
   365	\end{theorem}
   366	
   367	\begin{proof}
   368	The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space
   369	\[
   370	\Map_{\PtEndo(\mathcal{E}^{(\infty)})}\bigl((N,0,s),(X,x_{0},f)\bigr)
   371	\]
   372	is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible.
   373	\end{proof}
   374	
   375	\section{Higher coherences}\label{sec:higher-coh}
   376	
   377	Why is the $(\infty,1)$-NNO ``more delicate''? The naive answer is: in a $1$-category, ``unique map'' is a single condition. In an $(\infty,1)$-category, ``unique map'' must be promoted to ``unique up to coherent homotopy''. Concretely, given two NNOs $N_{1}, N_{2}$ in $\mathcal{E}$, we need a comparison map $u\colon N_{1}\to N_{2}$ together with the homotopies filling the squares
   378	\[
   379	\begin{tikzcd}[column sep=large, row sep=large]
   380	\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\
   381	& N_{2} \arrow[r, "s_{2}"'] & N_{2}
   382	\end{tikzcd}
   383	\]
   384	Filling the upper-left triangle is a $1$-cell $\alpha\colon u\circ 0_{1}\sim 0_{2}$, and filling the right-hand square is a $1$-cell $\beta\colon u\circ s_{1}\sim s_{2}\circ u$. Beyond these, we need:
   385	\begin{enumerate}
   386	  \item compatibilities of these homotopies (i.e.\ $2$-cells filling in the obvious squares),
   387	  \item compatibilities of those compatibilities ($3$-cells),
   388	  \item and so on, ad infinitum.
   389	\end{enumerate}
   390	
   391	\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
   392	The initiality of an $(\infty,1)$-NNO already encodes, in a single property, the entire infinite tower of coherence data sketched above. Concretely, for any two $(\infty,1)$-NNOs $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ in an $(\infty,1)$-category $\mathcal{E}$, the mapping space
   393	\[
   394	M \;\coloneqq\; \Map_{\PtEndo(\mathcal{E})}\bigl((N_{1},0_{1},s_{1}),(N_{2},0_{2},s_{2})\bigr)
   395	\]
   396	is contractible.
   397	\end{proposition}
   398	
   399	\begin{proof}
   400	By definition of $(\infty,1)$-NNO, both $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ are initial objects of $\PtEndo(\mathcal{E})$. Initial objects in any $(\infty,1)$-category have contractible mapping spaces to every object, in particular to each other. Contractibility of $M$ is equivalent to existence of a $0$-cell (the comparison map $u$ and the homotopies $\alpha,\beta$), uniqueness up to a contractible space of $1$-cells (the next-level coherences), uniqueness of those up to a contractible space of $2$-cells, and so on inductively at every level $n\geq 0$.
   401	\end{proof}
   402	
   403	\begin{remark}
   404	The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
   405	\begin{itemize}
   406	  \item $\pi_{0}M = *$: existence and uniqueness up to homotopy of the comparison map;
   407	  \item $\pi_{n}M = 0$ for all $n\geq 1$: triviality of all higher loop spaces, i.e.\ the entire tower of compatibilities.
   408	\end{itemize}
   409	\end{remark}
   410	
   411	\subsection{Truncation level of \texorpdfstring{$\mathrm{NNO}(\mathcal{E})$}{NNO(E)}}
   412	
   413	Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.
   414	
   415	\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
   416	For any $(\infty,1)$-topos $\mathcal{E}$ in which an NNO exists, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   417	\end{theorem}
   418	
   419	\begin{proof}
   420	The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
   421	\end{proof}
   422	
   423	\section{The main theorem: contractibility for \texorpdfstring{$(\infty,1)$}{(infinity,1)}-NNOs}\label{sec:main}
   424	
   425	\subsection{Statement and proof}
   426	
   427	We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
   428	
   429	\begin{theorem}[Main theorem]\label{thm:main}
   430	Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos, by~\cite{Shulman2019}). Then:
   431	\begin{enumerate}
   432	  \item There exists an $(\infty,1)$-NNO in $\mathcal{E}$ (\cref{def:lurie-nno}).
   433	  \item The space $\mathrm{NNO}(\mathcal{E})$ is contractible (a $(-2)$-type).
   434	  \item Any two $(\infty,1)$-NNOs in $\mathcal{E}$ are connected by an essentially unique equivalence.
   435	  \item The automorphism $\infty$-group of an $(\infty,1)$-NNO is contractible.
   436	\end{enumerate}
   437	\end{theorem}
   438	
   439	\begin{proof}
   440	By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
   441	
   442	\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
   443	
   444	Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
   445	\end{proof}
   446	
   447	\subsection{What ``contractible'' contributes beyond ``unique iso''}
   448	
   449	\begin{remark}[Higher coherence cancellation]
   450	\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
   451	\begin{itemize}
   452	  \item a $1$-cell witnessing $h\circ 0\sim x_{0}$,
   453	  \item a $1$-cell witnessing $h\circ s\sim f\circ h$,
   454	  \item $2$-cells expressing that the choice of $1$-cells is unique up to homotopy,
   455	  \item $\ldots$
   456	\end{itemize}
   457	\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
   458	\end{remark}
   459	
   460	\subsection{Identification with Rasekh's NNO}
   461	
   462	\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
   463	Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
   464	\end{theorem}
   465	
   466	\begin{proof}
   467	By part~(2) of \cref{thm:main}, $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
   468	\end{proof}
   469	
   470	\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
   471	
   472	We now sharpen the discussion of Rasekh's circle-construction.
   473	
   474	\subsection{The role of \texorpdfstring{$\Sone$}{S\^{}1}}
   475	
   476	In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT\@. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
   477	
   478	\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
   479	$\Omega\Sone\eqv\Z$ in any elementary $(\infty,1)$-topos $\mathcal{E}$, where $\Z$ is the group object obtained from the type of integers in $\mathcal{E}$.
   480	\end{theorem}
   481	
   482	\begin{proof}[Idea]
   483	Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration
   484	\[
   485	\mathrm{code}\colon \Sone\to \U \qquad\text{with}\qquad \mathrm{code}(\base)\eqv\Z,
   486	\]
   487	where the loop $\looppath$ acts as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
   488	\end{proof}
   489	
   490	\begin{remark}[Recovery of $\N$ from $\Z$]
   491	Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
   492	\end{remark}
   493	
   494	\subsection{Why this fails in \texorpdfstring{$1$}{1}-topos theory}
   495	
   496	In a $1$-topos $\mathcal{E}_{1}$, every type is $0$-truncated, so $\Omega\Sone = \Sone\times_{\Sone}\Sone$ is the singleton (a single point with no nontrivial loops, since paths don't exist). The encode--decode argument collapses, and we cannot recover $\Z$ or $\N$ this way. The $\infty$-categorical setting is therefore not just a technical generalisation: it makes essentially new constructions possible.
   497	
   498	\subsection{Power objects vs object classifier}
   499	
   500	A subtle point in the elementary axiomatic is whether one assumes power objects (like $1$-toposes) or an object classifier (Lurie's $(\infty,1)$-version). Power objects classify subobjects; the object classifier classifies all small maps.
   501	
   502	\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
   503	In an elementary $(\infty,1)$-topos with object classifier $\U$, the NNO can be constructed without separate appeal to power objects.
   504	\end{proposition}
   505	
   506	\begin{proof}
   507	The construction in \cref{thm:rasekh-hott} uses only $\U$ and pushouts; no separate power-object axiom is invoked.
   508	\end{proof}
   509	
   510	\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
   511	
   512	Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
   513	
   514	\subsection{An NNO in STT}
   515	
   516	In STT, one can define the type
   517	\[
   518	\NNO_{\mathrm{dir}} \;\coloneqq\; \Sigmatype_{X}\,\Sigmatype_{x_{0}\colon \mathbf{1}\to X}\,\Sigmatype_{s\colon X\to X}\,\mathsf{isInitial}_{\mathrm{dir}}(X,x_{0},s),
   519	\]
   520	where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
   521	
   522	\begin{remark}[Open]
   523	A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of~\cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT\@. We are not aware of a published proof.
   524	\end{remark}
   525	
   526	\subsection{Comparing internal language flavours}
   527	
   528	\begin{itemize}
   529	  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
   530	  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}). Types are general $(\infty,1)$-spaces.
   531	  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
   532	\end{itemize}
   533	
   534	For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.
   535	
   536	\section{Open problems}\label{sec:open}
   537	
   538	\begin{enumerate}
   539	  \item \textbf{Internal-to-external transfer.}
   540	  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
   541	  \item \textbf{Elementary case (Rasekh).}
   542	  Prove \cref{thm:contractibility-infty} for elementary $(\infty,1)$-toposes without invoking Shulman's theorem. The latter is currently stated for Grothendieck $(\infty,1)$-toposes; the elementary case is conjectural.
   543	  \item \textbf{Synthetic NNO contractibility in STT.}
   544	  Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory, using only Rezk-completeness of the universe of discrete types.
   545	  \item \textbf{Course-of-values and primitive recursion.}
   546	  Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
   547	  \item \textbf{Lurie's parametrised NNO.}
   548	  Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here. Show that the parametrisation is functorial up to contractible choice.
   549	  \item \textbf{Cubical Agda formalisation.}
   550	  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
   551	  \item \textbf{Univalent foundations of arithmetic.}
   552	  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
   553	\end{enumerate}
   554	
   555	\section{Discussion}
   556	
   557	\subsection{Philosophical remarks}
   558	
   559	The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''
   560	
   561	\subsection{Relationship to other modular foundations}
   562	
   563	In the modular framework adopted by the broader research programme, the NNO sits at the bottom of a tower:
   564	\begin{enumerate}
   565	  \item \textbf{NNO} (this paper): provides arithmetic.
   566	  \item \textbf{Real numbers HIIT}: built on $\N$ (Paper~V \S5).
   567	  \item \textbf{Coalgebraic transcendentals}: built on streams over $\R$ (Topic 1).
   568	  \item \textbf{$(\infty,1)$-Langlands}: built on $\R, \Q_{p}, \mathbb{A}$ (Topic 2).
   569	  \item \textbf{Higher inductive types of all kinds}: built on the entire HoTT framework (Topic 6).
   570	\end{enumerate}
   571	The contractibility of NNO at the $(\infty,1)$-level ensures that everything built on top of NNO inherits a unique, canonical foundation. This is the modular composition principle: each layer is uniquely determined by the previous one, up to contractible choice.
   572	
   573	\subsection{Limitations}
   574	
   575	\begin{itemize}
   576	  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
   577	  \item Higher coherence verification, while ``automatic'' in HoTT, requires actual computation in concrete models. We have not exhibited explicit cellular witnesses for, say, the bisimplicial set model.
   578	  \item The connection to Rasekh's circle-construction is via contractibility: we know the two NNOs agree, but we do not give an explicit comparison map.
   579	\end{itemize}
   580	
   581	\section{Conclusion}
   582	
   583	The natural numbers object is one of the simplest universal constructions in category theory; nonetheless, lifting it from the $1$-categorical to the $(\infty,1)$-categorical setting illustrates the full power of modern higher-categorical machinery. The key insight is that contractibility, as defined in HoTT (a single propositional condition), automatically encodes an infinite tower of homotopy coherences. This makes HoTT the ideal language to state and prove $(\infty,1)$-categorical universal properties without the bookkeeping of explicit cell-by-cell verification.
   584	
   585	We have presented:
   586	\begin{itemize}
   587	  \item the $1$-categorical NNO and its contractibility (\cref{thm:contr-1cat});
   588	  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
   589	  \item Rasekh's circle-construction of an NNO in any elementary $(\infty,1)$-topos (\cref{thm:rasekh});
   590	  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;
   591	  \item a synthetic perspective via simplicial type theory.
   592	\end{itemize}
   593	
   594	The remaining open problems---particularly the synthetic STT proof and the Cubical Agda formalisation---are within reach of current methods. Once completed, they will close the gap between the conceptual ``contractibility solves it'' answer and the explicit cellular-coherent verification.
   595	
   596	\section*{Acknowledgements}
   597	
   598	The author thanks the Magneton Research Collective for ongoing discussion, and acknowledges the foundational work of Lurie, Rasekh, Shulman, Riehl, and the HoTT community.
   599	
   600	\begin{thebibliography}{99}
   601	
   602	\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009.\ arXiv:math/0608040.
   603	
   604	\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018.\ \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
   605	
   606	\bibitem{Rasekh2018ETop} N.~Rasekh, \emph{A Theory of Elementary Higher Toposes}, 2018.\ arXiv:1805.03805.
   607	
   608	\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377.\ arXiv:1809.01734.
   609	
   610	\bibitem{Shulman2019} M.~Shulman, \emph{All $(\infty,1)$-toposes have strict univalent universes}, 2019.\ arXiv:1904.07004.
   611	
   612	\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013.\ \url{https://homotopytypetheory.org/book/}.
   613	
   614	\bibitem{LicataShulman} D.~R.~Licata and M.~Shulman, \emph{Calculating the fundamental group of the circle in homotopy type theory}, LICS 2013, 223--232.
   615	
   616	\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224.\ arXiv:1705.07442.
   617	
   618	\bibitem{GWB2024} D.~Gratzer, J.~Weinberger, and U.~Buchholtz, \emph{Directed univalence in simplicial homotopy type theory}, 2024.\ arXiv:2407.09146.
   619	
   620	\bibitem{SchreiberShulman} U.~Schreiber and M.~Shulman, \emph{Quantum gauge field theory in cohesive homotopy type theory}, EPTCS \textbf{158} (2014), 109--126.
   621	
   622	\bibitem{Lambek1968} J.~Lambek, \emph{A fixpoint theorem for complete categories}, Math.\ Z.\ \textbf{103} (1968), 151--161.
   623	
   624	\bibitem{Lawvere1964} F.~W.~Lawvere, \emph{An elementary theory of the category of sets}, PNAS \textbf{52} (1964), 1506--1511.
   625	
   626	\bibitem{Awodey2010} S.~Awodey, \emph{Type theory and homotopy}, in \emph{Epistemology versus Ontology}, Springer, 2012, 183--201.
   627	
   628	\bibitem{Benacerraf1965} P.~Benacerraf, \emph{What numbers could not be}, Philosophical Review \textbf{74} (1965), 47--73.
   629	
   630	\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011.\ \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
   631	
   632	\bibitem{MartinLof1984} P.~Martin-L\"of, \emph{Intuitionistic Type Theory}, Bibliopolis, Naples, 1984.
   633	
   634	\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010.\ \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
   635	
   636	\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008.\ \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
   637	
   638	\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
   639	
   640	\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
   641	
   642	\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
   643	
   644	\bibitem{Synthesis} YonedaAI, \emph{The Univalent Correspondence: Synthesis}, Magneton Research Collective, 2026.
   645	
   646	\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J.\ Eur.\ Math.\ Soc.\ \textbf{23} (2021), 2071--2126.
   647	
   648	\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015.\ arXiv:1611.02108.
   649	
   650	\bibitem{Riehl2025} E.~Riehl, \emph{Synthetic perspectives on spaces and categories}, 2025.\ arXiv:2510.15795.
   651	
   652	\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos},\ \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
   653	
   654	\bibitem{nLabNNO} The nLab, \emph{natural numbers object},\ \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
   655	
   656	\end{thebibliography}
   657	
   658	\end{document}

exec
/usr/local/bin/zsh -lc 'git status --short' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
?? .knowledge-base.md
?? lean/
?? papers/
?? reviews/
?? src/

codex
The source is standalone and the repo has no obvious build wrapper. I’m compiling it into a temporary output directory next, then I’ll cross-check labels/references and layout warnings against the exact source lines.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(label|(?:[cC]?ref|cite)\\{|bibitem\\{|url\\{|includegraphics|input|include)\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(label|(?:[cC]?ref|cite)\{|bibitem\{|url\{|includegraphics|input|include))
                                                                                 ^
error: unopened group

exec
/usr/local/bin/zsh -lc "rg -n \"TODO|undefined|overfull|underfull|\\\\hspace|\\\\vspace|\\\\quad|\\\\qquad|\\\\\\\\|~\\\\cite|\\\\S(?"'!one)|HTT'"\\\\@|STT\\\\@|e\\.g\\\\.|i\\.e\\\\.\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:TODO|undefined|overfull|underfull|\hspace|\vspace|\quad|\qquad|\\|~\cite|\S(?!one)|HTT\@|STT\@|e\.g\.|i\.e\.)
                                         ^^
error: unrecognized escape sequence

exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/infinity-nno-review && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/infinity-nno-review papers/latex/infinity-nno.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 501ms:

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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/tmp/infinity-nno-review/infinity-nno.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/tmp/infinity-nno-review/infinity-nno.out)
(/tmp/infinity-nno-review/infinity-nno.out)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
No file infinity-nno.toc.
[1{/usr/local/texlive/2026/texmf-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/l
ocal/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1.enc}]

LaTeX Warning: Reference `sec:background' on page 2 undefined on input line 147
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 147
.


LaTeX Warning: Citation `Shulman2019' on page 2 undefined on input line 149.


LaTeX Warning: Citation `LurieHTT' on page 2 undefined on input line 151.


LaTeX Warning: Citation `LurieSAG' on page 2 undefined on input line 151.


LaTeX Warning: Citation `Rasekh2021' on page 2 undefined on input line 151.


LaTeX Warning: Reference `sec:background' on page 2 undefined on input line 156
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 156
.

[2]

LaTeX Warning: Reference `sec:lurie' on page 3 undefined on input line 157.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 157.



LaTeX Warning: Reference `thm:lurie-nno-equiv' on page 1 undefined on input lin
e 157.


LaTeX Warning: Reference `sec:higher-coh' on page 3 undefined on input line 158
.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 158.


LaTeX Warning: Reference `sec:main' on page 3 undefined on input line 159.


LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 159.


LaTeX Warning: Reference `sec:rasekh' on page 3 undefined on input line 160.


LaTeX Warning: Reference `sec:stt' on page 3 undefined on input line 161.


LaTeX Warning: Reference `sec:open' on page 3 undefined on input line 161.


LaTeX Warning: Reference `sec:background' on page 1 undefined on input line 166
.


LaTeX Warning: Reference `sec:lurie' on page 1 undefined on input line 166.


LaTeX Warning: Reference `sec:higher-coh' on page 1 undefined on input line 166
.


LaTeX Warning: Reference `sec:main' on page 1 undefined on input line 166.


LaTeX Warning: Reference `sec:rasekh' on page 1 undefined on input line 166.


LaTeX Warning: Reference `sec:stt' on page 1 undefined on input line 166.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 166.

[3]

LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 231.

[4]

LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 238.


LaTeX Warning: Citation `PaperIII' on page 5 undefined on input line 243.


LaTeX Warning: Citation `PaperV' on page 5 undefined on input line 243.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 243.


LaTeX Warning: Citation `PaperIII' on page 5 undefined on input line 257.


LaTeX Warning: Citation `PaperV' on page 5 undefined on input line 257.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 264.

[5]

LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 280
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 284
.


LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 284
.


LaTeX Warning: Reference `def:nno' on page 1 undefined on input line 289.

[6]

LaTeX Warning: Citation `Rasekh2018ETop' on page 7 undefined on input line 339.


[7]

LaTeX Warning: Citation `Rasekh2021' on page 8 undefined on input line 349.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 364.



LaTeX Warning: Reference `def:ptendo' on page 1 undefined on input line 372.

[8]

LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 404.


LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 420.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 420.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 420.

[9]

LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 427.


LaTeX Warning: Citation `Shulman2019' on page 10 undefined on input line 430.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 432.



LaTeX Warning: Reference `def:nno-type' on page 1 undefined on input line 440.


LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 440
.


LaTeX Warning: Citation `KapulkinLumsdaine' on page 10 undefined on input line 
442.


LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 444
.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 444.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 450.

[10]

LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 457.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 463.



LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 467.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 467.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 467.



LaTeX Warning: Citation `LicataShulman' on page 11 undefined on input line 483.



LaTeX Warning: Reference `thm:rasekh-hott' on page 1 undefined on input line 49
1.


LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 491
.

[11]

LaTeX Warning: Reference `thm:rasekh-hott' on page 1 undefined on input line 50
7.


LaTeX Warning: Citation `RiehlShulman2017' on page 12 undefined on input line 5
12.


LaTeX Warning: Citation `GWB2024' on page 12 undefined on input line 520.


LaTeX Warning: Citation `GWB2024' on page 12 undefined on input line 523.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 523.


LaTeX Warning: Citation `Shulman2019' on page 12 undefined on input line 529.


LaTeX Warning: Citation `RiehlShulman2017' on page 12 undefined on input line 5
30.

[12]

LaTeX Warning: Citation `SchreiberShulman' on page 13 undefined on input line 5
31.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 540.


LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 542.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 550.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 552.


Overfull \hbox (14.54877pt too wide) in paragraph at lines 551--553
[]\OT1/cmr/bx/n/12 Univalent foun-da-tions of arith-metic. \OT1/cmr/m/n/12 Use 
[] to for-malise ba-sic arith-metic theorems---

LaTeX Warning: Citation `Benacerraf1965' on page 13 undefined on input line 559
.

[13]

LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 576
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 587
.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 588.



LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 588
.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 589.

[14]

LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 590.

[15] [16] (/tmp/infinity-nno-review/infinity-nno.aux)

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
Output written on /tmp/infinity-nno-review/infinity-nno.pdf (16 pages, 343340 b
ytes).
Transcript written on /tmp/infinity-nno-review/infinity-nno.log.

codex
The first compile completed, so there is no hard package/load failure. It did expose persistent-looking cross-reference warnings and one overfull box; I’m rerunning for settled references and reading the theorem/label area now.
exec
/usr/local/bin/zsh -lc "sed -n '260,430p' papers/latex/infinity-nno.tex | nl -ba -v260" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   260	
   261	\begin{proof}
   262	We must show $\isContr(\NNO)$, i.e.\ produce a centre $c\in\NNO$ and a continuous family of paths from $c$ to every point of $\NNO$.
   263	
   264	\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
   265	\[
   266	\Sigmatype_{h\colon \N\to Y}(h\,\zero=y_{0})\times\Pitype_{n:\N}(h(\suc\,n)=f(h\,n))
   267	\]
   268	is contractible: $h=\rec_{\N}\,y_{0}\,f$ together with the $\refl$-witnesses of the equations is the centre, and the contraction is provided by the $\ind_{\N}$ step above.
   269	
   270	\emph{Contraction onto the centre.} Take any $(X,x_{0},s,\iota)\in\NNO$. We must produce a path
   271	\[
   272	p\colon (\N,\zero,\suc,\star) \;=\; (X,x_{0},s,\iota) \quad\text{in}\quad \NNO.
   273	\]
   274	Apply $\iota$ to the pointed system $(\N,\zero,\suc)$: it yields a contractible type whose centre is a unique map $u\colon X\to \N$ with $u\,x_{0}=\zero$ and $u\circ s\sim \suc\circ u$. Apply $\star$ to $(X,x_{0},s)$: a unique map $v\colon \N\to X$ with $v\,\zero=x_{0}$ and $v\circ \suc\sim s\circ v$. The composites $u\circ v\colon \N\to\N$ and $\id_{\N}$ both satisfy the universal-property equations for $(\N,\zero,\suc,\star)$; uniqueness inside the contractible type of recursors forces $u\circ v=\id_{\N}$ via $\ind_{\N}$, and likewise $v\circ u=\id_{X}$ via $\iota$. Thus $u\colon X\eqv\N$ is an equivalence (with quasi-inverse $v$). Univalence ($\ua$) converts the equivalence into a path $p_{1}\colon X = \N$ in $\U$. Transporting $(x_{0},s,\iota)$ along $p_{1}$ produces $(\zero,\suc,\star')$ for some witness $\star'\colon \mathsf{isInitial}(\N,\zero,\suc)$. Since $\mathsf{isInitial}$ is a proposition, $\star'=\star$. Pairing yields the required path $p$ in $\NNO$.
   275	
   276	The map $(X,x_{0},s,\iota)\mapsto p$ is itself constructed by transport and is thus a continuous family of paths from $c$, exhibiting $c$ as the centre of contraction.
   277	\end{proof}
   278	
   279	\begin{remark}[The infinite tower]
   280	The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
   281	\end{remark}
   282	
   283	\begin{remark}[Why this is stronger]
   284	\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
   285	\end{remark}
   286	
   287	\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}\label{sec:lurie}
   288	
   289	We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
   290	
   291	\subsection{Lurie's parametrised NNO}
   292	
   293	\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
   294	Let $\mathcal{E}$ be a presentable $(\infty,1)$-topos with terminal object $\mathbf{1}$. An NNO is an object $N\in\mathcal{E}$ together with morphisms $0\colon \mathbf{1}\to N$ and $s\colon N\to N$ such that for every diagram $\mathbf{1}\xrightarrow{x_{0}}X\xrightarrow{f}X$ in $\mathcal{E}$, the mapping space
   295	\[
   296	\Map_{\PtEndo(\mathcal{E})}\bigl((N,0,s),(X,x_{0},f)\bigr)
   297	\]
   298	is contractible.
   299	\end{definition}
   300	
   301	Here $\PtEndo(\mathcal{E})$ is the $(\infty,1)$-category of pointed endomorphisms in $\mathcal{E}$. Concretely, an object of $\PtEndo(\mathcal{E})$ is a triple $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ where $X\in\mathcal{E}$, $x_{0}$ is a global element, and $f$ is an endomorphism. A morphism $(X,x_{0},f)\to(Y,y_{0},g)$ is a tuple $(h, \alpha, \beta)$ where $h\colon X\to Y$ is a morphism in $\mathcal{E}$, $\alpha\colon h\circ x_{0}\sim y_{0}$ is a $1$-cell in $\Map_{\mathcal{E}}(\mathbf{1},Y)$, and $\beta\colon h\circ f\sim g\circ h$ is a $1$-cell in $\Map_{\mathcal{E}}(X,Y)$, together with the higher cells provided by composing in $\mathcal{E}$. In symbols this is the $\infty$-categorical limit (formally, an iterated comma object)
   302	\[
   303	\PtEndo(\mathcal{E}) \;\coloneqq\; \mathcal{E}_{\mathbf{1}/}\;\times_{\mathcal{E}}\; \mathcal{E}^{[1]}
   304	\]
   305	parametrising pairs $(x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$.
   306	
   307	\begin{remark}
   308	Equivalently, an $(\infty,1)$-NNO is an initial object in $\PtEndo(\mathcal{E})$, where ``initial'' is interpreted in the $(\infty,1)$-categorical sense: the mapping space to every other object is contractible. Lurie phrases the definition via a small-colimit-preserving recursion functor; the equivalence is straightforward.
   309	\end{remark}
   310	
   311	\begin{example}
   312	When $\mathcal{E}=\Spc$, the NNO is the constant functor at $\N$. Its existence and contractibility of the mapping space is the homotopy-coherent version of the Set-theoretic recursion principle.
   313	\end{example}
   314	
   315	\begin{example}
   316	For $\mathcal{E}=\mathrm{PSh}(\mathcal{C})$ the $(\infty,1)$-category of presheaves of spaces on a small $(\infty,1)$-category $\mathcal{C}$, the NNO is the constant presheaf at $\N$, $c\mapsto \N$.
   317	\end{example}
   318	
   319	\begin{example}
   320	For $\mathcal{E}=\mathrm{Sh}(X)$ the $(\infty,1)$-topos of sheaves on a topological space $X$, the NNO is the constant sheaf $\underline{\N}$.
   321	\end{example}
   322	
   323	\subsection{Existence in presentable \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
   324	
   325	\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
   326	Every presentable $(\infty,1)$-topos has an NNO.
   327	\end{theorem}
   328	
   329	\begin{proof}[Sketch]
   330	Presentability ensures small colimits and a small generating set. Build $N$ as the sequential colimit
   331	\[
   332	N \;=\; \colim\bigl(\mathbf{1}\xrightarrow{j_{0}}\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{1}}\mathbf{1}\sqcup\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{2}}\cdots\bigr),
   333	\]
   334	where $j_{n}$ adds a new copy of $\mathbf{1}$. Equivalently, $N=\bigsqcup_{n\geq 0}\mathbf{1}$. Verification of the universal property uses the universal property of sequential colimits and contractibility of the relevant mapping spaces.
   335	\end{proof}
   336	
   337	\subsection{Elementary \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes and Rasekh's NNO}
   338	
   339	A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
   340	\begin{enumerate}
   341	  \item finite limits,
   342	  \item locally cartesian closure,
   343	  \item subobject classifier,
   344	  \item object classifier (a univalent universe of small types),
   345	  \item finite colimits.
   346	\end{enumerate}
   347	They need not be presentable.
   348	
   349	\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
   350	Every elementary $(\infty,1)$-topos has an NNO\@. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.
   351	\end{theorem}
   352	
   353	\begin{proof}[Sketch of Rasekh's argument]
   354	The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO\@. The argument uses descent, locality, and classification of univalent maps.
   355	\end{proof}
   356	
   357	\begin{remark}
   358	Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
   359	\end{remark}
   360	
   361	\subsection{Equivalence with the \texorpdfstring{$1$}{1}-NNO when \texorpdfstring{$\mathcal{E}$}{E} is a \texorpdfstring{$1$}{1}-topos}
   362	
   363	\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
   364	Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
   365	\end{theorem}
   366	
   367	\begin{proof}
   368	The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space
   369	\[
   370	\Map_{\PtEndo(\mathcal{E}^{(\infty)})}\bigl((N,0,s),(X,x_{0},f)\bigr)
   371	\]
   372	is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible.
   373	\end{proof}
   374	
   375	\section{Higher coherences}\label{sec:higher-coh}
   376	
   377	Why is the $(\infty,1)$-NNO ``more delicate''? The naive answer is: in a $1$-category, ``unique map'' is a single condition. In an $(\infty,1)$-category, ``unique map'' must be promoted to ``unique up to coherent homotopy''. Concretely, given two NNOs $N_{1}, N_{2}$ in $\mathcal{E}$, we need a comparison map $u\colon N_{1}\to N_{2}$ together with the homotopies filling the squares
   378	\[
   379	\begin{tikzcd}[column sep=large, row sep=large]
   380	\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\
   381	& N_{2} \arrow[r, "s_{2}"'] & N_{2}
   382	\end{tikzcd}
   383	\]
   384	Filling the upper-left triangle is a $1$-cell $\alpha\colon u\circ 0_{1}\sim 0_{2}$, and filling the right-hand square is a $1$-cell $\beta\colon u\circ s_{1}\sim s_{2}\circ u$. Beyond these, we need:
   385	\begin{enumerate}
   386	  \item compatibilities of these homotopies (i.e.\ $2$-cells filling in the obvious squares),
   387	  \item compatibilities of those compatibilities ($3$-cells),
   388	  \item and so on, ad infinitum.
   389	\end{enumerate}
   390	
   391	\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
   392	The initiality of an $(\infty,1)$-NNO already encodes, in a single property, the entire infinite tower of coherence data sketched above. Concretely, for any two $(\infty,1)$-NNOs $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ in an $(\infty,1)$-category $\mathcal{E}$, the mapping space
   393	\[
   394	M \;\coloneqq\; \Map_{\PtEndo(\mathcal{E})}\bigl((N_{1},0_{1},s_{1}),(N_{2},0_{2},s_{2})\bigr)
   395	\]
   396	is contractible.
   397	\end{proposition}
   398	
   399	\begin{proof}
   400	By definition of $(\infty,1)$-NNO, both $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ are initial objects of $\PtEndo(\mathcal{E})$. Initial objects in any $(\infty,1)$-category have contractible mapping spaces to every object, in particular to each other. Contractibility of $M$ is equivalent to existence of a $0$-cell (the comparison map $u$ and the homotopies $\alpha,\beta$), uniqueness up to a contractible space of $1$-cells (the next-level coherences), uniqueness of those up to a contractible space of $2$-cells, and so on inductively at every level $n\geq 0$.
   401	\end{proof}
   402	
   403	\begin{remark}
   404	The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
   405	\begin{itemize}
   406	  \item $\pi_{0}M = *$: existence and uniqueness up to homotopy of the comparison map;
   407	  \item $\pi_{n}M = 0$ for all $n\geq 1$: triviality of all higher loop spaces, i.e.\ the entire tower of compatibilities.
   408	\end{itemize}
   409	\end{remark}
   410	
   411	\subsection{Truncation level of \texorpdfstring{$\mathrm{NNO}(\mathcal{E})$}{NNO(E)}}
   412	
   413	Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.
   414	
   415	\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
   416	For any $(\infty,1)$-topos $\mathcal{E}$ in which an NNO exists, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   417	\end{theorem}
   418	
   419	\begin{proof}
   420	The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
   421	\end{proof}
   422	
   423	\section{The main theorem: contractibility for \texorpdfstring{$(\infty,1)$}{(infinity,1)}-NNOs}\label{sec:main}
   424	
   425	\subsection{Statement and proof}
   426	
   427	We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
   428	
   429	\begin{theorem}[Main theorem]\label{thm:main}
   430	Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos, by~\cite{Shulman2019}). Then:

exec
/usr/local/bin/zsh -lc "rg -n -F '\\label{' papers/latex/infinity-nno.tex && rg -n -F '\\cref{' papers/latex/infinity-nno.tex && rg -n -F '\\Cref{' papers/latex/infinity-nno.tex && rg -n -F '\\cite{' papers/latex/infinity-nno.tex && rg -n -F '\\bibitem{' papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
139:\section{Introduction}\label{sec:intro}
172:\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
178:\begin{definition}[Pointed dynamical system]\label{def:ptendo}
182:\begin{definition}[NNO]\label{def:nno}
188:\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
196:\begin{lemma}[Lambek]\label{lem:lambek}
223:\begin{theorem}[Universal property of NNO]\label{thm:up}
227:\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
233:\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
241:\subsection{HoTT contractibility}\label{sec:hott-contr}
245:\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
257:\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
287:\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}\label{sec:lurie}
293:\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
325:\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
349:\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
363:\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
375:\section{Higher coherences}\label{sec:higher-coh}
391:\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
415:\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
423:\section{The main theorem: contractibility for \texorpdfstring{$(\infty,1)$}{(infinity,1)}-NNOs}\label{sec:main}
429:\begin{theorem}[Main theorem]\label{thm:main}
462:\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
470:\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
478:\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
502:\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
510:\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
536:\section{Open problems}\label{sec:open}
147:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
156:  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
157:  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
158:  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
159:  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
231:In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
280:The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
289:We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
364:Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
372:is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible.
404:The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
420:The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
427:We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
432:  \item There exists an $(\infty,1)$-NNO in $\mathcal{E}$ (\cref{def:lurie-nno}).
440:By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
444:Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
463:Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
467:By part~(2) of \cref{thm:main}, $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
491:Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
507:The construction in \cref{thm:rasekh-hott} uses only $\U$ and pushouts; no separate power-object axiom is invoked.
523:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of~\cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT\@. We are not aware of a published proof.
540:  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
542:  Prove \cref{thm:contractibility-infty} for elementary $(\infty,1)$-toposes without invoking Shulman's theorem. The latter is currently stated for Grothendieck $(\infty,1)$-toposes; the elementary case is conjectural.
550:  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
552:  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
576:  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
587:  \item the $1$-categorical NNO and its contractibility (\cref{thm:contr-1cat});
588:  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
589:  \item Rasekh's circle-construction of an NNO in any elementary $(\infty,1)$-topos (\cref{thm:rasekh});
590:  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;
166:\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
238:\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
284:\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
450:\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
457:\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
149:By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
151:The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
243:In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
257:\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
264:\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
339:A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
349:\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
430:Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos, by~\cite{Shulman2019}). Then:
442:\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
483:Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration
512:Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
520:where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
523:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of~\cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT\@. We are not aware of a published proof.
529:  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
530:  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}). Types are general $(\infty,1)$-spaces.
531:  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
559:The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''
602:\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009.\ arXiv:math/0608040.
604:\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018.\ \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
606:\bibitem{Rasekh2018ETop} N.~Rasekh, \emph{A Theory of Elementary Higher Toposes}, 2018.\ arXiv:1805.03805.
608:\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377.\ arXiv:1809.01734.
610:\bibitem{Shulman2019} M.~Shulman, \emph{All $(\infty,1)$-toposes have strict univalent universes}, 2019.\ arXiv:1904.07004.
612:\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013.\ \url{https://homotopytypetheory.org/book/}.
614:\bibitem{LicataShulman} D.~R.~Licata and M.~Shulman, \emph{Calculating the fundamental group of the circle in homotopy type theory}, LICS 2013, 223--232.
616:\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224.\ arXiv:1705.07442.
618:\bibitem{GWB2024} D.~Gratzer, J.~Weinberger, and U.~Buchholtz, \emph{Directed univalence in simplicial homotopy type theory}, 2024.\ arXiv:2407.09146.
620:\bibitem{SchreiberShulman} U.~Schreiber and M.~Shulman, \emph{Quantum gauge field theory in cohesive homotopy type theory}, EPTCS \textbf{158} (2014), 109--126.
622:\bibitem{Lambek1968} J.~Lambek, \emph{A fixpoint theorem for complete categories}, Math.\ Z.\ \textbf{103} (1968), 151--161.
624:\bibitem{Lawvere1964} F.~W.~Lawvere, \emph{An elementary theory of the category of sets}, PNAS \textbf{52} (1964), 1506--1511.
626:\bibitem{Awodey2010} S.~Awodey, \emph{Type theory and homotopy}, in \emph{Epistemology versus Ontology}, Springer, 2012, 183--201.
628:\bibitem{Benacerraf1965} P.~Benacerraf, \emph{What numbers could not be}, Philosophical Review \textbf{74} (1965), 47--73.
630:\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011.\ \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
632:\bibitem{MartinLof1984} P.~Martin-L\"of, \emph{Intuitionistic Type Theory}, Bibliopolis, Naples, 1984.
634:\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010.\ \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
636:\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008.\ \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
638:\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
640:\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
642:\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
644:\bibitem{Synthesis} YonedaAI, \emph{The Univalent Correspondence: Synthesis}, Magneton Research Collective, 2026.
646:\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J.\ Eur.\ Math.\ Soc.\ \textbf{23} (2021), 2071--2126.
648:\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015.\ arXiv:1611.02108.
650:\bibitem{Riehl2025} E.~Riehl, \emph{Synthetic perspectives on spaces and categories}, 2025.\ arXiv:2510.15795.
652:\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos},\ \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
654:\bibitem{nLabNNO} The nLab, \emph{natural numbers object},\ \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.

exec
/usr/local/bin/zsh -lc 'pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/infinity-nno-review papers/latex/infinity-nno.tex >/tmp/infinity-nno-review/pass2.stdout && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/infinity-nno-review papers/latex/infinity-nno.tex >/tmp/infinity-nno-review/pass3.stdout; tail -n 80 /tmp/infinity-nno-review/pass3.stdout' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 1019ms:
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/l3backend/l3backend-pdftex.def)
(/tmp/infinity-nno-review/infinity-nno.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/tmp/infinity-nno-review/infinity-nno.out)
(/tmp/infinity-nno-review/infinity-nno.out)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/tmp/infinity-nno-review/infinity-nno.toc [1{/usr/local/texlive/2026/texmf-var
/fonts/map/pdftex/updmap/pdftex.map}{/usr/local/texlive/2026/texmf-dist/fonts/e
nc/dvips/cm-super/cm-super-ts1.enc}]) [2] [3] [4] [5] [6] [7] [8] [9] [10]
[11] [12] [13] [14] [15] [16] [17] (/tmp/infinity-nno-review/infinity-nno.aux) 
)</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx10.pfb>
</usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb><
/usr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx8.pfb></u
sr/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmex10.pfb></us
r/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi10.pfb></usr
/local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi12.pfb></usr/
local/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmmi8.pfb></usr/lo
cal/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb></usr/loca
l/texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr12.pfb></usr/local/
texlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr17.pfb></usr/local/te
xlive/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr6.pfb></usr/local/texli
ve/2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr7.pfb></usr/local/texlive/
2026/texmf-dist/fonts/type1/public/amsfonts/cm/cmr8.pfb></usr/local/texlive/202
6/texmf-dist/fonts/type1/public/amsfonts/cm/cmss10.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmss12.pfb></usr/local/texlive/2026/
texmf-dist/fonts/type1/public/amsfonts/cm/cmssbx10.pfb></usr/local/texlive/2026
/texmf-dist/fonts/type1/public/amsfonts/cm/cmsy10.pfb></usr/local/texlive/2026/
texmf-dist/fonts/type1/public/amsfonts/cm/cmsy6.pfb></usr/local/texlive/2026/te
xmf-dist/fonts/type1/public/amsfonts/cm/cmsy8.pfb></usr/local/texlive/2026/texm
f-dist/fonts/type1/public/amsfonts/cm/cmti10.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/amsfonts/cm/cmti12.pfb></usr/local/texlive/2026/texmf-
dist/fonts/type1/public/amsfonts/cm/cmtt12.pfb></usr/local/texlive/2026/texmf-d
ist/fonts/type1/public/amsfonts/symbols/msbm10.pfb></usr/local/texlive/2026/tex
mf-dist/fonts/type1/public/cm-super/sfrm1095.pfb></usr/local/texlive/2026/texmf
-dist/fonts/type1/public/cm-super/sfrm1200.pfb>
Output written on /tmp/infinity-nno-review/infinity-nno.pdf (17 pages, 352749 b
ytes).
Transcript written on /tmp/infinity-nno-review/infinity-nno.log.

exec
/usr/local/bin/zsh -lc "sed -n '520,560p' papers/latex/infinity-nno.tex | nl -ba -v520" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'rg -n "(Warning|Overfull|Underfull|Undefined|undefined|multiply-defined|LaTeX Error|Package .* Error|Package .* Warning)" /tmp/infinity-nno-review/infinity-nno.log' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   520	where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
   521	
   522	\begin{remark}[Open]
   523	A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of~\cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT\@. We are not aware of a published proof.
   524	\end{remark}
   525	
   526	\subsection{Comparing internal language flavours}
   527	
   528	\begin{itemize}
   529	  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
   530	  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}). Types are general $(\infty,1)$-spaces.
   531	  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
   532	\end{itemize}
   533	
   534	For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.
   535	
   536	\section{Open problems}\label{sec:open}
   537	
   538	\begin{enumerate}
   539	  \item \textbf{Internal-to-external transfer.}
   540	  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
   541	  \item \textbf{Elementary case (Rasekh).}
   542	  Prove \cref{thm:contractibility-infty} for elementary $(\infty,1)$-toposes without invoking Shulman's theorem. The latter is currently stated for Grothendieck $(\infty,1)$-toposes; the elementary case is conjectural.
   543	  \item \textbf{Synthetic NNO contractibility in STT.}
   544	  Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory, using only Rezk-completeness of the universe of discrete types.
   545	  \item \textbf{Course-of-values and primitive recursion.}
   546	  Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
   547	  \item \textbf{Lurie's parametrised NNO.}
   548	  Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here. Show that the parametrisation is functorial up to contractible choice.
   549	  \item \textbf{Cubical Agda formalisation.}
   550	  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
   551	  \item \textbf{Univalent foundations of arithmetic.}
   552	  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
   553	\end{enumerate}
   554	
   555	\section{Discussion}
   556	
   557	\subsection{Philosophical remarks}
   558	
   559	The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''
   560	

 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc 'which chktex || true; which lacheck || true; which latexmk || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex
/Library/TeX/texbin/lacheck
/Library/TeX/texbin/latexmk

codex
After three passes, the LaTeX log is clean: no undefined references/citations, no overfull/underfull boxes, and no package errors. I’m doing one lint pass now for source-level spacing/style issues that TeX may not warn about.
exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/infinity-nno.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/infinity-nno.tex", line 83: possible unwanted space at "{"
"papers/latex/infinity-nno.tex", line 130: missing `\@' before `.' in "NNO."

exec
/usr/local/bin/zsh -lc "rg -n \"\\.\\.\\.|---|"'``|'"''|e\\.g\\.\\ |i\\.e\\.\\ |cf\\.\\ |etc\\.\\ |\\\\S\\\\ref|Section~|Theorem~|Prop\\.~|Paper~|HTT\\\\@|NNO\\\\@|STT\\\\@\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
1:\documentclass[12pt]{article}
2:
3:% Core math
4:\usepackage{amsmath, amssymb, amsthm}
5:\usepackage{mathtools}
6:
7:% Diagrams
8:\usepackage{tikz-cd}
9:\usepackage{tikz}
10:
11:% Graphics
12:\usepackage{graphicx}
13:
14:% Page layout
15:\usepackage[margin=1in]{geometry}
16:
17:% URL handling (must come before hyperref)
18:\usepackage{xurl}
19:
20:% References
21:\usepackage{hyperref}
22:\usepackage{cleveref}
23:
24:% GrokRxiv sidebar
25:\usepackage{xcolor}
26:
27:% Allow URLs to break flexibly to avoid underfull \hbox warnings
28:\Urlmuskip=0mu plus 1mu
29:
30:% Theorem environments
31:\newtheorem{theorem}{Theorem}[section]
32:\newtheorem{proposition}[theorem]{Proposition}
33:\newtheorem{lemma}[theorem]{Lemma}
34:\newtheorem{corollary}[theorem]{Corollary}
35:\theoremstyle{definition}
36:\newtheorem{definition}[theorem]{Definition}
37:\theoremstyle{remark}
38:\newtheorem{remark}[theorem]{Remark}
39:\newtheorem{example}[theorem]{Example}
40:
41:% Macros
42:\newcommand{\N}{\mathbb{N}}
43:\newcommand{\Z}{\mathbb{Z}}
44:\newcommand{\Q}{\mathbb{Q}}
45:\newcommand{\R}{\mathbb{R}}
46:\newcommand{\Set}{\mathbf{Set}}
47:\newcommand{\op}{\mathrm{op}}
48:\newcommand{\id}{\mathrm{id}}
49:\newcommand{\Hom}{\mathrm{Hom}}
50:\newcommand{\Map}{\mathrm{Map}}
51:\newcommand{\Nat}{\mathrm{Nat}}
52:\newcommand{\zero}{\mathsf{zero}}
53:\newcommand{\suc}{\mathsf{succ}}
54:\newcommand{\PtEndo}{\mathbf{PtEndo}}
55:\newcommand{\iso}{\cong}
56:\newcommand{\eqv}{\simeq}
57:\newcommand{\NNO}{\mathrm{NNO}}
58:\newcommand{\Type}{\mathsf{Type}}
59:\newcommand{\U}{\mathcal{U}}
60:\newcommand{\Id}{\mathsf{Id}}
61:\newcommand{\refl}{\mathsf{refl}}
62:\newcommand{\transport}{\mathsf{transport}}
63:\newcommand{\ua}{\mathsf{ua}}
64:\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
65:\newcommand{\looppath}{\mathsf{loop}}
66:\newcommand{\base}{\mathsf{base}}
67:\newcommand{\Sone}{S^{1}}
68:\newcommand{\isContr}{\mathsf{isContr}}
69:\newcommand{\isProp}{\mathsf{isProp}}
70:\newcommand{\isSet}{\mathsf{isSet}}
71:\newcommand{\Cat}{\mathbf{Cat}}
72:\newcommand{\Cati}{\mathbf{Cat}_{\infty}}
73:\newcommand{\Spc}{\mathcal{S}}
74:\newcommand{\Topos}{\mathbf{Top}}
75:\newcommand{\ETopos}{\mathbf{ETop}}
76:\newcommand{\colim}{\mathrm{colim}}
77:\newcommand{\rec}{\mathsf{rec}}
78:\newcommand{\ind}{\mathsf{ind}}
79:\newcommand{\Sigmatype}{\Sigma}
80:\newcommand{\Pitype}{\Pi}
81:
82:% Hyperref setup
83:\hypersetup{
84:  colorlinks=true,
85:  linkcolor=blue!60!black,
86:  citecolor=blue!60!black,
87:  urlcolor=blue!60!black
88:}
89:
90:% GrokRxiv sidebar (native LaTeX hook on first page only)
91:\definecolor{grokgray}{RGB}{110,110,110}
92:\AddToHook{shipout/background}{%
93:  \ifnum\value{page}=1
94:    \begin{tikzpicture}[remember picture, overlay]
95:      \node[
96:        rotate=90,
97:        anchor=south,
98:        font=\Large\sffamily\bfseries\color{grokgray},
99:        inner sep=0pt
100:      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
101:      {GrokRxiv:2026.05.infinity-nno\quad
102:       [\,math.CT\,]\quad
103:       04 May 2026};
104:    \end{tikzpicture}%
105:  \fi
106:}
107:
108:\title{Higher-Categorical Natural Numbers Objects:\\
109:Contractibility, $\infty$-Toposes, and Lurie's NNO}
110:
111:\author{YonedaAI \\
112:\textit{Magneton Research Collective} \\
113:\textit{Independent Mathematical Foundations Group} \\
114:San Francisco, CA \\
115:\texttt{research@yonedaai.org} $\cdot$ \url{https://yonedaai.org}}
116:
117:\date{4 May 2026}
118:
119:\begin{document}
120:
121:\maketitle
122:
123:\begin{abstract}
124:The natural numbers object (NNO) of an elementary topos is, classically, an object equipped with a global element $0$ and an endomorphism $s$ such that the resulting pointed dynamical system is initial. In a $1$-topos any two NNOs are connected by a unique isomorphism, and the automorphism group of an NNO is trivial: NNO structures form a contractible groupoid, equivalently a $(-2)$-truncated $\infty$-groupoid. In homotopy type theory (HoTT), Theorem~2.7 of Paper~III (and the equivalent Theorem~4.4 of Paper~V of the present series) refines this rigidity: the type
125:\[
126:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s)
127:\]
128:is contractible. By Shulman's interpretation theorem, every $(\infty,1)$-topos $\mathcal{E}$ admits a model of HoTT~+~univalence, so the corresponding statement transports to an internal contractibility result for the type of NNO structures inside $\mathcal{E}$.
129:
130:This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.
131:
132:\medskip\noindent\textbf{Keywords.} Natural numbers object; $(\infty,1)$-topos; elementary higher topos; contractibility; homotopy type theory; Rasekh's theorem; Lurie HTT\@.
133:
134:\medskip\noindent\textbf{MSC2020.} 18N60, 03B38, 18B25, 03G30.
135:\end{abstract}
136:
137:\tableofcontents
138:
139:\section{Introduction}\label{sec:intro}
140:
141:The natural numbers object (NNO) is among the most basic universal constructions of categorical logic. Lawvere's 1964 axiomatisation of the elementary theory of the category of sets (ETCS) treats the NNO as an irreducible primitive on equal footing with the terminal object, the subobject classifier, and exponentials. In any cartesian closed category $\mathcal{C}$ with a terminal object $\mathbf{1}$, an NNO is a triple $(N, 0\colon \mathbf{1}\to N, s\colon N\to N)$ such that for every $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ there exists a unique morphism $h\colon N\to X$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$. Two NNOs are related by a unique isomorphism; the automorphism group of an NNO is trivial. In $\Set$ the NNO is the von Neumann set $\omega = \{0,1,2,\ldots\}$ with successor; up to canonical isomorphism, ``the natural numbers'' is a property, not a choice of structure.
142:
143:The HoTT version is finer. Working in the univalent universe $\U$, define
144:\[
145:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
146:\]
147:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
148:
149:By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
150:
151:The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
152:
153:\subsection*{Contributions}
154:
155:\begin{enumerate}
156:  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
157:  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
158:  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
159:  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
160:  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
161:  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
162:\end{enumerate}
163:
164:\subsection*{Outline}
165:
166:\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
167:
168:\subsection*{Conventions}
169:
170:We use $\Cati$ for the $(\infty,2)$-category of $(\infty,1)$-categories and $\Spc$ for the $(\infty,1)$-category of $\infty$-groupoids (``spaces''). For an $(\infty,1)$-category $\mathcal{C}$, $\Map_{\mathcal{C}}(X,Y)\in\Spc$ denotes the mapping space. We write $\mathbf{1}$ for a terminal object. Throughout, ``HoTT'' refers to Martin-L\"of type theory with $\Sigmatype$, $\Pitype$, identity types, finite coproducts, the natural numbers type, function extensionality, and the univalence axiom for at least one hierarchy of universes.
171:
172:\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
173:
174:We begin by recalling the classical material in a form that will generalise cleanly to the $\infty$-categorical setting.
175:
176:\subsection{Pointed endomorphisms and \texorpdfstring{$1$}{1}-NNO}
177:
178:\begin{definition}[Pointed dynamical system]\label{def:ptendo}
179:Let $\mathcal{C}$ be a category with terminal object $\mathbf{1}$. The category $\PtEndo(\mathcal{C})$ has as objects triples $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$, and morphisms $(X,x_{0},f)\to(Y,y_{0},g)$ are arrows $h\colon X\to Y$ in $\mathcal{C}$ such that $h\circ x_{0}=y_{0}$ and $h\circ f = g\circ h$.
180:\end{definition}
181:
182:\begin{definition}[NNO]\label{def:nno}
183:A natural numbers object in $\mathcal{C}$ is an initial object of $\PtEndo(\mathcal{C})$.
184:\end{definition}
185:
186:Equivalently, viewing the endofunctor $F\colon \mathcal{C}\to \mathcal{C}$ given by $FX = \mathbf{1}+X$ (when coproducts exist), an NNO is an initial $F$-algebra: a pair $(N,[0,s]\colon \mathbf{1}+N\to N)$ initial in $F\text{-}\mathbf{Alg}$.
187:
188:\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
189:If $I,I'$ are initial in any category, there is a unique isomorphism $I\to I'$, and the automorphism group $\mathrm{Aut}(I)$ is trivial.
190:\end{lemma}
191:
192:\begin{proof}
193:Initiality of $I$ gives a unique map $u\colon I\to I'$, and dually a unique $v\colon I'\to I$. The composites $v\circ u$ and $\id_{I}$ are both morphisms $I\to I$; since $I$ is initial, the hom-set $\Hom(I,I)$ has exactly one element, hence $v\circ u=\id_{I}$. Similarly $u\circ v = \id_{I'}$. Applying the same argument with $I=I'$, every endomorphism of $I$ equals $\id_{I}$, so $\mathrm{Aut}(I)=\{\id_{I}\}$.
194:\end{proof}
195:
196:\begin{lemma}[Lambek]\label{lem:lambek}
197:If $(I,\iota\colon FI\to I)$ is an initial $F$-algebra, then $\iota$ is an isomorphism.
198:\end{lemma}
199:
200:\begin{proof}
201:The map $F\iota\colon F(FI)\to FI$ endows $FI$ with the structure of an $F$-algebra, denoted $(FI,F\iota)$. By initiality of $(I,\iota)$ there is a unique $F$-algebra homomorphism $h\colon (I,\iota)\to (FI,F\iota)$, that is, a morphism $h\colon I\to FI$ in $\mathcal{C}$ with
202:\[
203:h\circ \iota \;=\; F\iota\circ Fh.
204:\]
205:On the other hand, $\iota$ itself is an $F$-algebra homomorphism $(FI,F\iota)\to(I,\iota)$, since $\iota\circ F\iota = \iota\circ F\iota$ trivially. Thus $\iota\circ h\colon (I,\iota)\to (I,\iota)$ is an $F$-algebra endomorphism, and by initiality (applied to $(I,\iota)$ as the source of a unique map to itself) it equals $\id_{I}$. We conclude $\iota\circ h = \id_{I}$. For the other composite, observe
206:\[
207:h\circ \iota \;=\; F\iota\circ Fh \;=\; F(\iota\circ h) \;=\; F(\id_{I}) \;=\; \id_{FI},
208:\]
209:using functoriality of $F$. Thus $h$ is two-sided inverse to $\iota$, and $\iota$ is an isomorphism.
210:\end{proof}
211:
212:\begin{remark}
213:The Lambek square depicting the proof is
214:\[
215:\begin{tikzcd}[column sep=large, row sep=large]
216:FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\
217:I \arrow[r, "h"'] & FI
218:\end{tikzcd}
219:\]
220:which commutes by definition of $h$ as an $F$-algebra homomorphism.
221:\end{remark}
222:
223:\begin{theorem}[Universal property of NNO]\label{thm:up}
224:Let $(N,0,s)$ be an NNO in $\mathcal{C}$. For every $(X,x_{0},f)$ in $\PtEndo(\mathcal{C})$ there exists a unique $h\colon N\to X$ in $\mathcal{C}$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$.
225:\end{theorem}
226:
227:\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
228:
229:We use the standard truncation conventions: a $(-2)$-type is contractible, a $(-1)$-type is a (mere) proposition (a groupoid in which any two objects are connected by at most one morphism), and a $0$-type is a set. A nonempty groupoid in which every hom-set is a singleton is contractible---a $(-2)$-type.
230:
231:In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
232:
233:\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
234:In any category $\mathcal{C}$ with terminal object, the groupoid $\NNO(\mathcal{C})$ of NNO structures is either empty or contractible (i.e.\ a $(-2)$-type). Equivalently, the moduli space of NNOs in $\mathcal{C}$ is a (mere) proposition: existence implies essential uniqueness, with no nontrivial automorphisms or higher cells (which are absent at the $1$-categorical level).
235:\end{theorem}
236:
237:\begin{proof}
238:\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
239:\end{proof}
240:
241:\subsection{HoTT contractibility}\label{sec:hott-contr}
242:
243:In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
244:
245:\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
246:\[
247:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
248:\]
249:where
250:\[
251:\mathsf{isInitial}(X,x_{0},s) \;\coloneqq\; \Pitype_{(Y,y_{0},f):\PtEndo(\U)}\,\isContr\!\bigl(\Sigmatype_{h:X\to Y}(h\,x_{0}=y_{0})\times\Pitype_{x:X}(h(s\,x)=f(h\,x))\bigr).
252:\]
253:\end{definition}
254:
255:Note that $\mathsf{isInitial}(X,x_{0},s)$ is, by construction, an iterated $\Pitype$-type whose body is $\isContr$ of a $\Sigmatype$-type; since $\isContr$ is a (mere) proposition and $\Pitype$ of propositions is a proposition, $\mathsf{isInitial}$ is a proposition.
256:
257:\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
258:The type $\NNO$ is contractible. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical witness of initiality given by the standard recursor $\rec_{\N}$ together with its computation rules.
259:\end{theorem}
260:
261:\begin{proof}
262:We must show $\isContr(\NNO)$, i.e.\ produce a centre $c\in\NNO$ and a continuous family of paths from $c$ to every point of $\NNO$.
263:
264:\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
265:\[
266:\Sigmatype_{h\colon \N\to Y}(h\,\zero=y_{0})\times\Pitype_{n:\N}(h(\suc\,n)=f(h\,n))
267:\]
268:is contractible: $h=\rec_{\N}\,y_{0}\,f$ together with the $\refl$-witnesses of the equations is the centre, and the contraction is provided by the $\ind_{\N}$ step above.
269:
270:\emph{Contraction onto the centre.} Take any $(X,x_{0},s,\iota)\in\NNO$. We must produce a path
271:\[
272:p\colon (\N,\zero,\suc,\star) \;=\; (X,x_{0},s,\iota) \quad\text{in}\quad \NNO.
273:\]
274:Apply $\iota$ to the pointed system $(\N,\zero,\suc)$: it yields a contractible type whose centre is a unique map $u\colon X\to \N$ with $u\,x_{0}=\zero$ and $u\circ s\sim \suc\circ u$. Apply $\star$ to $(X,x_{0},s)$: a unique map $v\colon \N\to X$ with $v\,\zero=x_{0}$ and $v\circ \suc\sim s\circ v$. The composites $u\circ v\colon \N\to\N$ and $\id_{\N}$ both satisfy the universal-property equations for $(\N,\zero,\suc,\star)$; uniqueness inside the contractible type of recursors forces $u\circ v=\id_{\N}$ via $\ind_{\N}$, and likewise $v\circ u=\id_{X}$ via $\iota$. Thus $u\colon X\eqv\N$ is an equivalence (with quasi-inverse $v$). Univalence ($\ua$) converts the equivalence into a path $p_{1}\colon X = \N$ in $\U$. Transporting $(x_{0},s,\iota)$ along $p_{1}$ produces $(\zero,\suc,\star')$ for some witness $\star'\colon \mathsf{isInitial}(\N,\zero,\suc)$. Since $\mathsf{isInitial}$ is a proposition, $\star'=\star$. Pairing yields the required path $p$ in $\NNO$.
275:
276:The map $(X,x_{0},s,\iota)\mapsto p$ is itself constructed by transport and is thus a continuous family of paths from $c$, exhibiting $c$ as the centre of contraction.
277:\end{proof}
278:
279:\begin{remark}[The infinite tower]
280:The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
281:\end{remark}
282:
283:\begin{remark}[Why this is stronger]
284:\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
285:\end{remark}
286:
287:\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}\label{sec:lurie}
288:
289:We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
290:
291:\subsection{Lurie's parametrised NNO}
292:
293:\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
294:Let $\mathcal{E}$ be a presentable $(\infty,1)$-topos with terminal object $\mathbf{1}$. An NNO is an object $N\in\mathcal{E}$ together with morphisms $0\colon \mathbf{1}\to N$ and $s\colon N\to N$ such that for every diagram $\mathbf{1}\xrightarrow{x_{0}}X\xrightarrow{f}X$ in $\mathcal{E}$, the mapping space
295:\[
296:\Map_{\PtEndo(\mathcal{E})}\bigl((N,0,s),(X,x_{0},f)\bigr)
297:\]
298:is contractible.
299:\end{definition}
300:
301:Here $\PtEndo(\mathcal{E})$ is the $(\infty,1)$-category of pointed endomorphisms in $\mathcal{E}$. Concretely, an object of $\PtEndo(\mathcal{E})$ is a triple $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ where $X\in\mathcal{E}$, $x_{0}$ is a global element, and $f$ is an endomorphism. A morphism $(X,x_{0},f)\to(Y,y_{0},g)$ is a tuple $(h, \alpha, \beta)$ where $h\colon X\to Y$ is a morphism in $\mathcal{E}$, $\alpha\colon h\circ x_{0}\sim y_{0}$ is a $1$-cell in $\Map_{\mathcal{E}}(\mathbf{1},Y)$, and $\beta\colon h\circ f\sim g\circ h$ is a $1$-cell in $\Map_{\mathcal{E}}(X,Y)$, together with the higher cells provided by composing in $\mathcal{E}$. In symbols this is the $\infty$-categorical limit (formally, an iterated comma object)
302:\[
303:\PtEndo(\mathcal{E}) \;\coloneqq\; \mathcal{E}_{\mathbf{1}/}\;\times_{\mathcal{E}}\; \mathcal{E}^{[1]}
304:\]
305:parametrising pairs $(x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$.
306:
307:\begin{remark}
308:Equivalently, an $(\infty,1)$-NNO is an initial object in $\PtEndo(\mathcal{E})$, where ``initial'' is interpreted in the $(\infty,1)$-categorical sense: the mapping space to every other object is contractible. Lurie phrases the definition via a small-colimit-preserving recursion functor; the equivalence is straightforward.
309:\end{remark}
310:
311:\begin{example}
312:When $\mathcal{E}=\Spc$, the NNO is the constant functor at $\N$. Its existence and contractibility of the mapping space is the homotopy-coherent version of the Set-theoretic recursion principle.
313:\end{example}
314:
315:\begin{example}
316:For $\mathcal{E}=\mathrm{PSh}(\mathcal{C})$ the $(\infty,1)$-category of presheaves of spaces on a small $(\infty,1)$-category $\mathcal{C}$, the NNO is the constant presheaf at $\N$, $c\mapsto \N$.
317:\end{example}
318:
319:\begin{example}
320:For $\mathcal{E}=\mathrm{Sh}(X)$ the $(\infty,1)$-topos of sheaves on a topological space $X$, the NNO is the constant sheaf $\underline{\N}$.
321:\end{example}
322:
323:\subsection{Existence in presentable \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes}
324:
325:\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
326:Every presentable $(\infty,1)$-topos has an NNO.
327:\end{theorem}
328:
329:\begin{proof}[Sketch]
330:Presentability ensures small colimits and a small generating set. Build $N$ as the sequential colimit
331:\[
332:N \;=\; \colim\bigl(\mathbf{1}\xrightarrow{j_{0}}\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{1}}\mathbf{1}\sqcup\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{2}}\cdots\bigr),
333:\]
334:where $j_{n}$ adds a new copy of $\mathbf{1}$. Equivalently, $N=\bigsqcup_{n\geq 0}\mathbf{1}$. Verification of the universal property uses the universal property of sequential colimits and contractibility of the relevant mapping spaces.
335:\end{proof}
336:
337:\subsection{Elementary \texorpdfstring{$(\infty,1)$}{(infinity,1)}-toposes and Rasekh's NNO}
338:
339:A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
340:\begin{enumerate}
341:  \item finite limits,
342:  \item locally cartesian closure,
343:  \item subobject classifier,
344:  \item object classifier (a univalent universe of small types),
345:  \item finite colimits.
346:\end{enumerate}
347:They need not be presentable.
348:
349:\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
350:Every elementary $(\infty,1)$-topos has an NNO\@. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.
351:\end{theorem}
352:
353:\begin{proof}[Sketch of Rasekh's argument]
354:The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO\@. The argument uses descent, locality, and classification of univalent maps.
355:\end{proof}
356:
357:\begin{remark}
358:Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
359:\end{remark}
360:
361:\subsection{Equivalence with the \texorpdfstring{$1$}{1}-NNO when \texorpdfstring{$\mathcal{E}$}{E} is a \texorpdfstring{$1$}{1}-topos}
362:
363:\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
364:Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
365:\end{theorem}
366:
367:\begin{proof}
368:The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space
369:\[
370:\Map_{\PtEndo(\mathcal{E}^{(\infty)})}\bigl((N,0,s),(X,x_{0},f)\bigr)
371:\]
372:is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible.
373:\end{proof}
374:
375:\section{Higher coherences}\label{sec:higher-coh}
376:
377:Why is the $(\infty,1)$-NNO ``more delicate''? The naive answer is: in a $1$-category, ``unique map'' is a single condition. In an $(\infty,1)$-category, ``unique map'' must be promoted to ``unique up to coherent homotopy''. Concretely, given two NNOs $N_{1}, N_{2}$ in $\mathcal{E}$, we need a comparison map $u\colon N_{1}\to N_{2}$ together with the homotopies filling the squares
378:\[
379:\begin{tikzcd}[column sep=large, row sep=large]
380:\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\
381:& N_{2} \arrow[r, "s_{2}"'] & N_{2}
382:\end{tikzcd}
383:\]
384:Filling the upper-left triangle is a $1$-cell $\alpha\colon u\circ 0_{1}\sim 0_{2}$, and filling the right-hand square is a $1$-cell $\beta\colon u\circ s_{1}\sim s_{2}\circ u$. Beyond these, we need:
385:\begin{enumerate}
386:  \item compatibilities of these homotopies (i.e.\ $2$-cells filling in the obvious squares),
387:  \item compatibilities of those compatibilities ($3$-cells),
388:  \item and so on, ad infinitum.
389:\end{enumerate}
390:
391:\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
392:The initiality of an $(\infty,1)$-NNO already encodes, in a single property, the entire infinite tower of coherence data sketched above. Concretely, for any two $(\infty,1)$-NNOs $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ in an $(\infty,1)$-category $\mathcal{E}$, the mapping space
393:\[
394:M \;\coloneqq\; \Map_{\PtEndo(\mathcal{E})}\bigl((N_{1},0_{1},s_{1}),(N_{2},0_{2},s_{2})\bigr)
395:\]
396:is contractible.
397:\end{proposition}
398:
399:\begin{proof}
400:By definition of $(\infty,1)$-NNO, both $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ are initial objects of $\PtEndo(\mathcal{E})$. Initial objects in any $(\infty,1)$-category have contractible mapping spaces to every object, in particular to each other. Contractibility of $M$ is equivalent to existence of a $0$-cell (the comparison map $u$ and the homotopies $\alpha,\beta$), uniqueness up to a contractible space of $1$-cells (the next-level coherences), uniqueness of those up to a contractible space of $2$-cells, and so on inductively at every level $n\geq 0$.
401:\end{proof}
402:
403:\begin{remark}
404:The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
405:\begin{itemize}
406:  \item $\pi_{0}M = *$: existence and uniqueness up to homotopy of the comparison map;
407:  \item $\pi_{n}M = 0$ for all $n\geq 1$: triviality of all higher loop spaces, i.e.\ the entire tower of compatibilities.
408:\end{itemize}
409:\end{remark}
410:
411:\subsection{Truncation level of \texorpdfstring{$\mathrm{NNO}(\mathcal{E})$}{NNO(E)}}
412:
413:Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.
414:
415:\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
416:For any $(\infty,1)$-topos $\mathcal{E}$ in which an NNO exists, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
417:\end{theorem}
418:
419:\begin{proof}
420:The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
421:\end{proof}
422:
423:\section{The main theorem: contractibility for \texorpdfstring{$(\infty,1)$}{(infinity,1)}-NNOs}\label{sec:main}
424:
425:\subsection{Statement and proof}
426:
427:We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
428:
429:\begin{theorem}[Main theorem]\label{thm:main}
430:Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos, by~\cite{Shulman2019}). Then:
431:\begin{enumerate}
432:  \item There exists an $(\infty,1)$-NNO in $\mathcal{E}$ (\cref{def:lurie-nno}).
433:  \item The space $\mathrm{NNO}(\mathcal{E})$ is contractible (a $(-2)$-type).
434:  \item Any two $(\infty,1)$-NNOs in $\mathcal{E}$ are connected by an essentially unique equivalence.
435:  \item The automorphism $\infty$-group of an $(\infty,1)$-NNO is contractible.
436:\end{enumerate}
437:\end{theorem}
438:
439:\begin{proof}
440:By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
441:
442:\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
443:
444:Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
445:\end{proof}
446:
447:\subsection{What ``contractible'' contributes beyond ``unique iso''}
448:
449:\begin{remark}[Higher coherence cancellation]
450:\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
451:\begin{itemize}
452:  \item a $1$-cell witnessing $h\circ 0\sim x_{0}$,
453:  \item a $1$-cell witnessing $h\circ s\sim f\circ h$,
454:  \item $2$-cells expressing that the choice of $1$-cells is unique up to homotopy,
455:  \item $\ldots$
456:\end{itemize}
457:\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
458:\end{remark}
459:
460:\subsection{Identification with Rasekh's NNO}
461:
462:\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
463:Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
464:\end{theorem}
465:
466:\begin{proof}
467:By part~(2) of \cref{thm:main}, $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
468:\end{proof}
469:
470:\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
471:
472:We now sharpen the discussion of Rasekh's circle-construction.
473:
474:\subsection{The role of \texorpdfstring{$\Sone$}{S\^{}1}}
475:
476:In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT\@. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
477:
478:\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
479:$\Omega\Sone\eqv\Z$ in any elementary $(\infty,1)$-topos $\mathcal{E}$, where $\Z$ is the group object obtained from the type of integers in $\mathcal{E}$.
480:\end{theorem}
481:
482:\begin{proof}[Idea]
483:Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration
484:\[
485:\mathrm{code}\colon \Sone\to \U \qquad\text{with}\qquad \mathrm{code}(\base)\eqv\Z,
486:\]
487:where the loop $\looppath$ acts as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
488:\end{proof}
489:
490:\begin{remark}[Recovery of $\N$ from $\Z$]
491:Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
492:\end{remark}
493:
494:\subsection{Why this fails in \texorpdfstring{$1$}{1}-topos theory}
495:
496:In a $1$-topos $\mathcal{E}_{1}$, every type is $0$-truncated, so $\Omega\Sone = \Sone\times_{\Sone}\Sone$ is the singleton (a single point with no nontrivial loops, since paths don't exist). The encode--decode argument collapses, and we cannot recover $\Z$ or $\N$ this way. The $\infty$-categorical setting is therefore not just a technical generalisation: it makes essentially new constructions possible.
497:
498:\subsection{Power objects vs object classifier}
499:
500:A subtle point in the elementary axiomatic is whether one assumes power objects (like $1$-toposes) or an object classifier (Lurie's $(\infty,1)$-version). Power objects classify subobjects; the object classifier classifies all small maps.
501:
502:\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
503:In an elementary $(\infty,1)$-topos with object classifier $\U$, the NNO can be constructed without separate appeal to power objects.
504:\end{proposition}
505:
506:\begin{proof}
507:The construction in \cref{thm:rasekh-hott} uses only $\U$ and pushouts; no separate power-object axiom is invoked.
508:\end{proof}
509:
510:\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
511:
512:Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
513:
514:\subsection{An NNO in STT}
515:
516:In STT, one can define the type
517:\[
518:\NNO_{\mathrm{dir}} \;\coloneqq\; \Sigmatype_{X}\,\Sigmatype_{x_{0}\colon \mathbf{1}\to X}\,\Sigmatype_{s\colon X\to X}\,\mathsf{isInitial}_{\mathrm{dir}}(X,x_{0},s),
519:\]
520:where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
521:
522:\begin{remark}[Open]
523:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of~\cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT\@. We are not aware of a published proof.
524:\end{remark}
525:
526:\subsection{Comparing internal language flavours}
527:
528:\begin{itemize}
529:  \item HoTT internal language: $(\infty,1)$-toposes (Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
530:  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}). Types are general $(\infty,1)$-spaces.
531:  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
532:\end{itemize}
533:
534:For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.
535:
536:\section{Open problems}\label{sec:open}
537:
538:\begin{enumerate}
539:  \item \textbf{Internal-to-external transfer.}
540:  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
541:  \item \textbf{Elementary case (Rasekh).}
542:  Prove \cref{thm:contractibility-infty} for elementary $(\infty,1)$-toposes without invoking Shulman's theorem. The latter is currently stated for Grothendieck $(\infty,1)$-toposes; the elementary case is conjectural.
543:  \item \textbf{Synthetic NNO contractibility in STT.}
544:  Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory, using only Rezk-completeness of the universe of discrete types.
545:  \item \textbf{Course-of-values and primitive recursion.}
546:  Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
547:  \item \textbf{Lurie's parametrised NNO.}
548:  Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here. Show that the parametrisation is functorial up to contractible choice.
549:  \item \textbf{Cubical Agda formalisation.}
550:  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
551:  \item \textbf{Univalent foundations of arithmetic.}
552:  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
553:\end{enumerate}
554:
555:\section{Discussion}
556:
557:\subsection{Philosophical remarks}
558:
559:The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''
560:
561:\subsection{Relationship to other modular foundations}
562:
563:In the modular framework adopted by the broader research programme, the NNO sits at the bottom of a tower:
564:\begin{enumerate}
565:  \item \textbf{NNO} (this paper): provides arithmetic.
566:  \item \textbf{Real numbers HIIT}: built on $\N$ (Paper~V \S5).
567:  \item \textbf{Coalgebraic transcendentals}: built on streams over $\R$ (Topic 1).
568:  \item \textbf{$(\infty,1)$-Langlands}: built on $\R, \Q_{p}, \mathbb{A}$ (Topic 2).
569:  \item \textbf{Higher inductive types of all kinds}: built on the entire HoTT framework (Topic 6).
570:\end{enumerate}
571:The contractibility of NNO at the $(\infty,1)$-level ensures that everything built on top of NNO inherits a unique, canonical foundation. This is the modular composition principle: each layer is uniquely determined by the previous one, up to contractible choice.
572:
573:\subsection{Limitations}
574:
575:\begin{itemize}
576:  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
577:  \item Higher coherence verification, while ``automatic'' in HoTT, requires actual computation in concrete models. We have not exhibited explicit cellular witnesses for, say, the bisimplicial set model.
578:  \item The connection to Rasekh's circle-construction is via contractibility: we know the two NNOs agree, but we do not give an explicit comparison map.
579:\end{itemize}
580:
581:\section{Conclusion}
582:
583:The natural numbers object is one of the simplest universal constructions in category theory; nonetheless, lifting it from the $1$-categorical to the $(\infty,1)$-categorical setting illustrates the full power of modern higher-categorical machinery. The key insight is that contractibility, as defined in HoTT (a single propositional condition), automatically encodes an infinite tower of homotopy coherences. This makes HoTT the ideal language to state and prove $(\infty,1)$-categorical universal properties without the bookkeeping of explicit cell-by-cell verification.
584:
585:We have presented:
586:\begin{itemize}
587:  \item the $1$-categorical NNO and its contractibility (\cref{thm:contr-1cat});
588:  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
589:  \item Rasekh's circle-construction of an NNO in any elementary $(\infty,1)$-topos (\cref{thm:rasekh});
590:  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;
591:  \item a synthetic perspective via simplicial type theory.
592:\end{itemize}
593:
594:The remaining open problems---particularly the synthetic STT proof and the Cubical Agda formalisation---are within reach of current methods. Once completed, they will close the gap between the conceptual ``contractibility solves it'' answer and the explicit cellular-coherent verification.
595:
596:\section*{Acknowledgements}
597:
598:The author thanks the Magneton Research Collective for ongoing discussion, and acknowledges the foundational work of Lurie, Rasekh, Shulman, Riehl, and the HoTT community.
599:
600:\begin{thebibliography}{99}
601:
602:\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009.\ arXiv:math/0608040.
603:
604:\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018.\ \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
605:
606:\bibitem{Rasekh2018ETop} N.~Rasekh, \emph{A Theory of Elementary Higher Toposes}, 2018.\ arXiv:1805.03805.
607:
608:\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377.\ arXiv:1809.01734.
609:
610:\bibitem{Shulman2019} M.~Shulman, \emph{All $(\infty,1)$-toposes have strict univalent universes}, 2019.\ arXiv:1904.07004.
611:
612:\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013.\ \url{https://homotopytypetheory.org/book/}.
613:
614:\bibitem{LicataShulman} D.~R.~Licata and M.~Shulman, \emph{Calculating the fundamental group of the circle in homotopy type theory}, LICS 2013, 223--232.
615:
616:\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224.\ arXiv:1705.07442.
617:
618:\bibitem{GWB2024} D.~Gratzer, J.~Weinberger, and U.~Buchholtz, \emph{Directed univalence in simplicial homotopy type theory}, 2024.\ arXiv:2407.09146.
619:
620:\bibitem{SchreiberShulman} U.~Schreiber and M.~Shulman, \emph{Quantum gauge field theory in cohesive homotopy type theory}, EPTCS \textbf{158} (2014), 109--126.
621:
622:\bibitem{Lambek1968} J.~Lambek, \emph{A fixpoint theorem for complete categories}, Math.\ Z.\ \textbf{103} (1968), 151--161.
623:
624:\bibitem{Lawvere1964} F.~W.~Lawvere, \emph{An elementary theory of the category of sets}, PNAS \textbf{52} (1964), 1506--1511.
625:
626:\bibitem{Awodey2010} S.~Awodey, \emph{Type theory and homotopy}, in \emph{Epistemology versus Ontology}, Springer, 2012, 183--201.
627:
628:\bibitem{Benacerraf1965} P.~Benacerraf, \emph{What numbers could not be}, Philosophical Review \textbf{74} (1965), 47--73.
629:
630:\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011.\ \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
631:
632:\bibitem{MartinLof1984} P.~Martin-L\"of, \emph{Intuitionistic Type Theory}, Bibliopolis, Naples, 1984.
633:
634:\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010.\ \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
635:
636:\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008.\ \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
637:
638:\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
639:
640:\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
641:
642:\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
643:
644:\bibitem{Synthesis} YonedaAI, \emph{The Univalent Correspondence: Synthesis}, Magneton Research Collective, 2026.
645:
646:\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J.\ Eur.\ Math.\ Soc.\ \textbf{23} (2021), 2071--2126.
647:
648:\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015.\ arXiv:1611.02108.
649:
650:\bibitem{Riehl2025} E.~Riehl, \emph{Synthetic perspectives on spaces and categories}, 2025.\ arXiv:2510.15795.
651:
652:\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos},\ \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
653:
654:\bibitem{nLabNNO} The nLab, \emph{natural numbers object},\ \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
655:
656:\end{thebibliography}
657:
658:\end{document}

exec
/usr/local/bin/zsh -lc 'chktex -q -n8 -n24 -n44 papers/latex/infinity-nno.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 13 in papers/latex/infinity-nno.tex line 130: Intersentence spacing (`\@') should perhaps be used.
This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.  
                                                                                                                                                                                                                                                                                                                                                                                                           ^
Warning 13 in papers/latex/infinity-nno.tex line 166: Intersentence spacing (`\@') should perhaps be used.
\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.  
                                                                                                                                                                                                                     ^
Warning 18 in papers/latex/infinity-nno.tex line 216: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
             ^
Warning 18 in papers/latex/infinity-nno.tex line 216: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                ^
Warning 18 in papers/latex/infinity-nno.tex line 216: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                             ^
Warning 18 in papers/latex/infinity-nno.tex line 216: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                                   ^
Warning 18 in papers/latex/infinity-nno.tex line 216: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                                                         ^
Warning 18 in papers/latex/infinity-nno.tex line 216: Use either `` or '' as an alternative to `"'.
FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\  
                                                                ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
I \arrow[r, "h"'] & FI  
            ^
Warning 18 in papers/latex/infinity-nno.tex line 217: Use either `` or '' as an alternative to `"'.
I \arrow[r, "h"'] & FI  
              ^
Warning 13 in papers/latex/infinity-nno.tex line 326: Intersentence spacing (`\@') should perhaps be used.
Every presentable $(\infty,1)$-topos has an NNO.  
                                               ^
Warning 13 in papers/latex/infinity-nno.tex line 339: Intersentence spacing (`\@') should perhaps be used.
A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:  
                                                                                         ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                     ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                           ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                         ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                               ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                     ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                       ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                    ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                          ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                 ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                                   ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                                                                    ^
Warning 18 in papers/latex/infinity-nno.tex line 380: Use either `` or '' as an alternative to `"'.
\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\  
                                                                                                                                                                      ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
& N_{2} \arrow[r, "s_{2}"'] & N_{2}  
                  ^
Warning 18 in papers/latex/infinity-nno.tex line 381: Use either `` or '' as an alternative to `"'.
& N_{2} \arrow[r, "s_{2}"'] & N_{2}  
                        ^
Warning 36 in papers/latex/infinity-nno.tex line 411: You should put a space in front of parenthesis.
\subsection{Truncation level of \texorpdfstring{$\mathrm{NNO}(\mathcal{E})$}{NNO(E)}}  
                                                                                ^
Warning 3 in papers/latex/infinity-nno.tex line 413: You should enclose the previous parenthesis with `{}'.
Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.  
                                                                                                     ^
Warning 13 in papers/latex/infinity-nno.tex line 531: Intersentence spacing (`\@') should perhaps be used.
  \item Cohesive HoTT: differential and geometric ambient toposes (Schreiber--Shulman~\cite{SchreiberShulman}).  
                     ^
Warning 38 in papers/latex/infinity-nno.tex line 559: You should not use punctuation in front of quotes.
The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''  
                                                                                                                                                                      ^
Warning 38 in papers/latex/infinity-nno.tex line 559: You should not use punctuation in front of quotes.
The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''  
                                                                                                                                                                                                                                  ^
Warning 38 in papers/latex/infinity-nno.tex line 559: You should not use punctuation in front of quotes.
The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''  
                                                                                                                                                                                                                                                                                                                                                                                                                                              ^
Warning 36 in papers/latex/infinity-nno.tex line 652: You should put a space in front of parenthesis.
\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos},\ \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.  
                                                                                                                 ^

exec
/usr/local/bin/zsh -lc "rg -n \"\\b(NNO|NNOs|HoTT|STT|HIT|HTT|TAC|III/V|I+V?|GWB2024|MSC2020)\\.\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
130:This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.
134:\medskip\noindent\textbf{MSC2020.} 18N60, 03B38, 18B25, 03G30.
160:  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
166:\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
272:p\colon (\N,\zero,\suc,\star) \;=\; (X,x_{0},s,\iota) \quad\text{in}\quad \NNO.
326:Every presentable $(\infty,1)$-topos has an NNO.
543:  \item \textbf{Synthetic NNO contractibility in STT.}
547:  \item \textbf{Lurie's parametrised NNO.}

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\@\\.\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
132:\medskip\noindent\textbf{Keywords.} Natural numbers object; $(\infty,1)$-topos; elementary higher topos; contractibility; homotopy type theory; Rasekh's theorem; Lurie HTT\@.
350:Every elementary $(\infty,1)$-topos has an NNO\@. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.
354:The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO\@. The argument uses descent, locality, and classification of univalent maps.
476:In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT\@. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
523:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of~\cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT\@. We are not aware of a published proof.

exec
/usr/local/bin/zsh -lc 'rg -n "''^[[:space:]]*$|''^.{121,}$" papers/latex/infinity-nno.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
2:
6:
10:
13:
16:
19:
23:
26:
29:
40:
81:
89:
107:
110:
116:
118:
120:
122:
124:The natural numbers object (NNO) of an elementary topos is, classically, an object equipped with a global element $0$ and an endomorphism $s$ such that the resulting pointed dynamical system is initial. In a $1$-topos any two NNOs are connected by a unique isomorphism, and the automorphism group of an NNO is trivial: NNO structures form a contractible groupoid, equivalently a $(-2)$-truncated $\infty$-groupoid. In homotopy type theory (HoTT), Theorem~2.7 of Paper~III (and the equivalent Theorem~4.4 of Paper~V of the present series) refines this rigidity: the type
128:is contractible. By Shulman's interpretation theorem, every $(\infty,1)$-topos $\mathcal{E}$ admits a model of HoTT~+~univalence, so the corresponding statement transports to an internal contractibility result for the type of NNO structures inside $\mathcal{E}$.
129:
130:This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.
131:
132:\medskip\noindent\textbf{Keywords.} Natural numbers object; $(\infty,1)$-topos; elementary higher topos; contractibility; homotopy type theory; Rasekh's theorem; Lurie HTT\@.
133:
136:
138:
140:
141:The natural numbers object (NNO) is among the most basic universal constructions of categorical logic. Lawvere's 1964 axiomatisation of the elementary theory of the category of sets (ETCS) treats the NNO as an irreducible primitive on equal footing with the terminal object, the subobject classifier, and exponentials. In any cartesian closed category $\mathcal{C}$ with a terminal object $\mathbf{1}$, an NNO is a triple $(N, 0\colon \mathbf{1}\to N, s\colon N\to N)$ such that for every $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ there exists a unique morphism $h\colon N\to X$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$. Two NNOs are related by a unique isomorphism; the automorphism group of an NNO is trivial. In $\Set$ the NNO is the von Neumann set $\omega = \{0,1,2,\ldots\}$ with successor; up to canonical isomorphism, ``the natural numbers'' is a property, not a choice of structure.
142:
147:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
148:
149:By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
150:
151:The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
152:
154:
156:  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
157:  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
158:  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
159:  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
160:  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
161:  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
163:
165:
166:\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
167:
169:
170:We use $\Cati$ for the $(\infty,2)$-category of $(\infty,1)$-categories and $\Spc$ for the $(\infty,1)$-category of $\infty$-groupoids (``spaces''). For an $(\infty,1)$-category $\mathcal{C}$, $\Map_{\mathcal{C}}(X,Y)\in\Spc$ denotes the mapping space. We write $\mathbf{1}$ for a terminal object. Throughout, ``HoTT'' refers to Martin-L\"of type theory with $\Sigmatype$, $\Pitype$, identity types, finite coproducts, the natural numbers type, function extensionality, and the univalence axiom for at least one hierarchy of universes.
171:
173:
175:
177:
179:Let $\mathcal{C}$ be a category with terminal object $\mathbf{1}$. The category $\PtEndo(\mathcal{C})$ has as objects triples $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$, and morphisms $(X,x_{0},f)\to(Y,y_{0},g)$ are arrows $h\colon X\to Y$ in $\mathcal{C}$ such that $h\circ x_{0}=y_{0}$ and $h\circ f = g\circ h$.
181:
185:
186:Equivalently, viewing the endofunctor $F\colon \mathcal{C}\to \mathcal{C}$ given by $FX = \mathbf{1}+X$ (when coproducts exist), an NNO is an initial $F$-algebra: a pair $(N,[0,s]\colon \mathbf{1}+N\to N)$ initial in $F\text{-}\mathbf{Alg}$.
187:
189:If $I,I'$ are initial in any category, there is a unique isomorphism $I\to I'$, and the automorphism group $\mathrm{Aut}(I)$ is trivial.
191:
193:Initiality of $I$ gives a unique map $u\colon I\to I'$, and dually a unique $v\colon I'\to I$. The composites $v\circ u$ and $\id_{I}$ are both morphisms $I\to I$; since $I$ is initial, the hom-set $\Hom(I,I)$ has exactly one element, hence $v\circ u=\id_{I}$. Similarly $u\circ v = \id_{I'}$. Applying the same argument with $I=I'$, every endomorphism of $I$ equals $\id_{I}$, so $\mathrm{Aut}(I)=\{\id_{I}\}$.
195:
199:
201:The map $F\iota\colon F(FI)\to FI$ endows $FI$ with the structure of an $F$-algebra, denoted $(FI,F\iota)$. By initiality of $(I,\iota)$ there is a unique $F$-algebra homomorphism $h\colon (I,\iota)\to (FI,F\iota)$, that is, a morphism $h\colon I\to FI$ in $\mathcal{C}$ with
205:On the other hand, $\iota$ itself is an $F$-algebra homomorphism $(FI,F\iota)\to(I,\iota)$, since $\iota\circ F\iota = \iota\circ F\iota$ trivially. Thus $\iota\circ h\colon (I,\iota)\to (I,\iota)$ is an $F$-algebra endomorphism, and by initiality (applied to $(I,\iota)$ as the source of a unique map to itself) it equals $\id_{I}$. We conclude $\iota\circ h = \id_{I}$. For the other composite, observe
211:
222:
224:Let $(N,0,s)$ be an NNO in $\mathcal{C}$. For every $(X,x_{0},f)$ in $\PtEndo(\mathcal{C})$ there exists a unique $h\colon N\to X$ in $\mathcal{C}$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$.
226:
228:
229:We use the standard truncation conventions: a $(-2)$-type is contractible, a $(-1)$-type is a (mere) proposition (a groupoid in which any two objects are connected by at most one morphism), and a $0$-type is a set. A nonempty groupoid in which every hom-set is a singleton is contractible---a $(-2)$-type.
230:
231:In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
232:
234:In any category $\mathcal{C}$ with terminal object, the groupoid $\NNO(\mathcal{C})$ of NNO structures is either empty or contractible (i.e.\ a $(-2)$-type). Equivalently, the moduli space of NNOs in $\mathcal{C}$ is a (mere) proposition: existence implies essential uniqueness, with no nontrivial automorphisms or higher cells (which are absent at the $1$-categorical level).
236:
238:\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
240:
242:
243:In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
244:
251:\mathsf{isInitial}(X,x_{0},s) \;\coloneqq\; \Pitype_{(Y,y_{0},f):\PtEndo(\U)}\,\isContr\!\bigl(\Sigmatype_{h:X\to Y}(h\,x_{0}=y_{0})\times\Pitype_{x:X}(h(s\,x)=f(h\,x))\bigr).
254:
255:Note that $\mathsf{isInitial}(X,x_{0},s)$ is, by construction, an iterated $\Pitype$-type whose body is $\isContr$ of a $\Sigmatype$-type; since $\isContr$ is a (mere) proposition and $\Pitype$ of propositions is a proposition, $\mathsf{isInitial}$ is a proposition.
256:
258:The type $\NNO$ is contractible. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical witness of initiality given by the standard recursor $\rec_{\N}$ together with its computation rules.
260:
262:We must show $\isContr(\NNO)$, i.e.\ produce a centre $c\in\NNO$ and a continuous family of paths from $c$ to every point of $\NNO$.
263:
264:\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
268:is contractible: $h=\rec_{\N}\,y_{0}\,f$ together with the $\refl$-witnesses of the equations is the centre, and the contraction is provided by the $\ind_{\N}$ step above.
269:
274:Apply $\iota$ to the pointed system $(\N,\zero,\suc)$: it yields a contractible type whose centre is a unique map $u\colon X\to \N$ with $u\,x_{0}=\zero$ and $u\circ s\sim \suc\circ u$. Apply $\star$ to $(X,x_{0},s)$: a unique map $v\colon \N\to X$ with $v\,\zero=x_{0}$ and $v\circ \suc\sim s\circ v$. The composites $u\circ v\colon \N\to\N$ and $\id_{\N}$ both satisfy the universal-property equations for $(\N,\zero,\suc,\star)$; uniqueness inside the contractible type of recursors forces $u\circ v=\id_{\N}$ via $\ind_{\N}$, and likewise $v\circ u=\id_{X}$ via $\iota$. Thus $u\colon X\eqv\N$ is an equivalence (with quasi-inverse $v$). Univalence ($\ua$) converts the equivalence into a path $p_{1}\colon X = \N$ in $\U$. Transporting $(x_{0},s,\iota)$ along $p_{1}$ produces $(\zero,\suc,\star')$ for some witness $\star'\colon \mathsf{isInitial}(\N,\zero,\suc)$. Since $\mathsf{isInitial}$ is a proposition, $\star'=\star$. Pairing yields the required path $p$ in $\NNO$.
275:
276:The map $(X,x_{0},s,\iota)\mapsto p$ is itself constructed by transport and is thus a continuous family of paths from $c$, exhibiting $c$ as the centre of contraction.
278:
280:The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
282:
284:\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
286:
288:
289:We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
290:
292:
294:Let $\mathcal{E}$ be a presentable $(\infty,1)$-topos with terminal object $\mathbf{1}$. An NNO is an object $N\in\mathcal{E}$ together with morphisms $0\colon \mathbf{1}\to N$ and $s\colon N\to N$ such that for every diagram $\mathbf{1}\xrightarrow{x_{0}}X\xrightarrow{f}X$ in $\mathcal{E}$, the mapping space
300:
301:Here $\PtEndo(\mathcal{E})$ is the $(\infty,1)$-category of pointed endomorphisms in $\mathcal{E}$. Concretely, an object of $\PtEndo(\mathcal{E})$ is a triple $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ where $X\in\mathcal{E}$, $x_{0}$ is a global element, and $f$ is an endomorphism. A morphism $(X,x_{0},f)\to(Y,y_{0},g)$ is a tuple $(h, \alpha, \beta)$ where $h\colon X\to Y$ is a morphism in $\mathcal{E}$, $\alpha\colon h\circ x_{0}\sim y_{0}$ is a $1$-cell in $\Map_{\mathcal{E}}(\mathbf{1},Y)$, and $\beta\colon h\circ f\sim g\circ h$ is a $1$-cell in $\Map_{\mathcal{E}}(X,Y)$, together with the higher cells provided by composing in $\mathcal{E}$. In symbols this is the $\infty$-categorical limit (formally, an iterated comma object)
306:
308:Equivalently, an $(\infty,1)$-NNO is an initial object in $\PtEndo(\mathcal{E})$, where ``initial'' is interpreted in the $(\infty,1)$-categorical sense: the mapping space to every other object is contractible. Lurie phrases the definition via a small-colimit-preserving recursion functor; the equivalence is straightforward.
310:
312:When $\mathcal{E}=\Spc$, the NNO is the constant functor at $\N$. Its existence and contractibility of the mapping space is the homotopy-coherent version of the Set-theoretic recursion principle.
314:
316:For $\mathcal{E}=\mathrm{PSh}(\mathcal{C})$ the $(\infty,1)$-category of presheaves of spaces on a small $(\infty,1)$-category $\mathcal{C}$, the NNO is the constant presheaf at $\N$, $c\mapsto \N$.
318:
320:For $\mathcal{E}=\mathrm{Sh}(X)$ the $(\infty,1)$-topos of sheaves on a topological space $X$, the NNO is the constant sheaf $\underline{\N}$.
322:
324:
328:
332:N \;=\; \colim\bigl(\mathbf{1}\xrightarrow{j_{0}}\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{1}}\mathbf{1}\sqcup\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{2}}\cdots\bigr),
334:where $j_{n}$ adds a new copy of $\mathbf{1}$. Equivalently, $N=\bigsqcup_{n\geq 0}\mathbf{1}$. Verification of the universal property uses the universal property of sequential colimits and contractibility of the relevant mapping spaces.
336:
338:
339:A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos has an NNO; here we follow the axiomatic of Rasekh~\cite{Rasekh2018ETop}. Elementary $(\infty,1)$-toposes are axiomatised by:
348:
350:Every elementary $(\infty,1)$-topos has an NNO\@. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.
352:
354:The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO\@. The argument uses descent, locality, and classification of univalent maps.
356:
358:Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
360:
361:\subsection{Equivalence with the \texorpdfstring{$1$}{1}-NNO when \texorpdfstring{$\mathcal{E}$}{E} is a \texorpdfstring{$1$}{1}-topos}
362:
364:Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
366:
372:is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible.
374:
376:
377:Why is the $(\infty,1)$-NNO ``more delicate''? The naive answer is: in a $1$-category, ``unique map'' is a single condition. In an $(\infty,1)$-category, ``unique map'' must be promoted to ``unique up to coherent homotopy''. Concretely, given two NNOs $N_{1}, N_{2}$ in $\mathcal{E}$, we need a comparison map $u\colon N_{1}\to N_{2}$ together with the homotopies filling the squares
380:\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\
384:Filling the upper-left triangle is a $1$-cell $\alpha\colon u\circ 0_{1}\sim 0_{2}$, and filling the right-hand square is a $1$-cell $\beta\colon u\circ s_{1}\sim s_{2}\circ u$. Beyond these, we need:
390:
392:The initiality of an $(\infty,1)$-NNO already encodes, in a single property, the entire infinite tower of coherence data sketched above. Concretely, for any two $(\infty,1)$-NNOs $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ in an $(\infty,1)$-category $\mathcal{E}$, the mapping space
398:
400:By definition of $(\infty,1)$-NNO, both $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ are initial objects of $\PtEndo(\mathcal{E})$. Initial objects in any $(\infty,1)$-category have contractible mapping spaces to every object, in particular to each other. Contractibility of $M$ is equivalent to existence of a $0$-cell (the comparison map $u$ and the homotopies $\alpha,\beta$), uniqueness up to a contractible space of $1$-cells (the next-level coherences), uniqueness of those up to a contractible space of $2$-cells, and so on inductively at every level $n\geq 0$.
402:
407:  \item $\pi_{n}M = 0$ for all $n\geq 1$: triviality of all higher loop spaces, i.e.\ the entire tower of compatibilities.
410:
412:
413:Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.
414:
418:
420:The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
422:
424:
426:
427:We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
428:
430:Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos, by~\cite{Shulman2019}). Then:
438:
440:By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
441:
442:\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
443:
444:Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
446:
448:
450:\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
457:\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
459:
461:
463:Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
465:
467:By part~(2) of \cref{thm:main}, $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
469:
471:
473:
475:
476:In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT\@. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
477:
479:$\Omega\Sone\eqv\Z$ in any elementary $(\infty,1)$-topos $\mathcal{E}$, where $\Z$ is the group object obtained from the type of integers in $\mathcal{E}$.
481:
487:where the loop $\looppath$ acts as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
489:
491:Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
493:
495:
496:In a $1$-topos $\mathcal{E}_{1}$, every type is $0$-truncated, so $\Omega\Sone = \Sone\times_{\Sone}\Sone$ is the singleton (a single point with no nontrivial loops, since paths don't exist). The encode--decode argument collapses, and we cannot recover $\Z$ or $\N$ this way. The $\infty$-categorical setting is therefore not just a technical generalisation: it makes essentially new constructions possible.
497:
499:
500:A subtle point in the elementary axiomatic is whether one assumes power objects (like $1$-toposes) or an object classifier (Lurie's $(\infty,1)$-version). Power objects classify subobjects; the object classifier classifies all small maps.
501:
503:In an elementary $(\infty,1)$-topos with object classifier $\U$, the NNO can be constructed without separate appeal to power objects.
505:
509:
511:
512:Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
513:
515:
518:\NNO_{\mathrm{dir}} \;\coloneqq\; \Sigmatype_{X}\,\Sigmatype_{x_{0}\colon \mathbf{1}\to X}\,\Sigmatype_{s\colon X\to X}\,\mathsf{isInitial}_{\mathrm{dir}}(X,x_{0},s),
520:where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
521:
523:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of~\cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT\@. We are not aware of a published proof.
525:
527:
530:  \item STT internal language: $(\infty,1)$-categories (Riehl--Shulman~\cite{RiehlShulman2017}). Types are general $(\infty,1)$-spaces.
533:
534:For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.
535:
537:
540:  Make the externalisation step in the proof of \cref{thm:main} fully precise. This includes coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
542:  Prove \cref{thm:contractibility-infty} for elementary $(\infty,1)$-toposes without invoking Shulman's theorem. The latter is currently stated for Grothendieck $(\infty,1)$-toposes; the elementary case is conjectural.
544:  Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory, using only Rezk-completeness of the universe of discrete types.
546:  Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
548:  Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here. Show that the parametrisation is functorial up to contractible choice.
550:  Formalise \cref{thm:main} in Cubical Agda, using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
552:  Use \cref{thm:main} to formalise basic arithmetic theorems---associativity and commutativity of $+$, distributivity---at the $(\infty,1)$-categorical level, with all coherences automatic.
554:
556:
558:
559:The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?'' The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible.''
560:
562:
571:The contractibility of NNO at the $(\infty,1)$-level ensures that everything built on top of NNO inherits a unique, canonical foundation. This is the modular composition principle: each layer is uniquely determined by the previous one, up to contractible choice.
572:
574:
576:  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
577:  \item Higher coherence verification, while ``automatic'' in HoTT, requires actual computation in concrete models. We have not exhibited explicit cellular witnesses for, say, the bisimplicial set model.
578:  \item The connection to Rasekh's circle-construction is via contractibility: we know the two NNOs agree, but we do not give an explicit comparison map.
580:
582:
583:The natural numbers object is one of the simplest universal constructions in category theory; nonetheless, lifting it from the $1$-categorical to the $(\infty,1)$-categorical setting illustrates the full power of modern higher-categorical machinery. The key insight is that contractibility, as defined in HoTT (a single propositional condition), automatically encodes an infinite tower of homotopy coherences. This makes HoTT the ideal language to state and prove $(\infty,1)$-categorical universal properties without the bookkeeping of explicit cell-by-cell verification.
584:
588:  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
590:  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;
593:
594:The remaining open problems---particularly the synthetic STT proof and the Cubical Agda formalisation---are within reach of current methods. Once completed, they will close the gap between the conceptual ``contractibility solves it'' answer and the explicit cellular-coherent verification.
595:
597:
598:The author thanks the Magneton Research Collective for ongoing discussion, and acknowledges the foundational work of Lurie, Rasekh, Shulman, Riehl, and the HoTT community.
599:
601:
602:\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009.\ arXiv:math/0608040.
603:
604:\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018.\ \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
605:
607:
608:\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377.\ arXiv:1809.01734.
609:
610:\bibitem{Shulman2019} M.~Shulman, \emph{All $(\infty,1)$-toposes have strict univalent universes}, 2019.\ arXiv:1904.07004.
611:
612:\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013.\ \url{https://homotopytypetheory.org/book/}.
613:
614:\bibitem{LicataShulman} D.~R.~Licata and M.~Shulman, \emph{Calculating the fundamental group of the circle in homotopy type theory}, LICS 2013, 223--232.
615:
616:\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224.\ arXiv:1705.07442.
617:
618:\bibitem{GWB2024} D.~Gratzer, J.~Weinberger, and U.~Buchholtz, \emph{Directed univalence in simplicial homotopy type theory}, 2024.\ arXiv:2407.09146.
619:
620:\bibitem{SchreiberShulman} U.~Schreiber and M.~Shulman, \emph{Quantum gauge field theory in cohesive homotopy type theory}, EPTCS \textbf{158} (2014), 109--126.
621:
622:\bibitem{Lambek1968} J.~Lambek, \emph{A fixpoint theorem for complete categories}, Math.\ Z.\ \textbf{103} (1968), 151--161.
623:
624:\bibitem{Lawvere1964} F.~W.~Lawvere, \emph{An elementary theory of the category of sets}, PNAS \textbf{52} (1964), 1506--1511.
625:
626:\bibitem{Awodey2010} S.~Awodey, \emph{Type theory and homotopy}, in \emph{Epistemology versus Ontology}, Springer, 2012, 183--201.
627:
628:\bibitem{Benacerraf1965} P.~Benacerraf, \emph{What numbers could not be}, Philosophical Review \textbf{74} (1965), 47--73.
629:
630:\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011.\ \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
631:
633:
634:\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010.\ \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
635:
636:\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008.\ \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
637:
638:\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
639:
640:\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
641:
642:\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
643:
645:
646:\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J.\ Eur.\ Math.\ Soc.\ \textbf{23} (2021), 2071--2126.
647:
648:\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015.\ arXiv:1611.02108.
649:
651:
652:\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos},\ \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
653:
654:\bibitem{nLabNNO} The nLab, \emph{natural numbers object},\ \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
655:
657:

codex
Findings:

1. [papers/latex/infinity-nno.tex:130](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:130) has inconsistent acronym sentence spacing: `NNO. We prove`.
   Fix: `NNO\@. We prove`.

2. [papers/latex/infinity-nno.tex:166](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:166) has the same issue after the Roman-acronym phrase `Paper~III/V. \Cref`.
   Fix: `Paper~III/V\@. \Cref`.

3. [papers/latex/infinity-nno.tex:326](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:326) ends a sentence with acronym `NNO.` while nearby lines use `NNO\@.`.
   Fix: `Every presentable $(\infty,1)$-topos has an NNO\@.`

4. [papers/latex/infinity-nno.tex:543](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:543) and [papers/latex/infinity-nno.tex:547](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:547) repeat the acronym-ending style issue inside bold run-in item labels.
   Fixes: `STT\@.` and `NNO\@.` respectively.

Checked with `pdflatex` three passes: no compilation errors, missing packages, undefined references/citations, or overfull/underfull boxes remained. `chktex` also reported quote warnings in `tikz-cd` arrow labels, but those are false positives for valid `tikz-cd` syntax.

VERDICT: NEEDS_FIX
2026-05-04T23:43:59.536012Z ERROR codex_core::session: failed to record rollout items: thread 019df55e-072f-7652-858d-bd46e14c31cb not found
tokens used
79,471
Findings:

1. [papers/latex/infinity-nno.tex:130](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:130) has inconsistent acronym sentence spacing: `NNO. We prove`.
   Fix: `NNO\@. We prove`.

2. [papers/latex/infinity-nno.tex:166](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:166) has the same issue after the Roman-acronym phrase `Paper~III/V. \Cref`.
   Fix: `Paper~III/V\@. \Cref`.

3. [papers/latex/infinity-nno.tex:326](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:326) ends a sentence with acronym `NNO.` while nearby lines use `NNO\@.`.
   Fix: `Every presentable $(\infty,1)$-topos has an NNO\@.`

4. [papers/latex/infinity-nno.tex:543](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:543) and [papers/latex/infinity-nno.tex:547](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:547) repeat the acronym-ending style issue inside bold run-in item labels.
   Fixes: `STT\@.` and `NNO\@.` respectively.

Checked with `pdflatex` three passes: no compilation errors, missing packages, undefined references/citations, or overfull/underfull boxes remained. `chktex` also reported quote warnings in `tikz-cd` arrow labels, but those are false positives for valid `tikz-cd` syntax.

VERDICT: NEEDS_FIX

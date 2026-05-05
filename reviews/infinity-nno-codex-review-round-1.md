---
reviewer: codex (OpenAI)
type: formatting
paper: infinity-nno
round: 1
date: 2026-05-04T23:31:54Z
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
session id: 019df555-8313-7342-b2eb-d9f0fbe5a91c
--------
user
Review papers/latex/infinity-nno.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).

The file path is: /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex
codex
I’ll treat this as a read-only review and ground findings in the actual `.tex` file plus a compile/log check if the repo provides enough context.
exec
/usr/local/bin/zsh -lc 'pwd && ls' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
docs
images
lean
papers
posts
reviews
src
website

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '1,260p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsthm}
     5	
     6	% Diagrams
     7	\usepackage{tikz-cd}
     8	\usepackage{tikz}
     9	
    10	% References
    11	\usepackage{hyperref}
    12	\usepackage{cleveref}
    13	
    14	% Graphics
    15	\usepackage{graphicx}
    16	
    17	% Page layout
    18	\usepackage[margin=1in]{geometry}
    19	
    20	% GrokRxiv sidebar
    21	\usepackage{everypage}
    22	\usepackage{xcolor}
    23	
    24	% Theorem environments
    25	\newtheorem{theorem}{Theorem}[section]
    26	\newtheorem{proposition}[theorem]{Proposition}
    27	\newtheorem{lemma}[theorem]{Lemma}
    28	\newtheorem{corollary}[theorem]{Corollary}
    29	\theoremstyle{definition}
    30	\newtheorem{definition}[theorem]{Definition}
    31	\theoremstyle{remark}
    32	\newtheorem{remark}[theorem]{Remark}
    33	\newtheorem{example}[theorem]{Example}
    34	
    35	% Macros
    36	\newcommand{\N}{\mathbb{N}}
    37	\newcommand{\Z}{\mathbb{Z}}
    38	\newcommand{\Q}{\mathbb{Q}}
    39	\newcommand{\R}{\mathbb{R}}
    40	\newcommand{\Set}{\mathbf{Set}}
    41	\newcommand{\op}{\mathrm{op}}
    42	\newcommand{\id}{\mathrm{id}}
    43	\newcommand{\Hom}{\mathrm{Hom}}
    44	\newcommand{\Map}{\mathrm{Map}}
    45	\newcommand{\Nat}{\mathrm{Nat}}
    46	\newcommand{\zero}{\mathsf{zero}}
    47	\newcommand{\suc}{\mathsf{succ}}
    48	\newcommand{\PtEndo}{\mathbf{PtEndo}}
    49	\newcommand{\iso}{\cong}
    50	\newcommand{\eqv}{\simeq}
    51	\newcommand{\NNO}{\mathrm{NNO}}
    52	\newcommand{\Type}{\mathsf{Type}}
    53	\newcommand{\U}{\mathcal{U}}
    54	\newcommand{\Id}{\mathsf{Id}}
    55	\newcommand{\refl}{\mathsf{refl}}
    56	\newcommand{\transport}{\mathsf{transport}}
    57	\newcommand{\ua}{\mathsf{ua}}
    58	\newcommand{\idtoeqv}{\mathsf{idtoeqv}}
    59	\newcommand{\looppath}{\mathsf{loop}}
    60	\newcommand{\base}{\mathsf{base}}
    61	\newcommand{\Sone}{S^{1}}
    62	\newcommand{\isContr}{\mathsf{isContr}}
    63	\newcommand{\isProp}{\mathsf{isProp}}
    64	\newcommand{\isSet}{\mathsf{isSet}}
    65	\newcommand{\Cat}{\mathbf{Cat}}
    66	\newcommand{\Cati}{\mathbf{Cat}_{\infty}}
    67	\newcommand{\Spc}{\mathcal{S}}
    68	\newcommand{\Topos}{\mathbf{Top}}
    69	\newcommand{\ETopos}{\mathbf{ETop}}
    70	\newcommand{\colim}{\mathrm{colim}}
    71	\newcommand{\rec}{\mathsf{rec}}
    72	\newcommand{\ind}{\mathsf{ind}}
    73	\newcommand{\Sigmatype}{\Sigma}
    74	\newcommand{\Pitype}{\Pi}
    75	
    76	% Hyperref setup
    77	\hypersetup{
    78	  colorlinks=true,
    79	  linkcolor=blue!60!black,
    80	  citecolor=blue!60!black,
    81	  urlcolor=blue!60!black
    82	}
    83	
    84	% GrokRxiv sidebar
    85	\definecolor{grokgray}{RGB}{110,110,110}
    86	\AddEverypageHook{%
    87	  \ifnum\value{page}=1
    88	    \begin{tikzpicture}[remember picture, overlay]
    89	      \node[
    90	        rotate=90,
    91	        anchor=south,
    92	        font=\Large\sffamily\bfseries\color{grokgray},
    93	        inner sep=0pt
    94	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    95	      {GrokRxiv:2026.05.infinity-nno\quad
    96	       [\,math.CT\,]\quad
    97	       04 May 2026};
    98	    \end{tikzpicture}
    99	  \fi
   100	}
   101	
   102	\title{Higher-Categorical Natural Numbers Objects:\\
   103	Contractibility, $\infty$-Toposes, and Lurie's NNO}
   104	
   105	\author{YonedaAI \\
   106	\textit{Magneton Research Collective} \\
   107	\textit{Independent Mathematical Foundations Group} \\
   108	San Francisco, CA \\
   109	\texttt{research@yonedaai.org} $\cdot$ \url{https://yonedaai.org}}
   110	
   111	\date{4 May 2026}
   112	
   113	\begin{document}
   114	
   115	\maketitle
   116	
   117	\begin{abstract}
   118	The natural numbers object (NNO) of an elementary topos is, classically, an object equipped with a global element $0$ and an endomorphism $s$ such that the resulting pointed dynamical system is initial. In a $1$-topos any two NNOs are connected by a unique isomorphism, and the automorphism group of an NNO is trivial: NNO structures form a contractible groupoid, equivalently a $(-2)$-truncated $\infty$-groupoid. In homotopy type theory (HoTT), Theorem~2.7 of Paper~III (and the equivalent Theorem~4.4 of Paper~V of the present series) refines this rigidity: the type
   119	\[
   120	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s)
   121	\]
   122	is contractible. By Shulman's interpretation theorem, every $(\infty,1)$-topos $\mathcal{E}$ admits a model of HoTT~+~univalence, so the corresponding statement transports to an internal contractibility result for the type of NNO structures inside $\mathcal{E}$.
   123	
   124	This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.
   125	
   126	\medskip\noindent\textbf{Keywords.} Natural numbers object; $(\infty,1)$-topos; elementary higher topos; contractibility; homotopy type theory; Rasekh's theorem; Lurie HTT.
   127	
   128	\medskip\noindent\textbf{MSC2020.} 18N60, 03B38, 18B25, 03G30.
   129	\end{abstract}
   130	
   131	\tableofcontents
   132	
   133	\section{Introduction}\label{sec:intro}
   134	
   135	The natural numbers object (NNO) is among the most basic universal constructions of categorical logic. Lawvere's 1964 axiomatisation of the elementary theory of the category of sets (ETCS) treats the NNO as an irreducible primitive on equal footing with the terminal object, the subobject classifier, and exponentials. In any cartesian closed category $\mathcal{C}$ with a terminal object $\mathbf{1}$, an NNO is a triple $(N, 0\colon \mathbf{1}\to N, s\colon N\to N)$ such that for every $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ there exists a unique morphism $h\colon N\to X$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$. Two NNOs are related by a unique isomorphism; the automorphism group of an NNO is trivial. In $\Set$ the NNO is the von Neumann set $\omega = \{0,1,2,\ldots\}$ with successor; up to canonical isomorphism, ``the natural numbers'' is a property, not a choice of structure.
   136	
   137	The HoTT version is finer. Working in the univalent universe $\U$, define
   138	\[
   139	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
   140	\]
   141	where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
   142	
   143	By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
   144	
   145	The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
   146	
   147	\subsection*{Contributions}
   148	
   149	\begin{enumerate}
   150	  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
   151	  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
   152	  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
   153	  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   154	  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
   155	  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
   156	\end{enumerate}
   157	
   158	\subsection*{Outline}
   159	
   160	\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
   161	
   162	\subsection*{Conventions}
   163	
   164	We use $\Cati$ for the $(\infty,2)$-category of $(\infty,1)$-categories and $\Spc$ for the $(\infty,1)$-category of $\infty$-groupoids (``spaces''). For an $(\infty,1)$-category $\mathcal{C}$, $\Map_{\mathcal{C}}(X,Y)\in\Spc$ denotes the mapping space. We write $\mathbf{1}$ for a terminal object. Throughout, ``HoTT'' refers to Martin-L\"of type theory with $\Sigmatype$, $\Pitype$, identity types, finite coproducts, the natural numbers type, function extensionality, and the univalence axiom for at least one hierarchy of universes.
   165	
   166	\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
   167	
   168	We begin by recalling the classical material in a form that will generalise cleanly to the $\infty$-categorical setting.
   169	
   170	\subsection{Pointed endomorphisms and $1$-NNO}
   171	
   172	\begin{definition}[Pointed dynamical system]\label{def:ptendo}
   173	Let $\mathcal{C}$ be a category with terminal object $\mathbf{1}$. The category $\PtEndo(\mathcal{C})$ has as objects triples $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$, and morphisms $(X,x_{0},f)\to(Y,y_{0},g)$ are arrows $h\colon X\to Y$ in $\mathcal{C}$ such that $h\circ x_{0}=y_{0}$ and $h\circ f = g\circ h$.
   174	\end{definition}
   175	
   176	\begin{definition}[NNO]\label{def:nno}
   177	A natural numbers object in $\mathcal{C}$ is an initial object of $\PtEndo(\mathcal{C})$.
   178	\end{definition}
   179	
   180	Equivalently, viewing the endofunctor $F\colon \mathcal{C}\to \mathcal{C}$ given by $FX = \mathbf{1}+X$ (when coproducts exist), an NNO is an initial $F$-algebra: a pair $(N,[0,s]\colon \mathbf{1}+N\to N)$ initial in $F\text{-}\mathbf{Alg}$.
   181	
   182	\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
   183	If $I,I'$ are initial in any category, there is a unique isomorphism $I\to I'$, and the automorphism group $\mathrm{Aut}(I)$ is trivial.
   184	\end{lemma}
   185	
   186	\begin{proof}
   187	Initiality of $I$ gives a unique map $u\colon I\to I'$, and dually a unique $v\colon I'\to I$. The composites $v\circ u$ and $\id_{I}$ are both morphisms $I\to I$; since $I$ is initial, the hom-set $\Hom(I,I)$ has exactly one element, hence $v\circ u=\id_{I}$. Similarly $u\circ v = \id_{I'}$. Applying the same argument with $I=I'$, every endomorphism of $I$ equals $\id_{I}$, so $\mathrm{Aut}(I)=\{\id_{I}\}$.
   188	\end{proof}
   189	
   190	\begin{lemma}[Lambek]\label{lem:lambek}
   191	If $(I,\iota\colon FI\to I)$ is an initial $F$-algebra, then $\iota$ is an isomorphism.
   192	\end{lemma}
   193	
   194	\begin{proof}
   195	The map $F\iota\colon F(FI)\to FI$ endows $FI$ with the structure of an $F$-algebra, denoted $(FI,F\iota)$. By initiality of $(I,\iota)$ there is a unique $F$-algebra homomorphism $h\colon (I,\iota)\to (FI,F\iota)$, that is, a morphism $h\colon I\to FI$ in $\mathcal{C}$ with
   196	\[
   197	h\circ \iota \;=\; F\iota\circ Fh.
   198	\]
   199	On the other hand, $\iota$ itself is an $F$-algebra homomorphism $(FI,F\iota)\to(I,\iota)$, since $\iota\circ F\iota = \iota\circ F\iota$ trivially. Thus $\iota\circ h\colon (I,\iota)\to (I,\iota)$ is an $F$-algebra endomorphism, and by initiality (applied to $(I,\iota)$ as the source of a unique map to itself) it equals $\id_{I}$. We conclude $\iota\circ h = \id_{I}$. For the other composite, observe
   200	\[
   201	h\circ \iota \;=\; F\iota\circ Fh \;=\; F(\iota\circ h) \;=\; F(\id_{I}) \;=\; \id_{FI},
   202	\]
   203	using functoriality of $F$. Thus $h$ is two-sided inverse to $\iota$, and $\iota$ is an isomorphism.
   204	\end{proof}
   205	
   206	\begin{remark}
   207	The Lambek square depicting the proof is
   208	\[
   209	\begin{tikzcd}[column sep=large, row sep=large]
   210	FI \arrow[r, "Fh"] \arrow[d, "\iota"'] & F(FI) \arrow[d, "F\iota"] \\
   211	I \arrow[r, "h"'] & FI
   212	\end{tikzcd}
   213	\]
   214	which commutes by definition of $h$ as an $F$-algebra homomorphism.
   215	\end{remark}
   216	
   217	\begin{theorem}[Universal property of NNO]\label{thm:up}
   218	Let $(N,0,s)$ be an NNO in $\mathcal{C}$. For every $(X,x_{0},f)$ in $\PtEndo(\mathcal{C})$ there exists a unique $h\colon N\to X$ in $\mathcal{C}$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$.
   219	\end{theorem}
   220	
   221	\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
   222	
   223	We use the standard truncation conventions: a $(-2)$-type is contractible, a $(-1)$-type is a (mere) proposition (a groupoid in which any two objects are connected by at most one morphism), and a $0$-type is a set. A nonempty groupoid in which every hom-set is a singleton is contractible---a $(-2)$-type.
   224	
   225	In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
   226	
   227	\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
   228	In any category $\mathcal{C}$ with terminal object, the groupoid $\NNO(\mathcal{C})$ of NNO structures is either empty or contractible (i.e.\ a $(-2)$-type). Equivalently, the moduli space of NNOs in $\mathcal{C}$ is a (mere) proposition: existence implies essential uniqueness, with no nontrivial automorphisms or higher cells (which are absent at the $1$-categorical level).
   229	\end{theorem}
   230	
   231	\begin{proof}
   232	\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
   233	\end{proof}
   234	
   235	\subsection{HoTT contractibility}\label{sec:hott-contr}
   236	
   237	In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
   238	
   239	\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
   240	\[
   241	\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
   242	\]
   243	where
   244	\[
   245	\mathsf{isInitial}(X,x_{0},s) \;\coloneqq\; \Pitype_{(Y,y_{0},f):\PtEndo(\U)}\,\isContr\!\bigl(\Sigmatype_{h:X\to Y}(h\,x_{0}=y_{0})\times\Pitype_{x:X}(h(s\,x)=f(h\,x))\bigr).
   246	\]
   247	\end{definition}
   248	
   249	Note that $\mathsf{isInitial}(X,x_{0},s)$ is, by construction, an iterated $\Pitype$-type whose body is $\isContr$ of a $\Sigmatype$-type; since $\isContr$ is a (mere) proposition and $\Pitype$ of propositions is a proposition, $\mathsf{isInitial}$ is a proposition.
   250	
   251	\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
   252	The type $\NNO$ is contractible. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical witness of initiality given by the standard recursor $\rec_{\N}$ together with its computation rules.
   253	\end{theorem}
   254	
   255	\begin{proof}
   256	We must show $\isContr(\NNO)$, i.e.\ produce a centre $c\in\NNO$ and a continuous family of paths from $c$ to every point of $\NNO$.
   257	
   258	\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
   259	\[
   260	\Sigmatype_{h\colon \N\to Y}(h\,\zero=y_{0})\times\Pitype_{n:\N}(h(\suc\,n)=f(h\,n))

exec
/usr/local/bin/zsh -lc "rg -n \"infinity-nno|include\\{|input\\{|documentclass|usepackage|bibliography|biblatex|latexmk|tectonic|pdflatex|xelatex|lualatex\" -S ." in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
./reviews/cubical-hiit-cauchy-review-round-1.md:37:2.  **Futuristic Dates in Bibliography (Clarity/Formatting):** Several references contain futuristic access or publication dates (e.g., "accessed 2026" on line 599, "November 2025" on line 627). These appear to be placeholders and should be corrected to reflect the actual dates.
./reviews/cubical-hiit-cauchy-review-round-1.md:45:6.  **Inconsistent Capitalization in Bibliography (Formatting):** The title in reference [15] (line 623) appears to have incorrect capitalization ("Cubical synthetic homotopy theory" should likely be "Cubical Synthetic Homotopy Theory"). Please review all titles for consistent and correct capitalization.
./reviews/coalgebraic-transcendentals-review-round-1.md:28:    *   **Location:** Section 6.1, Definition 6.1 (`def:e-coalg`), and Bibliography entry [21].
./reviews/coalgebraic-transcendentals-review-round-1.md:50:    *   **Location:** Bibliography entry [29] (`abbott-altenkirch`).
./reviews/directed-univalence-review.md:36:    *   **Line 281 (Bibliography [Riehl2025]):** The reference "[Riehl2025]" cites an arXiv paper from the future (`2510.15795`). This should be replaced with an actual publication, a current arXiv ID if available, or rephrased as "E. Riehl, personal communication" or "in preparation" if that is the case.
./reviews/directed-univalence-review.md:37:    *   **Line 285 (Bibliography [KavvosWeaver]):** The reference "[KavvosWeaver]" is described as "Various preprints, 2024--2025". This is too vague for a formal bibliography. Specific arXiv IDs or publications should be cited. If the work is ongoing and not yet public, it may be better to remove the citation or mention it in the text as "ongoing work by Kavvos and Weaver".
./reviews/infinity-nno-review-round-2.md:3:paper: infinity-nno
./reviews/infinity-nno-review-round-2.md:45:4.  **[LaTeX Quality] Inconsistent bibliography formatting.**
./reviews/infinity-nno-review-round-2.md:46:    *   **Location:** Lines 331-404 (Bibliography).
./reviews/infinity-nno-review-round-2.md:47:    *   **Issue:** The formatting of the bibliography entries is inconsistent. For example, some entries include arXiv links and identifiers, while others do not. Some have full journal details, while others are just titles.
./reviews/langlands-analytic-number-theory-review-round-1.md:46:5.  **Bibliography Formatting:** The bibliography is excellent for a fictional 2026 paper. However, the entry for Clausen-Scholze (`[15]`) lists multiple arXiv numbers and a date range `2024--2025` for what appear to be different works. This could be formatted more clearly.
./papers/latex/infinity-nno.tex:1:\documentclass[12pt]{article}
./papers/latex/infinity-nno.tex:4:\usepackage{amsmath, amssymb, amsthm}
./papers/latex/infinity-nno.tex:7:\usepackage{tikz-cd}
./papers/latex/infinity-nno.tex:8:\usepackage{tikz}
./papers/latex/infinity-nno.tex:11:\usepackage{hyperref}
./papers/latex/infinity-nno.tex:12:\usepackage{cleveref}
./papers/latex/infinity-nno.tex:15:\usepackage{graphicx}
./papers/latex/infinity-nno.tex:18:\usepackage[margin=1in]{geometry}
./papers/latex/infinity-nno.tex:21:\usepackage{everypage}
./papers/latex/infinity-nno.tex:22:\usepackage{xcolor}
./papers/latex/infinity-nno.tex:95:      {GrokRxiv:2026.05.infinity-nno\quad
./papers/latex/infinity-nno.tex:141:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
./papers/latex/infinity-nno.tex:579:\begin{thebibliography}{99}
./papers/latex/infinity-nno.tex:635:\end{thebibliography}
./reviews/infinity-nno-review.md:3:paper: infinity-nno
./reviews/infinity-nno-review.md:45:4.  **[LaTeX Quality] Inconsistent bibliography formatting.**
./reviews/infinity-nno-review.md:46:    *   **Location:** Lines 331-404 (Bibliography).
./reviews/infinity-nno-review.md:47:    *   **Issue:** The formatting of the bibliography entries is inconsistent. For example, some entries include arXiv links and identifiers, while others do not. Some have full journal details, while others are just titles.
./reviews/infinity-nno-review-round-1.md:3:paper: infinity-nno
./reviews/infinity-nno-review-round-1.md:33:1.  **Reliance on Inaccessible Internal References:** The paper repeatedly cites "Paper III" and "Paper V" (e.g., Abstract, Introduction, Section 2.3, Bibliography entries [20], [21]). For a standalone publication, these references are unacceptable. The key results from these papers (specifically, Theorem 2.7 of Paper III / Theorem 4.4 of Paper V) must be properly stated and proven (or at least robustly sketched) within this manuscript itself.
./reviews/infinity-nno-review-round-1.md:51:3.  **Bibliography Style:** The bibliography contains several unusual entries, such as future-dated preprints ([25]), self-citations to a fictional collective ([20], [21], [22]), and URLs to nLab articles that should ideally be cited with a retrieval date. While the "GrokRxiv" framing makes this stylistic, for a formal venue, these would need to be replaced with stable, peer-reviewed sources where possible.
./reviews/directed-univalence-codex-review-round-1.md:36:/usr/local/bin/zsh -lc "rg -n \"\\\\(documentclass|usepackage|newcommand|Declare|begin\\{|end\\{|label\\{|ref\\{|autoref\\{|cite\\{|bibliography|bibliographystyle|includegraphics|input|include|todo|TODO|undefined|overfull|hbox|vbox)\" papers/latex/directed-univalence.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
./reviews/directed-univalence-codex-review-round-1.md:39:    (?:\(documentclass|usepackage|newcommand|Declare|begin\{|end\{|label\{|ref\{|autoref\{|cite\{|bibliography|bibliographystyle|includegraphics|input|include|todo|TODO|undefined|overfull|hbox|vbox))
./reviews/directed-univalence-codex-review-round-1.md:58:     1	\documentclass[12pt]{article}
./reviews/directed-univalence-codex-review-round-1.md:61:     4	\usepackage{amsmath, amssymb, amsthm}
./reviews/directed-univalence-codex-review-round-1.md:64:     7	\usepackage{tikz-cd}
./reviews/directed-univalence-codex-review-round-1.md:65:     8	\usepackage{tikz}
./reviews/directed-univalence-codex-review-round-1.md:69:    12	\usepackage{hyperref}
./reviews/directed-univalence-codex-review-round-1.md:70:    13	\usepackage{cleveref}
./reviews/directed-univalence-codex-review-round-1.md:73:    16	\usepackage{graphicx}
./reviews/directed-univalence-codex-review-round-1.md:76:    19	\usepackage[margin=1in]{geometry}
./reviews/directed-univalence-codex-review-round-1.md:79:    22	\usepackage{booktabs}
./reviews/directed-univalence-codex-review-round-1.md:82:    25	\usepackage{everypage}
./reviews/directed-univalence-codex-review-round-1.md:83:    26	\usepackage{xcolor}
./reviews/directed-univalence-codex-review-round-1.md:86:    29	\usepackage{listings}
./reviews/directed-univalence-codex-review-round-1.md:734:   667	\begin{thebibliography}{99}
./reviews/directed-univalence-codex-review-round-1.md:774:   707	\end{thebibliography}
./reviews/directed-univalence-codex-review-round-1.md:779:The structure is a single self-contained article with inline bibliography, so the useful next step is an isolated LaTeX run to catch package/command/reference diagnostics. I’ll direct all generated files to `/tmp` so the repo stays untouched; if the sandbox blocks that, I’ll report the limitation.
./reviews/directed-univalence-codex-review-round-1.md:1016:begin thebibliography 667
./reviews/directed-univalence-codex-review-round-1.md:1017:end thebibliography 707
./reviews/directed-univalence-codex-review-round-1.md:1062:   1 documentclass
./reviews/directed-univalence-codex-review-round-1.md:1138:  11 usepackage
./papers/latex/etcs-izf-folds.log:1:This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex 2026.3.22)  4 MAY 2026 17:31
./papers/latex/cubical-hiit-cauchy.tex:1:\documentclass[12pt]{article}
./papers/latex/cubical-hiit-cauchy.tex:4:\usepackage{amsmath, amssymb, amsthm}
./papers/latex/cubical-hiit-cauchy.tex:7:\usepackage{tikz-cd}
./papers/latex/cubical-hiit-cauchy.tex:8:\usepackage{tikz}
./papers/latex/cubical-hiit-cauchy.tex:12:\usepackage{hyperref}
./papers/latex/cubical-hiit-cauchy.tex:13:\usepackage{cleveref}
./papers/latex/cubical-hiit-cauchy.tex:16:\usepackage{graphicx}
./papers/latex/cubical-hiit-cauchy.tex:19:\usepackage[margin=1in]{geometry}
./papers/latex/cubical-hiit-cauchy.tex:22:\usepackage{everypage}
./papers/latex/cubical-hiit-cauchy.tex:23:\usepackage{xcolor}
./papers/latex/cubical-hiit-cauchy.tex:26:\usepackage{listings}
./papers/latex/cubical-hiit-cauchy.tex:1067:\begin{thebibliography}{99}
./papers/latex/cubical-hiit-cauchy.tex:1157:\end{thebibliography}
./papers/latex/etcs-izf-folds.tex:1:\documentclass[12pt]{article}
./papers/latex/etcs-izf-folds.tex:4:\usepackage{amsmath, amssymb, amsthm}
./papers/latex/etcs-izf-folds.tex:5:\usepackage{mathtools}
./papers/latex/etcs-izf-folds.tex:8:\usepackage{tikz-cd}
./papers/latex/etcs-izf-folds.tex:9:\usepackage{tikz}
./papers/latex/etcs-izf-folds.tex:12:\usepackage{hyperref}
./papers/latex/etcs-izf-folds.tex:13:\usepackage{cleveref}
./papers/latex/etcs-izf-folds.tex:16:\usepackage{graphicx}
./papers/latex/etcs-izf-folds.tex:19:\usepackage[margin=1in]{geometry}
./papers/latex/etcs-izf-folds.tex:22:\usepackage{everypage}
./papers/latex/etcs-izf-folds.tex:23:\usepackage{xcolor}
./papers/latex/etcs-izf-folds.tex:1307:\begin{thebibliography}{99}
./papers/latex/etcs-izf-folds.tex:1419:\end{thebibliography}
./reviews/infinity-nno-codex-review-round-1.md:4:paper: infinity-nno
./reviews/infinity-nno-codex-review-round-1.md:22:Review papers/latex/infinity-nno.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
./reviews/infinity-nno-codex-review-round-1.md:24:The file path is: /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex
./papers/latex/langlands-analytic-number-theory.tex:1:\documentclass[12pt]{article}
./papers/latex/langlands-analytic-number-theory.tex:4:\usepackage{amsmath, amssymb, amsfonts, amsthm}
./papers/latex/langlands-analytic-number-theory.tex:7:\usepackage{tikz-cd}
./papers/latex/langlands-analytic-number-theory.tex:8:\usepackage{tikz}
./papers/latex/langlands-analytic-number-theory.tex:12:\usepackage{hyperref}
./papers/latex/langlands-analytic-number-theory.tex:13:\usepackage{cleveref}
./papers/latex/langlands-analytic-number-theory.tex:16:\usepackage{graphicx}
./papers/latex/langlands-analytic-number-theory.tex:19:\usepackage[margin=1in]{geometry}
./papers/latex/langlands-analytic-number-theory.tex:22:\usepackage{everypage}
./papers/latex/langlands-analytic-number-theory.tex:23:\usepackage{xcolor}
./papers/latex/langlands-analytic-number-theory.tex:1660:\bibliographystyle{plain}
./papers/latex/langlands-analytic-number-theory.tex:1661:\begin{thebibliography}{99}
./papers/latex/langlands-analytic-number-theory.tex:1809:\end{thebibliography}
./papers/latex/coalgebraic-transcendentals.tex:1:\documentclass[12pt]{article}
./papers/latex/coalgebraic-transcendentals.tex:4:\usepackage{amsmath, amssymb, amsthm}
./papers/latex/coalgebraic-transcendentals.tex:5:\usepackage{mathtools}
./papers/latex/coalgebraic-transcendentals.tex:8:\usepackage{tikz}
./papers/latex/coalgebraic-transcendentals.tex:9:\usepackage{tikz-cd}
./papers/latex/coalgebraic-transcendentals.tex:13:\usepackage{hyperref}
./papers/latex/coalgebraic-transcendentals.tex:14:\usepackage{cleveref}
./papers/latex/coalgebraic-transcendentals.tex:17:\usepackage{graphicx}
./papers/latex/coalgebraic-transcendentals.tex:20:\usepackage[margin=1in]{geometry}
./papers/latex/coalgebraic-transcendentals.tex:23:\usepackage{everypage}
./papers/latex/coalgebraic-transcendentals.tex:24:\usepackage{xcolor}
./papers/latex/coalgebraic-transcendentals.tex:27:\usepackage{listings}
./papers/latex/coalgebraic-transcendentals.tex:1175:% Bibliography
./papers/latex/coalgebraic-transcendentals.tex:1177:\begin{thebibliography}{99}
./papers/latex/coalgebraic-transcendentals.tex:1316:\end{thebibliography}
./papers/latex/cubical-hiit-cauchy.log:1:This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex 2026.3.22)  4 MAY 2026 17:31
./reviews/directed-univalence-review-round-1.md:36:    *   **Line 281 (Bibliography [Riehl2025]):** The reference "[Riehl2025]" cites an arXiv paper from the future (`2510.15795`). This should be replaced with an actual publication, a current arXiv ID if available, or rephrased as "E. Riehl, personal communication" or "in preparation" if that is the case.
./reviews/directed-univalence-review-round-1.md:37:    *   **Line 285 (Bibliography [KavvosWeaver]):** The reference "[KavvosWeaver]" is described as "Various preprints, 2024--2025". This is too vague for a formal bibliography. Specific arXiv IDs or publications should be cited. If the work is ongoing and not yet public, it may be better to remove the citation or mention it in the text as "ongoing work by Kavvos and Weaver".
./papers/latex/directed-univalence.tex:1:\documentclass[12pt]{article}
./papers/latex/directed-univalence.tex:4:\usepackage{amsmath, amssymb, amsthm}
./papers/latex/directed-univalence.tex:7:\usepackage{tikz-cd}
./papers/latex/directed-univalence.tex:8:\usepackage{tikz}
./papers/latex/directed-univalence.tex:12:\usepackage{hyperref}
./papers/latex/directed-univalence.tex:13:\usepackage{cleveref}
./papers/latex/directed-univalence.tex:16:\usepackage{graphicx}
./papers/latex/directed-univalence.tex:19:\usepackage[margin=1in]{geometry}
./papers/latex/directed-univalence.tex:22:\usepackage{booktabs}
./papers/latex/directed-univalence.tex:25:\usepackage{everypage}
./papers/latex/directed-univalence.tex:26:\usepackage{xcolor}
./papers/latex/directed-univalence.tex:29:\usepackage{listings}
./papers/latex/directed-univalence.tex:667:\begin{thebibliography}{99}
./papers/latex/directed-univalence.tex:707:\end{thebibliography}
./papers/latex/directed-univalence.log:1:This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex 2026.3.22)  4 MAY 2026 17:26
./papers/latex/langlands-analytic-number-theory.log:1:This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex 2026.3.22)  4 MAY 2026 17:29

codex
The file is a standalone article with inline bibliography. I’m going to compile it into `/tmp` to catch LaTeX diagnostics, then cross-check labels/citations against the source for line-accurate fixes.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '261,520p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   261	\]
   262	is contractible: $h=\rec_{\N}\,y_{0}\,f$ together with the $\refl$-witnesses of the equations is the centre, and the contraction is provided by the $\ind_{\N}$ step above.
   263	
   264	\emph{Contraction onto the centre.} Take any $(X,x_{0},s,\iota)\in\NNO$. We must produce a path
   265	\[
   266	p\colon (\N,\zero,\suc,\star) \;=\; (X,x_{0},s,\iota) \quad\text{in}\quad \NNO.
   267	\]
   268	Apply $\iota$ to the pointed system $(\N,\zero,\suc)$: it yields a contractible type whose centre is a unique map $u\colon X\to \N$ with $u\,x_{0}=\zero$ and $u\circ s\sim \suc\circ u$. Apply $\star$ to $(X,x_{0},s)$: a unique map $v\colon \N\to X$ with $v\,\zero=x_{0}$ and $v\circ \suc\sim s\circ v$. The composites $u\circ v\colon \N\to\N$ and $\id_{\N}$ both satisfy the universal-property equations for $(\N,\zero,\suc,\star)$; uniqueness inside the contractible type of recursors forces $u\circ v=\id_{\N}$ via $\ind_{\N}$, and likewise $v\circ u=\id_{X}$ via $\iota$. Thus $u\colon X\eqv\N$ is an equivalence (with quasi-inverse $v$). Univalence ($\ua$) converts the equivalence into a path $p_{1}\colon X = \N$ in $\U$. Transporting $(x_{0},s,\iota)$ along $p_{1}$ produces $(\zero,\suc,\star')$ for some witness $\star'\colon \mathsf{isInitial}(\N,\zero,\suc)$. Since $\mathsf{isInitial}$ is a proposition, $\star'=\star$. Pairing yields the required path $p$ in $\NNO$.
   269	
   270	The map $(X,x_{0},s,\iota)\mapsto p$ is itself constructed by transport and is thus a continuous family of paths from $c$, exhibiting $c$ as the centre of contraction.
   271	\end{proof}
   272	
   273	\begin{remark}[The infinite tower]
   274	The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
   275	\end{remark}
   276	
   277	\begin{remark}[Why this is stronger]
   278	\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
   279	\end{remark}
   280	
   281	\section{The $(\infty,1)$-categorical NNO}\label{sec:lurie}
   282	
   283	We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
   284	
   285	\subsection{Lurie's parametrised NNO}
   286	
   287	\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
   288	Let $\mathcal{E}$ be a presentable $(\infty,1)$-topos with terminal object $\mathbf{1}$. An NNO is an object $N\in\mathcal{E}$ together with morphisms $0\colon \mathbf{1}\to N$ and $s\colon N\to N$ such that for every diagram $\mathbf{1}\xrightarrow{x_{0}}X\xrightarrow{f}X$ in $\mathcal{E}$, the mapping space
   289	\[
   290	\Map_{\PtEndo(\mathcal{E})}\bigl((N,0,s),(X,x_{0},f)\bigr)
   291	\]
   292	is contractible.
   293	\end{definition}
   294	
   295	Here $\PtEndo(\mathcal{E})$ is the $(\infty,1)$-category of pointed endomorphisms in $\mathcal{E}$. Concretely, an object of $\PtEndo(\mathcal{E})$ is a triple $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ where $X\in\mathcal{E}$, $x_{0}$ is a global element, and $f$ is an endomorphism. A morphism $(X,x_{0},f)\to(Y,y_{0},g)$ is a tuple $(h, \alpha, \beta)$ where $h\colon X\to Y$ is a morphism in $\mathcal{E}$, $\alpha\colon h\circ x_{0}\sim y_{0}$ is a $1$-cell in $\Map_{\mathcal{E}}(\mathbf{1},Y)$, and $\beta\colon h\circ f\sim g\circ h$ is a $1$-cell in $\Map_{\mathcal{E}}(X,Y)$, together with the higher cells provided by composing in $\mathcal{E}$. In symbols this is the $\infty$-categorical limit (formally, an iterated comma object)
   296	\[
   297	\PtEndo(\mathcal{E}) \;\coloneqq\; \mathcal{E}_{\mathbf{1}/}\;\times_{\mathcal{E}}\; \mathcal{E}^{[1]}
   298	\]
   299	parametrising pairs $(x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$.
   300	
   301	\begin{remark}
   302	Equivalently, an $(\infty,1)$-NNO is an initial object in $\PtEndo(\mathcal{E})$, where ``initial'' is interpreted in the $(\infty,1)$-categorical sense: the mapping space to every other object is contractible. Lurie phrases the definition via a small-colimit-preserving recursion functor; the equivalence is straightforward.
   303	\end{remark}
   304	
   305	\begin{example}
   306	When $\mathcal{E}=\Spc$, the NNO is the constant functor at $\N$. Its existence and contractibility of the mapping space is the homotopy-coherent version of the Set-theoretic recursion principle.
   307	\end{example}
   308	
   309	\begin{example}
   310	For $\mathcal{E}=\mathrm{PSh}(\mathcal{C})$ the $(\infty,1)$-category of presheaves of spaces on a small $(\infty,1)$-category $\mathcal{C}$, the NNO is the constant presheaf at $\N$, $c\mapsto \N$.
   311	\end{example}
   312	
   313	\begin{example}
   314	For $\mathcal{E}=\mathrm{Sh}(X)$ the $(\infty,1)$-topos of sheaves on a topological space $X$, the NNO is the constant sheaf $\underline{\N}$.
   315	\end{example}
   316	
   317	\subsection{Existence in presentable $(\infty,1)$-toposes}
   318	
   319	\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
   320	Every presentable $(\infty,1)$-topos has an NNO.
   321	\end{theorem}
   322	
   323	\begin{proof}[Sketch]
   324	Presentability ensures small colimits and a small generating set. Build $N$ as the sequential colimit
   325	\[
   326	N \;=\; \colim\bigl(\mathbf{1}\xrightarrow{j_{0}}\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{1}}\mathbf{1}\sqcup\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{2}}\cdots\bigr),
   327	\]
   328	where $j_{n}$ adds a new copy of $\mathbf{1}$. Equivalently, $N=\bigsqcup_{n\geq 0}\mathbf{1}$. Verification of the universal property uses the universal property of sequential colimits and contractibility of the relevant mapping spaces.
   329	\end{proof}
   330	
   331	\subsection{Elementary $(\infty,1)$-toposes and Rasekh's NNO}
   332	
   333	A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos (in the sense of Rasekh~\cite{Rasekh2018ETop}) has an NNO. Elementary $(\infty,1)$-toposes are axiomatised by:
   334	\begin{enumerate}
   335	  \item finite limits,
   336	  \item locally cartesian closure,
   337	  \item subobject classifier,
   338	  \item object classifier (a univalent universe of small types),
   339	  \item finite colimits.
   340	\end{enumerate}
   341	They need not be presentable.
   342	
   343	\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
   344	Every elementary $(\infty,1)$-topos has an NNO. In particular, the existence of the NNO does not need to be added as a separate axiom: it is derivable from the other axioms of an elementary $(\infty,1)$-topos.
   345	\end{theorem}
   346	
   347	\begin{proof}[Sketch of Rasekh's argument]
   348	The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO. The argument uses descent, locality, and classification of univalent maps.
   349	\end{proof}
   350	
   351	\begin{remark}
   352	Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
   353	\end{remark}
   354	
   355	\subsection{Equivalence with the $1$-NNO when $\mathcal{E}$ is a $1$-topos}
   356	
   357	\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
   358	Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
   359	\end{theorem}
   360	
   361	\begin{proof}
   362	The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space $\Map_{\PtEndo(\mathcal{E}^{(\infty)})}((N,0,s),(X,x_{0},f))$ is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible. \qed
   363	\end{proof}
   364	
   365	\section{Higher coherences}\label{sec:higher-coh}
   366	
   367	Why is the $(\infty,1)$-NNO ``more delicate''? The naive answer is: in a $1$-category, ``unique map'' is a single condition. In an $(\infty,1)$-category, ``unique map'' must be promoted to ``unique up to coherent homotopy''. Concretely, given two NNOs $N_{1}, N_{2}$ in $\mathcal{E}$, we need a comparison map $u\colon N_{1}\to N_{2}$ together with the homotopies filling the squares
   368	\[
   369	\begin{tikzcd}[column sep=large, row sep=large]
   370	\mathbf{1} \arrow[r, "0_{1}"] \arrow[dr, "0_{2}"'] & N_{1} \arrow[d, "u"] \arrow[r, "s_{1}"] \arrow[dr, phantom, "\Downarrow\,\beta", near start] & N_{1} \arrow[d, "u"] \\
   371	& N_{2} \arrow[r, "s_{2}"'] & N_{2}
   372	\end{tikzcd}
   373	\]
   374	Filling the upper-left triangle is a $1$-cell $\alpha\colon u\circ 0_{1}\sim 0_{2}$, and filling the right-hand square is a $1$-cell $\beta\colon u\circ s_{1}\sim s_{2}\circ u$. Beyond these, we need:
   375	\begin{enumerate}
   376	  \item compatibilities of these homotopies (i.e.\ $2$-cells filling in the obvious squares),
   377	  \item compatibilities of those compatibilities ($3$-cells),
   378	  \item and so on, ad infinitum.
   379	\end{enumerate}
   380	
   381	\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
   382	The initiality of an $(\infty,1)$-NNO already encodes, in a single property, the entire infinite tower of coherence data sketched above. Concretely, for any two $(\infty,1)$-NNOs $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ in an $(\infty,1)$-category $\mathcal{E}$, the mapping space
   383	\[
   384	M \;\coloneqq\; \Map_{\PtEndo(\mathcal{E})}\bigl((N_{1},0_{1},s_{1}),(N_{2},0_{2},s_{2})\bigr)
   385	\]
   386	is contractible.
   387	\end{proposition}
   388	
   389	\begin{proof}
   390	By definition of $(\infty,1)$-NNO, both $(N_{1},0_{1},s_{1})$ and $(N_{2},0_{2},s_{2})$ are initial objects of $\PtEndo(\mathcal{E})$. Initial objects in any $(\infty,1)$-category have contractible mapping spaces to every object, in particular to each other. Contractibility of $M$ is equivalent to existence of a $0$-cell (the comparison map $u$ and the homotopies $\alpha,\beta$), uniqueness up to a contractible space of $1$-cells (the next-level coherences), uniqueness of those up to a contractible space of $2$-cells, and so on inductively at every level $n\geq 0$.
   391	\end{proof}
   392	
   393	\begin{remark}
   394	The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
   395	\begin{itemize}
   396	  \item $\pi_{0}M = *$: existence and uniqueness up to homotopy of the comparison map;
   397	  \item $\pi_{n}M = 0$ for all $n\geq 1$: triviality of all higher loop spaces, i.e.\ the entire tower of compatibilities.
   398	\end{itemize}
   399	\end{remark}
   400	
   401	\subsection{Truncation level of $\mathrm{NNO}(\mathcal{E})$}
   402	
   403	Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.
   404	
   405	\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
   406	For any $(\infty,1)$-topos $\mathcal{E}$ in which an NNO exists, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   407	\end{theorem}
   408	
   409	\begin{proof}
   410	The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
   411	\end{proof}
   412	
   413	\section{The main theorem: contractibility for $(\infty,1)$-NNOs}\label{sec:main}
   414	
   415	\subsection{Statement and proof}
   416	
   417	We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
   418	
   419	\begin{theorem}[Main theorem]\label{thm:main}
   420	Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos by \cite{Shulman2019}). Then:
   421	\begin{enumerate}
   422	  \item There exists an $(\infty,1)$-NNO in $\mathcal{E}$ (\cref{def:lurie-nno}).
   423	  \item The space $\mathrm{NNO}(\mathcal{E})$ is contractible (a $(-2)$-type).
   424	  \item Any two $(\infty,1)$-NNOs in $\mathcal{E}$ are connected by an essentially unique equivalence.
   425	  \item The automorphism $\infty$-group of an $(\infty,1)$-NNO is contractible.
   426	\end{enumerate}
   427	\end{theorem}
   428	
   429	\begin{proof}
   430	By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
   431	
   432	\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
   433	
   434	Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
   435	\end{proof}
   436	
   437	\subsection{What ``contractible'' contributes beyond ``unique iso''}
   438	
   439	\begin{remark}[Higher coherence cancellation]
   440	\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
   441	\begin{itemize}
   442	  \item a $1$-cell witnessing $h\circ 0\sim x_{0}$,
   443	  \item a $1$-cell witnessing $h\circ s\sim f\circ h$,
   444	  \item $2$-cells expressing that the choice of $1$-cells is unique up to homotopy,
   445	  \item $\ldots$
   446	\end{itemize}
   447	\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
   448	\end{remark}
   449	
   450	\subsection{Identification with Rasekh's NNO}
   451	
   452	\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
   453	Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
   454	\end{theorem}
   455	
   456	\begin{proof}
   457	By \cref{thm:main}(2), $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (Theorem~\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
   458	\end{proof}
   459	
   460	\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
   461	
   462	We now sharpen the discussion of Rasekh's circle-construction.
   463	
   464	\subsection{The role of $\Sone$}
   465	
   466	In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
   467	
   468	\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
   469	$\Omega\Sone\eqv\Z$ in any elementary $(\infty,1)$-topos $\mathcal{E}$, where $\Z$ is the group object obtained from the type of integers in $\mathcal{E}$.
   470	\end{theorem}
   471	
   472	\begin{proof}[Idea]
   473	Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration $\mathrm{code}\colon \Sone\to \U$ with $\mathrm{code}(\base)\eqv\Z$ and the loop acting as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
   474	\end{proof}
   475	
   476	\begin{remark}[Recovery of $\N$ from $\Z$]
   477	Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
   478	\end{remark}
   479	
   480	\subsection{Why this fails in $1$-topos theory}
   481	
   482	In a $1$-topos $\mathcal{E}_{1}$, every type is $0$-truncated, so $\Omega\Sone = \Sone\times_{\Sone}\Sone$ is the singleton (a single point with no nontrivial loops, since paths don't exist). The encode--decode argument collapses, and we cannot recover $\Z$ or $\N$ this way. The $\infty$-categorical setting is therefore not just a technical generalisation: it makes essentially new constructions possible.
   483	
   484	\subsection{Power objects vs object classifier}
   485	
   486	A subtle point in the elementary axiomatic is whether one assumes power objects (like $1$-toposes) or an object classifier (Lurie's $(\infty,1)$-version). Power objects classify subobjects; the object classifier classifies all small maps.
   487	
   488	\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
   489	In an elementary $(\infty,1)$-topos with object classifier $\U$, the NNO can be constructed without separate appeal to power objects.
   490	\end{proposition}
   491	
   492	\begin{proof}
   493	The construction in \cref{thm:rasekh-hott} uses only $\U$ and pushouts; no separate power-object axiom is invoked.
   494	\end{proof}
   495	
   496	\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
   497	
   498	Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
   499	
   500	\subsection{An NNO in STT}
   501	
   502	In STT, one can define the type
   503	\[
   504	\NNO_{\mathrm{dir}} \;\coloneqq\; \Sigmatype_{X}\,\Sigmatype_{x_{0}\colon \mathbf{1}\to X}\,\Sigmatype_{s\colon X\to X}\,\mathsf{isInitial}_{\mathrm{dir}}(X,x_{0},s),
   505	\]
   506	where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
   507	
   508	\begin{remark}[Open]
   509	A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.
   510	\end{remark}
   511	
   512	\subsection{Comparing internal language flavours}
   513	
   514	\begin{itemize}
   515	  \item HoTT internal language: $(\infty,1)$-toposes (after Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
   516	  \item STT internal language: $(\infty,1)$-categories (after Riehl--Shulman~\cite{RiehlShulman2017}); types are general $(\infty,1)$-spaces.
   517	  \item Cohesive HoTT: differential and geometric ambient $(\infty,1)$-toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
   518	\end{itemize}
   519	
   520	For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '521,680p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   521	
   522	\section{Open problems}\label{sec:open}
   523	
   524	\begin{enumerate}
   525	  \item \textbf{Internal-to-external transfer.} Make the externalisation step in the proof of \cref{thm:main} fully precise, including coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
   526	  \item \textbf{Elementary case (Rasekh).} Prove \cref{thm:contractibility-infty} for arbitrary elementary $(\infty,1)$-toposes without invoking Shulman's theorem (which is currently stated for Grothendieck $(\infty,1)$-toposes and conjectured for the elementary case).
   527	  \item \textbf{Synthetic NNO contractibility in STT.} Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory using only Rezk-completeness of the universe of discrete types.
   528	  \item \textbf{Course-of-values and primitive recursion in $(\infty,1)$-toposes.} Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
   529	  \item \textbf{Lurie's parametrised NNO.} Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here, and show that the parametrisation is functorial up to contractible choice.
   530	  \item \textbf{Cubical Agda formalisation.} Formalise \cref{thm:main} in Cubical Agda using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
   531	  \item \textbf{Univalent foundations of arithmetic.} Use \cref{thm:main} to formalise basic arithmetic theorems (associativity of $+$, commutativity, distributivity) at the $(\infty,1)$-categorical level, with all coherences automatic.
   532	\end{enumerate}
   533	
   534	\section{Discussion}
   535	
   536	\subsection{Philosophical remarks}
   537	
   538	The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?''. The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible''.
   539	
   540	\subsection{Relationship to other modular foundations}
   541	
   542	In the modular framework adopted by the broader research programme, the NNO sits at the bottom of a tower:
   543	\begin{enumerate}
   544	  \item \textbf{NNO} (this paper): provides arithmetic.
   545	  \item \textbf{Real numbers HIIT}: built on $\N$ (Paper~V \S5).
   546	  \item \textbf{Coalgebraic transcendentals}: built on streams over $\R$ (Topic 1).
   547	  \item \textbf{$(\infty,1)$-Langlands}: built on $\R, \Q_{p}, \mathbb{A}$ (Topic 2).
   548	  \item \textbf{Higher inductive types of all kinds}: built on the entire HoTT framework (Topic 6).
   549	\end{enumerate}
   550	The contractibility of NNO at the $(\infty,1)$-level ensures that everything built on top of NNO inherits a unique, canonical foundation. This is the modular composition principle: each layer is uniquely determined by the previous one, up to contractible choice.
   551	
   552	\subsection{Limitations}
   553	
   554	\begin{itemize}
   555	  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
   556	  \item Higher coherence verification, while ``automatic'' in HoTT, requires actual computation in concrete models. We have not exhibited explicit cellular witnesses for, say, the bisimplicial set model.
   557	  \item The connection to Rasekh's circle-construction is via contractibility: we know the two NNOs agree, but we do not give an explicit comparison map.
   558	\end{itemize}
   559	
   560	\section{Conclusion}
   561	
   562	The natural numbers object is one of the simplest universal constructions in category theory; nonetheless, lifting it from the $1$-categorical to the $(\infty,1)$-categorical setting illustrates the full power of modern higher-categorical machinery. The key insight is that contractibility, as defined in HoTT (a single propositional condition), automatically encodes an infinite tower of homotopy coherences. This makes HoTT the ideal language to state and prove $(\infty,1)$-categorical universal properties without the bookkeeping of explicit cell-by-cell verification.
   563	
   564	We have presented:
   565	\begin{itemize}
   566	  \item the $1$-categorical NNO and its contractibility (\cref{thm:contr-1cat});
   567	  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
   568	  \item Rasekh's circle-construction of an NNO in any elementary $(\infty,1)$-topos (\cref{thm:rasekh});
   569	  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;
   570	  \item a synthetic perspective via simplicial type theory.
   571	\end{itemize}
   572	
   573	The remaining open problems---particularly the synthetic STT proof and the Cubical Agda formalisation---are within reach of current methods. Once completed, they will close the gap between the conceptual ``contractibility solves it'' answer and the explicit cellular-coherent verification.
   574	
   575	\section*{Acknowledgements}
   576	
   577	The author thanks the Magneton Research Collective for ongoing discussion, and acknowledges the foundational work of Lurie, Rasekh, Shulman, Riehl, and the HoTT community.
   578	
   579	\begin{thebibliography}{99}
   580	
   581	\bibitem{LurieHTT} J.~Lurie, \emph{Higher Topos Theory}, Annals of Mathematics Studies, vol.~170, Princeton University Press, 2009. arXiv:math/0608040.
   582	
   583	\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018. \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
   584	
   585	\bibitem{Rasekh2018ETop} N.~Rasekh, \emph{A Theory of Elementary Higher Toposes}, arXiv:1805.03805, 2018.
   586	
   587	\bibitem{Rasekh2021} N.~Rasekh, \emph{Every Elementary Higher Topos has a Natural Number Object}, Theory and Applications of Categories \textbf{37}, no.~13 (2021), 337--377. arXiv:1809.01734.
   588	
   589	\bibitem{Shulman2019} M.~Shulman, \emph{All $(\infty,1)$-toposes have strict univalent universes}, arXiv:1904.07004, 2019.
   590	
   591	\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book/}.
   592	
   593	\bibitem{LicataShulman} D.~R.~Licata and M.~Shulman, \emph{Calculating the fundamental group of the circle in homotopy type theory}, LICS 2013, 223--232.
   594	
   595	\bibitem{RiehlShulman2017} E.~Riehl and M.~Shulman, \emph{A type theory for synthetic $\infty$-categories}, Higher Structures \textbf{1} (2017), no.~1, 147--224. arXiv:1705.07442.
   596	
   597	\bibitem{GWB2024} D.~Gratzer, J.~Weinberger, and U.~Buchholtz, \emph{Directed univalence in simplicial homotopy type theory}, arXiv:2407.09146, 2024.
   598	
   599	\bibitem{SchreiberShulman} U.~Schreiber and M.~Shulman, \emph{Quantum gauge field theory in cohesive homotopy type theory}, EPTCS \textbf{158} (2014), 109--126.
   600	
   601	\bibitem{Lambek1968} J.~Lambek, \emph{A fixpoint theorem for complete categories}, Math. Z. \textbf{103} (1968), 151--161.
   602	
   603	\bibitem{Lawvere1964} F.~W.~Lawvere, \emph{An elementary theory of the category of sets}, PNAS \textbf{52} (1964), 1506--1511.
   604	
   605	\bibitem{Awodey2010} S.~Awodey, \emph{Type theory and homotopy}, in \emph{Epistemology versus Ontology}, Springer, 2012, 183--201.
   606	
   607	\bibitem{Benacerraf1965} P.~Benacerraf, \emph{What numbers could not be}, Philosophical Review \textbf{74} (1965), 47--73.
   608	
   609	\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011. \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
   610	
   611	\bibitem{MartinLof1984} P.~Martin-L\"of, \emph{Intuitionistic Type Theory}, Bibliopolis, Naples, 1984.
   612	
   613	\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010. \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
   614	
   615	\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008. \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
   616	
   617	\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
   618	
   619	\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
   620	
   621	\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
   622	
   623	\bibitem{Synthesis} YonedaAI, \emph{The Univalent Correspondence: Synthesis}, Magneton Research Collective, 2026.
   624	
   625	\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J. Eur. Math. Soc. \textbf{23} (2021), 2071--2126.
   626	
   627	\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015. arXiv:1611.02108.
   628	
   629	\bibitem{Riehl2025} E.~Riehl, \emph{Synthetic perspectives on spaces and categories}, arXiv:2510.15795, 2025.
   630	
   631	\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos}. \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
   632	
   633	\bibitem{nLabNNO} The nLab, \emph{natural numbers object}. \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
   634	
   635	\end{thebibliography}
   636	
   637	\end{document}

exec
/usr/local/bin/zsh -lc 'mkdir -p /tmp/infinity-nno-review && pdflatex -interaction=nonstopmode -halt-on-error -file-line-error -output-directory=/tmp/infinity-nno-review papers/latex/infinity-nno.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 264ms:

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

No file infinity-nno.aux.
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
./papers/latex/infinity-nno.tex:120: Undefined control sequence.
l.120 \NNO \;\coloneqq
                      \; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype...

./papers/latex/infinity-nno.tex:120:  ==> Fatal error occurred, no output PDF f
ile produced!
Transcript written on /tmp/infinity-nno-review/infinity-nno.log.

codex
The first compile fails before the abstract completes: `\coloneqq` is undefined at line 120. I’m doing a temporary compile shim that defines only that missing macro so later warnings, references, and box diagnostics are still visible without changing the repo.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(label|ref|cref|Cref|cite)\\{\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(label|ref|cref|Cref|cite)\{)
                                    ^
error: unopened group

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(begin|end)\\{(equation|align|gather|multline|tikzcd|itemize|enumerate|thebibliography)|\\\\\\[|\\\\\\]|TODO|todo|includegraphics|\\\\url|\\\\S|\\\\qed|\\\\ldots|\\\\ldots\" papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(begin|end)\{(equation|align|gather|multline|tikzcd|itemize|enumerate|thebibliography)|\\[|\\]|TODO|todo|includegraphics|\url|\S|\qed|\ldots|\ldots)
                                                                                                                                   ^
error: invalid hexadecimal digit

exec
/usr/local/bin/zsh -lc "mkdir -p /tmp/infinity-nno-review-shim && pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-shim '\\\\newcommand{\\\\coloneqq}{\\\\mathrel{\\\\vcentcolon=}}\\\\input{papers/latex/infinity-nno.tex}' && pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-shim '\\\\newcommand{\\\\coloneqq}{\\\\mathrel{\\\\vcentcolon=}}\\\\input{papers/latex/infinity-nno.tex}'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>

! LaTeX Error: There's no line here to end.

See the LaTeX manual or LaTeX Companion for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
<*> \\n
       ewcommand{\\coloneqq}{\\mathrel{\\vcentcolon=}}\\input{papers/latex/i...


! LaTeX Error: Missing \begin{document}.

See the LaTeX manual or LaTeX Companion for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
<*> \\n
       ewcommand{\\coloneqq}{\\mathrel{\\vcentcolon=}}\\input{papers/latex/i...

Missing character: There is no n in font nullfont!
Missing character: There is no e in font nullfont!
Missing character: There is no w in font nullfont!
Missing character: There is no c in font nullfont!
Missing character: There is no o in font nullfont!
Missing character: There is no m in font nullfont!
Missing character: There is no m in font nullfont!
Missing character: There is no a in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no d in font nullfont!
Missing character: There is no c in font nullfont!
Missing character: There is no o in font nullfont!
Missing character: There is no l in font nullfont!
Missing character: There is no o in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no e in font nullfont!
Missing character: There is no q in font nullfont!
Missing character: There is no q in font nullfont!
Missing character: There is no m in font nullfont!
Missing character: There is no a in font nullfont!
Missing character: There is no t in font nullfont!
Missing character: There is no h in font nullfont!
Missing character: There is no r in font nullfont!
Missing character: There is no e in font nullfont!
Missing character: There is no l in font nullfont!
Missing character: There is no v in font nullfont!
Missing character: There is no c in font nullfont!
Missing character: There is no e in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no t in font nullfont!
Missing character: There is no c in font nullfont!
Missing character: There is no o in font nullfont!
Missing character: There is no l in font nullfont!
Missing character: There is no o in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no = in font nullfont!
Missing character: There is no i in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no p in font nullfont!
Missing character: There is no u in font nullfont!
Missing character: There is no t in font nullfont!
Missing character: There is no p in font nullfont!
Missing character: There is no a in font nullfont!
Missing character: There is no p in font nullfont!
Missing character: There is no e in font nullfont!
Missing character: There is no r in font nullfont!
Missing character: There is no s in font nullfont!
Missing character: There is no / in font nullfont!
Missing character: There is no l in font nullfont!
Missing character: There is no a in font nullfont!
Missing character: There is no t in font nullfont!
Missing character: There is no e in font nullfont!
Missing character: There is no x in font nullfont!
Missing character: There is no / in font nullfont!
Missing character: There is no i in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no f in font nullfont!
Missing character: There is no i in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no i in font nullfont!
Missing character: There is no t in font nullfont!
Missing character: There is no y in font nullfont!
Missing character: There is no - in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no n in font nullfont!
Missing character: There is no o in font nullfont!
Missing character: There is no . in font nullfont!
Missing character: There is no t in font nullfont!
Missing character: There is no e in font nullfont!
Missing character: There is no x in font nullfont!
! Emergency stop.
<*> ...on=}}\\input{papers/latex/infinity-nno.tex}
                                                  
!  ==> Fatal error occurred, no output PDF file produced!
Transcript written on /tmp/infinity-nno-review-shim/texput.log.

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\label\\{' -e '\\\\ref\\{' -e '\\\\cref\\{' -e '\\\\Cref\\{' -e '\\\\cite\\{' papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
133:\section{Introduction}\label{sec:intro}
141:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
143:By Shulman's theorem~\cite{Shulman2019}, every Grothendieck $(\infty,1)$-topos $\mathcal{E}$ models HoTT with univalence, and conjecturally so does every elementary $(\infty,1)$-topos. Therefore the contractibility theorem transports internally: for each such $\mathcal{E}$ there is an internal type of NNO structures in $\mathcal{E}$, and this type is contractible. Externalising the internal contractibility yields a strong $\infty$-categorical statement: the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures, formed in the $\infty$-category $\mathcal{E}$, is a contractible Kan complex.
145:The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
150:  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
151:  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
152:  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
153:  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
154:  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
155:  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
160:\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
166:\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
172:\begin{definition}[Pointed dynamical system]\label{def:ptendo}
176:\begin{definition}[NNO]\label{def:nno}
182:\begin{lemma}[Rigidity of initial objects]\label{lem:rigid}
190:\begin{lemma}[Lambek]\label{lem:lambek}
217:\begin{theorem}[Universal property of NNO]\label{thm:up}
221:\subsection{1-Categorical contractibility (rigidity of NNOs)}\label{sec:rigidity-1cat}
225:In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
227:\begin{theorem}[1-categorical contractibility of $\NNO$]\label{thm:contr-1cat}
232:\Cref{lem:rigid} provides a unique isomorphism between any two NNOs and triviality of automorphisms. Hence the groupoid has a unique morphism between any pair of objects. When nonempty, such a groupoid is equivalent to the terminal groupoid $\mathbf{1}$, hence contractible.
235:\subsection{HoTT contractibility}\label{sec:hott-contr}
237:In HoTT we go further. Let $\U$ be a univalent universe. The result we recall here is stated as Theorem~2.7 in our companion paper~\cite{PaperIII} and as Theorem~4.4 in~\cite{PaperV}; it is also implicit in the discussion of the natural numbers type in~\cite[Chapter 6]{HoTTBook}. Because those references rely on internal context (notation, intermediate lemmas), we restate the theorem and give a self-contained proof.
239:\begin{definition}[Type of NNOs in HoTT]\label{def:nno-type}
251:\begin{theorem}[Contractibility of $\NNO$ in HoTT~\cite{PaperIII,PaperV}]\label{thm:contr-hott}
258:\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
274:The proof of \cref{thm:contr-hott} bundles infinitely many coherences into the propositional fact $\isContr(\NNO)$. Path induction (the $J$-rule) allows us to manipulate paths, $2$-paths, $3$-paths, and so on, with no extra effort: once we have $\isContr(\NNO)$, we automatically get $\isContr(\Omega^{n}\NNO)$ for every $n$, by general HoTT lemmas.
278:\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
281:\section{The $(\infty,1)$-categorical NNO}\label{sec:lurie}
283:We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
287:\begin{definition}[$(\infty,1)$-NNO, Lurie]\label{def:lurie-nno}
319:\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
333:A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos (in the sense of Rasekh~\cite{Rasekh2018ETop}) has an NNO. Elementary $(\infty,1)$-toposes are axiomatised by:
343:\begin{theorem}[Rasekh~\cite{Rasekh2021}]\label{thm:rasekh}
357:\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
358:Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
362:The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space $\Map_{\PtEndo(\mathcal{E}^{(\infty)})}((N,0,s),(X,x_{0},f))$ is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible. \qed
365:\section{Higher coherences}\label{sec:higher-coh}
381:\begin{proposition}[Initiality absorbs the entire coherence tower]\label{prop:tower}
394:The content of \cref{prop:tower} is that contractibility of $M$ is equivalent to:
405:\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
410:The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
413:\section{The main theorem: contractibility for $(\infty,1)$-NNOs}\label{sec:main}
417:We now combine the HoTT contractibility result with Shulman's interpretation theorem to give an internal-to-external argument for \cref{thm:contractibility-infty}, and to compare it with Rasekh's circle-construction.
419:\begin{theorem}[Main theorem]\label{thm:main}
420:Let $\mathcal{E}$ be an $(\infty,1)$-topos that admits a model of HoTT~+~univalence (e.g.\ any Grothendieck $(\infty,1)$-topos by \cite{Shulman2019}). Then:
422:  \item There exists an $(\infty,1)$-NNO in $\mathcal{E}$ (\cref{def:lurie-nno}).
430:By Shulman's theorem, $\mathcal{E}$ admits a model of HoTT in which $\U$ is interpreted as the object classifier and the type $\NNO$ of \cref{def:nno-type} is interpreted as an internal object of $\mathcal{E}$ (more precisely, as the underlying object of an $\infty$-groupoid object of $\mathcal{E}$, classified by $\U$). By \cref{thm:contr-hott}, this internal type is contractible (i.e.\ the proposition $\isContr(\NNO)$ has a global element).
432:\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
434:Existence (1) follows from \cref{thm:exist-pres} when $\mathcal{E}$ is presentable, or from \cref{thm:rasekh} when $\mathcal{E}$ is elementary. Statement (2) is the externalisation just described. Statements (3) and (4) follow from (2) by standard arguments: a contractible $\infty$-groupoid has a unique-up-to-contractible-choice path between any two points, and trivial loop spaces at every point.
440:\Cref{thm:main} packages \emph{infinitely many} layers of coherence into one statement. To see the gain concretely, consider the recursion principle: given $(X,x_{0},f)$ in $\mathcal{E}$, we get $h\colon N\to X$ in $\mathcal{E}$. In a $1$-topos, this is a single morphism. In an $(\infty,1)$-topos, $h$ comes equipped with:
447:\Cref{thm:main} guarantees that the data above is recoverable up to a contractible space of choices. In HoTT, the work is done by pattern-matching on identity types and using $\isContr$-elimination.
452:\begin{theorem}[Rasekh~$=$~Lurie internally]\label{thm:rasekh-lurie}
453:Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
457:By \cref{thm:main}(2), $\mathrm{NNO}(\mathcal{E})$ is contractible whenever an NNO exists. Both Rasekh's NNO (Theorem~\cref{thm:rasekh}) and any Lurie-style NNO (\cref{def:lurie-nno}) are points of $\mathrm{NNO}(\mathcal{E})$. Hence they are connected by a unique-up-to-contractible-choice equivalence.
460:\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
468:\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
473:Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration $\mathrm{code}\colon \Sone\to \U$ with $\mathrm{code}(\base)\eqv\Z$ and the loop acting as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
477:Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
488:\begin{proposition}[Object classifier suffices]\label{prop:obj-class-suffices}
493:The construction in \cref{thm:rasekh-hott} uses only $\U$ and pushouts; no separate power-object axiom is invoked.
496:\section{Synthetic approaches via simplicial type theory}\label{sec:stt}
498:Riehl--Shulman simplicial type theory (STT)~\cite{RiehlShulman2017} extends HoTT with a directed interval $\Delta^{1}$ and a directed path type $\Hom_{A}(a,b)$. The intent is to enable synthetic reasoning about $(\infty,1)$-categories rather than $\infty$-groupoids.
506:where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.
509:A complete contractibility result for $\NNO_{\mathrm{dir}}$ in the universe of discrete types of \cite{GWB2024} would give a synthetic proof of \cref{thm:main}, internal to STT. We are not aware of a published proof.
515:  \item HoTT internal language: $(\infty,1)$-toposes (after Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
516:  \item STT internal language: $(\infty,1)$-categories (after Riehl--Shulman~\cite{RiehlShulman2017}); types are general $(\infty,1)$-spaces.
517:  \item Cohesive HoTT: differential and geometric ambient $(\infty,1)$-toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
522:\section{Open problems}\label{sec:open}
525:  \item \textbf{Internal-to-external transfer.} Make the externalisation step in the proof of \cref{thm:main} fully precise, including coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
526:  \item \textbf{Elementary case (Rasekh).} Prove \cref{thm:contractibility-infty} for arbitrary elementary $(\infty,1)$-toposes without invoking Shulman's theorem (which is currently stated for Grothendieck $(\infty,1)$-toposes and conjectured for the elementary case).
530:  \item \textbf{Cubical Agda formalisation.} Formalise \cref{thm:main} in Cubical Agda using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
531:  \item \textbf{Univalent foundations of arithmetic.} Use \cref{thm:main} to formalise basic arithmetic theorems (associativity of $+$, commutativity, distributivity) at the $(\infty,1)$-categorical level, with all coherences automatic.
538:The contractibility theorem solves, at the $(\infty,1)$-categorical level, a version of Benacerraf's problem~\cite{Benacerraf1965}: ``which set is the natural numbers?'' becomes ``which $\infty$-groupoid is the natural numbers?''. The answer is: any one of them, but they are all canonically the same---and the canonicality is itself part of the data. There is no genuine choice to be made beyond ``the type of NNOs is contractible''.
555:  \item Shulman's interpretation theorem currently covers Grothendieck $(\infty,1)$-toposes, not all elementary ones. The full transfer of \cref{thm:contr-hott} to elementary $(\infty,1)$-toposes therefore remains conjectural.
566:  \item the $1$-categorical NNO and its contractibility (\cref{thm:contr-1cat});
567:  \item Lurie's parametrised $(\infty,1)$-NNO (\cref{def:lurie-nno}) and its existence for presentable $\mathcal{E}$ (\cref{thm:exist-pres});
568:  \item Rasekh's circle-construction of an NNO in any elementary $(\infty,1)$-topos (\cref{thm:rasekh});
569:  \item the main contractibility theorem (\cref{thm:main}) showing $\mathrm{NNO}(\mathcal{E})$ is contractible whenever HoTT models in $\mathcal{E}$;

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\begin\\{(equation|align|gather|multline|tikzcd|itemize|enumerate|thebibliography)\\}' -e '\\\\end\\{(equation|align|gather|multline|tikzcd|itemize|enumerate|thebibliography)\\}' -e '\\\\\\[' -e '\\\\\\]' -e 'TODO|todo|includegraphics|\\\\url|\\\\S|\\\\qed|\\\\ldots' papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
40:\newcommand{\Set}{\mathbf{Set}}
61:\newcommand{\Sone}{S^{1}}
67:\newcommand{\Spc}{\mathcal{S}}
73:\newcommand{\Sigmatype}{\Sigma}
109:\texttt{research@yonedaai.org} $\cdot$ \url{https://yonedaai.org}}
119:\[
120:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s)
121:\]
124:This paper studies the external $\infty$-categorical analogue: contractibility of the space of $(\infty,1)$-NNO structures in a presentable or elementary $(\infty,1)$-topos. We compare three definitions, the parametrised NNO of Lurie (Higher Topos Theory, \S6), the elementary NNO recovered from Rasekh's circle-construction (TAC 37(13):337--377, 2021), and the HoTT-native dependently-typed NNO. We prove that under mild assumptions all three agree, and that the space $\mathrm{NNO}(\mathcal{E})$ of NNO structures is a contractible Kan complex. We highlight the higher-coherence obstacles---tower of homotopies witnessing uniqueness of recursion---and explain how HoTT's contractibility theorem absorbs the entire tower at once. We close with a survey of open problems on synthetic approaches via simplicial type theory.
135:The natural numbers object (NNO) is among the most basic universal constructions of categorical logic. Lawvere's 1964 axiomatisation of the elementary theory of the category of sets (ETCS) treats the NNO as an irreducible primitive on equal footing with the terminal object, the subobject classifier, and exponentials. In any cartesian closed category $\mathcal{C}$ with a terminal object $\mathbf{1}$, an NNO is a triple $(N, 0\colon \mathbf{1}\to N, s\colon N\to N)$ such that for every $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$ there exists a unique morphism $h\colon N\to X$ with $h\circ 0 = x_{0}$ and $h\circ s = f\circ h$. Two NNOs are related by a unique isomorphism; the automorphism group of an NNO is trivial. In $\Set$ the NNO is the von Neumann set $\omega = \{0,1,2,\ldots\}$ with successor; up to canonical isomorphism, ``the natural numbers'' is a property, not a choice of structure.
138:\[
139:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
140:\]
141:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
145:The aim of this paper is to make this transfer rigorous, and to compare it with the two existing definitions of $(\infty,1)$-NNO available in the literature: Lurie's parametrised NNO~\cite{LurieHTT, LurieSAG}, formulated for presentable $(\infty,1)$-toposes via a small-colimit-preserving recursion principle, and Rasekh's NNO~\cite{Rasekh2021}, which lives in any elementary $(\infty,1)$-topos and is constructed from the loop space of $\Sone$. The first is convenient when one has Giraud-style axioms; the second is intrinsic to the elementary axiomatic and was the missing piece to certify that elementary $(\infty,1)$-toposes are indeed natural homes for arithmetic.
149:\begin{enumerate}
150:  \item We give a self-contained statement of contractibility of the type of NNOs in HoTT (\S\ref{sec:background}, \cref{thm:contr-1cat}), recall Lambek's theorem at the $1$-categorical level, and explain how rigidity at this level becomes contractibility once one moves from sets-of-iso-classes to $\infty$-groupoids.
151:  \item We give a precise account of Lurie's parametrised NNO (\S\ref{sec:lurie}, \cref{def:lurie-nno}, \cref{thm:lurie-nno-equiv}) and prove its equivalence with the $1$-categorical NNO when $\mathcal{E}$ is the underlying $(2,1)$-category of a $1$-topos.
152:  \item We formalise the higher coherence problem (\S\ref{sec:higher-coh}, \cref{prop:tower}) as the requirement that, for each $n\geq 0$, the comparison maps between two NNOs are coherent up to $n$-homotopy.
153:  \item We prove our main theorem (\S\ref{sec:main}, \cref{thm:contractibility-infty}): in any $(\infty,1)$-topos $\mathcal{E}$ that admits a HoTT model, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
154:  \item We compare with Rasekh's circle-construction (\S\ref{sec:rasekh}) and exhibit the natural map identifying the two NNOs.
155:  \item We discuss synthetic approaches via Riehl--Shulman simplicial type theory (\S\ref{sec:stt}) and list open problems (\S\ref{sec:open}).
156:\end{enumerate}
160:\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
164:We use $\Cati$ for the $(\infty,2)$-category of $(\infty,1)$-categories and $\Spc$ for the $(\infty,1)$-category of $\infty$-groupoids (``spaces''). For an $(\infty,1)$-category $\mathcal{C}$, $\Map_{\mathcal{C}}(X,Y)\in\Spc$ denotes the mapping space. We write $\mathbf{1}$ for a terminal object. Throughout, ``HoTT'' refers to Martin-L\"of type theory with $\Sigmatype$, $\Pitype$, identity types, finite coproducts, the natural numbers type, function extensionality, and the univalence axiom for at least one hierarchy of universes.
196:\[
198:\]
200:\[
202:\]
208:\[
209:\begin{tikzcd}[column sep=large, row sep=large]
212:\end{tikzcd}
213:\]
225:In $\Set$, the NNO is $(\N,0,\mathrm{succ})$. By \cref{lem:rigid} the groupoid of NNOs in $\Set$ has trivial automorphisms and a unique morphism between any two objects: it is a contractible groupoid, equivalently a $(-2)$-truncated space.
240:\[
241:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
242:\]
244:\[
245:\mathsf{isInitial}(X,x_{0},s) \;\coloneqq\; \Pitype_{(Y,y_{0},f):\PtEndo(\U)}\,\isContr\!\bigl(\Sigmatype_{h:X\to Y}(h\,x_{0}=y_{0})\times\Pitype_{x:X}(h(s\,x)=f(h\,x))\bigr).
246:\]
249:Note that $\mathsf{isInitial}(X,x_{0},s)$ is, by construction, an iterated $\Pitype$-type whose body is $\isContr$ of a $\Sigmatype$-type; since $\isContr$ is a (mere) proposition and $\Pitype$ of propositions is a proposition, $\mathsf{isInitial}$ is a proposition.
259:\[
260:\Sigmatype_{h\colon \N\to Y}(h\,\zero=y_{0})\times\Pitype_{n:\N}(h(\suc\,n)=f(h\,n))
261:\]
265:\[
267:\]
289:\[
291:\]
296:\[
298:\]
306:When $\mathcal{E}=\Spc$, the NNO is the constant functor at $\N$. Its existence and contractibility of the mapping space is the homotopy-coherent version of the Set-theoretic recursion principle.
325:\[
327:\]
334:\begin{enumerate}
340:\end{enumerate}
348:The circle $\Sone$ exists in any elementary $(\infty,1)$-topos as a higher inductive type (or, more carefully, as the geometric realisation of the simplicial circle). Rasekh shows that the loop space $\Omega\Sone$ has a $\Z$-action and that its connected component of the basepoint (or, in pointed form, the universal cover) functions as an NNO. The argument uses descent, locality, and classification of univalent maps.
352:Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
362:The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space $\Map_{\PtEndo(\mathcal{E}^{(\infty)})}((N,0,s),(X,x_{0},f))$ is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible. \qed
368:\[
369:\begin{tikzcd}[column sep=large, row sep=large]
372:\end{tikzcd}
373:\]
375:\begin{enumerate}
379:\end{enumerate}
383:\[
385:\]
395:\begin{itemize}
398:\end{itemize}
421:\begin{enumerate}
426:\end{enumerate}
432:\emph{Externalisation.} The functor $\mathcal{E}\to \Spc$, $X\mapsto \Map_{\mathcal{E}}(\mathbf{1},X)$, is the global-sections functor. It preserves limits and (since $\mathbf{1}$ is the unit of the model) takes the internal type $\NNO$ to the external $\infty$-groupoid $\mathrm{NNO}(\mathcal{E})$. Internal contractibility of $\NNO$ in the HoTT model is the global element of $\isContr(\NNO)$, which under externalisation becomes a global point of $\Map_{\mathcal{E}}(\mathbf{1},\isContr\,\NNO)\eqv\isContr(\mathrm{NNO}(\mathcal{E}))$, witnessing that $\mathrm{NNO}(\mathcal{E})$ is contractible in $\Spc$. (For a detailed account of the internal-to-external transfer of contractibility statements, see~\cite{KapulkinLumsdaine}.)
441:\begin{itemize}
445:  \item $\ldots$
446:\end{itemize}
453:Let $\mathcal{E}$ be an elementary $(\infty,1)$-topos. The NNO constructed by Rasekh from the loop space of $\Sone$ coincides, up to a contractible space of equivalences, with any presentation-based $(\infty,1)$-NNO in the sense of \cref{def:lurie-nno} (when both are defined).
464:\subsection{The role of $\Sone$}
466:In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
469:$\Omega\Sone\eqv\Z$ in any elementary $(\infty,1)$-topos $\mathcal{E}$, where $\Z$ is the group object obtained from the type of integers in $\mathcal{E}$.
473:Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration $\mathrm{code}\colon \Sone\to \U$ with $\mathrm{code}(\base)\eqv\Z$ and the loop acting as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
482:In a $1$-topos $\mathcal{E}_{1}$, every type is $0$-truncated, so $\Omega\Sone = \Sone\times_{\Sone}\Sone$ is the singleton (a single point with no nontrivial loops, since paths don't exist). The encode--decode argument collapses, and we cannot recover $\Z$ or $\N$ this way. The $\infty$-categorical setting is therefore not just a technical generalisation: it makes essentially new constructions possible.
503:\[
504:\NNO_{\mathrm{dir}} \;\coloneqq\; \Sigmatype_{X}\,\Sigmatype_{x_{0}\colon \mathbf{1}\to X}\,\Sigmatype_{s\colon X\to X}\,\mathsf{isInitial}_{\mathrm{dir}}(X,x_{0},s),
505:\]
514:\begin{itemize}
518:\end{itemize}
524:\begin{enumerate}
532:\end{enumerate}
543:\begin{enumerate}
545:  \item \textbf{Real numbers HIIT}: built on $\N$ (Paper~V \S5).
549:\end{enumerate}
554:\begin{itemize}
558:\end{itemize}
565:\begin{itemize}
571:\end{itemize}
579:\begin{thebibliography}{99}
583:\bibitem{LurieSAG} J.~Lurie, \emph{Spectral Algebraic Geometry}, manuscript, February 2018. \url{https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf}.
591:\bibitem{HoTTBook} The Univalent Foundations Program, \emph{Homotopy Type Theory: Univalent Foundations of Mathematics}, Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book/}.
609:\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011. \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
613:\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010. \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
615:\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008. \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
631:\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos}. \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
633:\bibitem{nLabNNO} The nLab, \emph{natural numbers object}. \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
635:\end{thebibliography}

exec
/usr/local/bin/zsh -lc "rm -rf /tmp/infinity-nno-review-shim && mkdir -p /tmp/infinity-nno-review-shim && pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-shim '\\newcommand{\\coloneqq}{\\mathrel{\\mathop:}=}\\input{papers/latex/infinity-nno.tex}' ; pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-shim '\\newcommand{\\coloneqq}{\\mathrel{\\mathop:}=}\\input{papers/latex/infinity-nno.tex}'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 1006ms:
)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsbsy.sty)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsmath/amsopn.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amssymb.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/amsfonts.sty))
(/usr/local/texlive/2026/texmf-dist/tex/latex/amscls/amsthm.sty)
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
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

No file infinity-nno.aux.
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

LaTeX Warning: Reference `sec:background' on page 2 undefined on input line 141
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 141
.


LaTeX Warning: Citation `Shulman2019' on page 2 undefined on input line 143.


LaTeX Warning: Citation `LurieHTT' on page 2 undefined on input line 145.


LaTeX Warning: Citation `LurieSAG' on page 2 undefined on input line 145.


LaTeX Warning: Citation `Rasekh2021' on page 2 undefined on input line 145.


LaTeX Warning: Reference `sec:background' on page 2 undefined on input line 150
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 150
.

[2]

LaTeX Warning: Reference `sec:lurie' on page 3 undefined on input line 151.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 151.



LaTeX Warning: Reference `thm:lurie-nno-equiv' on page 1 undefined on input lin
e 151.


LaTeX Warning: Reference `sec:higher-coh' on page 3 undefined on input line 152
.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 152.


LaTeX Warning: Reference `sec:main' on page 3 undefined on input line 153.


LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 153.


LaTeX Warning: Reference `sec:rasekh' on page 3 undefined on input line 154.


LaTeX Warning: Reference `sec:stt' on page 3 undefined on input line 155.


LaTeX Warning: Reference `sec:open' on page 3 undefined on input line 155.


LaTeX Warning: Reference `sec:background' on page 1 undefined on input line 160
.


LaTeX Warning: Reference `sec:lurie' on page 1 undefined on input line 160.


LaTeX Warning: Reference `sec:higher-coh' on page 1 undefined on input line 160
.


LaTeX Warning: Reference `sec:main' on page 1 undefined on input line 160.


LaTeX Warning: Reference `sec:rasekh' on page 1 undefined on input line 160.


LaTeX Warning: Reference `sec:stt' on page 1 undefined on input line 160.


LaTeX Warning: Reference `sec:open' on page 1 undefined on input line 160.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 170.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 170.

[3]

LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 225.

[4]

LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 232.


LaTeX Warning: Citation `PaperIII' on page 5 undefined on input line 237.


LaTeX Warning: Citation `PaperV' on page 5 undefined on input line 237.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 237.


LaTeX Warning: Citation `PaperIII' on page 5 undefined on input line 251.


LaTeX Warning: Citation `PaperV' on page 5 undefined on input line 251.


LaTeX Warning: Citation `HoTTBook' on page 5 undefined on input line 258.

[5]

LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 274
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 278
.


LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 278
.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 281.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 281.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 281.


LaTeX Warning: Reference `def:nno' on page 1 undefined on input line 283.

[6]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 331.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 331.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 331.


LaTeX Warning: Citation `Rasekh2018ETop' on page 7 undefined on input line 333.



Overfull \hbox (1.13875pt too wide) in paragraph at lines 333--334
\OT1/cmr/m/n/12 A more del-i-cate ques-tion is whether ev-ery \OT1/cmr/m/it/12 
el-e-men-tary $\OT1/cmr/m/n/12 (\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m
/n/12 1)$-topos (in the sense of Rasekh [[]])
[7]

LaTeX Warning: Citation `Rasekh2021' on page 8 undefined on input line 343.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 358.



LaTeX Warning: Reference `def:ptendo' on page 1 undefined on input line 362.


Overfull \hbox (111.58994pt too wide) in paragraph at lines 362--363
[]\OT1/cmr/m/n/12 The map-ping spaces in $\OMS/cmsy/m/n/12 E[]$ \OT1/cmr/m/n/12
 are $0$-truncated (sets). The map-ping space $[][]((\OML/cmm/m/it/12 N; \OT1/c
mr/m/n/12 0\OML/cmm/m/it/12 ; s\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 ; \OT1/cmr/m/n
/12 (\OML/cmm/m/it/12 X; x[]; f\OT1/cmr/m/n/12 ))$
[8]

LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 394.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 401.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 401.


LaTeX Warning: Reference `lem:rigid' on page 1 undefined on input line 410.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 410.


LaTeX Warning: Reference `prop:tower' on page 1 undefined on input line 410.

[9]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 413.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 413.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 413.


LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 417.


LaTeX Warning: Citation `Shulman2019' on page 10 undefined on input line 420.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 422.



LaTeX Warning: Reference `def:nno-type' on page 1 undefined on input line 430.


LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 430
.


LaTeX Warning: Citation `KapulkinLumsdaine' on page 10 undefined on input line 
432.


LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 434
.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 434.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 440.

[10]

LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 447.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 453.



LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 457.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 457.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 457.



Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 464.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `superscript' on input line 464.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 464.


LaTeX Warning: Citation `LicataShulman' on page 11 undefined on input line 473.



Overfull \hbox (9.0283pt too wide) in paragraph at lines 473--474
[]\OT1/cmr/m/n/12 Use the encode--decode method (Licata--Shulman [[]]) to con-s
truct a fi-bra-tion $[] [] [] \OML/cmm/m/it/12 S[] \OMS/cmsy/m/n/12 !

LaTeX Warning: Reference `thm:rasekh-hott' on page 1 undefined on input line 47
7.


LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 477
.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 480.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 480.

[11]

LaTeX Warning: Reference `thm:rasekh-hott' on page 1 undefined on input line 49
3.


LaTeX Warning: Citation `RiehlShulman2017' on page 12 undefined on input line 4
98.


LaTeX Warning: Citation `GWB2024' on page 12 undefined on input line 506.


LaTeX Warning: Citation `GWB2024' on page 12 undefined on input line 509.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 509.


LaTeX Warning: Citation `Shulman2019' on page 12 undefined on input line 515.


LaTeX Warning: Citation `RiehlShulman2017' on page 12 undefined on input line 5
16.


LaTeX Warning: Citation `SchreiberShulman' on page 12 undefined on input line 5
17.


Overfull \hbox (22.43869pt too wide) in paragraph at lines 517--518
[]\OT1/cmr/m/n/12 Cohesive HoTT: dif-fer-en-tial and ge-o-met-ric am-bi-ent $(\
OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/12 1)$-toposes (Schreiber--Shu
lman [[]]). 

LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 525.

[12]

LaTeX Warning: Reference `thm:contractibility-infty' on page 1 undefined on inp
ut line 526.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 530.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 531.


LaTeX Warning: Citation `Benacerraf1965' on page 13 undefined on input line 538
.

[13]

LaTeX Warning: Reference `thm:contr-hott' on page 1 undefined on input line 555
.


LaTeX Warning: Reference `thm:contr-1cat' on page 1 undefined on input line 566
.


LaTeX Warning: Reference `def:lurie-nno' on page 1 undefined on input line 567.



LaTeX Warning: Reference `thm:exist-pres' on page 1 undefined on input line 567
.


LaTeX Warning: Reference `thm:rasekh' on page 1 undefined on input line 568.


LaTeX Warning: Reference `thm:main' on page 1 undefined on input line 569.

[14]
Underfull \hbox (badness 4518) in paragraph at lines 613--614
[]\OT1/cmr/m/n/12 C. Rezk, \OT1/cmr/m/it/12 Toposes and ho-mo-topy toposes\OT1/
cmr/m/n/12 , lec-ture notes, Uni-ver-sity of Illi-

Underfull \hbox (badness 1253) in paragraph at lines 613--614
\OT1/cmr/m/n/12 nois at Urbana--Champaign, 2010. [][]$\OT1/cmtt/m/n/12 https : 
/ / faculty . math . illinois . edu / []rezk /
[15]
Underfull \hbox (badness 2744) in paragraph at lines 633--634
[]\OT1/cmr/m/n/12 The nLab, \OT1/cmr/m/it/12 nat-u-ral num-bers ob-ject\OT1/cmr
/m/n/12 . [][]$\OT1/cmtt/m/n/12 https : / / ncatlab . org / nlab / show / natur
al +
[16] (/tmp/infinity-nno-review-shim/infinity-nno.aux)

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
Output written on /tmp/infinity-nno-review-shim/infinity-nno.pdf (16 pages, 343
149 bytes).
Transcript written on /tmp/infinity-nno-review-shim/infinity-nno.log.
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
(./papers/latex/infinity-nno.tex
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
(/usr/local/texlive/2026/texmf-dist/tex/latex/graphics/keyval.sty)
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
 (/tmp/infinity-nno-review-shim/infinity-nno.aux)
(/usr/local/texlive/2026/texmf-dist/tex/context/base/mkii/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2026/texmf-dist/tex/latex/epstopdf-pkg/epstopdf-base.sty
(/usr/local/texlive/2026/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
(/tmp/infinity-nno-review-shim/infinity-nno.out)
(/tmp/infinity-nno-review-shim/infinity-nno.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/tmp/infinity-nno-review-shim/infinity-nno.toc [1{/usr/local/texlive/2026/texm
f-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/local/texlive/2026/texmf-dist/fo
nts/enc/dvips/cm-super/cm-super-ts1.enc}]) [2] [3]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 170.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 170.

[4] [5] [6]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 281.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 281.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 281.

[7]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 331.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 331.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 331.


Overfull \hbox (0.63869pt too wide) in paragraph at lines 333--334
\OT1/cmr/m/n/12 A more del-i-cate ques-tion is whether ev-ery \OT1/cmr/m/it/12 
el-e-men-tary $\OT1/cmr/m/n/12 (\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m
/n/12 1)$-topos (in the sense of Rasekh [[]])
[8]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Overfull \hbox (111.58994pt too wide) in paragraph at lines 362--363
[]\OT1/cmr/m/n/12 The map-ping spaces in $\OMS/cmsy/m/n/12 E[]$ \OT1/cmr/m/n/12
 are $0$-truncated (sets). The map-ping space $[][]((\OML/cmm/m/it/12 N; \OT1/c
mr/m/n/12 0\OML/cmm/m/it/12 ; s\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 ; \OT1/cmr/m/n
/12 (\OML/cmm/m/it/12 X; x[]; f\OT1/cmr/m/n/12 ))$
[9]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 401.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 401.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 413.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 413.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 413.

[10] [11]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 464.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `superscript' on input line 464.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 464.


Overfull \hbox (8.52824pt too wide) in paragraph at lines 473--474
[]\OT1/cmr/m/n/12 Use the encode--decode method (Licata--Shulman [[]]) to con-s
truct a fi-bra-tion $[] [] [] \OML/cmm/m/it/12 S[] \OMS/cmsy/m/n/12 !

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 480.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 480.

[12]
Overfull \hbox (27.81357pt too wide) in paragraph at lines 517--518
[]\OT1/cmr/m/n/12 Cohesive HoTT: dif-fer-en-tial and ge-o-met-ric am-bi-ent $(\
OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/12 1)$-toposes (Schreiber--Shu
lman [[]]). 

Overfull \hbox (3.25813pt too wide) in paragraph at lines 526--527
\OT1/cmr/m/n/12 toposes with-out in-vok-ing Shul-man's the-o-rem (which is cur-
rently stated for Grothendieck

Overfull \hbox (15.34981pt too wide) in paragraph at lines 531--532
\OT1/cmr/m/n/12 metic the-o-rems (as-so-cia-tiv-ity of $+$, com-mu-ta-tiv-ity, 
dis-tribu-tiv-ity) at the $(\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m/n/1
2 1)$-categorical
[13] [14] [15]
Underfull \hbox (badness 4518) in paragraph at lines 613--614
[]\OT1/cmr/m/n/12 C. Rezk, \OT1/cmr/m/it/12 Toposes and ho-mo-topy toposes\OT1/
cmr/m/n/12 , lec-ture notes, Uni-ver-sity of Illi-

Underfull \hbox (badness 1253) in paragraph at lines 613--614
\OT1/cmr/m/n/12 nois at Urbana--Champaign, 2010. [][]$\OT1/cmtt/m/n/12 https : 
/ / faculty . math . illinois . edu / []rezk /
[16]
Underfull \hbox (badness 2744) in paragraph at lines 633--634
[]\OT1/cmr/m/n/12 The nLab, \OT1/cmr/m/it/12 nat-u-ral num-bers ob-ject\OT1/cmr
/m/n/12 . [][]$\OT1/cmtt/m/n/12 https : / / ncatlab . org / nlab / show / natur
al +
[17] (/tmp/infinity-nno-review-shim/infinity-nno.aux)

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
Output written on /tmp/infinity-nno-review-shim/infinity-nno.pdf (17 pages, 352
513 bytes).
Transcript written on /tmp/infinity-nno-review-shim/infinity-nno.log.

exec
/usr/local/bin/zsh -lc "rg -n -e '\\\\coloneqq' -e '\\\\vcentcolon' -e '\\\\DeclareMathOperator' -e '\\\\operatorname' -e '\\\\mathsf\\{isInitial\\}' papers/latex/infinity-nno.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
120:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s)
139:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
141:where $\mathsf{isInitial}(X,x_{0},s)$ denotes the proposition that $(X,x_{0},s)$ is initial in the type-theoretic category of pointed dynamical systems. Theorem~2.7 of Paper~III\footnote{Throughout, ``Paper III'', ``Paper V'', etc.\ refer to companion papers in the present author's series \emph{The Univalent Correspondence}, cited in the bibliography. The relevant statements and proofs are reproduced inline in this paper.} (which we recapitulate in \S\ref{sec:background} as \cref{thm:contr-1cat}) and Theorem~4.4 of Paper~V state that $\NNO$ is contractible---a $(-2)$-type. The centre of contraction is $(\N,\zero,\suc,\star)$ where $\N$ is the inductive type of natural numbers and $\star$ is the canonical proof of initiality. Crucially, contractibility is strictly stronger than ``unique up to unique iso'': it asserts that every two NNOs are connected by a path (an equivalence, by univalence), and that every two such paths are themselves connected by a $2$-path, ad infinitum.
241:\NNO \;\coloneqq\; \Sigmatype_{X:\U}\,\Sigmatype_{x_{0}:X}\,\Sigmatype_{s:X\to X}\,\mathsf{isInitial}(X,x_{0},s),
245:\mathsf{isInitial}(X,x_{0},s) \;\coloneqq\; \Pitype_{(Y,y_{0},f):\PtEndo(\U)}\,\isContr\!\bigl(\Sigmatype_{h:X\to Y}(h\,x_{0}=y_{0})\times\Pitype_{x:X}(h(s\,x)=f(h\,x))\bigr).
249:Note that $\mathsf{isInitial}(X,x_{0},s)$ is, by construction, an iterated $\Pitype$-type whose body is $\isContr$ of a $\Sigmatype$-type; since $\isContr$ is a (mere) proposition and $\Pitype$ of propositions is a proposition, $\mathsf{isInitial}$ is a proposition.
258:\emph{Centre.} Take $c=(\N,\zero,\suc,\star)$. The proof $\star\colon \mathsf{isInitial}(\N,\zero,\suc)$ is constructed as follows. Given $(Y,y_{0},f)$, define $h\coloneqq \rec_{\N}\,y_{0}\,f\colon \N\to Y$. By the computation rules of the recursor we have judgmentally $h(\zero)\equiv y_{0}$ and $h(\suc\,n)\equiv f(h\,n)$, so the equations are witnessed by $\refl$. Uniqueness: if $h'\colon \N\to Y$ also satisfies $h'\,\zero = y_{0}$ and $\Pitype_{n:\N}\,h'(\suc\,n)=f(h'\,n)$, dependent induction $\ind_{\N}$ on the type-family $P(n)\coloneqq (h\,n=h'\,n)$ produces a homotopy $h\sim h'$. By function extensionality (provable from univalence~\cite{HoTTBook}), $h=h'$. Combining existence and uniqueness, the type
268:Apply $\iota$ to the pointed system $(\N,\zero,\suc)$: it yields a contractible type whose centre is a unique map $u\colon X\to \N$ with $u\,x_{0}=\zero$ and $u\circ s\sim \suc\circ u$. Apply $\star$ to $(X,x_{0},s)$: a unique map $v\colon \N\to X$ with $v\,\zero=x_{0}$ and $v\circ \suc\sim s\circ v$. The composites $u\circ v\colon \N\to\N$ and $\id_{\N}$ both satisfy the universal-property equations for $(\N,\zero,\suc,\star)$; uniqueness inside the contractible type of recursors forces $u\circ v=\id_{\N}$ via $\ind_{\N}$, and likewise $v\circ u=\id_{X}$ via $\iota$. Thus $u\colon X\eqv\N$ is an equivalence (with quasi-inverse $v$). Univalence ($\ua$) converts the equivalence into a path $p_{1}\colon X = \N$ in $\U$. Transporting $(x_{0},s,\iota)$ along $p_{1}$ produces $(\zero,\suc,\star')$ for some witness $\star'\colon \mathsf{isInitial}(\N,\zero,\suc)$. Since $\mathsf{isInitial}$ is a proposition, $\star'=\star$. Pairing yields the required path $p$ in $\NNO$.
297:\PtEndo(\mathcal{E}) \;\coloneqq\; \mathcal{E}_{\mathbf{1}/}\;\times_{\mathcal{E}}\; \mathcal{E}^{[1]}
384:M \;\coloneqq\; \Map_{\PtEndo(\mathcal{E})}\bigl((N_{1},0_{1},s_{1}),(N_{2},0_{2},s_{2})\bigr)
466:In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
504:\NNO_{\mathrm{dir}} \;\coloneqq\; \Sigmatype_{X}\,\Sigmatype_{x_{0}\colon \mathbf{1}\to X}\,\Sigmatype_{s\colon X\to X}\,\mathsf{isInitial}_{\mathrm{dir}}(X,x_{0},s),
506:where $\mathsf{isInitial}_{\mathrm{dir}}$ uses directed mapping spaces. The contractibility of $\NNO_{\mathrm{dir}}$ should follow once the universe is shown to be Rezk-complete in STT---a property partially proved by Gratzer--Weinberger--Buchholtz~\cite{GWB2024} for the universe of discrete types.

exec
/usr/local/bin/zsh -lc "pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-shim '\\newcommand{\\coloneqq}{\\mathrel{\\mathop:}=}\\input{papers/latex/infinity-nno.tex}' >/tmp/infinity-nno-review-shim/run3.out 2>&1; printf 'exit=%s\\n' "'$?; rg -n -e '"'Undefined control sequence|LaTeX Error|Warning: Citation|Warning: Reference|undefined references|Rerun|Overfull|Underfull|Token not allowed|everypage Warning|Label\\(s\\)' /tmp/infinity-nno-review-shim/infinity-nno.log /tmp/infinity-nno-review-shim/run3.out" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc 'kpsewhich mathtools.sty && kpsewhich everypage.sty && kpsewhich everypage-1x.sty' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 175ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/everypage/everypage-1x.sty

 succeeded in 512ms:
exit=0
/tmp/infinity-nno-review-shim/run3.out:172:Package everypage Warning: Functionality similar to this package has recently
/tmp/infinity-nno-review-shim/run3.out:178:Package everypage Warning: You appear to be running a version of LaTeX
/tmp/infinity-nno-review-shim/run3.out:202:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:206:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:211:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:215:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:219:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:224:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:228:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:232:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:236:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:240:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:244:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:248:Overfull \hbox (0.63869pt too wide) in paragraph at lines 333--334
/tmp/infinity-nno-review-shim/run3.out:254:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:258:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:262:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:266:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:270:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:274:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:278:Overfull \hbox (111.58994pt too wide) in paragraph at lines 362--363
/tmp/infinity-nno-review-shim/run3.out:285:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:289:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:293:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:297:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:301:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:306:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:310:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:314:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:318:Overfull \hbox (8.52824pt too wide) in paragraph at lines 473--474
/tmp/infinity-nno-review-shim/run3.out:322:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:326:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/run3.out:330:Overfull \hbox (27.81357pt too wide) in paragraph at lines 517--518
/tmp/infinity-nno-review-shim/run3.out:335:Overfull \hbox (3.25813pt too wide) in paragraph at lines 526--527
/tmp/infinity-nno-review-shim/run3.out:339:Overfull \hbox (15.34981pt too wide) in paragraph at lines 531--532
/tmp/infinity-nno-review-shim/run3.out:344:Underfull \hbox (badness 4518) in paragraph at lines 613--614
/tmp/infinity-nno-review-shim/run3.out:348:Underfull \hbox (badness 1253) in paragraph at lines 613--614
/tmp/infinity-nno-review-shim/run3.out:352:Underfull \hbox (badness 2744) in paragraph at lines 633--634
/tmp/infinity-nno-review-shim/infinity-nno.log:574:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)
/tmp/infinity-nno-review-shim/infinity-nno.log:622:Package everypage Warning: Functionality similar to this package has recently
/tmp/infinity-nno-review-shim/infinity-nno.log:628:Package everypage Warning: You appear to be running a version of LaTeX
/tmp/infinity-nno-review-shim/infinity-nno.log:749:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:753:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:758:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:762:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:766:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:771:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:775:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:779:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:783:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:787:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:791:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:795:Overfull \hbox (0.63869pt too wide) in paragraph at lines 333--334
/tmp/infinity-nno-review-shim/infinity-nno.log:803:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:807:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:811:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:815:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:819:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:823:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:827:Overfull \hbox (111.58994pt too wide) in paragraph at lines 362--363
/tmp/infinity-nno-review-shim/infinity-nno.log:836:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:840:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:844:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:848:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:852:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:857:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:861:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:865:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:869:Overfull \hbox (8.52824pt too wide) in paragraph at lines 473--474
/tmp/infinity-nno-review-shim/infinity-nno.log:875:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:879:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
/tmp/infinity-nno-review-shim/infinity-nno.log:883:Overfull \hbox (27.81357pt too wide) in paragraph at lines 517--518
/tmp/infinity-nno-review-shim/infinity-nno.log:890:Overfull \hbox (3.25813pt too wide) in paragraph at lines 526--527
/tmp/infinity-nno-review-shim/infinity-nno.log:896:Overfull \hbox (15.34981pt too wide) in paragraph at lines 531--532
/tmp/infinity-nno-review-shim/infinity-nno.log:903:Underfull \hbox (badness 4518) in paragraph at lines 613--614
/tmp/infinity-nno-review-shim/infinity-nno.log:909:Underfull \hbox (badness 1253) in paragraph at lines 613--614
/tmp/infinity-nno-review-shim/infinity-nno.log:915:Underfull \hbox (badness 2744) in paragraph at lines 633--634

codex
With only `\coloneqq` supplied, references and citations resolve after reruns, so the broken-reference category looks clean. The remaining diagnostics are package warnings, PDF bookmark math warnings, and several box warnings.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/infinity-nno.tex | sed -n '160,180p;276,286p;312,336p;352,364p;396,416p;460,484p;512,534p;608,636p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   160	\Cref{sec:background} reviews the $1$-categorical NNO, Lambek's theorem, and the contractibility result of Paper~III/V. \Cref{sec:lurie} introduces Lurie's parametrised NNO and Rasekh's elementary $(\infty,1)$-NNO. \Cref{sec:higher-coh} formalises the higher-coherence tower. \Cref{sec:main} contains the main contractibility theorem. \Cref{sec:rasekh} relates the construction to the loop-space-of-$\Sone$ approach. \Cref{sec:stt} discusses synthetic approaches. \Cref{sec:open} closes with open problems.
   161	
   162	\subsection*{Conventions}
   163	
   164	We use $\Cati$ for the $(\infty,2)$-category of $(\infty,1)$-categories and $\Spc$ for the $(\infty,1)$-category of $\infty$-groupoids (``spaces''). For an $(\infty,1)$-category $\mathcal{C}$, $\Map_{\mathcal{C}}(X,Y)\in\Spc$ denotes the mapping space. We write $\mathbf{1}$ for a terminal object. Throughout, ``HoTT'' refers to Martin-L\"of type theory with $\Sigmatype$, $\Pitype$, identity types, finite coproducts, the natural numbers type, function extensionality, and the univalence axiom for at least one hierarchy of universes.
   165	
   166	\section{Background: 1-categorical NNO and contractibility}\label{sec:background}
   167	
   168	We begin by recalling the classical material in a form that will generalise cleanly to the $\infty$-categorical setting.
   169	
   170	\subsection{Pointed endomorphisms and $1$-NNO}
   171	
   172	\begin{definition}[Pointed dynamical system]\label{def:ptendo}
   173	Let $\mathcal{C}$ be a category with terminal object $\mathbf{1}$. The category $\PtEndo(\mathcal{C})$ has as objects triples $(X, x_{0}\colon \mathbf{1}\to X, f\colon X\to X)$, and morphisms $(X,x_{0},f)\to(Y,y_{0},g)$ are arrows $h\colon X\to Y$ in $\mathcal{C}$ such that $h\circ x_{0}=y_{0}$ and $h\circ f = g\circ h$.
   174	\end{definition}
   175	
   176	\begin{definition}[NNO]\label{def:nno}
   177	A natural numbers object in $\mathcal{C}$ is an initial object of $\PtEndo(\mathcal{C})$.
   178	\end{definition}
   179	
   180	Equivalently, viewing the endofunctor $F\colon \mathcal{C}\to \mathcal{C}$ given by $FX = \mathbf{1}+X$ (when coproducts exist), an NNO is an initial $F$-algebra: a pair $(N,[0,s]\colon \mathbf{1}+N\to N)$ initial in $F\text{-}\mathbf{Alg}$.
   276	
   277	\begin{remark}[Why this is stronger]
   278	\Cref{thm:contr-1cat} says ``unique iso between any two NNOs''. \Cref{thm:contr-hott} says, in addition, that the space of paths between any two equivalences is contractible, the space of $2$-paths is contractible, and so on. In a $1$-category these higher cells are trivially identities; in an $\infty$-category they need to be checked. HoTT performs all of this with one-and-the-same proof, because $\isContr$ is a mere proposition that already absorbs the entire tower.
   279	\end{remark}
   280	
   281	\section{The $(\infty,1)$-categorical NNO}\label{sec:lurie}
   282	
   283	We now lift \cref{def:nno} to $(\infty,1)$-categories. There are two natural lifts: a parametrised one due to Lurie, and an absolute one suitable for elementary $(\infty,1)$-toposes.
   284	
   285	\subsection{Lurie's parametrised NNO}
   286	
   312	
   313	\begin{example}
   314	For $\mathcal{E}=\mathrm{Sh}(X)$ the $(\infty,1)$-topos of sheaves on a topological space $X$, the NNO is the constant sheaf $\underline{\N}$.
   315	\end{example}
   316	
   317	\subsection{Existence in presentable $(\infty,1)$-toposes}
   318	
   319	\begin{theorem}[Existence in presentable case]\label{thm:exist-pres}
   320	Every presentable $(\infty,1)$-topos has an NNO.
   321	\end{theorem}
   322	
   323	\begin{proof}[Sketch]
   324	Presentability ensures small colimits and a small generating set. Build $N$ as the sequential colimit
   325	\[
   326	N \;=\; \colim\bigl(\mathbf{1}\xrightarrow{j_{0}}\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{1}}\mathbf{1}\sqcup\mathbf{1}\sqcup\mathbf{1}\xrightarrow{j_{2}}\cdots\bigr),
   327	\]
   328	where $j_{n}$ adds a new copy of $\mathbf{1}$. Equivalently, $N=\bigsqcup_{n\geq 0}\mathbf{1}$. Verification of the universal property uses the universal property of sequential colimits and contractibility of the relevant mapping spaces.
   329	\end{proof}
   330	
   331	\subsection{Elementary $(\infty,1)$-toposes and Rasekh's NNO}
   332	
   333	A more delicate question is whether every \emph{elementary} $(\infty,1)$-topos (in the sense of Rasekh~\cite{Rasekh2018ETop}) has an NNO. Elementary $(\infty,1)$-toposes are axiomatised by:
   334	\begin{enumerate}
   335	  \item finite limits,
   336	  \item locally cartesian closure,
   352	Rasekh's proof is striking because it derives a discrete, $0$-truncated, NNO from a manifestly $1$-truncated object, $\Sone$, via genuinely $\infty$-categorical machinery. There is no $1$-categorical analogue: $\Omega\Sone$ in the $1$-topos of sets is a singleton.
   353	\end{remark}
   354	
   355	\subsection{Equivalence with the $1$-NNO when $\mathcal{E}$ is a $1$-topos}
   356	
   357	\begin{theorem}[Comparison]\label{thm:lurie-nno-equiv}
   358	Let $\mathcal{E}$ be a $1$-topos with NNO $(N,0,s)$, and let $\mathcal{E}^{(\infty)}$ be its embedding as a $(2,1)$-category, viewed as an $(\infty,1)$-category. Then $(N,0,s)$ is an $(\infty,1)$-NNO of $\mathcal{E}^{(\infty)}$ in the sense of \cref{def:lurie-nno}.
   359	\end{theorem}
   360	
   361	\begin{proof}
   362	The mapping spaces in $\mathcal{E}^{(\infty)}$ are $0$-truncated (sets). The mapping space $\Map_{\PtEndo(\mathcal{E}^{(\infty)})}((N,0,s),(X,x_{0},f))$ is therefore a set, and is the hom-set of \cref{def:ptendo}. By the universal property in $\mathcal{E}$, this set has exactly one element, hence is contractible. \qed
   363	\end{proof}
   364	
   396	  \item $\pi_{0}M = *$: existence and uniqueness up to homotopy of the comparison map;
   397	  \item $\pi_{n}M = 0$ for all $n\geq 1$: triviality of all higher loop spaces, i.e.\ the entire tower of compatibilities.
   398	\end{itemize}
   399	\end{remark}
   400	
   401	\subsection{Truncation level of $\mathrm{NNO}(\mathcal{E})$}
   402	
   403	Define $\mathrm{NNO}(\mathcal{E})$ as the full subspace of the $\infty$-groupoid $\PtEndo(\mathcal{E})^{\eqv}$ (the maximal sub-$\infty$-groupoid of $\PtEndo(\mathcal{E})$) on objects that are initial.
   404	
   405	\begin{theorem}[Contractibility of the $\infty$-NNO space]\label{thm:contractibility-infty}
   406	For any $(\infty,1)$-topos $\mathcal{E}$ in which an NNO exists, the space $\mathrm{NNO}(\mathcal{E})$ is contractible.
   407	\end{theorem}
   408	
   409	\begin{proof}
   410	The full sub-$\infty$-groupoid of an $(\infty,1)$-category on the initial objects is either empty or contractible: this is the $\infty$-categorical analogue of \cref{lem:rigid}. Spelling this out: given any two initial objects $I_{1},I_{2}\in\PtEndo(\mathcal{E})$, the mapping space $\Map(I_{1},I_{2})$ is contractible by \cref{prop:tower}; in particular it is inhabited, so the sub-$\infty$-groupoid of initial objects is connected. The automorphism space $\Map(I,I)$ of any initial object $I$ is also contractible (apply \cref{prop:tower} with $I_{1}=I_{2}=I$), which forces all loop spaces $\Omega^{n}\Map(I,I)$ to be contractible, hence trivial. A connected $\infty$-groupoid with trivial loop spaces is, by Whitehead's theorem, contractible.
   411	\end{proof}
   412	
   413	\section{The main theorem: contractibility for $(\infty,1)$-NNOs}\label{sec:main}
   414	
   415	\subsection{Statement and proof}
   416	
   460	\section{Rasekh's circle-construction of the NNO}\label{sec:rasekh}
   461	
   462	We now sharpen the discussion of Rasekh's circle-construction.
   463	
   464	\subsection{The role of $\Sone$}
   465	
   466	In an elementary $(\infty,1)$-topos $\mathcal{E}$, the circle $\Sone$ is the higher inductive type generated by a point $\base\colon \mathbf{1}\to \Sone$ and a loop $\looppath\colon \base = \base$. (One must check that $\mathcal{E}$ admits this HIT. Rasekh shows the relevant pushout exists using descent.) The loop space $\Omega\Sone\coloneqq\base\times_{\Sone}\base$ is a group object in $\mathcal{E}$ in the homotopical sense.
   467	
   468	\begin{theorem}[Rasekh, in HoTT form]\label{thm:rasekh-hott}
   469	$\Omega\Sone\eqv\Z$ in any elementary $(\infty,1)$-topos $\mathcal{E}$, where $\Z$ is the group object obtained from the type of integers in $\mathcal{E}$.
   470	\end{theorem}
   471	
   472	\begin{proof}[Idea]
   473	Use the encode--decode method (Licata--Shulman~\cite{LicataShulman}) to construct a fibration $\mathrm{code}\colon \Sone\to \U$ with $\mathrm{code}(\base)\eqv\Z$ and the loop acting as the successor equivalence $\Z\eqv\Z$. The total space of $\mathrm{code}$ is contractible, and the fibre over $\base$ is $\Z$.
   474	\end{proof}
   475	
   476	\begin{remark}[Recovery of $\N$ from $\Z$]
   477	Once $\Z$ is constructed in $\mathcal{E}$ (via \cref{thm:rasekh-hott}), $\N$ is obtained as the subobject of non-negative integers, which is isomorphic to the colimit construction in \cref{thm:exist-pres}. The key point is that elementary $(\infty,1)$-toposes have enough structure---specifically, locally cartesian closure plus a univalent universe---to internalise this construction.
   478	\end{remark}
   479	
   480	\subsection{Why this fails in $1$-topos theory}
   481	
   482	In a $1$-topos $\mathcal{E}_{1}$, every type is $0$-truncated, so $\Omega\Sone = \Sone\times_{\Sone}\Sone$ is the singleton (a single point with no nontrivial loops, since paths don't exist). The encode--decode argument collapses, and we cannot recover $\Z$ or $\N$ this way. The $\infty$-categorical setting is therefore not just a technical generalisation: it makes essentially new constructions possible.
   483	
   484	\subsection{Power objects vs object classifier}
   512	\subsection{Comparing internal language flavours}
   513	
   514	\begin{itemize}
   515	  \item HoTT internal language: $(\infty,1)$-toposes (after Shulman~\cite{Shulman2019}); types are $\infty$-groupoids.
   516	  \item STT internal language: $(\infty,1)$-categories (after Riehl--Shulman~\cite{RiehlShulman2017}); types are general $(\infty,1)$-spaces.
   517	  \item Cohesive HoTT: differential and geometric ambient $(\infty,1)$-toposes (Schreiber--Shulman~\cite{SchreiberShulman}).
   518	\end{itemize}
   519	
   520	For the NNO, all three internal languages give equivalent answers when restricted to discrete types, but only the first two have published contractibility theorems.
   521	
   522	\section{Open problems}\label{sec:open}
   523	
   524	\begin{enumerate}
   525	  \item \textbf{Internal-to-external transfer.} Make the externalisation step in the proof of \cref{thm:main} fully precise, including coherent strictification of the internal type $\NNO$ to an external $\infty$-groupoid.
   526	  \item \textbf{Elementary case (Rasekh).} Prove \cref{thm:contractibility-infty} for arbitrary elementary $(\infty,1)$-toposes without invoking Shulman's theorem (which is currently stated for Grothendieck $(\infty,1)$-toposes and conjectured for the elementary case).
   527	  \item \textbf{Synthetic NNO contractibility in STT.} Prove that $\NNO_{\mathrm{dir}}$ is contractible in simplicial type theory using only Rezk-completeness of the universe of discrete types.
   528	  \item \textbf{Course-of-values and primitive recursion in $(\infty,1)$-toposes.} Develop the theory of course-of-values recursion (Paper~III Prop.~6.3) at the $(\infty,1)$-categorical level, including coherent dependent induction.
   529	  \item \textbf{Lurie's parametrised NNO.} Compare the parametrised version (over a base $S\in\mathcal{E}$) with the absolute version studied here, and show that the parametrisation is functorial up to contractible choice.
   530	  \item \textbf{Cubical Agda formalisation.} Formalise \cref{thm:main} in Cubical Agda using the existing development of $(\infty,1)$-toposes-as-models (cf.\ Mortberg--Vezzosi).
   531	  \item \textbf{Univalent foundations of arithmetic.} Use \cref{thm:main} to formalise basic arithmetic theorems (associativity of $+$, commutativity, distributivity) at the $(\infty,1)$-categorical level, with all coherences automatic.
   532	\end{enumerate}
   533	
   534	\section{Discussion}
   608	
   609	\bibitem{Voevodsky2011} V.~Voevodsky, \emph{Univalent foundations}, lecture notes, Institute for Advanced Study, 2011. \url{https://www.math.ias.edu/vladimir/Site3/Univalent_Foundations.html}.
   610	
   611	\bibitem{MartinLof1984} P.~Martin-L\"of, \emph{Intuitionistic Type Theory}, Bibliopolis, Naples, 1984.
   612	
   613	\bibitem{Rezk2010} C.~Rezk, \emph{Toposes and homotopy toposes}, lecture notes, University of Illinois at Urbana--Champaign, 2010. \url{https://faculty.math.illinois.edu/~rezk/homotopy-topos-sketch.pdf}.
   614	
   615	\bibitem{Joyal2008} A.~Joyal, \emph{Notes on quasi-categories}, manuscript, June 2008. \url{https://www.math.uchicago.edu/~may/IMA/Joyal.pdf}.
   616	
   617	\bibitem{Cisinski2019} D.-C.~Cisinski, \emph{Higher Categories and Homotopical Algebra}, Cambridge Studies in Advanced Mathematics, vol.~180, Cambridge University Press, 2019.
   618	
   619	\bibitem{PaperIII} YonedaAI, \emph{The Universal Property Perspective: Numbers as Initial Successor Structures}, Magneton Research Collective, 2026.
   620	
   621	\bibitem{PaperV} YonedaAI, \emph{The HoTT Perspective: Numbers as Inductive Types up to Path Equivalence}, Magneton Research Collective, 2026.
   622	
   623	\bibitem{Synthesis} YonedaAI, \emph{The Univalent Correspondence: Synthesis}, Magneton Research Collective, 2026.
   624	
   625	\bibitem{KapulkinLumsdaine} K.~Kapulkin and P.~L.~Lumsdaine, \emph{The simplicial model of univalent foundations (after Voevodsky)}, J. Eur. Math. Soc. \textbf{23} (2021), 2071--2126.
   626	
   627	\bibitem{CCHM} C.~Cohen, T.~Coquand, S.~Huber, and A.~M\"ortberg, \emph{Cubical Type Theory: a constructive interpretation of the univalence axiom}, TYPES 2015. arXiv:1611.02108.
   628	
   629	\bibitem{Riehl2025} E.~Riehl, \emph{Synthetic perspectives on spaces and categories}, arXiv:2510.15795, 2025.
   630	
   631	\bibitem{nLabENT} The nLab, \emph{elementary $(\infty,1)$-topos}. \url{https://ncatlab.org/nlab/show/elementary+(infinity,1)-topos}, accessed 2026.
   632	
   633	\bibitem{nLabNNO} The nLab, \emph{natural numbers object}. \url{https://ncatlab.org/nlab/show/natural+numbers+object}, accessed 2026.
   634	
   635	\end{thebibliography}
   636	

exec
/usr/local/bin/zsh -lc "rm -rf /tmp/infinity-nno-review-mathtools && mkdir -p /tmp/infinity-nno-review-mathtools && pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-mathtools '\\RequirePackage{mathtools}\\input{papers/latex/infinity-nno.tex}' >/tmp/infinity-nno-review-mathtools/run1.out 2>&1; pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-mathtools '\\RequirePackage{mathtools}\\input{papers/latex/infinity-nno.tex}' >/tmp/infinity-nno-review-mathtools/run2.out 2>&1; pdflatex -interaction=nonstopmode -file-line-error -output-directory=/tmp/infinity-nno-review-mathtools '\\RequirePackage{mathtools}\\input{papers/latex/infinity-nno.tex}' >/tmp/infinity-nno-review-mathtools/run3.out 2>&1; printf 'exit=%s\\n' "'$?; rg -n -e '"'Undefined control sequence|LaTeX Error|Warning: Citation|Warning: Reference|undefined references|Rerun|Overfull|Underfull|Token not allowed|everypage Warning|Label\\(s\\)' /tmp/infinity-nno-review-mathtools/run3.out" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 1509ms:
exit=0
175:Package everypage Warning: Functionality similar to this package has recently
181:Package everypage Warning: You appear to be running a version of LaTeX
205:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
209:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
214:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
218:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
222:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
227:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
231:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
235:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
239:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
243:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
247:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
251:Overfull \hbox (0.63869pt too wide) in paragraph at lines 333--334
257:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
261:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
265:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
269:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
273:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
277:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
281:Overfull \hbox (111.58994pt too wide) in paragraph at lines 362--363
288:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
292:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
296:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
300:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
304:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
309:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
313:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
317:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
321:Overfull \hbox (8.52824pt too wide) in paragraph at lines 473--474
325:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
329:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
333:Overfull \hbox (27.81357pt too wide) in paragraph at lines 517--518
338:Overfull \hbox (3.25813pt too wide) in paragraph at lines 526--527
342:Overfull \hbox (15.34981pt too wide) in paragraph at lines 531--532
347:Underfull \hbox (badness 4518) in paragraph at lines 613--614
351:Underfull \hbox (badness 1253) in paragraph at lines 613--614
355:Underfull \hbox (badness 2744) in paragraph at lines 633--634

exec
/usr/local/bin/zsh -lc "sed -n '196,332p' /tmp/infinity-nno-review-mathtools/run3.out" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
(/tmp/infinity-nno-review-mathtools/texput.out)
*geometry* driver: auto-detecting
*geometry* detected driver: pdftex
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd)
(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd)
(/tmp/infinity-nno-review-mathtools/texput.toc [1{/usr/local/texlive/2026/texmf
-var/fonts/map/pdftex/updmap/pdftex.map}{/usr/local/texlive/2026/texmf-dist/fon
ts/enc/dvips/cm-super/cm-super-ts1.enc}]) [2] [3]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 170.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 170.

[4] [5] [6]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 281.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 281.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 281.

[7]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 317.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 331.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 331.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 331.


Overfull \hbox (0.63869pt too wide) in paragraph at lines 333--334
\OT1/cmr/m/n/12 A more del-i-cate ques-tion is whether ev-ery \OT1/cmr/m/it/12 
el-e-men-tary $\OT1/cmr/m/n/12 (\OMS/cmsy/m/n/12 1\OML/cmm/m/it/12 ; \OT1/cmr/m
/n/12 1)$-topos (in the sense of Rasekh [[]])
[8]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 355.


Overfull \hbox (111.58994pt too wide) in paragraph at lines 362--363
[]\OT1/cmr/m/n/12 The map-ping spaces in $\OMS/cmsy/m/n/12 E[]$ \OT1/cmr/m/n/12
 are $0$-truncated (sets). The map-ping space $[][]((\OML/cmm/m/it/12 N; \OT1/c
mr/m/n/12 0\OML/cmm/m/it/12 ; s\OT1/cmr/m/n/12 )\OML/cmm/m/it/12 ; \OT1/cmr/m/n
/12 (\OML/cmm/m/it/12 X; x[]; f\OT1/cmr/m/n/12 ))$
[9]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 401.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 401.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 413.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 413.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 413.

[10] [11]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 464.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `superscript' on input line 464.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 464.


Overfull \hbox (8.52824pt too wide) in paragraph at lines 473--474
[]\OT1/cmr/m/n/12 Use the encode--decode method (Licata--Shulman [[]]) to con-s
truct a fi-bra-tion $[] [] [] \OML/cmm/m/it/12 S[] \OMS/cmsy/m/n/12 !

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 480.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 480.

[12]

codex
Read-only review completed. `pdflatex` on the file fails as-is, then a temporary `mathtools` shim exposed the remaining diagnostics.

1. [infinity-nno.tex:4](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:4), [120](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:120) — fatal compile error: `\coloneqq` is undefined. It is used repeatedly after line 120.
   Fix: add `mathtools`, e.g. `\usepackage{amsmath, amssymb, amsthm, mathtools}` or a separate `\usepackage{mathtools}`.

2. [infinity-nno.tex:21](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:21), [86](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:86) — `everypage` emits legacy-package warnings on current LaTeX.
   Fix: replace `\AddEverypageHook` with LaTeX’s native `\AddToHook{shipout/background}{...}`, or use `everypage-1x` if you want the old interface.

3. PDF bookmark warnings from math in section titles at lines [170](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:170), [281](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:281), [317](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:317), [331](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:331), [355](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:355), [401](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:401), [413](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:413), [464](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:464), [480](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:480).
   Fix: wrap math headings with `\texorpdfstring`, e.g. `\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}`.

4. [infinity-nno.tex:333](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:333) — overfull hbox, 0.64pt.
   Fix: shorten/rephrase the sentence or move the Rasekh citation later in the sentence.

5. [infinity-nno.tex:362](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:362) — severe overfull hbox, 111.59pt, caused by the long inline `\Map_{\PtEndo(...)}(...)` expression.
   Fix: set the mapping-space expression in a displayed equation. Also remove the explicit `\qed`; `amsthm`’s `proof` environment already supplies it.

6. [infinity-nno.tex:473](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:473) — overfull hbox, 8.53pt.
   Fix: display the `\mathrm{code}\colon \Sone\to \U` and `\mathrm{code}(\base)\eqv\Z` expression or split the sentence.

7. [infinity-nno.tex:517](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:517), [526](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:526), [531](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:531) — overfull hboxes in list items.
   Fix: shorten those list items, split the long parentheticals into separate sentences, or use a less cramped list layout.

8. [infinity-nno.tex:613](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:613), [633](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:633) — underfull hboxes from long bibliography URLs.
   Fix: add `\usepackage{xurl}` before `hyperref` and optionally `\Urlmuskip=0mu plus 1mu`, or manually insert acceptable URL breakpoints.

No unresolved `\ref`, `\cref`, or `\cite` entries remained after the temporary `mathtools` fix and three LaTeX passes.

VERDICT: NEEDS_FIX
2026-05-04T23:34:46.977875Z ERROR codex_core::session: failed to record rollout items: thread 019df555-8313-7342-b2eb-d9f0fbe5a91c not found
tokens used
98,644
Read-only review completed. `pdflatex` on the file fails as-is, then a temporary `mathtools` shim exposed the remaining diagnostics.

1. [infinity-nno.tex:4](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:4), [120](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:120) — fatal compile error: `\coloneqq` is undefined. It is used repeatedly after line 120.
   Fix: add `mathtools`, e.g. `\usepackage{amsmath, amssymb, amsthm, mathtools}` or a separate `\usepackage{mathtools}`.

2. [infinity-nno.tex:21](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:21), [86](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:86) — `everypage` emits legacy-package warnings on current LaTeX.
   Fix: replace `\AddEverypageHook` with LaTeX’s native `\AddToHook{shipout/background}{...}`, or use `everypage-1x` if you want the old interface.

3. PDF bookmark warnings from math in section titles at lines [170](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:170), [281](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:281), [317](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:317), [331](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:331), [355](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:355), [401](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:401), [413](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:413), [464](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:464), [480](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:480).
   Fix: wrap math headings with `\texorpdfstring`, e.g. `\section{The \texorpdfstring{$(\infty,1)$}{(infinity,1)}-categorical NNO}`.

4. [infinity-nno.tex:333](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:333) — overfull hbox, 0.64pt.
   Fix: shorten/rephrase the sentence or move the Rasekh citation later in the sentence.

5. [infinity-nno.tex:362](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:362) — severe overfull hbox, 111.59pt, caused by the long inline `\Map_{\PtEndo(...)}(...)` expression.
   Fix: set the mapping-space expression in a displayed equation. Also remove the explicit `\qed`; `amsthm`’s `proof` environment already supplies it.

6. [infinity-nno.tex:473](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:473) — overfull hbox, 8.53pt.
   Fix: display the `\mathrm{code}\colon \Sone\to \U` and `\mathrm{code}(\base)\eqv\Z` expression or split the sentence.

7. [infinity-nno.tex:517](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:517), [526](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:526), [531](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:531) — overfull hboxes in list items.
   Fix: shorten those list items, split the long parentheticals into separate sentences, or use a less cramped list layout.

8. [infinity-nno.tex:613](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:613), [633](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/infinity-nno.tex:633) — underfull hboxes from long bibliography URLs.
   Fix: add `\usepackage{xurl}` before `hyperref` and optionally `\Urlmuskip=0mu plus 1mu`, or manually insert acceptable URL breakpoints.

No unresolved `\ref`, `\cref`, or `\cite` entries remained after the temporary `mathtools` fix and three LaTeX passes.

VERDICT: NEEDS_FIX

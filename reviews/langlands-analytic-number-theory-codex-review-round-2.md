---
reviewer: codex (OpenAI)
type: formatting
paper: langlands-analytic-number-theory
round: 2
date: 2026-05-04T23:40:20Z
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
session id: 019df55d-3891-76e1-b97c-9cdc5b6f3754
--------
user
Review papers/latex/langlands-analytic-number-theory.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll inspect the TeX source directly, then try a no-edit compile/check path if the local toolchain allows it. I’ll keep this review read-only and ground findings in exact line numbers.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsfonts, amsthm}
     5	
     6	% Page layout (load early so other packages see geometry)
     7	\usepackage[margin=1in]{geometry}
     8	
     9	% Graphics and color
    10	\usepackage{graphicx}
    11	\usepackage{xcolor}
    12	
    13	% Diagrams
    14	\usepackage{tikz}
    15	\usepackage{tikz-cd}
    16	\usetikzlibrary{arrows.meta, calc, positioning}
    17	
    18	% Tables
    19	\usepackage{booktabs}
    20	
    21	% Page hooks for the GrokRxiv sidebar
    22	\usepackage{everypage}
    23	
    24	% Unicode characters used inside verbatim Lean snippets.
    25	\usepackage{newunicodechar}
    26	\newunicodechar{ℂ}{\ensuremath{\mathbb{C}}}
    27	\newunicodechar{ℕ}{\ensuremath{\mathbb{N}}}
    28	\newunicodechar{ℝ}{\ensuremath{\mathbb{R}}}
    29	\newunicodechar{ℤ}{\ensuremath{\mathbb{Z}}}
    30	\newunicodechar{ℚ}{\ensuremath{\mathbb{Q}}}
    31	\newunicodechar{∀}{\ensuremath{\forall}}
    32	\newunicodechar{∃}{\ensuremath{\exists}}
    33	\newunicodechar{¬}{\ensuremath{\lnot}}
    34	\newunicodechar{≠}{\ensuremath{\neq}}
    35	\newunicodechar{≤}{\ensuremath{\leq}}
    36	\newunicodechar{≥}{\ensuremath{\geq}}
    37	\newunicodechar{π}{\ensuremath{\pi}}
    38	\newunicodechar{ζ}{\ensuremath{\zeta}}
    39	\newunicodechar{→}{\ensuremath{\rightarrow}}
    40	\newunicodechar{∧}{\ensuremath{\wedge}}
    41	\newunicodechar{∨}{\ensuremath{\vee}}
    42	
    43	% References (hyperref must be loaded late; cleveref after hyperref)
    44	\usepackage{hyperref}
    45	\usepackage{cleveref}
    46	
    47	% Theorems
    48	\newtheorem{theorem}{Theorem}[section]
    49	\newtheorem{proposition}[theorem]{Proposition}
    50	\newtheorem{lemma}[theorem]{Lemma}
    51	\newtheorem{corollary}[theorem]{Corollary}
    52	\newtheorem{conjecture}[theorem]{Conjecture}
    53	\theoremstyle{definition}
    54	\newtheorem{definition}[theorem]{Definition}
    55	\newtheorem{problem}[theorem]{Problem}
    56	\newtheorem{example}[theorem]{Example}
    57	\theoremstyle{remark}
    58	\newtheorem{remark}[theorem]{Remark}
    59	
    60	% GrokRxiv sidebar
    61	\definecolor{grokgray}{RGB}{110,110,110}
    62	\AddEverypageHook{%
    63	  \ifnum\value{page}=1
    64	    \begin{tikzpicture}[remember picture, overlay]
    65	      \node[
    66	        rotate=90,
    67	        anchor=south,
    68	        font=\Large\sffamily\bfseries\color{grokgray},
    69	        inner sep=0pt
    70	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    71	      {GrokRxiv:2026.05.langlands-analytic-number-theory\quad
    72	       [\,math.NT\,]\quad
    73	       04 May 2026};
    74	    \end{tikzpicture}
    75	  \fi
    76	}
    77	
    78	% Custom macros
    79	\newcommand{\C}{\mathbb{C}}
    80	\newcommand{\R}{\mathbb{R}}
    81	\newcommand{\Q}{\mathbb{Q}}
    82	\newcommand{\Z}{\mathbb{Z}}
    83	\newcommand{\N}{\mathbb{N}}
    84	\newcommand{\F}{\mathbb{F}}
    85	\newcommand{\HoTT}{\mathsf{HoTT}}
    86	\newcommand{\Type}{\mathcal{U}}
    87	\newcommand{\Prop}{\mathsf{Prop}}
    88	\newcommand{\Set}{\mathsf{Set}}
    89	\newcommand{\id}{\mathsf{id}}
    90	\newcommand{\refl}{\mathsf{refl}}
    91	\newcommand{\ua}{\mathsf{ua}}
    92	\newcommand{\Path}{\mathsf{Path}}
    93	\newcommand{\Cc}{\C_{\mathsf{c}}}
    94	\newcommand{\Rc}{\R_{\mathsf{c}}}
    95	\newcommand{\HIIT}{\mathsf{HIIT}}
    96	\newcommand{\op}{\mathsf{op}}
    97	\newcommand{\Aut}{\mathsf{Aut}}
    98	\newcommand{\Hom}{\mathsf{Hom}}
    99	\newcommand{\Map}{\mathsf{Map}}
   100	\newcommand{\Eq}{\mathsf{Eq}}
   101	\newcommand{\IsEquiv}{\mathsf{IsEquiv}}
   102	\newcommand{\nCat}[1]{(\infty,#1)\text{-}\mathsf{Cat}}
   103	\newcommand{\Tw}{\mathcal{T}}
   104	\newcommand{\holo}{\mathsf{Holo}}
   105	% Cohesive HoTT modalities.
   106	\newcommand{\esh}{\mathsf{S}}      % shape modality
   107	\newcommand{\flatm}{\mathsf{b}}    % flat modality (avoid clash with \flat)
   108	\newcommand{\sharpm}{\mathsf{S^\sharp}} % sharp modality
   109	% (We intentionally retain the standard \zeta from amssymb.)
   110	
   111	\title{Toward HoTT-Native Analytic Number Theory:\\
   112	Riemann Zeta, Langlands, and the $\zeta(s)=0$ Question}
   113	
   114	\author{Matthew Long \\
   115	\textit{The YonedaAI Collaboration} \\
   116	\textit{YonedaAI Research Collective} \\
   117	Chicago, IL \\
   118	\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
   119	
   120	\date{4 May 2026}
   121	
   122	\begin{document}
   123	\maketitle
   124	
   125	\begin{abstract}
   126	We address what the synthesis of our prior series of papers identified as the
   127	\emph{principal open problem} in homotopy type theory's interface with
   128	contemporary mathematics: the absence of a HoTT-native formulation of analytic
   129	number theory. Algebraic number theory and arithmetic geometry, through the
   130	lens of $(\infty,1)$-toposes, étale cohomology, and condensed mathematics,
   131	admit clean translations into univalent foundations. By contrast, the Riemann
   132	zeta function $\zeta(s)$, Dirichlet $L$-functions, automorphic forms, and the
   133	Langlands programme have not been substantially reformulated in HoTT. The
   134	statement $\zeta(s)=0$, viewed as a HoTT-native proposition with $\zeta$ a
   135	HoTT-native object, remains unrealised. This paper does not solve that problem;
   136	it formulates it precisely and offers a research roadmap.
   137	
   138	We proceed in seven steps. First, we trace the prerequisite chain that any
   139	HoTT-native definition of $\zeta$ must respect: HoTT-native Cauchy reals
   140	$\Rc$, Cauchy complex numbers $\Cc$ via univalent algebraic closure,
   141	holomorphic functions as a synthetic notion in cohesive HoTT, and Dirichlet
   142	series as analytic objects internal to a univalent universe. Second, we
   143	propose three candidate HoTT-native definitions of $\zeta$ — as a higher
   144	inductive--inductive type, as the analytic limit of an Euler product, and as
   145	the unique solution to a meromorphic continuation universal property — and
   146	analyse their tradeoffs. Third, we situate this work against the geometric
   147	Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze
   148	condensed and analytic-stack mathematics (2018--2025), and the
   149	Loeffler--Stoll Lean 4 / Mathlib formalization of the Riemann zeta function
   150	and $L$-functions (2025, arXiv:2503.00959). Fourth, we identify six concrete
   151	sub-problems whose resolution would constitute a HoTT-native proof of
   152	basic facts about $\zeta(s)$, including the Euler product, the functional
   153	equation, and the formal statement of the Riemann hypothesis. We do not claim
   154	the Riemann hypothesis, nor that HoTT will prove it; we claim that the
   155	question of stating it inside HoTT is itself a non-trivial research programme,
   156	and we take the first concrete steps toward that programme.
   157	\end{abstract}
   158	
   159	\tableofcontents
   160	
   161	\section{Introduction}\label{sec:intro}
   162	
   163	\subsection{The principal open problem}
   164	
   165	In the synthesis paper concluding our prior series~\cite{Long2026Synthesis},
   166	which builds on Riemann's foundational
   167	1859~paper~\cite{RiemannHypothesisOriginal},
   168	we surveyed six topics where homotopy type theory (HoTT) interfaces — or
   169	fails to interface — with mainstream twenty-first century mathematics.
   170	Topics 1, 3, 4, 5, and 6 (cohesive geometry, $\infty$-toposes, derived
   171	algebraic geometry, motives, and condensed algebra) admit varying degrees of
   172	HoTT formulation. Topic 2, \emph{analytic number theory}, does not. We wrote:
   173	\begin{quote}
   174	\itshape
   175	Algebraic number theory and parts of arithmetic geometry — schemes, sheaves,
   176	étale cohomology — admit $(\infty,1)$-topos and condensed mathematics
   177	treatments that connect cleanly to univalent foundations. But $\zeta(s)=0$
   178	as a HoTT-native statement, with $\zeta$ a HoTT-native object, remains
   179	unrealised. We frame this as the principal open question for the synthesis.
   180	\end{quote}
   181	This paper develops that question.
   182	
   183	\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}
   184	
   185	A HoTT-native statement of $\zeta(s)=0$ requires four ingredients, each of
   186	which is non-trivial:
   187	\begin{enumerate}
   188	\item A HoTT-native object $\Cc:\Type$ of complex numbers, complete with the
   189	notion of meromorphicity. Constructive Cauchy reals~\cite{HoTTBook,Booij2020}
   190	exist, but a univalent algebraic closure that is well-behaved with respect
   191	to univalence requires care: classical algebraic closures are
   192	unique-up-to-isomorphism, while a HoTT-native one is unique up-to-equivalence
   193	in the sense of univalence~\cite{Voevodsky2014}.
   194	\item A HoTT-native notion of \emph{holomorphic function} $\holo:(\Cc \to \Cc) \to \Type$.
   195	The classical definition uses a metric limit (Newton quotient) which is
   196	constructive but not synthetic. A more native approach uses cohesive HoTT
   197	\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
   198	\item A HoTT-native definition of $\zeta:\Cc \setminus \{1\} \to \Cc$ that
   199	agrees on $\mathrm{Re}(s)>1$ with $\sum_{n\geq 1} n^{-s}$ and analytically
   200	continues elsewhere. This requires either a higher inductive-inductive
   201	construction (HIIT) or an internal universal property of meromorphic
   202	extensions.
   203	\item A HoTT-native interpretation of the proposition
   204	$\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2$.
   205	Even getting to this statement is a research project.
   206	\end{enumerate}
   207	
   208	By contrast, in classical foundations Loeffler and Stoll
   209	\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
   210	Mathlib the entire infrastructure: $\zeta$, the analytic continuation, the
   211	functional equation, the Basel problem, non-vanishing on $\mathrm{Re}(s) \geq 1$,
   212	Dirichlet's theorem on primes in arithmetic progressions, and the formal
   213	statement of the Riemann hypothesis. Their work runs to roughly 3300 lines
   214	of Lean for the analytic continuation alone. We have nothing comparable in
   215	any HoTT proof assistant.
   216	
   217	\subsection{What this paper does (and does not do)}
   218	
   219	This paper:
   220	\begin{itemize}

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|eqref|cite|label|begin|end|usepackage|documentclass|input|includegraphics|bibliography|bibitem|newcommand|DeclareMathOperator|operatorname|mathbb|mathcal|todo|TODO|undefined|overfull|underfull)|\\\\[a-zA-Z]+\\*?\\{|~\\\\|\\\\\\[|\\\\\\]|hfill|vspace|hspace\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|eqref|cite|label|begin|end|usepackage|documentclass|input|includegraphics|bibliography|bibitem|newcommand|DeclareMathOperator|operatorname|mathbb|mathcal|todo|TODO|undefined|overfull|underfull)|\[a-zA-Z]+\*?\{|~\|\\[|\\]|hfill|vspace|hspace)
                                                                                                                                                                                                                                                             ^
error: unopened group

exec
/usr/local/bin/zsh -lc "rg --files papers/latex | sed -n '1,160p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
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

codex
The source has existing `.log/.aux/.out/.toc/.pdf` artifacts beside it, so I can use the prior LaTeX log as evidence for box/reference/package problems without writing new files.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '221,520p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   221	\item Identifies and motivates the \emph{prerequisite chain} for a HoTT-native
   222	$\zeta$. (\Cref{sec:prereq})
   223	\item Proposes \emph{three candidate} HoTT-native definitions of $\zeta$,
   224	analyses their tradeoffs, and conjecturally proves their pairwise
   225	equivalence. (\Cref{sec:zeta})
   226	\item Places the picture in the broader geometric Langlands landscape via
   227	$(\infty,1)$-toposes and Lurie's higher topos theory~\cite{Lurie2009HTT,
   228	Gaitsgory2024GLC}. (\Cref{sec:langlands})
   229	\item Compares HoTT and Clausen--Scholze condensed mathematics, identifying
   230	where they overlap and where the bridge is missing. (\Cref{sec:condensed})
   231	\item Compares with the Loeffler--Stoll 2025 Lean formalization, both as a
   232	benchmark and as a \emph{translation target}. (\Cref{sec:loefflerstoll})
   233	\item Provides a six-sub-problem roadmap that, if solved, would yield a
   234	HoTT-native proof that $\zeta(2) = \pi^2/6$. (\Cref{sec:roadmap})
   235	\item Re-states the Riemann hypothesis as a HoTT proposition and discusses
   236	its modal-logical structure. (\Cref{sec:rh})
   237	\end{itemize}
   238	
   239	This paper does \emph{not}:
   240	\begin{itemize}
   241	\item Prove the Riemann hypothesis.
   242	\item Provide a complete HoTT formalization of $\zeta$.
   243	\item Claim that HoTT methods will, in principle, prove RH; we are agnostic
   244	on this question.
   245	\end{itemize}
   246	
   247	The companion code repository contains a Haskell implementation of partial
   248	zeta sums, Dirichlet series operations, the formal Euler product identity
   249	(modulo a convergence axiom), and a Lean 4 sketch indexed against
   250	Loeffler--Stoll's Mathlib code.
   251	
   252	\subsection{Algebraic vs.\ analytic number theory}
   253	
   254	A clarifying distinction. \emph{Algebraic number theory} studies
   255	$\mathcal{O}_K$, the ring of integers of a number field $K/\Q$, its ideals,
   256	class group, units, and reductions modulo primes. The objects are
   257	discrete-finite or, at worst, countable; their morphisms are algebraic; and
   258	the topology is the Zariski or étale one. HoTT formalisation is
   259	straightforward in principle: rings are sets with operations satisfying
   260	identities, and ideals are subsingletons of the underlying set.
   261	
   262	\emph{Analytic number theory} studies $\zeta(s)$, Dirichlet $L$-functions
   263	$L(s,\chi)$, and automorphic $L$-functions $L(s,\pi)$, where $\pi$ is an
   264	automorphic representation of $GL(n,\mathbb{A}_\Q)$. The objects are
   265	holomorphic / meromorphic functions of complex variables; morphisms are
   266	analytic transformations; and the topology is the Euclidean (or condensed)
   267	topology on $\C$. HoTT formalisation is presently absent.
   268	
   269	The Langlands programme~\cite{Langlands1970,GelbartLanglands1979} unifies
   270	these worlds: it asserts a precise correspondence between automorphic
   271	representations and Galois representations, transforming questions about
   272	zeros of $L$-functions into questions about Galois cohomology. Geometric
   273	Langlands~\cite{Gaitsgory2024GLC} is the function-field analogue and was
   274	proven in 2024 in five papers using $(\infty,1)$-categorical methods
   275	throughout.
   276	
   277	\subsection{Outline}
   278	
   279	\Cref{sec:prereq} traces the prerequisite chain.
   280	\Cref{sec:zeta} defines $\zeta$ as a candidate HoTT object.
   281	\Cref{sec:langlands} treats geometric Langlands in $(\infty,1)$-topoi.
   282	\Cref{sec:condensed} compares condensed mathematics and HoTT.
   283	\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.
   284	\Cref{sec:roadmap} gives the six-sub-problem roadmap.
   285	\Cref{sec:rh} discusses RH as a HoTT statement.
   286	\Cref{sec:conclusion} concludes.
   287	
   288	%---------------------------------------------------------------
   289	\section{The Prerequisite Chain}\label{sec:prereq}
   290	
   291	We trace, with care, the dependency chain culminating in a HoTT-native $\zeta$.
   292	
   293	\subsection{HoTT-native real numbers \texorpdfstring{$\Rc$}{Rc}}
   294	
   295	\begin{definition}[Cauchy reals, after the HoTT Book~\cite{HoTTBook}]\label{def:Rc}
   296	The type $\Rc$ of \emph{Cauchy reals} is the higher inductive-inductive type
   297	defined simultaneously with a relation $\sim_\epsilon : \Rc \to \Rc \to \Type$
   298	indexed by $\epsilon : \Q^+$, by the constructors:
   299	\begin{align}
   300	\mathsf{rat} &: \Q \to \Rc \\
   301	\mathsf{lim} &: \Pi(x:\Q^+ \to \Rc).\, \mathsf{IsCauchy}(x) \to \Rc \\
   302	\mathsf{eq} &: \Pi(u,v:\Rc).\, (\Pi(\epsilon:\Q^+).\, u \sim_\epsilon v) \to u = v
   303	\end{align}
   304	together with the path constructors for the closeness relation
   305	$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.
   306	\end{definition}
   307	
   308	\begin{remark}
   309	$\Rc$ is a set in the sense of HoTT (its identity types are propositions),
   310	because of the explicit equality constructor $\mathsf{eq}$. This is in
   311	contrast to a non-Cauchy approach where $\R$ might inherit higher structure
   312	from its construction.
   313	\end{remark}
   314	
   315	\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
   316	$\Rc$ is an Archimedean ordered field with decidable order $<$ on rationals
   317	but undecidable equality on $\Rc$ in general.
   318	\end{theorem}
   319	
   320	\subsection{HoTT-native complex numbers \texorpdfstring{$\Cc$}{Cc}}
   321	
   322	There are at least three approaches:
   323	
   324	\paragraph{Pairs.}
   325	$\Cc := \Rc \times \Rc$ with multiplication
   326	$(a,b)(c,d) := (ac-bd, ad+bc)$. Simple, but does not capture the
   327	\emph{universal property} that $\Cc$ should be an algebraic closure of $\Rc$.
   328	
   329	\paragraph{Algebraic closure of $\Rc$.}
   330	\begin{definition}[Univalent algebraic closure]\label{def:UAC}
   331	A type $\overline{\Rc}$ together with an embedding $\iota:\Rc \to \overline{\Rc}$
   332	is a \emph{univalent algebraic closure} of $\Rc$ if it is the propositional
   333	truncation of the type
   334	\[
   335	  \sum_{F:\mathsf{Field}}\, \sum_{\iota:\Rc \to F} \mathsf{IsAlgClosure}(\Rc,F,\iota),
   336	\]
   337	where $\mathsf{IsAlgClosure}$ is the conjunction of (i) every non-zero
   338	polynomial in $F[X]$ has a root, and (ii) every element of $F$ is algebraic
   339	over $\Rc$ via $\iota$.
   340	\end{definition}
   341	
   342	\begin{remark}[Plain-language gloss]\label{rem:UACplain}
   343	In essence, \Cref{def:UAC} defines the algebraic closure not as one
   344	specific construction, but as the abstract object satisfying the universal
   345	property of being an algebraically closed field containing $\Rc$. Univalence
   346	ensures that any two such objects are propositionally equal as types in
   347	$\mathcal{U}$. The propositional truncation $\|\cdot\|_{-1}$ at the top of
   348	the $\Sigma$-type collapses the choice-of-witness data to a proposition,
   349	reflecting the classical dictum that the algebraic closure is unique up to
   350	non-canonical isomorphism.
   351	\end{remark}
   352	
   353	\begin{proposition}\label{prop:UACUnique}
   354	Univalent algebraic closures of $\Rc$ are unique up to equivalence: if
   355	$(\overline{\Rc}_1,\iota_1)$ and $(\overline{\Rc}_2,\iota_2)$ are two such,
   356	there is an equivalence $e:\overline{\Rc}_1 \simeq \overline{\Rc}_2$ with
   357	$e \circ \iota_1 = \iota_2$, and by univalence
   358	$\overline{\Rc}_1 = \overline{\Rc}_2$.
   359	\end{proposition}
   360	
   361	\begin{proof}[Proof sketch]
   362	Classical algebraic-closure uniqueness uses Zorn's lemma. In HoTT, we use a
   363	constructive variant: one shows that any two algebraic closures are
   364	isomorphic via an inductive construction, and that the choice of isomorphism
   365	is contractible up to the action of $\mathsf{Gal}(\overline{\Rc}/\Rc)$. The
   366	propositional truncation in \Cref{def:UAC} ensures the existential is a
   367	proposition; uniqueness follows. Full proof requires choice or constructive
   368	algebraic-closure arguments~\cite{Mines1988}.
   369	\end{proof}
   370	
   371	\paragraph{Quotient construction.}
   372	$\Cc := \Rc[X]/(X^2 + 1)$. Concretely realisable via Schwartz / set-quotient.
   373	
   374	In what follows, we treat $\Cc$ axiomatically: a propositional Univalent
   375	Algebraic Closure of $\Rc$, equipped with a continuous structure inherited
   376	from $\Rc \times \Rc$.
   377	
   378	\subsection{Holomorphic functions in HoTT}
   379	
   380	The classical definition of holomorphicity is:
   381	\[
   382	f:\C \to \C \text{ is holomorphic at } z \quad\text{iff}\quad
   383	\lim_{h \to 0} \frac{f(z+h) - f(z)}{h} \text{ exists.}
   384	\]
   385	This translates straightforwardly to $\Rc$- and $\Cc$-limits, but is not
   386	HoTT-native in the sense of using only $\Type$, $=$, and the
   387	universe-polymorphic constructors.
   388	
   389	\begin{definition}[Constructive holomorphicity]\label{def:holo}
   390	$f:\Cc \to \Cc$ is \emph{holomorphic} at $z:\Cc$ if there exists
   391	$f'(z):\Cc$ such that
   392	\[
   393	\Pi(\epsilon:\Q^+).\,
   394	\Sigma(\delta:\Q^+).\,
   395	\Pi(h:\Cc).\, 0 < |h| < \delta \to
   396	\left|\,\frac{f(z+h)-f(z)}{h} - f'(z)\,\right| < \epsilon.
   397	\]
   398	\end{definition}
   399	
   400	\begin{remark}[Synthetic alternative]\label{rem:synth}
   401	In \emph{cohesive HoTT}~\cite{Shulman2018Cohesive}, the universe carries
   402	shape and flat modalities $\esh, \flat$. Holomorphicity becomes a synthetic
   403	predicate: $f$ is holomorphic iff $f$ commutes with the differential cohesion
   404	operator. This is closer to ``HoTT-native'' but requires fixing a model
   405	where $\esh$ is interpreted as the geometric $\C^\infty$-shape.
   406	\end{remark}
   407	
   408	\subsection{Dirichlet series}
   409	
   410	\begin{definition}[Dirichlet series]\label{def:Dirichlet}
   411	A \emph{Dirichlet series} is a function $a:\N_{>0} \to \Cc$ together with the
   412	formal expression
   413	\[
   414	D_a(s) := \sum_{n=1}^{\infty} \frac{a(n)}{n^s}, \qquad s:\Cc.
   415	\]
   416	The \emph{abscissa of absolute convergence} is
   417	$\sigma_a := \inf\{\sigma:\Rc \mid \sum_n |a(n)| n^{-\sigma} \text{ converges}\}$.
   418	\end{definition}
   419	
   420	\begin{proposition}[HoTT-native; sketched]\label{prop:DirichletAlgebra}
   421	The set of Dirichlet series with $\sigma_a < +\infty$ forms a commutative
   422	ring under termwise addition and Dirichlet convolution
   423	$(a*b)(n) := \sum_{d \mid n} a(d) b(n/d)$.
   424	\end{proposition}
   425	
   426	\begin{proof}[Proof sketch]
   427	Closed-under-addition is clear. For convolution, the abscissa of
   428	$a*b$ is bounded by $\max(\sigma_a, \sigma_b) + \log_2(\text{divisor sum})$,
   429	which is finite when both $\sigma_a, \sigma_b$ are. The full proof in HoTT
   430	uses the absolute-convergence variant of Fubini for $\Rc$-valued double sums
   431	\cite{Booij2020}.
   432	\end{proof}
   433	
   434	\subsection{Putting it together}
   435	
   436	\begin{figure}[htbp]
   437	\centering
   438	\begin{tikzcd}[column sep=tiny, row sep=large]
   439	\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc
   440	  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)
   441	  \arrow[r, "\sum\frac{a(n)}{n^s}"]
   442	  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta
   443	\end{tikzcd}
   444	\caption{The prerequisite chain. Each arrow represents a non-trivial
   445	HoTT-native construction. The final arrow ($\mathsf{Dir} \to \zeta$) is the
   446	analytic continuation, and is the place at which the chain currently breaks
   447	in pure HoTT.}
   448	\label{fig:chain}
   449	\end{figure}
   450	
   451	The chain in \Cref{fig:chain} terminates at $\zeta$, but the rightmost arrow
   452	— analytic continuation from a Dirichlet series convergent on $\mathrm{Re}(s)>1$
   453	to a meromorphic function on $\Cc \setminus \{1\}$ — has no canonical
   454	HoTT-native realisation. This is the central technical gap of the present
   455	paper.
   456	
   457	\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
   458	
   459	To clarify why the rightmost arrow is hard, we list the obstacles in
   460	ascending order of severity.
   461	
   462	\begin{enumerate}
   463	\item \textbf{Unique factorisation of meromorphic extension.}
   464	In classical complex analysis, the identity theorem (\Cref{thm:Identity})
   465	guarantees uniqueness of analytic continuation. In HoTT, ``connected open''
   466	needs a precise definition, and the proof that the agreement locus is
   467	clopen requires constructive analogues of Bolzano--Weierstrass.
   468	
   469	\item \textbf{Existence of meromorphic extension.}
   470	Classical proofs of analytic continuation of $\zeta$ use one of:
   471	\begin{itemize}
   472	\item \emph{Hurwitz zeta} method: define $\zeta(s,a) = \sum_{n \geq 0}(n+a)^{-s}$
   473	and continue via the integral representation. This requires Mellin transform.
   474	\item \emph{Theta-function} method: $\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$
   475	satisfies modular invariance, and Mellin transforming gives $\zeta$.
   476	\item \emph{Contour integral} method: integrate $\frac{x^{s-1}}{e^x - 1}$
   477	around a Hankel contour.
   478	\end{itemize}
   479	Each requires a substantial fragment of HoTT-native analysis: integration
   480	theory, modular transformation laws, residue calculus.
   481	
   482	\item \textbf{Computation in HoTT.}
   483	Even given the existence and uniqueness, \emph{computing} $\zeta$ at, say,
   484	$s = -1$ to obtain $\zeta(-1) = -1/12$ requires either (i) symbolic
   485	manipulation of the analytic continuation, or (ii) numerical methods. HoTT
   486	proof assistants like Cubical Agda do not currently support efficient
   487	arbitrary-precision real arithmetic.
   488	
   489	\item \textbf{Naturality.}
   490	Classical proofs treat $\zeta$ as one specific function. A fully-categorified
   491	HoTT-native account would treat $\zeta$ as part of a family — Dirichlet
   492	$L$-functions, Hurwitz zeta, Hecke $L$-functions, automorphic
   493	$L$-functions — with naturality with respect to characters and lifts. This
   494	expands the existence obstacle by a constant factor of the size of the family.
   495	\end{enumerate}
   496	
   497	\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
   498	
   499	To make the discussion concrete, we sketch how $\sqrt{2}:\Rc$ is a
   500	HoTT-native object.
   501	
   502	\begin{example}[$\sqrt{2}$ as Cauchy real]\label{ex:sqrt2}
   503	Define $a:\Q^+ \to \Q$ by Newton iteration: $a(\epsilon) = $ the $n$-th
   504	Newton iterate of $x_{n+1} := (x_n + 2/x_n)/2$, where $n$ is large enough
   505	that $|a(\epsilon)^2 - 2| < \epsilon$. Then $a$ is a Cauchy modulus and
   506	$\mathsf{lim}(a, \mathsf{IsCauchy}_a):\Rc$ is $\sqrt{2}$. Equality
   507	$(\sqrt{2})^2 = 2$ in $\Rc$ follows from the equality constructor
   508	$\mathsf{eq}$.
   509	\end{example}
   510	
   511	\begin{example}[$e$ as Cauchy real]\label{ex:euler}
   512	$e := \mathsf{lim}((\epsilon \mapsto \sum_{k=0}^{N(\epsilon)} 1/k!),
   513	\mathsf{IsCauchy}_e):\Rc$, where $N(\epsilon)$ is chosen so the tail
   514	$\sum_{k>N} 1/k! < \epsilon$. By Stirling, $N(\epsilon) = O(\log(1/\epsilon)/
   515	\log\log(1/\epsilon))$.
   516	\end{example}
   517	
   518	\begin{example}[$\pi$ as Cauchy real]\label{ex:pi}
   519	$\pi := \mathsf{lim}((\epsilon \mapsto \text{Machin formula at depth } N(\epsilon)),
   520	\mathsf{IsCauchy}_\pi)$. Machin's formula

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '521,920p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   521	$\pi/4 = 4\arctan(1/5) - \arctan(1/239)$ converges geometrically with
   522	ratio $1/25$ and $1/239^2$, so $N(\epsilon) = O(\log(1/\epsilon))$.
   523	\end{example}
   524	
   525	These three examples illustrate that named real-number constants in HoTT
   526	require an algorithmic Cauchy modulus, not just an existential statement.
   527	
   528	%---------------------------------------------------------------
   529	\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
   530	
   531	We now propose three approaches to defining $\zeta$ inside HoTT.
   532	
   533	\subsection{Approach 1: $\zeta$ as a higher inductive-inductive type}
   534	
   535	Inspired by the construction of $\Rc$ as a HIIT, we sketch a
   536	\emph{specification pattern} for what a HoTT-native $\zeta$ should
   537	satisfy. We emphasise that what follows is a \emph{wish-list of
   538	constructors}, not a self-contained HIIT definition; both consistency
   539	and existence of such a HIIT are open questions.
   540	
   541	First, define the convergent partial-sum function on the half-plane of
   542	absolute convergence:
   543	\begin{equation}\label{eq:zetaSeries}
   544	\zeta_{\mathrm{series}} : \Pi(s:\Cc).\, \mathrm{Re}(s) > 1 \to \Cc, \qquad
   545	\zeta_{\mathrm{series}}(s) := \sum_{n=1}^{\infty} n^{-s}.
   546	\end{equation}
   547	This map is well-defined because $\mathrm{Re}(s) > 1$ ensures absolute
   548	convergence of the series in $\Cc$, and the limit is the (HoTT-native)
   549	limit constructor of $\Rc$ applied component-wise.
   550	
   551	\begin{definition}[Specification of zeta as HIIT, candidate]\label{def:ZetaHIIT}
   552	A pair $(\zeta:\Cc \setminus \{1\} \to \Cc, P:\mathsf{Holo}(\zeta))$ is a
   553	\emph{HIIT-realisation of zeta} if it is generated by:
   554	\begin{align}
   555	\zeta_{\mathrm{Re}>1} &: \Pi(s:\Cc).\, \mathrm{Re}(s) > 1 \to \Cc, \notag \\
   556	\zeta_{\mathrm{Re}>1}(s) &= \zeta_{\mathrm{series}}(s) \quad
   557	   \text{(equality with the series of \cref{eq:zetaSeries})} \\
   558	\mathsf{cont} &: \Pi(s:\Cc).\, s \neq 1 \to \Cc \\
   559	\mathsf{agree} &: \Pi(s:\Cc).\, \Pi(p:\mathrm{Re}(s) > 1).\,
   560	   \mathsf{cont}(s, \mathrm{ne1}_p) = \zeta_{\mathrm{Re}>1}(s, p) \\
   561	\mathsf{holo} &: \mathsf{Holo}(\mathsf{cont})
   562	\end{align}
   563	together with \emph{additional path-constructors} (intentionally left
   564	schematic) enforcing the functional equation
   565	$\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)\cos(\pi s/2)\zeta(s)$.
   566	
   567	We use the language of a \texttt{definition} only for the specification;
   568	we make no claim of consistency.
   569	\end{definition}
   570	
   571	\begin{remark}\label{rem:ZetaHIITissues}
   572	This is a \emph{specification}, not a finished HIIT, for two reasons:
   573	\begin{enumerate}
   574	\item The $\mathsf{holo}$ constructor demands a holomorphic extension, but no
   575	such extension is canonically given by the constructors themselves.
   576	Consistency therefore reduces to a separate \emph{existence-of-extension}
   577	lemma — which is exactly the analytic-continuation gap of \Cref{prob:4}.
   578	\item The functional-equation path-constructors are intentionally schematic.
   579	Their precise form would involve HoTT-native $\Gamma$, $\cos$, and the
   580	modular-transformation identity for $\theta$, none of which are presently
   581	formalised. We do not know what their definitive shape should be, and
   582	indicate this rather than papering over it.
   583	\end{enumerate}
   584	The specification is therefore a \emph{target pattern}, not a finished
   585	construction. The remaining two approaches (\Cref{def:ZetaEuler} and
   586	\Cref{def:ZetaUP}) are more conservative.
   587	\end{remark}
   588	
   589	\subsection{Approach 2: $\zeta$ as analytic limit of Euler product}
   590	
   591	Recall the Euler product (\cite{Euler1737}):
   592	\[
   593	\zeta(s) = \prod_{p \text{ prime}} \frac{1}{1 - p^{-s}}, \qquad \mathrm{Re}(s) > 1.
   594	\]
   595	
   596	\begin{definition}[Zeta via Euler product]\label{def:ZetaEuler}
   597	On the half-plane $H_1 := \{s:\Cc \mid \mathrm{Re}(s) > 1\}$, define
   598	\[
   599	\zeta_E(s) := \prod_{p \in \mathbb{P}} (1 - p^{-s})^{-1}
   600	\]
   601	where $\mathbb{P}$ is the type of primes. Extend by analytic continuation
   602	(separately proven) to $\Cc \setminus \{1\}$.
   603	\end{definition}
   604	
   605	\begin{proposition}[Euler product, modulo convergence]\label{prop:Euler}
   606	On $H_1$, $\zeta_E(s) = \sum_{n=1}^{\infty} n^{-s}$.
   607	\end{proposition}
   608	
   609	\begin{proof}[Proof sketch in HoTT]
   610	By unique factorisation in $\N_{>0}$ (a HoTT-formalisable theorem), each
   611	$n \geq 1$ corresponds bijectively to a finite-support function $\mathbb{P}
   612	\to \N$ via $n = \prod_p p^{e_p(n)}$. Expanding the Euler product:
   613	\[
   614	\prod_p (1 - p^{-s})^{-1}
   615	  = \prod_p \sum_{k \geq 0} p^{-ks}
   616	  = \sum_{(e_p)\in \N^{(\mathbb{P})}} \prod_p p^{-e_p s}
   617	  = \sum_{n \geq 1} n^{-s}.
   618	\]
   619	The middle equality uses absolute convergence of the product on $H_1$, which
   620	is a HoTT-statement requiring \Cref{prop:DirichletAlgebra}.
   621	\end{proof}
   622	
   623	\subsection{Approach 3: $\zeta$ via universal property of meromorphic continuation}
   624	
   625	\begin{definition}[Meromorphic continuation, universal]\label{def:MeromCont}
   626	Given a holomorphic $f:U \to \Cc$ on an open $U \subseteq \Cc$, a
   627	\emph{meromorphic continuation} of $f$ to $V \supseteq U$ is a
   628	meromorphic $\tilde f:V \to \Cc$ with $\tilde f|_U = f$, such that for any
   629	other meromorphic continuation $g:V \to \Cc$, $\tilde f = g$ as meromorphic
   630	functions. (Existence requires connectedness; uniqueness uses the identity
   631	theorem.)
   632	\end{definition}
   633	
   634	\begin{theorem}[Identity theorem, HoTT version]\label{thm:Identity}
   635	Suppose $f, g:V \to \Cc$ are holomorphic on a connected open $V \subseteq \Cc$,
   636	and the type $\sum_{z:V} f(z) = g(z)$ has an accumulation point in $V$.
   637	Then $\Pi(z:V).\, f(z) = g(z)$.
   638	\end{theorem}
   639	
   640	\begin{proof}[Proof sketch]
   641	Standard: the locus of agreement is open (by power series), closed (by
   642	continuity), and non-empty, hence equal to $V$ since $V$ is connected.
   643	HoTT-native version: ``connected'' becomes ``$\|V\|_{-1}$ is a singleton''
   644	and ``open'' is interpreted appropriately in cohesive HoTT.
   645	\end{proof}
   646	
   647	\begin{definition}[Zeta via universal property]\label{def:ZetaUP}
   648	$\zeta:\Cc \setminus \{1\} \to \Cc$ is the unique (up to identity, by
   649	\Cref{thm:Identity}) meromorphic continuation of $s \mapsto \sum n^{-s}$ from
   650	$H_1$ to $\Cc \setminus \{1\}$ with a simple pole of residue $1$ at $s=1$.
   651	\end{definition}
   652	
   653	\subsection{Equivalence of the three definitions}
   654	
   655	\begin{theorem}[Conjectural equivalence]\label{thm:ZetaEquiv}
   656	Conditional on the existence of HoTT-native analytic continuation, the three
   657	definitions \Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}
   658	are pairwise equivalent: there is a propositional equality between any two.
   659	\end{theorem}
   660	
   661	\begin{proof}[Proof sketch]
   662	\Cref{def:ZetaEuler} agrees with the partial-sum definition on $H_1$ by
   663	\Cref{prop:Euler}. \Cref{def:ZetaUP} agrees with the partial-sum definition
   664	on $H_1$ by definition. By \Cref{thm:Identity}, any two meromorphic
   665	continuations of the same function agree everywhere. \Cref{def:ZetaHIIT}
   666	imposes both the partial-sum agreement and the holomorphicity constraint,
   667	hence its result is identified with the universal-property zeta. The
   668	catch: each step requires HoTT-native analytic continuation, which is
   669	exactly the gap.
   670	\end{proof}
   671	
   672	\subsection{The functional equation}
   673	
   674	\begin{theorem}[Functional equation, conjectured HoTT-native]\label{thm:FE}
   675	For all $s : \Cc \setminus \{0,1\}$,
   676	\[
   677	\zeta(1-s) = 2 (2\pi)^{-s} \Gamma(s) \cos(\pi s / 2) \zeta(s).
   678	\]
   679	\end{theorem}
   680	
   681	\begin{proof}[Strategy]
   682	Riemann's original proof uses the theta-function identity
   683	$\theta(t) = t^{-1/2}\theta(1/t)$ and the Mellin transform. Translating to
   684	HoTT requires:
   685	\begin{itemize}
   686	\item HoTT-native theta function $\theta:\Rc^+ \to \Rc$, defined by
   687	$\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$, plus the modular identity.
   688	\item HoTT-native Mellin transform $\mathcal{M}:\holo(\Rc^+,\Rc) \to \holo(\Cc,\Cc)$.
   689	\item HoTT-native contour-integral lemmas.
   690	\end{itemize}
   691	None of these are presently formalized in HoTT. They are all formalized in
   692	classical Lean 4 / Mathlib (Loeffler--Stoll, 2025).
   693	\end{proof}
   694	
   695	\subsection{The critical strip}
   696	
   697	\begin{definition}[Critical strip]
   698	$S := \{s : \Cc \mid 0 < \mathrm{Re}(s) < 1\}$.
   699	\end{definition}
   700	
   701	\begin{definition}[Trivial zeros]
   702	A zero $s_0$ of $\zeta$ is \emph{trivial} if $s_0 \in \{-2,-4,-6,\ldots\}$.
   703	\end{definition}
   704	
   705	\begin{conjecture}[Riemann hypothesis, HoTT statement]\label{conj:RH}
   706	\[
   707	\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2.
   708	\]
   709	\end{conjecture}
   710	
   711	We will analyse this statement modal-logically in \Cref{sec:rh}.
   712	
   713	\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
   714	
   715	To illustrate what HoTT-native machinery is needed, we trace one of the
   716	oldest results — the Basel problem.
   717	
   718	\begin{theorem}[Basel problem]\label{thm:Basel}
   719	$\zeta(2) = \pi^2/6$.
   720	\end{theorem}
   721	
   722	\begin{proof}[Sketch of HoTT-native proof, modulo missing infrastructure]
   723	There are several classical approaches; we outline two.
   724	
   725	\textbf{Approach (i): Fourier series of $x^2$.} Expand $x^2$ on $[-\pi,\pi]$
   726	as a Fourier series:
   727	\[
   728	x^2 = \frac{\pi^2}{3} + 4\sum_{n=1}^{\infty} \frac{(-1)^n \cos(nx)}{n^2}.
   729	\]
   730	Setting $x = \pi$ yields $\pi^2 = \pi^2/3 + 4\zeta(2)$, hence
   731	$\zeta(2) = \pi^2/6$. HoTT-native version requires:
   732	\begin{itemize}
   733	\item HoTT-native Fourier series with pointwise convergence on smooth
   734	functions.
   735	\item HoTT-native trigonometric functions (definable as power series, hence
   736	HIIT $\Rc$-valued).
   737	\item Pointwise evaluation at the boundary requires Abel-style limits.
   738	\end{itemize}
   739	
   740	\textbf{Approach (ii): Euler's product expansion of $\sin$.} Use
   741	\[
   742	\frac{\sin(\pi z)}{\pi z} = \prod_{n=1}^{\infty}\left(1 - \frac{z^2}{n^2}\right).
   743	\]
   744	Equating Taylor coefficients of $z^2$ on both sides:
   745	$-\pi^2/6 = -\sum 1/n^2$, so $\zeta(2) = \pi^2/6$. HoTT-native version
   746	requires:
   747	\begin{itemize}
   748	\item Infinite-product convergence theory in HoTT.
   749	\item Term-by-term Taylor expansion of the product (Abel-Mertens-style
   750	manipulation).
   751	\item Product-to-sum identity, valid on absolute convergence.
   752	\end{itemize}
   753	
   754	Either approach requires roughly the same prerequisite chain:
   755	\Cref{prob:1}--\Cref{prob:3}, plus some elementary measure / convergence
   756	theory. \Cref{prob:4} is not needed for this specific theorem because $s=2$
   757	is in the half-plane of absolute convergence.
   758	\end{proof}
   759	
   760	\begin{remark}\label{rem:zetatwo}
   761	\Cref{thm:Basel} is a \emph{lower-bound} HoTT goal: it does not require
   762	analytic continuation or the functional equation. We propose it as the
   763	\emph{minimum viable target} for HoTT-native analytic NT — the analogue of
   764	``hello, world'' for our roadmap.
   765	\end{remark}
   766	
   767	%---------------------------------------------------------------
   768	\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
   769	
   770	\subsection{Brief history}
   771	
   772	The Langlands programme~\cite{Langlands1970} predicts a correspondence
   773	\[
   774	\{ \text{automorphic representations of } GL(n,\mathbb{A}_F) \}
   775	\,\longleftrightarrow\,
   776	\{ \text{$n$-dim Galois representations of } \mathrm{Gal}(\overline{F}/F) \}
   777	\]
   778	for a global field $F$. The number-field case ($F$ a number field) is
   779	analytic in nature; the function-field case ($F = \F_q(X)$ for a curve $X$)
   780	is geometric, hence the name \emph{geometric Langlands}.
   781	
   782	Geometric Langlands has a categorical formulation due to Beilinson--Drinfeld
   783	\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
   784	the existence of an equivalence
   785	\[
   786	\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \,\simeq\, \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X))
   787	\]
   788	of $(\infty,1)$-categories, where $G$ is a reductive group, $\mathsf{Bun}_G$
   789	its moduli stack of $G$-bundles, $G^\vee$ the Langlands dual, and
   790	$\mathsf{LocSys}$ the de Rham moduli of local systems. This was
   791	\textbf{proven} in 2024 by Gaitsgory, Raskin, Rozenblyum, Arinkin, Beraldo,
   792	Chen, Cheng, Faergeman, Lin, Lysenko in five papers
   793	\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
   794	
   795	\subsection{$(\infty,1)$-categories vs.\ HoTT}
   796	
   797	By Lurie's higher topos theory~\cite{Lurie2009HTT} and higher
   798	algebra~\cite{LurieHA}, $(\infty,1)$-categories
   799	admit a model in simplicial sets (quasi-categories). Cisinski et al.\
   800	\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
   801	foundations of $(\infty,1)$-category theory} in which $(\infty,1)$-categories
   802	are types satisfying a Segal condition.
   803	
   804	By Shulman's theorem~\cite{Shulman2019InfTopos}, every $(\infty,1)$-topos
   805	$\mathcal{X}$ admits HoTT as its internal language. Hence, in principle,
   806	the Gaitsgory equivalence is statable in HoTT \emph{internally to a fixed
   807	$(\infty,1)$-topos}.
   808	
   809	\begin{remark}\label{rem:internal}
   810	The catch is that the equivalence relates two \emph{different} topoi:
   811	$\mathsf{D}\text{-mod}(\mathsf{Bun}_G)$ is internal to a derived geometric
   812	topos; $\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee})$ is internal to a different
   813	derived geometric topos. A HoTT statement requires either an ambient
   814	2-topos / very-large-universe setup (in the spirit of Riehl--Verity directed
   815	type theory) or an external HoTT statement comparing two HoTT internal
   816	languages.
   817	\end{remark}
   818	
   819	\subsection{Geometric vs.\ analytic Langlands}
   820	
   821	The 2024 proof is \emph{geometric}: it lives in the world of moduli stacks
   822	over $\F_q$-curves or, in characteristic 0, over $\C$-curves with the de
   823	Rham stack (cf.~\cite{ClausenScholzeComplex} for the complex-analytic side). It says nothing directly about $\zeta$ or about analytic number
   824	theory.
   825	
   826	The \emph{analytic} Langlands programme (Etingof--Frenkel--Kazhdan
   827	\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the
   828	$L^2$-spectrum of certain operators on $\mathsf{Bun}_G(\C\text{-curve})$
   829	should match a spectral side built from $\mathsf{LocSys}_{G^\vee}$. This is
   830	the program closer to $\zeta(s) = 0$, but it is much less developed than
   831	the geometric version.
   832	
   833	\subsection{Implication for HoTT-native analytic NT}
   834	
   835	If a HoTT-native analytic Langlands programme could be developed, then
   836	$\zeta(s) = 0$ would translate to a statement about the spectrum of an
   837	operator on $\mathsf{Bun}_G(\Q)$, which is at least \emph{syntactically} a
   838	HoTT statement modulo standard moduli-stack constructions. We do not
   839	develop this direction in detail; we flag it as a concrete research direction.
   840	
   841	\subsection{Detailed example: $GL(1)$ Langlands and Hecke characters}\label{subsec:GL1}
   842	
   843	The simplest case of Langlands is $G = GL(1)$, and even this case shows
   844	where HoTT-native infrastructure is needed.
   845	
   846	\begin{example}[$GL(1)$ over $\Q$]
   847	Automorphic representations of $GL(1, \mathbb{A}_\Q)$ are continuous
   848	characters $\chi: \mathbb{A}_\Q^\times / \Q^\times \to \C^\times$. By
   849	class-field theory, these correspond to characters of $\mathrm{Gal}^{\mathrm{ab}}
   850	(\overline{\Q}/\Q)$, i.e., characters of the idele class group. The
   851	$L$-function attached to $\chi$ is
   852	\[
   853	L(s,\chi) = \prod_p \frac{1}{1 - \chi(p) p^{-s}}.
   854	\]
   855	For $\chi = 1$ trivial, this is $\zeta(s)$. The Langlands correspondence
   856	identifies $L(s,\chi)$ with the Artin $L$-function of the corresponding
   857	Galois character.
   858	\end{example}
   859	
   860	\begin{remark}[HoTT formulation of Hecke characters]
   861	A HoTT formulation requires:
   862	\begin{itemize}
   863	\item HoTT-native ideles $\mathbb{A}_\Q^\times$ as a restricted product
   864	over places. This is a HoTT-native colimit over a directed system of
   865	finite-place subgroups; HoTT-native completion at each place requires HoTT
   866	$p$-adic numbers~\cite{HoTTBook}.
   867	\item HoTT-native continuous group homomorphisms.
   868	\item HoTT-native $L$-function attached to character.
   869	\end{itemize}
   870	None of these are presently available, but each is plausibly a few thousand
   871	lines of HoTT code.
   872	\end{remark}
   873	
   874	\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
   875	
   876	We give a more precise version of the Gaitsgory equivalence as a HoTT
   877	internal statement. Let $\mathcal{X}$ be the $(\infty,1)$-topos of derived
   878	algebraic stacks over $\C$. By Shulman~\cite{Shulman2019InfTopos},
   879	$\mathcal{X}$ has an internal language extending HoTT (after fixing a
   880	universe-of-types issue).
   881	
   882	\begin{conjecture}[Gaitsgory equivalence in HoTT, schematic]\label{conj:GLCHoTT}
   883	In the internal language of $\mathcal{X}$, fix a smooth projective curve
   884	$X:\mathcal{X}$ over $\C$ and a reductive group $G:\mathcal{X}$. Define:
   885	\begin{align*}
   886	\mathsf{Bun}_G(X) &:\Type \quad \text{(moduli stack of $G$-bundles)}, \\
   887	\mathsf{LocSys}_{G^\vee}(X) &:\Type \quad \text{(moduli stack of $G^\vee$-local systems)}, \\
   888	\mathsf{D}\text{-mod}(\mathsf{Bun}_G) &:\Type \quad \text{(category of D-modules)}, \\
   889	\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}) &:\Type \quad \text{(category of quasi-coherent sheaves)}.
   890	\end{align*}
   891	There is a HoTT-internal equivalence of $\infty$-categories:
   892	\[
   893	\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \simeq \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X)).
   894	\]
   895	\end{conjecture}
   896	
   897	This is conjectural in the sense that we have not verified all the
   898	type-theoretic encodings; the underlying mathematical content is theorem
   899	(Gaitsgory et al.\ 2024).
   900	
   901	\begin{remark}\label{rem:univalence-glc}
   902	Univalence enters when one asks: \emph{which} equivalence? The
   903	Gaitsgory--Drinfeld equivalence comes equipped with a Hecke-eigensheaf
   904	property; under univalence, this distinguishes one canonical equivalence up
   905	to a contractible space of choices.
   906	\end{remark}
   907	
   908	\subsection{Physical interpretation: 4d $\mathcal{N}=4$ super-Yang--Mills}
   909	
   910	Kapustin and Witten~\cite{KapustinWitten2007} interpreted geometric
   911	Langlands as electric--magnetic duality (S-duality) of 4d
   912	$\mathcal{N}=4$ super-Yang--Mills compactified on a Riemann surface.
   913	This physical perspective suggests:
   914	\begin{itemize}
   915	\item A HoTT-native treatment of 4d $\mathcal{N}=4$ super-Yang--Mills via
   916	synthetic differential cohesive HoTT~\cite{Schreiber2013}.
   917	\item S-duality as an automorphism of the underlying type; eigenvalues of
   918	S-duality giving the spectrum.
   919	\item Connection to the synthesis paper's QFT formulation.
   920	\end{itemize}

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(ref|eqref|cite|label|begin|end|usepackage|documentclass|includegraphics|bibliography|bibitem|newcommand|DeclareMathOperator|operatorname|vspace|hspace|texorpdfstring|url|href)' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
1:\documentclass[12pt]{article}
4:\usepackage{amsmath, amssymb, amsfonts, amsthm}
7:\usepackage[margin=1in]{geometry}
10:\usepackage{graphicx}
11:\usepackage{xcolor}
14:\usepackage{tikz}
15:\usepackage{tikz-cd}
19:\usepackage{booktabs}
22:\usepackage{everypage}
25:\usepackage{newunicodechar}
44:\usepackage{hyperref}
45:\usepackage{cleveref}
64:    \begin{tikzpicture}[remember picture, overlay]
74:    \end{tikzpicture}
79:\newcommand{\C}{\mathbb{C}}
80:\newcommand{\R}{\mathbb{R}}
81:\newcommand{\Q}{\mathbb{Q}}
82:\newcommand{\Z}{\mathbb{Z}}
83:\newcommand{\N}{\mathbb{N}}
84:\newcommand{\F}{\mathbb{F}}
85:\newcommand{\HoTT}{\mathsf{HoTT}}
86:\newcommand{\Type}{\mathcal{U}}
87:\newcommand{\Prop}{\mathsf{Prop}}
88:\newcommand{\Set}{\mathsf{Set}}
89:\newcommand{\id}{\mathsf{id}}
90:\newcommand{\refl}{\mathsf{refl}}
91:\newcommand{\ua}{\mathsf{ua}}
92:\newcommand{\Path}{\mathsf{Path}}
93:\newcommand{\Cc}{\C_{\mathsf{c}}}
94:\newcommand{\Rc}{\R_{\mathsf{c}}}
95:\newcommand{\HIIT}{\mathsf{HIIT}}
96:\newcommand{\op}{\mathsf{op}}
97:\newcommand{\Aut}{\mathsf{Aut}}
98:\newcommand{\Hom}{\mathsf{Hom}}
99:\newcommand{\Map}{\mathsf{Map}}
100:\newcommand{\Eq}{\mathsf{Eq}}
101:\newcommand{\IsEquiv}{\mathsf{IsEquiv}}
102:\newcommand{\nCat}[1]{(\infty,#1)\text{-}\mathsf{Cat}}
103:\newcommand{\Tw}{\mathcal{T}}
104:\newcommand{\holo}{\mathsf{Holo}}
106:\newcommand{\esh}{\mathsf{S}}      % shape modality
107:\newcommand{\flatm}{\mathsf{b}}    % flat modality (avoid clash with \flat)
108:\newcommand{\sharpm}{\mathsf{S^\sharp}} % sharp modality
118:\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
122:\begin{document}
125:\begin{abstract}
157:\end{abstract}
161:\section{Introduction}\label{sec:intro}
165:In the synthesis paper concluding our prior series~\cite{Long2026Synthesis},
167:1859~paper~\cite{RiemannHypothesisOriginal},
173:\begin{quote}
180:\end{quote}
183:\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}
187:\begin{enumerate}
189:notion of meromorphicity. Constructive Cauchy reals~\cite{HoTTBook,Booij2020}
193:in the sense of univalence~\cite{Voevodsky2014}.
197:\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
206:\end{enumerate}
209:\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
220:\begin{itemize}
227:$(\infty,1)$-toposes and Lurie's higher topos theory~\cite{Lurie2009HTT,
237:\end{itemize}
240:\begin{itemize}
245:\end{itemize}
269:The Langlands programme~\cite{Langlands1970,GelbartLanglands1979} unifies
273:Langlands~\cite{Gaitsgory2024GLC} is the function-field analogue and was
289:\section{The Prerequisite Chain}\label{sec:prereq}
293:\subsection{HoTT-native real numbers \texorpdfstring{$\Rc$}{Rc}}
295:\begin{definition}[Cauchy reals, after the HoTT Book~\cite{HoTTBook}]\label{def:Rc}
299:\begin{align}
303:\end{align}
305:$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.
306:\end{definition}
308:\begin{remark}
313:\end{remark}
315:\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
318:\end{theorem}
320:\subsection{HoTT-native complex numbers \texorpdfstring{$\Cc$}{Cc}}
330:\begin{definition}[Univalent algebraic closure]\label{def:UAC}
340:\end{definition}
342:\begin{remark}[Plain-language gloss]\label{rem:UACplain}
351:\end{remark}
353:\begin{proposition}\label{prop:UACUnique}
359:\end{proposition}
361:\begin{proof}[Proof sketch]
368:algebraic-closure arguments~\cite{Mines1988}.
369:\end{proof}
389:\begin{definition}[Constructive holomorphicity]\label{def:holo}
398:\end{definition}
400:\begin{remark}[Synthetic alternative]\label{rem:synth}
401:In \emph{cohesive HoTT}~\cite{Shulman2018Cohesive}, the universe carries
406:\end{remark}
410:\begin{definition}[Dirichlet series]\label{def:Dirichlet}
418:\end{definition}
420:\begin{proposition}[HoTT-native; sketched]\label{prop:DirichletAlgebra}
424:\end{proposition}
426:\begin{proof}[Proof sketch]
431:\cite{Booij2020}.
432:\end{proof}
436:\begin{figure}[htbp]
438:\begin{tikzcd}[column sep=tiny, row sep=large]
443:\end{tikzcd}
448:\label{fig:chain}
449:\end{figure}
457:\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
462:\begin{enumerate}
471:\begin{itemize}
478:\end{itemize}
495:\end{enumerate}
497:\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
502:\begin{example}[$\sqrt{2}$ as Cauchy real]\label{ex:sqrt2}
509:\end{example}
511:\begin{example}[$e$ as Cauchy real]\label{ex:euler}
516:\end{example}
518:\begin{example}[$\pi$ as Cauchy real]\label{ex:pi}
523:\end{example}
529:\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
543:\begin{equation}\label{eq:zetaSeries}
546:\end{equation}
551:\begin{definition}[Specification of zeta as HIIT, candidate]\label{def:ZetaHIIT}
554:\begin{align}
562:\end{align}
569:\end{definition}
571:\begin{remark}\label{rem:ZetaHIITissues}
573:\begin{enumerate}
583:\end{enumerate}
587:\end{remark}
591:Recall the Euler product (\cite{Euler1737}):
596:\begin{definition}[Zeta via Euler product]\label{def:ZetaEuler}
603:\end{definition}
605:\begin{proposition}[Euler product, modulo convergence]\label{prop:Euler}
607:\end{proposition}
609:\begin{proof}[Proof sketch in HoTT]
621:\end{proof}
625:\begin{definition}[Meromorphic continuation, universal]\label{def:MeromCont}
632:\end{definition}
634:\begin{theorem}[Identity theorem, HoTT version]\label{thm:Identity}
638:\end{theorem}
640:\begin{proof}[Proof sketch]
645:\end{proof}
647:\begin{definition}[Zeta via universal property]\label{def:ZetaUP}
651:\end{definition}
655:\begin{theorem}[Conjectural equivalence]\label{thm:ZetaEquiv}
659:\end{theorem}
661:\begin{proof}[Proof sketch]
670:\end{proof}
674:\begin{theorem}[Functional equation, conjectured HoTT-native]\label{thm:FE}
679:\end{theorem}
681:\begin{proof}[Strategy]
685:\begin{itemize}
690:\end{itemize}
693:\end{proof}
697:\begin{definition}[Critical strip]
699:\end{definition}
701:\begin{definition}[Trivial zeros]
703:\end{definition}
705:\begin{conjecture}[Riemann hypothesis, HoTT statement]\label{conj:RH}
709:\end{conjecture}
713:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
718:\begin{theorem}[Basel problem]\label{thm:Basel}
720:\end{theorem}
722:\begin{proof}[Sketch of HoTT-native proof, modulo missing infrastructure]
732:\begin{itemize}
738:\end{itemize}
747:\begin{itemize}
752:\end{itemize}
758:\end{proof}
760:\begin{remark}\label{rem:zetatwo}
765:\end{remark}
768:\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
772:The Langlands programme~\cite{Langlands1970} predicts a correspondence
783:\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
793:\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
797:By Lurie's higher topos theory~\cite{Lurie2009HTT} and higher
798:algebra~\cite{LurieHA}, $(\infty,1)$-categories
800:\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
804:By Shulman's theorem~\cite{Shulman2019InfTopos}, every $(\infty,1)$-topos
809:\begin{remark}\label{rem:internal}
817:\end{remark}
823:Rham stack (cf.~\cite{ClausenScholzeComplex} for the complex-analytic side). It says nothing directly about $\zeta$ or about analytic number
827:\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the
841:\subsection{Detailed example: $GL(1)$ Langlands and Hecke characters}\label{subsec:GL1}
846:\begin{example}[$GL(1)$ over $\Q$]
858:\end{example}
860:\begin{remark}[HoTT formulation of Hecke characters]
862:\begin{itemize}
866:$p$-adic numbers~\cite{HoTTBook}.
869:\end{itemize}
872:\end{remark}
874:\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
878:algebraic stacks over $\C$. By Shulman~\cite{Shulman2019InfTopos},
882:\begin{conjecture}[Gaitsgory equivalence in HoTT, schematic]\label{conj:GLCHoTT}
885:\begin{align*}
890:\end{align*}
895:\end{conjecture}
901:\begin{remark}\label{rem:univalence-glc}
906:\end{remark}
910:Kapustin and Witten~\cite{KapustinWitten2007} interpreted geometric
914:\begin{itemize}
916:synthetic differential cohesive HoTT~\cite{Schreiber2013}.
920:\end{itemize}
924:\section{Condensed Mathematics and HoTT}\label{sec:condensed}
928:Clausen and Scholze~\cite{Scholze2019Condensed,ClausenScholze2024Analytic}
943:\begin{itemize}
951:\end{itemize}
955:\begin{problem}[Bridging condensed mathematics and HoTT]\label{prob:bridge}
958:\begin{itemize}
964:\end{itemize}
965:\end{problem}
972:\begin{definition}[Solid abelian group, condensed]
976:\end{definition}
982:\begin{definition}[HoTT-solid abelian group, candidate]\label{def:HoTTSolid}
985:\end{definition}
987:\begin{remark}
990:\end{remark}
992:\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
995:stacks~\cite{ClausenScholze2024SixFunctor,ClausenScholze2025AnalyticStacks}
1000:\begin{itemize}
1009:\end{itemize}
1011:\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
1014:\cite{Riehl2021Elements}.
1015:\end{problem}
1021:\subsection{Solid modules over $\Z$ and $p$-adic interaction}\label{subsec:solidp}
1034:\begin{conjecture}[$p$-adic zeta function in HoTT]\label{conj:padicZeta}
1039:\end{conjecture}
1041:\begin{remark}\label{rem:padicEasier}
1046:\end{remark}
1049:\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
1053:The 2025 paper~\cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:
1054:\begin{enumerate}
1067:\begin{verbatim}
1070:\end{verbatim}
1071:\end{enumerate}
1077:\begin{itemize}
1084:\end{itemize}
1088:\begin{itemize}
1099:\end{itemize}
1108:\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
1115:\begin{verbatim}
1117:\end{verbatim}
1128:\begin{verbatim}
1132:\end{verbatim}
1138:\begin{verbatim}
1141:\end{verbatim}
1147:\begin{verbatim}
1150:\end{verbatim}
1153:\subsection{Quantitative comparison}\label{subsec:LSquant}
1155:\begin{center}
1156:\begin{tabular}{lcc}
1170:\end{tabular}
1171:\end{center}
1175:\begin{remark}[Caveat about line-count estimates]
1183:\cite{Booij2020} for HoTT-native analysis benchmarks.
1184:\end{remark}
1187:\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
1195:\begin{problem}\label{prob:1}
1199:\end{problem}
1205:\begin{problem}\label{prob:2}
1208:\end{problem}
1214:\begin{problem}\label{prob:3}
1217:\end{problem}
1223:\begin{problem}\label{prob:4}
1228:\end{problem}
1233:\begin{problem}\label{prob:5}
1238:\end{problem}
1243:\begin{problem}\label{prob:6}
1248:\end{problem}
1253:\begin{figure}[htbp]
1255:\begin{tikzcd}[column sep=small, row sep=large]
1260:\end{tikzcd}
1262:\label{fig:roadmap}
1263:\end{figure}
1267:\begin{itemize}
1275:\end{itemize}
1281:\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
1296:\begin{remark}\label{rem:decidability}
1301:\end{remark}
1303:\begin{remark}\label{rem:LEM}
1307:\end{remark}
1317:\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
1322:\end{conjecture}
1330:\begin{theorem}[von Koch, expected HoTT version]\label{thm:vonKoch}
1336:\end{theorem}
1352:\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
1356:\begin{itemize}
1365:\end{itemize}
1373:\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
1378:\begin{example}[Effective: $\zeta$ on the line $\mathrm{Re}(s) > 1$]
1383:\end{example}
1385:\begin{example}[Ineffective: $\zeta$ in the critical strip]
1389:\end{example}
1391:\begin{example}[Ineffective: trivial zero locations]
1394:\end{example}
1400:\section{Discussion}\label{sec:discussion}
1408:\begin{itemize}
1413:\end{itemize}
1422:\begin{enumerate}
1429:\end{enumerate}
1434:\emph{Differential cohesive HoTT}~\cite{Schreiber2013, Wellen2018} extends
1437:\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
1447:\begin{itemize}
1455:\end{itemize}
1459:\begin{enumerate}
1465:\item Use the synthesis from~\cite{Long2026Synthesis} to attack
1468:\cite{EFK2025AnalyticLanglands} in HoTT.
1469:\end{enumerate}
1474:Shulman, Verity, North~\cite{Riehl2021Elements}. DTT extends HoTT with a
1479:\begin{itemize}
1487:\end{itemize}
1491:\emph{Synthetic algebraic geometry}~\cite{CherubiniRijke2024} works inside
1494:\begin{itemize}
1499:\end{itemize}
1510:\begin{enumerate}
1522:\end{enumerate}
1525:\section{Conclusion}\label{sec:conclusion}
1554:\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
1562:\begin{equation}\label{eq:univ}
1564:\end{equation}
1566:This is the standard univalence axiom of~\cite{HoTTBook}. It implies
1572:\begin{itemize}
1577:\end{itemize}
1582:\cite{Shulman2018Cohesive} adds:
1583:\begin{itemize}
1589:\end{itemize}
1597:\begin{equation}\label{eq:choice}
1600:\end{equation}
1607:\begin{equation}\label{eq:lem}
1609:\end{equation}
1614:\section{Appendix: Companion code overview}\label{app:code}
1619:\begin{itemize}
1630:\end{itemize}
1635:\begin{itemize}
1638:\end{itemize}
1645:\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}
1653:representation~\cite{Hurwitz1882}:
1670:\begin{enumerate}
1682:\end{enumerate}
1692:\begin{itemize}
1700:\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
1702:\end{itemize}
1704:\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}
1711:\begin{center}
1712:\begin{tabular}{ll}
1736:\end{tabular}
1737:\end{center}
1744:\bibliographystyle{plain}
1745:\begin{thebibliography}{99}
1747:\bibitem{HoTTBook}
1750:Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}
1752:\bibitem{Long2026Synthesis}
1758:\bibitem{Voevodsky2014}
1763:\bibitem{Booij2020}
1768:\bibitem{Mines1988}
1773:\bibitem{Shulman2018Cohesive}
1778:\bibitem{Shulman2019InfTopos}
1783:\bibitem{Lurie2009HTT}
1788:\bibitem{LurieHA}
1791:Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}
1793:\bibitem{Gaitsgory2024GLC}
1797:\url{https://www.mpim-bonn.mpg.de/gaitsgde/GLC/}
1799:\bibitem{BeilinsonDrinfeld2004}
1804:\bibitem{LoefflerStoll2025}
1809:\bibitem{Scholze2019Condensed}
1813:\url{https://www.math.uni-bonn.de/people/scholze/Condensed.pdf}
1815:\bibitem{ClausenScholze2024Analytic}
1820:\bibitem{ClausenScholze2024SixFunctor}
1825:\bibitem{ClausenScholze2025AnalyticStacks}
1830:\bibitem{ClausenScholzeComplex}
1833:\url{https://people.mpim-bonn.mpg.de/scholze/Complex.pdf}, 2022.
1835:\bibitem{EFK2025AnalyticLanglands}
1841:\bibitem{CisinskiKKNS2025}
1846:\bibitem{Langlands1970}
1851:\bibitem{GelbartLanglands1979}
1856:\bibitem{Schreiber2013}
1861:\bibitem{Wellen2018}
1866:\bibitem{ScreiberShulman2014QFT}
1871:\bibitem{Euler1737}
1876:\bibitem{RiemannHypothesisOriginal}
1882:\bibitem{KapustinWitten2007}
1887:\bibitem{Riehl2021Elements}
1892:\bibitem{CherubiniRijke2024}
1895:Manuscript, \url{https://github.com/felixwellen/synthetic-zariski}, 2024.
1897:\bibitem{Hurwitz1882}
1902:\end{thebibliography}
1904:\end{document}

exec
/usr/local/bin/zsh -lc "rg -n '("'^!|LaTeX Warning|Package .*Warning|Overfull|Underfull|Undefined|undefined|Citation|Reference|Label|Missing|Runaway|Emergency stop|Fatal error|Output written)'"' papers/latex/langlands-analytic-number-theory.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
511:Package everypage Warning: Functionality similar to this package has recently
517:Package everypage Warning: You appear to be running a version of LaTeX
530:Package newunicodechar Warning: Redefining Unicode character on input line 33.
533:Package newunicodechar Warning: Redefining Unicode character on input line 39.
785:Overfull \hbox (7.9274pt too wide) in paragraph at lines 203--206
795:Overfull \hbox (8.4668pt too wide) in paragraph at lines 519--523
804:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
808:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
812:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
817:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
821:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
825:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
830:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
834:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
838:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
843:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
847:Overfull \hbox (0.63345pt too wide) in paragraph at lines 735--737
853:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
857:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
861:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
865:Overfull \hbox (21.7494pt too wide) detected at line 777
872:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
876:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
880:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
885:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
889:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
894:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
898:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
903:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
907:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
911:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
916:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
920:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
924:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
928:Package hyperref Warning: Token not allowed in a PDF string (Unicode):
932:Overfull \hbox (3.28032pt too wide) in paragraph at lines 1081--1083
938:Overfull \hbox (0.54904pt too wide) in paragraph at lines 1089--1093
944:Overfull \hbox (7.29324pt too wide) in paragraph at lines 1359--1361
953:Overfull \hbox (0.88237pt too wide) in paragraph at lines 1628--1630
1002:Output written on langlands-analytic-number-theory.pdf (32 pages, 431789 bytes)

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '921,1320p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   921	We flag this as a research direction; we do not develop it further here.
   922	
   923	%---------------------------------------------------------------
   924	\section{Condensed Mathematics and HoTT}\label{sec:condensed}
   925	
   926	\subsection{Pyknotic / condensed sets}
   927	
   928	Clausen and Scholze~\cite{Scholze2019Condensed,ClausenScholze2024Analytic}
   929	defined the \emph{condensed sets} as sheaves on the site of profinite sets
   930	with finite jointly-surjective covers. Pyknotic sets, due to Barwick--Haine,
   931	are an essentially equivalent variant. The category $\mathsf{Cond}$ is a
   932	topos, and $\mathsf{Cond}(\mathrm{Ab})$ — condensed abelian groups — has
   933	\emph{much better homological properties} than topological abelian groups.
   934	
   935	The crucial example: $\C$ becomes a \emph{condensed ring} which is
   936	analytic-friendly in a way that $\C$-as-topological-ring is not. The
   937	6-functor formalism of analytic stacks (Clausen--Scholze 2024) gives a
   938	geometric foundation for analytic-number-theoretic objects.
   939	
   940	\subsection{Why this matters for $\zeta$}
   941	
   942	The condensed approach gives a uniform setting in which:
   943	\begin{itemize}
   944	\item Smooth manifolds, complex-analytic spaces, schemes, formal schemes,
   945	adic spaces, and rigid spaces all live as condensed objects.
   946	\item Cohomology operations (six functors: $f^*, f_*, f_!, f^!, \otimes,
   947	\mathrm{Hom}$) all exist with clean adjunction structure.
   948	\item $\zeta$, viewed as a meromorphic function on $\C$, becomes an object
   949	in $\mathsf{Cond}(\mathrm{Ab})$-modules over a suitable condensed analytic
   950	stack.
   951	\end{itemize}
   952	
   953	\subsection{Bridging to HoTT}
   954	
   955	\begin{problem}[Bridging condensed mathematics and HoTT]\label{prob:bridge}
   956	Construct an $(\infty,1)$-topos $\mathcal{X}$ with an internal language
   957	extending HoTT, in which:
   958	\begin{itemize}
   959	\item Condensed sets embed fully faithfully.
   960	\item Solid abelian groups (in the sense of Clausen--Scholze) are an
   961	internal type.
   962	\item Holomorphic / meromorphic functions on $\C$ correspond to morphisms
   963	of condensed analytic stacks.
   964	\end{itemize}
   965	\end{problem}
   966	
   967	\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others
   968	has explored the syntactic side, but no complete bridge exists.
   969	
   970	\subsection{Solid abelian groups in HoTT, sketch}
   971	
   972	\begin{definition}[Solid abelian group, condensed]
   973	A condensed abelian group $A$ is \emph{solid} if for every profinite set
   974	$S$ and every continuous $S \to A$ which is null on the closure of zero,
   975	the induced map factors through $A$ uniquely.
   976	\end{definition}
   977	
   978	A HoTT-native version would replace ``profinite set'' with a HoTT-internal
   979	type (e.g., a limit of finite types in $\mathcal{U}$) and ``continuous''
   980	with the appropriate cohesive-HoTT modality. We sketch a candidate:
   981	
   982	\begin{definition}[HoTT-solid abelian group, candidate]\label{def:HoTTSolid}
   983	Working in cohesive HoTT, an abelian group $A:\mathcal{U}$ is \emph{HoTT-solid}
   984	if $\esh(A) \simeq A$ and the map $\flat A \to A$ is an equivalence.
   985	\end{definition}
   986	
   987	\begin{remark}
   988	\Cref{def:HoTTSolid} is speculative; it has not been verified to match the
   989	condensed definition. It is offered as a starting point for future work.
   990	\end{remark}
   991	
   992	\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
   993	
   994	The Clausen--Scholze 6-functor formalism for analytic
   995	stacks~\cite{ClausenScholze2024SixFunctor,ClausenScholze2025AnalyticStacks}
   996	is expressed in $(\infty,1)$-categorical language as follows. Given a category
   997	$\mathcal{C}$ of geometric objects (analytic stacks) with two classes of
   998	morphisms ``proper'' $\mathsf{P}$ and ``open'' $\mathsf{O}$, a 6-functor
   999	formalism consists of:
  1000	\begin{itemize}
  1001	\item A symmetric monoidal $(\infty,1)$-category $\mathcal{D}(X)$ for each
  1002	$X \in \mathcal{C}$, of $\infty$-sheaves on $X$.
  1003	\item For each morphism $f: X \to Y$ in $\mathcal{C}$, an adjunction
  1004	$f^* \dashv f_*: \mathcal{D}(Y) \rightleftarrows \mathcal{D}(X)$.
  1005	\item For each $f$ in $\mathsf{P} \cup \mathsf{O}$, an additional pair
  1006	$f_! \dashv f^!: \mathcal{D}(X) \rightleftarrows \mathcal{D}(Y)$.
  1007	\item Coherent base change, projection formula, and proper / open
  1008	recollement.
  1009	\end{itemize}
  1010	
  1011	\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
  1012	Express the 6-functor formalism in HoTT internal language. The natural
  1013	setting: $(\infty,1)$-topoi indexed over a directed type / $(\infty,2)$-base
  1014	\cite{Riehl2021Elements}.
  1015	\end{problem}
  1016	
  1017	A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
  1018	HoTT framework for analytic objects (including $\zeta$ as a section of a
  1019	suitable line bundle).
  1020	
  1021	\subsection{Solid modules over $\Z$ and $p$-adic interaction}\label{subsec:solidp}
  1022	
  1023	In condensed mathematics, the category of solid abelian groups
  1024	$\mathrm{Solid}_{\Z}$ contains $p$-adic objects naturally:
  1025	\[
  1026	\Z_p \in \mathrm{Solid}_{\Z}, \qquad \Q_p \in \mathrm{Solid}_{\Z}, \qquad
  1027	\C_p \in \mathrm{Solid}_{\Z}.
  1028	\]
  1029	For $\Z_p$, the topology comes from the profinite structure
  1030	$\Z_p = \varprojlim_n \Z/p^n$. For $\C_p$, completing the algebraic closure
  1031	of $\Q_p$ uses metric completion plus algebraic closure plus completion
  1032	again — this is awkward classically and equally awkward in HoTT.
  1033	
  1034	\begin{conjecture}[$p$-adic zeta function in HoTT]\label{conj:padicZeta}
  1035	A HoTT-native realisation of the Kubota--Leopoldt $p$-adic zeta function
  1036	$\zeta_p:\Z_p \setminus \{1\} \to \Q_p$ is plausibly easier than the
  1037	archimedean $\zeta$, because the $p$-adic case avoids analytic continuation
  1038	and uses interpolation of values $\zeta(1-n)$ for $n \geq 1$.
  1039	\end{conjecture}
  1040	
  1041	\begin{remark}\label{rem:padicEasier}
  1042	\Cref{conj:padicZeta} is a research suggestion: \emph{start with the $p$-adic
  1043	case}. Loeffler--Stoll formalize the archimedean case; the $p$-adic case has
  1044	not yet been comprehensively formalized in any proof assistant. HoTT could
  1045	be the first.
  1046	\end{remark}
  1047	
  1048	%---------------------------------------------------------------
  1049	\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
  1050	
  1051	\subsection{What Loeffler--Stoll have}
  1052	
  1053	The 2025 paper~\cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:
  1054	\begin{enumerate}
  1055	\item The Riemann zeta function $\zeta$ via Hurwitz zeta and analytic
  1056	continuation, $\sim$ 3300 lines.
  1057	\item Dirichlet $L$-functions $L(s,\chi)$ for primitive characters $\chi$.
  1058	\item The Euler product $\zeta(s) = \prod_p (1-p^{-s})^{-1}$ on
  1059	$\mathrm{Re}(s)>1$.
  1060	\item Analytic continuation via Mellin / theta-function method.
  1061	\item The functional equation $\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)
  1062	\cos(\pi s/2)\zeta(s)$.
  1063	\item Basel: $\zeta(2) = \pi^2/6$.
  1064	\item Non-vanishing on $\mathrm{Re}(s) \geq 1$.
  1065	\item Dirichlet's theorem on primes in APs.
  1066	\item Formal statement of the Riemann hypothesis:
  1067	\begin{verbatim}
  1068	def RiemannHypothesis : Prop :=
  1069	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1070	\end{verbatim}
  1071	\end{enumerate}
  1072	
  1073	This is roughly $10^4$ lines total across the relevant Mathlib files.
  1074	
  1075	\subsection{What Lean / Mathlib provides that HoTT lacks}
  1076	
  1077	\begin{itemize}
  1078	\item Classical $\C$ as a complete normed field, with Cauchy integrals.
  1079	\item Mathlib's \texttt{Complex.differentiable}, \texttt{HolomorphicAt},
  1080	\texttt{ContourIntegral}.
  1081	\item Mellin transforms, Gamma function, Riemann zeta function as
  1082	\texttt{ZetaFunction.mathlib}.
  1083	\item All of measure theory, including Lebesgue integration on $\C$.
  1084	\end{itemize}
  1085	
  1086	\subsection{What HoTT could offer}
  1087	
  1088	\begin{itemize}
  1089	\item \emph{Univalence}: the multiple definitions of $\zeta$
  1090	(\Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}) become
  1091	\emph{propositionally equal} via univalence, not merely
  1092	``equal-up-to-some-isomorphism''.
  1093	\item \emph{Higher inductive types}: the Riemann surface of $\zeta$ (or of
  1094	$L$-functions) is naturally a HIT, capturing branch-cut data
  1095	syntactically.
  1096	\item \emph{Internal $(\infty,1)$-topos language}: the Langlands functor and
  1097	its adjoints can be expressed in the same language as the underlying
  1098	analytic objects.
  1099	\end{itemize}
  1100	
  1101	\subsection{Strategy: HoTT as classical-foundation transport}
  1102	
  1103	A pragmatic approach: \emph{transport} the Loeffler--Stoll Lean
  1104	formalization to HoTT \emph{not} by re-doing all the analysis, but by
  1105	treating $\C$ axiomatically as a HoTT type with the same operations and
  1106	properties as Mathlib's $\C$. We sketch this in \Cref{sec:roadmap}.
  1107	
  1108	\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
  1109	
  1110	To make the comparison tangible, we present the key Lean signatures from
  1111	Loeffler--Stoll alongside conjectured HoTT analogues.
  1112	
  1113	\paragraph{The zeta function itself.}
  1114	In Mathlib (Loeffler--Stoll):
  1115	\begin{verbatim}
  1116	noncomputable def riemannZeta : ℂ → ℂ
  1117	\end{verbatim}
  1118	In HoTT (proposed):
  1119	\[
  1120	\zeta : \Cc \setminus \{1\} \to \Cc \quad \text{(with explicit pole at $s=1$)}.
  1121	\]
  1122	Here Lean uses ``noncomputable'' to encode that $\zeta$ is defined by
  1123	non-effective analytic continuation. HoTT, lacking a built-in concept of
  1124	``noncomputable'', must encode this via a propositional truncation.
  1125	
  1126	\paragraph{The functional equation.}
  1127	In Mathlib:
  1128	\begin{verbatim}
  1129	theorem riemannZeta_one_sub : ∀ (s : ℂ), s ≠ 0 → s ≠ 1 →
  1130	  riemannZeta (1 - s) = 2 * (2 * π) ^ (-s) * Gamma s
  1131	                      * cos (π * s / 2) * riemannZeta s
  1132	\end{verbatim}
  1133	HoTT analogue (proposed): exactly the corresponding $\Pi$-statement, modulo
  1134	the conditional $s \neq 0 \wedge s \neq 1$.
  1135	
  1136	\paragraph{Non-vanishing on $\mathrm{Re}(s) \geq 1$.}
  1137	In Mathlib:
  1138	\begin{verbatim}
  1139	theorem riemannZeta_ne_zero_of_one_le_re :
  1140	  ∀ (s : ℂ), 1 ≤ s.re → s ≠ 1 → riemannZeta s ≠ 0
  1141	\end{verbatim}
  1142	HoTT analogue: same statement; the proof uses the Euler product (no
  1143	analytic continuation), so should be tractable HoTT-natively.
  1144	
  1145	\paragraph{Riemann hypothesis.}
  1146	In Mathlib:
  1147	\begin{verbatim}
  1148	def RiemannHypothesis : Prop :=
  1149	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1150	\end{verbatim}
  1151	HoTT analogue: \Cref{conj:RH}.
  1152	
  1153	\subsection{Quantitative comparison}\label{subsec:LSquant}
  1154	
  1155	\begin{center}
  1156	\begin{tabular}{lcc}
  1157	\toprule
  1158	Theorem & Lean lines (Loeffler--Stoll) & Est.\ HoTT complexity \\
  1159	\midrule
  1160	$\zeta$ definition & 200 & $\sim 2$--$3\times$ \\
  1161	Analytic continuation & 3300 & $\sim 2$--$3\times$ \\
  1162	Functional equation & 800 & $\sim 2$--$3\times$ \\
  1163	Euler product & 200 & $\sim 2\times$ \\
  1164	$\zeta$ non-vanishing on $\mathrm{Re}(s) \geq 1$ & 600 & $\sim 2\times$ \\
  1165	Dirichlet $L$-functions & 1500 & $\sim 2\times$ \\
  1166	Dirichlet's theorem & 800 & $\sim 2\times$ \\
  1167	\midrule
  1168	Total & $\sim$7400 lines & $\sim 2$--$3\times$ overhead \\
  1169	\bottomrule
  1170	\end{tabular}
  1171	\end{center}
  1172	
  1173	\medskip
  1174	
  1175	\begin{remark}[Caveat about line-count estimates]
  1176	The right-hand column is highly speculative; we present it as a
  1177	\emph{complexity factor} rather than absolute counts. The factor reflects
  1178	the rough overhead of HoTT-native analysis (no classical Mathlib measure
  1179	theory, no built-in Lebesgue integration, manual constructive analysis)
  1180	plus an honest correction for the immaturity of HoTT analysis libraries.
  1181	Actual numbers will diverge from these estimates by easily $\pm 50\%$ as
  1182	HoTT analysis libraries mature. The estimates are calibrated against
  1183	\cite{Booij2020} for HoTT-native analysis benchmarks.
  1184	\end{remark}
  1185	
  1186	%---------------------------------------------------------------
  1187	\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
  1188	
  1189	We propose six concrete sub-problems whose collective resolution would yield
  1190	a HoTT-native proof of $\zeta(2) = \pi^2/6$ and a formal HoTT statement of
  1191	the Riemann hypothesis.
  1192	
  1193	\subsection*{Sub-problem 1: HoTT-native $\Cc$ with full algebraic-closure axiom}
  1194	\addcontentsline{toc}{subsection}{Sub-problem 1: HoTT-native complex numbers}
  1195	\begin{problem}\label{prob:1}
  1196	Construct a HoTT type $\Cc:\mathcal{U}$ that is provably an algebraic closure
  1197	of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
  1198	it admits the standard topology and metric structure.
  1199	\end{problem}
  1200	\textbf{Status:} partially done in HoTT Book setting; algebraic closure not
  1201	yet done.
  1202	
  1203	\subsection*{Sub-problem 2: HoTT-native holomorphic functions}
  1204	\addcontentsline{toc}{subsection}{Sub-problem 2: HoTT-native holomorphic functions}
  1205	\begin{problem}\label{prob:2}
  1206	Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
  1207	Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
  1208	\end{problem}
  1209	\textbf{Status:} possible by direct constructive analysis. Estimated effort:
  1210	$\sim$5000 lines of Agda or Cubical Agda.
  1211	
  1212	\subsection*{Sub-problem 3: HoTT-native Dirichlet series machinery}
  1213	\addcontentsline{toc}{subsection}{Sub-problem 3: HoTT-native Dirichlet series}
  1214	\begin{problem}\label{prob:3}
  1215	Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
  1216	construct the basic operations: shift, multiplication, logarithm, derivative.
  1217	\end{problem}
  1218	\textbf{Status:} our companion Haskell code provides a finite-precision
  1219	prototype; HoTT formalisation pending.
  1220	
  1221	\subsection*{Sub-problem 4: HoTT-native analytic continuation}
  1222	\addcontentsline{toc}{subsection}{Sub-problem 4: HoTT-native analytic continuation}
  1223	\begin{problem}\label{prob:4}
  1224	Formalize the analytic-continuation theorem: a holomorphic function on a
  1225	connected open admitting a power-series at one boundary point extends
  1226	holomorphically to a neighbourhood of that point. Apply to $\zeta$ to obtain
  1227	\Cref{def:ZetaUP}.
  1228	\end{problem}
  1229	\textbf{Status:} this is the key technical bottleneck.
  1230	
  1231	\subsection*{Sub-problem 5: HoTT-native functional equation}
  1232	\addcontentsline{toc}{subsection}{Sub-problem 5: HoTT-native functional equation}
  1233	\begin{problem}\label{prob:5}
  1234	Prove the functional equation \Cref{thm:FE} in HoTT, using either
  1235	(a) the Mellin-transform / theta-function method, or (b) Riemann's contour
  1236	integral method, or (c) a synthetic cohesive-HoTT proof using analytic-stack
  1237	duality.
  1238	\end{problem}
  1239	\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
  1240	
  1241	\subsection*{Sub-problem 6: HoTT-native formal RH statement}
  1242	\addcontentsline{toc}{subsection}{Sub-problem 6: HoTT-native RH statement}
  1243	\begin{problem}\label{prob:6}
  1244	Write down a HoTT proposition $\mathrm{RH}:\Prop$ such that $\mathrm{RH}$
  1245	inhabits if and only if every non-trivial zero of $\zeta$ has real part
  1246	$1/2$. Verify this is the same statement as the classical RH, modulo the
  1247	ambient model.
  1248	\end{problem}
  1249	\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
  1250	
  1251	\subsection{Composition diagram}
  1252	
  1253	\begin{figure}[htbp]
  1254	\centering
  1255	\begin{tikzcd}[column sep=small, row sep=large]
  1256	\text{Sub-prob 1} \arrow[r] \arrow[dr] & \text{Sub-prob 2} \arrow[d] & \\
  1257	& \text{Sub-prob 3} \arrow[r] & \text{Sub-prob 4} \arrow[d] \\
  1258	& & \text{Sub-prob 5} \arrow[d] \\
  1259	& & \text{Sub-prob 6}
  1260	\end{tikzcd}
  1261	\caption{Dependency graph for the six sub-problems.}
  1262	\label{fig:roadmap}
  1263	\end{figure}
  1264	
  1265	\subsection{Estimated effort and milestones}
  1266	
  1267	\begin{itemize}
  1268	\item \Cref{prob:1}: $\sim$1000 lines, 1--2 graduate-student-years.
  1269	\item \Cref{prob:2}: $\sim$5000 lines, 2--3 g-s-y.
  1270	\item \Cref{prob:3}: $\sim$1500 lines, 1 g-s-y.
  1271	\item \Cref{prob:4}: $\sim$3000 lines, 2--3 g-s-y; key conceptual work.
  1272	\item \Cref{prob:5}: $\sim$5000 lines, 2 g-s-y.
  1273	\item \Cref{prob:6}: $\sim$200 lines, weeks. The hard part is the
  1274	infrastructure, not the statement.
  1275	\end{itemize}
  1276	
  1277	Total: $\sim$15000 lines, 8--12 graduate-student-years. Comparable to the
  1278	total effort behind Loeffler--Stoll plus its Mathlib dependencies.
  1279	
  1280	%---------------------------------------------------------------
  1281	\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
  1282	
  1283	\subsection{Modal-logical status of RH in HoTT}
  1284	
  1285	\Cref{conj:RH} states $\Pi(s:\Cc).\, P(s) \to Q(s)$, where $P$ and $Q$ are
  1286	propositions. By the propositional structure, $\mathrm{RH}$ is itself a
  1287	proposition (in HoTT-Set sense, an $(-1)$-truncated type).
  1288	
  1289	In particular, $\mathrm{RH}$ is either inhabited or empty; we cannot have
  1290	``two non-equivalent proofs'' of RH. This is in contrast to a structural
  1291	statement like ``the type of complex numbers admits an algebraic structure''
  1292	which has no such uniqueness.
  1293	
  1294	\subsection{Decidability and constructivity}
  1295	
  1296	\begin{remark}\label{rem:decidability}
  1297	$\mathrm{RH}$ is \emph{not} decidable in HoTT: we have no algorithm
  1298	producing an inhabitant or refutation. This is consistent with
  1299	constructivity, since $\mathrm{RH}$ is a $\Pi$-statement over an
  1300	uncountable type.
  1301	\end{remark}
  1302	
  1303	\begin{remark}\label{rem:LEM}
  1304	Under classical logic ($\mathrm{LEM}$), $\mathrm{RH} \vee \neg\,\mathrm{RH}$
  1305	is inhabited; this is a consequence of $\mathrm{LEM}$, not a constructive
  1306	theorem.
  1307	\end{remark}
  1308	
  1309	\subsection{Connections to the Langlands programme}
  1310	
  1311	The Riemann hypothesis is a special case of the Generalized Riemann
  1312	Hypothesis (GRH): all non-trivial zeros of all $L$-functions $L(s,\chi)$
  1313	attached to primitive Dirichlet characters $\chi$ lie on
  1314	$\mathrm{Re}(s) = 1/2$. The Langlands programme conjecturally extends this
  1315	to automorphic $L$-functions $L(s,\pi)$.
  1316	
  1317	\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
  1318	\[
  1319	\Pi(\pi).\, \Pi(s:\Cc).\, L(s,\pi) = 0 \to
  1320	\neg\,\mathsf{trivialZero}_\pi(s) \to \mathrm{Re}(s) = 1/2.

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1321,1645p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1321	\]
  1322	\end{conjecture}
  1323	
  1324	In a HoTT framework where automorphic representations are types in a
  1325	suitable $(\infty,1)$-topos, \Cref{conj:GRH} is a $\Pi\Pi\Pi$-statement —
  1326	syntactically clean, semantically deep.
  1327	
  1328	\subsection{The von Koch theorem in HoTT}
  1329	
  1330	\begin{theorem}[von Koch, expected HoTT version]\label{thm:vonKoch}
  1331	Conditional on \Cref{conj:RH}, the prime-counting function $\pi(x)$
  1332	satisfies
  1333	\[
  1334	|\pi(x) - \mathrm{Li}(x)| \in O(\sqrt{x} \log x).
  1335	\]
  1336	\end{theorem}
  1337	
  1338	This connects the analytic statement $\mathrm{RH}$ to a discrete one. A
  1339	HoTT-native proof would proceed via the explicit formula for $\pi(x)$ in
  1340	terms of zeros of $\zeta$, all of which lives downstream of
  1341	\Cref{prob:1}--\Cref{prob:6}.
  1342	
  1343	\subsection{What if RH is independent of HoTT-set theory?}
  1344	
  1345	A speculative possibility: $\mathrm{RH}$ might be independent of (some
  1346	extension of) HoTT, similar to the way the continuum hypothesis is
  1347	independent of ZFC. In that case, HoTT might admit two consistent
  1348	extensions: $\mathrm{HoTT} + \mathrm{RH}$ and $\mathrm{HoTT} + \neg\,\mathrm{RH}$.
  1349	This is purely speculative and reflects no current consensus; it is offered
  1350	only as a contrast with the classical view that RH ``simply has a truth value''.
  1351	
  1352	\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
  1353	
  1354	Classical analytic number theory has many results about the distribution of
  1355	zeros of $\zeta$ short of RH:
  1356	\begin{itemize}
  1357	\item \textbf{Hadamard / de la Vall\'ee-Poussin (1896):} $\zeta(s) \neq 0$
  1358	on $\mathrm{Re}(s) = 1$. Formalized in Lean by Loeffler--Stoll.
  1359	\item \textbf{Vinogradov-Korobov:} explicit zero-free region $\mathrm{Re}(s) >
  1360	1 - C/(\log|t|)^{2/3}(\log\log|t|)^{1/3}$.
  1361	\item \textbf{Selberg's density theorem:} the proportion of zeros within
  1362	distance $\delta$ of the critical line is $\geq 1 - O(\delta^{-1})$.
  1363	\item \textbf{Levinson--Conrey:} at least $40\%$ of zeros are on the
  1364	critical line.
  1365	\end{itemize}
  1366	
  1367	Each of these is, in principle, a HoTT-native theorem once we have
  1368	\Cref{prob:1}--\Cref{prob:5}. In particular, the $\mathrm{Re}(s) = 1$
  1369	non-vanishing requires only the Euler product and basic
  1370	inequalities — no analytic continuation. This is the natural \emph{second}
  1371	target after \Cref{thm:Basel}.
  1372	
  1373	\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
  1374	
  1375	A subtle point about HoTT: \emph{some} statements about $\zeta$ are
  1376	naturally effective (algorithmic), while others are not.
  1377	
  1378	\begin{example}[Effective: $\zeta$ on the line $\mathrm{Re}(s) > 1$]
  1379	The map $s \mapsto \sum_{n \leq N} n^{-s}$ for large $N$ provides an
  1380	$\epsilon$-approximation to $\zeta(s)$ with explicit $N(\epsilon, s)$
  1381	bounds. This is HoTT-native, computable, and compatible with $\Rc$ Cauchy
  1382	moduli.
  1383	\end{example}
  1384	
  1385	\begin{example}[Ineffective: $\zeta$ in the critical strip]
  1386	For $0 < \mathrm{Re}(s) < 1$, the Dirichlet series diverges. Computing
  1387	$\zeta(s)$ requires the Riemann--Siegel formula or similar, which involves
  1388	contour integration. HoTT-native version would require \Cref{prob:4}.
  1389	\end{example}
  1390	
  1391	\begin{example}[Ineffective: trivial zero locations]
  1392	The trivial zeros at $s = -2, -4, -6, \ldots$ are \emph{deduced} from the
  1393	functional equation; their existence requires \Cref{prob:5}.
  1394	\end{example}
  1395	
  1396	These distinctions matter for HoTT formalization: parts of the theory are
  1397	algorithmic-friendly (Cubical Agda can compute them), other parts are not.
  1398	
  1399	%---------------------------------------------------------------
  1400	\section{Discussion}\label{sec:discussion}
  1401	
  1402	\subsection{Why is analytic NT specifically hard?}
  1403	
  1404	Algebraic objects (rings, modules, groups, schemes) are \emph{small}: their
  1405	data fit on a finite page or in a computer's memory. Analytic objects
  1406	($\R$, $\C$, holomorphic functions, contour integrals) are \emph{large} in
  1407	two senses:
  1408	\begin{itemize}
  1409	\item Type-theoretic size: $\Rc$ is uncountable, so any property of $\Rc$
  1410	is in some sense a $\Pi$-statement over an uncountable type.
  1411	\item Logical complexity: $\zeta$ involves nested quantifiers over reals,
  1412	limits of limits, integrals, and analytic continuations.
  1413	\end{itemize}
  1414	HoTT, like any type theory, is well-suited to data of small or medium
  1415	complexity; encoding heavy analysis requires either substantial primitive
  1416	infrastructure or a transport from a classical foundation.
  1417	
  1418	\subsection{Comparison: Lean Mathlib's effectiveness}
  1419	
  1420	Lean Mathlib's success at formalizing analytic NT (Loeffler--Stoll 2025)
  1421	relies on:
  1422	\begin{enumerate}
  1423	\item Classical logic everywhere.
  1424	\item A large prebuilt library of measure theory, integration, and complex
  1425	analysis.
  1426	\item Decidability assumptions where appropriate.
  1427	\item Set-theoretic ambient foundations (Lean 4 type theory is
  1428	ZFC-equivalent in strength).
  1429	\end{enumerate}
  1430	HoTT can match (1)--(3) at extra cost; (4) is a deeper foundational issue.
  1431	
  1432	\subsection{The role of cohesive / differential HoTT}
  1433	
  1434	\emph{Differential cohesive HoTT}~\cite{Schreiber2013, Wellen2018} extends
  1435	HoTT with shape, flat, and sharp modalities. In this setting, smooth /
  1436	holomorphic / meromorphic become synthetic. Examples like
  1437	\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
  1438	viable in HoTT.
  1439	
  1440	A natural research direction is to lift the Loeffler--Stoll work into
  1441	\emph{differential cohesive HoTT}, treating $\C$ as a $\esh$-modal type and
  1442	$\zeta$ as a synthetic meromorphic function. This is a substantial project
  1443	but appears feasible.
  1444	
  1445	\subsection{Limitations of this paper}
  1446	
  1447	\begin{itemize}
  1448	\item We do not give a working HoTT formalization; we give a research
  1449	roadmap and partial Haskell prototypes.
  1450	\item We do not prove the conjectures of \Cref{thm:ZetaEquiv} or
  1451	\Cref{thm:FE}; we sketch proofs that depend on currently-unavailable
  1452	HoTT-native infrastructure.
  1453	\item Our proposed bridge (\Cref{prob:bridge}) between condensed mathematics
  1454	and HoTT is open; we have not constructed the bridging $(\infty,1)$-topos.
  1455	\end{itemize}
  1456	
  1457	\subsection{Future directions}
  1458	
  1459	\begin{enumerate}
  1460	\item Implement \Cref{prob:1}--\Cref{prob:3} in Cubical Agda.
  1461	\item Develop the cohesive-HoTT bridge for analytic continuation
  1462	(\Cref{prob:4}).
  1463	\item Translate Loeffler--Stoll Lean to HoTT-axiomatised classical $\C$ as
  1464	a first benchmark.
  1465	\item Use the synthesis from~\cite{Long2026Synthesis} to attack
  1466	\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
  1467	\item Explore the analytic Langlands programme of EFK
  1468	\cite{EFK2025AnalyticLanglands} in HoTT.
  1469	\end{enumerate}
  1470	
  1471	\subsection{Connection with directed type theory}
  1472	
  1473	A recent development is \emph{directed type theory} (DTT) of Riehl,
  1474	Shulman, Verity, North~\cite{Riehl2021Elements}. DTT extends HoTT with a
  1475	notion of directed morphism — paths that are not invertible. This gives a
  1476	potential synthetic foundation for $(\infty,1)$-categories.
  1477	
  1478	Why is DTT relevant to analytic NT?
  1479	\begin{itemize}
  1480	\item Automorphic representations are functors, not equivalences. DTT
  1481	captures functorial structure natively.
  1482	\item Hecke operators on $L$-functions act as endomorphisms, not
  1483	automorphisms; DTT distinguishes these.
  1484	\item The Langlands functor $\sigma:\mathsf{Aut}(GL_n) \to \mathsf{Galois}$
  1485	is a functor between $\infty$-categories of representations; DTT gives a
  1486	type-theoretic home.
  1487	\end{itemize}
  1488	
  1489	\subsection{Connection with synthetic algebraic geometry}
  1490	
  1491	\emph{Synthetic algebraic geometry}~\cite{CherubiniRijke2024} works inside
  1492	HoTT internally to a Zariski (or étale) topos, and develops algebraic
  1493	geometry without external schemes. The relevant facts:
  1494	\begin{itemize}
  1495	\item Schemes become types satisfying a Zariski-locality condition.
  1496	\item Sheaf cohomology is internal cohomology.
  1497	\item Group schemes, including reductive groups for Langlands, become
  1498	types in the internal language.
  1499	\end{itemize}
  1500	
  1501	A natural research line: use synthetic AG \emph{plus} cohesion to define
  1502	analytic moduli stacks, and develop $\zeta$ as an internal object.
  1503	
  1504	\subsection{The role of computer-checked proofs}
  1505	
  1506	A practical question: \emph{should} we even attempt HoTT formalisation of
  1507	analytic NT, given that classical Lean Mathlib is so much more advanced?
  1508	
  1509	Three answers:
  1510	\begin{enumerate}
  1511	\item \emph{Foundational interest:} HoTT and Lean differ at the foundation
  1512	level. Univalence simplifies certain isomorphism / equivalence arguments.
  1513	A HoTT formalisation would be qualitatively different.
  1514	\item \emph{Internal-language gain:} working inside an $(\infty,1)$-topos
  1515	gives access to the topos's internal logic. For instance, condensed
  1516	mathematics has its own internal language (the Solid topos), distinct from
  1517	classical set theory; HoTT might bridge these.
  1518	\item \emph{Educational value:} a HoTT formalisation forces clarity about
  1519	what data $\zeta$ ``really is''. The exercise of distinguishing the three
  1520	candidate definitions and identifying their pairwise equivalences is
  1521	foundationally illuminating.
  1522	\end{enumerate}
  1523	
  1524	%---------------------------------------------------------------
  1525	\section{Conclusion}\label{sec:conclusion}
  1526	
  1527	We have formulated, with technical care, the principal open problem of our
  1528	prior synthesis: HoTT-native analytic number theory. The Riemann zeta
  1529	function does not yet exist as a HoTT-native object; the statement
  1530	$\zeta(s)=0$ is not yet a HoTT-native proposition. Closing this gap
  1531	requires the prerequisite chain of \Cref{sec:prereq}, the candidate
  1532	definitions of \Cref{sec:zeta}, the $(\infty,1)$-topos perspective of
  1533	\Cref{sec:langlands}--\Cref{sec:condensed}, the comparison with
  1534	Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete
  1535	sub-problems of \Cref{sec:roadmap}.
  1536	
  1537	We do not solve the principal open problem. We formulate it precisely, show
  1538	it is not vacuous, and provide enough structure for future workers to take
  1539	concrete steps. The roadmap of \Cref{sec:roadmap} estimates 8--12
  1540	graduate-student-years to deliver a HoTT-native analogue of Loeffler--Stoll
  1541	2025. This is significant, but tractable; the much harder Riemann
  1542	hypothesis itself remains untouched.
  1543	
  1544	The dialogue between HoTT and analytic number theory is just beginning.
  1545	Geometric Langlands has been proven (2024) using $(\infty,1)$-categorical
  1546	machinery that overlaps with HoTT's intended models. Condensed mathematics
  1547	provides a uniform setting for analytic objects. These two streams will,
  1548	we conjecture, converge on a HoTT-native analytic number theory in the
  1549	coming decade. This paper aims to map the territory.
  1550	
  1551	%---------------------------------------------------------------
  1552	\appendix
  1553	
  1554	\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
  1555	
  1556	For reference, we collect the HoTT axioms / definitions that any
  1557	HoTT-native analytic NT should respect. We work in MLTT with one
  1558	universe $\mathcal{U}$ and the following axioms.
  1559	
  1560	\subsection*{A.1 Univalence}
  1561	
  1562	\begin{equation}\label{eq:univ}
  1563	\ua : \Pi(A,B:\mathcal{U}).\, (A \simeq B) \simeq (A = B).
  1564	\end{equation}
  1565	
  1566	This is the standard univalence axiom of~\cite{HoTTBook}. It implies
  1567	function extensionality and propositional extensionality.
  1568	
  1569	\subsection*{A.2 Higher inductive types}
  1570	
  1571	We assume HITs of the form needed in this paper:
  1572	\begin{itemize}
  1573	\item Cauchy reals $\Rc$ as a HIIT (\Cref{def:Rc}).
  1574	\item Set quotients $A/{\sim}$ for relations $\sim$ on $A$.
  1575	\item Propositional truncation $\|A\|_{-1}$.
  1576	\item $n$-truncations $\|A\|_n$.
  1577	\end{itemize}
  1578	
  1579	\subsection*{A.3 Cohesion (optional)}
  1580	
  1581	For synthetic-analytic statements, cohesive HoTT
  1582	\cite{Shulman2018Cohesive} adds:
  1583	\begin{itemize}
  1584	\item Shape modality $\esh:\mathcal{U} \to \mathcal{U}$ (left adjoint to
  1585	$\flat$).
  1586	\item Flat modality $\flat:\mathcal{U} \to \mathcal{U}$ (right adjoint to
  1587	$\esh$).
  1588	\item Sharp modality $\sharp:\mathcal{U} \to \mathcal{U}$.
  1589	\end{itemize}
  1590	
  1591	These satisfy the cohesive triple-adjunction $\esh \dashv \flat \dashv \sharp$
  1592	and natural-transformation laws between them.
  1593	
  1594	\subsection*{A.4 Choice (optional, classical)}
  1595	
  1596	For some classical analytic-NT results we may need:
  1597	\begin{equation}\label{eq:choice}
  1598	\mathrm{AC} : \Pi(A:\mathcal{U}).\, \Pi(B:A \to \mathcal{U}).\,
  1599	   (\Pi(a:A).\, \|B(a)\|_{-1}) \to \|\Pi(a:A).\, B(a)\|_{-1}.
  1600	\end{equation}
  1601	
  1602	Equivalent to set-theoretic AC for sets. Required for classical existence
  1603	of algebraic closures, classical functional equation proofs.
  1604	
  1605	\subsection*{A.5 Excluded middle (optional, classical)}
  1606	
  1607	\begin{equation}\label{eq:lem}
  1608	\mathrm{LEM} : \Pi(P:\Prop).\, P + \neg P.
  1609	\end{equation}
  1610	
  1611	Required for the statement of $\mathrm{RH} \vee \neg\,\mathrm{RH}$ as
  1612	``there is a fact of the matter''.
  1613	
  1614	\section{Appendix: Companion code overview}\label{app:code}
  1615	
  1616	The companion repository at \texttt{src/langlands-analytic-number-theory/}
  1617	contains:
  1618	
  1619	\begin{itemize}
  1620	\item \texttt{Main.hs} --- driver illustrating partial $\zeta$ sums and
  1621	Dirichlet series operations.
  1622	\item \texttt{Zeta.hs} --- partial zeta computations with explicit
  1623	truncation.
  1624	\item \texttt{Dirichlet.hs} --- Dirichlet series machinery, Dirichlet
  1625	convolution, multiplicative functions.
  1626	\item \texttt{Properties.hs} --- QuickCheck properties for the algebraic
  1627	laws on Dirichlet series.
  1628	\item \texttt{Proofs.hs} --- equational proofs of the Euler product identity
  1629	modulo a finite-truncation axiom.
  1630	\end{itemize}
  1631	
  1632	The Lean component at \texttt{lean/langlands-analytic-number-theory/}
  1633	contains:
  1634	
  1635	\begin{itemize}
  1636	\item \texttt{Zeta.lean} --- a Lean 4 / Mathlib sketch indexed against
  1637	Loeffler--Stoll, marking which lemmas would translate cleanly to HoTT.
  1638	\end{itemize}
  1639	
  1640	These are illustrative prototypes, not formal verifications. Their purpose
  1641	is to make the prerequisite chain (\Cref{sec:prereq}) and the candidate
  1642	definitions (\Cref{sec:zeta}) executable, so that future HoTT-native work
  1643	has computational benchmarks.
  1644	
  1645	\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1646,1906p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1646	
  1647	We sketch a plausible HoTT proof strategy for analytic continuation of
  1648	$\zeta$, addressing \Cref{prob:4} in more detail.
  1649	
  1650	\subsection*{C.1 The Hurwitz integral representation}
  1651	
  1652	Classical analytic continuation of $\zeta$ via the Hurwitz integral
  1653	representation~\cite{Hurwitz1882}:
  1654	\[
  1655	\zeta(s) = \frac{1}{\Gamma(s)} \int_0^\infty \frac{x^{s-1}}{e^x - 1}\, dx,
  1656	\qquad \mathrm{Re}(s) > 1.
  1657	\]
  1658	The integrand is integrable for $\mathrm{Re}(s) > 1$ near $0$ and is
  1659	exponentially small at $\infty$. To analytically continue, one deforms the
  1660	contour:
  1661	\[
  1662	\zeta(s) = \frac{\Gamma(1-s)}{2\pi i}\,\oint_C \frac{(-x)^{s-1}}{e^x - 1}\,dx,
  1663	\]
  1664	where $C$ is the Hankel contour: from $+\infty$ along $\R^+$, around $0$
  1665	counterclockwise, back to $+\infty$.
  1666	
  1667	\subsection*{C.2 What HoTT needs}
  1668	
  1669	To carry out the contour-integral proof in HoTT we need:
  1670	\begin{enumerate}
  1671	\item HoTT-native $\Gamma$ function: $\Gamma(s) := \int_0^\infty t^{s-1}
  1672	e^{-t}\, dt$ extended via the functional equation $\Gamma(s+1) = s\Gamma(s)$
  1673	to all $\Cc \setminus \{0,-1,-2,\ldots\}$.
  1674	\item HoTT-native contour integration: a path $\gamma:[0,1] \to \Cc$ and an
  1675	integral $\int_\gamma f(z)\, dz$, satisfying linearity, change-of-variables,
  1676	and Cauchy's theorem.
  1677	\item HoTT-native version of Cauchy's theorem: holomorphic functions integrate
  1678	to zero around closed contours.
  1679	\item HoTT-native deformation lemma: integral over homotopic contours agree.
  1680	\item HoTT-native passage from real integral to contour integral
  1681	(Mellin-Barnes type).
  1682	\end{enumerate}
  1683	
  1684	\subsection*{C.3 Estimated effort}
  1685	
  1686	Each item above is a self-contained HoTT formalisation problem of moderate
  1687	size. Cumulatively, this is the heart of \Cref{prob:4}, and we estimate
  1688	it at $\sim 3000$ lines of Cubical Agda.
  1689	
  1690	\subsection*{C.4 Alternative strategies}
  1691	
  1692	\begin{itemize}
  1693	\item \emph{Riemann's theta-function method}: $\zeta(s)$ via Mellin transform
  1694	of $\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$. Requires the modular
  1695	transformation $\theta(t) = t^{-1/2}\theta(1/t)$.
  1696	\item \emph{Hardy's symmetric form}: $\xi(s) := \frac{s(s-1)}{2}\pi^{-s/2}
  1697	\Gamma(s/2)\zeta(s)$, satisfying $\xi(s) = \xi(1-s)$. Cleaner but uses the
  1698	same infrastructure.
  1699	\item \emph{Cohesive synthetic approach}: Inside differential cohesive HoTT
  1700	\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
  1701	Speculative.
  1702	\end{itemize}
  1703	
  1704	\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}
  1705	
  1706	For readers more familiar with classical analytic NT than with HoTT, we
  1707	provide a short translation glossary:
  1708	
  1709	\medskip
  1710	
  1711	\begin{center}
  1712	\begin{tabular}{ll}
  1713	\toprule
  1714	Classical & HoTT-native \\
  1715	\midrule
  1716	$\R$ & $\Rc$ (Cauchy reals) \\
  1717	$\C$ & $\Cc$ (univalent algebraic closure of $\Rc$) \\
  1718	$f:\C \to \C$ holomorphic & $f$ admits constructive Newton quotient \\
  1719	``unique up to isomorphism'' & propositionally equal under univalence \\
  1720	``the algebraic closure'' & ``a univalent algebraic closure'' \\
  1721	ZFC's choice & propositional choice axiom (optional) \\
  1722	LEM & $\Pi(P:\Prop).\, P + \neg P$ (optional) \\
  1723	quotient set & set quotient $A/{\sim}$ via HIT \\
  1724	limit of sequences & limit constructor of HIIT $\Rc$ \\
  1725	``open subset'' & ``cohesive open'' or ``(-1)-truncated open'' \\
  1726	``connected'' & propositional truncation of $A$ is contractible \\
  1727	sheaf cohomology & internal cohomology of cohesive HoTT \\
  1728	$\infty$-category & type with Segal condition \\
  1729	$\infty$-topos & univalent universe in cohesive HoTT \\
  1730	``functor'' & morphism in directed type theory \\
  1731	``natural transformation'' & 2-cell in directed type theory \\
  1732	condensed set & sheaf on profinite types in cohesive HoTT (open) \\
  1733	analytic stack & 6-functor formalism in cohesive HoTT (open) \\
  1734	$\zeta$ classically & no HoTT-native definition yet \\
  1735	\bottomrule
  1736	\end{tabular}
  1737	\end{center}
  1738	
  1739	\medskip
  1740	
  1741	The bottom row is the principal open problem of this paper.
  1742	
  1743	%---------------------------------------------------------------
  1744	\bibliographystyle{plain}
  1745	\begin{thebibliography}{99}
  1746	
  1747	\bibitem{HoTTBook}
  1748	Univalent Foundations Program.
  1749	\textit{Homotopy Type Theory: Univalent Foundations of Mathematics}.
  1750	Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}
  1751	
  1752	\bibitem{Long2026Synthesis}
  1753	M.\ Long and the YonedaAI Collaboration.
  1754	\textit{Synthesis: Six Open Problems at the Interface of HoTT and
  1755	Twenty-First Century Mathematics}.
  1756	YonedaAI Research Collective, 2026.
  1757	
  1758	\bibitem{Voevodsky2014}
  1759	V.\ Voevodsky.
  1760	\textit{Univalent foundations of mathematics}.
  1761	ICM Talk, 2014.
  1762	
  1763	\bibitem{Booij2020}
  1764	A.\ Booij.
  1765	\textit{Analysis in univalent type theory}.
  1766	PhD thesis, University of Birmingham, 2020.
  1767	
  1768	\bibitem{Mines1988}
  1769	R.\ Mines, F.\ Richman, W.\ Ruitenburg.
  1770	\textit{A Course in Constructive Algebra}.
  1771	Springer Universitext, 1988.
  1772	
  1773	\bibitem{Shulman2018Cohesive}
  1774	M.\ Shulman.
  1775	\textit{Brouwer's fixed-point theorem in real-cohesive homotopy type theory}.
  1776	Mathematical Structures in Computer Science, 28:856--941, 2018.
  1777	
  1778	\bibitem{Shulman2019InfTopos}
  1779	M.\ Shulman.
  1780	\textit{All $(\infty,1)$-toposes have strict univalent universes}.
  1781	arXiv:1904.07004, 2019.
  1782	
  1783	\bibitem{Lurie2009HTT}
  1784	J.\ Lurie.
  1785	\textit{Higher Topos Theory}.
  1786	Annals of Mathematics Studies 170, Princeton University Press, 2009.
  1787	
  1788	\bibitem{LurieHA}
  1789	J.\ Lurie.
  1790	\textit{Higher Algebra}.
  1791	Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}
  1792	
  1793	\bibitem{Gaitsgory2024GLC}
  1794	D.\ Gaitsgory et al.
  1795	\textit{Proof of the geometric Langlands conjecture I--V}.
  1796	arXiv:2405.03599 and sequels, 2024.
  1797	\url{https://www.mpim-bonn.mpg.de/gaitsgde/GLC/}
  1798	
  1799	\bibitem{BeilinsonDrinfeld2004}
  1800	A.\ Beilinson, V.\ Drinfeld.
  1801	\textit{Chiral Algebras}.
  1802	American Mathematical Society Colloquium Publications 51, 2004.
  1803	
  1804	\bibitem{LoefflerStoll2025}
  1805	D.\ Loeffler, M.\ Stoll.
  1806	\textit{Formalizing zeta and L-functions in Lean}.
  1807	arXiv:2503.00959. Annals of Formalized Mathematics, vol.\ 1, 2025.
  1808	
  1809	\bibitem{Scholze2019Condensed}
  1810	P.\ Scholze.
  1811	\textit{Lectures on condensed mathematics}.
  1812	Lecture notes, University of Bonn, 2019.
  1813	\url{https://www.math.uni-bonn.de/people/scholze/Condensed.pdf}
  1814	
  1815	\bibitem{ClausenScholze2024Analytic}
  1816	D.\ Clausen, P.\ Scholze.
  1817	\textit{Analytic stacks}.
  1818	Lecture series, MPIM Bonn, 2023--2024.
  1819	
  1820	\bibitem{ClausenScholze2024SixFunctor}
  1821	D.\ Clausen, P.\ Scholze.
  1822	\textit{Six-functor formalisms in analytic geometry}.
  1823	arXiv:2507.08566, 2025.
  1824	
  1825	\bibitem{ClausenScholze2025AnalyticStacks}
  1826	D.\ Clausen, P.\ Scholze.
  1827	\textit{Analytic stacks (continued)}.
  1828	arXiv:2512.14612, 2025.
  1829	
  1830	\bibitem{ClausenScholzeComplex}
  1831	D.\ Clausen, P.\ Scholze.
  1832	\textit{Condensed mathematics and complex geometry}.
  1833	\url{https://people.mpim-bonn.mpg.de/scholze/Complex.pdf}, 2022.
  1834	
  1835	\bibitem{EFK2025AnalyticLanglands}
  1836	P.\ Etingof, E.\ Frenkel, D.\ Kazhdan.
  1837	\textit{An analytic version of the Langlands correspondence over the
  1838	function field}.
  1839	arXiv:2103.01509 and follow-ups, 2021--2025.
  1840	
  1841	\bibitem{CisinskiKKNS2025}
  1842	D.-C.\ Cisinski et al.
  1843	\textit{Type-theoretic foundations of $(\infty,1)$-categories}.
  1844	Manuscript / arXiv preprints, 2025.
  1845	
  1846	\bibitem{Langlands1970}
  1847	R.\ P.\ Langlands.
  1848	\textit{Problems in the theory of automorphic forms}.
  1849	Lecture Notes in Mathematics 170, Springer, 1970.
  1850	
  1851	\bibitem{GelbartLanglands1979}
  1852	S.\ Gelbart.
  1853	\textit{An elementary introduction to the Langlands program}.
  1854	Bull.\ AMS, 10(2):177--219, 1984.
  1855	
  1856	\bibitem{Schreiber2013}
  1857	U.\ Schreiber.
  1858	\textit{Differential cohomology in a cohesive infinity-topos}.
  1859	arXiv:1310.7930, 2013.
  1860	
  1861	\bibitem{Wellen2018}
  1862	F.\ Wellen.
  1863	\textit{Cartan geometry in modal homotopy type theory}.
  1864	PhD thesis, Karlsruhe Institute of Technology, 2018.
  1865	
  1866	\bibitem{ScreiberShulman2014QFT}
  1867	U.\ Schreiber, M.\ Shulman.
  1868	\textit{Quantum gauge field theory in cohesive homotopy type theory}.
  1869	EPTCS 158, 2014.
  1870	
  1871	\bibitem{Euler1737}
  1872	L.\ Euler.
  1873	\textit{Variae observationes circa series infinitas}.
  1874	Commentarii academiae scientiarum Petropolitanae 9, 1737.
  1875	
  1876	\bibitem{RiemannHypothesisOriginal}
  1877	B.\ Riemann.
  1878	\textit{Über die Anzahl der Primzahlen unter einer gegebenen Größe}.
  1879	Monatsberichte der Königlich Preußischen Akademie der Wissenschaften zu
  1880	Berlin, 1859.
  1881	
  1882	\bibitem{KapustinWitten2007}
  1883	A.\ Kapustin, E.\ Witten.
  1884	\textit{Electric-magnetic duality and the geometric Langlands program}.
  1885	Communications in Number Theory and Physics, 1(1):1--236, 2007.
  1886	
  1887	\bibitem{Riehl2021Elements}
  1888	E.\ Riehl, D.\ Verity.
  1889	\textit{Elements of $\infty$-Category Theory}.
  1890	Cambridge Studies in Advanced Mathematics 194, Cambridge University Press, 2022.
  1891	
  1892	\bibitem{CherubiniRijke2024}
  1893	F.\ Cherubini, E.\ Rijke et al.
  1894	\textit{Synthetic algebraic geometry in homotopy type theory}.
  1895	Manuscript, \url{https://github.com/felixwellen/synthetic-zariski}, 2024.
  1896	
  1897	\bibitem{Hurwitz1882}
  1898	A.\ Hurwitz.
  1899	\textit{Einige Eigenschaften der Dirichlet'schen Funktionen $F(s)$}.
  1900	Zeitschrift für Mathematik und Physik, 27:86--101, 1882.
  1901	
  1902	\end{thebibliography}
  1903	
  1904	\end{document}

exec
/usr/local/bin/zsh -lc "sed -n '760,970p' papers/latex/langlands-analytic-number-theory.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
(./langlands-analytic-number-theory.out)
(./langlands-analytic-number-theory.out)
\@outlinefile=\write4
\openout4 = `langlands-analytic-number-theory.out'.

LaTeX Font Info:    Trying to load font information for U+msa on input line 124
.

(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsa.fd
File: umsa.fd 2013/01/14 v3.01 AMS symbols A
)
LaTeX Font Info:    Trying to load font information for U+msb on input line 124
.

(/usr/local/texlive/2026/texmf-dist/tex/latex/amsfonts/umsb.fd
File: umsb.fd 2013/01/14 v3.01 AMS symbols B
)
(./langlands-analytic-number-theory.toc [1{/usr/local/texlive/2026/texmf-var/fo
nts/map/pdftex/updmap/pdftex.map}

] [2])
\tf@toc=\write5
\openout5 = `langlands-analytic-number-theory.toc'.

 [3]
Overfull \hbox (7.9274pt too wide) in paragraph at lines 203--206
[]\OT1/cmr/m/n/12 A HoTT-native in-ter-pre-ta-tion of the propo-si-tion $^^E(\O
ML/cmm/m/it/12 s \OT1/cmr/m/n/12 : \U/msb/m/n/12 C[]\OT1/cmr/m/n/12 )\OML/cmm/m
/it/12 : ^^P\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 s\OT1/cmr/m/n/12 ) = 0 \OMS/cmsy/
m/n/12 ! : []\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 s\OT1/cmr/m/n/12 ) \OMS/cmsy/m/n
/12 !
 []

[4] [5{/usr/local/texlive/2026/texmf-dist/fonts/enc/dvips/cm-super/cm-super-ts1
.enc}] [6] [7] [8]
Overfull \hbox (8.4668pt too wide) in paragraph at lines 519--523
[]\OT1/cmr/bx/n/12 Example 2.13 \OT1/cmr/m/n/12 ($\OML/cmm/m/it/12 ^^Y$ \OT1/cm
r/m/n/12 as Cauchy real)\OT1/cmr/bx/n/12 . []$\OML/cmm/m/it/12 ^^Y \OT1/cmr/m/n
/12 := []((\OML/cmm/m/it/12 ^^O \OMS/cmsy/m/n/12 7! []\OML/cmm/m/it/12 N\OT1/cm
r/m/n/12 (\OML/cmm/m/it/12 ^^O\OT1/cmr/m/n/12 ))\OML/cmm/m/it/12 ; [][]\OT1/cmr
/m/n/12 )$.
 []


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 533.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\zeta' on input line 533.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 533.

[9]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 589.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\zeta' on input line 589.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 589.

[10]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 623.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\zeta' on input line 623.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 623.

[11]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `superscript' on input line 713.

[12]
Overfull \hbox (0.63345pt too wide) in paragraph at lines 735--737
[]\OT1/cmr/m/n/12 HoTT-native trigono-met-ric func-tions (de-fin-able as power 
se-ries, hence HIIT $\U/msb/m/n/12 R[]$\OT1/cmr/m/n/12 -valued). 
 []


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 768.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 768.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 768.


Overfull \hbox (21.7494pt too wide) detected at line 777
\OMS/cmsy/m/n/12 f[]\OML/cmm/m/it/12 GL\OT1/cmr/m/n/12 (\OML/cmm/m/it/12 n; \U/
msb/m/n/12 A[]\OT1/cmr/m/n/12 )\OMS/cmsy/m/n/12 g   []!  f[][]\OT1/cmr/m/n/12 (
[]\OML/cmm/m/it/12 =F\OT1/cmr/m/n/12 )\OMS/cmsy/m/n/12 g
 []


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 795.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\infty' on input line 795.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 795.

[13]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 841.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 841.

[14]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 908.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 908.

[15]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 940.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `\zeta' on input line 940.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 940.

[16]

Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1021.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1021.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1021.


Package hyperref Warning: Token not allowed in a PDF string (Unicode):
(hyperref)                removing `math shift' on input line 1021.

[17]
Overfull \hbox (3.28032pt too wide) in paragraph at lines 1081--1083
[]\OT1/cmr/m/n/12 Mellin trans-forms, Gamma func-tion, Rie-mann zeta func-tion 
as \OT1/cmtt/m/n/12 ZetaFunction.mathlib\OT1/cmr/m/n/12 . 
 []


Overfull \hbox (0.54904pt too wide) in paragraph at lines 1089--1093
\OT1/cmr/m/n/12 come \OT1/cmr/m/it/12 propo-si-tion-ally equal \OT1/cmr/m/n/12 
via uni-va-lence, not merely ``equal-up-to-some-isomorphism''. 
 []

[18] [19] [20] [21] [22]
Overfull \hbox (7.29324pt too wide) in paragraph at lines 1359--1361
[]\OT1/cmr/bx/n/12 Vinogradov-Korobov: \OT1/cmr/m/n/12 ex-plicit zero-free re-g
ion $[](\OML/cmm/m/it/12 s\OT1/cmr/m/n/12 ) \OML/cmm/m/it/12 > \OT1/cmr/m/n/12 
1 \OMS/cmsy/m/n/12 ^^@ \OML/cmm/m/it/12 C=\OT1/cmr/m/n/12 ([] \OMS/cmsy/m/n/12 
j\OML/cmm/m/it/12 t\OMS/cmsy/m/n/12 j\OT1/cmr/m/n/12 )[]([] [] \OMS/cmsy/m/n/12
 j\OML/cmm/m/it/12 t\OMS/cmsy/m/n/12 j\OT1/cmr/m/n/12 )[]$. 
 []

[23] [24] [25] [26] [27]
Overfull \hbox (0.88237pt too wide) in paragraph at lines 1628--1630
[]\OT1/cmtt/m/n/12 Proofs.hs \OT1/cmr/m/n/12 --- equa-tional proofs of the Eu-l
er prod-uct iden-tity mod-ulo a finite-truncation
 []

[28] [29] [30] [31] [32] (./langlands-analytic-number-theory.aux)
 ***********
LaTeX2e <2025-11-01>
L3 programming layer <2026-01-19>
 ***********
Package rerunfilecheck Info: File `langlands-analytic-number-theory.out' has no
t changed.
(rerunfilecheck)             Checksum: 70A7E3E1B81C032D443191B28F9292D5;17813.
 ) 
Here is how much of TeX's memory you used:
 24278 strings out of 467525
 466761 string characters out of 5418982
 880321 words of memory out of 5000000

codex
The prior log shows a successful PDF write, but also several overfull boxes and a cluster of `hyperref` PDF-string warnings caused by math in headings/bookmarks. I’m checking whether the log is current and whether references/citations are actually unresolved.
exec
/usr/local/bin/zsh -lc "stat -f '%Sm %N' papers/latex/langlands-analytic-number-theory.tex papers/latex/langlands-analytic-number-theory.log papers/latex/langlands-analytic-number-theory.aux papers/latex/langlands-analytic-number-theory.pdf" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
May  4 17:39:58 2026 papers/latex/langlands-analytic-number-theory.tex
May  4 17:40:08 2026 papers/latex/langlands-analytic-number-theory.log
May  4 17:40:08 2026 papers/latex/langlands-analytic-number-theory.aux
May  4 17:40:08 2026 papers/latex/langlands-analytic-number-theory.pdf

exec
/usr/local/bin/zsh -lc "rg -n 'undefined|Undefined|Citation|Reference|Rerun|multiply defined|Label|There were undefined references|Package natbib|No file|I found no' papers/latex/langlands-analytic-number-theory.log papers/latex/langlands-analytic-number-theory.aux" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
papers/latex/langlands-analytic-number-theory.log:650:Package: rerunfilecheck 2025-06-21 v1.11 Rerun checks for auxiliary files (HO)

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(Cref|cref|ref|eqref)\\{["'^}]+'"\\}|\\\\cite(\\[["'^]]*'"\\])?\\{["'^}]+'"\\}|\\\\label\\{["'^}]+'"\\}|\\\\bibitem\\{["'^}]+'"\\}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
161:\section{Introduction}\label{sec:intro}
165:In the synthesis paper concluding our prior series~\cite{Long2026Synthesis},
167:1859~paper~\cite{RiemannHypothesisOriginal},
189:notion of meromorphicity. Constructive Cauchy reals~\cite{HoTTBook,Booij2020}
193:in the sense of univalence~\cite{Voevodsky2014}.
197:\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
209:\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
222:$\zeta$. (\Cref{sec:prereq})
225:equivalence. (\Cref{sec:zeta})
228:Gaitsgory2024GLC}. (\Cref{sec:langlands})
230:where they overlap and where the bridge is missing. (\Cref{sec:condensed})
232:benchmark and as a \emph{translation target}. (\Cref{sec:loefflerstoll})
234:HoTT-native proof that $\zeta(2) = \pi^2/6$. (\Cref{sec:roadmap})
236:its modal-logical structure. (\Cref{sec:rh})
269:The Langlands programme~\cite{Langlands1970,GelbartLanglands1979} unifies
273:Langlands~\cite{Gaitsgory2024GLC} is the function-field analogue and was
279:\Cref{sec:prereq} traces the prerequisite chain.
280:\Cref{sec:zeta} defines $\zeta$ as a candidate HoTT object.
281:\Cref{sec:langlands} treats geometric Langlands in $(\infty,1)$-topoi.
282:\Cref{sec:condensed} compares condensed mathematics and HoTT.
283:\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.
284:\Cref{sec:roadmap} gives the six-sub-problem roadmap.
285:\Cref{sec:rh} discusses RH as a HoTT statement.
286:\Cref{sec:conclusion} concludes.
289:\section{The Prerequisite Chain}\label{sec:prereq}
295:\begin{definition}[Cauchy reals, after the HoTT Book~\cite{HoTTBook}]\label{def:Rc}
305:$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.
315:\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
330:\begin{definition}[Univalent algebraic closure]\label{def:UAC}
342:\begin{remark}[Plain-language gloss]\label{rem:UACplain}
343:In essence, \Cref{def:UAC} defines the algebraic closure not as one
353:\begin{proposition}\label{prop:UACUnique}
366:propositional truncation in \Cref{def:UAC} ensures the existential is a
368:algebraic-closure arguments~\cite{Mines1988}.
389:\begin{definition}[Constructive holomorphicity]\label{def:holo}
400:\begin{remark}[Synthetic alternative]\label{rem:synth}
401:In \emph{cohesive HoTT}~\cite{Shulman2018Cohesive}, the universe carries
410:\begin{definition}[Dirichlet series]\label{def:Dirichlet}
420:\begin{proposition}[HoTT-native; sketched]\label{prop:DirichletAlgebra}
431:\cite{Booij2020}.
448:\label{fig:chain}
451:The chain in \Cref{fig:chain} terminates at $\zeta$, but the rightmost arrow
457:\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
464:In classical complex analysis, the identity theorem (\Cref{thm:Identity})
497:\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
502:\begin{example}[$\sqrt{2}$ as Cauchy real]\label{ex:sqrt2}
511:\begin{example}[$e$ as Cauchy real]\label{ex:euler}
518:\begin{example}[$\pi$ as Cauchy real]\label{ex:pi}
529:\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
543:\begin{equation}\label{eq:zetaSeries}
551:\begin{definition}[Specification of zeta as HIIT, candidate]\label{def:ZetaHIIT}
557:   \text{(equality with the series of \cref{eq:zetaSeries})} \\
571:\begin{remark}\label{rem:ZetaHIITissues}
577:lemma — which is exactly the analytic-continuation gap of \Cref{prob:4}.
585:construction. The remaining two approaches (\Cref{def:ZetaEuler} and
586:\Cref{def:ZetaUP}) are more conservative.
591:Recall the Euler product (\cite{Euler1737}):
596:\begin{definition}[Zeta via Euler product]\label{def:ZetaEuler}
605:\begin{proposition}[Euler product, modulo convergence]\label{prop:Euler}
620:is a HoTT-statement requiring \Cref{prop:DirichletAlgebra}.
625:\begin{definition}[Meromorphic continuation, universal]\label{def:MeromCont}
634:\begin{theorem}[Identity theorem, HoTT version]\label{thm:Identity}
647:\begin{definition}[Zeta via universal property]\label{def:ZetaUP}
649:\Cref{thm:Identity}) meromorphic continuation of $s \mapsto \sum n^{-s}$ from
655:\begin{theorem}[Conjectural equivalence]\label{thm:ZetaEquiv}
657:definitions \Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}
662:\Cref{def:ZetaEuler} agrees with the partial-sum definition on $H_1$ by
663:\Cref{prop:Euler}. \Cref{def:ZetaUP} agrees with the partial-sum definition
664:on $H_1$ by definition. By \Cref{thm:Identity}, any two meromorphic
665:continuations of the same function agree everywhere. \Cref{def:ZetaHIIT}
674:\begin{theorem}[Functional equation, conjectured HoTT-native]\label{thm:FE}
705:\begin{conjecture}[Riemann hypothesis, HoTT statement]\label{conj:RH}
711:We will analyse this statement modal-logically in \Cref{sec:rh}.
713:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
718:\begin{theorem}[Basel problem]\label{thm:Basel}
755:\Cref{prob:1}--\Cref{prob:3}, plus some elementary measure / convergence
756:theory. \Cref{prob:4} is not needed for this specific theorem because $s=2$
760:\begin{remark}\label{rem:zetatwo}
761:\Cref{thm:Basel} is a \emph{lower-bound} HoTT goal: it does not require
768:\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
772:The Langlands programme~\cite{Langlands1970} predicts a correspondence
783:\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
793:\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
797:By Lurie's higher topos theory~\cite{Lurie2009HTT} and higher
798:algebra~\cite{LurieHA}, $(\infty,1)$-categories
800:\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
804:By Shulman's theorem~\cite{Shulman2019InfTopos}, every $(\infty,1)$-topos
809:\begin{remark}\label{rem:internal}
823:Rham stack (cf.~\cite{ClausenScholzeComplex} for the complex-analytic side). It says nothing directly about $\zeta$ or about analytic number
827:\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the
841:\subsection{Detailed example: $GL(1)$ Langlands and Hecke characters}\label{subsec:GL1}
866:$p$-adic numbers~\cite{HoTTBook}.
874:\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
878:algebraic stacks over $\C$. By Shulman~\cite{Shulman2019InfTopos},
882:\begin{conjecture}[Gaitsgory equivalence in HoTT, schematic]\label{conj:GLCHoTT}
901:\begin{remark}\label{rem:univalence-glc}
910:Kapustin and Witten~\cite{KapustinWitten2007} interpreted geometric
916:synthetic differential cohesive HoTT~\cite{Schreiber2013}.
924:\section{Condensed Mathematics and HoTT}\label{sec:condensed}
928:Clausen and Scholze~\cite{Scholze2019Condensed,ClausenScholze2024Analytic}
955:\begin{problem}[Bridging condensed mathematics and HoTT]\label{prob:bridge}
967:\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others
982:\begin{definition}[HoTT-solid abelian group, candidate]\label{def:HoTTSolid}
988:\Cref{def:HoTTSolid} is speculative; it has not been verified to match the
992:\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
995:stacks~\cite{ClausenScholze2024SixFunctor,ClausenScholze2025AnalyticStacks}
1011:\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
1014:\cite{Riehl2021Elements}.
1017:A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
1021:\subsection{Solid modules over $\Z$ and $p$-adic interaction}\label{subsec:solidp}
1034:\begin{conjecture}[$p$-adic zeta function in HoTT]\label{conj:padicZeta}
1041:\begin{remark}\label{rem:padicEasier}
1042:\Cref{conj:padicZeta} is a research suggestion: \emph{start with the $p$-adic
1049:\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
1053:The 2025 paper~\cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:
1090:(\Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}) become
1106:properties as Mathlib's $\C$. We sketch this in \Cref{sec:roadmap}.
1108:\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
1151:HoTT analogue: \Cref{conj:RH}.
1153:\subsection{Quantitative comparison}\label{subsec:LSquant}
1183:\cite{Booij2020} for HoTT-native analysis benchmarks.
1187:\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
1195:\begin{problem}\label{prob:1}
1197:of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
1205:\begin{problem}\label{prob:2}
1206:Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
1207:Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
1214:\begin{problem}\label{prob:3}
1215:Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
1223:\begin{problem}\label{prob:4}
1227:\Cref{def:ZetaUP}.
1233:\begin{problem}\label{prob:5}
1234:Prove the functional equation \Cref{thm:FE} in HoTT, using either
1239:\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
1243:\begin{problem}\label{prob:6}
1249:\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
1262:\label{fig:roadmap}
1268:\item \Cref{prob:1}: $\sim$1000 lines, 1--2 graduate-student-years.
1269:\item \Cref{prob:2}: $\sim$5000 lines, 2--3 g-s-y.
1270:\item \Cref{prob:3}: $\sim$1500 lines, 1 g-s-y.
1271:\item \Cref{prob:4}: $\sim$3000 lines, 2--3 g-s-y; key conceptual work.
1272:\item \Cref{prob:5}: $\sim$5000 lines, 2 g-s-y.
1273:\item \Cref{prob:6}: $\sim$200 lines, weeks. The hard part is the
1281:\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
1285:\Cref{conj:RH} states $\Pi(s:\Cc).\, P(s) \to Q(s)$, where $P$ and $Q$ are
1296:\begin{remark}\label{rem:decidability}
1303:\begin{remark}\label{rem:LEM}
1317:\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
1325:suitable $(\infty,1)$-topos, \Cref{conj:GRH} is a $\Pi\Pi\Pi$-statement —
1330:\begin{theorem}[von Koch, expected HoTT version]\label{thm:vonKoch}
1331:Conditional on \Cref{conj:RH}, the prime-counting function $\pi(x)$
1341:\Cref{prob:1}--\Cref{prob:6}.
1352:\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
1368:\Cref{prob:1}--\Cref{prob:5}. In particular, the $\mathrm{Re}(s) = 1$
1371:target after \Cref{thm:Basel}.
1373:\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
1388:contour integration. HoTT-native version would require \Cref{prob:4}.
1393:functional equation; their existence requires \Cref{prob:5}.
1400:\section{Discussion}\label{sec:discussion}
1434:\emph{Differential cohesive HoTT}~\cite{Schreiber2013, Wellen2018} extends
1437:\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
1450:\item We do not prove the conjectures of \Cref{thm:ZetaEquiv} or
1451:\Cref{thm:FE}; we sketch proofs that depend on currently-unavailable
1453:\item Our proposed bridge (\Cref{prob:bridge}) between condensed mathematics
1460:\item Implement \Cref{prob:1}--\Cref{prob:3} in Cubical Agda.
1462:(\Cref{prob:4}).
1465:\item Use the synthesis from~\cite{Long2026Synthesis} to attack
1466:\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
1468:\cite{EFK2025AnalyticLanglands} in HoTT.
1474:Shulman, Verity, North~\cite{Riehl2021Elements}. DTT extends HoTT with a
1491:\emph{Synthetic algebraic geometry}~\cite{CherubiniRijke2024} works inside
1525:\section{Conclusion}\label{sec:conclusion}
1531:requires the prerequisite chain of \Cref{sec:prereq}, the candidate
1532:definitions of \Cref{sec:zeta}, the $(\infty,1)$-topos perspective of
1533:\Cref{sec:langlands}--\Cref{sec:condensed}, the comparison with
1534:Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete
1535:sub-problems of \Cref{sec:roadmap}.
1539:concrete steps. The roadmap of \Cref{sec:roadmap} estimates 8--12
1554:\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
1562:\begin{equation}\label{eq:univ}
1566:This is the standard univalence axiom of~\cite{HoTTBook}. It implies
1573:\item Cauchy reals $\Rc$ as a HIIT (\Cref{def:Rc}).
1582:\cite{Shulman2018Cohesive} adds:
1597:\begin{equation}\label{eq:choice}
1607:\begin{equation}\label{eq:lem}
1614:\section{Appendix: Companion code overview}\label{app:code}
1641:is to make the prerequisite chain (\Cref{sec:prereq}) and the candidate
1642:definitions (\Cref{sec:zeta}) executable, so that future HoTT-native work
1645:\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}
1648:$\zeta$, addressing \Cref{prob:4} in more detail.
1653:representation~\cite{Hurwitz1882}:
1687:size. Cumulatively, this is the heart of \Cref{prob:4}, and we estimate
1700:\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
1704:\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}
1747:\bibitem{HoTTBook}
1752:\bibitem{Long2026Synthesis}
1758:\bibitem{Voevodsky2014}
1763:\bibitem{Booij2020}
1768:\bibitem{Mines1988}
1773:\bibitem{Shulman2018Cohesive}
1778:\bibitem{Shulman2019InfTopos}
1783:\bibitem{Lurie2009HTT}
1788:\bibitem{LurieHA}
1793:\bibitem{Gaitsgory2024GLC}
1799:\bibitem{BeilinsonDrinfeld2004}
1804:\bibitem{LoefflerStoll2025}
1809:\bibitem{Scholze2019Condensed}
1815:\bibitem{ClausenScholze2024Analytic}
1820:\bibitem{ClausenScholze2024SixFunctor}
1825:\bibitem{ClausenScholze2025AnalyticStacks}
1830:\bibitem{ClausenScholzeComplex}
1835:\bibitem{EFK2025AnalyticLanglands}
1841:\bibitem{CisinskiKKNS2025}
1846:\bibitem{Langlands1970}
1851:\bibitem{GelbartLanglands1979}
1856:\bibitem{Schreiber2013}
1861:\bibitem{Wellen2018}
1866:\bibitem{ScreiberShulman2014QFT}
1871:\bibitem{Euler1737}
1876:\bibitem{RiemannHypothesisOriginal}
1882:\bibitem{KapustinWitten2007}
1887:\bibitem{Riehl2021Elements}
1892:\bibitem{CherubiniRijke2024}
1897:\bibitem{Hurwitz1882}

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty && kpsewhich newunicodechar.sty && kpsewhich tikz-cd.sty && kpsewhich cleveref.sty' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 185ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty

exec
/usr/local/bin/zsh -lc "sed -n '500,540p' papers/latex/langlands-analytic-number-theory.log" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
\@cmidlb=\count320
\@aboverulesep=\dimen288
\@belowrulesep=\dimen289
\@thisruleclass=\count321
\@lastruleclass=\count322
\@thisrulewidth=\dimen290
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

)
(/usr/local/texlive/2026/texmf-dist/tex/latex/newunicodechar/newunicodechar.sty
Package: newunicodechar 2018/04/08 v1.2 Defining Unicode characters
)

Package newunicodechar Warning: Redefining Unicode character on input line 33.


Package newunicodechar Warning: Redefining Unicode character on input line 39.

(/usr/local/texlive/2026/texmf-dist/tex/latex/hyperref/hyperref.sty
Package: hyperref 2026-01-29 v7.01p Hypertext links for LaTeX

(/usr/local/texlive/2026/texmf-dist/tex/latex/kvsetkeys/kvsetkeys.sty
Package: kvsetkeys 2022-10-05 v1.19 Key value parser (HO)
)

exec
/usr/local/bin/zsh -lc "rg -n '"'^'"\\\\newlabel|"'^'"\\\\bibcite|"'^'"\\\\citation' papers/latex/langlands-analytic-number-theory.aux" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
6:\citation{Long2026Synthesis}
7:\citation{RiemannHypothesisOriginal}
8:\citation{HoTTBook}
9:\citation{Booij2020}
10:\citation{Voevodsky2014}
11:\citation{Shulman2018Cohesive}
12:\citation{LoefflerStoll2025}
14:\newlabel{sec:intro}{{1}{4}{Introduction}{section.1}{}}
15:\newlabel{sec:intro@cref}{{[section][1][]1}{[1][3][]4}{}{}{}}
18:\citation{Lurie2009HTT}
19:\citation{Gaitsgory2024GLC}
20:\citation{Langlands1970}
21:\citation{GelbartLanglands1979}
22:\citation{Gaitsgory2024GLC}
25:\citation{HoTTBook}
26:\citation{HoTTBook}
27:\citation{HoTTBook}
30:\newlabel{sec:prereq}{{2}{6}{The Prerequisite Chain}{section.2}{}}
31:\newlabel{sec:prereq@cref}{{[section][2][]2}{[1][6][]6}{}{}{}}
33:\newlabel{def:Rc}{{2.1}{6}{Cauchy reals, after the HoTT Book~\cite {HoTTBook}}{theorem.2.1}{}}
34:\newlabel{def:Rc@cref}{{[theorem][1][2]2.1}{[1][6][]6}{}{}{}}
35:\newlabel{thm:RcArchimedean}{{2.3}{6}{\cite {HoTTBook}, Theorem 11.3.32}{theorem.2.3}{}}
36:\newlabel{thm:RcArchimedean@cref}{{[theorem][3][2]2.3}{[1][6][]6}{}{}{}}
39:\citation{Mines1988}
40:\citation{Shulman2018Cohesive}
42:\newlabel{def:UAC}{{2.4}{7}{Univalent algebraic closure}{theorem.2.4}{}}
43:\newlabel{def:UAC@cref}{{[theorem][4][2]2.4}{[1][6][]7}{}{}{}}
44:\newlabel{rem:UACplain}{{2.5}{7}{Plain-language gloss}{theorem.2.5}{}}
45:\newlabel{rem:UACplain@cref}{{[theorem][5][2]2.5}{[1][7][]7}{}{}{}}
46:\newlabel{prop:UACUnique}{{2.6}{7}{}{theorem.2.6}{}}
47:\newlabel{prop:UACUnique@cref}{{[theorem][6][2]2.6}{[1][7][]7}{}{}{}}
50:\newlabel{def:holo}{{2.7}{7}{Constructive holomorphicity}{theorem.2.7}{}}
51:\newlabel{def:holo@cref}{{[theorem][7][2]2.7}{[1][7][]7}{}{}{}}
52:\citation{Booij2020}
53:\newlabel{rem:synth}{{2.8}{8}{Synthetic alternative}{theorem.2.8}{}}
54:\newlabel{rem:synth@cref}{{[theorem][8][2]2.8}{[1][7][]8}{}{}{}}
56:\newlabel{def:Dirichlet}{{2.9}{8}{Dirichlet series}{theorem.2.9}{}}
57:\newlabel{def:Dirichlet@cref}{{[theorem][9][2]2.9}{[1][8][]8}{}{}{}}
58:\newlabel{prop:DirichletAlgebra}{{2.10}{8}{HoTT-native; sketched}{theorem.2.10}{}}
59:\newlabel{prop:DirichletAlgebra@cref}{{[theorem][10][2]2.10}{[1][8][]8}{}{}{}}
62:\newlabel{fig:chain}{{1}{8}{The prerequisite chain. Each arrow represents a non-trivial HoTT-native construction. The final arrow ($\mathsf {Dir} \to \zeta $) is the analytic continuation, and is the place at which the chain currently breaks in pure HoTT}{figure.1}{}}
63:\newlabel{fig:chain@cref}{{[figure][1][]1}{[1][8][]8}{}{}{}}
65:\newlabel{subsec:obstacles}{{2.6}{8}{Detailed account of analytic-continuation obstacles}{subsection.2.6}{}}
66:\newlabel{subsec:obstacles@cref}{{[subsection][6][2]2.6}{[1][8][]8}{}{}{}}
68:\newlabel{subsec:CauchyEx}{{2.7}{9}{HoTT-native Cauchy reals: explicit example}{subsection.2.7}{}}
69:\newlabel{subsec:CauchyEx@cref}{{[subsection][7][2]2.7}{[1][9][]9}{}{}{}}
70:\newlabel{ex:sqrt2}{{2.11}{9}{$\sqrt {2}$ as Cauchy real}{theorem.2.11}{}}
71:\newlabel{ex:sqrt2@cref}{{[theorem][11][2]2.11}{[1][9][]9}{}{}{}}
72:\newlabel{ex:euler}{{2.12}{9}{$e$ as Cauchy real}{theorem.2.12}{}}
73:\newlabel{ex:euler@cref}{{[theorem][12][2]2.12}{[1][9][]9}{}{}{}}
74:\newlabel{ex:pi}{{2.13}{9}{$\pi $ as Cauchy real}{theorem.2.13}{}}
75:\newlabel{ex:pi@cref}{{[theorem][13][2]2.13}{[1][9][]9}{}{}{}}
77:\newlabel{sec:zeta}{{3}{9}{The Riemann Zeta Function as a HoTT Object}{section.3}{}}
78:\newlabel{sec:zeta@cref}{{[section][3][]3}{[1][9][]9}{}{}{}}
79:\citation{Euler1737}
81:\newlabel{eq:zetaSeries}{{4}{10}{Approach 1: $\zeta $ as a higher inductive-inductive type}{equation.4}{}}
82:\newlabel{eq:zetaSeries@cref}{{[equation][4][]4}{[1][10][]10}{}{}{}}
83:\newlabel{def:ZetaHIIT}{{3.1}{10}{Specification of zeta as HIIT, candidate}{theorem.3.1}{}}
84:\newlabel{def:ZetaHIIT@cref}{{[theorem][1][3]3.1}{[1][10][]10}{}{}{}}
85:\newlabel{rem:ZetaHIITissues}{{3.2}{10}{}{theorem.3.2}{}}
86:\newlabel{rem:ZetaHIITissues@cref}{{[theorem][2][3]3.2}{[1][10][]10}{}{}{}}
88:\newlabel{def:ZetaEuler}{{3.3}{11}{Zeta via Euler product}{theorem.3.3}{}}
89:\newlabel{def:ZetaEuler@cref}{{[theorem][3][3]3.3}{[1][10][]11}{}{}{}}
90:\newlabel{prop:Euler}{{3.4}{11}{Euler product, modulo convergence}{theorem.3.4}{}}
91:\newlabel{prop:Euler@cref}{{[theorem][4][3]3.4}{[1][11][]11}{}{}{}}
93:\newlabel{def:MeromCont}{{3.5}{11}{Meromorphic continuation, universal}{theorem.3.5}{}}
94:\newlabel{def:MeromCont@cref}{{[theorem][5][3]3.5}{[1][11][]11}{}{}{}}
95:\newlabel{thm:Identity}{{3.6}{11}{Identity theorem, HoTT version}{theorem.3.6}{}}
96:\newlabel{thm:Identity@cref}{{[theorem][6][3]3.6}{[1][11][]11}{}{}{}}
97:\newlabel{def:ZetaUP}{{3.7}{11}{Zeta via universal property}{theorem.3.7}{}}
98:\newlabel{def:ZetaUP@cref}{{[theorem][7][3]3.7}{[1][11][]11}{}{}{}}
100:\newlabel{thm:ZetaEquiv}{{3.8}{11}{Conjectural equivalence}{theorem.3.8}{}}
101:\newlabel{thm:ZetaEquiv@cref}{{[theorem][8][3]3.8}{[1][11][]11}{}{}{}}
103:\newlabel{thm:FE}{{3.9}{12}{Functional equation, conjectured HoTT-native}{theorem.3.9}{}}
104:\newlabel{thm:FE@cref}{{[theorem][9][3]3.9}{[1][12][]12}{}{}{}}
106:\newlabel{conj:RH}{{3.12}{12}{Riemann hypothesis, HoTT statement}{theorem.3.12}{}}
107:\newlabel{conj:RH@cref}{{[theorem][12][3]3.12}{[1][12][]12}{}{}{}}
109:\newlabel{subsec:Basel}{{3.7}{12}{Worked example: \texorpdfstring {$\zeta (2) = \pi ^2/6$}{zeta(2)=pi^2/6}}{subsection.3.7}{}}
110:\newlabel{subsec:Basel@cref}{{[subsection][7][3]3.7}{[1][12][]12}{}{}{}}
111:\newlabel{thm:Basel}{{3.13}{12}{Basel problem}{theorem.3.13}{}}
112:\newlabel{thm:Basel@cref}{{[theorem][13][3]3.13}{[1][12][]12}{}{}{}}
113:\citation{Langlands1970}
114:\citation{BeilinsonDrinfeld2004}
115:\citation{Gaitsgory2024GLC}
116:\citation{Lurie2009HTT}
117:\citation{LurieHA}
118:\citation{CisinskiKKNS2025}
119:\newlabel{rem:zetatwo}{{3.14}{13}{}{theorem.3.14}{}}
120:\newlabel{rem:zetatwo@cref}{{[theorem][14][3]3.14}{[1][13][]13}{}{}{}}
122:\newlabel{sec:langlands}{{4}{13}{Geometric Langlands in $(\infty ,1)$-Topoi}{section.4}{}}
123:\newlabel{sec:langlands@cref}{{[section][4][]4}{[1][13][]13}{}{}{}}
125:\citation{Shulman2019InfTopos}
126:\citation{ClausenScholzeComplex}
127:\citation{EFK2025AnalyticLanglands}
128:\citation{HoTTBook}
130:\newlabel{rem:internal}{{4.1}{14}{}{theorem.4.1}{}}
131:\newlabel{rem:internal@cref}{{[theorem][1][4]4.1}{[1][14][]14}{}{}{}}
135:\newlabel{subsec:GL1}{{4.5}{14}{Detailed example: $GL(1)$ Langlands and Hecke characters}{subsection.4.5}{}}
136:\newlabel{subsec:GL1@cref}{{[subsection][5][4]4.5}{[1][14][]14}{}{}{}}
137:\citation{Shulman2019InfTopos}
138:\citation{KapustinWitten2007}
139:\citation{Schreiber2013}
140:\citation{Scholze2019Condensed}
141:\citation{ClausenScholze2024Analytic}
143:\newlabel{subsec:GLCInternal}{{4.6}{15}{Geometric Langlands as an internal HoTT statement}{subsection.4.6}{}}
144:\newlabel{subsec:GLCInternal@cref}{{[subsection][6][4]4.6}{[1][15][]15}{}{}{}}
145:\newlabel{conj:GLCHoTT}{{4.4}{15}{Gaitsgory equivalence in HoTT, schematic}{theorem.4.4}{}}
146:\newlabel{conj:GLCHoTT@cref}{{[theorem][4][4]4.4}{[1][15][]15}{}{}{}}
147:\newlabel{rem:univalence-glc}{{4.5}{15}{}{theorem.4.5}{}}
148:\newlabel{rem:univalence-glc@cref}{{[theorem][5][4]4.5}{[1][15][]15}{}{}{}}
151:\newlabel{sec:condensed}{{5}{16}{Condensed Mathematics and HoTT}{section.5}{}}
152:\newlabel{sec:condensed@cref}{{[section][5][]5}{[1][15][]16}{}{}{}}
156:\newlabel{prob:bridge}{{5.1}{16}{Bridging condensed mathematics and HoTT}{theorem.5.1}{}}
157:\newlabel{prob:bridge@cref}{{[theorem][1][5]5.1}{[1][16][]16}{}{}{}}
159:\citation{ClausenScholze2024SixFunctor}
160:\citation{ClausenScholze2025AnalyticStacks}
161:\citation{Riehl2021Elements}
162:\citation{LoefflerStoll2025}
163:\newlabel{def:HoTTSolid}{{5.3}{17}{HoTT-solid abelian group, candidate}{theorem.5.3}{}}
164:\newlabel{def:HoTTSolid@cref}{{[theorem][3][5]5.3}{[1][16][]17}{}{}{}}
166:\newlabel{subsec:sixfunctor}{{5.5}{17}{Six-functor formalism in HoTT}{subsection.5.5}{}}
167:\newlabel{subsec:sixfunctor@cref}{{[subsection][5][5]5.5}{[1][17][]17}{}{}{}}
168:\newlabel{prob:sixfunc}{{5.5}{17}{6-functors in HoTT}{theorem.5.5}{}}
169:\newlabel{prob:sixfunc@cref}{{[theorem][5][5]5.5}{[1][17][]17}{}{}{}}
171:\newlabel{subsec:solidp}{{5.6}{17}{Solid modules over $\Z $ and $p$-adic interaction}{subsection.5.6}{}}
172:\newlabel{subsec:solidp@cref}{{[subsection][6][5]5.6}{[1][17][]17}{}{}{}}
173:\newlabel{conj:padicZeta}{{5.6}{17}{$p$-adic zeta function in HoTT}{theorem.5.6}{}}
174:\newlabel{conj:padicZeta@cref}{{[theorem][6][5]5.6}{[1][17][]17}{}{}{}}
175:\newlabel{rem:padicEasier}{{5.7}{17}{}{theorem.5.7}{}}
176:\newlabel{rem:padicEasier@cref}{{[theorem][7][5]5.7}{[1][17][]17}{}{}{}}
178:\newlabel{sec:loefflerstoll}{{6}{18}{Comparison with Loeffler--Stoll Lean Formalization}{section.6}{}}
179:\newlabel{sec:loefflerstoll@cref}{{[section][6][]6}{[1][17][]18}{}{}{}}
185:\newlabel{subsec:LSsigs}{{6.5}{19}{Code-level comparison: signature against signature}{subsection.6.5}{}}
186:\newlabel{subsec:LSsigs@cref}{{[subsection][5][6]6.5}{[1][19][]19}{}{}{}}
191:\citation{Booij2020}
193:\newlabel{subsec:LSquant}{{6.6}{20}{Quantitative comparison}{subsection.6.6}{}}
194:\newlabel{subsec:LSquant@cref}{{[subsection][6][6]6.6}{[1][19][]20}{}{}{}}
196:\newlabel{sec:roadmap}{{7}{20}{Six Sub-Problems for HoTT-Native \texorpdfstring {$\zeta $}{Zeta}}{section.7}{}}
197:\newlabel{sec:roadmap@cref}{{[section][7][]7}{[1][20][]20}{}{}{}}
199:\newlabel{prob:1}{{7.1}{20}{}{theorem.7.1}{}}
200:\newlabel{prob:1@cref}{{[theorem][1][7]7.1}{[1][20][]20}{}{}{}}
202:\newlabel{prob:2}{{7.2}{20}{}{theorem.7.2}{}}
203:\newlabel{prob:2@cref}{{[theorem][2][7]7.2}{[1][20][]20}{}{}{}}
205:\newlabel{prob:3}{{7.3}{21}{}{theorem.7.3}{}}
206:\newlabel{prob:3@cref}{{[theorem][3][7]7.3}{[1][20][]21}{}{}{}}
208:\newlabel{prob:4}{{7.4}{21}{}{theorem.7.4}{}}
209:\newlabel{prob:4@cref}{{[theorem][4][7]7.4}{[1][21][]21}{}{}{}}
211:\newlabel{prob:5}{{7.5}{21}{}{theorem.7.5}{}}
212:\newlabel{prob:5@cref}{{[theorem][5][7]7.5}{[1][21][]21}{}{}{}}
214:\newlabel{prob:6}{{7.6}{21}{}{theorem.7.6}{}}
215:\newlabel{prob:6@cref}{{[theorem][6][7]7.6}{[1][21][]21}{}{}{}}
219:\newlabel{fig:roadmap}{{2}{22}{Dependency graph for the six sub-problems}{figure.2}{}}
220:\newlabel{fig:roadmap@cref}{{[figure][2][]2}{[1][21][]22}{}{}{}}
222:\newlabel{sec:rh}{{8}{22}{Open Conjectures: Riemann Hypothesis as a HoTT Statement}{section.8}{}}
223:\newlabel{sec:rh@cref}{{[section][8][]8}{[1][21][]22}{}{}{}}
226:\newlabel{rem:decidability}{{8.1}{22}{}{theorem.8.1}{}}
227:\newlabel{rem:decidability@cref}{{[theorem][1][8]8.1}{[1][22][]22}{}{}{}}
228:\newlabel{rem:LEM}{{8.2}{22}{}{theorem.8.2}{}}
229:\newlabel{rem:LEM@cref}{{[theorem][2][8]8.2}{[1][22][]22}{}{}{}}
231:\newlabel{conj:GRH}{{8.3}{22}{GRH for automorphic $L$-functions, HoTT statement}{theorem.8.3}{}}
232:\newlabel{conj:GRH@cref}{{[theorem][3][8]8.3}{[1][22][]22}{}{}{}}
234:\newlabel{thm:vonKoch}{{8.4}{23}{von Koch, expected HoTT version}{theorem.8.4}{}}
235:\newlabel{thm:vonKoch@cref}{{[theorem][4][8]8.4}{[1][23][]23}{}{}{}}
238:\newlabel{subsec:zerofree}{{8.6}{23}{Density theorems and zero-free regions}{subsection.8.6}{}}
239:\newlabel{subsec:zerofree@cref}{{[subsection][6][8]8.6}{[1][23][]23}{}{}{}}
241:\newlabel{subsec:effective}{{8.7}{23}{Effective vs.\ ineffective HoTT statements}{subsection.8.7}{}}
242:\newlabel{subsec:effective@cref}{{[subsection][7][8]8.7}{[1][23][]23}{}{}{}}
243:\citation{Schreiber2013}
244:\citation{Wellen2018}
245:\citation{ScreiberShulman2014QFT}
247:\newlabel{sec:discussion}{{9}{24}{Discussion}{section.9}{}}
248:\newlabel{sec:discussion@cref}{{[section][9][]9}{[1][24][]24}{}{}{}}
251:\citation{Long2026Synthesis}
252:\citation{EFK2025AnalyticLanglands}
253:\citation{Riehl2021Elements}
254:\citation{CherubiniRijke2024}
262:\newlabel{sec:conclusion}{{10}{26}{Conclusion}{section.10}{}}
263:\newlabel{sec:conclusion@cref}{{[section][10][]10}{[1][26][]26}{}{}{}}
264:\citation{HoTTBook}
265:\citation{Shulman2018Cohesive}
267:\newlabel{app:axioms}{{A}{27}{Appendix: HoTT axioms for analytic NT}{appendix.A}{}}
268:\newlabel{app:axioms@cref}{{[section][1][]A}{[1][27][]27}{}{}{}}
269:\newlabel{eq:univ}{{9}{27}{A.1 Univalence}{equation.9}{}}
270:\newlabel{eq:univ@cref}{{[equation][9][]9}{[1][27][]27}{}{}{}}
271:\newlabel{eq:choice}{{10}{27}{A.4 Choice (optional, classical)}{equation.10}{}}
272:\newlabel{eq:choice@cref}{{[equation][10][]10}{[1][27][]27}{}{}{}}
273:\citation{Hurwitz1882}
274:\newlabel{eq:lem}{{11}{28}{A.5 Excluded middle (optional, classical)}{equation.11}{}}
275:\newlabel{eq:lem@cref}{{[equation][11][]11}{[1][27][]28}{}{}{}}
277:\newlabel{app:code}{{B}{28}{Appendix: Companion code overview}{appendix.B}{}}
278:\newlabel{app:code@cref}{{[section][2][]B}{[1][28][]28}{}{}{}}
280:\newlabel{app:cont}{{C}{28}{Appendix: Worked sub-roadmap for sub-problem 4}{appendix.C}{}}
281:\newlabel{app:cont@cref}{{[section][3][]C}{[1][28][]28}{}{}{}}
282:\citation{Schreiber2013}
284:\newlabel{app:glossary}{{D}{29}{Appendix: A glossary of HoTT-native synonyms}{appendix.D}{}}
285:\newlabel{app:glossary@cref}{{[section][4][]D}{[1][29][]29}{}{}{}}
287:\bibcite{HoTTBook}{1}
288:\bibcite{Long2026Synthesis}{2}
289:\bibcite{Voevodsky2014}{3}
290:\bibcite{Booij2020}{4}
291:\bibcite{Mines1988}{5}
292:\bibcite{Shulman2018Cohesive}{6}
293:\bibcite{Shulman2019InfTopos}{7}
294:\bibcite{Lurie2009HTT}{8}
295:\bibcite{LurieHA}{9}
296:\bibcite{Gaitsgory2024GLC}{10}
297:\bibcite{BeilinsonDrinfeld2004}{11}
298:\bibcite{LoefflerStoll2025}{12}
299:\bibcite{Scholze2019Condensed}{13}
300:\bibcite{ClausenScholze2024Analytic}{14}
301:\bibcite{ClausenScholze2024SixFunctor}{15}
302:\bibcite{ClausenScholze2025AnalyticStacks}{16}
303:\bibcite{ClausenScholzeComplex}{17}
304:\bibcite{EFK2025AnalyticLanglands}{18}
305:\bibcite{CisinskiKKNS2025}{19}
306:\bibcite{Langlands1970}{20}
307:\bibcite{GelbartLanglands1979}{21}
308:\bibcite{Schreiber2013}{22}
309:\bibcite{Wellen2018}{23}
310:\bibcite{ScreiberShulman2014QFT}{24}
311:\bibcite{Euler1737}{25}
312:\bibcite{RiemannHypothesisOriginal}{26}
313:\bibcite{KapustinWitten2007}{27}
314:\bibcite{Riehl2021Elements}{28}
315:\bibcite{CherubiniRijke2024}{29}
316:\bibcite{Hurwitz1882}{30}

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(section|subsection|subsubsection|paragraph)\\{["'^}]*'"\\"'$|'"\\\\(section|subsection|subsubsection|paragraph)\\{["'^}]*'"\\\\[A-Za-z]+|\\\\begin\\{(verbatim|tabular|tikzcd|align\\*?|equation\\*?)\\}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
183:\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}
293:\subsection{HoTT-native real numbers \texorpdfstring{$\Rc$}{Rc}}
299:\begin{align}
320:\subsection{HoTT-native complex numbers \texorpdfstring{$\Cc$}{Cc}}
329:\paragraph{Algebraic closure of $\Rc$.}
438:\begin{tikzcd}[column sep=tiny, row sep=large]
533:\subsection{Approach 1: $\zeta$ as a higher inductive-inductive type}
543:\begin{equation}\label{eq:zetaSeries}
554:\begin{align}
589:\subsection{Approach 2: $\zeta$ as analytic limit of Euler product}
623:\subsection{Approach 3: $\zeta$ via universal property of meromorphic continuation}
713:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
768:\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
795:\subsection{$(\infty,1)$-categories vs.\ HoTT}
841:\subsection{Detailed example: $GL(1)$ Langlands and Hecke characters}\label{subsec:GL1}
885:\begin{align*}
908:\subsection{Physical interpretation: 4d $\mathcal{N}=4$ super-Yang--Mills}
940:\subsection{Why this matters for $\zeta$}
1021:\subsection{Solid modules over $\Z$ and $p$-adic interaction}\label{subsec:solidp}
1067:\begin{verbatim}
1115:\begin{verbatim}
1128:\begin{verbatim}
1136:\paragraph{Non-vanishing on $\mathrm{Re}(s) \geq 1$.}
1138:\begin{verbatim}
1147:\begin{verbatim}
1156:\begin{tabular}{lcc}
1187:\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
1255:\begin{tikzcd}[column sep=small, row sep=large]
1562:\begin{equation}\label{eq:univ}
1597:\begin{equation}\label{eq:choice}
1607:\begin{equation}\label{eq:lem}
1712:\begin{tabular}{ll}

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.out | sed -n '1,120p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
     1	\BOOKMARK [1][-]{section.1}{\376\377\000I\000n\000t\000r\000o\000d\000u\000c\000t\000i\000o\000n}{}% 1
     2	\BOOKMARK [2][-]{subsection.1.1}{\376\377\000T\000h\000e\000\040\000p\000r\000i\000n\000c\000i\000p\000a\000l\000\040\000o\000p\000e\000n\000\040\000p\000r\000o\000b\000l\000e\000m}{section.1}% 2
     3	\BOOKMARK [2][-]{subsection.1.2}{\376\377\000W\000h\000y\000\040\000z\000e\000t\000a\000\050\000s\000\051\000=\0000\000\040\000i\000s\000\040\000h\000a\000r\000d\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.1}% 3
     4	\BOOKMARK [2][-]{subsection.1.3}{\376\377\000W\000h\000a\000t\000\040\000t\000h\000i\000s\000\040\000p\000a\000p\000e\000r\000\040\000d\000o\000e\000s\000\040\000\050\000a\000n\000d\000\040\000d\000o\000e\000s\000\040\000n\000o\000t\000\040\000d\000o\000\051}{section.1}% 4
     5	\BOOKMARK [2][-]{subsection.1.4}{\376\377\000A\000l\000g\000e\000b\000r\000a\000i\000c\000\040\000v\000s\000.\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000n\000u\000m\000b\000e\000r\000\040\000t\000h\000e\000o\000r\000y}{section.1}% 5
     6	\BOOKMARK [2][-]{subsection.1.5}{\376\377\000O\000u\000t\000l\000i\000n\000e}{section.1}% 6
     7	\BOOKMARK [1][-]{section.2}{\376\377\000T\000h\000e\000\040\000P\000r\000e\000r\000e\000q\000u\000i\000s\000i\000t\000e\000\040\000C\000h\000a\000i\000n}{}% 7
     8	\BOOKMARK [2][-]{subsection.2.1}{\376\377\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000r\000e\000a\000l\000\040\000n\000u\000m\000b\000e\000r\000s\000\040\000R\000c}{section.2}% 8
     9	\BOOKMARK [2][-]{subsection.2.2}{\376\377\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000c\000o\000m\000p\000l\000e\000x\000\040\000n\000u\000m\000b\000e\000r\000s\000\040\000C\000c}{section.2}% 9
    10	\BOOKMARK [2][-]{subsection.2.3}{\376\377\000H\000o\000l\000o\000m\000o\000r\000p\000h\000i\000c\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000s\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.2}% 10
    11	\BOOKMARK [2][-]{subsection.2.4}{\376\377\000D\000i\000r\000i\000c\000h\000l\000e\000t\000\040\000s\000e\000r\000i\000e\000s}{section.2}% 11
    12	\BOOKMARK [2][-]{subsection.2.5}{\376\377\000P\000u\000t\000t\000i\000n\000g\000\040\000i\000t\000\040\000t\000o\000g\000e\000t\000h\000e\000r}{section.2}% 12
    13	\BOOKMARK [2][-]{subsection.2.6}{\376\377\000D\000e\000t\000a\000i\000l\000e\000d\000\040\000a\000c\000c\000o\000u\000n\000t\000\040\000o\000f\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000-\000c\000o\000n\000t\000i\000n\000u\000a\000t\000i\000o\000n\000\040\000o\000b\000s\000t\000a\000c\000l\000e\000s}{section.2}% 13
    14	\BOOKMARK [2][-]{subsection.2.7}{\376\377\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000C\000a\000u\000c\000h\000y\000\040\000r\000e\000a\000l\000s\000:\000\040\000e\000x\000p\000l\000i\000c\000i\000t\000\040\000e\000x\000a\000m\000p\000l\000e}{section.2}% 14
    15	\BOOKMARK [1][-]{section.3}{\376\377\000T\000h\000e\000\040\000R\000i\000e\000m\000a\000n\000n\000\040\000Z\000e\000t\000a\000\040\000F\000u\000n\000c\000t\000i\000o\000n\000\040\000a\000s\000\040\000a\000\040\000H\000o\000T\000T\000\040\000O\000b\000j\000e\000c\000t}{}% 15
    16	\BOOKMARK [2][-]{subsection.3.1}{\376\377\000A\000p\000p\000r\000o\000a\000c\000h\000\040\0001\000:\000\040\000\040\000a\000s\000\040\000a\000\040\000h\000i\000g\000h\000e\000r\000\040\000i\000n\000d\000u\000c\000t\000i\000v\000e\000-\000i\000n\000d\000u\000c\000t\000i\000v\000e\000\040\000t\000y\000p\000e}{section.3}% 16
    17	\BOOKMARK [2][-]{subsection.3.2}{\376\377\000A\000p\000p\000r\000o\000a\000c\000h\000\040\0002\000:\000\040\000\040\000a\000s\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000l\000i\000m\000i\000t\000\040\000o\000f\000\040\000E\000u\000l\000e\000r\000\040\000p\000r\000o\000d\000u\000c\000t}{section.3}% 17
    18	\BOOKMARK [2][-]{subsection.3.3}{\376\377\000A\000p\000p\000r\000o\000a\000c\000h\000\040\0003\000:\000\040\000\040\000v\000i\000a\000\040\000u\000n\000i\000v\000e\000r\000s\000a\000l\000\040\000p\000r\000o\000p\000e\000r\000t\000y\000\040\000o\000f\000\040\000m\000e\000r\000o\000m\000o\000r\000p\000h\000i\000c\000\040\000c\000o\000n\000t\000i\000n\000u\000a\000t\000i\000o\000n}{section.3}% 18
    19	\BOOKMARK [2][-]{subsection.3.4}{\376\377\000E\000q\000u\000i\000v\000a\000l\000e\000n\000c\000e\000\040\000o\000f\000\040\000t\000h\000e\000\040\000t\000h\000r\000e\000e\000\040\000d\000e\000f\000i\000n\000i\000t\000i\000o\000n\000s}{section.3}% 19
    20	\BOOKMARK [2][-]{subsection.3.5}{\376\377\000T\000h\000e\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000a\000l\000\040\000e\000q\000u\000a\000t\000i\000o\000n}{section.3}% 20
    21	\BOOKMARK [2][-]{subsection.3.6}{\376\377\000T\000h\000e\000\040\000c\000r\000i\000t\000i\000c\000a\000l\000\040\000s\000t\000r\000i\000p}{section.3}% 21
    22	\BOOKMARK [2][-]{subsection.3.7}{\376\377\000W\000o\000r\000k\000e\000d\000\040\000e\000x\000a\000m\000p\000l\000e\000:\000\040\000z\000e\000t\000a\000\050\0002\000\051\000=\000p\000i\0002\000/\0006}{section.3}% 22
    23	\BOOKMARK [1][-]{section.4}{\376\377\000G\000e\000o\000m\000e\000t\000r\000i\000c\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000i\000n\000\040\000\050\000,\0001\000\051\000-\000T\000o\000p\000o\000i}{}% 23
    24	\BOOKMARK [2][-]{subsection.4.1}{\376\377\000B\000r\000i\000e\000f\000\040\000h\000i\000s\000t\000o\000r\000y}{section.4}% 24
    25	\BOOKMARK [2][-]{subsection.4.2}{\376\377\000\050\000,\0001\000\051\000-\000c\000a\000t\000e\000g\000o\000r\000i\000e\000s\000\040\000v\000s\000.\000\040\000H\000o\000T\000T}{section.4}% 25
    26	\BOOKMARK [2][-]{subsection.4.3}{\376\377\000G\000e\000o\000m\000e\000t\000r\000i\000c\000\040\000v\000s\000.\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s}{section.4}% 26
    27	\BOOKMARK [2][-]{subsection.4.4}{\376\377\000I\000m\000p\000l\000i\000c\000a\000t\000i\000o\000n\000\040\000f\000o\000r\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000N\000T}{section.4}% 27
    28	\BOOKMARK [2][-]{subsection.4.5}{\376\377\000D\000e\000t\000a\000i\000l\000e\000d\000\040\000e\000x\000a\000m\000p\000l\000e\000:\000\040\000G\000L\000\050\0001\000\051\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000a\000n\000d\000\040\000H\000e\000c\000k\000e\000\040\000c\000h\000a\000r\000a\000c\000t\000e\000r\000s}{section.4}% 28
    29	\BOOKMARK [2][-]{subsection.4.6}{\376\377\000G\000e\000o\000m\000e\000t\000r\000i\000c\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000a\000s\000\040\000a\000n\000\040\000i\000n\000t\000e\000r\000n\000a\000l\000\040\000H\000o\000T\000T\000\040\000s\000t\000a\000t\000e\000m\000e\000n\000t}{section.4}% 29
    30	\BOOKMARK [2][-]{subsection.4.7}{\376\377\000P\000h\000y\000s\000i\000c\000a\000l\000\040\000i\000n\000t\000e\000r\000p\000r\000e\000t\000a\000t\000i\000o\000n\000:\000\040\0004\000d\000\040\000N\000=\0004\000\040\000s\000u\000p\000e\000r\000-\000Y\000a\000n\000g\040\023\000M\000i\000l\000l\000s}{section.4}% 30
    31	\BOOKMARK [1][-]{section.5}{\376\377\000C\000o\000n\000d\000e\000n\000s\000e\000d\000\040\000M\000a\000t\000h\000e\000m\000a\000t\000i\000c\000s\000\040\000a\000n\000d\000\040\000H\000o\000T\000T}{}% 31
    32	\BOOKMARK [2][-]{subsection.5.1}{\376\377\000P\000y\000k\000n\000o\000t\000i\000c\000\040\000/\000\040\000c\000o\000n\000d\000e\000n\000s\000e\000d\000\040\000s\000e\000t\000s}{section.5}% 32
    33	\BOOKMARK [2][-]{subsection.5.2}{\376\377\000W\000h\000y\000\040\000t\000h\000i\000s\000\040\000m\000a\000t\000t\000e\000r\000s\000\040\000f\000o\000r\000\040}{section.5}% 33
    34	\BOOKMARK [2][-]{subsection.5.3}{\376\377\000B\000r\000i\000d\000g\000i\000n\000g\000\040\000t\000o\000\040\000H\000o\000T\000T}{section.5}% 34
    35	\BOOKMARK [2][-]{subsection.5.4}{\376\377\000S\000o\000l\000i\000d\000\040\000a\000b\000e\000l\000i\000a\000n\000\040\000g\000r\000o\000u\000p\000s\000\040\000i\000n\000\040\000H\000o\000T\000T\000,\000\040\000s\000k\000e\000t\000c\000h}{section.5}% 35
    36	\BOOKMARK [2][-]{subsection.5.5}{\376\377\000S\000i\000x\000-\000f\000u\000n\000c\000t\000o\000r\000\040\000f\000o\000r\000m\000a\000l\000i\000s\000m\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.5}% 36
    37	\BOOKMARK [2][-]{subsection.5.6}{\376\377\000S\000o\000l\000i\000d\000\040\000m\000o\000d\000u\000l\000e\000s\000\040\000o\000v\000e\000r\000\040\000Z\000\040\000a\000n\000d\000\040\000p\000-\000a\000d\000i\000c\000\040\000i\000n\000t\000e\000r\000a\000c\000t\000i\000o\000n}{section.5}% 37
    38	\BOOKMARK [1][-]{section.6}{\376\377\000C\000o\000m\000p\000a\000r\000i\000s\000o\000n\000\040\000w\000i\000t\000h\000\040\000L\000o\000e\000f\000f\000l\000e\000r\040\023\000S\000t\000o\000l\000l\000\040\000L\000e\000a\000n\000\040\000F\000o\000r\000m\000a\000l\000i\000z\000a\000t\000i\000o\000n}{}% 38
    39	\BOOKMARK [2][-]{subsection.6.1}{\376\377\000W\000h\000a\000t\000\040\000L\000o\000e\000f\000f\000l\000e\000r\040\023\000S\000t\000o\000l\000l\000\040\000h\000a\000v\000e}{section.6}% 39
    40	\BOOKMARK [2][-]{subsection.6.2}{\376\377\000W\000h\000a\000t\000\040\000L\000e\000a\000n\000\040\000/\000\040\000M\000a\000t\000h\000l\000i\000b\000\040\000p\000r\000o\000v\000i\000d\000e\000s\000\040\000t\000h\000a\000t\000\040\000H\000o\000T\000T\000\040\000l\000a\000c\000k\000s}{section.6}% 40
    41	\BOOKMARK [2][-]{subsection.6.3}{\376\377\000W\000h\000a\000t\000\040\000H\000o\000T\000T\000\040\000c\000o\000u\000l\000d\000\040\000o\000f\000f\000e\000r}{section.6}% 41
    42	\BOOKMARK [2][-]{subsection.6.4}{\376\377\000S\000t\000r\000a\000t\000e\000g\000y\000:\000\040\000H\000o\000T\000T\000\040\000a\000s\000\040\000c\000l\000a\000s\000s\000i\000c\000a\000l\000-\000f\000o\000u\000n\000d\000a\000t\000i\000o\000n\000\040\000t\000r\000a\000n\000s\000p\000o\000r\000t}{section.6}% 42
    43	\BOOKMARK [2][-]{subsection.6.5}{\376\377\000C\000o\000d\000e\000-\000l\000e\000v\000e\000l\000\040\000c\000o\000m\000p\000a\000r\000i\000s\000o\000n\000:\000\040\000s\000i\000g\000n\000a\000t\000u\000r\000e\000\040\000a\000g\000a\000i\000n\000s\000t\000\040\000s\000i\000g\000n\000a\000t\000u\000r\000e}{section.6}% 43
    44	\BOOKMARK [2][-]{subsection.6.6}{\376\377\000Q\000u\000a\000n\000t\000i\000t\000a\000t\000i\000v\000e\000\040\000c\000o\000m\000p\000a\000r\000i\000s\000o\000n}{section.6}% 44
    45	\BOOKMARK [1][-]{section.7}{\376\377\000S\000i\000x\000\040\000S\000u\000b\000-\000P\000r\000o\000b\000l\000e\000m\000s\000\040\000f\000o\000r\000\040\000H\000o\000T\000T\000-\000N\000a\000t\000i\000v\000e\000\040\000Z\000e\000t\000a}{}% 45
    46	\BOOKMARK [2][-]{section*.9}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0001\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000c\000o\000m\000p\000l\000e\000x\000\040\000n\000u\000m\000b\000e\000r\000s}{section.7}% 46
    47	\BOOKMARK [2][-]{section*.10}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0002\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000h\000o\000l\000o\000m\000o\000r\000p\000h\000i\000c\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000s}{section.7}% 47
    48	\BOOKMARK [2][-]{section*.11}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0003\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000D\000i\000r\000i\000c\000h\000l\000e\000t\000\040\000s\000e\000r\000i\000e\000s}{section.7}% 48
    49	\BOOKMARK [2][-]{section*.12}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0004\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000c\000o\000n\000t\000i\000n\000u\000a\000t\000i\000o\000n}{section.7}% 49
    50	\BOOKMARK [2][-]{section*.13}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0005\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000f\000u\000n\000c\000t\000i\000o\000n\000a\000l\000\040\000e\000q\000u\000a\000t\000i\000o\000n}{section.7}% 50
    51	\BOOKMARK [2][-]{section*.14}{\376\377\000S\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0006\000:\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000R\000H\000\040\000s\000t\000a\000t\000e\000m\000e\000n\000t}{section.7}% 51
    52	\BOOKMARK [2][-]{subsection.7.1}{\376\377\000C\000o\000m\000p\000o\000s\000i\000t\000i\000o\000n\000\040\000d\000i\000a\000g\000r\000a\000m}{section.7}% 52
    53	\BOOKMARK [2][-]{subsection.7.2}{\376\377\000E\000s\000t\000i\000m\000a\000t\000e\000d\000\040\000e\000f\000f\000o\000r\000t\000\040\000a\000n\000d\000\040\000m\000i\000l\000e\000s\000t\000o\000n\000e\000s}{section.7}% 53
    54	\BOOKMARK [1][-]{section.8}{\376\377\000O\000p\000e\000n\000\040\000C\000o\000n\000j\000e\000c\000t\000u\000r\000e\000s\000:\000\040\000R\000i\000e\000m\000a\000n\000n\000\040\000H\000y\000p\000o\000t\000h\000e\000s\000i\000s\000\040\000a\000s\000\040\000a\000\040\000H\000o\000T\000T\000\040\000S\000t\000a\000t\000e\000m\000e\000n\000t}{}% 54
    55	\BOOKMARK [2][-]{subsection.8.1}{\376\377\000M\000o\000d\000a\000l\000-\000l\000o\000g\000i\000c\000a\000l\000\040\000s\000t\000a\000t\000u\000s\000\040\000o\000f\000\040\000R\000H\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.8}% 55
    56	\BOOKMARK [2][-]{subsection.8.2}{\376\377\000D\000e\000c\000i\000d\000a\000b\000i\000l\000i\000t\000y\000\040\000a\000n\000d\000\040\000c\000o\000n\000s\000t\000r\000u\000c\000t\000i\000v\000i\000t\000y}{section.8}% 56
    57	\BOOKMARK [2][-]{subsection.8.3}{\376\377\000C\000o\000n\000n\000e\000c\000t\000i\000o\000n\000s\000\040\000t\000o\000\040\000t\000h\000e\000\040\000L\000a\000n\000g\000l\000a\000n\000d\000s\000\040\000p\000r\000o\000g\000r\000a\000m\000m\000e}{section.8}% 57
    58	\BOOKMARK [2][-]{subsection.8.4}{\376\377\000T\000h\000e\000\040\000v\000o\000n\000\040\000K\000o\000c\000h\000\040\000t\000h\000e\000o\000r\000e\000m\000\040\000i\000n\000\040\000H\000o\000T\000T}{section.8}% 58
    59	\BOOKMARK [2][-]{subsection.8.5}{\376\377\000W\000h\000a\000t\000\040\000i\000f\000\040\000R\000H\000\040\000i\000s\000\040\000i\000n\000d\000e\000p\000e\000n\000d\000e\000n\000t\000\040\000o\000f\000\040\000H\000o\000T\000T\000-\000s\000e\000t\000\040\000t\000h\000e\000o\000r\000y\000?}{section.8}% 59
    60	\BOOKMARK [2][-]{subsection.8.6}{\376\377\000D\000e\000n\000s\000i\000t\000y\000\040\000t\000h\000e\000o\000r\000e\000m\000s\000\040\000a\000n\000d\000\040\000z\000e\000r\000o\000-\000f\000r\000e\000e\000\040\000r\000e\000g\000i\000o\000n\000s}{section.8}% 60
    61	\BOOKMARK [2][-]{subsection.8.7}{\376\377\000E\000f\000f\000e\000c\000t\000i\000v\000e\000\040\000v\000s\000.\000\040\000i\000n\000e\000f\000f\000e\000c\000t\000i\000v\000e\000\040\000H\000o\000T\000T\000\040\000s\000t\000a\000t\000e\000m\000e\000n\000t\000s}{section.8}% 61
    62	\BOOKMARK [1][-]{section.9}{\376\377\000D\000i\000s\000c\000u\000s\000s\000i\000o\000n}{}% 62
    63	\BOOKMARK [2][-]{subsection.9.1}{\376\377\000W\000h\000y\000\040\000i\000s\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000N\000T\000\040\000s\000p\000e\000c\000i\000f\000i\000c\000a\000l\000l\000y\000\040\000h\000a\000r\000d\000?}{section.9}% 63
    64	\BOOKMARK [2][-]{subsection.9.2}{\376\377\000C\000o\000m\000p\000a\000r\000i\000s\000o\000n\000:\000\040\000L\000e\000a\000n\000\040\000M\000a\000t\000h\000l\000i\000b\000'\000s\000\040\000e\000f\000f\000e\000c\000t\000i\000v\000e\000n\000e\000s\000s}{section.9}% 64
    65	\BOOKMARK [2][-]{subsection.9.3}{\376\377\000T\000h\000e\000\040\000r\000o\000l\000e\000\040\000o\000f\000\040\000c\000o\000h\000e\000s\000i\000v\000e\000\040\000/\000\040\000d\000i\000f\000f\000e\000r\000e\000n\000t\000i\000a\000l\000\040\000H\000o\000T\000T}{section.9}% 65
    66	\BOOKMARK [2][-]{subsection.9.4}{\376\377\000L\000i\000m\000i\000t\000a\000t\000i\000o\000n\000s\000\040\000o\000f\000\040\000t\000h\000i\000s\000\040\000p\000a\000p\000e\000r}{section.9}% 66
    67	\BOOKMARK [2][-]{subsection.9.5}{\376\377\000F\000u\000t\000u\000r\000e\000\040\000d\000i\000r\000e\000c\000t\000i\000o\000n\000s}{section.9}% 67
    68	\BOOKMARK [2][-]{subsection.9.6}{\376\377\000C\000o\000n\000n\000e\000c\000t\000i\000o\000n\000\040\000w\000i\000t\000h\000\040\000d\000i\000r\000e\000c\000t\000e\000d\000\040\000t\000y\000p\000e\000\040\000t\000h\000e\000o\000r\000y}{section.9}% 68
    69	\BOOKMARK [2][-]{subsection.9.7}{\376\377\000C\000o\000n\000n\000e\000c\000t\000i\000o\000n\000\040\000w\000i\000t\000h\000\040\000s\000y\000n\000t\000h\000e\000t\000i\000c\000\040\000a\000l\000g\000e\000b\000r\000a\000i\000c\000\040\000g\000e\000o\000m\000e\000t\000r\000y}{section.9}% 69
    70	\BOOKMARK [2][-]{subsection.9.8}{\376\377\000T\000h\000e\000\040\000r\000o\000l\000e\000\040\000o\000f\000\040\000c\000o\000m\000p\000u\000t\000e\000r\000-\000c\000h\000e\000c\000k\000e\000d\000\040\000p\000r\000o\000o\000f\000s}{section.9}% 70
    71	\BOOKMARK [1][-]{section.10}{\376\377\000C\000o\000n\000c\000l\000u\000s\000i\000o\000n}{}% 71
    72	\BOOKMARK [1][-]{appendix.A}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000H\000o\000T\000T\000\040\000a\000x\000i\000o\000m\000s\000\040\000f\000o\000r\000\040\000a\000n\000a\000l\000y\000t\000i\000c\000\040\000N\000T}{}% 72
    73	\BOOKMARK [1][-]{appendix.B}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000C\000o\000m\000p\000a\000n\000i\000o\000n\000\040\000c\000o\000d\000e\000\040\000o\000v\000e\000r\000v\000i\000e\000w}{}% 73
    74	\BOOKMARK [1][-]{appendix.C}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000W\000o\000r\000k\000e\000d\000\040\000s\000u\000b\000-\000r\000o\000a\000d\000m\000a\000p\000\040\000f\000o\000r\000\040\000s\000u\000b\000-\000p\000r\000o\000b\000l\000e\000m\000\040\0004}{}% 74
    75	\BOOKMARK [1][-]{appendix.D}{\376\377\000A\000p\000p\000e\000n\000d\000i\000x\000:\000\040\000A\000\040\000g\000l\000o\000s\000s\000a\000r\000y\000\040\000o\000f\000\040\000H\000o\000T\000T\000-\000n\000a\000t\000i\000v\000e\000\040\000s\000y\000n\000o\000n\000y\000m\000s}{}% 75

exec
/usr/local/bin/zsh -lc "rg -n '\\"'$|'"\\\\zeta|\\\\infty|\\\\mathcal|\\\\Z|\\\\Cc|\\\\Rc|\\"'^|GL'"\\(1\\)|p-adic|Topoi|Approach' papers/latex/langlands-analytic-number-theory.out" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
exec
/usr/local/bin/zsh -lc "rg -n '"'^[[:space:]]*%|TODO|todo|FIXME|'"\\\\vspace|\\\\hspace|\\\\linebreak|\\\\pagebreak|\\\\newpage|\\\\allowbreak|\\\\sloppy|\\\\fussy' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
3:% Core math
6:% Page layout (load early so other packages see geometry)
9:% Graphics and color
13:% Diagrams
18:% Tables
21:% Page hooks for the GrokRxiv sidebar
24:% Unicode characters used inside verbatim Lean snippets.
43:% References (hyperref must be loaded late; cleveref after hyperref)
47:% Theorems
60:% GrokRxiv sidebar
78:% Custom macros
105:% Cohesive HoTT modalities.
109:% (We intentionally retain the standard \zeta from amssymb.)
288:%---------------------------------------------------------------
528:%---------------------------------------------------------------
767:%---------------------------------------------------------------
923:%---------------------------------------------------------------
1048:%---------------------------------------------------------------
1186:%---------------------------------------------------------------
1280:%---------------------------------------------------------------
1399:%---------------------------------------------------------------
1524:%---------------------------------------------------------------
1551:%---------------------------------------------------------------
1743:%---------------------------------------------------------------

codex
References and citations appear resolved in the current artifacts: the source was compiled after its last edit, the log has no undefined-reference/citation warnings, and the aux contains matching `\newlabel`/`\bibcite` entries. I’m doing one lint pass for LaTeX-level style problems before finalizing the issue list.
exec
/usr/local/bin/zsh -lc 'command -v chktex || true' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex

exec
/usr/local/bin/zsh -lc "rg -n '.{120,}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
823:Rham stack (cf.~\cite{ClausenScholzeComplex} for the complex-analytic side). It says nothing directly about $\zeta$ or about analytic number

exec
/usr/local/bin/zsh -lc "rg -n '\\\\(holo|flatm|sharpm|esh|HoTT|HIIT|Type|Prop|Set|Path|Aut|Hom|Map|Eq|IsEquiv|nCat|Tw)\\b|\\\\flat\\b|\\\\sharp\\b' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
85:\newcommand{\HoTT}{\mathsf{HoTT}}
86:\newcommand{\Type}{\mathcal{U}}
87:\newcommand{\Prop}{\mathsf{Prop}}
88:\newcommand{\Set}{\mathsf{Set}}
92:\newcommand{\Path}{\mathsf{Path}}
95:\newcommand{\HIIT}{\mathsf{HIIT}}
97:\newcommand{\Aut}{\mathsf{Aut}}
98:\newcommand{\Hom}{\mathsf{Hom}}
99:\newcommand{\Map}{\mathsf{Map}}
100:\newcommand{\Eq}{\mathsf{Eq}}
101:\newcommand{\IsEquiv}{\mathsf{IsEquiv}}
102:\newcommand{\nCat}[1]{(\infty,#1)\text{-}\mathsf{Cat}}
103:\newcommand{\Tw}{\mathcal{T}}
104:\newcommand{\holo}{\mathsf{Holo}}
106:\newcommand{\esh}{\mathsf{S}}      % shape modality
107:\newcommand{\flatm}{\mathsf{b}}    % flat modality (avoid clash with \flat)
108:\newcommand{\sharpm}{\mathsf{S^\sharp}} % sharp modality
188:\item A HoTT-native object $\Cc:\Type$ of complex numbers, complete with the
194:\item A HoTT-native notion of \emph{holomorphic function} $\holo:(\Cc \to \Cc) \to \Type$.
297:defined simultaneously with a relation $\sim_\epsilon : \Rc \to \Rc \to \Type$
386:HoTT-native in the sense of using only $\Type$, $=$, and the
402:shape and flat modalities $\esh, \flat$. Holomorphicity becomes a synthetic
405:where $\esh$ is interpreted as the geometric $\C^\infty$-shape.
440:  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)
688:\item HoTT-native Mellin transform $\mathcal{M}:\holo(\Rc^+,\Rc) \to \holo(\Cc,\Cc)$.
886:\mathsf{Bun}_G(X) &:\Type \quad \text{(moduli stack of $G$-bundles)}, \\
887:\mathsf{LocSys}_{G^\vee}(X) &:\Type \quad \text{(moduli stack of $G^\vee$-local systems)}, \\
888:\mathsf{D}\text{-mod}(\mathsf{Bun}_G) &:\Type \quad \text{(category of D-modules)}, \\
889:\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}) &:\Type \quad \text{(category of quasi-coherent sheaves)}.
984:if $\esh(A) \simeq A$ and the map $\flat A \to A$ is an equivalence.
1244:Write down a HoTT proposition $\mathrm{RH}:\Prop$ such that $\mathrm{RH}$
1441:\emph{differential cohesive HoTT}, treating $\C$ as a $\esh$-modal type and
1584:\item Shape modality $\esh:\mathcal{U} \to \mathcal{U}$ (left adjoint to
1585:$\flat$).
1586:\item Flat modality $\flat:\mathcal{U} \to \mathcal{U}$ (right adjoint to
1587:$\esh$).
1588:\item Sharp modality $\sharp:\mathcal{U} \to \mathcal{U}$.
1591:These satisfy the cohesive triple-adjunction $\esh \dashv \flat \dashv \sharp$
1608:\mathrm{LEM} : \Pi(P:\Prop).\, P + \neg P.
1722:LEM & $\Pi(P:\Prop).\, P + \neg P$ (optional) \\

exec
/usr/local/bin/zsh -lc 'chktex -q -I0 papers/latex/langlands-analytic-number-theory.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 133: Intersentence spacing (`\@') should perhaps be used.
Langlands programme have not been substantially reformulated in HoTT. The  
                                                                    ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 144: Wrong length of dash may have been used.
inductive--inductive type, as the analytic limit of an Euler product, and as  
         ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 147: Wrong length of dash may have been used.
Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze  
                            ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 147: Wrong length of dash may have been used.
Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze  
                                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 147: Wrong length of dash may have been used.
Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze  
                                                                ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 149: Wrong length of dash may have been used.
Loeffler--Stoll Lean 4 / Mathlib formalization of the Riemann zeta function  
        ^^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 183: You should put a space in front of parenthesis.
\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}  
                                                  ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 197: Non-breaking space (`~') should have been used.
\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 209: Non-breaking space (`~') should have been used.
\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 229: Wrong length of dash may have been used.
\item Compares HoTT and Clausen--Scholze condensed mathematics, identifying  
                               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 231: Wrong length of dash may have been used.
\item Compares with the Loeffler--Stoll 2025 Lean formalization, both as a  
                                ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 243: Intersentence spacing (`\@') should perhaps be used.
\item Claim that HoTT methods will, in principle, prove RH; we are agnostic  
                                                          ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 250: Wrong length of dash may have been used.
Loeffler--Stoll's Mathlib code.  
        ^^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 254: Interword spacing (`\ ') should perhaps be used.
A clarifying distinction. \emph{Algebraic number theory} studies  
                         ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 282: Intersentence spacing (`\@') should perhaps be used.
\Cref{sec:condensed} compares condensed mathematics and HoTT.  
                                                            ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 283: Wrong length of dash may have been used.
\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.  
                                               ^^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 301: You should perhaps use `\lim' instead.
\mathsf{lim} &: \Pi(x:\Q^+ \to \Rc).\, \mathsf{IsCauchy}(x) \to \Rc \\  
        ^^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 305: Non-breaking space (`~') should have been used.
$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.  
               ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 431: Non-breaking space (`~') should have been used.
\cite{Booij2020}.  
^
Warning 1 in papers/latex/langlands-analytic-number-theory.tex line 439: Command terminated with space.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                        ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 439: Use either `` or '' as an alternative to `"'.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                   ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 439: Use either `` or '' as an alternative to `"'.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                                ^
Warning 1 in papers/latex/langlands-analytic-number-theory.tex line 439: Command terminated with space.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                                        ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 440: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
            ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 440: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
                  ^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 440: You should put a space in front of parenthesis.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
                                   ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 441: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
            ^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 441: You should put a space in front of parenthesis.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
                        ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 441: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
                                 ^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 442: You should put a space in front of parenthesis.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 442: Use either `` or '' as an alternative to `"'.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 442: Use either `` or '' as an alternative to `"'.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                             ^
Warning 1 in papers/latex/langlands-analytic-number-theory.tex line 442: Command terminated with space.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                                       ^
Warning 24 in papers/latex/langlands-analytic-number-theory.tex line 448: Delete this space to maintain correct pagereferences.
\label{fig:chain}  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 467: Wrong length of dash may have been used.
clopen requires constructive analogues of Bolzano--Weierstrass.  
                                                 ^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 472: You should enclose the previous parenthesis with `{}'.
\item \emph{Hurwitz zeta} method: define $\zeta(s,a) = \sum_{n \geq 0}(n+a)^{-s}$  
                                                                          ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 505: You should enclose the previous parenthesis with `{}'.
that $|a(\epsilon)^2 - 2| < \epsilon$. Then $a$ is a Cauchy modulus and  
                 ^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 506: You should perhaps use `\lim' instead.
$\mathsf{lim}(a, \mathsf{IsCauchy}_a):\Rc$ is $\sqrt{2}$. Equality  
         ^^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 507: You should enclose the previous parenthesis with `{}'.
$(\sqrt{2})^2 = 2$ in $\Rc$ follows from the equality constructor  
          ^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 512: You should perhaps use `\lim' instead.
$e := \mathsf{lim}((\epsilon \mapsto \sum_{k=0}^{N(\epsilon)} 1/k!),  
              ^^^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 519: You should perhaps use `\lim' instead.
$\pi := \mathsf{lim}((\epsilon \mapsto \text{Machin formula at depth } N(\epsilon)),  
                ^^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 531: Intersentence spacing (`\@') should perhaps be used.
We now propose three approaches to defining $\zeta$ inside HoTT.  
                                                               ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 565: You should enclose the previous parenthesis with `{}'.
$\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)\cos(\pi s/2)\zeta(s)$.  
                    ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 599: You should enclose the previous parenthesis with `{}'.
\zeta_E(s) := \prod_{p \in \mathbb{P}} (1 - p^{-s})^{-1}  
                                                  ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 614: You should enclose the previous parenthesis with `{}'.
\prod_p (1 - p^{-s})^{-1}  
                   ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 644: Intersentence spacing (`\@') should perhaps be used.
and ``open'' is interpreted appropriately in cohesive HoTT.  
                                                          ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 677: You should enclose the previous parenthesis with `{}'.
\zeta(1-s) = 2 (2\pi)^{-s} \Gamma(s) \cos(\pi s / 2) \zeta(s).  
                    ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 691: Intersentence spacing (`\@') should perhaps be used.
None of these are presently formalized in HoTT. They are all formalized in  
                                              ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 692: Wrong length of dash may have been used.
classical Lean 4 / Mathlib (Loeffler--Stoll, 2025).  
                                    ^^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 713: You should put a space in front of parenthesis.
\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}  
                                                                      ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 728: You should enclose the previous parenthesis with `{}'.
x^2 = \frac{\pi^2}{3} + 4\sum_{n=1}^{\infty} \frac{(-1)^n \cos(nx)}{n^2}.  
                                                      ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 748: Intersentence spacing (`\@') should perhaps be used.
\item Infinite-product convergence theory in HoTT.  
                                                 ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 782: Wrong length of dash may have been used.
Geometric Langlands has a categorical formulation due to Beilinson--Drinfeld  
                                                                  ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 783: Non-breaking space (`~') should have been used.
\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 783: Wrong length of dash may have been used.
\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is  
                                        ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 793: Non-breaking space (`~') should have been used.
\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 800: Non-breaking space (`~') should have been used.
\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 814: Wrong length of dash may have been used.
2-topos / very-large-universe setup (in the spirit of Riehl--Verity directed  
                                                           ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 826: Wrong length of dash may have been used.
The \emph{analytic} Langlands programme (Etingof--Frenkel--Kazhdan  
                                                ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 826: Wrong length of dash may have been used.
The \emph{analytic} Langlands programme (Etingof--Frenkel--Kazhdan  
                                                         ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 827: Non-breaking space (`~') should have been used.
\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 903: Wrong length of dash may have been used.
Gaitsgory--Drinfeld equivalence comes equipped with a Hecke-eigensheaf  
         ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 908: Wrong length of dash may have been used.
\subsection{Physical interpretation: 4d $\mathcal{N}=4$ super-Yang--Mills}  
                                                                  ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 911: Wrong length of dash may have been used.
Langlands as electric--magnetic duality (S-duality) of 4d  
                     ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 912: Wrong length of dash may have been used.
$\mathcal{N}=4$ super-Yang--Mills compactified on a Riemann surface.  
                          ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 915: Wrong length of dash may have been used.
\item A HoTT-native treatment of 4d $\mathcal{N}=4$ super-Yang--Mills via  
                                                              ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 930: Wrong length of dash may have been used.
with finite jointly-surjective covers. Pyknotic sets, due to Barwick--Haine,  
                                                                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 937: Wrong length of dash may have been used.
6-functor formalism of analytic stacks (Clausen--Scholze 2024) gives a  
                                               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 960: Wrong length of dash may have been used.
\item Solid abelian groups (in the sense of Clausen--Scholze) are an  
                                                   ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 967: Wrong length of dash may have been used.
\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others  
                                                           ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 994: Wrong length of dash may have been used.
The Clausen--Scholze 6-functor formalism for analytic  
           ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1014: Non-breaking space (`~') should have been used.
\cite{Riehl2021Elements}.  
^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1032: Intersentence spacing (`\@') should perhaps be used.
again — this is awkward classically and equally awkward in HoTT.  
                                                                 ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1035: Wrong length of dash may have been used.
A HoTT-native realisation of the Kubota--Leopoldt $p$-adic zeta function  
                                       ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1043: Wrong length of dash may have been used.
case}. Loeffler--Stoll formalize the archimedean case; the $p$-adic case has  
               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1049: Wrong length of dash may have been used.
\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}  
                                 ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1051: Wrong length of dash may have been used.
\subsection{What Loeffler--Stoll have}  
                         ^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1058: You should enclose the previous parenthesis with `{}'.
\item The Euler product $\zeta(s) = \prod_p (1-p^{-s})^{-1}$ on  
                                                     ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1061: You should enclose the previous parenthesis with `{}'.
\item The functional equation $\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)  
                                                  ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1103: Wrong length of dash may have been used.
A pragmatic approach: \emph{transport} the Loeffler--Stoll Lean  
                                                   ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1111: Wrong length of dash may have been used.
Loeffler--Stoll alongside conjectured HoTT analogues.  
        ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1114: Wrong length of dash may have been used.
In Mathlib (Loeffler--Stoll):  
                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1158: Wrong length of dash may have been used.
Theorem & Lean lines (Loeffler--Stoll) & Est.\ HoTT complexity \\  
                              ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1183: Non-breaking space (`~') should have been used.
\cite{Booij2020} for HoTT-native analysis benchmarks.  
^
Warning 24 in papers/latex/langlands-analytic-number-theory.tex line 1262: Delete this space to maintain correct pagereferences.
\label{fig:roadmap}  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1278: Wrong length of dash may have been used.
total effort behind Loeffler--Stoll plus its Mathlib dependencies.  
                            ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1290: Intersentence spacing (`\@') should perhaps be used.
``two non-equivalent proofs'' of RH. This is in contrast to a structural  
                                   ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1297: Intersentence spacing (`\@') should perhaps be used.
$\mathrm{RH}$ is \emph{not} decidable in HoTT: we have no algorithm  
                                             ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1347: Intersentence spacing (`\@') should perhaps be used.
independent of ZFC. In that case, HoTT might admit two consistent  
                  ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1355: Intersentence spacing (`\@') should perhaps be used.
zeros of $\zeta$ short of RH:  
                            ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1358: Wrong length of dash may have been used.
on $\mathrm{Re}(s) = 1$. Formalized in Lean by Loeffler--Stoll.  
                                                       ^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1360: You should enclose the previous parenthesis with `{}'.
1 - C/(\log|t|)^{2/3}(\log\log|t|)^{1/3}$.  
              ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1360: You should enclose the previous parenthesis with `{}'.
1 - C/(\log|t|)^{2/3}(\log\log|t|)^{1/3}$.  
                                 ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1363: Wrong length of dash may have been used.
\item \textbf{Levinson--Conrey:} at least $40\%$ of zeros are on the  
                      ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1375: Intersentence spacing (`\@') should perhaps be used.
A subtle point about HoTT: \emph{some} statements about $\zeta$ are  
                         ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1387: Wrong length of dash may have been used.
$\zeta(s)$ requires the Riemann--Siegel formula or similar, which involves  
                               ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1420: Wrong length of dash may have been used.
Lean Mathlib's success at formalizing analytic NT (Loeffler--Stoll 2025)  
                                                           ^^
Warning 36 in papers/latex/langlands-analytic-number-theory.tex line 1430: You should put a space in front of parenthesis.
HoTT can match (1)--(3) at extra cost; (4) is a deeper foundational issue.  
                    ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1437: Non-breaking space (`~') should have been used.
\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is  
^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1438: Intersentence spacing (`\@') should perhaps be used.
viable in HoTT.  
              ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1440: Wrong length of dash may have been used.
A natural research direction is to lift the Loeffler--Stoll work into  
                                                    ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1463: Wrong length of dash may have been used.
\item Translate Loeffler--Stoll Lean to HoTT-axiomatised classical $\C$ as  
                        ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1468: Non-breaking space (`~') should have been used.
\cite{EFK2025AnalyticLanglands} in HoTT.  
^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1468: Intersentence spacing (`\@') should perhaps be used.
\cite{EFK2025AnalyticLanglands} in HoTT.  
                                       ^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1478: Intersentence spacing (`\@') should perhaps be used.
Why is DTT relevant to analytic NT?  
                                  ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1534: Wrong length of dash may have been used.
Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete  
        ^^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1540: Wrong length of dash may have been used.
graduate-student-years to deliver a HoTT-native analogue of Loeffler--Stoll  
                                                                    ^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1582: Non-breaking space (`~') should have been used.
\cite{Shulman2018Cohesive} adds:  
^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1637: Wrong length of dash may have been used.
Loeffler--Stoll, marking which lemmas would translate cleanly to HoTT.  
        ^^
Warning 13 in papers/latex/langlands-analytic-number-theory.tex line 1637: Intersentence spacing (`\@') should perhaps be used.
Loeffler--Stoll, marking which lemmas would translate cleanly to HoTT.  
                                                                     ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1662: You should enclose the previous parenthesis with `{}'.
\zeta(s) = \frac{\Gamma(1-s)}{2\pi i}\,\oint_C \frac{(-x)^{s-1}}{e^x - 1}\,dx,  
                                                        ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1700: Non-breaking space (`~') should have been used.
\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.  
^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 1750: Interword spacing (`\ ') should perhaps be used.
Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}  
                                   ^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 1791: Interword spacing (`\ ') should perhaps be used.
Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}  
                 ^
Warning 8 in papers/latex/langlands-analytic-number-theory.tex line 1795: Wrong length of dash may have been used.
\textit{Proof of the geometric Langlands conjecture I--V}.  
                                                     ^^

codex
Found issues in current compiled artifacts. The `.log` is current relative to the `.tex`, and there are no undefined references/citations or fatal compilation errors.

1. [Line 22](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:22): `everypage` is legacy and warns that breakage may occur on current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` at line 62 with native `\AddToHook{shipout/foreground}{...}`.

2. [Lines 33, 39](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:33): `newunicodechar` redefines already-defined Unicode chars `¬` and `→`.
   Fix: delete those two `\newunicodechar` lines unless a clean compile proves they are needed.

3. [Lines 533, 589, 623, 768, 795, 841, 908, 940, 1021](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:533): math appears directly in headings, causing `hyperref` PDF bookmark warnings and broken/empty bookmark text.
   Fix: wrap math heading fragments with `\texorpdfstring{...}{...}`. Example: `\subsection{Approach 1: \texorpdfstring{$\zeta$}{zeta} as ...}`.

4. [Line 713](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:713): the `\texorpdfstring` fallback still contains `^`, which `hyperref` treats as a superscript token.
   Fix: change fallback from `{zeta(2)=pi^2/6}` to plain text like `{zeta(2)=pi squared over 6}`.

5. [Lines 203-206](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:203): overfull hbox, 7.9274pt.
   Fix: display the long HoTT proposition instead of keeping it inline.

6. [Lines 519-523](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:519): overfull hbox, 8.4668pt.
   Fix: split the `\pi := ...` definition into a displayed equation.

7. [Lines 735-737](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:735): slight overfull hbox, 0.63345pt.
   Fix: rewrite or line-break the parenthetical phrase about power series / HIIT values.

8. [Lines 774-777](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:774): displayed Langlands correspondence is overfull by 21.7494pt.
   Fix: use `aligned`, `split`, or smaller set descriptions across two display lines.

9. [Lines 1081-1083](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1081): overfull hbox around `\texttt{ZetaFunction.mathlib}`.
   Fix: allow a break before the code token or move the token to its own line.

10. [Lines 1089-1093](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1089): slight overfull hbox from the long quoted phrase.
   Fix: replace ``equal-up-to-some-isomorphism'' with a shorter phrase or allow a discretionary break.

11. [Lines 1359-1361](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1359): overfull hbox, 7.29324pt, in the Vinogradov-Korobov formula.
   Fix: put the zero-free region formula in display math.

12. [Lines 1628-1630](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1628): slight overfull hbox around `\texttt{Proofs.hs}` item text.
   Fix: shorten the item text or break after `\texttt{Proofs.hs}`.

VERDICT: NEEDS_FIX
2026-05-04T23:43:37.701553Z ERROR codex_core::session: failed to record rollout items: thread 019df55d-3891-76e1-b97c-9cdc5b6f3754 not found
tokens used
99,933
Found issues in current compiled artifacts. The `.log` is current relative to the `.tex`, and there are no undefined references/citations or fatal compilation errors.

1. [Line 22](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:22): `everypage` is legacy and warns that breakage may occur on current LaTeX.
   Fix: remove `\usepackage{everypage}` and replace `\AddEverypageHook{...}` at line 62 with native `\AddToHook{shipout/foreground}{...}`.

2. [Lines 33, 39](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:33): `newunicodechar` redefines already-defined Unicode chars `¬` and `→`.
   Fix: delete those two `\newunicodechar` lines unless a clean compile proves they are needed.

3. [Lines 533, 589, 623, 768, 795, 841, 908, 940, 1021](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:533): math appears directly in headings, causing `hyperref` PDF bookmark warnings and broken/empty bookmark text.
   Fix: wrap math heading fragments with `\texorpdfstring{...}{...}`. Example: `\subsection{Approach 1: \texorpdfstring{$\zeta$}{zeta} as ...}`.

4. [Line 713](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:713): the `\texorpdfstring` fallback still contains `^`, which `hyperref` treats as a superscript token.
   Fix: change fallback from `{zeta(2)=pi^2/6}` to plain text like `{zeta(2)=pi squared over 6}`.

5. [Lines 203-206](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:203): overfull hbox, 7.9274pt.
   Fix: display the long HoTT proposition instead of keeping it inline.

6. [Lines 519-523](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:519): overfull hbox, 8.4668pt.
   Fix: split the `\pi := ...` definition into a displayed equation.

7. [Lines 735-737](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:735): slight overfull hbox, 0.63345pt.
   Fix: rewrite or line-break the parenthetical phrase about power series / HIIT values.

8. [Lines 774-777](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:774): displayed Langlands correspondence is overfull by 21.7494pt.
   Fix: use `aligned`, `split`, or smaller set descriptions across two display lines.

9. [Lines 1081-1083](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1081): overfull hbox around `\texttt{ZetaFunction.mathlib}`.
   Fix: allow a break before the code token or move the token to its own line.

10. [Lines 1089-1093](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1089): slight overfull hbox from the long quoted phrase.
   Fix: replace ``equal-up-to-some-isomorphism'' with a shorter phrase or allow a discretionary break.

11. [Lines 1359-1361](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1359): overfull hbox, 7.29324pt, in the Vinogradov-Korobov formula.
   Fix: put the zero-free region formula in display math.

12. [Lines 1628-1630](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex:1628): slight overfull hbox around `\texttt{Proofs.hs}` item text.
   Fix: shorten the item text or break after `\texttt{Proofs.hs}`.

VERDICT: NEEDS_FIX

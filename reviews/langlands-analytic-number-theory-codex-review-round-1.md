---
reviewer: codex (OpenAI)
type: formatting
paper: langlands-analytic-number-theory
round: 1
date: 2026-05-04T23:34:19Z
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
session id: 019df557-b921-7c02-9405-9ef0147e46c2
--------
user
Review papers/latex/langlands-analytic-number-theory.tex for LaTeX formatting issues: compilation errors, missing packages, broken references, inconsistent styling, overfull/underfull boxes, spacing problems. List all issues with line numbers and concrete fixes. End your response with a VERDICT line — exactly one of: VERDICT: PASS (no issues remain) or VERDICT: NEEDS_FIX (issues listed above must be fixed).
codex
I’ll review this read-only, first mapping the LaTeX structure and references, then I’ll run any available non-destructive checks in a temp/output location if the toolchain permits.
exec
/usr/local/bin/zsh -lc "rg -n \"\\\\(ref|eqref|cite|label|begin|end|usepackage|documentclass|newcommand|includegraphics|bibliography|bibitem|url|href|cref|Cref)\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1,220p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\(ref|eqref|cite|label|begin|end|usepackage|documentclass|newcommand|includegraphics|bibliography|bibitem|url|href|cref|Cref))
                                                                                                                                    ^
error: unopened group

 succeeded in 0ms:
     1	\documentclass[12pt]{article}
     2	
     3	% Core math
     4	\usepackage{amsmath, amssymb, amsfonts, amsthm}
     5	
     6	% Diagrams
     7	\usepackage{tikz-cd}
     8	\usepackage{tikz}
     9	\usetikzlibrary{arrows.meta, calc, positioning}
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
    21	% GrokRxiv sidebar
    22	\usepackage{everypage}
    23	\usepackage{xcolor}
    24	
    25	% Theorems
    26	\newtheorem{theorem}{Theorem}[section]
    27	\newtheorem{proposition}[theorem]{Proposition}
    28	\newtheorem{lemma}[theorem]{Lemma}
    29	\newtheorem{corollary}[theorem]{Corollary}
    30	\newtheorem{conjecture}[theorem]{Conjecture}
    31	\theoremstyle{definition}
    32	\newtheorem{definition}[theorem]{Definition}
    33	\newtheorem{problem}[theorem]{Problem}
    34	\newtheorem{example}[theorem]{Example}
    35	\theoremstyle{remark}
    36	\newtheorem{remark}[theorem]{Remark}
    37	
    38	% GrokRxiv sidebar
    39	\definecolor{grokgray}{RGB}{110,110,110}
    40	\AddEverypageHook{%
    41	  \ifnum\value{page}=1
    42	    \begin{tikzpicture}[remember picture, overlay]
    43	      \node[
    44	        rotate=90,
    45	        anchor=south,
    46	        font=\Large\sffamily\bfseries\color{grokgray},
    47	        inner sep=0pt
    48	      ] at ([xshift=38pt, yshift=0.52\paperheight]current page.south west)
    49	      {GrokRxiv:2026.05.langlands-analytic-number-theory\quad
    50	       [\,math.NT\,]\quad
    51	       04 May 2026};
    52	    \end{tikzpicture}
    53	  \fi
    54	}
    55	
    56	% Custom macros
    57	\newcommand{\C}{\mathbb{C}}
    58	\newcommand{\R}{\mathbb{R}}
    59	\newcommand{\Q}{\mathbb{Q}}
    60	\newcommand{\Z}{\mathbb{Z}}
    61	\newcommand{\N}{\mathbb{N}}
    62	\newcommand{\F}{\mathbb{F}}
    63	\newcommand{\HoTT}{\mathsf{HoTT}}
    64	\newcommand{\Type}{\mathcal{U}}
    65	\newcommand{\Prop}{\mathsf{Prop}}
    66	\newcommand{\Set}{\mathsf{Set}}
    67	\newcommand{\id}{\mathsf{id}}
    68	\newcommand{\refl}{\mathsf{refl}}
    69	\newcommand{\ua}{\mathsf{ua}}
    70	\newcommand{\Path}{\mathsf{Path}}
    71	\newcommand{\Cc}{\C_{\mathsf{c}}}
    72	\newcommand{\Rc}{\R_{\mathsf{c}}}
    73	\newcommand{\HIIT}{\mathsf{HIIT}}
    74	\newcommand{\op}{\mathsf{op}}
    75	\newcommand{\Aut}{\mathsf{Aut}}
    76	\newcommand{\Hom}{\mathsf{Hom}}
    77	\newcommand{\Map}{\mathsf{Map}}
    78	\newcommand{\Eq}{\mathsf{Eq}}
    79	\newcommand{\IsEquiv}{\mathsf{IsEquiv}}
    80	\newcommand{\nCat}[1]{(\infty,#1)\text{-}\mathsf{Cat}}
    81	\newcommand{\Tw}{\mathcal{T}}
    82	\newcommand{\holo}{\mathsf{Holo}}
    83	% (We intentionally retain the standard \zeta from amssymb.)
    84	
    85	\title{Toward HoTT-Native Analytic Number Theory:\\
    86	Riemann Zeta, Langlands, and the $\zeta(s)=0$ Question}
    87	
    88	\author{Matthew Long \\
    89	\textit{The YonedaAI Collaboration} \\
    90	\textit{YonedaAI Research Collective} \\
    91	Chicago, IL \\
    92	\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
    93	
    94	\date{4 May 2026}
    95	
    96	\begin{document}
    97	\maketitle
    98	
    99	\begin{abstract}
   100	We address what the synthesis of our prior series of papers identified as the
   101	\emph{principal open problem} in homotopy type theory's interface with
   102	contemporary mathematics: the absence of a HoTT-native formulation of analytic
   103	number theory. Algebraic number theory and arithmetic geometry, through the
   104	lens of $(\infty,1)$-toposes, étale cohomology, and condensed mathematics,
   105	admit clean translations into univalent foundations. By contrast, the Riemann
   106	zeta function $\zeta(s)$, Dirichlet $L$-functions, automorphic forms, and the
   107	Langlands programme have not been substantially reformulated in HoTT. The
   108	statement $\zeta(s)=0$, viewed as a HoTT-native proposition with $\zeta$ a
   109	HoTT-native object, remains unrealised. This paper does not solve that problem;
   110	it formulates it precisely and offers a research roadmap.
   111	
   112	We proceed in seven steps. First, we trace the prerequisite chain that any
   113	HoTT-native definition of $\zeta$ must respect: HoTT-native Cauchy reals
   114	$\Rc$, Cauchy complex numbers $\Cc$ via univalent algebraic closure,
   115	holomorphic functions as a synthetic notion in cohesive HoTT, and Dirichlet
   116	series as analytic objects internal to a univalent universe. Second, we
   117	propose three candidate HoTT-native definitions of $\zeta$ — as a higher
   118	inductive--inductive type, as the analytic limit of an Euler product, and as
   119	the unique solution to a meromorphic continuation universal property — and
   120	analyse their tradeoffs. Third, we situate this work against the geometric
   121	Langlands proof of Gaitsgory--Raskin--Rozenblyum (2024), Clausen--Scholze
   122	condensed and analytic-stack mathematics (2018--2025), and the
   123	Loeffler--Stoll Lean 4 / Mathlib formalization of the Riemann zeta function
   124	and $L$-functions (2025, arXiv:2503.00959). Fourth, we identify six concrete
   125	sub-problems whose resolution would constitute a HoTT-native proof of
   126	basic facts about $\zeta(s)$, including the Euler product, the functional
   127	equation, and the formal statement of the Riemann hypothesis. We do not claim
   128	the Riemann hypothesis, nor that HoTT will prove it; we claim that the
   129	question of stating it inside HoTT is itself a non-trivial research programme,
   130	and we take the first concrete steps toward that programme.
   131	\end{abstract}
   132	
   133	\tableofcontents
   134	
   135	\section{Introduction}\label{sec:intro}
   136	
   137	\subsection{The principal open problem}
   138	
   139	In the synthesis paper concluding our prior series \cite{Long2026Synthesis},
   140	we surveyed six topics where homotopy type theory (HoTT) interfaces — or
   141	fails to interface — with mainstream twenty-first century mathematics.
   142	Topics 1, 3, 4, 5, and 6 (cohesive geometry, $\infty$-toposes, derived
   143	algebraic geometry, motives, and condensed algebra) admit varying degrees of
   144	HoTT formulation. Topic 2, \emph{analytic number theory}, does not. We wrote:
   145	\begin{quote}
   146	\itshape
   147	Algebraic number theory and parts of arithmetic geometry — schemes, sheaves,
   148	étale cohomology — admit $(\infty,1)$-topos and condensed mathematics
   149	treatments that connect cleanly to univalent foundations. But $\zeta(s)=0$
   150	as a HoTT-native statement, with $\zeta$ a HoTT-native object, remains
   151	unrealised. We frame this as the principal open question for the synthesis.
   152	\end{quote}
   153	This paper develops that question.
   154	
   155	\subsection{Why \texorpdfstring{$\zeta(s)=0$}{zeta(s)=0} is hard in HoTT}
   156	
   157	A HoTT-native statement of $\zeta(s)=0$ requires four ingredients, each of
   158	which is non-trivial:
   159	\begin{enumerate}
   160	\item A HoTT-native object $\Cc:\Type$ of complex numbers, complete with the
   161	notion of meromorphicity. Constructive Cauchy reals \cite{HoTTBook,Booij2020}
   162	exist, but a univalent algebraic closure that is well-behaved with respect
   163	to univalence requires care: classical algebraic closures are
   164	unique-up-to-isomorphism, while a HoTT-native one is unique up-to-equivalence
   165	in the sense of univalence \cite{Voevodsky2014}.
   166	\item A HoTT-native notion of \emph{holomorphic function} $\holo:(\Cc \to \Cc) \to \Type$.
   167	The classical definition uses a metric limit (Newton quotient) which is
   168	constructive but not synthetic. A more native approach uses cohesive HoTT
   169	\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
   170	\item A HoTT-native definition of $\zeta:\Cc \setminus \{1\} \to \Cc$ that
   171	agrees on $\mathrm{Re}(s)>1$ with $\sum_{n\geq 1} n^{-s}$ and analytically
   172	continues elsewhere. This requires either a higher inductive-inductive
   173	construction (HIIT) or an internal universal property of meromorphic
   174	extensions.
   175	\item A HoTT-native interpretation of the proposition
   176	$\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2$.
   177	Even getting to this statement is a research project.
   178	\end{enumerate}
   179	
   180	By contrast, in classical foundations Loeffler and Stoll
   181	\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
   182	Mathlib the entire infrastructure: $\zeta$, the analytic continuation, the
   183	functional equation, the Basel problem, non-vanishing on $\mathrm{Re}(s) \geq 1$,
   184	Dirichlet's theorem on primes in arithmetic progressions, and the formal
   185	statement of the Riemann hypothesis. Their work runs to roughly 3300 lines
   186	of Lean for the analytic continuation alone. We have nothing comparable in
   187	any HoTT proof assistant.
   188	
   189	\subsection{What this paper does (and does not do)}
   190	
   191	This paper:
   192	\begin{itemize}
   193	\item Identifies and motivates the \emph{prerequisite chain} for a HoTT-native
   194	$\zeta$. (\Cref{sec:prereq})
   195	\item Proposes \emph{three candidate} HoTT-native definitions of $\zeta$,
   196	analyses their tradeoffs, and conjecturally proves their pairwise
   197	equivalence. (\Cref{sec:zeta})
   198	\item Places the picture in the broader geometric Langlands landscape via
   199	$(\infty,1)$-toposes and Lurie's higher topos theory \cite{Lurie2009HTT,
   200	Gaitsgory2024GLC}. (\Cref{sec:langlands})
   201	\item Compares HoTT and Clausen--Scholze condensed mathematics, identifying
   202	where they overlap and where the bridge is missing. (\Cref{sec:condensed})
   203	\item Compares with the Loeffler--Stoll 2025 Lean formalization, both as a
   204	benchmark and as a \emph{translation target}. (\Cref{sec:loefflerstoll})
   205	\item Provides a six-sub-problem roadmap that, if solved, would yield a
   206	HoTT-native proof that $\zeta(2) = \pi^2/6$. (\Cref{sec:roadmap})
   207	\item Re-states the Riemann hypothesis as a HoTT proposition and discusses
   208	its modal-logical structure. (\Cref{sec:rh})
   209	\end{itemize}
   210	
   211	This paper does \emph{not}:
   212	\begin{itemize}
   213	\item Prove the Riemann hypothesis.
   214	\item Provide a complete HoTT formalization of $\zeta$.
   215	\item Claim that HoTT methods will, in principle, prove RH; we are agnostic
   216	on this question.
   217	\end{itemize}
   218	
   219	The companion code repository contains a Haskell implementation of partial
   220	zeta sums, Dirichlet series operations, the formal Euler product identity

exec
/usr/local/bin/zsh -lc "wc -l papers/latex/langlands-analytic-number-theory.tex && rg -n \"TODO|FIXME|undefined|overfull|underfull|\\\\vspace|\\\\hspace|\\\\quad|\\\\;|\\\\,|\\\\"'!|'"\\\\[a-zA-Z]+\\*?\\{\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
    1866 papers/latex/langlands-analytic-number-theory.tex
rg: regex parse error:
    (?:TODO|FIXME|undefined|overfull|underfull|\vspace|\hspace|\quad|\;|\,|\!|\[a-zA-Z]+\*?\{)
                                                       ^^
error: unrecognized escape sequence

codex
The first pass shows the document is a single 1,866-line article with `hyperref`/`cleveref`, theorem environments, TikZ, and an inline bibliography. I hit quoting errors in two broad regex probes, so I’m replacing those with simpler fixed-string checks and reading the remaining structure in chunks.
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '221,520p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '521,900p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   221	(modulo a convergence axiom), and a Lean 4 sketch indexed against
   222	Loeffler--Stoll's Mathlib code.
   223	
   224	\subsection{Algebraic vs.\ analytic number theory}
   225	
   226	A clarifying distinction. \emph{Algebraic number theory} studies
   227	$\mathcal{O}_K$, the ring of integers of a number field $K/\Q$, its ideals,
   228	class group, units, and reductions modulo primes. The objects are
   229	discrete-finite or, at worst, countable; their morphisms are algebraic; and
   230	the topology is the Zariski or étale one. HoTT formalisation is
   231	straightforward in principle: rings are sets with operations satisfying
   232	identities, and ideals are subsingletons of the underlying set.
   233	
   234	\emph{Analytic number theory} studies $\zeta(s)$, Dirichlet $L$-functions
   235	$L(s,\chi)$, and automorphic $L$-functions $L(s,\pi)$, where $\pi$ is an
   236	automorphic representation of $GL(n,\mathbb{A}_\Q)$. The objects are
   237	holomorphic / meromorphic functions of complex variables; morphisms are
   238	analytic transformations; and the topology is the Euclidean (or condensed)
   239	topology on $\C$. HoTT formalisation is presently absent.
   240	
   241	The Langlands programme \cite{Langlands1970,GelbartLanglands1979} unifies
   242	these worlds: it asserts a precise correspondence between automorphic
   243	representations and Galois representations, transforming questions about
   244	zeros of $L$-functions into questions about Galois cohomology. Geometric
   245	Langlands \cite{Gaitsgory2024GLC} is the function-field analogue and was
   246	proven in 2024 in five papers using $(\infty,1)$-categorical methods
   247	throughout.
   248	
   249	\subsection{Outline}
   250	
   251	\Cref{sec:prereq} traces the prerequisite chain.
   252	\Cref{sec:zeta} defines $\zeta$ as a candidate HoTT object.
   253	\Cref{sec:langlands} treats geometric Langlands in $(\infty,1)$-topoi.
   254	\Cref{sec:condensed} compares condensed mathematics and HoTT.
   255	\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.
   256	\Cref{sec:roadmap} gives the six-sub-problem roadmap.
   257	\Cref{sec:rh} discusses RH as a HoTT statement.
   258	\Cref{sec:conclusion} concludes.
   259	
   260	%---------------------------------------------------------------
   261	\section{The Prerequisite Chain}\label{sec:prereq}
   262	
   263	We trace, with care, the dependency chain culminating in a HoTT-native $\zeta$.
   264	
   265	\subsection{HoTT-native real numbers \texorpdfstring{$\Rc$}{Rc}}
   266	
   267	\begin{definition}[Cauchy reals, after the HoTT Book \cite{HoTTBook}]\label{def:Rc}
   268	The type $\Rc$ of \emph{Cauchy reals} is the higher inductive-inductive type
   269	defined simultaneously with a relation $\sim_\epsilon : \Rc \to \Rc \to \Type$
   270	indexed by $\epsilon : \Q^+$, by the constructors:
   271	\begin{align}
   272	\mathsf{rat} &: \Q \to \Rc \\
   273	\mathsf{lim} &: \Pi(x:\Q^+ \to \Rc).\, \mathsf{IsCauchy}(x) \to \Rc \\
   274	\mathsf{eq} &: \Pi(u,v:\Rc).\, (\Pi(\epsilon:\Q^+).\, u \sim_\epsilon v) \to u = v
   275	\end{align}
   276	together with the path constructors for the closeness relation
   277	$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.
   278	\end{definition}
   279	
   280	\begin{remark}
   281	$\Rc$ is a set in the sense of HoTT (its identity types are propositions),
   282	because of the explicit equality constructor $\mathsf{eq}$. This is in
   283	contrast to a non-Cauchy approach where $\R$ might inherit higher structure
   284	from its construction.
   285	\end{remark}
   286	
   287	\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
   288	$\Rc$ is an Archimedean ordered field with decidable order $<$ on rationals
   289	but undecidable equality on $\Rc$ in general.
   290	\end{theorem}
   291	
   292	\subsection{HoTT-native complex numbers \texorpdfstring{$\Cc$}{Cc}}
   293	
   294	There are at least three approaches:
   295	
   296	\paragraph{Pairs.}
   297	$\Cc := \Rc \times \Rc$ with multiplication
   298	$(a,b)(c,d) := (ac-bd, ad+bc)$. Simple, but does not capture the
   299	\emph{universal property} that $\Cc$ should be an algebraic closure of $\Rc$.
   300	
   301	\paragraph{Algebraic closure of $\Rc$.}
   302	\begin{definition}[Univalent algebraic closure]\label{def:UAC}
   303	A type $\overline{\Rc}$ together with an embedding $\iota:\Rc \to \overline{\Rc}$
   304	is a \emph{univalent algebraic closure} of $\Rc$ if it is the propositional
   305	truncation of the type
   306	\[
   307	  \sum_{F:\mathsf{Field}}\, \sum_{\iota:\Rc \to F} \mathsf{IsAlgClosure}(\Rc,F,\iota),
   308	\]
   309	where $\mathsf{IsAlgClosure}$ is the conjunction of (i) every non-zero
   310	polynomial in $F[X]$ has a root, and (ii) every element of $F$ is algebraic
   311	over $\Rc$ via $\iota$.
   312	\end{definition}
   313	
   314	\begin{remark}[Plain-language gloss]\label{rem:UACplain}
   315	In essence, \Cref{def:UAC} defines the algebraic closure not as one
   316	specific construction, but as the abstract object satisfying the universal
   317	property of being an algebraically closed field containing $\Rc$. Univalence
   318	ensures that any two such objects are propositionally equal as types in
   319	$\mathcal{U}$. The propositional truncation $\|\cdot\|_{-1}$ at the top of
   320	the $\Sigma$-type collapses the choice-of-witness data to a proposition,
   321	reflecting the classical dictum that the algebraic closure is unique up to
   322	non-canonical isomorphism.
   323	\end{remark}
   324	
   325	\begin{proposition}\label{prop:UACUnique}
   326	Univalent algebraic closures of $\Rc$ are unique up to equivalence: if
   327	$(\overline{\Rc}_1,\iota_1)$ and $(\overline{\Rc}_2,\iota_2)$ are two such,
   328	there is an equivalence $e:\overline{\Rc}_1 \simeq \overline{\Rc}_2$ with
   329	$e \circ \iota_1 = \iota_2$, and by univalence
   330	$\overline{\Rc}_1 = \overline{\Rc}_2$.
   331	\end{proposition}
   332	
   333	\begin{proof}[Proof sketch]
   334	Classical algebraic-closure uniqueness uses Zorn's lemma. In HoTT, we use a
   335	constructive variant: one shows that any two algebraic closures are
   336	isomorphic via an inductive construction, and that the choice of isomorphism
   337	is contractible up to the action of $\mathsf{Gal}(\overline{\Rc}/\Rc)$. The
   338	propositional truncation in \Cref{def:UAC} ensures the existential is a
   339	proposition; uniqueness follows. Full proof requires choice or constructive
   340	algebraic-closure arguments \cite{Mines1988}.
   341	\end{proof}
   342	
   343	\paragraph{Quotient construction.}
   344	$\Cc := \Rc[X]/(X^2 + 1)$. Concretely realisable via Schwartz / set-quotient.
   345	
   346	In what follows, we treat $\Cc$ axiomatically: a propositional Univalent
   347	Algebraic Closure of $\Rc$, equipped with a continuous structure inherited
   348	from $\Rc \times \Rc$.
   349	
   350	\subsection{Holomorphic functions in HoTT}
   351	
   352	The classical definition of holomorphicity is:
   353	\[
   354	f:\C \to \C \text{ is holomorphic at } z \quad\text{iff}\quad
   355	\lim_{h \to 0} \frac{f(z+h) - f(z)}{h} \text{ exists.}
   356	\]
   357	This translates straightforwardly to $\Rc$- and $\Cc$-limits, but is not
   358	HoTT-native in the sense of using only $\Type$, $=$, and the
   359	universe-polymorphic constructors.
   360	
   361	\begin{definition}[Constructive holomorphicity]\label{def:holo}
   362	$f:\Cc \to \Cc$ is \emph{holomorphic} at $z:\Cc$ if there exists
   363	$f'(z):\Cc$ such that
   364	\[
   365	\Pi(\epsilon:\Q^+).\,
   366	\Sigma(\delta:\Q^+).\,
   367	\Pi(h:\Cc).\, 0 < |h| < \delta \to
   368	\left|\,\frac{f(z+h)-f(z)}{h} - f'(z)\,\right| < \epsilon.
   369	\]
   370	\end{definition}
   371	
   372	\begin{remark}[Synthetic alternative]\label{rem:synth}
   373	In \emph{cohesive HoTT} \cite{Shulman2018Cohesive}, the universe carries
   374	shape and flat modalities $\esh, \flat$. Holomorphicity becomes a synthetic
   375	predicate: $f$ is holomorphic iff $f$ commutes with the differential cohesion
   376	operator. This is closer to ``HoTT-native'' but requires fixing a model
   377	where $\esh$ is interpreted as the geometric $\C^\infty$-shape.
   378	\end{remark}
   379	
   380	\subsection{Dirichlet series}
   381	
   382	\begin{definition}[Dirichlet series]\label{def:Dirichlet}
   383	A \emph{Dirichlet series} is a function $a:\N_{>0} \to \Cc$ together with the
   384	formal expression
   385	\[
   386	D_a(s) := \sum_{n=1}^{\infty} \frac{a(n)}{n^s}, \qquad s:\Cc.
   387	\]
   388	The \emph{abscissa of absolute convergence} is
   389	$\sigma_a := \inf\{\sigma:\Rc \mid \sum_n |a(n)| n^{-\sigma} \text{ converges}\}$.
   390	\end{definition}
   391	
   392	\begin{proposition}[HoTT-native; sketched]\label{prop:DirichletAlgebra}
   393	The set of Dirichlet series with $\sigma_a < +\infty$ forms a commutative
   394	ring under termwise addition and Dirichlet convolution
   395	$(a*b)(n) := \sum_{d \mid n} a(d) b(n/d)$.
   396	\end{proposition}
   397	
   398	\begin{proof}[Proof sketch]
   399	Closed-under-addition is clear. For convolution, the abscissa of
   400	$a*b$ is bounded by $\max(\sigma_a, \sigma_b) + \log_2(\text{divisor sum})$,
   401	which is finite when both $\sigma_a, \sigma_b$ are. The full proof in HoTT
   402	uses the absolute-convergence variant of Fubini for $\Rc$-valued double sums
   403	\cite{Booij2020}.
   404	\end{proof}
   405	
   406	\subsection{Putting it together}
   407	
   408	\begin{figure}[h]
   409	\centering
   410	\begin{tikzcd}[column sep=tiny, row sep=large]
   411	\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc
   412	  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)
   413	  \arrow[r, "\sum\frac{a(n)}{n^s}"]
   414	  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta
   415	\end{tikzcd}
   416	\caption{The prerequisite chain. Each arrow represents a non-trivial
   417	HoTT-native construction. The final arrow ($\mathsf{Dir} \to \zeta$) is the
   418	analytic continuation, and is the place at which the chain currently breaks
   419	in pure HoTT.}
   420	\label{fig:chain}
   421	\end{figure}
   422	
   423	The chain in \Cref{fig:chain} terminates at $\zeta$, but the rightmost arrow
   424	— analytic continuation from a Dirichlet series convergent on $\mathrm{Re}(s)>1$
   425	to a meromorphic function on $\Cc \setminus \{1\}$ — has no canonical
   426	HoTT-native realisation. This is the central technical gap of the present
   427	paper.
   428	
   429	\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
   430	
   431	To clarify why the rightmost arrow is hard, we list the obstacles in
   432	ascending order of severity.
   433	
   434	\begin{enumerate}
   435	\item \textbf{Unique factorisation of meromorphic extension.}
   436	In classical complex analysis, the identity theorem (\Cref{thm:Identity})
   437	guarantees uniqueness of analytic continuation. In HoTT, ``connected open''
   438	needs a precise definition, and the proof that the agreement locus is
   439	clopen requires constructive analogues of Bolzano--Weierstrass.
   440	
   441	\item \textbf{Existence of meromorphic extension.}
   442	Classical proofs of analytic continuation of $\zeta$ use one of:
   443	\begin{itemize}
   444	\item \emph{Hurwitz zeta} method: define $\zeta(s,a) = \sum_{n \geq 0}(n+a)^{-s}$
   445	and continue via the integral representation. This requires Mellin transform.
   446	\item \emph{Theta-function} method: $\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$
   447	satisfies modular invariance, and Mellin transforming gives $\zeta$.
   448	\item \emph{Contour integral} method: integrate $\frac{x^{s-1}}{e^x - 1}$
   449	around a Hankel contour.
   450	\end{itemize}
   451	Each requires a substantial fragment of HoTT-native analysis: integration
   452	theory, modular transformation laws, residue calculus.
   453	
   454	\item \textbf{Computation in HoTT.}
   455	Even given the existence and uniqueness, \emph{computing} $\zeta$ at, say,
   456	$s = -1$ to obtain $\zeta(-1) = -1/12$ requires either (i) symbolic
   457	manipulation of the analytic continuation, or (ii) numerical methods. HoTT
   458	proof assistants like Cubical Agda do not currently support efficient
   459	arbitrary-precision real arithmetic.
   460	
   461	\item \textbf{Naturality.}
   462	Classical proofs treat $\zeta$ as one specific function. A fully-categorified
   463	HoTT-native account would treat $\zeta$ as part of a family — Dirichlet
   464	$L$-functions, Hurwitz zeta, Hecke $L$-functions, automorphic
   465	$L$-functions — with naturality with respect to characters and lifts. This
   466	expands the existence obstacle by a constant factor of the size of the family.
   467	\end{enumerate}
   468	
   469	\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
   470	
   471	To make the discussion concrete, we sketch how $\sqrt{2}:\Rc$ is a
   472	HoTT-native object.
   473	
   474	\begin{example}[$\sqrt{2}$ as Cauchy real]\label{ex:sqrt2}
   475	Define $a:\Q^+ \to \Q$ by Newton iteration: $a(\epsilon) = $ the $n$-th
   476	Newton iterate of $x_{n+1} := (x_n + 2/x_n)/2$, where $n$ is large enough
   477	that $|a(\epsilon)^2 - 2| < \epsilon$. Then $a$ is a Cauchy modulus and
   478	$\mathsf{lim}(a, \mathsf{IsCauchy}_a):\Rc$ is $\sqrt{2}$. Equality
   479	$(\sqrt{2})^2 = 2$ in $\Rc$ follows from the equality constructor
   480	$\mathsf{eq}$.
   481	\end{example}
   482	
   483	\begin{example}[$e$ as Cauchy real]\label{ex:euler}
   484	$e := \mathsf{lim}((\epsilon \mapsto \sum_{k=0}^{N(\epsilon)} 1/k!),
   485	\mathsf{IsCauchy}_e):\Rc$, where $N(\epsilon)$ is chosen so the tail
   486	$\sum_{k>N} 1/k! < \epsilon$. By Stirling, $N(\epsilon) = O(\log(1/\epsilon)/
   487	\log\log(1/\epsilon))$.
   488	\end{example}
   489	
   490	\begin{example}[$\pi$ as Cauchy real]\label{ex:pi}
   491	$\pi := \mathsf{lim}((\epsilon \mapsto \text{Machin formula at depth } N(\epsilon)),
   492	\mathsf{IsCauchy}_\pi)$. Machin's formula
   493	$\pi/4 = 4\arctan(1/5) - \arctan(1/239)$ converges geometrically with
   494	ratio $1/25$ and $1/239^2$, so $N(\epsilon) = O(\log(1/\epsilon))$.
   495	\end{example}
   496	
   497	These three examples illustrate that named real-number constants in HoTT
   498	require an algorithmic Cauchy modulus, not just an existential statement.
   499	
   500	%---------------------------------------------------------------
   501	\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
   502	
   503	We now propose three approaches to defining $\zeta$ inside HoTT.
   504	
   505	\subsection{Approach 1: $\zeta$ as a higher inductive-inductive type}
   506	
   507	Inspired by the construction of $\Rc$ as a HIIT, we sketch a
   508	\emph{specification pattern} for what a HoTT-native $\zeta$ should
   509	satisfy. We emphasise that what follows is a \emph{wish-list of
   510	constructors}, not a self-contained HIIT definition; both consistency
   511	and existence of such a HIIT are open questions.
   512	
   513	First, define the convergent partial-sum function on the half-plane of
   514	absolute convergence:
   515	\begin{equation}\label{eq:zetaSeries}
   516	\zeta_{\mathrm{series}} : \Pi(s:\Cc).\, \mathrm{Re}(s) > 1 \to \Cc, \qquad
   517	\zeta_{\mathrm{series}}(s) := \sum_{n=1}^{\infty} n^{-s}.
   518	\end{equation}
   519	This map is well-defined because $\mathrm{Re}(s) > 1$ ensures absolute
   520	convergence of the series in $\Cc$, and the limit is the (HoTT-native)

 succeeded in 0ms:
   521	limit constructor of $\Rc$ applied component-wise.
   522	
   523	\begin{definition}[Specification of zeta as HIIT, candidate]\label{def:ZetaHIIT}
   524	A pair $(\zeta:\Cc \setminus \{1\} \to \Cc, P:\mathsf{Holo}(\zeta))$ is a
   525	\emph{HIIT-realisation of zeta} if it is generated by:
   526	\begin{align}
   527	\zeta_{\mathrm{Re}>1} &: \Pi(s:\Cc).\, \mathrm{Re}(s) > 1 \to \Cc, \notag \\
   528	\zeta_{\mathrm{Re}>1}(s) &= \zeta_{\mathrm{series}}(s) \quad
   529	   \text{(equality with the series of \cref{eq:zetaSeries})} \\
   530	\mathsf{cont} &: \Pi(s:\Cc).\, s \neq 1 \to \Cc \\
   531	\mathsf{agree} &: \Pi(s:\Cc).\, \Pi(p:\mathrm{Re}(s) > 1).\,
   532	   \mathsf{cont}(s, \mathrm{ne1}_p) = \zeta_{\mathrm{Re}>1}(s, p) \\
   533	\mathsf{holo} &: \mathsf{Holo}(\mathsf{cont})
   534	\end{align}
   535	together with \emph{additional path-constructors} (intentionally left
   536	schematic) enforcing the functional equation
   537	$\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)\cos(\pi s/2)\zeta(s)$.
   538	
   539	We use the language of a \texttt{definition} only for the specification;
   540	we make no claim of consistency.
   541	\end{definition}
   542	
   543	\begin{remark}\label{rem:ZetaHIITissues}
   544	This is a \emph{specification}, not a finished HIIT, for two reasons:
   545	\begin{enumerate}
   546	\item The $\mathsf{holo}$ constructor demands a holomorphic extension, but no
   547	such extension is canonically given by the constructors themselves.
   548	Consistency therefore reduces to a separate \emph{existence-of-extension}
   549	lemma — which is exactly the analytic-continuation gap of \Cref{prob:4}.
   550	\item The functional-equation path-constructors are intentionally schematic.
   551	Their precise form would involve HoTT-native $\Gamma$, $\cos$, and the
   552	modular-transformation identity for $\theta$, none of which are presently
   553	formalised. We do not know what their definitive shape should be, and
   554	indicate this rather than papering over it.
   555	\end{enumerate}
   556	The specification is therefore a \emph{target pattern}, not a finished
   557	construction. The remaining two approaches (\Cref{def:ZetaEuler} and
   558	\Cref{def:ZetaUP}) are more conservative.
   559	\end{remark}
   560	
   561	\subsection{Approach 2: $\zeta$ as analytic limit of Euler product}
   562	
   563	Recall the Euler product (\cite{Euler1737}):
   564	\[
   565	\zeta(s) = \prod_{p \text{ prime}} \frac{1}{1 - p^{-s}}, \qquad \mathrm{Re}(s) > 1.
   566	\]
   567	
   568	\begin{definition}[Zeta via Euler product]\label{def:ZetaEuler}
   569	On the half-plane $H_1 := \{s:\Cc \mid \mathrm{Re}(s) > 1\}$, define
   570	\[
   571	\zeta_E(s) := \prod_{p \in \mathbb{P}} (1 - p^{-s})^{-1}
   572	\]
   573	where $\mathbb{P}$ is the type of primes. Extend by analytic continuation
   574	(separately proven) to $\Cc \setminus \{1\}$.
   575	\end{definition}
   576	
   577	\begin{proposition}[Euler product, modulo convergence]\label{prop:Euler}
   578	On $H_1$, $\zeta_E(s) = \sum_{n=1}^{\infty} n^{-s}$.
   579	\end{proposition}
   580	
   581	\begin{proof}[Proof sketch in HoTT]
   582	By unique factorisation in $\N_{>0}$ (a HoTT-formalisable theorem), each
   583	$n \geq 1$ corresponds bijectively to a finite-support function $\mathbb{P}
   584	\to \N$ via $n = \prod_p p^{e_p(n)}$. Expanding the Euler product:
   585	\[
   586	\prod_p (1 - p^{-s})^{-1}
   587	  = \prod_p \sum_{k \geq 0} p^{-ks}
   588	  = \sum_{(e_p)\in \N^{(\mathbb{P})}} \prod_p p^{-e_p s}
   589	  = \sum_{n \geq 1} n^{-s}.
   590	\]
   591	The middle equality uses absolute convergence of the product on $H_1$, which
   592	is a HoTT-statement requiring \Cref{prop:DirichletAlgebra}.
   593	\end{proof}
   594	
   595	\subsection{Approach 3: $\zeta$ via universal property of meromorphic continuation}
   596	
   597	\begin{definition}[Meromorphic continuation, universal]\label{def:MeromCont}
   598	Given a holomorphic $f:U \to \Cc$ on an open $U \subseteq \Cc$, a
   599	\emph{meromorphic continuation} of $f$ to $V \supseteq U$ is a
   600	meromorphic $\tilde f:V \to \Cc$ with $\tilde f|_U = f$, such that for any
   601	other meromorphic continuation $g:V \to \Cc$, $\tilde f = g$ as meromorphic
   602	functions. (Existence requires connectedness; uniqueness uses the identity
   603	theorem.)
   604	\end{definition}
   605	
   606	\begin{theorem}[Identity theorem, HoTT version]\label{thm:Identity}
   607	Suppose $f, g:V \to \Cc$ are holomorphic on a connected open $V \subseteq \Cc$,
   608	and the type $\sum_{z:V} f(z) = g(z)$ has an accumulation point in $V$.
   609	Then $\Pi(z:V).\, f(z) = g(z)$.
   610	\end{theorem}
   611	
   612	\begin{proof}[Proof sketch]
   613	Standard: the locus of agreement is open (by power series), closed (by
   614	continuity), and non-empty, hence equal to $V$ since $V$ is connected.
   615	HoTT-native version: ``connected'' becomes ``$\|V\|_{-1}$ is a singleton''
   616	and ``open'' is interpreted appropriately in cohesive HoTT.
   617	\end{proof}
   618	
   619	\begin{definition}[Zeta via universal property]\label{def:ZetaUP}
   620	$\zeta:\Cc \setminus \{1\} \to \Cc$ is the unique (up to identity, by
   621	\Cref{thm:Identity}) meromorphic continuation of $s \mapsto \sum n^{-s}$ from
   622	$H_1$ to $\Cc \setminus \{1\}$ with a simple pole of residue $1$ at $s=1$.
   623	\end{definition}
   624	
   625	\subsection{Equivalence of the three definitions}
   626	
   627	\begin{theorem}[Conjectural equivalence]\label{thm:ZetaEquiv}
   628	Conditional on the existence of HoTT-native analytic continuation, the three
   629	definitions \Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}
   630	are pairwise equivalent: there is a propositional equality between any two.
   631	\end{theorem}
   632	
   633	\begin{proof}[Proof sketch]
   634	\Cref{def:ZetaEuler} agrees with the partial-sum definition on $H_1$ by
   635	\Cref{prop:Euler}. \Cref{def:ZetaUP} agrees with the partial-sum definition
   636	on $H_1$ by definition. By \Cref{thm:Identity}, any two meromorphic
   637	continuations of the same function agree everywhere. \Cref{def:ZetaHIIT}
   638	imposes both the partial-sum agreement and the holomorphicity constraint,
   639	hence its result is identified with the universal-property zeta. The
   640	catch: each step requires HoTT-native analytic continuation, which is
   641	exactly the gap.
   642	\end{proof}
   643	
   644	\subsection{The functional equation}
   645	
   646	\begin{theorem}[Functional equation, conjectured HoTT-native]\label{thm:FE}
   647	For all $s : \Cc \setminus \{0,1\}$,
   648	\[
   649	\zeta(1-s) = 2 (2\pi)^{-s} \Gamma(s) \cos(\pi s / 2) \zeta(s).
   650	\]
   651	\end{theorem}
   652	
   653	\begin{proof}[Strategy]
   654	Riemann's original proof uses the theta-function identity
   655	$\theta(t) = t^{-1/2}\theta(1/t)$ and the Mellin transform. Translating to
   656	HoTT requires:
   657	\begin{itemize}
   658	\item HoTT-native theta function $\theta:\Rc^+ \to \Rc$, defined by
   659	$\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$, plus the modular identity.
   660	\item HoTT-native Mellin transform $\mathcal{M}:\holo(\Rc^+,\Rc) \to \holo(\Cc,\Cc)$.
   661	\item HoTT-native contour-integral lemmas.
   662	\end{itemize}
   663	None of these are presently formalized in HoTT. They are all formalized in
   664	classical Lean 4 / Mathlib (Loeffler--Stoll, 2025).
   665	\end{proof}
   666	
   667	\subsection{The critical strip}
   668	
   669	\begin{definition}[Critical strip]
   670	$S := \{s : \Cc \mid 0 < \mathrm{Re}(s) < 1\}$.
   671	\end{definition}
   672	
   673	\begin{definition}[Trivial zeros]
   674	A zero $s_0$ of $\zeta$ is \emph{trivial} if $s_0 \in \{-2,-4,-6,\ldots\}$.
   675	\end{definition}
   676	
   677	\begin{conjecture}[Riemann hypothesis, HoTT statement]\label{conj:RH}
   678	\[
   679	\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2.
   680	\]
   681	\end{conjecture}
   682	
   683	We will analyse this statement modal-logically in \Cref{sec:rh}.
   684	
   685	\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
   686	
   687	To illustrate what HoTT-native machinery is needed, we trace one of the
   688	oldest results — the Basel problem.
   689	
   690	\begin{theorem}[Basel problem]\label{thm:Basel}
   691	$\zeta(2) = \pi^2/6$.
   692	\end{theorem}
   693	
   694	\begin{proof}[Sketch of HoTT-native proof, modulo missing infrastructure]
   695	There are several classical approaches; we outline two.
   696	
   697	\textbf{Approach (i): Fourier series of $x^2$.} Expand $x^2$ on $[-\pi,\pi]$
   698	as a Fourier series:
   699	\[
   700	x^2 = \frac{\pi^2}{3} + 4\sum_{n=1}^{\infty} \frac{(-1)^n \cos(nx)}{n^2}.
   701	\]
   702	Setting $x = \pi$ yields $\pi^2 = \pi^2/3 + 4\zeta(2)$, hence
   703	$\zeta(2) = \pi^2/6$. HoTT-native version requires:
   704	\begin{itemize}
   705	\item HoTT-native Fourier series with pointwise convergence on smooth
   706	functions.
   707	\item HoTT-native trigonometric functions (definable as power series, hence
   708	HIIT $\Rc$-valued).
   709	\item Pointwise evaluation at the boundary requires Abel-style limits.
   710	\end{itemize}
   711	
   712	\textbf{Approach (ii): Euler's product expansion of $\sin$.} Use
   713	\[
   714	\frac{\sin(\pi z)}{\pi z} = \prod_{n=1}^{\infty}\left(1 - \frac{z^2}{n^2}\right).
   715	\]
   716	Equating Taylor coefficients of $z^2$ on both sides:
   717	$-\pi^2/6 = -\sum 1/n^2$, so $\zeta(2) = \pi^2/6$. HoTT-native version
   718	requires:
   719	\begin{itemize}
   720	\item Infinite-product convergence theory in HoTT.
   721	\item Term-by-term Taylor expansion of the product (Abel-Mertens-style
   722	manipulation).
   723	\item Product-to-sum identity, valid on absolute convergence.
   724	\end{itemize}
   725	
   726	Either approach requires roughly the same prerequisite chain:
   727	\Cref{prob:1}--\Cref{prob:3}, plus some elementary measure / convergence
   728	theory. \Cref{prob:4} is not needed for this specific theorem because $s=2$
   729	is in the half-plane of absolute convergence.
   730	\end{proof}
   731	
   732	\begin{remark}\label{rem:zetatwo}
   733	\Cref{thm:Basel} is a \emph{lower-bound} HoTT goal: it does not require
   734	analytic continuation or the functional equation. We propose it as the
   735	\emph{minimum viable target} for HoTT-native analytic NT — the analogue of
   736	``hello, world'' for our roadmap.
   737	\end{remark}
   738	
   739	%---------------------------------------------------------------
   740	\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
   741	
   742	\subsection{Brief history}
   743	
   744	The Langlands programme \cite{Langlands1970} predicts a correspondence
   745	\[
   746	\{ \text{automorphic representations of } GL(n,\mathbb{A}_F) \}
   747	\,\longleftrightarrow\,
   748	\{ \text{$n$-dim Galois representations of } \mathrm{Gal}(\overline{F}/F) \}
   749	\]
   750	for a global field $F$. The number-field case ($F$ a number field) is
   751	analytic in nature; the function-field case ($F = \F_q(X)$ for a curve $X$)
   752	is geometric, hence the name \emph{geometric Langlands}.
   753	
   754	Geometric Langlands has a categorical formulation due to Beilinson--Drinfeld
   755	\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
   756	the existence of an equivalence
   757	\[
   758	\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \,\simeq\, \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X))
   759	\]
   760	of $(\infty,1)$-categories, where $G$ is a reductive group, $\mathsf{Bun}_G$
   761	its moduli stack of $G$-bundles, $G^\vee$ the Langlands dual, and
   762	$\mathsf{LocSys}$ the de Rham moduli of local systems. This was
   763	\textbf{proven} in 2024 by Gaitsgory, Raskin, Rozenblyum, Arinkin, Beraldo,
   764	Chen, Cheng, Faergeman, Lin, Lysenko in five papers
   765	\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
   766	
   767	\subsection{$(\infty,1)$-categories vs.\ HoTT}
   768	
   769	By Lurie's higher topos theory \cite{Lurie2009HTT}, $(\infty,1)$-categories
   770	admit a model in simplicial sets (quasi-categories). Cisinski et al.\
   771	\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
   772	foundations of $(\infty,1)$-category theory} in which $(\infty,1)$-categories
   773	are types satisfying a Segal condition.
   774	
   775	By Shulman's theorem \cite{Shulman2019InfTopos}, every $(\infty,1)$-topos
   776	$\mathcal{X}$ admits HoTT as its internal language. Hence, in principle,
   777	the Gaitsgory equivalence is statable in HoTT \emph{internally to a fixed
   778	$(\infty,1)$-topos}.
   779	
   780	\begin{remark}\label{rem:internal}
   781	The catch is that the equivalence relates two \emph{different} topoi:
   782	$\mathsf{D}\text{-mod}(\mathsf{Bun}_G)$ is internal to a derived geometric
   783	topos; $\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee})$ is internal to a different
   784	derived geometric topos. A HoTT statement requires either an ambient
   785	2-topos / very-large-universe setup (in the spirit of Riehl--Verity directed
   786	type theory) or an external HoTT statement comparing two HoTT internal
   787	languages.
   788	\end{remark}
   789	
   790	\subsection{Geometric vs.\ analytic Langlands}
   791	
   792	The 2024 proof is \emph{geometric}: it lives in the world of moduli stacks
   793	over $\F_q$-curves or, in characteristic 0, over $\C$-curves with the de
   794	Rham stack. It says nothing directly about $\zeta$ or about analytic number
   795	theory.
   796	
   797	The \emph{analytic} Langlands programme (Etingof--Frenkel--Kazhdan
   798	\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the
   799	$L^2$-spectrum of certain operators on $\mathsf{Bun}_G(\C\text{-curve})$
   800	should match a spectral side built from $\mathsf{LocSys}_{G^\vee}$. This is
   801	the program closer to $\zeta(s) = 0$, but it is much less developed than
   802	the geometric version.
   803	
   804	\subsection{Implication for HoTT-native analytic NT}
   805	
   806	If a HoTT-native analytic Langlands programme could be developed, then
   807	$\zeta(s) = 0$ would translate to a statement about the spectrum of an
   808	operator on $\mathsf{Bun}_G(\Q)$, which is at least \emph{syntactically} a
   809	HoTT statement modulo standard moduli-stack constructions. We do not
   810	develop this direction in detail; we flag it as a concrete research direction.
   811	
   812	\subsection{Detailed example: $GL(1)$ Langlands and Hecke characters}\label{subsec:GL1}
   813	
   814	The simplest case of Langlands is $G = GL(1)$, and even this case shows
   815	where HoTT-native infrastructure is needed.
   816	
   817	\begin{example}[$GL(1)$ over $\Q$]
   818	Automorphic representations of $GL(1, \mathbb{A}_\Q)$ are continuous
   819	characters $\chi: \mathbb{A}_\Q^\times / \Q^\times \to \C^\times$. By
   820	class-field theory, these correspond to characters of $\mathrm{Gal}^{\mathrm{ab}}
   821	(\overline{\Q}/\Q)$, i.e., characters of the idele class group. The
   822	$L$-function attached to $\chi$ is
   823	\[
   824	L(s,\chi) = \prod_p \frac{1}{1 - \chi(p) p^{-s}}.
   825	\]
   826	For $\chi = 1$ trivial, this is $\zeta(s)$. The Langlands correspondence
   827	identifies $L(s,\chi)$ with the Artin $L$-function of the corresponding
   828	Galois character.
   829	\end{example}
   830	
   831	\begin{remark}[HoTT formulation of Hecke characters]
   832	A HoTT formulation requires:
   833	\begin{itemize}
   834	\item HoTT-native ideles $\mathbb{A}_\Q^\times$ as a restricted product
   835	over places. This is a HoTT-native colimit over a directed system of
   836	finite-place subgroups; HoTT-native completion at each place requires HoTT
   837	$p$-adic numbers \cite{HoTTBook}.
   838	\item HoTT-native continuous group homomorphisms.
   839	\item HoTT-native $L$-function attached to character.
   840	\end{itemize}
   841	None of these are presently available, but each is plausibly a few thousand
   842	lines of HoTT code.
   843	\end{remark}
   844	
   845	\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
   846	
   847	We give a more precise version of the Gaitsgory equivalence as a HoTT
   848	internal statement. Let $\mathcal{X}$ be the $(\infty,1)$-topos of derived
   849	algebraic stacks over $\C$. By Shulman \cite{Shulman2019InfTopos},
   850	$\mathcal{X}$ has an internal language extending HoTT (after fixing a
   851	universe-of-types issue).
   852	
   853	\begin{conjecture}[Gaitsgory equivalence in HoTT, schematic]\label{conj:GLCHoTT}
   854	In the internal language of $\mathcal{X}$, fix a smooth projective curve
   855	$X:\mathcal{X}$ over $\C$ and a reductive group $G:\mathcal{X}$. Define:
   856	\begin{align*}
   857	\mathsf{Bun}_G(X) &:\Type \quad \text{(moduli stack of $G$-bundles)}, \\
   858	\mathsf{LocSys}_{G^\vee}(X) &:\Type \quad \text{(moduli stack of $G^\vee$-local systems)}, \\
   859	\mathsf{D}\text{-mod}(\mathsf{Bun}_G) &:\Type \quad \text{(category of D-modules)}, \\
   860	\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}) &:\Type \quad \text{(category of quasi-coherent sheaves)}.
   861	\end{align*}
   862	There is a HoTT-internal equivalence of $\infty$-categories:
   863	\[
   864	\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \simeq \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X)).
   865	\]
   866	\end{conjecture}
   867	
   868	This is conjectural in the sense that we have not verified all the
   869	type-theoretic encodings; the underlying mathematical content is theorem
   870	(Gaitsgory et al.\ 2024).
   871	
   872	\begin{remark}\label{rem:univalence-glc}
   873	Univalence enters when one asks: \emph{which} equivalence? The
   874	Gaitsgory--Drinfeld equivalence comes equipped with a Hecke-eigensheaf
   875	property; under univalence, this distinguishes one canonical equivalence up
   876	to a contractible space of choices.
   877	\end{remark}
   878	
   879	\subsection{Physical interpretation: 4d $\mathcal{N}=4$ super-Yang--Mills}
   880	
   881	Kapustin and Witten \cite{KapustinWitten2007} interpreted geometric
   882	Langlands as electric--magnetic duality (S-duality) of 4d
   883	$\mathcal{N}=4$ super-Yang--Mills compactified on a Riemann surface.
   884	This physical perspective suggests:
   885	\begin{itemize}
   886	\item A HoTT-native treatment of 4d $\mathcal{N}=4$ super-Yang--Mills via
   887	synthetic differential cohesive HoTT \cite{Schreiber2013}.
   888	\item S-duality as an automorphism of the underlying type; eigenvalues of
   889	S-duality giving the spectrum.
   890	\item Connection to the synthesis paper's QFT formulation.
   891	\end{itemize}
   892	We flag this as a research direction; we do not develop it further here.
   893	
   894	%---------------------------------------------------------------
   895	\section{Condensed Mathematics and HoTT}\label{sec:condensed}
   896	
   897	\subsection{Pyknotic / condensed sets}
   898	
   899	Clausen and Scholze \cite{Scholze2019Condensed,ClausenScholze2024Analytic}
   900	defined the \emph{condensed sets} as sheaves on the site of profinite sets

exec
/usr/local/bin/zsh -lc "rg -n -F '\\label{' papers/latex/langlands-analytic-number-theory.tex && rg -n -F '\\Cref{' papers/latex/langlands-analytic-number-theory.tex && rg -n -F '\\ref{' papers/latex/langlands-analytic-number-theory.tex && rg -n -F '\\cite{' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
135:\section{Introduction}\label{sec:intro}
261:\section{The Prerequisite Chain}\label{sec:prereq}
267:\begin{definition}[Cauchy reals, after the HoTT Book \cite{HoTTBook}]\label{def:Rc}
287:\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
302:\begin{definition}[Univalent algebraic closure]\label{def:UAC}
314:\begin{remark}[Plain-language gloss]\label{rem:UACplain}
325:\begin{proposition}\label{prop:UACUnique}
361:\begin{definition}[Constructive holomorphicity]\label{def:holo}
372:\begin{remark}[Synthetic alternative]\label{rem:synth}
382:\begin{definition}[Dirichlet series]\label{def:Dirichlet}
392:\begin{proposition}[HoTT-native; sketched]\label{prop:DirichletAlgebra}
420:\label{fig:chain}
429:\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
469:\subsection{HoTT-native Cauchy reals: explicit example}\label{subsec:CauchyEx}
474:\begin{example}[$\sqrt{2}$ as Cauchy real]\label{ex:sqrt2}
483:\begin{example}[$e$ as Cauchy real]\label{ex:euler}
490:\begin{example}[$\pi$ as Cauchy real]\label{ex:pi}
501:\section{The Riemann Zeta Function as a HoTT Object}\label{sec:zeta}
515:\begin{equation}\label{eq:zetaSeries}
523:\begin{definition}[Specification of zeta as HIIT, candidate]\label{def:ZetaHIIT}
543:\begin{remark}\label{rem:ZetaHIITissues}
568:\begin{definition}[Zeta via Euler product]\label{def:ZetaEuler}
577:\begin{proposition}[Euler product, modulo convergence]\label{prop:Euler}
597:\begin{definition}[Meromorphic continuation, universal]\label{def:MeromCont}
606:\begin{theorem}[Identity theorem, HoTT version]\label{thm:Identity}
619:\begin{definition}[Zeta via universal property]\label{def:ZetaUP}
627:\begin{theorem}[Conjectural equivalence]\label{thm:ZetaEquiv}
646:\begin{theorem}[Functional equation, conjectured HoTT-native]\label{thm:FE}
677:\begin{conjecture}[Riemann hypothesis, HoTT statement]\label{conj:RH}
685:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
690:\begin{theorem}[Basel problem]\label{thm:Basel}
732:\begin{remark}\label{rem:zetatwo}
740:\section{Geometric Langlands in $(\infty,1)$-Topoi}\label{sec:langlands}
780:\begin{remark}\label{rem:internal}
812:\subsection{Detailed example: $GL(1)$ Langlands and Hecke characters}\label{subsec:GL1}
845:\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
853:\begin{conjecture}[Gaitsgory equivalence in HoTT, schematic]\label{conj:GLCHoTT}
872:\begin{remark}\label{rem:univalence-glc}
895:\section{Condensed Mathematics and HoTT}\label{sec:condensed}
926:\begin{problem}[Bridging condensed mathematics and HoTT]\label{prob:bridge}
953:\begin{definition}[HoTT-solid abelian group, candidate]\label{def:HoTTSolid}
963:\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
981:\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
991:\subsection{Solid modules over $\Z$ and $p$-adic interaction}\label{subsec:solidp}
1004:\begin{conjecture}[$p$-adic zeta function in HoTT]\label{conj:padicZeta}
1011:\begin{remark}\label{rem:padicEasier}
1019:\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
1078:\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
1123:\subsection{Quantitative comparison}\label{subsec:LSquant}
1153:\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
1161:\begin{problem}\label{prob:1}
1171:\begin{problem}\label{prob:2}
1180:\begin{problem}\label{prob:3}
1189:\begin{problem}\label{prob:4}
1199:\begin{problem}\label{prob:5}
1209:\begin{problem}\label{prob:6}
1228:\label{fig:roadmap}
1247:\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
1262:\begin{remark}\label{rem:decidability}
1269:\begin{remark}\label{rem:LEM}
1283:\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
1296:\begin{theorem}[von Koch, expected HoTT version]\label{thm:vonKoch}
1318:\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
1339:\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
1366:\section{Discussion}\label{sec:discussion}
1491:\section{Conclusion}\label{sec:conclusion}
1520:\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
1528:\begin{equation}\label{eq:univ}
1563:\begin{equation}\label{eq:choice}
1573:\begin{equation}\label{eq:lem}
1580:\section{Appendix: Companion code overview}\label{app:code}
1611:\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}
1670:\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}
194:$\zeta$. (\Cref{sec:prereq})
197:equivalence. (\Cref{sec:zeta})
200:Gaitsgory2024GLC}. (\Cref{sec:langlands})
202:where they overlap and where the bridge is missing. (\Cref{sec:condensed})
204:benchmark and as a \emph{translation target}. (\Cref{sec:loefflerstoll})
206:HoTT-native proof that $\zeta(2) = \pi^2/6$. (\Cref{sec:roadmap})
208:its modal-logical structure. (\Cref{sec:rh})
251:\Cref{sec:prereq} traces the prerequisite chain.
252:\Cref{sec:zeta} defines $\zeta$ as a candidate HoTT object.
253:\Cref{sec:langlands} treats geometric Langlands in $(\infty,1)$-topoi.
254:\Cref{sec:condensed} compares condensed mathematics and HoTT.
255:\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.
256:\Cref{sec:roadmap} gives the six-sub-problem roadmap.
257:\Cref{sec:rh} discusses RH as a HoTT statement.
258:\Cref{sec:conclusion} concludes.
315:In essence, \Cref{def:UAC} defines the algebraic closure not as one
338:propositional truncation in \Cref{def:UAC} ensures the existential is a
423:The chain in \Cref{fig:chain} terminates at $\zeta$, but the rightmost arrow
436:In classical complex analysis, the identity theorem (\Cref{thm:Identity})
549:lemma — which is exactly the analytic-continuation gap of \Cref{prob:4}.
557:construction. The remaining two approaches (\Cref{def:ZetaEuler} and
558:\Cref{def:ZetaUP}) are more conservative.
592:is a HoTT-statement requiring \Cref{prop:DirichletAlgebra}.
621:\Cref{thm:Identity}) meromorphic continuation of $s \mapsto \sum n^{-s}$ from
629:definitions \Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}
634:\Cref{def:ZetaEuler} agrees with the partial-sum definition on $H_1$ by
635:\Cref{prop:Euler}. \Cref{def:ZetaUP} agrees with the partial-sum definition
636:on $H_1$ by definition. By \Cref{thm:Identity}, any two meromorphic
637:continuations of the same function agree everywhere. \Cref{def:ZetaHIIT}
683:We will analyse this statement modal-logically in \Cref{sec:rh}.
727:\Cref{prob:1}--\Cref{prob:3}, plus some elementary measure / convergence
728:theory. \Cref{prob:4} is not needed for this specific theorem because $s=2$
733:\Cref{thm:Basel} is a \emph{lower-bound} HoTT goal: it does not require
938:\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others
959:\Cref{def:HoTTSolid} is speculative; it has not been verified to match the
987:A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
1012:\Cref{conj:padicZeta} is a research suggestion: \emph{start with the $p$-adic
1060:(\Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}) become
1076:properties as Mathlib's $\C$. We sketch this in \Cref{sec:roadmap}.
1121:HoTT analogue: \Cref{conj:RH}.
1163:of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
1172:Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
1173:Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
1181:Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
1193:\Cref{def:ZetaUP}.
1200:Prove the functional equation \Cref{thm:FE} in HoTT, using either
1205:\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
1215:\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
1222:\Cref{prob:1} \arrow[r] \arrow[dr] & \Cref{prob:2} \arrow[d] & \\
1223:& \Cref{prob:3} \arrow[r] & \Cref{prob:4} \arrow[d] \\
1224:& & \Cref{prob:5} \arrow[d] \\
1225:& & \Cref{prob:6}
1234:\item \Cref{prob:1}: $\sim$1000 lines, 1--2 graduate-student-years.
1235:\item \Cref{prob:2}: $\sim$5000 lines, 2--3 g-s-y.
1236:\item \Cref{prob:3}: $\sim$1500 lines, 1 g-s-y.
1237:\item \Cref{prob:4}: $\sim$3000 lines, 2--3 g-s-y; key conceptual work.
1238:\item \Cref{prob:5}: $\sim$5000 lines, 2 g-s-y.
1239:\item \Cref{prob:6}: $\sim$200 lines, weeks. The hard part is the
1251:\Cref{conj:RH} states $\Pi(s:\Cc).\, P(s) \to Q(s)$, where $P$ and $Q$ are
1291:suitable $(\infty,1)$-topos, \Cref{conj:GRH} is a $\Pi\Pi\Pi$-statement —
1297:Conditional on \Cref{conj:RH}, the prime-counting function $\pi(x)$
1307:\Cref{prob:1}--\Cref{prob:6}.
1334:\Cref{prob:1}--\Cref{prob:5}. In particular, the $\mathrm{Re}(s) = 1$
1337:target after \Cref{thm:Basel}.
1354:contour integration. HoTT-native version would require \Cref{prob:4}.
1359:functional equation; their existence requires \Cref{prob:5}.
1416:\item We do not prove the conjectures of \Cref{thm:ZetaEquiv} or
1417:\Cref{thm:FE}; we sketch proofs that depend on currently-unavailable
1419:\item Our proposed bridge (\Cref{prob:bridge}) between condensed mathematics
1426:\item Implement \Cref{prob:1}--\Cref{prob:3} in Cubical Agda.
1428:(\Cref{prob:4}).
1432:\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
1497:requires the prerequisite chain of \Cref{sec:prereq}, the candidate
1498:definitions of \Cref{sec:zeta}, the $(\infty,1)$-topos perspective of
1499:\Cref{sec:langlands}--\Cref{sec:condensed}, the comparison with
1500:Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete
1501:sub-problems of \Cref{sec:roadmap}.
1505:concrete steps. The roadmap of \Cref{sec:roadmap} estimates 8--12
1539:\item Cauchy reals $\Rc$ as a HIIT (\Cref{def:Rc}).
1607:is to make the prerequisite chain (\Cref{sec:prereq}) and the candidate
1608:definitions (\Cref{sec:zeta}) executable, so that future HoTT-native work
1614:$\zeta$, addressing \Cref{prob:4} in more detail.
1653:size. Cumulatively, this is the heart of \Cref{prob:4}, and we estimate

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '901,1250p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
   901	with finite jointly-surjective covers. Pyknotic sets, due to Barwick--Haine,
   902	are an essentially equivalent variant. The category $\mathsf{Cond}$ is a
   903	topos, and $\mathsf{Cond}(\mathrm{Ab})$ — condensed abelian groups — has
   904	\emph{much better homological properties} than topological abelian groups.
   905	
   906	The crucial example: $\C$ becomes a \emph{condensed ring} which is
   907	analytic-friendly in a way that $\C$-as-topological-ring is not. The
   908	6-functor formalism of analytic stacks (Clausen--Scholze 2024) gives a
   909	geometric foundation for analytic-number-theoretic objects.
   910	
   911	\subsection{Why this matters for $\zeta$}
   912	
   913	The condensed approach gives a uniform setting in which:
   914	\begin{itemize}
   915	\item Smooth manifolds, complex-analytic spaces, schemes, formal schemes,
   916	adic spaces, and rigid spaces all live as condensed objects.
   917	\item Cohomology operations (six functors: $f^*, f_*, f_!, f^!, \otimes,
   918	\mathrm{Hom}$) all exist with clean adjunction structure.
   919	\item $\zeta$, viewed as a meromorphic function on $\C$, becomes an object
   920	in $\mathsf{Cond}(\mathrm{Ab})$-modules over a suitable condensed analytic
   921	stack.
   922	\end{itemize}
   923	
   924	\subsection{Bridging to HoTT}
   925	
   926	\begin{problem}[Bridging condensed mathematics and HoTT]\label{prob:bridge}
   927	Construct an $(\infty,1)$-topos $\mathcal{X}$ with an internal language
   928	extending HoTT, in which:
   929	\begin{itemize}
   930	\item Condensed sets embed fully faithfully.
   931	\item Solid abelian groups (in the sense of Clausen--Scholze) are an
   932	internal type.
   933	\item Holomorphic / meromorphic functions on $\C$ correspond to morphisms
   934	of condensed analytic stacks.
   935	\end{itemize}
   936	\end{problem}
   937	
   938	\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others
   939	has explored the syntactic side, but no complete bridge exists.
   940	
   941	\subsection{Solid abelian groups in HoTT, sketch}
   942	
   943	\begin{definition}[Solid abelian group, condensed]
   944	A condensed abelian group $A$ is \emph{solid} if for every profinite set
   945	$S$ and every continuous $S \to A$ which is null on the closure of zero,
   946	the induced map factors through $A$ uniquely.
   947	\end{definition}
   948	
   949	A HoTT-native version would replace ``profinite set'' with a HoTT-internal
   950	type (e.g., a limit of finite types in $\mathcal{U}$) and ``continuous''
   951	with the appropriate cohesive-HoTT modality. We sketch a candidate:
   952	
   953	\begin{definition}[HoTT-solid abelian group, candidate]\label{def:HoTTSolid}
   954	Working in cohesive HoTT, an abelian group $A:\mathcal{U}$ is \emph{HoTT-solid}
   955	if $\esh(A) \simeq A$ and the map $\flat A \to A$ is an equivalence.
   956	\end{definition}
   957	
   958	\begin{remark}
   959	\Cref{def:HoTTSolid} is speculative; it has not been verified to match the
   960	condensed definition. It is offered as a starting point for future work.
   961	\end{remark}
   962	
   963	\subsection{Six-functor formalism in HoTT}\label{subsec:sixfunctor}
   964	
   965	The Clausen--Scholze 6-functor formalism for analytic stacks (2024) is
   966	expressed in $(\infty,1)$-categorical language as follows. Given a category
   967	$\mathcal{C}$ of geometric objects (analytic stacks) with two classes of
   968	morphisms ``proper'' $\mathsf{P}$ and ``open'' $\mathsf{O}$, a 6-functor
   969	formalism consists of:
   970	\begin{itemize}
   971	\item A symmetric monoidal $(\infty,1)$-category $\mathcal{D}(X)$ for each
   972	$X \in \mathcal{C}$, of $\infty$-sheaves on $X$.
   973	\item For each morphism $f: X \to Y$ in $\mathcal{C}$, an adjunction
   974	$f^* \dashv f_*: \mathcal{D}(Y) \rightleftarrows \mathcal{D}(X)$.
   975	\item For each $f$ in $\mathsf{P} \cup \mathsf{O}$, an additional pair
   976	$f_! \dashv f^!: \mathcal{D}(X) \rightleftarrows \mathcal{D}(Y)$.
   977	\item Coherent base change, projection formula, and proper / open
   978	recollement.
   979	\end{itemize}
   980	
   981	\begin{problem}[6-functors in HoTT]\label{prob:sixfunc}
   982	Express the 6-functor formalism in HoTT internal language. The natural
   983	setting: $(\infty,1)$-topoi indexed over a directed type / $(\infty,2)$-base
   984	\cite{Riehl2021Elements}.
   985	\end{problem}
   986	
   987	A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
   988	HoTT framework for analytic objects (including $\zeta$ as a section of a
   989	suitable line bundle).
   990	
   991	\subsection{Solid modules over $\Z$ and $p$-adic interaction}\label{subsec:solidp}
   992	
   993	In condensed mathematics, the category of solid abelian groups
   994	$\mathrm{Solid}_{\Z}$ contains $p$-adic objects naturally:
   995	\[
   996	\Z_p \in \mathrm{Solid}_{\Z}, \qquad \Q_p \in \mathrm{Solid}_{\Z}, \qquad
   997	\C_p \in \mathrm{Solid}_{\Z}.
   998	\]
   999	For $\Z_p$, the topology comes from the profinite structure
  1000	$\Z_p = \varprojlim_n \Z/p^n$. For $\C_p$, completing the algebraic closure
  1001	of $\Q_p$ uses metric completion plus algebraic closure plus completion
  1002	again — this is awkward classically and equally awkward in HoTT.
  1003	
  1004	\begin{conjecture}[$p$-adic zeta function in HoTT]\label{conj:padicZeta}
  1005	A HoTT-native realisation of the Kubota--Leopoldt $p$-adic zeta function
  1006	$\zeta_p:\Z_p \setminus \{1\} \to \Q_p$ is plausibly easier than the
  1007	archimedean $\zeta$, because the $p$-adic case avoids analytic continuation
  1008	and uses interpolation of values $\zeta(1-n)$ for $n \geq 1$.
  1009	\end{conjecture}
  1010	
  1011	\begin{remark}\label{rem:padicEasier}
  1012	\Cref{conj:padicZeta} is a research suggestion: \emph{start with the $p$-adic
  1013	case}. Loeffler--Stoll formalize the archimedean case; the $p$-adic case has
  1014	not yet been comprehensively formalized in any proof assistant. HoTT could
  1015	be the first.
  1016	\end{remark}
  1017	
  1018	%---------------------------------------------------------------
  1019	\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
  1020	
  1021	\subsection{What Loeffler--Stoll have}
  1022	
  1023	The 2025 paper \cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:
  1024	\begin{enumerate}
  1025	\item The Riemann zeta function $\zeta$ via Hurwitz zeta and analytic
  1026	continuation, $\sim$ 3300 lines.
  1027	\item Dirichlet $L$-functions $L(s,\chi)$ for primitive characters $\chi$.
  1028	\item The Euler product $\zeta(s) = \prod_p (1-p^{-s})^{-1}$ on
  1029	$\mathrm{Re}(s)>1$.
  1030	\item Analytic continuation via Mellin / theta-function method.
  1031	\item The functional equation $\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)
  1032	\cos(\pi s/2)\zeta(s)$.
  1033	\item Basel: $\zeta(2) = \pi^2/6$.
  1034	\item Non-vanishing on $\mathrm{Re}(s) \geq 1$.
  1035	\item Dirichlet's theorem on primes in APs.
  1036	\item Formal statement of the Riemann hypothesis:
  1037	\begin{verbatim}
  1038	def RiemannHypothesis : Prop :=
  1039	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1040	\end{verbatim}
  1041	\end{enumerate}
  1042	
  1043	This is roughly $10^4$ lines total across the relevant Mathlib files.
  1044	
  1045	\subsection{What Lean / Mathlib provides that HoTT lacks}
  1046	
  1047	\begin{itemize}
  1048	\item Classical $\C$ as a complete normed field, with Cauchy integrals.
  1049	\item Mathlib's \texttt{Complex.differentiable}, \texttt{HolomorphicAt},
  1050	\texttt{ContourIntegral}.
  1051	\item Mellin transforms, Gamma function, Riemann zeta function as
  1052	\texttt{ZetaFunction.mathlib}.
  1053	\item All of measure theory, including Lebesgue integration on $\C$.
  1054	\end{itemize}
  1055	
  1056	\subsection{What HoTT could offer}
  1057	
  1058	\begin{itemize}
  1059	\item \emph{Univalence}: the multiple definitions of $\zeta$
  1060	(\Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}) become
  1061	\emph{propositionally equal} via univalence, not merely
  1062	``equal-up-to-some-isomorphism''.
  1063	\item \emph{Higher inductive types}: the Riemann surface of $\zeta$ (or of
  1064	$L$-functions) is naturally a HIT, capturing branch-cut data
  1065	syntactically.
  1066	\item \emph{Internal $(\infty,1)$-topos language}: the Langlands functor and
  1067	its adjoints can be expressed in the same language as the underlying
  1068	analytic objects.
  1069	\end{itemize}
  1070	
  1071	\subsection{Strategy: HoTT as classical-foundation transport}
  1072	
  1073	A pragmatic approach: \emph{transport} the Loeffler--Stoll Lean
  1074	formalization to HoTT \emph{not} by re-doing all the analysis, but by
  1075	treating $\C$ axiomatically as a HoTT type with the same operations and
  1076	properties as Mathlib's $\C$. We sketch this in \Cref{sec:roadmap}.
  1077	
  1078	\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
  1079	
  1080	To make the comparison tangible, we present the key Lean signatures from
  1081	Loeffler--Stoll alongside conjectured HoTT analogues.
  1082	
  1083	\paragraph{The zeta function itself.}
  1084	In Mathlib (Loeffler--Stoll):
  1085	\begin{verbatim}
  1086	noncomputable def riemannZeta : ℂ → ℂ
  1087	\end{verbatim}
  1088	In HoTT (proposed):
  1089	\[
  1090	\zeta : \Cc \setminus \{1\} \to \Cc \quad \text{(with explicit pole at $s=1$)}.
  1091	\]
  1092	Here Lean uses ``noncomputable'' to encode that $\zeta$ is defined by
  1093	non-effective analytic continuation. HoTT, lacking a built-in concept of
  1094	``noncomputable'', must encode this via a propositional truncation.
  1095	
  1096	\paragraph{The functional equation.}
  1097	In Mathlib:
  1098	\begin{verbatim}
  1099	theorem riemannZeta_one_sub : ∀ (s : ℂ), s ≠ 0 → s ≠ 1 →
  1100	  riemannZeta (1 - s) = 2 * (2 * π) ^ (-s) * Gamma s
  1101	                      * cos (π * s / 2) * riemannZeta s
  1102	\end{verbatim}
  1103	HoTT analogue (proposed): exactly the corresponding $\Pi$-statement, modulo
  1104	the conditional $s \neq 0 \wedge s \neq 1$.
  1105	
  1106	\paragraph{Non-vanishing on $\mathrm{Re}(s) \geq 1$.}
  1107	In Mathlib:
  1108	\begin{verbatim}
  1109	theorem riemannZeta_ne_zero_of_one_le_re :
  1110	  ∀ (s : ℂ), 1 ≤ s.re → s ≠ 1 → riemannZeta s ≠ 0
  1111	\end{verbatim}
  1112	HoTT analogue: same statement; the proof uses the Euler product (no
  1113	analytic continuation), so should be tractable HoTT-natively.
  1114	
  1115	\paragraph{Riemann hypothesis.}
  1116	In Mathlib:
  1117	\begin{verbatim}
  1118	def RiemannHypothesis : Prop :=
  1119	  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
  1120	\end{verbatim}
  1121	HoTT analogue: \Cref{conj:RH}.
  1122	
  1123	\subsection{Quantitative comparison}\label{subsec:LSquant}
  1124	
  1125	\begin{tabular}{l|c|c}
  1126	Theorem & Lean lines (Loeffler--Stoll) & Est.\ HoTT complexity \\
  1127	\hline
  1128	$\zeta$ definition & 200 & $\sim 2$--$3\times$ \\
  1129	Analytic continuation & 3300 & $\sim 2$--$3\times$ \\
  1130	Functional equation & 800 & $\sim 2$--$3\times$ \\
  1131	Euler product & 200 & $\sim 2\times$ \\
  1132	$\zeta$ non-vanishing on $\mathrm{Re}(s) \geq 1$ & 600 & $\sim 2\times$ \\
  1133	Dirichlet $L$-functions & 1500 & $\sim 2\times$ \\
  1134	Dirichlet's theorem & 800 & $\sim 2\times$ \\
  1135	\hline
  1136	Total & $\sim$7400 lines & $\sim 2$--$3\times$ overhead
  1137	\end{tabular}
  1138	
  1139	\medskip
  1140	
  1141	\begin{remark}[Caveat about line-count estimates]
  1142	The right-hand column is highly speculative; we present it as a
  1143	\emph{complexity factor} rather than absolute counts. The factor reflects
  1144	the rough overhead of HoTT-native analysis (no classical Mathlib measure
  1145	theory, no built-in Lebesgue integration, manual constructive analysis)
  1146	plus an honest correction for the immaturity of HoTT analysis libraries.
  1147	Actual numbers will diverge from these estimates by easily $\pm 50\%$ as
  1148	HoTT analysis libraries mature. The estimates are calibrated against
  1149	\cite{Booij2020} for HoTT-native analysis benchmarks.
  1150	\end{remark}
  1151	
  1152	%---------------------------------------------------------------
  1153	\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
  1154	
  1155	We propose six concrete sub-problems whose collective resolution would yield
  1156	a HoTT-native proof of $\zeta(2) = \pi^2/6$ and a formal HoTT statement of
  1157	the Riemann hypothesis.
  1158	
  1159	\subsection*{Sub-problem 1: HoTT-native $\Cc$ with full algebraic-closure axiom}
  1160	\addcontentsline{toc}{subsection}{Sub-problem 1: HoTT-native $\Cc$}
  1161	\begin{problem}\label{prob:1}
  1162	Construct a HoTT type $\Cc:\mathcal{U}$ that is provably an algebraic closure
  1163	of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
  1164	it admits the standard topology and metric structure.
  1165	\end{problem}
  1166	\textbf{Status:} partially done in HoTT Book setting; algebraic closure not
  1167	yet done.
  1168	
  1169	\subsection*{Sub-problem 2: HoTT-native holomorphic functions}
  1170	\addcontentsline{toc}{subsection}{Sub-problem 2: HoTT-native $\holo$}
  1171	\begin{problem}\label{prob:2}
  1172	Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
  1173	Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
  1174	\end{problem}
  1175	\textbf{Status:} possible by direct constructive analysis. Estimated effort:
  1176	$\sim$5000 lines of Agda or Cubical Agda.
  1177	
  1178	\subsection*{Sub-problem 3: HoTT-native Dirichlet series machinery}
  1179	\addcontentsline{toc}{subsection}{Sub-problem 3: HoTT-native Dirichlet series}
  1180	\begin{problem}\label{prob:3}
  1181	Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
  1182	construct the basic operations: shift, multiplication, logarithm, derivative.
  1183	\end{problem}
  1184	\textbf{Status:} our companion Haskell code provides a finite-precision
  1185	prototype; HoTT formalisation pending.
  1186	
  1187	\subsection*{Sub-problem 4: HoTT-native analytic continuation}
  1188	\addcontentsline{toc}{subsection}{Sub-problem 4: HoTT-native analytic continuation}
  1189	\begin{problem}\label{prob:4}
  1190	Formalize the analytic-continuation theorem: a holomorphic function on a
  1191	connected open admitting a power-series at one boundary point extends
  1192	holomorphically to a neighbourhood of that point. Apply to $\zeta$ to obtain
  1193	\Cref{def:ZetaUP}.
  1194	\end{problem}
  1195	\textbf{Status:} this is the key technical bottleneck.
  1196	
  1197	\subsection*{Sub-problem 5: HoTT-native functional equation}
  1198	\addcontentsline{toc}{subsection}{Sub-problem 5: HoTT-native functional equation}
  1199	\begin{problem}\label{prob:5}
  1200	Prove the functional equation \Cref{thm:FE} in HoTT, using either
  1201	(a) the Mellin-transform / theta-function method, or (b) Riemann's contour
  1202	integral method, or (c) a synthetic cohesive-HoTT proof using analytic-stack
  1203	duality.
  1204	\end{problem}
  1205	\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
  1206	
  1207	\subsection*{Sub-problem 6: HoTT-native formal RH statement}
  1208	\addcontentsline{toc}{subsection}{Sub-problem 6: HoTT-native RH statement}
  1209	\begin{problem}\label{prob:6}
  1210	Write down a HoTT proposition $\mathrm{RH}:\Prop$ such that $\mathrm{RH}$
  1211	inhabits if and only if every non-trivial zero of $\zeta$ has real part
  1212	$1/2$. Verify this is the same statement as the classical RH, modulo the
  1213	ambient model.
  1214	\end{problem}
  1215	\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
  1216	
  1217	\subsection{Composition diagram}
  1218	
  1219	\begin{figure}[h]
  1220	\centering
  1221	\begin{tikzcd}[column sep=small, row sep=large]
  1222	\Cref{prob:1} \arrow[r] \arrow[dr] & \Cref{prob:2} \arrow[d] & \\
  1223	& \Cref{prob:3} \arrow[r] & \Cref{prob:4} \arrow[d] \\
  1224	& & \Cref{prob:5} \arrow[d] \\
  1225	& & \Cref{prob:6}
  1226	\end{tikzcd}
  1227	\caption{Dependency graph for the six sub-problems.}
  1228	\label{fig:roadmap}
  1229	\end{figure}
  1230	
  1231	\subsection{Estimated effort and milestones}
  1232	
  1233	\begin{itemize}
  1234	\item \Cref{prob:1}: $\sim$1000 lines, 1--2 graduate-student-years.
  1235	\item \Cref{prob:2}: $\sim$5000 lines, 2--3 g-s-y.
  1236	\item \Cref{prob:3}: $\sim$1500 lines, 1 g-s-y.
  1237	\item \Cref{prob:4}: $\sim$3000 lines, 2--3 g-s-y; key conceptual work.
  1238	\item \Cref{prob:5}: $\sim$5000 lines, 2 g-s-y.
  1239	\item \Cref{prob:6}: $\sim$200 lines, weeks. The hard part is the
  1240	infrastructure, not the statement.
  1241	\end{itemize}
  1242	
  1243	Total: $\sim$15000 lines, 8--12 graduate-student-years. Comparable to the
  1244	total effort behind Loeffler--Stoll plus its Mathlib dependencies.
  1245	
  1246	%---------------------------------------------------------------
  1247	\section{Open Conjectures: Riemann Hypothesis as a HoTT Statement}\label{sec:rh}
  1248	
  1249	\subsection{Modal-logical status of RH in HoTT}
  1250	

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1251,1600p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1251	\Cref{conj:RH} states $\Pi(s:\Cc).\, P(s) \to Q(s)$, where $P$ and $Q$ are
  1252	propositions. By the propositional structure, $\mathrm{RH}$ is itself a
  1253	proposition (in HoTT-Set sense, an $(-1)$-truncated type).
  1254	
  1255	In particular, $\mathrm{RH}$ is either inhabited or empty; we cannot have
  1256	``two non-equivalent proofs'' of RH. This is in contrast to a structural
  1257	statement like ``the type of complex numbers admits an algebraic structure''
  1258	which has no such uniqueness.
  1259	
  1260	\subsection{Decidability and constructivity}
  1261	
  1262	\begin{remark}\label{rem:decidability}
  1263	$\mathrm{RH}$ is \emph{not} decidable in HoTT: we have no algorithm
  1264	producing an inhabitant or refutation. This is consistent with
  1265	constructivity, since $\mathrm{RH}$ is a $\Pi$-statement over an
  1266	uncountable type.
  1267	\end{remark}
  1268	
  1269	\begin{remark}\label{rem:LEM}
  1270	Under classical logic ($\mathrm{LEM}$), $\mathrm{RH} \vee \neg\,\mathrm{RH}$
  1271	is inhabited; this is a consequence of $\mathrm{LEM}$, not a constructive
  1272	theorem.
  1273	\end{remark}
  1274	
  1275	\subsection{Connections to the Langlands programme}
  1276	
  1277	The Riemann hypothesis is a special case of the Generalized Riemann
  1278	Hypothesis (GRH): all non-trivial zeros of all $L$-functions $L(s,\chi)$
  1279	attached to primitive Dirichlet characters $\chi$ lie on
  1280	$\mathrm{Re}(s) = 1/2$. The Langlands programme conjecturally extends this
  1281	to automorphic $L$-functions $L(s,\pi)$.
  1282	
  1283	\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
  1284	\[
  1285	\Pi(\pi).\, \Pi(s:\Cc).\, L(s,\pi) = 0 \to
  1286	\neg\,\mathsf{trivialZero}_\pi(s) \to \mathrm{Re}(s) = 1/2.
  1287	\]
  1288	\end{conjecture}
  1289	
  1290	In a HoTT framework where automorphic representations are types in a
  1291	suitable $(\infty,1)$-topos, \Cref{conj:GRH} is a $\Pi\Pi\Pi$-statement —
  1292	syntactically clean, semantically deep.
  1293	
  1294	\subsection{The von Koch theorem in HoTT}
  1295	
  1296	\begin{theorem}[von Koch, expected HoTT version]\label{thm:vonKoch}
  1297	Conditional on \Cref{conj:RH}, the prime-counting function $\pi(x)$
  1298	satisfies
  1299	\[
  1300	|\pi(x) - \mathrm{Li}(x)| \in O(\sqrt{x} \log x).
  1301	\]
  1302	\end{theorem}
  1303	
  1304	This connects the analytic statement $\mathrm{RH}$ to a discrete one. A
  1305	HoTT-native proof would proceed via the explicit formula for $\pi(x)$ in
  1306	terms of zeros of $\zeta$, all of which lives downstream of
  1307	\Cref{prob:1}--\Cref{prob:6}.
  1308	
  1309	\subsection{What if RH is independent of HoTT-set theory?}
  1310	
  1311	A speculative possibility: $\mathrm{RH}$ might be independent of (some
  1312	extension of) HoTT, similar to the way the continuum hypothesis is
  1313	independent of ZFC. In that case, HoTT might admit two consistent
  1314	extensions: $\mathrm{HoTT} + \mathrm{RH}$ and $\mathrm{HoTT} + \neg\,\mathrm{RH}$.
  1315	This is purely speculative and reflects no current consensus; it is offered
  1316	only as a contrast with the classical view that RH ``simply has a truth value''.
  1317	
  1318	\subsection{Density theorems and zero-free regions}\label{subsec:zerofree}
  1319	
  1320	Classical analytic number theory has many results about the distribution of
  1321	zeros of $\zeta$ short of RH:
  1322	\begin{itemize}
  1323	\item \textbf{Hadamard / de la Vall\'ee-Poussin (1896):} $\zeta(s) \neq 0$
  1324	on $\mathrm{Re}(s) = 1$. Formalized in Lean by Loeffler--Stoll.
  1325	\item \textbf{Vinogradov-Korobov:} explicit zero-free region $\mathrm{Re}(s) >
  1326	1 - C/(\log|t|)^{2/3}(\log\log|t|)^{1/3}$.
  1327	\item \textbf{Selberg's density theorem:} the proportion of zeros within
  1328	distance $\delta$ of the critical line is $\geq 1 - O(\delta^{-1})$.
  1329	\item \textbf{Levinson--Conrey:} at least $40\%$ of zeros are on the
  1330	critical line.
  1331	\end{itemize}
  1332	
  1333	Each of these is, in principle, a HoTT-native theorem once we have
  1334	\Cref{prob:1}--\Cref{prob:5}. In particular, the $\mathrm{Re}(s) = 1$
  1335	non-vanishing requires only the Euler product and basic
  1336	inequalities — no analytic continuation. This is the natural \emph{second}
  1337	target after \Cref{thm:Basel}.
  1338	
  1339	\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
  1340	
  1341	A subtle point about HoTT: \emph{some} statements about $\zeta$ are
  1342	naturally effective (algorithmic), while others are not.
  1343	
  1344	\begin{example}[Effective: $\zeta$ on the line $\mathrm{Re}(s) > 1$]
  1345	The map $s \mapsto \sum_{n \leq N} n^{-s}$ for large $N$ provides an
  1346	$\epsilon$-approximation to $\zeta(s)$ with explicit $N(\epsilon, s)$
  1347	bounds. This is HoTT-native, computable, and compatible with $\Rc$ Cauchy
  1348	moduli.
  1349	\end{example}
  1350	
  1351	\begin{example}[Ineffective: $\zeta$ in the critical strip]
  1352	For $0 < \mathrm{Re}(s) < 1$, the Dirichlet series diverges. Computing
  1353	$\zeta(s)$ requires the Riemann--Siegel formula or similar, which involves
  1354	contour integration. HoTT-native version would require \Cref{prob:4}.
  1355	\end{example}
  1356	
  1357	\begin{example}[Ineffective: trivial zero locations]
  1358	The trivial zeros at $s = -2, -4, -6, \ldots$ are \emph{deduced} from the
  1359	functional equation; their existence requires \Cref{prob:5}.
  1360	\end{example}
  1361	
  1362	These distinctions matter for HoTT formalization: parts of the theory are
  1363	algorithmic-friendly (Cubical Agda can compute them), other parts are not.
  1364	
  1365	%---------------------------------------------------------------
  1366	\section{Discussion}\label{sec:discussion}
  1367	
  1368	\subsection{Why is analytic NT specifically hard?}
  1369	
  1370	Algebraic objects (rings, modules, groups, schemes) are \emph{small}: their
  1371	data fit on a finite page or in a computer's memory. Analytic objects
  1372	($\R$, $\C$, holomorphic functions, contour integrals) are \emph{large} in
  1373	two senses:
  1374	\begin{itemize}
  1375	\item Type-theoretic size: $\Rc$ is uncountable, so any property of $\Rc$
  1376	is in some sense a $\Pi$-statement over an uncountable type.
  1377	\item Logical complexity: $\zeta$ involves nested quantifiers over reals,
  1378	limits of limits, integrals, and analytic continuations.
  1379	\end{itemize}
  1380	HoTT, like any type theory, is well-suited to data of small or medium
  1381	complexity; encoding heavy analysis requires either substantial primitive
  1382	infrastructure or a transport from a classical foundation.
  1383	
  1384	\subsection{Comparison: Lean Mathlib's effectiveness}
  1385	
  1386	Lean Mathlib's success at formalizing analytic NT (Loeffler--Stoll 2025)
  1387	relies on:
  1388	\begin{enumerate}
  1389	\item Classical logic everywhere.
  1390	\item A large prebuilt library of measure theory, integration, and complex
  1391	analysis.
  1392	\item Decidability assumptions where appropriate.
  1393	\item Set-theoretic ambient foundations (Lean 4 type theory is
  1394	ZFC-equivalent in strength).
  1395	\end{enumerate}
  1396	HoTT can match (1)--(3) at extra cost; (4) is a deeper foundational issue.
  1397	
  1398	\subsection{The role of cohesive / differential HoTT}
  1399	
  1400	\emph{Differential cohesive HoTT} \cite{Schreiber2013, Wellen2018} extends
  1401	HoTT with shape, flat, and sharp modalities. In this setting, smooth /
  1402	holomorphic / meromorphic become synthetic. Examples like
  1403	\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
  1404	viable in HoTT.
  1405	
  1406	A natural research direction is to lift the Loeffler--Stoll work into
  1407	\emph{differential cohesive HoTT}, treating $\C$ as a $\esh$-modal type and
  1408	$\zeta$ as a synthetic meromorphic function. This is a substantial project
  1409	but appears feasible.
  1410	
  1411	\subsection{Limitations of this paper}
  1412	
  1413	\begin{itemize}
  1414	\item We do not give a working HoTT formalization; we give a research
  1415	roadmap and partial Haskell prototypes.
  1416	\item We do not prove the conjectures of \Cref{thm:ZetaEquiv} or
  1417	\Cref{thm:FE}; we sketch proofs that depend on currently-unavailable
  1418	HoTT-native infrastructure.
  1419	\item Our proposed bridge (\Cref{prob:bridge}) between condensed mathematics
  1420	and HoTT is open; we have not constructed the bridging $(\infty,1)$-topos.
  1421	\end{itemize}
  1422	
  1423	\subsection{Future directions}
  1424	
  1425	\begin{enumerate}
  1426	\item Implement \Cref{prob:1}--\Cref{prob:3} in Cubical Agda.
  1427	\item Develop the cohesive-HoTT bridge for analytic continuation
  1428	(\Cref{prob:4}).
  1429	\item Translate Loeffler--Stoll Lean to HoTT-axiomatised classical $\C$ as
  1430	a first benchmark.
  1431	\item Use the synthesis from \cite{Long2026Synthesis} to attack
  1432	\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
  1433	\item Explore the analytic Langlands programme of EFK
  1434	\cite{EFK2025AnalyticLanglands} in HoTT.
  1435	\end{enumerate}
  1436	
  1437	\subsection{Connection with directed type theory}
  1438	
  1439	A recent development is \emph{directed type theory} (DTT) of Riehl,
  1440	Shulman, Verity, North \cite{Riehl2021Elements}. DTT extends HoTT with a
  1441	notion of directed morphism — paths that are not invertible. This gives a
  1442	potential synthetic foundation for $(\infty,1)$-categories.
  1443	
  1444	Why is DTT relevant to analytic NT?
  1445	\begin{itemize}
  1446	\item Automorphic representations are functors, not equivalences. DTT
  1447	captures functorial structure natively.
  1448	\item Hecke operators on $L$-functions act as endomorphisms, not
  1449	automorphisms; DTT distinguishes these.
  1450	\item The Langlands functor $\sigma:\mathsf{Aut}(GL_n) \to \mathsf{Galois}$
  1451	is a functor between $\infty$-categories of representations; DTT gives a
  1452	type-theoretic home.
  1453	\end{itemize}
  1454	
  1455	\subsection{Connection with synthetic algebraic geometry}
  1456	
  1457	\emph{Synthetic algebraic geometry} \cite{CherubiniRijke2024} works inside
  1458	HoTT internally to a Zariski (or étale) topos, and develops algebraic
  1459	geometry without external schemes. The relevant facts:
  1460	\begin{itemize}
  1461	\item Schemes become types satisfying a Zariski-locality condition.
  1462	\item Sheaf cohomology is internal cohomology.
  1463	\item Group schemes, including reductive groups for Langlands, become
  1464	types in the internal language.
  1465	\end{itemize}
  1466	
  1467	A natural research line: use synthetic AG \emph{plus} cohesion to define
  1468	analytic moduli stacks, and develop $\zeta$ as an internal object.
  1469	
  1470	\subsection{The role of computer-checked proofs}
  1471	
  1472	A practical question: \emph{should} we even attempt HoTT formalisation of
  1473	analytic NT, given that classical Lean Mathlib is so much more advanced?
  1474	
  1475	Three answers:
  1476	\begin{enumerate}
  1477	\item \emph{Foundational interest:} HoTT and Lean differ at the foundation
  1478	level. Univalence simplifies certain isomorphism / equivalence arguments.
  1479	A HoTT formalisation would be qualitatively different.
  1480	\item \emph{Internal-language gain:} working inside an $(\infty,1)$-topos
  1481	gives access to the topos's internal logic. For instance, condensed
  1482	mathematics has its own internal language (the Solid topos), distinct from
  1483	classical set theory; HoTT might bridge these.
  1484	\item \emph{Educational value:} a HoTT formalisation forces clarity about
  1485	what data $\zeta$ ``really is''. The exercise of distinguishing the three
  1486	candidate definitions and identifying their pairwise equivalences is
  1487	foundationally illuminating.
  1488	\end{enumerate}
  1489	
  1490	%---------------------------------------------------------------
  1491	\section{Conclusion}\label{sec:conclusion}
  1492	
  1493	We have formulated, with technical care, the principal open problem of our
  1494	prior synthesis: HoTT-native analytic number theory. The Riemann zeta
  1495	function does not yet exist as a HoTT-native object; the statement
  1496	$\zeta(s)=0$ is not yet a HoTT-native proposition. Closing this gap
  1497	requires the prerequisite chain of \Cref{sec:prereq}, the candidate
  1498	definitions of \Cref{sec:zeta}, the $(\infty,1)$-topos perspective of
  1499	\Cref{sec:langlands}--\Cref{sec:condensed}, the comparison with
  1500	Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete
  1501	sub-problems of \Cref{sec:roadmap}.
  1502	
  1503	We do not solve the principal open problem. We formulate it precisely, show
  1504	it is not vacuous, and provide enough structure for future workers to take
  1505	concrete steps. The roadmap of \Cref{sec:roadmap} estimates 8--12
  1506	graduate-student-years to deliver a HoTT-native analogue of Loeffler--Stoll
  1507	2025. This is significant, but tractable; the much harder Riemann
  1508	hypothesis itself remains untouched.
  1509	
  1510	The dialogue between HoTT and analytic number theory is just beginning.
  1511	Geometric Langlands has been proven (2024) using $(\infty,1)$-categorical
  1512	machinery that overlaps with HoTT's intended models. Condensed mathematics
  1513	provides a uniform setting for analytic objects. These two streams will,
  1514	we conjecture, converge on a HoTT-native analytic number theory in the
  1515	coming decade. This paper aims to map the territory.
  1516	
  1517	%---------------------------------------------------------------
  1518	\appendix
  1519	
  1520	\section{Appendix: HoTT axioms for analytic NT}\label{app:axioms}
  1521	
  1522	For reference, we collect the HoTT axioms / definitions that any
  1523	HoTT-native analytic NT should respect. We work in MLTT with one
  1524	universe $\mathcal{U}$ and the following axioms.
  1525	
  1526	\subsection*{A.1 Univalence}
  1527	
  1528	\begin{equation}\label{eq:univ}
  1529	\ua : \Pi(A,B:\mathcal{U}).\, (A \simeq B) \simeq (A = B).
  1530	\end{equation}
  1531	
  1532	This is the standard univalence axiom of \cite{HoTTBook}. It implies
  1533	function extensionality and propositional extensionality.
  1534	
  1535	\subsection*{A.2 Higher inductive types}
  1536	
  1537	We assume HITs of the form needed in this paper:
  1538	\begin{itemize}
  1539	\item Cauchy reals $\Rc$ as a HIIT (\Cref{def:Rc}).
  1540	\item Set quotients $A/{\sim}$ for relations $\sim$ on $A$.
  1541	\item Propositional truncation $\|A\|_{-1}$.
  1542	\item $n$-truncations $\|A\|_n$.
  1543	\end{itemize}
  1544	
  1545	\subsection*{A.3 Cohesion (optional)}
  1546	
  1547	For synthetic-analytic statements, cohesive HoTT
  1548	\cite{Shulman2018Cohesive} adds:
  1549	\begin{itemize}
  1550	\item Shape modality $\esh:\mathcal{U} \to \mathcal{U}$ (left adjoint to
  1551	$\flat$).
  1552	\item Flat modality $\flat:\mathcal{U} \to \mathcal{U}$ (right adjoint to
  1553	$\esh$).
  1554	\item Sharp modality $\sharp:\mathcal{U} \to \mathcal{U}$.
  1555	\end{itemize}
  1556	
  1557	These satisfy the cohesive triple-adjunction $\esh \dashv \flat \dashv \sharp$
  1558	and natural-transformation laws between them.
  1559	
  1560	\subsection*{A.4 Choice (optional, classical)}
  1561	
  1562	For some classical analytic-NT results we may need:
  1563	\begin{equation}\label{eq:choice}
  1564	\mathrm{AC} : \Pi(A:\mathcal{U}).\, \Pi(B:A \to \mathcal{U}).\,
  1565	   (\Pi(a:A).\, \|B(a)\|_{-1}) \to \|\Pi(a:A).\, B(a)\|_{-1}.
  1566	\end{equation}
  1567	
  1568	Equivalent to set-theoretic AC for sets. Required for classical existence
  1569	of algebraic closures, classical functional equation proofs.
  1570	
  1571	\subsection*{A.5 Excluded middle (optional, classical)}
  1572	
  1573	\begin{equation}\label{eq:lem}
  1574	\mathrm{LEM} : \Pi(P:\Prop).\, P + \neg P.
  1575	\end{equation}
  1576	
  1577	Required for the statement of $\mathrm{RH} \vee \neg\,\mathrm{RH}$ as
  1578	``there is a fact of the matter''.
  1579	
  1580	\section{Appendix: Companion code overview}\label{app:code}
  1581	
  1582	The companion repository at \texttt{src/langlands-analytic-number-theory/}
  1583	contains:
  1584	
  1585	\begin{itemize}
  1586	\item \texttt{Main.hs} --- driver illustrating partial $\zeta$ sums and
  1587	Dirichlet series operations.
  1588	\item \texttt{Zeta.hs} --- partial zeta computations with explicit
  1589	truncation.
  1590	\item \texttt{Dirichlet.hs} --- Dirichlet series machinery, Dirichlet
  1591	convolution, multiplicative functions.
  1592	\item \texttt{Properties.hs} --- QuickCheck properties for the algebraic
  1593	laws on Dirichlet series.
  1594	\item \texttt{Proofs.hs} --- equational proofs of the Euler product identity
  1595	modulo a finite-truncation axiom.
  1596	\end{itemize}
  1597	
  1598	The Lean component at \texttt{lean/langlands-analytic-number-theory/}
  1599	contains:
  1600	

exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1601,1866p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1601	\begin{itemize}
  1602	\item \texttt{Zeta.lean} --- a Lean 4 / Mathlib sketch indexed against
  1603	Loeffler--Stoll, marking which lemmas would translate cleanly to HoTT.
  1604	\end{itemize}
  1605	
  1606	These are illustrative prototypes, not formal verifications. Their purpose
  1607	is to make the prerequisite chain (\Cref{sec:prereq}) and the candidate
  1608	definitions (\Cref{sec:zeta}) executable, so that future HoTT-native work
  1609	has computational benchmarks.
  1610	
  1611	\section{Appendix: Worked sub-roadmap for sub-problem 4}\label{app:cont}
  1612	
  1613	We sketch a plausible HoTT proof strategy for analytic continuation of
  1614	$\zeta$, addressing \Cref{prob:4} in more detail.
  1615	
  1616	\subsection*{C.1 The Hurwitz integral representation}
  1617	
  1618	Classical analytic continuation of $\zeta$ via the Hurwitz integral
  1619	representation \cite{Hurwitz1882}:
  1620	\[
  1621	\zeta(s) = \frac{1}{\Gamma(s)} \int_0^\infty \frac{x^{s-1}}{e^x - 1}\, dx,
  1622	\qquad \mathrm{Re}(s) > 1.
  1623	\]
  1624	The integrand is integrable for $\mathrm{Re}(s) > 1$ near $0$ and is
  1625	exponentially small at $\infty$. To analytically continue, one deforms the
  1626	contour:
  1627	\[
  1628	\zeta(s) = \frac{\Gamma(1-s)}{2\pi i}\,\oint_C \frac{(-x)^{s-1}}{e^x - 1}\,dx,
  1629	\]
  1630	where $C$ is the Hankel contour: from $+\infty$ along $\R^+$, around $0$
  1631	counterclockwise, back to $+\infty$.
  1632	
  1633	\subsection*{C.2 What HoTT needs}
  1634	
  1635	To carry out the contour-integral proof in HoTT we need:
  1636	\begin{enumerate}
  1637	\item HoTT-native $\Gamma$ function: $\Gamma(s) := \int_0^\infty t^{s-1}
  1638	e^{-t}\, dt$ extended via the functional equation $\Gamma(s+1) = s\Gamma(s)$
  1639	to all $\Cc \setminus \{0,-1,-2,\ldots\}$.
  1640	\item HoTT-native contour integration: a path $\gamma:[0,1] \to \Cc$ and an
  1641	integral $\int_\gamma f(z)\, dz$, satisfying linearity, change-of-variables,
  1642	and Cauchy's theorem.
  1643	\item HoTT-native version of Cauchy's theorem: holomorphic functions integrate
  1644	to zero around closed contours.
  1645	\item HoTT-native deformation lemma: integral over homotopic contours agree.
  1646	\item HoTT-native passage from real integral to contour integral
  1647	(Mellin-Barnes type).
  1648	\end{enumerate}
  1649	
  1650	\subsection*{C.3 Estimated effort}
  1651	
  1652	Each item above is a self-contained HoTT formalisation problem of moderate
  1653	size. Cumulatively, this is the heart of \Cref{prob:4}, and we estimate
  1654	it at $\sim 3000$ lines of Cubical Agda.
  1655	
  1656	\subsection*{C.4 Alternative strategies}
  1657	
  1658	\begin{itemize}
  1659	\item \emph{Riemann's theta-function method}: $\zeta(s)$ via Mellin transform
  1660	of $\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$. Requires the modular
  1661	transformation $\theta(t) = t^{-1/2}\theta(1/t)$.
  1662	\item \emph{Hardy's symmetric form}: $\xi(s) := \frac{s(s-1)}{2}\pi^{-s/2}
  1663	\Gamma(s/2)\zeta(s)$, satisfying $\xi(s) = \xi(1-s)$. Cleaner but uses the
  1664	same infrastructure.
  1665	\item \emph{Cohesive synthetic approach}: Inside differential cohesive HoTT
  1666	\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
  1667	Speculative.
  1668	\end{itemize}
  1669	
  1670	\section{Appendix: A glossary of HoTT-native synonyms}\label{app:glossary}
  1671	
  1672	For readers more familiar with classical analytic NT than with HoTT, we
  1673	provide a short translation glossary:
  1674	
  1675	\medskip
  1676	
  1677	\begin{tabular}{l|l}
  1678	Classical & HoTT-native \\
  1679	\hline
  1680	$\R$ & $\Rc$ (Cauchy reals) \\
  1681	$\C$ & $\Cc$ (univalent algebraic closure of $\Rc$) \\
  1682	$f:\C \to \C$ holomorphic & $f$ admits constructive Newton quotient \\
  1683	``unique up to isomorphism'' & propositionally equal under univalence \\
  1684	``the algebraic closure'' & ``a univalent algebraic closure'' \\
  1685	ZFC's choice & propositional choice axiom (optional) \\
  1686	LEM & $\Pi(P:\Prop).\, P + \neg P$ (optional) \\
  1687	quotient set & set quotient $A/{\sim}$ via HIT \\
  1688	limit of sequences & limit constructor of HIIT $\Rc$ \\
  1689	``open subset'' & ``cohesive open'' or ``(-1)-truncated open'' \\
  1690	``connected'' & propositional truncation of $A$ is contractible \\
  1691	sheaf cohomology & internal cohomology of cohesive HoTT \\
  1692	$\infty$-category & type with Segal condition \\
  1693	$\infty$-topos & univalent universe in cohesive HoTT \\
  1694	``functor'' & morphism in directed type theory \\
  1695	``natural transformation'' & 2-cell in directed type theory \\
  1696	condensed set & sheaf on profinite types in cohesive HoTT (open)\\
  1697	analytic stack & 6-functor formalism in cohesive HoTT (open) \\
  1698	$\zeta$ classically & no HoTT-native definition yet
  1699	\end{tabular}
  1700	
  1701	\medskip
  1702	
  1703	The bottom row is the principal open problem of this paper.
  1704	
  1705	%---------------------------------------------------------------
  1706	\bibliographystyle{plain}
  1707	\begin{thebibliography}{99}
  1708	
  1709	\bibitem{HoTTBook}
  1710	Univalent Foundations Program.
  1711	\textit{Homotopy Type Theory: Univalent Foundations of Mathematics}.
  1712	Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}
  1713	
  1714	\bibitem{Long2026Synthesis}
  1715	M.\ Long and the YonedaAI Collaboration.
  1716	\textit{Synthesis: Six Open Problems at the Interface of HoTT and
  1717	Twenty-First Century Mathematics}.
  1718	YonedaAI Research Collective, 2026.
  1719	
  1720	\bibitem{Voevodsky2014}
  1721	V.\ Voevodsky.
  1722	\textit{Univalent foundations of mathematics}.
  1723	ICM Talk, 2014.
  1724	
  1725	\bibitem{Booij2020}
  1726	A.\ Booij.
  1727	\textit{Analysis in univalent type theory}.
  1728	PhD thesis, University of Birmingham, 2020.
  1729	
  1730	\bibitem{Mines1988}
  1731	R.\ Mines, F.\ Richman, W.\ Ruitenburg.
  1732	\textit{A Course in Constructive Algebra}.
  1733	Springer Universitext, 1988.
  1734	
  1735	\bibitem{Shulman2018Cohesive}
  1736	M.\ Shulman.
  1737	\textit{Brouwer's fixed-point theorem in real-cohesive homotopy type theory}.
  1738	Mathematical Structures in Computer Science, 28:856--941, 2018.
  1739	
  1740	\bibitem{Shulman2019InfTopos}
  1741	M.\ Shulman.
  1742	\textit{All $(\infty,1)$-toposes have strict univalent universes}.
  1743	arXiv:1904.07004, 2019.
  1744	
  1745	\bibitem{Lurie2009HTT}
  1746	J.\ Lurie.
  1747	\textit{Higher Topos Theory}.
  1748	Annals of Mathematics Studies 170, Princeton University Press, 2009.
  1749	
  1750	\bibitem{LurieHA}
  1751	J.\ Lurie.
  1752	\textit{Higher Algebra}.
  1753	Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}
  1754	
  1755	\bibitem{Gaitsgory2024GLC}
  1756	D.\ Gaitsgory et al.
  1757	\textit{Proof of the geometric Langlands conjecture I--V}.
  1758	arXiv:2405.03599 and sequels, 2024.
  1759	\url{https://www.mpim-bonn.mpg.de/gaitsgde/GLC/}
  1760	
  1761	\bibitem{BeilinsonDrinfeld2004}
  1762	A.\ Beilinson, V.\ Drinfeld.
  1763	\textit{Chiral Algebras}.
  1764	American Mathematical Society Colloquium Publications 51, 2004.
  1765	
  1766	\bibitem{LoefflerStoll2025}
  1767	D.\ Loeffler, M.\ Stoll.
  1768	\textit{Formalizing zeta and L-functions in Lean}.
  1769	arXiv:2503.00959. Annals of Formalized Mathematics, vol.\ 1, 2025.
  1770	
  1771	\bibitem{Scholze2019Condensed}
  1772	P.\ Scholze.
  1773	\textit{Lectures on condensed mathematics}.
  1774	Lecture notes, University of Bonn, 2019.
  1775	\url{https://www.math.uni-bonn.de/people/scholze/Condensed.pdf}
  1776	
  1777	\bibitem{ClausenScholze2024Analytic}
  1778	D.\ Clausen, P.\ Scholze.
  1779	\textit{Analytic stacks}.
  1780	Lecture series, MPIM Bonn, 2023--2024.
  1781	
  1782	\bibitem{ClausenScholze2024SixFunctor}
  1783	D.\ Clausen, P.\ Scholze.
  1784	\textit{Six-functor formalisms in analytic geometry}.
  1785	arXiv:2507.08566, 2025.
  1786	
  1787	\bibitem{ClausenScholze2025AnalyticStacks}
  1788	D.\ Clausen, P.\ Scholze.
  1789	\textit{Analytic stacks (continued)}.
  1790	arXiv:2512.14612, 2025.
  1791	
  1792	\bibitem{ClausenScholzeComplex}
  1793	D.\ Clausen, P.\ Scholze.
  1794	\textit{Condensed mathematics and complex geometry}.
  1795	\url{https://people.mpim-bonn.mpg.de/scholze/Complex.pdf}, 2022.
  1796	
  1797	\bibitem{EFK2025AnalyticLanglands}
  1798	P.\ Etingof, E.\ Frenkel, D.\ Kazhdan.
  1799	\textit{An analytic version of the Langlands correspondence over the
  1800	function field}.
  1801	arXiv:2103.01509 and follow-ups, 2021--2025.
  1802	
  1803	\bibitem{CisinskiKKNS2025}
  1804	D.-C.\ Cisinski et al.
  1805	\textit{Type-theoretic foundations of $(\infty,1)$-categories}.
  1806	Manuscript / arXiv preprints, 2025.
  1807	
  1808	\bibitem{Langlands1970}
  1809	R.\ P.\ Langlands.
  1810	\textit{Problems in the theory of automorphic forms}.
  1811	Lecture Notes in Mathematics 170, Springer, 1970.
  1812	
  1813	\bibitem{GelbartLanglands1979}
  1814	S.\ Gelbart.
  1815	\textit{An elementary introduction to the Langlands program}.
  1816	Bull.\ AMS, 10(2):177--219, 1984.
  1817	
  1818	\bibitem{Schreiber2013}
  1819	U.\ Schreiber.
  1820	\textit{Differential cohomology in a cohesive infinity-topos}.
  1821	arXiv:1310.7930, 2013.
  1822	
  1823	\bibitem{Wellen2018}
  1824	F.\ Wellen.
  1825	\textit{Cartan geometry in modal homotopy type theory}.
  1826	PhD thesis, Karlsruhe Institute of Technology, 2018.
  1827	
  1828	\bibitem{ScreiberShulman2014QFT}
  1829	U.\ Schreiber, M.\ Shulman.
  1830	\textit{Quantum gauge field theory in cohesive homotopy type theory}.
  1831	EPTCS 158, 2014.
  1832	
  1833	\bibitem{Euler1737}
  1834	L.\ Euler.
  1835	\textit{Variae observationes circa series infinitas}.
  1836	Commentarii academiae scientiarum Petropolitanae 9, 1737.
  1837	
  1838	\bibitem{RiemannHypothesisOriginal}
  1839	B.\ Riemann.
  1840	\textit{Über die Anzahl der Primzahlen unter einer gegebenen Größe}.
  1841	Monatsberichte der Königlich Preußischen Akademie der Wissenschaften zu
  1842	Berlin, 1859.
  1843	
  1844	\bibitem{KapustinWitten2007}
  1845	A.\ Kapustin, E.\ Witten.
  1846	\textit{Electric-magnetic duality and the geometric Langlands program}.
  1847	Communications in Number Theory and Physics, 1(1):1--236, 2007.
  1848	
  1849	\bibitem{Riehl2021Elements}
  1850	E.\ Riehl, D.\ Verity.
  1851	\textit{Elements of $\infty$-Category Theory}.
  1852	Cambridge Studies in Advanced Mathematics 194, Cambridge University Press, 2022.
  1853	
  1854	\bibitem{CherubiniRijke2024}
  1855	F.\ Cherubini, E.\ Rijke et al.
  1856	\textit{Synthetic algebraic geometry in homotopy type theory}.
  1857	Manuscript, \url{https://github.com/felixwellen/synthetic-zariski}, 2024.
  1858	
  1859	\bibitem{Hurwitz1882}
  1860	A.\ Hurwitz.
  1861	\textit{Einige Eigenschaften der Dirichlet'schen Funktionen $F(s)$}.
  1862	Zeitschrift für Mathematik und Physik, 27:86--101, 1882.
  1863	
  1864	\end{thebibliography}
  1865	
  1866	\end{document}

codex
There are enough symbolic macros here that compilation is the fastest way to distinguish real LaTeX failures from style preferences. I’m checking for an installed TeX engine and, if available, compiling with all generated files directed to `/tmp` so the repo stays untouched.
exec
/usr/local/bin/zsh -lc 'command -v latexmk; command -v pdflatex; command -v lualatex; command -v tectonic' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
/Library/TeX/texbin/latexmk
/Library/TeX/texbin/pdflatex
/Library/TeX/texbin/lualatex

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\(?:Cref|cref|ref|eqref)\\{(["'^}]*)'"\\}/g){"'$h{$1}++} END{print join("'"\\n\", sort keys %h),\"\\n\"}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
conj:GRH
conj:RH
conj:padicZeta
def:Dirichlet
def:HoTTSolid
def:Rc
def:UAC
def:ZetaEuler
def:ZetaHIIT
def:ZetaUP
def:holo
eq:zetaSeries
fig:chain
prob:1
prob:2
prob:3
prob:4
prob:5
prob:6
prob:bridge
prob:sixfunc
prop:DirichletAlgebra
prop:Euler
sec:conclusion
sec:condensed
sec:langlands
sec:loefflerstoll
sec:prereq
sec:rh
sec:roadmap
sec:zeta
thm:Basel
thm:FE
thm:Identity
thm:ZetaEquiv

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\cite(?:\\[["'^]]*'"\\])?\\{(["'^}]*)'"\\}/g){for "'$c (split /,/, $1){$c=~s/''^'"\\s+|\\s+"'$//g; $h{$c}++}} END{print join("'"\\n\", sort keys %h),\"\\n\"}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
BeilinsonDrinfeld2004
Booij2020
CherubiniRijke2024
CisinskiKKNS2025
ClausenScholze2024Analytic
EFK2025AnalyticLanglands
Euler1737
Gaitsgory2024GLC
GelbartLanglands1979
HoTTBook
Hurwitz1882
KapustinWitten2007
Langlands1970
LoefflerStoll2025
Long2026Synthesis
Lurie2009HTT
Mines1988
Riehl2021Elements
Scholze2019Condensed
Schreiber2013
ScreiberShulman2014QFT
Shulman2018Cohesive
Shulman2019InfTopos
Voevodsky2014
Wellen2018

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\label\\{(["'^}]*)'"\\}/g){"'$labels{$1}=1} while(/'"\\\\(?:Cref|cref|ref|eqref)\\{(["'^}]*)'"\\}/g){for "'$r (split /,/, $1){$r=~s/''^'"\\s+|\\s+"'$//g; $refs{$r}=1}} while(/'"\\\\bibitem\\{(["'^}]*)'"\\}/g){"'$bib{$1}=1} while(/'"\\\\cite(?:\\[["'^]]*'"\\])?\\{(["'^}]*)'"\\}/g){for "'$c (split /,/, $1){$c=~s/''^'"\\s+|\\s+"'$//g; $cites{$c}=1}} END{print "Undefined refs:'"\\n\"; for "'$r (sort keys %refs){print "$r'"\\n\" unless "'$labels{$r}} print "Undefined cites:'"\\n\"; for "'$c (sort keys %cites){print "$c'"\\n\" unless "'$bib{$c}} print "Unused labels:'"\\n\"; for "'$l (sort keys %labels){print "$l'"\\n\" unless "'$refs{$l}} print "Unused bibitems:'"\\n\"; for "'$b (sort keys %bib){print "$b'"\\n\" unless "'$cites{$b}} }'"' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
Undefined refs:
Undefined cites:
Unused labels:
app:axioms
app:code
app:cont
app:glossary
conj:GLCHoTT
def:MeromCont
eq:choice
eq:lem
eq:univ
ex:euler
ex:pi
ex:sqrt2
fig:roadmap
prop:UACUnique
rem:LEM
rem:UACplain
rem:ZetaHIITissues
rem:decidability
rem:internal
rem:padicEasier
rem:synth
rem:univalence-glc
rem:zetatwo
sec:discussion
sec:intro
subsec:Basel
subsec:CauchyEx
subsec:GL1
subsec:GLCInternal
subsec:LSquant
subsec:LSsigs
subsec:effective
subsec:obstacles
subsec:sixfunctor
subsec:solidp
subsec:zerofree
thm:RcArchimedean
thm:vonKoch
Unused bibitems:
ClausenScholze2024SixFunctor
ClausenScholze2025AnalyticStacks
ClausenScholzeComplex
LurieHA
RiemannHypothesisOriginal

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\esh|\\\\sharp|\\\\flat|\\\\todo|\\\\includegraphics|\\\\vspace|\\\\hspace|\\\\\\\\\\[|\\\\\\\\\\]|overfull|underfull|hbox|vbox\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: regex parse error:
    (?:\esh|\sharp|\flat|\todo|\includegraphics|\vspace|\hspace|\\\[|\\\]|overfull|underfull|hbox|vbox)
       ^^
error: unrecognized escape sequence

codex
The sandbox is read-only even for `/tmp`, so `latexmk` cannot create its output directory and I can’t run a real compile without write access. I did verify references and citations statically: no undefined `\Cref`/`\cite` targets were found, but several labels/bibitems are currently unused.
exec
/usr/local/bin/zsh -lc 'command -v chktex; command -v lacheck; command -v detex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
/Library/TeX/texbin/chktex
/Library/TeX/texbin/lacheck
/Library/TeX/texbin/detex

exec
/usr/local/bin/zsh -lc "rg -n -F '\\esh' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\sharp' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\flat' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\includegraphics' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\vspace' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\hspace' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\begin{tabular}' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\begin{verbatim}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
374:shape and flat modalities $\esh, \flat$. Holomorphicity becomes a synthetic
377:where $\esh$ is interpreted as the geometric $\C^\infty$-shape.
955:if $\esh(A) \simeq A$ and the map $\flat A \to A$ is an equivalence.
1407:\emph{differential cohesive HoTT}, treating $\C$ as a $\esh$-modal type and
1550:\item Shape modality $\esh:\mathcal{U} \to \mathcal{U}$ (left adjoint to
1553:$\esh$).
1557:These satisfy the cohesive triple-adjunction $\esh \dashv \flat \dashv \sharp$
1554:\item Sharp modality $\sharp:\mathcal{U} \to \mathcal{U}$.
1557:These satisfy the cohesive triple-adjunction $\esh \dashv \flat \dashv \sharp$
374:shape and flat modalities $\esh, \flat$. Holomorphicity becomes a synthetic
955:if $\esh(A) \simeq A$ and the map $\flat A \to A$ is an equivalence.
1551:$\flat$).
1552:\item Flat modality $\flat:\mathcal{U} \to \mathcal{U}$ (right adjoint to
1557:These satisfy the cohesive triple-adjunction $\esh \dashv \flat \dashv \sharp$
1125:\begin{tabular}{l|c|c}
1677:\begin{tabular}{l|l}
1037:\begin{verbatim}
1085:\begin{verbatim}
1098:\begin{verbatim}
1108:\begin{verbatim}
1117:\begin{verbatim}

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\([A-Za-z@]+)\\*?/g){"'$cmd{$1}++} END{print join("'"\\n\", sort keys %cmd),\"\\n\"}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
AddEverypageHook
Aut
C
Cc
Cref
Eq
F
Gamma
HIIT
HoTT
Hom
IsEquiv
Large
Map
N
Path
Pi
Prop
Q
R
Rc
Set
Sigma
Tw
Type
Z
addcontentsline
appendix
arctan
arrow
author
begin
bfseries
bibitem
bibliographystyle
caption
cdot
centering
chi
circ
cite
color
cos
cref
cup
dashv
date
definecolor
delta
documentclass
emph
end
epsilon
esh
fi
flat
frac
gamma
geq
hline
holo
id
ifnum
in
inf
infty
int
iota
item
itshape
label
ldots
left
leq
lim
log
longleftrightarrow
maketitle
mapsto
mathbb
mathcal
mathrm
mathsf
max
medskip
mid
nCat
neg
neq
newcommand
newtheorem
node
notag
oint
op
otimes
overline
paperheight
paragraph
pi
pm
prod
qquad
quad
refl
right
rightleftarrows
section
setminus
sffamily
sharp
sigma
sim
simeq
sin
sqrt
subsection
subseteq
sum
supseteq
tableofcontents
texorpdfstring
text
textbf
textit
texttt
theoremstyle
theta
tilde
times
title
to
ua
url
usepackage
usetikzlibrary
value
varprojlim
vee
wedge
xi
zeta

exec
/usr/local/bin/zsh -lc 'lacheck papers/latex/langlands-analytic-number-theory.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
"papers/latex/langlands-analytic-number-theory.tex", line 107: missing `\@' before `.' in "TT."
"papers/latex/langlands-analytic-number-theory.tex", line 565: possible unwanted space at "{"
"papers/latex/langlands-analytic-number-theory.tex", line 663: missing `\@' before `.' in "TT."
"papers/latex/langlands-analytic-number-theory.tex", line 1256: missing `\@' before `.' in "RH."
"papers/latex/langlands-analytic-number-theory.tex", line 1313: missing `\@' before `.' in "ZFC."

exec
/usr/local/bin/zsh -lc "rg -n \"---|—|–|/| vs\\\\.|e\\.g\\.|i\\.e\\.|\\biff\\b|~\\\\cite|\\\\cite\\{|\\\\Cref\\{|\\\\cref\\{|\\\\begin\\{figure\\}\\[h\\]|\\\\begin\\{tabular\\}|\\\\begin\\{align\\}|\\\\begin\\{align\\*\\}\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
rg: unrecognized flag ---|—|–|/| vs\.|e\.g\.|i\.e\.|\biff\b|~\cite|\cite\{|\Cref\{|\cref\{|\begin\{figure\}\[h\]|\begin\{tabular\}|\begin\{align\}|\begin\{align\*\}

exec
/usr/local/bin/zsh -lc 'chktex -q -n1 -n8 -n13 -n24 -n36 papers/latex/langlands-analytic-number-theory.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 2 in 0ms:
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 139: Non-breaking space (`~') should have been used.
In the synthesis paper concluding our prior series \cite{Long2026Synthesis},  
                                                  ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 161: Non-breaking space (`~') should have been used.
notion of meromorphicity. Constructive Cauchy reals \cite{HoTTBook,Booij2020}  
                                                   ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 165: Non-breaking space (`~') should have been used.
in the sense of univalence \cite{Voevodsky2014}.  
                          ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 169: Non-breaking space (`~') should have been used.
\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 181: Non-breaking space (`~') should have been used.
\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 199: Non-breaking space (`~') should have been used.
$(\infty,1)$-toposes and Lurie's higher topos theory \cite{Lurie2009HTT,  
                                                    ^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 226: Interword spacing (`\ ') should perhaps be used.
A clarifying distinction. \emph{Algebraic number theory} studies  
                         ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 241: Non-breaking space (`~') should have been used.
The Langlands programme \cite{Langlands1970,GelbartLanglands1979} unifies  
                       ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 245: Non-breaking space (`~') should have been used.
Langlands \cite{Gaitsgory2024GLC} is the function-field analogue and was  
         ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 267: Non-breaking space (`~') should have been used.
\begin{definition}[Cauchy reals, after the HoTT Book \cite{HoTTBook}]\label{def:Rc}  
                                                    ^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 273: You should perhaps use `\lim' instead.
\mathsf{lim} &: \Pi(x:\Q^+ \to \Rc).\, \mathsf{IsCauchy}(x) \to \Rc \\  
        ^^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 277: Non-breaking space (`~') should have been used.
$\sim_\epsilon$ \cite[Definition 11.3.2]{HoTTBook}.  
               ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 340: Non-breaking space (`~') should have been used.
algebraic-closure arguments \cite{Mines1988}.  
                           ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 373: Non-breaking space (`~') should have been used.
In \emph{cohesive HoTT} \cite{Shulman2018Cohesive}, the universe carries  
                       ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 403: Non-breaking space (`~') should have been used.
\cite{Booij2020}.  
^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 411: Use either `` or '' as an alternative to `"'.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                   ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 411: Use either `` or '' as an alternative to `"'.
\Q \arrow[r, hook] & \Rc \arrow[r, "\mathsf{UAC}"] & \Cc  
                                                ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 412: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
            ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 412: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\holo"] & \mathsf{Hol}(\Cc, \Cc)  
                  ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 413: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
            ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 413: Use either `` or '' as an alternative to `"'.
  \arrow[r, "\sum\frac{a(n)}{n^s}"]  
                                 ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 414: Use either `` or '' as an alternative to `"'.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                ^
Warning 18 in papers/latex/langlands-analytic-number-theory.tex line 414: Use either `` or '' as an alternative to `"'.
  & \mathsf{Dir}(\Cc) \arrow[r, "\text{cont.}"] & \zeta  
                                             ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 444: You should enclose the previous parenthesis with `{}'.
\item \emph{Hurwitz zeta} method: define $\zeta(s,a) = \sum_{n \geq 0}(n+a)^{-s}$  
                                                                          ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 477: You should enclose the previous parenthesis with `{}'.
that $|a(\epsilon)^2 - 2| < \epsilon$. Then $a$ is a Cauchy modulus and  
                 ^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 478: You should perhaps use `\lim' instead.
$\mathsf{lim}(a, \mathsf{IsCauchy}_a):\Rc$ is $\sqrt{2}$. Equality  
         ^^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 479: You should enclose the previous parenthesis with `{}'.
$(\sqrt{2})^2 = 2$ in $\Rc$ follows from the equality constructor  
          ^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 484: You should perhaps use `\lim' instead.
$e := \mathsf{lim}((\epsilon \mapsto \sum_{k=0}^{N(\epsilon)} 1/k!),  
              ^^^
Warning 35 in papers/latex/langlands-analytic-number-theory.tex line 491: You should perhaps use `\lim' instead.
$\pi := \mathsf{lim}((\epsilon \mapsto \text{Machin formula at depth } N(\epsilon)),  
                ^^^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 537: You should enclose the previous parenthesis with `{}'.
$\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)\cos(\pi s/2)\zeta(s)$.  
                    ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 571: You should enclose the previous parenthesis with `{}'.
\zeta_E(s) := \prod_{p \in \mathbb{P}} (1 - p^{-s})^{-1}  
                                                  ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 586: You should enclose the previous parenthesis with `{}'.
\prod_p (1 - p^{-s})^{-1}  
                   ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 649: You should enclose the previous parenthesis with `{}'.
\zeta(1-s) = 2 (2\pi)^{-s} \Gamma(s) \cos(\pi s / 2) \zeta(s).  
                    ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 700: You should enclose the previous parenthesis with `{}'.
x^2 = \frac{\pi^2}{3} + 4\sum_{n=1}^{\infty} \frac{(-1)^n \cos(nx)}{n^2}.  
                                                      ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 744: Non-breaking space (`~') should have been used.
The Langlands programme \cite{Langlands1970} predicts a correspondence  
                       ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 755: Non-breaking space (`~') should have been used.
\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 765: Non-breaking space (`~') should have been used.
\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 769: Non-breaking space (`~') should have been used.
By Lurie's higher topos theory \cite{Lurie2009HTT}, $(\infty,1)$-categories  
                              ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 771: Non-breaking space (`~') should have been used.
\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 775: Non-breaking space (`~') should have been used.
By Shulman's theorem \cite{Shulman2019InfTopos}, every $(\infty,1)$-topos  
                    ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 798: Non-breaking space (`~') should have been used.
\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 837: Non-breaking space (`~') should have been used.
$p$-adic numbers \cite{HoTTBook}.  
                ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 849: Non-breaking space (`~') should have been used.
algebraic stacks over $\C$. By Shulman \cite{Shulman2019InfTopos},  
                                      ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 881: Non-breaking space (`~') should have been used.
Kapustin and Witten \cite{KapustinWitten2007} interpreted geometric  
                   ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 887: Non-breaking space (`~') should have been used.
synthetic differential cohesive HoTT \cite{Schreiber2013}.  
                                    ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 899: Non-breaking space (`~') should have been used.
Clausen and Scholze \cite{Scholze2019Condensed,ClausenScholze2024Analytic}  
                   ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 984: Non-breaking space (`~') should have been used.
\cite{Riehl2021Elements}.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1023: Non-breaking space (`~') should have been used.
The 2025 paper \cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:  
              ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1028: You should enclose the previous parenthesis with `{}'.
\item The Euler product $\zeta(s) = \prod_p (1-p^{-s})^{-1}$ on  
                                                     ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1031: You should enclose the previous parenthesis with `{}'.
\item The functional equation $\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)  
                                                  ^
Warning 44 in papers/latex/langlands-analytic-number-theory.tex line 1125: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{l|c|c}  
^^^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/langlands-analytic-number-theory.tex line 1127: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 44 in papers/latex/langlands-analytic-number-theory.tex line 1135: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1149: Non-breaking space (`~') should have been used.
\cite{Booij2020} for HoTT-native analysis benchmarks.  
^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1326: You should enclose the previous parenthesis with `{}'.
1 - C/(\log|t|)^{2/3}(\log\log|t|)^{1/3}$.  
              ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1326: You should enclose the previous parenthesis with `{}'.
1 - C/(\log|t|)^{2/3}(\log\log|t|)^{1/3}$.  
                                 ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1400: Non-breaking space (`~') should have been used.
\emph{Differential cohesive HoTT} \cite{Schreiber2013, Wellen2018} extends  
                                 ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1403: Non-breaking space (`~') should have been used.
\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1431: Non-breaking space (`~') should have been used.
\item Use the synthesis from \cite{Long2026Synthesis} to attack  
                            ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1434: Non-breaking space (`~') should have been used.
\cite{EFK2025AnalyticLanglands} in HoTT.  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1440: Non-breaking space (`~') should have been used.
Shulman, Verity, North \cite{Riehl2021Elements}. DTT extends HoTT with a  
                      ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1457: Non-breaking space (`~') should have been used.
\emph{Synthetic algebraic geometry} \cite{CherubiniRijke2024} works inside  
                                   ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1532: Non-breaking space (`~') should have been used.
This is the standard univalence axiom of \cite{HoTTBook}. It implies  
                                        ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1548: Non-breaking space (`~') should have been used.
\cite{Shulman2018Cohesive} adds:  
^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1619: Non-breaking space (`~') should have been used.
representation \cite{Hurwitz1882}:  
              ^
Warning 3 in papers/latex/langlands-analytic-number-theory.tex line 1628: You should enclose the previous parenthesis with `{}'.
\zeta(s) = \frac{\Gamma(1-s)}{2\pi i}\,\oint_C \frac{(-x)^{s-1}}{e^x - 1}\,dx,  
                                                        ^
Warning 2 in papers/latex/langlands-analytic-number-theory.tex line 1666: Non-breaking space (`~') should have been used.
\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.  
^
Warning 44 in papers/latex/langlands-analytic-number-theory.tex line 1677: User Regex: -2:Vertical rules in tables are ugly.
\begin{tabular}{l|l}  
^^^^^^^^^^^^^^^^^^^^
Warning 44 in papers/latex/langlands-analytic-number-theory.tex line 1679: User Regex: -2:Use \toprule, \midrule, or \bottomrule from booktabs.
\hline  
^^^^^^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 1712: Interword spacing (`\ ') should perhaps be used.
Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}  
                                   ^
Warning 12 in papers/latex/langlands-analytic-number-theory.tex line 1753: Interword spacing (`\ ') should perhaps be used.
Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}  
                 ^

exec
/usr/local/bin/zsh -lc "rg -n -F '\\begin{figure}[h]' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\begin{tabular}' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\hline' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\addcontentsline' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\begin{align}' papers/latex/langlands-analytic-number-theory.tex; rg -n -F '\\begin{align*}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
408:\begin{figure}[h]
1219:\begin{figure}[h]
1125:\begin{tabular}{l|c|c}
1677:\begin{tabular}{l|l}
1127:\hline
1135:\hline
1679:\hline
1160:\addcontentsline{toc}{subsection}{Sub-problem 1: HoTT-native $\Cc$}
1170:\addcontentsline{toc}{subsection}{Sub-problem 2: HoTT-native $\holo$}
1179:\addcontentsline{toc}{subsection}{Sub-problem 3: HoTT-native Dirichlet series}
1188:\addcontentsline{toc}{subsection}{Sub-problem 4: HoTT-native analytic continuation}
1198:\addcontentsline{toc}{subsection}{Sub-problem 5: HoTT-native functional equation}
1208:\addcontentsline{toc}{subsection}{Sub-problem 6: HoTT-native RH statement}
271:\begin{align}
526:\begin{align}
856:\begin{align*}

exec
/usr/local/bin/zsh -lc "rg -n \"cite\\{|Cref\\{|cref\\{|---|/|e\\.g\\.|i\\.e\\.|vs\\.\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
92:\texttt{research@yonedaai.com} $\cdot$ \url{https://yonedaai.com}}
123:Loeffler--Stoll Lean 4 / Mathlib formalization of the Riemann zeta function
139:In the synthesis paper concluding our prior series \cite{Long2026Synthesis},
161:notion of meromorphicity. Constructive Cauchy reals \cite{HoTTBook,Booij2020}
165:in the sense of univalence \cite{Voevodsky2014}.
169:\cite{Shulman2018Cohesive}: holomorphicity becomes a modal predicate.
176:$\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2$.
181:\cite{LoefflerStoll2025} have just (March 2025) formalized in Lean 4 /
194:$\zeta$. (\Cref{sec:prereq})
197:equivalence. (\Cref{sec:zeta})
199:$(\infty,1)$-toposes and Lurie's higher topos theory \cite{Lurie2009HTT,
200:Gaitsgory2024GLC}. (\Cref{sec:langlands})
202:where they overlap and where the bridge is missing. (\Cref{sec:condensed})
204:benchmark and as a \emph{translation target}. (\Cref{sec:loefflerstoll})
206:HoTT-native proof that $\zeta(2) = \pi^2/6$. (\Cref{sec:roadmap})
208:its modal-logical structure. (\Cref{sec:rh})
224:\subsection{Algebraic vs.\ analytic number theory}
227:$\mathcal{O}_K$, the ring of integers of a number field $K/\Q$, its ideals,
237:holomorphic / meromorphic functions of complex variables; morphisms are
241:The Langlands programme \cite{Langlands1970,GelbartLanglands1979} unifies
245:Langlands \cite{Gaitsgory2024GLC} is the function-field analogue and was
251:\Cref{sec:prereq} traces the prerequisite chain.
252:\Cref{sec:zeta} defines $\zeta$ as a candidate HoTT object.
253:\Cref{sec:langlands} treats geometric Langlands in $(\infty,1)$-topoi.
254:\Cref{sec:condensed} compares condensed mathematics and HoTT.
255:\Cref{sec:loefflerstoll} compares with Loeffler--Stoll Lean.
256:\Cref{sec:roadmap} gives the six-sub-problem roadmap.
257:\Cref{sec:rh} discusses RH as a HoTT statement.
258:\Cref{sec:conclusion} concludes.
260:%---------------------------------------------------------------
267:\begin{definition}[Cauchy reals, after the HoTT Book \cite{HoTTBook}]\label{def:Rc}
287:\begin{theorem}[\cite{HoTTBook}, Theorem 11.3.32]\label{thm:RcArchimedean}
315:In essence, \Cref{def:UAC} defines the algebraic closure not as one
337:is contractible up to the action of $\mathsf{Gal}(\overline{\Rc}/\Rc)$. The
338:propositional truncation in \Cref{def:UAC} ensures the existential is a
340:algebraic-closure arguments \cite{Mines1988}.
344:$\Cc := \Rc[X]/(X^2 + 1)$. Concretely realisable via Schwartz / set-quotient.
373:In \emph{cohesive HoTT} \cite{Shulman2018Cohesive}, the universe carries
395:$(a*b)(n) := \sum_{d \mid n} a(d) b(n/d)$.
403:\cite{Booij2020}.
423:The chain in \Cref{fig:chain} terminates at $\zeta$, but the rightmost arrow
436:In classical complex analysis, the identity theorem (\Cref{thm:Identity})
456:$s = -1$ to obtain $\zeta(-1) = -1/12$ requires either (i) symbolic
476:Newton iterate of $x_{n+1} := (x_n + 2/x_n)/2$, where $n$ is large enough
484:$e := \mathsf{lim}((\epsilon \mapsto \sum_{k=0}^{N(\epsilon)} 1/k!),
486:$\sum_{k>N} 1/k! < \epsilon$. By Stirling, $N(\epsilon) = O(\log(1/\epsilon)/
487:\log\log(1/\epsilon))$.
493:$\pi/4 = 4\arctan(1/5) - \arctan(1/239)$ converges geometrically with
494:ratio $1/25$ and $1/239^2$, so $N(\epsilon) = O(\log(1/\epsilon))$.
500:%---------------------------------------------------------------
529:   \text{(equality with the series of \cref{eq:zetaSeries})} \\
537:$\zeta(1-s) = 2(2\pi)^{-s}\Gamma(s)\cos(\pi s/2)\zeta(s)$.
549:lemma — which is exactly the analytic-continuation gap of \Cref{prob:4}.
557:construction. The remaining two approaches (\Cref{def:ZetaEuler} and
558:\Cref{def:ZetaUP}) are more conservative.
563:Recall the Euler product (\cite{Euler1737}):
592:is a HoTT-statement requiring \Cref{prop:DirichletAlgebra}.
621:\Cref{thm:Identity}) meromorphic continuation of $s \mapsto \sum n^{-s}$ from
629:definitions \Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}
634:\Cref{def:ZetaEuler} agrees with the partial-sum definition on $H_1$ by
635:\Cref{prop:Euler}. \Cref{def:ZetaUP} agrees with the partial-sum definition
636:on $H_1$ by definition. By \Cref{thm:Identity}, any two meromorphic
637:continuations of the same function agree everywhere. \Cref{def:ZetaHIIT}
649:\zeta(1-s) = 2 (2\pi)^{-s} \Gamma(s) \cos(\pi s / 2) \zeta(s).
655:$\theta(t) = t^{-1/2}\theta(1/t)$ and the Mellin transform. Translating to
664:classical Lean 4 / Mathlib (Loeffler--Stoll, 2025).
679:\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2.
683:We will analyse this statement modal-logically in \Cref{sec:rh}.
685:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
691:$\zeta(2) = \pi^2/6$.
702:Setting $x = \pi$ yields $\pi^2 = \pi^2/3 + 4\zeta(2)$, hence
703:$\zeta(2) = \pi^2/6$. HoTT-native version requires:
717:$-\pi^2/6 = -\sum 1/n^2$, so $\zeta(2) = \pi^2/6$. HoTT-native version
727:\Cref{prob:1}--\Cref{prob:3}, plus some elementary measure / convergence
728:theory. \Cref{prob:4} is not needed for this specific theorem because $s=2$
733:\Cref{thm:Basel} is a \emph{lower-bound} HoTT goal: it does not require
739:%---------------------------------------------------------------
744:The Langlands programme \cite{Langlands1970} predicts a correspondence
748:\{ \text{$n$-dim Galois representations of } \mathrm{Gal}(\overline{F}/F) \}
755:\cite{BeilinsonDrinfeld2004} and Frenkel--Gaitsgory: the conjecture is
765:\cite{Gaitsgory2024GLC}, awarded the 2025 Breakthrough Prize.
767:\subsection{$(\infty,1)$-categories vs.\ HoTT}
769:By Lurie's higher topos theory \cite{Lurie2009HTT}, $(\infty,1)$-categories
771:\cite{CisinskiKKNS2025} have begun a programme of \emph{type-theoretic
775:By Shulman's theorem \cite{Shulman2019InfTopos}, every $(\infty,1)$-topos
785:2-topos / very-large-universe setup (in the spirit of Riehl--Verity directed
790:\subsection{Geometric vs.\ analytic Langlands}
798:\cite{EFK2025AnalyticLanglands}) attempts a Hilbert-space variant: the
819:characters $\chi: \mathbb{A}_\Q^\times / \Q^\times \to \C^\times$. By
821:(\overline{\Q}/\Q)$, i.e., characters of the idele class group. The
837:$p$-adic numbers \cite{HoTTBook}.
849:algebraic stacks over $\C$. By Shulman \cite{Shulman2019InfTopos},
881:Kapustin and Witten \cite{KapustinWitten2007} interpreted geometric
887:synthetic differential cohesive HoTT \cite{Schreiber2013}.
894:%---------------------------------------------------------------
897:\subsection{Pyknotic / condensed sets}
899:Clausen and Scholze \cite{Scholze2019Condensed,ClausenScholze2024Analytic}
933:\item Holomorphic / meromorphic functions on $\C$ correspond to morphisms
938:\Cref{prob:bridge} is open; preliminary work by Mahmoudvand--Riehl and others
950:type (e.g., a limit of finite types in $\mathcal{U}$) and ``continuous''
959:\Cref{def:HoTTSolid} is speculative; it has not been verified to match the
977:\item Coherent base change, projection formula, and proper / open
983:setting: $(\infty,1)$-topoi indexed over a directed type / $(\infty,2)$-base
984:\cite{Riehl2021Elements}.
987:A successful resolution of \Cref{prob:sixfunc} would, indirectly, give a
1000:$\Z_p = \varprojlim_n \Z/p^n$. For $\C_p$, completing the algebraic closure
1012:\Cref{conj:padicZeta} is a research suggestion: \emph{start with the $p$-adic
1018:%---------------------------------------------------------------
1023:The 2025 paper \cite{LoefflerStoll2025} formalizes in Lean 4 / Mathlib:
1030:\item Analytic continuation via Mellin / theta-function method.
1032:\cos(\pi s/2)\zeta(s)$.
1033:\item Basel: $\zeta(2) = \pi^2/6$.
1039:  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
1045:\subsection{What Lean / Mathlib provides that HoTT lacks}
1060:(\Cref{def:ZetaHIIT}, \Cref{def:ZetaEuler}, \Cref{def:ZetaUP}) become
1076:properties as Mathlib's $\C$. We sketch this in \Cref{sec:roadmap}.
1101:                      * cos (π * s / 2) * riemannZeta s
1119:  ∀ s : ℂ, riemannZeta s = 0 → ¬ trivialZero s → s.re = 1 / 2
1121:HoTT analogue: \Cref{conj:RH}.
1149:\cite{Booij2020} for HoTT-native analysis benchmarks.
1152:%---------------------------------------------------------------
1156:a HoTT-native proof of $\zeta(2) = \pi^2/6$ and a formal HoTT statement of
1163:of $\Rc$, with the universal property of \Cref{def:UAC}, and verify that
1172:Define \Cref{def:holo} formally; prove the Cauchy-Riemann equations, the
1173:Cauchy integral formula, and the identity theorem (\Cref{thm:Identity}).
1181:Formalize \Cref{def:Dirichlet}, prove \Cref{prop:DirichletAlgebra}, and
1193:\Cref{def:ZetaUP}.
1200:Prove the functional equation \Cref{thm:FE} in HoTT, using either
1201:(a) the Mellin-transform / theta-function method, or (b) Riemann's contour
1205:\textbf{Status:} requires \Cref{prob:1}--\Cref{prob:4} first.
1212:$1/2$. Verify this is the same statement as the classical RH, modulo the
1215:\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
1222:\Cref{prob:1} \arrow[r] \arrow[dr] & \Cref{prob:2} \arrow[d] & \\
1223:& \Cref{prob:3} \arrow[r] & \Cref{prob:4} \arrow[d] \\
1224:& & \Cref{prob:5} \arrow[d] \\
1225:& & \Cref{prob:6}
1234:\item \Cref{prob:1}: $\sim$1000 lines, 1--2 graduate-student-years.
1235:\item \Cref{prob:2}: $\sim$5000 lines, 2--3 g-s-y.
1236:\item \Cref{prob:3}: $\sim$1500 lines, 1 g-s-y.
1237:\item \Cref{prob:4}: $\sim$3000 lines, 2--3 g-s-y; key conceptual work.
1238:\item \Cref{prob:5}: $\sim$5000 lines, 2 g-s-y.
1239:\item \Cref{prob:6}: $\sim$200 lines, weeks. The hard part is the
1246:%---------------------------------------------------------------
1251:\Cref{conj:RH} states $\Pi(s:\Cc).\, P(s) \to Q(s)$, where $P$ and $Q$ are
1280:$\mathrm{Re}(s) = 1/2$. The Langlands programme conjecturally extends this
1286:\neg\,\mathsf{trivialZero}_\pi(s) \to \mathrm{Re}(s) = 1/2.
1291:suitable $(\infty,1)$-topos, \Cref{conj:GRH} is a $\Pi\Pi\Pi$-statement —
1297:Conditional on \Cref{conj:RH}, the prime-counting function $\pi(x)$
1307:\Cref{prob:1}--\Cref{prob:6}.
1323:\item \textbf{Hadamard / de la Vall\'ee-Poussin (1896):} $\zeta(s) \neq 0$
1326:1 - C/(\log|t|)^{2/3}(\log\log|t|)^{1/3}$.
1334:\Cref{prob:1}--\Cref{prob:5}. In particular, the $\mathrm{Re}(s) = 1$
1337:target after \Cref{thm:Basel}.
1339:\subsection{Effective vs.\ ineffective HoTT statements}\label{subsec:effective}
1354:contour integration. HoTT-native version would require \Cref{prob:4}.
1359:functional equation; their existence requires \Cref{prob:5}.
1365:%---------------------------------------------------------------
1398:\subsection{The role of cohesive / differential HoTT}
1400:\emph{Differential cohesive HoTT} \cite{Schreiber2013, Wellen2018} extends
1401:HoTT with shape, flat, and sharp modalities. In this setting, smooth /
1402:holomorphic / meromorphic become synthetic. Examples like
1403:\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
1416:\item We do not prove the conjectures of \Cref{thm:ZetaEquiv} or
1417:\Cref{thm:FE}; we sketch proofs that depend on currently-unavailable
1419:\item Our proposed bridge (\Cref{prob:bridge}) between condensed mathematics
1426:\item Implement \Cref{prob:1}--\Cref{prob:3} in Cubical Agda.
1428:(\Cref{prob:4}).
1431:\item Use the synthesis from \cite{Long2026Synthesis} to attack
1432:\Cref{conj:GRH} via geometric Langlands in $(\infty,1)$-topoi.
1434:\cite{EFK2025AnalyticLanglands} in HoTT.
1440:Shulman, Verity, North \cite{Riehl2021Elements}. DTT extends HoTT with a
1457:\emph{Synthetic algebraic geometry} \cite{CherubiniRijke2024} works inside
1478:level. Univalence simplifies certain isomorphism / equivalence arguments.
1490:%---------------------------------------------------------------
1497:requires the prerequisite chain of \Cref{sec:prereq}, the candidate
1498:definitions of \Cref{sec:zeta}, the $(\infty,1)$-topos perspective of
1499:\Cref{sec:langlands}--\Cref{sec:condensed}, the comparison with
1500:Loeffler--Stoll Lean of \Cref{sec:loefflerstoll}, and the six concrete
1501:sub-problems of \Cref{sec:roadmap}.
1505:concrete steps. The roadmap of \Cref{sec:roadmap} estimates 8--12
1517:%---------------------------------------------------------------
1522:For reference, we collect the HoTT axioms / definitions that any
1532:This is the standard univalence axiom of \cite{HoTTBook}. It implies
1539:\item Cauchy reals $\Rc$ as a HIIT (\Cref{def:Rc}).
1540:\item Set quotients $A/{\sim}$ for relations $\sim$ on $A$.
1548:\cite{Shulman2018Cohesive} adds:
1582:The companion repository at \texttt{src/langlands-analytic-number-theory/}
1586:\item \texttt{Main.hs} --- driver illustrating partial $\zeta$ sums and
1588:\item \texttt{Zeta.hs} --- partial zeta computations with explicit
1590:\item \texttt{Dirichlet.hs} --- Dirichlet series machinery, Dirichlet
1592:\item \texttt{Properties.hs} --- QuickCheck properties for the algebraic
1594:\item \texttt{Proofs.hs} --- equational proofs of the Euler product identity
1598:The Lean component at \texttt{lean/langlands-analytic-number-theory/}
1602:\item \texttt{Zeta.lean} --- a Lean 4 / Mathlib sketch indexed against
1607:is to make the prerequisite chain (\Cref{sec:prereq}) and the candidate
1608:definitions (\Cref{sec:zeta}) executable, so that future HoTT-native work
1614:$\zeta$, addressing \Cref{prob:4} in more detail.
1619:representation \cite{Hurwitz1882}:
1653:size. Cumulatively, this is the heart of \Cref{prob:4}, and we estimate
1661:transformation $\theta(t) = t^{-1/2}\theta(1/t)$.
1662:\item \emph{Hardy's symmetric form}: $\xi(s) := \frac{s(s-1)}{2}\pi^{-s/2}
1663:\Gamma(s/2)\zeta(s)$, satisfying $\xi(s) = \xi(1-s)$. Cleaner but uses the
1666:\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
1687:quotient set & set quotient $A/{\sim}$ via HIT \\
1705:%---------------------------------------------------------------
1712:Institute for Advanced Study, 2013. \url{https://homotopytypetheory.org/book}
1753:Manuscript, 2017. \url{https://www.math.ias.edu/~lurie/papers/HA.pdf}
1759:\url{https://www.mpim-bonn.mpg.de/gaitsgde/GLC/}
1775:\url{https://www.math.uni-bonn.de/people/scholze/Condensed.pdf}
1795:\url{https://people.mpim-bonn.mpg.de/scholze/Complex.pdf}, 2022.
1806:Manuscript / arXiv preprints, 2025.
1857:Manuscript, \url{https://github.com/felixwellen/synthetic-zariski}, 2024.

exec
/usr/local/bin/zsh -lc 'pdflatex -interaction=nonstopmode -halt-on-error -output-directory=/tmp papers/latex/langlands-analytic-number-theory.tex' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 exited 1 in 0ms:
This is pdfTeX, Version 3.141592653-2.6-1.40.29 (TeX Live 2026) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
! I can't write on file `langlands-analytic-number-theory.log'.
(Press Enter to retry, or Control-D to exit; default file extension is `.log')
Please type another transcript file name
! Emergency stop
!  ==> Fatal error occurred, no output PDF file produced!

exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>120 {printf "%d:%d:%s'"\\n\", NR, length("'$0), $0}'"' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1120,1142p' && nl -ba papers/latex/langlands-analytic-number-theory.tex | sed -n '1672,1701p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
  1120	\end{verbatim}
  1121	HoTT analogue: \Cref{conj:RH}.
  1122	
  1123	\subsection{Quantitative comparison}\label{subsec:LSquant}
  1124	
  1125	\begin{tabular}{l|c|c}
  1126	Theorem & Lean lines (Loeffler--Stoll) & Est.\ HoTT complexity \\
  1127	\hline
  1128	$\zeta$ definition & 200 & $\sim 2$--$3\times$ \\
  1129	Analytic continuation & 3300 & $\sim 2$--$3\times$ \\
  1130	Functional equation & 800 & $\sim 2$--$3\times$ \\
  1131	Euler product & 200 & $\sim 2\times$ \\
  1132	$\zeta$ non-vanishing on $\mathrm{Re}(s) \geq 1$ & 600 & $\sim 2\times$ \\
  1133	Dirichlet $L$-functions & 1500 & $\sim 2\times$ \\
  1134	Dirichlet's theorem & 800 & $\sim 2\times$ \\
  1135	\hline
  1136	Total & $\sim$7400 lines & $\sim 2$--$3\times$ overhead
  1137	\end{tabular}
  1138	
  1139	\medskip
  1140	
  1141	\begin{remark}[Caveat about line-count estimates]
  1142	The right-hand column is highly speculative; we present it as a
  1672	For readers more familiar with classical analytic NT than with HoTT, we
  1673	provide a short translation glossary:
  1674	
  1675	\medskip
  1676	
  1677	\begin{tabular}{l|l}
  1678	Classical & HoTT-native \\
  1679	\hline
  1680	$\R$ & $\Rc$ (Cauchy reals) \\
  1681	$\C$ & $\Cc$ (univalent algebraic closure of $\Rc$) \\
  1682	$f:\C \to \C$ holomorphic & $f$ admits constructive Newton quotient \\
  1683	``unique up to isomorphism'' & propositionally equal under univalence \\
  1684	``the algebraic closure'' & ``a univalent algebraic closure'' \\
  1685	ZFC's choice & propositional choice axiom (optional) \\
  1686	LEM & $\Pi(P:\Prop).\, P + \neg P$ (optional) \\
  1687	quotient set & set quotient $A/{\sim}$ via HIT \\
  1688	limit of sequences & limit constructor of HIIT $\Rc$ \\
  1689	``open subset'' & ``cohesive open'' or ``(-1)-truncated open'' \\
  1690	``connected'' & propositional truncation of $A$ is contractible \\
  1691	sheaf cohomology & internal cohomology of cohesive HoTT \\
  1692	$\infty$-category & type with Segal condition \\
  1693	$\infty$-topos & univalent universe in cohesive HoTT \\
  1694	``functor'' & morphism in directed type theory \\
  1695	``natural transformation'' & 2-cell in directed type theory \\
  1696	condensed set & sheaf on profinite types in cohesive HoTT (open)\\
  1697	analytic stack & 6-functor formalism in cohesive HoTT (open) \\
  1698	$\zeta$ classically & no HoTT-native definition yet
  1699	\end{tabular}
  1700	
  1701	\medskip

exec
/usr/local/bin/zsh -lc "rg -n \"\\\\begin\\{thebibliography\\}|\\\\bibitem\\{|Screiber|Schreiber|ClausenScholze|LurieHA|RiemannHypothesisOriginal\" papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
887:synthetic differential cohesive HoTT \cite{Schreiber2013}.
899:Clausen and Scholze \cite{Scholze2019Condensed,ClausenScholze2024Analytic}
1400:\emph{Differential cohesive HoTT} \cite{Schreiber2013, Wellen2018} extends
1403:\cite{ScreiberShulman2014QFT} show that synthetic differential geometry is
1666:\cite{Schreiber2013}, define $\zeta$ via the synthetic functional integral.
1750:\bibitem{LurieHA}
1777:\bibitem{ClausenScholze2024Analytic}
1782:\bibitem{ClausenScholze2024SixFunctor}
1787:\bibitem{ClausenScholze2025AnalyticStacks}
1792:\bibitem{ClausenScholzeComplex}
1818:\bibitem{Schreiber2013}
1819:U.\ Schreiber.
1828:\bibitem{ScreiberShulman2014QFT}
1829:U.\ Schreiber, M.\ Shulman.
1838:\bibitem{RiemannHypothesisOriginal}

exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>95 {printf "%d:%d:%s'"\\n\", NR, length("'$0), $0}'"' papers/latex/langlands-analytic-number-theory.tex | head -100" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
685:102:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
860:98:\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}) &:\Type \quad \text{(category of quasi-coherent sheaves)}.

exec
/usr/local/bin/zsh -lc "perl -ne 'while(/\\\\([A-Za-z]+)\\*?/g){"'$c=$1; next if $c=~/''^(documentclass|usepackage|usetikzlibrary|newtheorem|theoremstyle|definecolor|AddEverypageHook|ifnum|value|begin|end|title|author|date|maketitle|tableofcontents|section|subsection|paragraph|appendix|bibliographystyle|bibitem|label|caption|centering|item|addcontentsline|url|href|texorpdfstring|Cref|cref|ref|eqref|cite|text|textbf|textit|texttt|emph|itshape|Large|sffamily|bfseries|color|node|arrow|mathbb|mathcal|mathsf|mathrm|frac|sum|prod|int|oint|lim|inf|max|log|sin|cos|arctan|sqrt|Gamma|zeta|theta|pi|epsilon|delta|sigma|iota|chi|xi|Q|R|C|Z|N|F|Rc|Cc|HoTT|Type|Prop|Set|id|refl|ua|Path|HIIT|op|Aut|Hom|Map|Eq|IsEquiv|nCat|Tw|holo|Pi|Sigma|esh|flat|sharp|left|right|overline|tilde|infty|in|to|mapsto|neq|neg|geq|leq|simeq|sim|subseteq|supseteq|setminus|mid|circ|cup|otimes|dashv|rightleftarrows|longleftrightarrow|varprojlim|ldots|pm|vee|wedge|qquad|quad|cdot|hline|medskip|notag|paperheight)$/; $cmd{$c}++} END{print join("'"\\n\", sort keys %cmd),\"\\n\"}' papers/latex/langlands-analytic-number-theory.tex" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
fi
gamma
newcommand
times

exec
/usr/local/bin/zsh -lc 'kpsewhich everypage.sty; kpsewhich tikz-cd.sty; kpsewhich cleveref.sty; kpsewhich booktabs.sty; kpsewhich fontenc.sty' in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 273ms:
/usr/local/texlive/2026/texmf-dist/tex/latex/tikz-cd/tikz-cd.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/cleveref/cleveref.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/booktabs/booktabs.sty
/usr/local/texlive/2026/texmf-dist/tex/latex/base/fontenc.sty

exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>80 {printf "%d:%d:%s'"\\n\", NR, length("'$0), $0}'"' papers/latex/langlands-analytic-number-theory.tex | sed -n '1,120p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
166:90:\item A HoTT-native notion of \emph{holomorphic function} $\holo:(\Cc \to \Cc) \to \Type$.
176:88:$\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2$.
183:81:functional equation, the Basel problem, non-vanishing on $\mathrm{Re}(s) \geq 1$,
267:83:\begin{definition}[Cauchy reals, after the HoTT Book \cite{HoTTBook}]\label{def:Rc}
274:82:\mathsf{eq} &: \Pi(u,v:\Rc).\, (\Pi(\epsilon:\Q^+).\, u \sim_\epsilon v) \to u = v
303:81:A type $\overline{\Rc}$ together with an embedding $\iota:\Rc \to \overline{\Rc}$
307:86:  \sum_{F:\mathsf{Field}}\, \sum_{\iota:\Rc \to F} \mathsf{IsAlgClosure}(\Rc,F,\iota),
389:82:$\sigma_a := \inf\{\sigma:\Rc \mid \sum_n |a(n)| n^{-\sigma} \text{ converges}\}$.
424:82:— analytic continuation from a Dirichlet series convergent on $\mathrm{Re}(s)>1$
429:88:\subsection{Detailed account of analytic-continuation obstacles}\label{subsec:obstacles}
444:81:\item \emph{Hurwitz zeta} method: define $\zeta(s,a) = \sum_{n \geq 0}(n+a)^{-s}$
446:81:\item \emph{Theta-function} method: $\theta(t) := \sum_{n \in \Z} e^{-\pi n^2 t}$
491:84:$\pi := \mathsf{lim}((\epsilon \mapsto \text{Machin formula at depth } N(\epsilon)),
565:83:\zeta(s) = \prod_{p \text{ prime}} \frac{1}{1 - p^{-s}}, \qquad \mathrm{Re}(s) > 1.
595:83:\subsection{Approach 3: $\zeta$ via universal property of meromorphic continuation}
660:85:\item HoTT-native Mellin transform $\mathcal{M}:\holo(\Rc^+,\Rc) \to \holo(\Cc,\Cc)$.
679:86:\Pi(s:\Cc).\, \zeta(s) = 0 \to \neg\,\mathsf{trivialZero}(s) \to \mathrm{Re}(s) = 1/2.
685:102:\subsection{Worked example: \texorpdfstring{$\zeta(2) = \pi^2/6$}{zeta(2)=pi^2/6}}\label{subsec:Basel}
714:81:\frac{\sin(\pi z)}{\pi z} = \prod_{n=1}^{\infty}\left(1 - \frac{z^2}{n^2}\right).
758:94:\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \,\simeq\, \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X))
812:87:\subsection{Detailed example: $GL(1)$ Langlands and Hecke characters}\label{subsec:GL1}
820:81:class-field theory, these correspond to characters of $\mathrm{Gal}^{\mathrm{ab}}
845:88:\subsection{Geometric Langlands as an internal HoTT statement}\label{subsec:GLCInternal}
858:93:\mathsf{LocSys}_{G^\vee}(X) &:\Type \quad \text{(moduli stack of $G^\vee$-local systems)}, \\
859:86:\mathsf{D}\text{-mod}(\mathsf{Bun}_G) &:\Type \quad \text{(category of D-modules)}, \\
860:98:\mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}) &:\Type \quad \text{(category of quasi-coherent sheaves)}.
864:91:\mathsf{D}\text{-mod}(\mathsf{Bun}_G(X)) \simeq \mathsf{QCoh}(\mathsf{LocSys}_{G^\vee}(X)).
991:82:\subsection{Solid modules over $\Z$ and $p$-adic interaction}\label{subsec:solidp}
1019:85:\section{Comparison with Loeffler--Stoll Lean Formalization}\label{sec:loefflerstoll}
1078:84:\subsection{Code-level comparison: signature against signature}\label{subsec:LSsigs}
1153:92:\section{Six Sub-Problems for HoTT-Native \texorpdfstring{$\zeta$}{Zeta}}\label{sec:roadmap}
1188:83:\addcontentsline{toc}{subsection}{Sub-problem 4: HoTT-native analytic continuation}
1198:81:\addcontentsline{toc}{subsection}{Sub-problem 5: HoTT-native functional equation}
1215:82:\textbf{Status:} doable now (\Cref{conj:RH}), modulo \Cref{prob:1}--\Cref{prob:4}.
1283:85:\begin{conjecture}[GRH for automorphic $L$-functions, HoTT statement]\label{conj:GRH}
1314:82:extensions: $\mathrm{HoTT} + \mathrm{RH}$ and $\mathrm{HoTT} + \neg\,\mathrm{RH}$.

exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>80 {printf "%d:%d:%s'"\\n\", NR, length("'$0), $0}'"' papers/latex/langlands-analytic-number-theory.tex | sed -n '121,240p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
exec
/usr/local/bin/zsh -lc "awk 'length("'$0)>80 {printf "%d:%d:%s'"\\n\", NR, length("'$0), $0}'"' papers/latex/langlands-analytic-number-theory.tex | sed -n '241,360p'" in /Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics
 succeeded in 0ms:
codex
Reviewed [langlands-analytic-number-theory.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex). I could not run a full compile because the sandbox is read-only and `pdflatex` could not write its `.log`/aux files, but static reference checks found no undefined labels or citations.

Issues found:

1. Lines 374, 377, 955, 1407, 1550, 1553, 1557: `\esh` is used but never defined, which will cause `Undefined control sequence`.
   Fix: add a macro near the other custom macros, e.g. line 83:
   ```tex
   \newcommand{\esh}{\mathsf{Shape}}
   ```

2. Lines 12-23: `hyperref` is loaded before `graphicx`, `geometry`, `everypage`, and `xcolor`. `hyperref` should be loaded late, with `cleveref` after it, to avoid link/bookmark/layout patching issues.
   Fix: move `\usepackage{hyperref}` and `\usepackage{cleveref}` after the other package imports.

3. Lines 1160, 1170, 1179, 1188, 1198, 1208: `\addcontentsline` entries contain raw math macros such as `$\Cc$` and `$\holo$`. With `hyperref`, these can produce PDF string/bookmark warnings.
   Fix: use `\texorpdfstring`, e.g.
   ```tex
   \addcontentsline{toc}{subsection}{Sub-problem 1: HoTT-native \texorpdfstring{$\Cc$}{Cc}}
   ```

4. Lines 1222-1225: `\Cref{...}` is used directly inside `tikzcd` cells, which are math-mode by default. This can render reference text incorrectly.
   Fix: wrap each reference in text mode:
   ```tex
   \text{\Cref{prob:1}} \arrow[r] ...
   ```

5. Lines 408 and 1219: figures use `[h]`, which commonly triggers float placement warnings and poor spacing.
   Fix: use `[htbp]` or `[!htbp]`.

6. Lines 1125-1137 and 1677-1699: tables use vertical rules and `\hline`, inconsistent with the otherwise clean article style.
   Fix: add `\usepackage{booktabs}` and use `\toprule`, `\midrule`, `\bottomrule`; optionally wrap the tabulars in `center`.

7. Unused bibliography entries: lines 1750, 1782, 1787, 1792, 1838 define `LurieHA`, `ClausenScholze2024SixFunctor`, `ClausenScholze2025AnalyticStacks`, `ClausenScholzeComplex`, and `RiemannHypothesisOriginal`, but they are never cited.
   Fix: cite them where relevant or remove the `\bibitem`s.

8. Citation spacing is inconsistent: many prose citations use ` \cite{...}` instead of `~\cite{...}`. ChkTeX flags this at lines including 139, 161, 165, 181, 199, 241, 245, 373, 744, 769, 775, 899, 1023, 1400, 1431, 1532, 1619.
   Fix: use nonbreaking spaces before citations in running prose, e.g. `series~\cite{Long2026Synthesis}`.

VERDICT: NEEDS_FIX
2026-05-04T23:37:42.589151Z ERROR codex_core::session: failed to record rollout items: thread 019df557-b921-7c02-9405-9ef0147e46c2 not found
tokens used
134,645
Reviewed [langlands-analytic-number-theory.tex](/Users/mlong/Documents/Development/magneton_work/hott-foundations-mathematics/papers/latex/langlands-analytic-number-theory.tex). I could not run a full compile because the sandbox is read-only and `pdflatex` could not write its `.log`/aux files, but static reference checks found no undefined labels or citations.

Issues found:

1. Lines 374, 377, 955, 1407, 1550, 1553, 1557: `\esh` is used but never defined, which will cause `Undefined control sequence`.
   Fix: add a macro near the other custom macros, e.g. line 83:
   ```tex
   \newcommand{\esh}{\mathsf{Shape}}
   ```

2. Lines 12-23: `hyperref` is loaded before `graphicx`, `geometry`, `everypage`, and `xcolor`. `hyperref` should be loaded late, with `cleveref` after it, to avoid link/bookmark/layout patching issues.
   Fix: move `\usepackage{hyperref}` and `\usepackage{cleveref}` after the other package imports.

3. Lines 1160, 1170, 1179, 1188, 1198, 1208: `\addcontentsline` entries contain raw math macros such as `$\Cc$` and `$\holo$`. With `hyperref`, these can produce PDF string/bookmark warnings.
   Fix: use `\texorpdfstring`, e.g.
   ```tex
   \addcontentsline{toc}{subsection}{Sub-problem 1: HoTT-native \texorpdfstring{$\Cc$}{Cc}}
   ```

4. Lines 1222-1225: `\Cref{...}` is used directly inside `tikzcd` cells, which are math-mode by default. This can render reference text incorrectly.
   Fix: wrap each reference in text mode:
   ```tex
   \text{\Cref{prob:1}} \arrow[r] ...
   ```

5. Lines 408 and 1219: figures use `[h]`, which commonly triggers float placement warnings and poor spacing.
   Fix: use `[htbp]` or `[!htbp]`.

6. Lines 1125-1137 and 1677-1699: tables use vertical rules and `\hline`, inconsistent with the otherwise clean article style.
   Fix: add `\usepackage{booktabs}` and use `\toprule`, `\midrule`, `\bottomrule`; optionally wrap the tabulars in `center`.

7. Unused bibliography entries: lines 1750, 1782, 1787, 1792, 1838 define `LurieHA`, `ClausenScholze2024SixFunctor`, `ClausenScholze2025AnalyticStacks`, `ClausenScholzeComplex`, and `RiemannHypothesisOriginal`, but they are never cited.
   Fix: cite them where relevant or remove the `\bibitem`s.

8. Citation spacing is inconsistent: many prose citations use ` \cite{...}` instead of `~\cite{...}`. ChkTeX flags this at lines including 139, 161, 165, 181, 199, 241, 245, 373, 744, 769, 775, 899, 1023, 1400, 1431, 1532, 1619.
   Fix: use nonbreaking spaces before citations in running prose, e.g. `series~\cite{Long2026Synthesis}`.

VERDICT: NEEDS_FIX

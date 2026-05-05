---
platform: linkedin
topic: infinity-nno
title: "Higher-Categorical Natural Numbers Objects: Contractibility, ∞-Toposes, and Lurie's NNO"
url: "https://hott-foundations-mathematics.vercel.app/papers/infinity-nno/"
status: draft
created: 2026-05-04
---

In classical category theory, any two natural numbers objects (NNOs) in a topos are related by a unique isomorphism — making the NNO "unique up to canonical isomorphism." In Homotopy Type Theory, this uniqueness is strictly stronger: the entire type of NNO structures is contractible, meaning not only are all NNOs connected by equivalences, but all such equivalences are themselves connected by higher homotopies, and so on through all levels. When one moves from 1-toposes to (∞,1)-toposes, the analogous statement requires managing an infinite tower of coherence conditions. A new paper proves that HoTT's contractibility result absorbs this entire tower at once.

"Higher-Categorical Natural Numbers Objects: Contractibility, ∞-Toposes, and Lurie's NNO" compares three existing notions of NNO in (∞,1)-toposes: Lurie's parametrised NNO from Higher Topos Theory (formulated for presentable (∞,1)-toposes via small-colimit-preserving recursion), Rasekh's elementary NNO constructed from the loop space of the circle (TAC 2021), and the HoTT-native dependently-typed NNO. The paper proves that under mild assumptions all three notions agree, and that the space NNO(E) of NNO structures in any (∞,1)-topos admitting a HoTT model is a contractible Kan complex. This is the main theorem.

The significance of this result for the broader research programme is direct: any HoTT-native treatment of analytic number theory — including the construction of Dirichlet series and the Riemann zeta function — relies on iteration over the natural numbers. The correctness of that iteration in the (∞,1)-categorical setting requires exactly the contractibility established here. Without it, there is no canonical way to identify the NNO of the ambient ∞-topos with the inductive type ℕ of HoTT.

This is Part IV of Volume II of the Univalent Correspondence series. The paper also discusses synthetic approaches via Riehl-Shulman simplicial type theory and lists open problems on the connection between ∞-NNOs and the (∞,1)-categorical Lawvere fixed-point theorem.

Read the paper: https://hott-foundations-mathematics.vercel.app/papers/infinity-nno/
GitHub repository: https://github.com/YonedaAI/hott-foundations-mathematics

#CategoryTheory #HomotopyTypeTheory #InfinityCategories #Mathematics #TypeTheory #HigherToposTheory #FoundationsOfMathematics #FormalMathematics

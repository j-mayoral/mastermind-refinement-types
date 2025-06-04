# The Mastermind behind Refinement Types
Should your function only admit positive integers? Does it always return non-empty lists?

Refinement types are wonderful: beyond typing, you can annotate the behaviour of your function values. It's a great ally for the correctness of a program, but there is fine print: obviously the wonder is not to do a check at runtime, but at compile time, and that may not be trivial.

What we need is a brain, a mastermind that takes all the conditions and validates our program. And for it to work, this mastermind has to cleverly combine many ingredients: dependent types, logic, polymorphism... a very interesting mess.

In this talk we want to present, in an intuitive way and through examples, these masterminds, the SMT (Satisfiability Modulo Theories) solvers, and the applications to the semantic enrichment of many programming languages, as is the case of Z3 solver with Liquid Haskell, and compare the approach of refinement types with that of dependent types, as happens with Idris, Agda or Lean.

## Resources

### Presentation
- [Slides](https://docs.google.com/presentation/d/1z-JDtOH-OGH_ZzkeN_d0fsce80atdxIvsxuSVGF-WEI/edit?slide=id.p#slide=id.p)

### Liquid Haskell
 - [Liquid Haskell main page](https://ucsd-progsys.github.io/liquidhaskell/)
 - [Refinement Types in Haskell](https://dl.acm.org/doi/10.1145/2628136.2628161)
 - [Refinement Reflection in Haskell](https://dl.acm.org/doi/10.1145/3158141)
 - [Liquid Haskell presentation](https://goto.ucsd.edu/~nvazou/presentations/facebook2016/01-index.html)

 ### SMT solvers
 - [SMT-LIB](https://smt-lib.org/index.shtml)
 - [Theories of z3](https://theory.stanford.edu/~nikolaj/programmingz3.html#sec-theories) 
 - [CVC5 online](https://cvc5.github.io/app/#temp_9063c7e8-a8ec-4ca6-acd6-8a6286021401)
 - [CDCL(T): SMT solver algorithm](https://users.aalto.fi/~tjunttil/2020-DP-AUT/notes-smt/lazy.html)
 - [Combining theories: Nelson-Oppen](docs/nelson_oppen_techniques.pdf)
 - [AWS use case of SMTs: billion smt queries a day](https://www.amazon.science/blog/a-billion-smt-queries-a-day)
 - Convert CVC5 proofs to dot: on [CVC5 online](https://cvc5.github.io/app/#temp_9063c7e8-a8ec-4ca6-acd6-8a6286021401) you can set the options
`(set-option :produce-proofs true)` and 
`(set-option :proof-format-mode dot)`
to get proofs in dot format and then visualize it as a diagraph using [this link](https://dreampuf.github.io/GraphvizOnline/?engine=dot).

### Lean integrations
 - lean-smt: [repo](https://github.com/ufmg-smite/lean-smt), [paper](https://arxiv.org/abs/2505.15796)

 - [lean-auto](https://github.com/leanprover-community/lean-auto)

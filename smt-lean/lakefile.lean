import Lake
open Lake DSL

package «smt-lean» where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩ -- pretty-prints `fun a ↦ b`
  ]
  -- add any additional package configuration options here

--require mathlib from git
  --"https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «SmtLean» where
  -- add any library configuration options here

  require smt from git "https://github.com/ufmg-smite/lean-smt.git" @ "main"

-- require smt from git "https://github.com/abdoo8080/lean-cvc5.git" @ "39a646d"

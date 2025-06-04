import Smt
import Smt.Real
import Smt.Auto

set_option trace.smt true
set_option trace.smt.translate.query true
set_option trace.smt.reconstruct.term true
set_option trace.smt.reconstruct.proof true
set_option trace.smt.solve true

example (ε : Real) (h1 : ε > 0) : ε / 2 + ε / 3 + ε / 7 < ε := by
  smt [h1]

example (x y: Real) (h1: x = y) (h2: x ≠ y): False := by
 smt [h1, h2]


example (x y: Int) (f: Int → Int) (h1: x = y) (h2: (f x = 1 ∨ f x = 3)) (h3 : f y = 2): False := by
 smt [h1, h2, h3]


example [Nonempty U] {f : U → U → U} {a b c d : U}
  (h0 : a = b) (h1 : c = d) (h2 : p1 ∧ True) (h3 : (¬ p1) ∨ (p2 ∧ p3))
  (h4 : (¬ p3) ∨ (¬ (f a c = f b d))) : False := by
  smt [h0, h1, h2, h3, h4]


example: ∀ x: Int, x > 0 → x + 1 > 0 := by smt


example: ∀ x: Int, ∀ y : Int, x = y → ¬(x = y + 1) := by smt

example {x y : Int}: ¬ ((x = y) ∧ (x < 1 ∨ 2 * x = 1) ∧ ((2 * y > 2) ∨ (x > 1))):= by smt

example [Nonempty U] {f: U → U} {a b : U}
  (h0: a = b) (h1: ¬ (f a = f b)): False := by smt [h0, h1]


/-
(set-option :produce-proofs true)
(set-option :proof-format-mode dot)
(set-logic ALL)
    (declare-sort U 0)
    (declare-const a U)
    (declare-fun f (U) U)
    (declare-const b U)
    (assert (distinct (f a) (f b)))
    (assert (= a b))
    (assert (not false))
    (check-sat)
    (get-proof)
-/

example {x y : Int}:
 ¬ ((x = y) ∧
    (2*x = 6 ∨ x > y + 1) ∧
    (2*x ≠ 6 ∨ 2*x < 2*y)) := by smt

example {x y : Int} (h1: x = y): (x * y ≥ 0) :=
  by smt [h1]

example : ((1 : Int) < 2) := by smt

example {x: Int} : (x * x ≥ 0) := by smt

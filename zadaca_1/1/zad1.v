Require Import Bool.
Notation " ! b " := (negb b) (at level 10).

Goal forall (x y : bool), (x && !y) || (!x && !y) || (!x && y) = !x || !y.
Proof.
  destruct x, y; simpl; reflexivity.
Qed.

Goal forall (x y z : bool), !(!x && y && z) && !(x && y && !z) && (x && !y && z) = x && !y && z.
Proof.
  destruct x, y, z; simpl; reflexivity.
Qed.
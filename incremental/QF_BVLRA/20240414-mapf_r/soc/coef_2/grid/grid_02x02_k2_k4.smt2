(set-info :smt-lib-version 2.6)
(set-logic QF_BVLRA)
(set-info :source |
Generated by: Tomas Kolarik
Generated on: 2024-04-14
Generator: gitlab.com/Tomaqa/mapf_r
Application: Multi-Agent Path-Finding with Continuous Time
Target solver: Z3, CVC4, MathSAT
Publications: Tomas Kolarik, Stefan Ratschan and Pavel Surynek: "Multi-Agent Path-Finding with Continuous Time Using SAT Modulo Linear Real Arithmetic" in ICAART, SCITEPRESS, 2024.
The benchmarks mimic MAPF problems with continuous time where the objective time must be sub-optimal, bounded by a user-specified coefficient. In the original solver, a simulator checks whether there are collisions between particular agents, according to the current model. This check is missing in the case of the final 'check-sat'. The benchmarks also lack commands for preferring certain variables during the search which is of huge importance when searching for short paths in a graph. However, the final plan must still avoid all collisions encountered by the original solver and the objective time must obey the sub-optimal coefficient. Producing models is crucial for the application since the intended solver communicates values of particular variables with the simulator. This communication is ommited though for simplicity. The final 'get-value' allows to compare with the original solver that the objective time indeed obeys the coefficient. Filenames without the extensions correspond to filenames of resulting plans of the original solver.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(declare-const objtime Real)
(declare-const oo Real)
(declare-const eps Real)
(declare-const A0.V<0> (_ BitVec 16))
(declare-const A0.atime<0> Real)
(assert (= A0.atime<0> 0))
(declare-const A0.rtime<0> Real)
(declare-const A0.wtime<0> Real)
(declare-const A0.mtime<0> Real)
(assert (= (+ A0.rtime<0> (+ (* (- 1) A0.wtime<0>) (* (- 1) A0.mtime<0>))) 0))
(assert (<= 0 A0.wtime<0>))
(assert (<= 0 A0.mtime<0>))
(declare-const wpref0 Bool)
(assert (or (= A0.wtime<0> 0) (not wpref0)))
(declare-const A0.ppref<0> Bool)
(declare-const A0.spref<0><1> Bool)
(declare-const A0.spref<0><2> Bool)
(declare-const A1.V<0> (_ BitVec 16))
(declare-const A1.atime<0> Real)
(assert (= A1.atime<0> 0))
(declare-const A1.rtime<0> Real)
(declare-const A1.wtime<0> Real)
(declare-const A1.mtime<0> Real)
(assert (= (+ A1.rtime<0> (+ (* (- 1) A1.wtime<0>) (* (- 1) A1.mtime<0>))) 0))
(assert (<= 0 A1.wtime<0>))
(assert (<= 0 A1.mtime<0>))
(declare-const wpref1 Bool)
(assert (or (= A1.wtime<0> 0) (not wpref1)))
(declare-const A1.ppref<0> Bool)
(declare-const A1.spref<0><1> Bool)
(declare-const A1.spref<0><2> Bool)
(declare-const A2.V<0> (_ BitVec 16))
(declare-const A2.atime<0> Real)
(assert (= A2.atime<0> 0))
(declare-const A2.rtime<0> Real)
(declare-const A2.wtime<0> Real)
(declare-const A2.mtime<0> Real)
(assert (= (+ A2.rtime<0> (+ (* (- 1) A2.wtime<0>) (* (- 1) A2.mtime<0>))) 0))
(assert (<= 0 A2.wtime<0>))
(assert (<= 0 A2.mtime<0>))
(declare-const wpref2 Bool)
(assert (or (= A2.wtime<0> 0) (not wpref2)))
(declare-const A2.ppref<0> Bool)
(declare-const A2.spref<0><1> Bool)
(declare-const A2.spref<0><2> Bool)
(declare-const A3.V<0> (_ BitVec 16))
(declare-const A3.atime<0> Real)
(assert (= A3.atime<0> 0))
(declare-const A3.rtime<0> Real)
(declare-const A3.wtime<0> Real)
(declare-const A3.mtime<0> Real)
(assert (= (+ A3.rtime<0> (+ (* (- 1) A3.wtime<0>) (* (- 1) A3.mtime<0>))) 0))
(assert (<= 0 A3.wtime<0>))
(assert (<= 0 A3.mtime<0>))
(declare-const wpref3 Bool)
(assert (or (= A3.wtime<0> 0) (not wpref3)))
(declare-const A3.ppref<0> Bool)
(declare-const A3.spref<0><1> Bool)
(declare-const A3.spref<0><2> Bool)
(assert (= A3.V<0> (_ bv3 16)))
(assert (= A2.V<0> (_ bv2 16)))
(assert (= A1.V<0> (_ bv1 16)))
(assert (= A0.V<0> (_ bv0 16)))
(assert (or (= A0.wtime<0> 0) (or (= A1.wtime<0> 0) (or (= A2.wtime<0> 0) (= A3.wtime<0> 0)))))
(assert (or (= A0.V<0> (_ bv0 16)) (not A0.ppref<0>)))
(assert (or (= A1.V<0> (_ bv1 16)) (not A1.ppref<0>)))
(assert (or (= A2.V<0> (_ bv2 16)) (not A2.ppref<0>)))
(assert (or (= A3.V<0> (_ bv3 16)) (not A3.ppref<0>)))
(declare-const kass0 Bool)
(assert (or (= objtime A3.wtime<0>) (not kass0)))
(assert (or (not kass0) (= A3.mtime<0> 0)))
(assert (or (not kass0) (= objtime A2.wtime<0>)))
(assert (or (not kass0) (= A2.mtime<0> 0)))
(assert (or (not kass0) (= objtime A1.wtime<0>)))
(assert (or (not kass0) (= A1.mtime<0> 0)))
(assert (or (not kass0) (= objtime A0.wtime<0>)))
(assert (or (not kass0) (= A0.mtime<0> 0)))
(push 1)
(assert kass0)
(assert (= A3.V<0> (_ bv3 16)))
(assert (= A2.V<0> (_ bv2 16)))
(assert (= A1.V<0> (_ bv1 16)))
(assert (= A0.V<0> (_ bv0 16)))
(assert (= (+ objtime (+ (* (- 1) A0.atime<0>) (+ (* (- 1) A1.atime<0>) (+ (* (- 1) A2.atime<0>) (* (- 1) A3.atime<0>))))) 0))
(set-info :status sat)
(check-sat)
(assert (<= 0 objtime))
(assert (<= objtime 0))
(set-info :status sat)
(check-sat)
(exit)

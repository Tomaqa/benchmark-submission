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
(declare-const A0.spref<0><3> Bool)
(declare-const A0.spref<0><4> Bool)
(assert (= A0.V<0> (_ bv0 16)))
(assert (= A0.wtime<0> 0))
(assert (or (= A0.V<0> (_ bv0 16)) (not A0.ppref<0>)))
(declare-const A0.V<1> (_ BitVec 16))
(declare-const A0.atime<1> Real)
(assert (= (+ A0.atime<0> (+ A0.rtime<0> (* (- 1) A0.atime<1>))) 0))
(declare-const A0.rtime<1> Real)
(declare-const A0.wtime<1> Real)
(declare-const A0.mtime<1> Real)
(assert (= (+ A0.rtime<1> (+ (* (- 1) A0.wtime<1>) (* (- 1) A0.mtime<1>))) 0))
(assert (<= 0 A0.wtime<1>))
(assert (<= 0 A0.mtime<1>))
(declare-const A0.ppref<1> Bool)
(declare-const A0.spref<1><1> Bool)
(declare-const A0.spref<1><2> Bool)
(declare-const A0.spref<1><3> Bool)
(declare-const A0.spref<1><4> Bool)
(assert (or (= A0.V<1> (_ bv4 16)) (not A0.ppref<1>)))
(assert (or (= A0.mtime<0> 1) (not (and (= A0.V<0> (_ bv0 16)) (= A0.V<1> (_ bv1 16))))))
(assert (or (= A0.mtime<0> 1) (not (and (= A0.V<0> (_ bv0 16)) (= A0.V<1> (_ bv4 16))))))
(assert (or (or (= A0.V<1> (_ bv4 16)) (= A0.V<1> (_ bv1 16))) (not (= A0.V<0> (_ bv0 16)))))
(assert (or (= A0.V<1> (_ bv4 16)) (not (and A0.spref<0><1> (= A0.V<0> (_ bv0 16))))))
(assert (or (= A0.V<1> (_ bv1 16)) (not (and A0.spref<0><2> (= A0.V<0> (_ bv0 16))))))
(declare-const A0.V<2> (_ BitVec 16))
(declare-const A0.atime<2> Real)
(assert (= (+ A0.atime<1> (+ A0.rtime<1> (* (- 1) A0.atime<2>))) 0))
(declare-const A0.rtime<2> Real)
(declare-const A0.wtime<2> Real)
(declare-const A0.mtime<2> Real)
(assert (= (+ A0.rtime<2> (+ (* (- 1) A0.wtime<2>) (* (- 1) A0.mtime<2>))) 0))
(assert (<= 0 A0.wtime<2>))
(assert (<= 0 A0.mtime<2>))
(declare-const A0.ppref<2> Bool)
(declare-const A0.spref<2><1> Bool)
(declare-const A0.spref<2><2> Bool)
(declare-const A0.spref<2><3> Bool)
(declare-const A0.spref<2><4> Bool)
(assert (or (= A0.V<2> (_ bv8 16)) (not A0.ppref<2>)))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv4 16)) (= A0.V<2> (_ bv5 16))))))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv4 16)) (= A0.V<2> (_ bv8 16))))))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv4 16)) (= A0.V<2> (_ bv0 16))))))
(assert (or (or (= A0.V<2> (_ bv0 16)) (or (= A0.V<2> (_ bv8 16)) (= A0.V<2> (_ bv5 16)))) (not (= A0.V<1> (_ bv4 16)))))
(assert (or (= A0.V<2> (_ bv8 16)) (not (and A0.spref<1><1> (= A0.V<1> (_ bv4 16))))))
(assert (or (= A0.V<2> (_ bv5 16)) (not (and A0.spref<1><2> (= A0.V<1> (_ bv4 16))))))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv1 16)) (= A0.V<2> (_ bv2 16))))))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv1 16)) (= A0.V<2> (_ bv5 16))))))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv1 16)) (= A0.V<2> (_ bv0 16))))))
(assert (or (or (= A0.V<2> (_ bv0 16)) (or (= A0.V<2> (_ bv5 16)) (= A0.V<2> (_ bv2 16)))) (not (= A0.V<1> (_ bv1 16)))))
(assert (or (= A0.V<2> (_ bv5 16)) (not (and A0.spref<1><1> (= A0.V<1> (_ bv1 16))))))
(assert (or (= A0.V<2> (_ bv2 16)) (not (and A0.spref<1><2> (= A0.V<1> (_ bv1 16))))))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv0 16)) (= A0.V<2> (_ bv1 16))))))
(assert (or (= A0.mtime<1> 1) (not (and (= A0.V<1> (_ bv0 16)) (= A0.V<2> (_ bv4 16))))))
(assert (or (or (= A0.V<2> (_ bv1 16)) (= A0.V<2> (_ bv4 16))) (not (= A0.V<1> (_ bv0 16)))))
(assert (or (= A0.V<2> (_ bv4 16)) (not (and A0.spref<1><1> (= A0.V<1> (_ bv0 16))))))
(assert (or (= A0.V<2> (_ bv1 16)) (not (and A0.spref<1><2> (= A0.V<1> (_ bv0 16))))))
(declare-const A0.V<3> (_ BitVec 16))
(declare-const A0.atime<3> Real)
(assert (= (+ A0.atime<2> (+ A0.rtime<2> (* (- 1) A0.atime<3>))) 0))
(declare-const A0.rtime<3> Real)
(declare-const A0.wtime<3> Real)
(declare-const A0.mtime<3> Real)
(assert (= (+ A0.rtime<3> (+ (* (- 1) A0.wtime<3>) (* (- 1) A0.mtime<3>))) 0))
(assert (<= 0 A0.wtime<3>))
(assert (<= 0 A0.mtime<3>))
(declare-const A0.ppref<3> Bool)
(declare-const A0.spref<3><1> Bool)
(declare-const A0.spref<3><2> Bool)
(declare-const A0.spref<3><3> Bool)
(declare-const A0.spref<3><4> Bool)
(assert (or (= A0.V<3> (_ bv12 16)) (not A0.ppref<3>)))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv2 16)) (= A0.V<3> (_ bv3 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv2 16)) (= A0.V<3> (_ bv6 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv2 16)) (= A0.V<3> (_ bv1 16))))))
(assert (or (or (= A0.V<3> (_ bv1 16)) (or (= A0.V<3> (_ bv3 16)) (= A0.V<3> (_ bv6 16)))) (not (= A0.V<2> (_ bv2 16)))))
(assert (or (= A0.V<3> (_ bv6 16)) (not (and A0.spref<2><1> (= A0.V<2> (_ bv2 16))))))
(assert (or (= A0.V<3> (_ bv3 16)) (not (and A0.spref<2><2> (= A0.V<2> (_ bv2 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv8 16)) (= A0.V<3> (_ bv9 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv8 16)) (= A0.V<3> (_ bv12 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv8 16)) (= A0.V<3> (_ bv4 16))))))
(assert (or (or (= A0.V<3> (_ bv4 16)) (or (= A0.V<3> (_ bv12 16)) (= A0.V<3> (_ bv9 16)))) (not (= A0.V<2> (_ bv8 16)))))
(assert (or (= A0.V<3> (_ bv12 16)) (not (and A0.spref<2><1> (= A0.V<2> (_ bv8 16))))))
(assert (or (= A0.V<3> (_ bv9 16)) (not (and A0.spref<2><2> (= A0.V<2> (_ bv8 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv5 16)) (= A0.V<3> (_ bv6 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv5 16)) (= A0.V<3> (_ bv9 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv5 16)) (= A0.V<3> (_ bv4 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv5 16)) (= A0.V<3> (_ bv1 16))))))
(assert (or (or (= A0.V<3> (_ bv1 16)) (or (= A0.V<3> (_ bv4 16)) (or (= A0.V<3> (_ bv6 16)) (= A0.V<3> (_ bv9 16))))) (not (= A0.V<2> (_ bv5 16)))))
(assert (or (= A0.V<3> (_ bv9 16)) (not (and A0.spref<2><1> (= A0.V<2> (_ bv5 16))))))
(assert (or (= A0.V<3> (_ bv6 16)) (not (and A0.spref<2><2> (= A0.V<2> (_ bv5 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv4 16)) (= A0.V<3> (_ bv5 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv4 16)) (= A0.V<3> (_ bv8 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv4 16)) (= A0.V<3> (_ bv0 16))))))
(assert (or (or (= A0.V<3> (_ bv0 16)) (or (= A0.V<3> (_ bv5 16)) (= A0.V<3> (_ bv8 16)))) (not (= A0.V<2> (_ bv4 16)))))
(assert (or (= A0.V<3> (_ bv8 16)) (not (and A0.spref<2><1> (= A0.V<2> (_ bv4 16))))))
(assert (or (= A0.V<3> (_ bv5 16)) (not (and A0.spref<2><2> (= A0.V<2> (_ bv4 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv1 16)) (= A0.V<3> (_ bv2 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv1 16)) (= A0.V<3> (_ bv5 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv1 16)) (= A0.V<3> (_ bv0 16))))))
(assert (or (or (= A0.V<3> (_ bv0 16)) (or (= A0.V<3> (_ bv5 16)) (= A0.V<3> (_ bv2 16)))) (not (= A0.V<2> (_ bv1 16)))))
(assert (or (= A0.V<3> (_ bv5 16)) (not (and A0.spref<2><1> (= A0.V<2> (_ bv1 16))))))
(assert (or (= A0.V<3> (_ bv2 16)) (not (and A0.spref<2><2> (= A0.V<2> (_ bv1 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv0 16)) (= A0.V<3> (_ bv1 16))))))
(assert (or (= A0.mtime<2> 1) (not (and (= A0.V<2> (_ bv0 16)) (= A0.V<3> (_ bv4 16))))))
(assert (or (or (= A0.V<3> (_ bv1 16)) (= A0.V<3> (_ bv4 16))) (not (= A0.V<2> (_ bv0 16)))))
(assert (or (= A0.V<3> (_ bv4 16)) (not (and A0.spref<2><1> (= A0.V<2> (_ bv0 16))))))
(assert (or (= A0.V<3> (_ bv1 16)) (not (and A0.spref<2><2> (= A0.V<2> (_ bv0 16))))))
(declare-const A0.V<4> (_ BitVec 16))
(declare-const A0.atime<4> Real)
(assert (= (+ A0.atime<3> (+ A0.rtime<3> (* (- 1) A0.atime<4>))) 0))
(declare-const A0.rtime<4> Real)
(declare-const A0.wtime<4> Real)
(declare-const A0.mtime<4> Real)
(assert (= (+ A0.rtime<4> (+ (* (- 1) A0.wtime<4>) (* (- 1) A0.mtime<4>))) 0))
(assert (<= 0 A0.wtime<4>))
(assert (<= 0 A0.mtime<4>))
(declare-const A0.ppref<4> Bool)
(declare-const A0.spref<4><1> Bool)
(declare-const A0.spref<4><2> Bool)
(declare-const A0.spref<4><3> Bool)
(declare-const A0.spref<4><4> Bool)
(assert (or (= A0.V<4> (_ bv13 16)) (not A0.ppref<4>)))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv12 16)) (= A0.V<4> (_ bv13 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv12 16)) (= A0.V<4> (_ bv8 16))))))
(assert (or (or (= A0.V<4> (_ bv13 16)) (= A0.V<4> (_ bv8 16))) (not (= A0.V<3> (_ bv12 16)))))
(assert (or (= A0.V<4> (_ bv13 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv12 16))))))
(assert (or (= A0.V<4> (_ bv8 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv12 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv9 16)) (= A0.V<4> (_ bv10 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv9 16)) (= A0.V<4> (_ bv13 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv9 16)) (= A0.V<4> (_ bv8 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv9 16)) (= A0.V<4> (_ bv5 16))))))
(assert (or (or (= A0.V<4> (_ bv5 16)) (or (= A0.V<4> (_ bv8 16)) (or (= A0.V<4> (_ bv13 16)) (= A0.V<4> (_ bv10 16))))) (not (= A0.V<3> (_ bv9 16)))))
(assert (or (= A0.V<4> (_ bv13 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv9 16))))))
(assert (or (= A0.V<4> (_ bv10 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv9 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv6 16)) (= A0.V<4> (_ bv7 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv6 16)) (= A0.V<4> (_ bv10 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv6 16)) (= A0.V<4> (_ bv5 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv6 16)) (= A0.V<4> (_ bv2 16))))))
(assert (or (or (= A0.V<4> (_ bv2 16)) (or (= A0.V<4> (_ bv5 16)) (or (= A0.V<4> (_ bv10 16)) (= A0.V<4> (_ bv7 16))))) (not (= A0.V<3> (_ bv6 16)))))
(assert (or (= A0.V<4> (_ bv10 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv6 16))))))
(assert (or (= A0.V<4> (_ bv7 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv6 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv3 16)) (= A0.V<4> (_ bv7 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv3 16)) (= A0.V<4> (_ bv2 16))))))
(assert (or (or (= A0.V<4> (_ bv7 16)) (= A0.V<4> (_ bv2 16))) (not (= A0.V<3> (_ bv3 16)))))
(assert (or (= A0.V<4> (_ bv7 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv3 16))))))
(assert (or (= A0.V<4> (_ bv2 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv3 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv2 16)) (= A0.V<4> (_ bv3 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv2 16)) (= A0.V<4> (_ bv6 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv2 16)) (= A0.V<4> (_ bv1 16))))))
(assert (or (or (= A0.V<4> (_ bv1 16)) (or (= A0.V<4> (_ bv3 16)) (= A0.V<4> (_ bv6 16)))) (not (= A0.V<3> (_ bv2 16)))))
(assert (or (= A0.V<4> (_ bv6 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv2 16))))))
(assert (or (= A0.V<4> (_ bv3 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv2 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv8 16)) (= A0.V<4> (_ bv9 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv8 16)) (= A0.V<4> (_ bv12 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv8 16)) (= A0.V<4> (_ bv4 16))))))
(assert (or (or (= A0.V<4> (_ bv4 16)) (or (= A0.V<4> (_ bv9 16)) (= A0.V<4> (_ bv12 16)))) (not (= A0.V<3> (_ bv8 16)))))
(assert (or (= A0.V<4> (_ bv12 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv8 16))))))
(assert (or (= A0.V<4> (_ bv9 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv8 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv5 16)) (= A0.V<4> (_ bv6 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv5 16)) (= A0.V<4> (_ bv9 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv5 16)) (= A0.V<4> (_ bv4 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv5 16)) (= A0.V<4> (_ bv1 16))))))
(assert (or (or (= A0.V<4> (_ bv1 16)) (or (= A0.V<4> (_ bv4 16)) (or (= A0.V<4> (_ bv6 16)) (= A0.V<4> (_ bv9 16))))) (not (= A0.V<3> (_ bv5 16)))))
(assert (or (= A0.V<4> (_ bv9 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv5 16))))))
(assert (or (= A0.V<4> (_ bv6 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv5 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv4 16)) (= A0.V<4> (_ bv5 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv4 16)) (= A0.V<4> (_ bv8 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv4 16)) (= A0.V<4> (_ bv0 16))))))
(assert (or (or (= A0.V<4> (_ bv0 16)) (or (= A0.V<4> (_ bv8 16)) (= A0.V<4> (_ bv5 16)))) (not (= A0.V<3> (_ bv4 16)))))
(assert (or (= A0.V<4> (_ bv8 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv4 16))))))
(assert (or (= A0.V<4> (_ bv5 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv4 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv1 16)) (= A0.V<4> (_ bv2 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv1 16)) (= A0.V<4> (_ bv5 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv1 16)) (= A0.V<4> (_ bv0 16))))))
(assert (or (or (= A0.V<4> (_ bv0 16)) (or (= A0.V<4> (_ bv5 16)) (= A0.V<4> (_ bv2 16)))) (not (= A0.V<3> (_ bv1 16)))))
(assert (or (= A0.V<4> (_ bv5 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv1 16))))))
(assert (or (= A0.V<4> (_ bv2 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv1 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv0 16)) (= A0.V<4> (_ bv1 16))))))
(assert (or (= A0.mtime<3> 1) (not (and (= A0.V<3> (_ bv0 16)) (= A0.V<4> (_ bv4 16))))))
(assert (or (or (= A0.V<4> (_ bv1 16)) (= A0.V<4> (_ bv4 16))) (not (= A0.V<3> (_ bv0 16)))))
(assert (or (= A0.V<4> (_ bv4 16)) (not (and A0.spref<3><1> (= A0.V<3> (_ bv0 16))))))
(assert (or (= A0.V<4> (_ bv1 16)) (not (and A0.spref<3><2> (= A0.V<3> (_ bv0 16))))))
(declare-const A0.V<5> (_ BitVec 16))
(declare-const A0.atime<5> Real)
(assert (= (+ A0.atime<4> (+ A0.rtime<4> (* (- 1) A0.atime<5>))) 0))
(declare-const A0.rtime<5> Real)
(declare-const A0.wtime<5> Real)
(declare-const A0.mtime<5> Real)
(assert (= (+ A0.rtime<5> (+ (* (- 1) A0.wtime<5>) (* (- 1) A0.mtime<5>))) 0))
(assert (<= 0 A0.wtime<5>))
(assert (<= 0 A0.mtime<5>))
(declare-const A0.ppref<5> Bool)
(declare-const A0.spref<5><1> Bool)
(declare-const A0.spref<5><2> Bool)
(declare-const A0.spref<5><3> Bool)
(declare-const A0.spref<5><4> Bool)
(assert (or (= A0.V<5> (_ bv14 16)) (not A0.ppref<5>)))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv7 16)) (= A0.V<5> (_ bv11 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv7 16)) (= A0.V<5> (_ bv3 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv7 16)) (= A0.V<5> (_ bv6 16))))))
(assert (or (or (= A0.V<5> (_ bv6 16)) (or (= A0.V<5> (_ bv11 16)) (= A0.V<5> (_ bv3 16)))) (not (= A0.V<4> (_ bv7 16)))))
(assert (or (= A0.V<5> (_ bv11 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv7 16))))))
(assert (or (= A0.V<5> (_ bv6 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv7 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv10 16)) (= A0.V<5> (_ bv11 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv10 16)) (= A0.V<5> (_ bv14 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv10 16)) (= A0.V<5> (_ bv9 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv10 16)) (= A0.V<5> (_ bv6 16))))))
(assert (or (or (= A0.V<5> (_ bv6 16)) (or (= A0.V<5> (_ bv9 16)) (or (= A0.V<5> (_ bv14 16)) (= A0.V<5> (_ bv11 16))))) (not (= A0.V<4> (_ bv10 16)))))
(assert (or (= A0.V<5> (_ bv14 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv10 16))))))
(assert (or (= A0.V<5> (_ bv11 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv10 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv12 16)) (= A0.V<5> (_ bv13 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv12 16)) (= A0.V<5> (_ bv8 16))))))
(assert (or (or (= A0.V<5> (_ bv13 16)) (= A0.V<5> (_ bv8 16))) (not (= A0.V<4> (_ bv12 16)))))
(assert (or (= A0.V<5> (_ bv13 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv12 16))))))
(assert (or (= A0.V<5> (_ bv8 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv12 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv9 16)) (= A0.V<5> (_ bv10 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv9 16)) (= A0.V<5> (_ bv13 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv9 16)) (= A0.V<5> (_ bv8 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv9 16)) (= A0.V<5> (_ bv5 16))))))
(assert (or (or (= A0.V<5> (_ bv5 16)) (or (= A0.V<5> (_ bv8 16)) (or (= A0.V<5> (_ bv13 16)) (= A0.V<5> (_ bv10 16))))) (not (= A0.V<4> (_ bv9 16)))))
(assert (or (= A0.V<5> (_ bv13 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv9 16))))))
(assert (or (= A0.V<5> (_ bv10 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv9 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv6 16)) (= A0.V<5> (_ bv7 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv6 16)) (= A0.V<5> (_ bv10 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv6 16)) (= A0.V<5> (_ bv5 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv6 16)) (= A0.V<5> (_ bv2 16))))))
(assert (or (or (= A0.V<5> (_ bv2 16)) (or (= A0.V<5> (_ bv5 16)) (or (= A0.V<5> (_ bv10 16)) (= A0.V<5> (_ bv7 16))))) (not (= A0.V<4> (_ bv6 16)))))
(assert (or (= A0.V<5> (_ bv10 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv6 16))))))
(assert (or (= A0.V<5> (_ bv7 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv6 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv3 16)) (= A0.V<5> (_ bv7 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv3 16)) (= A0.V<5> (_ bv2 16))))))
(assert (or (or (= A0.V<5> (_ bv7 16)) (= A0.V<5> (_ bv2 16))) (not (= A0.V<4> (_ bv3 16)))))
(assert (or (= A0.V<5> (_ bv7 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv3 16))))))
(assert (or (= A0.V<5> (_ bv2 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv3 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv2 16)) (= A0.V<5> (_ bv3 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv2 16)) (= A0.V<5> (_ bv6 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv2 16)) (= A0.V<5> (_ bv1 16))))))
(assert (or (or (= A0.V<5> (_ bv1 16)) (or (= A0.V<5> (_ bv3 16)) (= A0.V<5> (_ bv6 16)))) (not (= A0.V<4> (_ bv2 16)))))
(assert (or (= A0.V<5> (_ bv6 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv2 16))))))
(assert (or (= A0.V<5> (_ bv3 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv2 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv8 16)) (= A0.V<5> (_ bv9 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv8 16)) (= A0.V<5> (_ bv12 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv8 16)) (= A0.V<5> (_ bv4 16))))))
(assert (or (or (= A0.V<5> (_ bv4 16)) (or (= A0.V<5> (_ bv9 16)) (= A0.V<5> (_ bv12 16)))) (not (= A0.V<4> (_ bv8 16)))))
(assert (or (= A0.V<5> (_ bv12 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv8 16))))))
(assert (or (= A0.V<5> (_ bv9 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv8 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv5 16)) (= A0.V<5> (_ bv6 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv5 16)) (= A0.V<5> (_ bv9 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv5 16)) (= A0.V<5> (_ bv4 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv5 16)) (= A0.V<5> (_ bv1 16))))))
(assert (or (or (= A0.V<5> (_ bv1 16)) (or (= A0.V<5> (_ bv4 16)) (or (= A0.V<5> (_ bv6 16)) (= A0.V<5> (_ bv9 16))))) (not (= A0.V<4> (_ bv5 16)))))
(assert (or (= A0.V<5> (_ bv9 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv5 16))))))
(assert (or (= A0.V<5> (_ bv6 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv5 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv4 16)) (= A0.V<5> (_ bv5 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv4 16)) (= A0.V<5> (_ bv8 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv4 16)) (= A0.V<5> (_ bv0 16))))))
(assert (or (or (= A0.V<5> (_ bv0 16)) (or (= A0.V<5> (_ bv8 16)) (= A0.V<5> (_ bv5 16)))) (not (= A0.V<4> (_ bv4 16)))))
(assert (or (= A0.V<5> (_ bv8 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv4 16))))))
(assert (or (= A0.V<5> (_ bv5 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv4 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv1 16)) (= A0.V<5> (_ bv2 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv1 16)) (= A0.V<5> (_ bv5 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv1 16)) (= A0.V<5> (_ bv0 16))))))
(assert (or (or (= A0.V<5> (_ bv0 16)) (or (= A0.V<5> (_ bv5 16)) (= A0.V<5> (_ bv2 16)))) (not (= A0.V<4> (_ bv1 16)))))
(assert (or (= A0.V<5> (_ bv5 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv1 16))))))
(assert (or (= A0.V<5> (_ bv2 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv1 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv13 16)) (= A0.V<5> (_ bv14 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv13 16)) (= A0.V<5> (_ bv12 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv13 16)) (= A0.V<5> (_ bv9 16))))))
(assert (or (or (= A0.V<5> (_ bv9 16)) (or (= A0.V<5> (_ bv14 16)) (= A0.V<5> (_ bv12 16)))) (not (= A0.V<4> (_ bv13 16)))))
(assert (or (= A0.V<5> (_ bv14 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv13 16))))))
(assert (or (= A0.V<5> (_ bv12 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv13 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv0 16)) (= A0.V<5> (_ bv1 16))))))
(assert (or (= A0.mtime<4> 1) (not (and (= A0.V<4> (_ bv0 16)) (= A0.V<5> (_ bv4 16))))))
(assert (or (or (= A0.V<5> (_ bv1 16)) (= A0.V<5> (_ bv4 16))) (not (= A0.V<4> (_ bv0 16)))))
(assert (or (= A0.V<5> (_ bv4 16)) (not (and A0.spref<4><1> (= A0.V<4> (_ bv0 16))))))
(assert (or (= A0.V<5> (_ bv1 16)) (not (and A0.spref<4><2> (= A0.V<4> (_ bv0 16))))))
(declare-const kass5 Bool)
(assert (or (= objtime A0.wtime<5>) (not kass5)))
(assert (or (not kass5) (= A0.mtime<5> 0)))
(push 1)
(assert kass5)
(assert (= A0.V<5> (_ bv14 16)))
(assert (= objtime (ite (<= A0.atime<5> 0) 0 A0.atime<5>)))
(set-info :status sat)
(check-sat)
(assert (<= 5 objtime))
(assert (<= objtime (/ 15 2)))
(set-info :status sat)
(check-sat)
(exit)

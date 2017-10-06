	.cpu generic+fp+simd
	.file	"bounds.c"
// GNU C (GCC) version 4.9 20150123 (prerelease) (aarch64-linux-android)
//	compiled by GNU C version 4.8, GMP version 5.0.5, MPFR version 3.1.1, MPC version 1.0.1
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc
// -I /home/bule/android/lineage/kernel/leeco/msm8976/arch/arm64/include
// -I arch/arm64/include/generated
// -I /home/bule/android/lineage/kernel/leeco/msm8976/include -I include
// -I /home/bule/android/lineage/kernel/leeco/msm8976/arch/arm64/include/uapi
// -I arch/arm64/include/generated/uapi
// -I /home/bule/android/lineage/kernel/leeco/msm8976/drivers/soc/qcom
// -I /home/bule/android/lineage/kernel/leeco/msm8976/include/uapi
// -I include/generated/uapi
// -I /home/bule/android/lineage/kernel/leeco/msm8976/. -I .
// -iprefix /home/bule/android/lineage/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9/
// -D __KERNEL__ -D CC_HAVE_ASM_GOTO -D KBUILD_STR(s)=#s
// -D KBUILD_BASENAME=KBUILD_STR(bounds)
// -D KBUILD_MODNAME=KBUILD_STR(bounds)
// -isystem /home/bule/android/lineage/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9/include
// -include /home/bule/android/lineage/kernel/leeco/msm8976/include/linux/kconfig.h
// -MD kernel/.bounds.s.d
// /home/bule/android/lineage/kernel/leeco/msm8976/kernel/bounds.c -mbionic
// -mlittle-endian -mgeneral-regs-only -mabi=lp64
// -auxbase-strip kernel/bounds.s -Os -Wall -Wundef -Wstrict-prototypes
// -Wno-trigraphs -Werror=implicit-function-declaration
// -Wno-format-security -Wno-maybe-uninitialized -Wframe-larger-than=2048
// -Wno-unused-but-set-variable -Wdeclaration-after-statement
// -Wno-pointer-sign -std=gnu90 -p -fno-strict-aliasing -fno-common
// -fno-delete-null-pointer-checks -fno-pic -fstack-protector
// -fno-omit-frame-pointer -fno-optimize-sibling-calls
// -fno-var-tracking-assignments -fno-strict-overflow -fconserve-stack
// -fverbose-asm
// options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
// -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments
// -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
// -fdefer-pop -fdevirtualize-speculatively -fdwarf2-cfi-asm
// -fearly-inlining -feliminate-unused-debug-types
// -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
// -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
// -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
// -findirect-inlining -finline -finline-atomics -finline-functions
// -finline-functions-called-once -finline-small-functions -fipa-cp
// -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
// -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -fmath-errno -fmerge-constants
// -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
// -fpartial-inlining -fpeel-codesize-limit -fpeephole -fpeephole2 -fplt
// -fprefetch-loop-arrays -fprofile -free -freg-struct-return
// -freorder-blocks -freorder-functions -frerun-cse-after-loop
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
// -fsched-stalled-insns-dep -fschedule-insns2 -fsection-anchors
// -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller
// -fsplit-wide-types -fstack-protector -fstrict-enum-precision
// -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
// -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
// -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
// -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
// -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
// -ftree-sink -ftree-slsr -ftree-sra -ftree-switch-conversion
// -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time
// -funroll-codesize-limit -fverbose-asm -fzero-initialized-in-bss
// -mandroid -mbionic -mfix-cortex-a53-835769 -mfix-cortex-a53-843419
// -mgeneral-regs-only -mlittle-endian -mlra -momit-leaf-frame-pointer

	.global	_mcount
	.text
	.align	2
	.global	foo
	.type	foo, %function
foo:
	stp	x29, x30, [sp, -16]!	//,,,
	add	x29, sp, 0	//,,
	mov	x0, x30	//,
	bl	_mcount	//
#APP
// 17 "/home/bule/android/lineage/kernel/leeco/msm8976/kernel/bounds.c" 1
	
->NR_PAGEFLAGS 23 __NR_PAGEFLAGS	//
// 0 "" 2
// 18 "/home/bule/android/lineage/kernel/leeco/msm8976/kernel/bounds.c" 1
	
->MAX_NR_ZONES 3 __MAX_NR_ZONES	//
// 0 "" 2
// 19 "/home/bule/android/lineage/kernel/leeco/msm8976/kernel/bounds.c" 1
	
->NR_PCG_FLAGS 3 __NR_PCG_FLAGS	//
// 0 "" 2
#NO_APP
	ldp	x29, x30, [sp], 16	//,,,
	ret
	.size	foo, .-foo
	.ident	"GCC: (GNU) 4.9 20150123 (prerelease)"
	.section	.note.GNU-stack,"",%progbits

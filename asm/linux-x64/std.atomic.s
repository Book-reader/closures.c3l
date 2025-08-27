	.text
	.file	"std::atomic"
	.section	.text.__atomic_compare_exchange,"axG",@progbits,__atomic_compare_exchange,comdat
	.weak	__atomic_compare_exchange       # -- Begin function __atomic_compare_exchange
	.p2align	4, 0x90
	.type	__atomic_compare_exchange,@function
__atomic_compare_exchange:              # @__atomic_compare_exchange
.Lfunc_begin0:
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std" "atomic_nolibc.c3"
	.loc	1 32 0                          # atomic_nolibc.c3:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2480, %rsp                     # imm = 0x9B0
	movl	32(%rbp), %eax
	leaq	16(%rbp), %rax
	movq	%rax, -2168(%rbp)               # 8-byte Spill
	movl	%edi, -4(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -44(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -48(%rbp)
# %bb.1:
	movl	-48(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, -2176(%rbp)               # 8-byte Spill
	subl	$7, %eax
	ja	.LBB0_180
# %bb.196:
	movq	-2176(%rbp), %rax               # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_2:
.Ltmp0:
	.loc	1 37 15 prologue_end            # atomic_nolibc.c3:37:15
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc	1 38 15                         # atomic_nolibc.c3:38:15
	movq	-40(%rbp), %rax
	movq	%rax, -2184(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_182
# %bb.3:
	.loc	1 0 15 is_stmt 0                # atomic_nolibc.c3:0:15
	movq	-2168(%rbp), %rax               # 8-byte Reload
	movq	-2184(%rbp), %rcx               # 8-byte Reload
	.loc	1 38 15                         # atomic_nolibc.c3:38:15
	movb	(%rcx), %cl
	movb	%cl, -57(%rbp)
	.loc	1 39 15 is_stmt 1               # atomic_nolibc.c3:39:15
	movq	(%rax), %rax
	movq	%rax, -2192(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_183
# %bb.4:
	.loc	1 0 15 is_stmt 0                # atomic_nolibc.c3:0:15
	movq	-2192(%rbp), %rax               # 8-byte Reload
	.loc	1 39 15                         # atomic_nolibc.c3:39:15
	movb	(%rax), %al
	movb	%al, -58(%rbp)
	.loc	1 40 8 is_stmt 1                # atomic_nolibc.c3:40:8
	movb	-57(%rbp), %al
	movb	%al, -2193(%rbp)                # 1-byte Spill
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movb	-57(%rbp), %al
	movb	%al, -73(%rbp)
	movb	-58(%rbp), %al
	movb	%al, -74(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -92(%rbp)
# %bb.5:
	.loc	1 0 8 is_stmt 0                 # atomic_nolibc.c3:0:8
	movl	-92(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	movq	%rcx, -2208(%rbp)               # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_41
# %bb.230:
	movq	-2208(%rbp), %rax               # 8-byte Reload
	leaq	.LJTI0_4(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_6:
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movb	-73(%rbp), %al
	movb	%al, -105(%rbp)
	movb	-74(%rbp), %al
	movb	%al, -106(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -120(%rbp)
# %bb.7:
	movl	-120(%rbp), %eax
	movl	%eax, -2212(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_8
	jmp	.LBB0_239
.LBB0_239:
	movl	-2212(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_9
	jmp	.LBB0_240
.LBB0_240:
	movl	-2212(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_10
	jmp	.LBB0_11
.LBB0_8:
.Ltmp1:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-104(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movb	-105(%rbp), %al
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movb	-106(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -113(%rbp)
	jmp	.LBB0_12
.Ltmp2:
.LBB0_9:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-104(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movb	-105(%rbp), %al
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movb	-106(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -113(%rbp)
	jmp	.LBB0_12
.Ltmp3:
.LBB0_10:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-104(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movb	-105(%rbp), %al
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movb	-106(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -113(%rbp)
	jmp	.LBB0_12
.Ltmp4:
.LBB0_11:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	$29, -128(%rbp)
.Ltmp5:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "builtin.c3"
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.2(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.3(%rip), %r8
	movl	$25, %r9d
	leaq	-152(%rbp), %rax
	movl	$40, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_12:
	movb	-113(%rbp), %al
	movb	%al, -85(%rbp)
	jmp	.LBB0_42
.Ltmp6:
.LBB0_13:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)
	movb	-73(%rbp), %al
	movb	%al, -161(%rbp)
	movb	-74(%rbp), %al
	movb	%al, -162(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -176(%rbp)
# %bb.14:
	movl	-176(%rbp), %eax
	movl	%eax, -2216(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_15
	jmp	.LBB0_237
.LBB0_237:
	movl	-2216(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_16
	jmp	.LBB0_238
.LBB0_238:
	movl	-2216(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_17
	jmp	.LBB0_18
.LBB0_15:
.Ltmp7:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-160(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movb	-161(%rbp), %al
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movb	-162(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -169(%rbp)
	jmp	.LBB0_19
.Ltmp8:
.LBB0_16:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-160(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movb	-161(%rbp), %al
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movb	-162(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -169(%rbp)
	jmp	.LBB0_19
.Ltmp9:
.LBB0_17:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-160(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movb	-161(%rbp), %al
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movb	-162(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -169(%rbp)
	jmp	.LBB0_19
.Ltmp10:
.LBB0_18:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -192(%rbp)
	movq	$29, -184(%rbp)
.Ltmp11:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.5(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.6(%rip), %r8
	movl	$25, %r9d
	leaq	-208(%rbp), %rax
	movl	$40, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_19:
	movb	-169(%rbp), %al
	movb	%al, -85(%rbp)
	jmp	.LBB0_42
.Ltmp12:
.LBB0_20:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)
	movb	-73(%rbp), %al
	movb	%al, -217(%rbp)
	movb	-74(%rbp), %al
	movb	%al, -218(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	-224(%rbp), %eax
	movl	%eax, -232(%rbp)
# %bb.21:
	movl	-232(%rbp), %eax
	movl	%eax, -2220(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_22
	jmp	.LBB0_235
.LBB0_235:
	movl	-2220(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_23
	jmp	.LBB0_236
.LBB0_236:
	movl	-2220(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_24
	jmp	.LBB0_25
.LBB0_22:
.Ltmp13:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-216(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movb	-217(%rbp), %al
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movb	-218(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -225(%rbp)
	jmp	.LBB0_26
.Ltmp14:
.LBB0_23:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-216(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movb	-217(%rbp), %al
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movb	-218(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -225(%rbp)
	jmp	.LBB0_26
.Ltmp15:
.LBB0_24:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-216(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movb	-217(%rbp), %al
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movb	-218(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -225(%rbp)
	jmp	.LBB0_26
.Ltmp16:
.LBB0_25:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -248(%rbp)
	movq	$29, -240(%rbp)
.Ltmp17:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-248(%rbp), %rdi
	movq	-240(%rbp), %rsi
	movq	$0, -256(%rbp)
	movq	$0, -264(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.8(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.9(%rip), %r8
	movl	$25, %r9d
	leaq	-264(%rbp), %rax
	movl	$40, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_26:
	movb	-225(%rbp), %al
	movb	%al, -85(%rbp)
	jmp	.LBB0_42
.Ltmp18:
.LBB0_27:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)
	movb	-73(%rbp), %al
	movb	%al, -273(%rbp)
	movb	-74(%rbp), %al
	movb	%al, -274(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -280(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -288(%rbp)
# %bb.28:
	movl	-288(%rbp), %eax
	movl	%eax, -2224(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_29
	jmp	.LBB0_233
.LBB0_233:
	movl	-2224(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_30
	jmp	.LBB0_234
.LBB0_234:
	movl	-2224(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_31
	jmp	.LBB0_32
.LBB0_29:
.Ltmp19:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-272(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movb	-273(%rbp), %al
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movb	-274(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -281(%rbp)
	jmp	.LBB0_33
.Ltmp20:
.LBB0_30:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-272(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movb	-273(%rbp), %al
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movb	-274(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -281(%rbp)
	jmp	.LBB0_33
.Ltmp21:
.LBB0_31:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-272(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movb	-273(%rbp), %al
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movb	-274(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -281(%rbp)
	jmp	.LBB0_33
.Ltmp22:
.LBB0_32:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -304(%rbp)
	movq	$29, -296(%rbp)
.Ltmp23:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-304(%rbp), %rdi
	movq	-296(%rbp), %rsi
	movq	$0, -312(%rbp)
	movq	$0, -320(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.12(%rip), %r8
	movl	$25, %r9d
	leaq	-320(%rbp), %rax
	movl	$40, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_33:
	movb	-281(%rbp), %al
	movb	%al, -85(%rbp)
	jmp	.LBB0_42
.Ltmp24:
.LBB0_34:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)
	movb	-73(%rbp), %al
	movb	%al, -329(%rbp)
	movb	-74(%rbp), %al
	movb	%al, -330(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -336(%rbp)
	movl	-336(%rbp), %eax
	movl	%eax, -344(%rbp)
# %bb.35:
	movl	-344(%rbp), %eax
	movl	%eax, -2228(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_36
	jmp	.LBB0_231
.LBB0_231:
	movl	-2228(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_37
	jmp	.LBB0_232
.LBB0_232:
	movl	-2228(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_38
	jmp	.LBB0_39
.LBB0_36:
.Ltmp25:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-328(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movb	-329(%rbp), %al
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movb	-330(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -337(%rbp)
	jmp	.LBB0_40
.Ltmp26:
.LBB0_37:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-328(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movb	-329(%rbp), %al
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movb	-330(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -337(%rbp)
	jmp	.LBB0_40
.Ltmp27:
.LBB0_38:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-328(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movb	-329(%rbp), %al
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movb	-330(%rbp), %dl
	lock		cmpxchgb	%dl, (%rcx)
	sete	%cl
	movb	%al, -337(%rbp)
	jmp	.LBB0_40
.Ltmp28:
.LBB0_39:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.13(%rip), %rax
	movq	%rax, -360(%rbp)
	movq	$29, -352(%rbp)
.Ltmp29:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-360(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movq	$0, -368(%rbp)
	movq	$0, -376(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.14(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.15(%rip), %r8
	movl	$25, %r9d
	leaq	-376(%rbp), %rax
	movl	$40, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_40:
	movb	-337(%rbp), %al
	movb	%al, -85(%rbp)
	jmp	.LBB0_42
.Ltmp30:
.LBB0_41:
	.loc	2 0 2                           # builtin.c3:0:2
	leaq	.L.str.16(%rip), %rax
	movq	%rax, -392(%rbp)
	movq	$29, -384(%rbp)
.Ltmp31:
	.loc	2 244 33                        # builtin.c3:244:33
	movq	-392(%rbp), %rdi
	movq	-384(%rbp), %rsi
	movq	$0, -400(%rbp)
	movq	$0, -408(%rbp)
	.loc	2 244 2                         # builtin.c3:244:2
	leaq	.L.str.17(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.18(%rip), %r8
	movl	$25, %r9d
	leaq	-408(%rbp), %rax
	movl	$40, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp32:
.LBB0_42:
	.loc	2 0 2                           # builtin.c3:0:2
	movb	-2193(%rbp), %al                # 1-byte Reload
	.loc	1 40 8 is_stmt 1                # atomic_nolibc.c3:40:8
	cmpb	-85(%rbp), %al
	jne	.LBB0_44
# %bb.43:
	.loc	1 40 99 is_stmt 0               # atomic_nolibc.c3:40:99
	movl	$1, %eax
	.loc	1 40 99 epilogue_begin          # atomic_nolibc.c3:40:99
	addq	$2480, %rsp                     # imm = 0x9B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_44:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB0_181
.Ltmp33:
.LBB0_45:
	.loc	1 42 16 is_stmt 1               # atomic_nolibc.c3:42:16
	movq	-24(%rbp), %rax
	movq	%rax, -416(%rbp)
	.loc	1 43 16                         # atomic_nolibc.c3:43:16
	movq	-40(%rbp), %rax
	movq	%rax, -2240(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_184
# %bb.46:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2240(%rbp), %rax               # 8-byte Reload
	.loc	1 43 16                         # atomic_nolibc.c3:43:16
	andq	$1, %rax
	movq	%rax, -2248(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_185
# %bb.47:
	.loc	1 0 16                          # atomic_nolibc.c3:0:16
	movq	-2168(%rbp), %rax               # 8-byte Reload
	movq	-2240(%rbp), %rcx               # 8-byte Reload
	.loc	1 43 16                         # atomic_nolibc.c3:43:16
	movw	(%rcx), %cx
	movw	%cx, -418(%rbp)
	.loc	1 44 16 is_stmt 1               # atomic_nolibc.c3:44:16
	movq	(%rax), %rax
	movq	%rax, -2256(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_186
# %bb.48:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2256(%rbp), %rax               # 8-byte Reload
	.loc	1 44 16                         # atomic_nolibc.c3:44:16
	andq	$1, %rax
	movq	%rax, -2264(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_187
# %bb.49:
	.loc	1 0 16                          # atomic_nolibc.c3:0:16
	movq	-2256(%rbp), %rax               # 8-byte Reload
	.loc	1 44 16                         # atomic_nolibc.c3:44:16
	movw	(%rax), %ax
	movw	%ax, -498(%rbp)
	.loc	1 45 8 is_stmt 1                # atomic_nolibc.c3:45:8
	movw	-418(%rbp), %ax
	movw	%ax, -2266(%rbp)                # 2-byte Spill
	movq	-416(%rbp), %rax
	movq	%rax, -584(%rbp)
	movw	-418(%rbp), %ax
	movw	%ax, -586(%rbp)
	movw	-498(%rbp), %ax
	movw	%ax, -588(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -592(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -596(%rbp)
	movl	-592(%rbp), %eax
	movl	%eax, -604(%rbp)
# %bb.50:
	.loc	1 0 8 is_stmt 0                 # atomic_nolibc.c3:0:8
	movl	-604(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	movq	%rcx, -2280(%rbp)               # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_86
# %bb.219:
	movq	-2280(%rbp), %rax               # 8-byte Reload
	leaq	.LJTI0_3(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_51:
	movq	-584(%rbp), %rax
	movq	%rax, -616(%rbp)
	movw	-586(%rbp), %ax
	movw	%ax, -618(%rbp)
	movw	-588(%rbp), %ax
	movw	%ax, -620(%rbp)
	movl	-596(%rbp), %eax
	movl	%eax, -624(%rbp)
	movl	-624(%rbp), %eax
	movl	%eax, -632(%rbp)
# %bb.52:
	movl	-632(%rbp), %eax
	movl	%eax, -2284(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_53
	jmp	.LBB0_228
.LBB0_228:
	movl	-2284(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_54
	jmp	.LBB0_229
.LBB0_229:
	movl	-2284(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_55
	jmp	.LBB0_56
.LBB0_53:
.Ltmp34:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-616(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movw	-618(%rbp), %ax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movw	-620(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -626(%rbp)
	jmp	.LBB0_57
.Ltmp35:
.LBB0_54:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-616(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movw	-618(%rbp), %ax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movw	-620(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -626(%rbp)
	jmp	.LBB0_57
.Ltmp36:
.LBB0_55:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-616(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movw	-618(%rbp), %ax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movw	-620(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -626(%rbp)
	jmp	.LBB0_57
.Ltmp37:
.LBB0_56:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.22(%rip), %rax
	movq	%rax, -648(%rbp)
	movq	$29, -640(%rbp)
.Ltmp38:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-648(%rbp), %rdi
	movq	-640(%rbp), %rsi
	movq	$0, -656(%rbp)
	movq	$0, -664(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.23(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.24(%rip), %r8
	movl	$25, %r9d
	leaq	-664(%rbp), %rax
	movl	$45, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_57:
	movw	-626(%rbp), %ax
	movw	%ax, -598(%rbp)
	jmp	.LBB0_87
.Ltmp39:
.LBB0_58:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-584(%rbp), %rax
	movq	%rax, -672(%rbp)
	movw	-586(%rbp), %ax
	movw	%ax, -674(%rbp)
	movw	-588(%rbp), %ax
	movw	%ax, -676(%rbp)
	movl	-596(%rbp), %eax
	movl	%eax, -680(%rbp)
	movl	-680(%rbp), %eax
	movl	%eax, -688(%rbp)
# %bb.59:
	movl	-688(%rbp), %eax
	movl	%eax, -2288(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_60
	jmp	.LBB0_226
.LBB0_226:
	movl	-2288(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_61
	jmp	.LBB0_227
.LBB0_227:
	movl	-2288(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_62
	jmp	.LBB0_63
.LBB0_60:
.Ltmp40:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-672(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movw	-674(%rbp), %ax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movw	-676(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -682(%rbp)
	jmp	.LBB0_64
.Ltmp41:
.LBB0_61:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-672(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movw	-674(%rbp), %ax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movw	-676(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -682(%rbp)
	jmp	.LBB0_64
.Ltmp42:
.LBB0_62:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-672(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movw	-674(%rbp), %ax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movw	-676(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -682(%rbp)
	jmp	.LBB0_64
.Ltmp43:
.LBB0_63:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.25(%rip), %rax
	movq	%rax, -704(%rbp)
	movq	$29, -696(%rbp)
.Ltmp44:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-704(%rbp), %rdi
	movq	-696(%rbp), %rsi
	movq	$0, -712(%rbp)
	movq	$0, -720(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.26(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.27(%rip), %r8
	movl	$25, %r9d
	leaq	-720(%rbp), %rax
	movl	$45, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_64:
	movw	-682(%rbp), %ax
	movw	%ax, -598(%rbp)
	jmp	.LBB0_87
.Ltmp45:
.LBB0_65:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-584(%rbp), %rax
	movq	%rax, -728(%rbp)
	movw	-586(%rbp), %ax
	movw	%ax, -730(%rbp)
	movw	-588(%rbp), %ax
	movw	%ax, -732(%rbp)
	movl	-596(%rbp), %eax
	movl	%eax, -736(%rbp)
	movl	-736(%rbp), %eax
	movl	%eax, -744(%rbp)
# %bb.66:
	movl	-744(%rbp), %eax
	movl	%eax, -2292(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_67
	jmp	.LBB0_224
.LBB0_224:
	movl	-2292(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_68
	jmp	.LBB0_225
.LBB0_225:
	movl	-2292(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_69
	jmp	.LBB0_70
.LBB0_67:
.Ltmp46:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-728(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movw	-730(%rbp), %ax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movw	-732(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -738(%rbp)
	jmp	.LBB0_71
.Ltmp47:
.LBB0_68:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-728(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movw	-730(%rbp), %ax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movw	-732(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -738(%rbp)
	jmp	.LBB0_71
.Ltmp48:
.LBB0_69:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-728(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movw	-730(%rbp), %ax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movw	-732(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -738(%rbp)
	jmp	.LBB0_71
.Ltmp49:
.LBB0_70:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.28(%rip), %rax
	movq	%rax, -760(%rbp)
	movq	$29, -752(%rbp)
.Ltmp50:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-760(%rbp), %rdi
	movq	-752(%rbp), %rsi
	movq	$0, -768(%rbp)
	movq	$0, -776(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.29(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.30(%rip), %r8
	movl	$25, %r9d
	leaq	-776(%rbp), %rax
	movl	$45, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_71:
	movw	-738(%rbp), %ax
	movw	%ax, -598(%rbp)
	jmp	.LBB0_87
.Ltmp51:
.LBB0_72:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-584(%rbp), %rax
	movq	%rax, -784(%rbp)
	movw	-586(%rbp), %ax
	movw	%ax, -786(%rbp)
	movw	-588(%rbp), %ax
	movw	%ax, -788(%rbp)
	movl	-596(%rbp), %eax
	movl	%eax, -792(%rbp)
	movl	-792(%rbp), %eax
	movl	%eax, -800(%rbp)
# %bb.73:
	movl	-800(%rbp), %eax
	movl	%eax, -2296(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_74
	jmp	.LBB0_222
.LBB0_222:
	movl	-2296(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_75
	jmp	.LBB0_223
.LBB0_223:
	movl	-2296(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_76
	jmp	.LBB0_77
.LBB0_74:
.Ltmp52:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-784(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movw	-786(%rbp), %ax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movw	-788(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -794(%rbp)
	jmp	.LBB0_78
.Ltmp53:
.LBB0_75:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-784(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movw	-786(%rbp), %ax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movw	-788(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -794(%rbp)
	jmp	.LBB0_78
.Ltmp54:
.LBB0_76:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-784(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movw	-786(%rbp), %ax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movw	-788(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -794(%rbp)
	jmp	.LBB0_78
.Ltmp55:
.LBB0_77:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.31(%rip), %rax
	movq	%rax, -816(%rbp)
	movq	$29, -808(%rbp)
.Ltmp56:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-816(%rbp), %rdi
	movq	-808(%rbp), %rsi
	movq	$0, -824(%rbp)
	movq	$0, -832(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.32(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.33(%rip), %r8
	movl	$25, %r9d
	leaq	-832(%rbp), %rax
	movl	$45, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_78:
	movw	-794(%rbp), %ax
	movw	%ax, -598(%rbp)
	jmp	.LBB0_87
.Ltmp57:
.LBB0_79:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-584(%rbp), %rax
	movq	%rax, -840(%rbp)
	movw	-586(%rbp), %ax
	movw	%ax, -842(%rbp)
	movw	-588(%rbp), %ax
	movw	%ax, -844(%rbp)
	movl	-596(%rbp), %eax
	movl	%eax, -848(%rbp)
	movl	-848(%rbp), %eax
	movl	%eax, -856(%rbp)
# %bb.80:
	movl	-856(%rbp), %eax
	movl	%eax, -2300(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_81
	jmp	.LBB0_220
.LBB0_220:
	movl	-2300(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_82
	jmp	.LBB0_221
.LBB0_221:
	movl	-2300(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_83
	jmp	.LBB0_84
.LBB0_81:
.Ltmp58:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-840(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movw	-842(%rbp), %ax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movw	-844(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -850(%rbp)
	jmp	.LBB0_85
.Ltmp59:
.LBB0_82:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-840(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movw	-842(%rbp), %ax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movw	-844(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -850(%rbp)
	jmp	.LBB0_85
.Ltmp60:
.LBB0_83:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-840(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movw	-842(%rbp), %ax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movw	-844(%rbp), %dx
	lock		cmpxchgw	%dx, (%rcx)
	sete	%cl
	movw	%ax, -850(%rbp)
	jmp	.LBB0_85
.Ltmp61:
.LBB0_84:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.34(%rip), %rax
	movq	%rax, -872(%rbp)
	movq	$29, -864(%rbp)
.Ltmp62:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-872(%rbp), %rdi
	movq	-864(%rbp), %rsi
	movq	$0, -880(%rbp)
	movq	$0, -888(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.35(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.36(%rip), %r8
	movl	$25, %r9d
	leaq	-888(%rbp), %rax
	movl	$45, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_85:
	movw	-850(%rbp), %ax
	movw	%ax, -598(%rbp)
	jmp	.LBB0_87
.Ltmp63:
.LBB0_86:
	.loc	2 0 2                           # builtin.c3:0:2
	leaq	.L.str.37(%rip), %rax
	movq	%rax, -904(%rbp)
	movq	$29, -896(%rbp)
.Ltmp64:
	.loc	2 244 33                        # builtin.c3:244:33
	movq	-904(%rbp), %rdi
	movq	-896(%rbp), %rsi
	movq	$0, -912(%rbp)
	movq	$0, -920(%rbp)
	.loc	2 244 2                         # builtin.c3:244:2
	leaq	.L.str.38(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.39(%rip), %r8
	movl	$25, %r9d
	leaq	-920(%rbp), %rax
	movl	$45, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp65:
.LBB0_87:
	.loc	2 0 2                           # builtin.c3:0:2
	movw	-2266(%rbp), %ax                # 2-byte Reload
	.loc	1 45 8 is_stmt 1                # atomic_nolibc.c3:45:8
	cmpw	-598(%rbp), %ax
	jne	.LBB0_89
# %bb.88:
	.loc	1 45 99 is_stmt 0               # atomic_nolibc.c3:45:99
	movl	$1, %eax
	.loc	1 45 99 epilogue_begin          # atomic_nolibc.c3:45:99
	addq	$2480, %rsp                     # imm = 0x9B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_89:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB0_181
.Ltmp66:
.LBB0_90:
	.loc	1 47 14 is_stmt 1               # atomic_nolibc.c3:47:14
	movq	-24(%rbp), %rax
	movq	%rax, -928(%rbp)
	.loc	1 48 14                         # atomic_nolibc.c3:48:14
	movq	-40(%rbp), %rax
	movq	%rax, -2312(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_188
# %bb.91:
	.loc	1 0 14 is_stmt 0                # atomic_nolibc.c3:0:14
	movq	-2312(%rbp), %rax               # 8-byte Reload
	.loc	1 48 14                         # atomic_nolibc.c3:48:14
	andq	$3, %rax
	movq	%rax, -2320(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_189
# %bb.92:
	.loc	1 0 14                          # atomic_nolibc.c3:0:14
	movq	-2168(%rbp), %rax               # 8-byte Reload
	movq	-2312(%rbp), %rcx               # 8-byte Reload
	.loc	1 48 14                         # atomic_nolibc.c3:48:14
	movl	(%rcx), %ecx
	movl	%ecx, -932(%rbp)
	.loc	1 49 14 is_stmt 1               # atomic_nolibc.c3:49:14
	movq	(%rax), %rax
	movq	%rax, -2328(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_190
# %bb.93:
	.loc	1 0 14 is_stmt 0                # atomic_nolibc.c3:0:14
	movq	-2328(%rbp), %rax               # 8-byte Reload
	.loc	1 49 14                         # atomic_nolibc.c3:49:14
	andq	$3, %rax
	movq	%rax, -2336(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_191
# %bb.94:
	.loc	1 0 14                          # atomic_nolibc.c3:0:14
	movq	-2328(%rbp), %rax               # 8-byte Reload
	.loc	1 49 14                         # atomic_nolibc.c3:49:14
	movl	(%rax), %eax
	movl	%eax, -1012(%rbp)
	.loc	1 50 8 is_stmt 1                # atomic_nolibc.c3:50:8
	movl	-932(%rbp), %eax
	movl	%eax, -2340(%rbp)               # 4-byte Spill
	movq	-928(%rbp), %rax
	movq	%rax, -1096(%rbp)
	movl	-932(%rbp), %eax
	movl	%eax, -1100(%rbp)
	movl	-1012(%rbp), %eax
	movl	%eax, -1104(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -1108(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -1112(%rbp)
	movl	-1108(%rbp), %eax
	movl	%eax, -1120(%rbp)
# %bb.95:
	.loc	1 0 8 is_stmt 0                 # atomic_nolibc.c3:0:8
	movl	-1120(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	movq	%rcx, -2352(%rbp)               # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_131
# %bb.208:
	movq	-2352(%rbp), %rax               # 8-byte Reload
	leaq	.LJTI0_2(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_96:
	movq	-1096(%rbp), %rax
	movq	%rax, -1128(%rbp)
	movl	-1100(%rbp), %eax
	movl	%eax, -1132(%rbp)
	movl	-1104(%rbp), %eax
	movl	%eax, -1136(%rbp)
	movl	-1112(%rbp), %eax
	movl	%eax, -1140(%rbp)
	movl	-1140(%rbp), %eax
	movl	%eax, -1148(%rbp)
# %bb.97:
	movl	-1148(%rbp), %eax
	movl	%eax, -2356(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_98
	jmp	.LBB0_217
.LBB0_217:
	movl	-2356(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_99
	jmp	.LBB0_218
.LBB0_218:
	movl	-2356(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_100
	jmp	.LBB0_101
.LBB0_98:
.Ltmp67:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1128(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movl	-1132(%rbp), %eax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movl	-1136(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1144(%rbp)
	jmp	.LBB0_102
.Ltmp68:
.LBB0_99:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1128(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movl	-1132(%rbp), %eax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movl	-1136(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1144(%rbp)
	jmp	.LBB0_102
.Ltmp69:
.LBB0_100:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1128(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movl	-1132(%rbp), %eax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movl	-1136(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1144(%rbp)
	jmp	.LBB0_102
.Ltmp70:
.LBB0_101:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.42(%rip), %rax
	movq	%rax, -1168(%rbp)
	movq	$29, -1160(%rbp)
.Ltmp71:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1168(%rbp), %rdi
	movq	-1160(%rbp), %rsi
	movq	$0, -1176(%rbp)
	movq	$0, -1184(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.43(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.44(%rip), %r8
	movl	$25, %r9d
	leaq	-1184(%rbp), %rax
	movl	$50, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_102:
	movl	-1144(%rbp), %eax
	movl	%eax, -1116(%rbp)
	jmp	.LBB0_132
.Ltmp72:
.LBB0_103:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1096(%rbp), %rax
	movq	%rax, -1192(%rbp)
	movl	-1100(%rbp), %eax
	movl	%eax, -1196(%rbp)
	movl	-1104(%rbp), %eax
	movl	%eax, -1200(%rbp)
	movl	-1112(%rbp), %eax
	movl	%eax, -1204(%rbp)
	movl	-1204(%rbp), %eax
	movl	%eax, -1212(%rbp)
# %bb.104:
	movl	-1212(%rbp), %eax
	movl	%eax, -2360(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_105
	jmp	.LBB0_215
.LBB0_215:
	movl	-2360(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_106
	jmp	.LBB0_216
.LBB0_216:
	movl	-2360(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_107
	jmp	.LBB0_108
.LBB0_105:
.Ltmp73:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1192(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movl	-1196(%rbp), %eax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movl	-1200(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1208(%rbp)
	jmp	.LBB0_109
.Ltmp74:
.LBB0_106:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1192(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movl	-1196(%rbp), %eax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movl	-1200(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1208(%rbp)
	jmp	.LBB0_109
.Ltmp75:
.LBB0_107:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1192(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movl	-1196(%rbp), %eax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movl	-1200(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1208(%rbp)
	jmp	.LBB0_109
.Ltmp76:
.LBB0_108:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.45(%rip), %rax
	movq	%rax, -1232(%rbp)
	movq	$29, -1224(%rbp)
.Ltmp77:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1232(%rbp), %rdi
	movq	-1224(%rbp), %rsi
	movq	$0, -1240(%rbp)
	movq	$0, -1248(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.46(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.47(%rip), %r8
	movl	$25, %r9d
	leaq	-1248(%rbp), %rax
	movl	$50, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_109:
	movl	-1208(%rbp), %eax
	movl	%eax, -1116(%rbp)
	jmp	.LBB0_132
.Ltmp78:
.LBB0_110:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1096(%rbp), %rax
	movq	%rax, -1256(%rbp)
	movl	-1100(%rbp), %eax
	movl	%eax, -1260(%rbp)
	movl	-1104(%rbp), %eax
	movl	%eax, -1264(%rbp)
	movl	-1112(%rbp), %eax
	movl	%eax, -1268(%rbp)
	movl	-1268(%rbp), %eax
	movl	%eax, -1276(%rbp)
# %bb.111:
	movl	-1276(%rbp), %eax
	movl	%eax, -2364(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_112
	jmp	.LBB0_213
.LBB0_213:
	movl	-2364(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_113
	jmp	.LBB0_214
.LBB0_214:
	movl	-2364(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_114
	jmp	.LBB0_115
.LBB0_112:
.Ltmp79:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1256(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movl	-1260(%rbp), %eax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movl	-1264(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1272(%rbp)
	jmp	.LBB0_116
.Ltmp80:
.LBB0_113:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1256(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movl	-1260(%rbp), %eax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movl	-1264(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1272(%rbp)
	jmp	.LBB0_116
.Ltmp81:
.LBB0_114:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1256(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movl	-1260(%rbp), %eax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movl	-1264(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1272(%rbp)
	jmp	.LBB0_116
.Ltmp82:
.LBB0_115:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.48(%rip), %rax
	movq	%rax, -1296(%rbp)
	movq	$29, -1288(%rbp)
.Ltmp83:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1296(%rbp), %rdi
	movq	-1288(%rbp), %rsi
	movq	$0, -1304(%rbp)
	movq	$0, -1312(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.49(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.50(%rip), %r8
	movl	$25, %r9d
	leaq	-1312(%rbp), %rax
	movl	$50, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_116:
	movl	-1272(%rbp), %eax
	movl	%eax, -1116(%rbp)
	jmp	.LBB0_132
.Ltmp84:
.LBB0_117:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1096(%rbp), %rax
	movq	%rax, -1320(%rbp)
	movl	-1100(%rbp), %eax
	movl	%eax, -1324(%rbp)
	movl	-1104(%rbp), %eax
	movl	%eax, -1328(%rbp)
	movl	-1112(%rbp), %eax
	movl	%eax, -1332(%rbp)
	movl	-1332(%rbp), %eax
	movl	%eax, -1340(%rbp)
# %bb.118:
	movl	-1340(%rbp), %eax
	movl	%eax, -2368(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_119
	jmp	.LBB0_211
.LBB0_211:
	movl	-2368(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_120
	jmp	.LBB0_212
.LBB0_212:
	movl	-2368(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_121
	jmp	.LBB0_122
.LBB0_119:
.Ltmp85:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1320(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movl	-1324(%rbp), %eax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movl	-1328(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1336(%rbp)
	jmp	.LBB0_123
.Ltmp86:
.LBB0_120:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1320(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movl	-1324(%rbp), %eax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movl	-1328(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1336(%rbp)
	jmp	.LBB0_123
.Ltmp87:
.LBB0_121:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1320(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movl	-1324(%rbp), %eax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movl	-1328(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1336(%rbp)
	jmp	.LBB0_123
.Ltmp88:
.LBB0_122:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.51(%rip), %rax
	movq	%rax, -1360(%rbp)
	movq	$29, -1352(%rbp)
.Ltmp89:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1360(%rbp), %rdi
	movq	-1352(%rbp), %rsi
	movq	$0, -1368(%rbp)
	movq	$0, -1376(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.52(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.53(%rip), %r8
	movl	$25, %r9d
	leaq	-1376(%rbp), %rax
	movl	$50, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_123:
	movl	-1336(%rbp), %eax
	movl	%eax, -1116(%rbp)
	jmp	.LBB0_132
.Ltmp90:
.LBB0_124:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1096(%rbp), %rax
	movq	%rax, -1384(%rbp)
	movl	-1100(%rbp), %eax
	movl	%eax, -1388(%rbp)
	movl	-1104(%rbp), %eax
	movl	%eax, -1392(%rbp)
	movl	-1112(%rbp), %eax
	movl	%eax, -1396(%rbp)
	movl	-1396(%rbp), %eax
	movl	%eax, -1404(%rbp)
# %bb.125:
	movl	-1404(%rbp), %eax
	movl	%eax, -2372(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_126
	jmp	.LBB0_209
.LBB0_209:
	movl	-2372(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_127
	jmp	.LBB0_210
.LBB0_210:
	movl	-2372(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_128
	jmp	.LBB0_129
.LBB0_126:
.Ltmp91:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1384(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movl	-1388(%rbp), %eax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movl	-1392(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1400(%rbp)
	jmp	.LBB0_130
.Ltmp92:
.LBB0_127:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1384(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movl	-1388(%rbp), %eax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movl	-1392(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1400(%rbp)
	jmp	.LBB0_130
.Ltmp93:
.LBB0_128:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1384(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movl	-1388(%rbp), %eax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movl	-1392(%rbp), %edx
	lock		cmpxchgl	%edx, (%rcx)
	sete	%cl
	movl	%eax, -1400(%rbp)
	jmp	.LBB0_130
.Ltmp94:
.LBB0_129:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.54(%rip), %rax
	movq	%rax, -1424(%rbp)
	movq	$29, -1416(%rbp)
.Ltmp95:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1424(%rbp), %rdi
	movq	-1416(%rbp), %rsi
	movq	$0, -1432(%rbp)
	movq	$0, -1440(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.55(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.56(%rip), %r8
	movl	$25, %r9d
	leaq	-1440(%rbp), %rax
	movl	$50, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_130:
	movl	-1400(%rbp), %eax
	movl	%eax, -1116(%rbp)
	jmp	.LBB0_132
.Ltmp96:
.LBB0_131:
	.loc	2 0 2                           # builtin.c3:0:2
	leaq	.L.str.57(%rip), %rax
	movq	%rax, -1456(%rbp)
	movq	$29, -1448(%rbp)
.Ltmp97:
	.loc	2 244 33                        # builtin.c3:244:33
	movq	-1456(%rbp), %rdi
	movq	-1448(%rbp), %rsi
	movq	$0, -1464(%rbp)
	movq	$0, -1472(%rbp)
	.loc	2 244 2                         # builtin.c3:244:2
	leaq	.L.str.58(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.59(%rip), %r8
	movl	$25, %r9d
	leaq	-1472(%rbp), %rax
	movl	$50, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp98:
.LBB0_132:
	.loc	2 0 2                           # builtin.c3:0:2
	movl	-2340(%rbp), %eax               # 4-byte Reload
	.loc	1 50 8 is_stmt 1                # atomic_nolibc.c3:50:8
	cmpl	-1116(%rbp), %eax
	jne	.LBB0_134
# %bb.133:
	.loc	1 50 99 is_stmt 0               # atomic_nolibc.c3:50:99
	movl	$1, %eax
	.loc	1 50 99 epilogue_begin          # atomic_nolibc.c3:50:99
	addq	$2480, %rsp                     # imm = 0x9B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_134:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB0_181
.Ltmp99:
.LBB0_135:
	.loc	1 53 16 is_stmt 1               # atomic_nolibc.c3:53:16
	movq	-24(%rbp), %rax
	movq	%rax, -1480(%rbp)
	.loc	1 54 16                         # atomic_nolibc.c3:54:16
	movq	-40(%rbp), %rax
	movq	%rax, -2384(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_192
# %bb.136:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2384(%rbp), %rax               # 8-byte Reload
	.loc	1 54 16                         # atomic_nolibc.c3:54:16
	andq	$7, %rax
	movq	%rax, -2392(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_193
# %bb.137:
	.loc	1 0 16                          # atomic_nolibc.c3:0:16
	movq	-2168(%rbp), %rax               # 8-byte Reload
	movq	-2384(%rbp), %rcx               # 8-byte Reload
	.loc	1 54 16                         # atomic_nolibc.c3:54:16
	movq	(%rcx), %rcx
	movq	%rcx, -1488(%rbp)
	.loc	1 55 16 is_stmt 1               # atomic_nolibc.c3:55:16
	movq	(%rax), %rax
	movq	%rax, -2400(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_194
# %bb.138:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2400(%rbp), %rax               # 8-byte Reload
	.loc	1 55 16                         # atomic_nolibc.c3:55:16
	andq	$7, %rax
	movq	%rax, -2408(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_195
# %bb.139:
	.loc	1 0 16                          # atomic_nolibc.c3:0:16
	movq	-2400(%rbp), %rax               # 8-byte Reload
	.loc	1 55 16                         # atomic_nolibc.c3:55:16
	movq	(%rax), %rax
	movq	%rax, -1560(%rbp)
	.loc	1 56 9 is_stmt 1                # atomic_nolibc.c3:56:9
	movq	-1488(%rbp), %rax
	movq	%rax, -2416(%rbp)               # 8-byte Spill
	movq	-1480(%rbp), %rax
	movq	%rax, -1640(%rbp)
	movq	-1488(%rbp), %rax
	movq	%rax, -1648(%rbp)
	movq	-1560(%rbp), %rax
	movq	%rax, -1656(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -1660(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -1664(%rbp)
	movl	-1660(%rbp), %eax
	movl	%eax, -1676(%rbp)
# %bb.140:
	.loc	1 0 9 is_stmt 0                 # atomic_nolibc.c3:0:9
	movl	-1676(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	movq	%rcx, -2424(%rbp)               # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_176
# %bb.197:
	movq	-2424(%rbp), %rax               # 8-byte Reload
	leaq	.LJTI0_1(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_141:
	movq	-1640(%rbp), %rax
	movq	%rax, -1688(%rbp)
	movq	-1648(%rbp), %rax
	movq	%rax, -1696(%rbp)
	movq	-1656(%rbp), %rax
	movq	%rax, -1704(%rbp)
	movl	-1664(%rbp), %eax
	movl	%eax, -1708(%rbp)
	movl	-1708(%rbp), %eax
	movl	%eax, -1724(%rbp)
# %bb.142:
	movl	-1724(%rbp), %eax
	movl	%eax, -2428(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_143
	jmp	.LBB0_206
.LBB0_206:
	movl	-2428(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_144
	jmp	.LBB0_207
.LBB0_207:
	movl	-2428(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_145
	jmp	.LBB0_146
.LBB0_143:
.Ltmp100:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1688(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movq	-1696(%rbp), %rax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movq	-1704(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1720(%rbp)
	jmp	.LBB0_147
.Ltmp101:
.LBB0_144:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1688(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movq	-1696(%rbp), %rax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movq	-1704(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1720(%rbp)
	jmp	.LBB0_147
.Ltmp102:
.LBB0_145:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1688(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movq	-1696(%rbp), %rax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movq	-1704(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1720(%rbp)
	jmp	.LBB0_147
.Ltmp103:
.LBB0_146:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.62(%rip), %rax
	movq	%rax, -1744(%rbp)
	movq	$29, -1736(%rbp)
.Ltmp104:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1744(%rbp), %rdi
	movq	-1736(%rbp), %rsi
	movq	$0, -1752(%rbp)
	movq	$0, -1760(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.63(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.64(%rip), %r8
	movl	$25, %r9d
	leaq	-1760(%rbp), %rax
	movl	$56, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_147:
	movq	-1720(%rbp), %rax
	movq	%rax, -1672(%rbp)
	jmp	.LBB0_177
.Ltmp105:
.LBB0_148:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1640(%rbp), %rax
	movq	%rax, -1768(%rbp)
	movq	-1648(%rbp), %rax
	movq	%rax, -1776(%rbp)
	movq	-1656(%rbp), %rax
	movq	%rax, -1784(%rbp)
	movl	-1664(%rbp), %eax
	movl	%eax, -1788(%rbp)
	movl	-1788(%rbp), %eax
	movl	%eax, -1804(%rbp)
# %bb.149:
	movl	-1804(%rbp), %eax
	movl	%eax, -2432(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_150
	jmp	.LBB0_204
.LBB0_204:
	movl	-2432(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_151
	jmp	.LBB0_205
.LBB0_205:
	movl	-2432(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_152
	jmp	.LBB0_153
.LBB0_150:
.Ltmp106:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1768(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movq	-1776(%rbp), %rax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movq	-1784(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1800(%rbp)
	jmp	.LBB0_154
.Ltmp107:
.LBB0_151:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1768(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movq	-1776(%rbp), %rax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movq	-1784(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1800(%rbp)
	jmp	.LBB0_154
.Ltmp108:
.LBB0_152:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1768(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movq	-1776(%rbp), %rax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movq	-1784(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1800(%rbp)
	jmp	.LBB0_154
.Ltmp109:
.LBB0_153:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.65(%rip), %rax
	movq	%rax, -1824(%rbp)
	movq	$29, -1816(%rbp)
.Ltmp110:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1824(%rbp), %rdi
	movq	-1816(%rbp), %rsi
	movq	$0, -1832(%rbp)
	movq	$0, -1840(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.66(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.67(%rip), %r8
	movl	$25, %r9d
	leaq	-1840(%rbp), %rax
	movl	$56, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_154:
	movq	-1800(%rbp), %rax
	movq	%rax, -1672(%rbp)
	jmp	.LBB0_177
.Ltmp111:
.LBB0_155:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1640(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-1648(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	-1656(%rbp), %rax
	movq	%rax, -1864(%rbp)
	movl	-1664(%rbp), %eax
	movl	%eax, -1868(%rbp)
	movl	-1868(%rbp), %eax
	movl	%eax, -1884(%rbp)
# %bb.156:
	movl	-1884(%rbp), %eax
	movl	%eax, -2436(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_157
	jmp	.LBB0_202
.LBB0_202:
	movl	-2436(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_158
	jmp	.LBB0_203
.LBB0_203:
	movl	-2436(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_159
	jmp	.LBB0_160
.LBB0_157:
.Ltmp112:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1848(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movq	-1856(%rbp), %rax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movq	-1864(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1880(%rbp)
	jmp	.LBB0_161
.Ltmp113:
.LBB0_158:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1848(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movq	-1856(%rbp), %rax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movq	-1864(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1880(%rbp)
	jmp	.LBB0_161
.Ltmp114:
.LBB0_159:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1848(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movq	-1856(%rbp), %rax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movq	-1864(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1880(%rbp)
	jmp	.LBB0_161
.Ltmp115:
.LBB0_160:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.68(%rip), %rax
	movq	%rax, -1904(%rbp)
	movq	$29, -1896(%rbp)
.Ltmp116:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1904(%rbp), %rdi
	movq	-1896(%rbp), %rsi
	movq	$0, -1912(%rbp)
	movq	$0, -1920(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.69(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.70(%rip), %r8
	movl	$25, %r9d
	leaq	-1920(%rbp), %rax
	movl	$56, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_161:
	movq	-1880(%rbp), %rax
	movq	%rax, -1672(%rbp)
	jmp	.LBB0_177
.Ltmp117:
.LBB0_162:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1640(%rbp), %rax
	movq	%rax, -1928(%rbp)
	movq	-1648(%rbp), %rax
	movq	%rax, -1936(%rbp)
	movq	-1656(%rbp), %rax
	movq	%rax, -1944(%rbp)
	movl	-1664(%rbp), %eax
	movl	%eax, -1948(%rbp)
	movl	-1948(%rbp), %eax
	movl	%eax, -1964(%rbp)
# %bb.163:
	movl	-1964(%rbp), %eax
	movl	%eax, -2440(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_164
	jmp	.LBB0_200
.LBB0_200:
	movl	-2440(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_165
	jmp	.LBB0_201
.LBB0_201:
	movl	-2440(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_166
	jmp	.LBB0_167
.LBB0_164:
.Ltmp118:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-1928(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movq	-1936(%rbp), %rax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movq	-1944(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1960(%rbp)
	jmp	.LBB0_168
.Ltmp119:
.LBB0_165:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-1928(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movq	-1936(%rbp), %rax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movq	-1944(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1960(%rbp)
	jmp	.LBB0_168
.Ltmp120:
.LBB0_166:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-1928(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movq	-1936(%rbp), %rax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movq	-1944(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -1960(%rbp)
	jmp	.LBB0_168
.Ltmp121:
.LBB0_167:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.71(%rip), %rax
	movq	%rax, -1984(%rbp)
	movq	$29, -1976(%rbp)
.Ltmp122:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-1984(%rbp), %rdi
	movq	-1976(%rbp), %rsi
	movq	$0, -1992(%rbp)
	movq	$0, -2000(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.72(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.73(%rip), %r8
	movl	$25, %r9d
	leaq	-2000(%rbp), %rax
	movl	$56, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_168:
	movq	-1960(%rbp), %rax
	movq	%rax, -1672(%rbp)
	jmp	.LBB0_177
.Ltmp123:
.LBB0_169:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-1640(%rbp), %rax
	movq	%rax, -2008(%rbp)
	movq	-1648(%rbp), %rax
	movq	%rax, -2016(%rbp)
	movq	-1656(%rbp), %rax
	movq	%rax, -2024(%rbp)
	movl	-1664(%rbp), %eax
	movl	%eax, -2028(%rbp)
	movl	-2028(%rbp), %eax
	movl	%eax, -2044(%rbp)
# %bb.170:
	movl	-2044(%rbp), %eax
	movl	%eax, -2444(%rbp)               # 4-byte Spill
	subl	$2, %eax
	je	.LBB0_171
	jmp	.LBB0_198
.LBB0_198:
	movl	-2444(%rbp), %eax               # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_172
	jmp	.LBB0_199
.LBB0_199:
	movl	-2444(%rbp), %eax               # 4-byte Reload
	subl	$6, %eax
	je	.LBB0_173
	jmp	.LBB0_174
.LBB0_171:
.Ltmp124:
	.loc	1 10 66 is_stmt 1               # atomic_nolibc.c3:10:66
	movq	-2008(%rbp), %rcx
	.loc	1 10 71 is_stmt 0               # atomic_nolibc.c3:10:71
	movq	-2016(%rbp), %rax
	.loc	1 10 81                         # atomic_nolibc.c3:10:81
	movq	-2024(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -2040(%rbp)
	jmp	.LBB0_175
.Ltmp125:
.LBB0_172:
	.loc	1 11 66 is_stmt 1               # atomic_nolibc.c3:11:66
	movq	-2008(%rbp), %rcx
	.loc	1 11 71 is_stmt 0               # atomic_nolibc.c3:11:71
	movq	-2016(%rbp), %rax
	.loc	1 11 81                         # atomic_nolibc.c3:11:81
	movq	-2024(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -2040(%rbp)
	jmp	.LBB0_175
.Ltmp126:
.LBB0_173:
	.loc	1 12 73 is_stmt 1               # atomic_nolibc.c3:12:73
	movq	-2008(%rbp), %rcx
	.loc	1 12 78 is_stmt 0               # atomic_nolibc.c3:12:78
	movq	-2016(%rbp), %rax
	.loc	1 12 88                         # atomic_nolibc.c3:12:88
	movq	-2024(%rbp), %rdx
	lock		cmpxchgq	%rdx, (%rcx)
	sete	%cl
	movq	%rax, -2040(%rbp)
	jmp	.LBB0_175
.Ltmp127:
.LBB0_174:
	.loc	1 0 88                          # atomic_nolibc.c3:0:88
	leaq	.L.str.74(%rip), %rax
	movq	%rax, -2064(%rbp)
	movq	$29, -2056(%rbp)
.Ltmp128:
	.loc	2 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-2064(%rbp), %rdi
	movq	-2056(%rbp), %rsi
	movq	$0, -2072(%rbp)
	movq	$0, -2080(%rbp)
	.loc	2 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.75(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.76(%rip), %r8
	movl	$25, %r9d
	leaq	-2080(%rbp), %rax
	movl	$56, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_175:
	movq	-2040(%rbp), %rax
	movq	%rax, -1672(%rbp)
	jmp	.LBB0_177
.Ltmp129:
.LBB0_176:
	.loc	2 0 2                           # builtin.c3:0:2
	leaq	.L.str.77(%rip), %rax
	movq	%rax, -2096(%rbp)
	movq	$29, -2088(%rbp)
.Ltmp130:
	.loc	2 244 33                        # builtin.c3:244:33
	movq	-2096(%rbp), %rdi
	movq	-2088(%rbp), %rsi
	movq	$0, -2104(%rbp)
	movq	$0, -2112(%rbp)
	.loc	2 244 2                         # builtin.c3:244:2
	leaq	.L.str.78(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.79(%rip), %r8
	movl	$25, %r9d
	leaq	-2112(%rbp), %rax
	movl	$56, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp131:
.LBB0_177:
	.loc	2 0 2                           # builtin.c3:0:2
	movq	-2416(%rbp), %rax               # 8-byte Reload
	.loc	1 56 9 is_stmt 1                # atomic_nolibc.c3:56:9
	cmpq	-1672(%rbp), %rax
	jne	.LBB0_179
# %bb.178:
	.loc	1 56 100 is_stmt 0              # atomic_nolibc.c3:56:100
	movl	$1, %eax
	.loc	1 56 100 epilogue_begin         # atomic_nolibc.c3:56:100
	addq	$2480, %rsp                     # imm = 0x9B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_179:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB0_181
.Ltmp132:
.LBB0_180:
	.loc	1 0 100                         # atomic_nolibc.c3:0:100
	leaq	.L.str.80(%rip), %rax
	movq	%rax, -2128(%rbp)
	movq	$48, -2120(%rbp)
.Ltmp133:
	.loc	2 61 68 is_stmt 1               # builtin.c3:61:68
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -2136(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -2144(%rbp)
	movq	-2128(%rbp), %rdi
	movq	-2120(%rbp), %rsi
	leaq	-2144(%rbp), %rax
	movq	%rax, -2160(%rbp)
	movq	$1, -2152(%rbp)
	.loc	2 244 2                         # builtin.c3:244:2
	leaq	.L.str.81(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.82(%rip), %r8
	movl	$25, %r9d
	leaq	-2160(%rbp), %rax
	movl	$61, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp134:
.LBB0_181:
	.loc	1 63 9                          # atomic_nolibc.c3:63:9
	xorl	%eax, %eax
	.loc	1 63 9 epilogue_begin is_stmt 0 # atomic_nolibc.c3:63:9
	addq	$2480, %rsp                     # imm = 0x9B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_182:
	.cfi_def_cfa %rbp, 16
.Ltmp135:
	.loc	1 38 15 is_stmt 1               # atomic_nolibc.c3:38:15
	leaq	.panic_msg(%rip), %rdi
	movl	$56, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$38, (%rsp)
	callq	*(%rax)
.LBB0_183:
	.loc	1 39 15                         # atomic_nolibc.c3:39:15
	leaq	.panic_msg.1(%rip), %rdi
	movl	$55, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$39, (%rsp)
	callq	*(%rax)
.Ltmp136:
.LBB0_184:
	.loc	1 43 16                         # atomic_nolibc.c3:43:16
	leaq	.panic_msg.19(%rip), %rdi
	movl	$57, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$43, (%rsp)
	callq	*(%rax)
.LBB0_185:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2248(%rbp), %rcx               # 8-byte Reload
	movq	$2, -432(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -440(%rbp)
	movq	%rax, -472(%rbp)
	leaq	-432(%rbp), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -456(%rbp)
	leaq	-440(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	$2, -488(%rbp)
	.loc	1 43 16                         # atomic_nolibc.c3:43:16
	leaq	.panic_msg.20(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	leaq	-496(%rbp), %rax
	movl	$43, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_186:
	.loc	1 44 16 is_stmt 1               # atomic_nolibc.c3:44:16
	leaq	.panic_msg.21(%rip), %rdi
	movl	$56, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$44, (%rsp)
	callq	*(%rax)
.LBB0_187:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2264(%rbp), %rcx               # 8-byte Reload
	movq	$2, -512(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -520(%rbp)
	movq	%rax, -552(%rbp)
	leaq	-512(%rbp), %rcx
	movq	%rcx, -560(%rbp)
	movq	%rax, -536(%rbp)
	leaq	-520(%rbp), %rax
	movq	%rax, -544(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	$2, -568(%rbp)
	.loc	1 44 16                         # atomic_nolibc.c3:44:16
	leaq	.panic_msg.20(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	leaq	-576(%rbp), %rax
	movl	$44, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp137:
.LBB0_188:
	.loc	1 48 14 is_stmt 1               # atomic_nolibc.c3:48:14
	leaq	.panic_msg.40(%rip), %rdi
	movl	$55, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$48, (%rsp)
	callq	*(%rax)
.LBB0_189:
	.loc	1 0 14 is_stmt 0                # atomic_nolibc.c3:0:14
	movq	-2320(%rbp), %rcx               # 8-byte Reload
	movq	$4, -944(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -952(%rbp)
	movq	%rax, -984(%rbp)
	leaq	-944(%rbp), %rcx
	movq	%rcx, -992(%rbp)
	movq	%rax, -968(%rbp)
	leaq	-952(%rbp), %rax
	movq	%rax, -976(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	$2, -1000(%rbp)
	.loc	1 48 14                         # atomic_nolibc.c3:48:14
	leaq	.panic_msg.20(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	leaq	-1008(%rbp), %rax
	movl	$48, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_190:
	.loc	1 49 14 is_stmt 1               # atomic_nolibc.c3:49:14
	leaq	.panic_msg.41(%rip), %rdi
	movl	$54, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$49, (%rsp)
	callq	*(%rax)
.LBB0_191:
	.loc	1 0 14 is_stmt 0                # atomic_nolibc.c3:0:14
	movq	-2336(%rbp), %rcx               # 8-byte Reload
	movq	$4, -1024(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1032(%rbp)
	movq	%rax, -1064(%rbp)
	leaq	-1024(%rbp), %rcx
	movq	%rcx, -1072(%rbp)
	movq	%rax, -1048(%rbp)
	leaq	-1032(%rbp), %rax
	movq	%rax, -1056(%rbp)
	leaq	-1072(%rbp), %rax
	movq	%rax, -1088(%rbp)
	movq	$2, -1080(%rbp)
	.loc	1 49 14                         # atomic_nolibc.c3:49:14
	leaq	.panic_msg.20(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	leaq	-1088(%rbp), %rax
	movl	$49, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp138:
.LBB0_192:
	.loc	1 54 16 is_stmt 1               # atomic_nolibc.c3:54:16
	leaq	.panic_msg.60(%rip), %rdi
	movl	$56, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$54, (%rsp)
	callq	*(%rax)
.LBB0_193:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2392(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1496(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1504(%rbp)
	movq	%rax, -1528(%rbp)
	leaq	-1496(%rbp), %rcx
	movq	%rcx, -1536(%rbp)
	movq	%rax, -1512(%rbp)
	leaq	-1504(%rbp), %rax
	movq	%rax, -1520(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	$2, -1544(%rbp)
	.loc	1 54 16                         # atomic_nolibc.c3:54:16
	leaq	.panic_msg.20(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	leaq	-1552(%rbp), %rax
	movl	$54, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_194:
	.loc	1 55 16 is_stmt 1               # atomic_nolibc.c3:55:16
	leaq	.panic_msg.61(%rip), %rdi
	movl	$55, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$55, (%rsp)
	callq	*(%rax)
.LBB0_195:
	.loc	1 0 16 is_stmt 0                # atomic_nolibc.c3:0:16
	movq	-2408(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1568(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1576(%rbp)
	movq	%rax, -1608(%rbp)
	leaq	-1568(%rbp), %rcx
	movq	%rcx, -1616(%rbp)
	movq	%rax, -1592(%rbp)
	leaq	-1576(%rbp), %rax
	movq	%rax, -1600(%rbp)
	leaq	-1616(%rbp), %rax
	movq	%rax, -1632(%rbp)
	movq	$2, -1624(%rbp)
	.loc	1 55 16                         # atomic_nolibc.c3:55:16
	leaq	.panic_msg.20(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$25, %r9d
	leaq	-1632(%rbp), %rax
	movl	$55, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp139:
.Lfunc_end0:
	.size	__atomic_compare_exchange, .Lfunc_end0-__atomic_compare_exchange
	.cfi_endproc
	.section	.rodata.__atomic_compare_exchange,"aG",@progbits,__atomic_compare_exchange,comdat
	.p2align	2, 0x0
.LJTI0_0:
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_45-.LJTI0_0
	.long	.LBB0_180-.LJTI0_0
	.long	.LBB0_90-.LJTI0_0
	.long	.LBB0_180-.LJTI0_0
	.long	.LBB0_180-.LJTI0_0
	.long	.LBB0_180-.LJTI0_0
	.long	.LBB0_135-.LJTI0_0
.LJTI0_1:
	.long	.LBB0_141-.LJTI0_1
	.long	.LBB0_148-.LJTI0_1
	.long	.LBB0_155-.LJTI0_1
	.long	.LBB0_162-.LJTI0_1
	.long	.LBB0_169-.LJTI0_1
.LJTI0_2:
	.long	.LBB0_96-.LJTI0_2
	.long	.LBB0_103-.LJTI0_2
	.long	.LBB0_110-.LJTI0_2
	.long	.LBB0_117-.LJTI0_2
	.long	.LBB0_124-.LJTI0_2
.LJTI0_3:
	.long	.LBB0_51-.LJTI0_3
	.long	.LBB0_58-.LJTI0_3
	.long	.LBB0_65-.LJTI0_3
	.long	.LBB0_72-.LJTI0_3
	.long	.LBB0_79-.LJTI0_3
.LJTI0_4:
	.long	.LBB0_6-.LJTI0_4
	.long	.LBB0_13-.LJTI0_4
	.long	.LBB0_20-.LJTI0_4
	.long	.LBB0_27-.LJTI0_4
	.long	.LBB0_34-.LJTI0_4
                                        # -- End function
	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Dereference of null pointer, '(char*)expected' was null."
	.size	.panic_msg, 57

	.type	.file,@object                   # @.file
.file:
	.asciz	"atomic_nolibc.c3"
	.size	.file, 17

	.type	.func,@object                   # @.func
.func:
	.asciz	"__atomic_compare_exchange"
	.size	.func, 26

	.type	.panic_msg.1,@object            # @.panic_msg.1
.panic_msg.1:
	.asciz	"Dereference of null pointer, '(char*)desired' was null."
	.size	.panic_msg.1, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.3, 26

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.7, 30

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.10, 30

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.11, 17

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.12, 26

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.13, 30

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.14, 17

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.15, 26

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Unrecognized success ordering"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.17, 17

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.18, 26

	.type	.panic_msg.19,@object           # @.panic_msg.19
	.section	.rodata,"a",@progbits
.panic_msg.19:
	.asciz	"Dereference of null pointer, '(short*)expected' was null."
	.size	.panic_msg.19, 58

	.type	$ct.ulong,@object               # @"$ct.ulong"
	.section	".data.$ct.ulong","awG",@progbits,"$ct.ulong",comdat
	.weak	$ct.ulong
	.p2align	3, 0x0
$ct.ulong:
	.byte	3                               # 0x3
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.ulong, 48

	.type	.panic_msg.20,@object           # @.panic_msg.20
	.section	.rodata,"a",@progbits
.panic_msg.20:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.20, 95

	.type	.panic_msg.21,@object           # @.panic_msg.21
.panic_msg.21:
	.asciz	"Dereference of null pointer, '(short*)desired' was null."
	.size	.panic_msg.21, 57

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.22, 30

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.23, 17

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.24, 26

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.25, 30

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.26, 17

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.27, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.28, 30

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.29, 17

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.30, 26

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.31, 30

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.32, 17

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.33, 26

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.34, 30

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.35, 17

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.36, 26

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Unrecognized success ordering"
	.size	.L.str.37, 30

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.38, 17

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.39, 26

	.type	.panic_msg.40,@object           # @.panic_msg.40
	.section	.rodata,"a",@progbits
.panic_msg.40:
	.asciz	"Dereference of null pointer, '(int*)expected' was null."
	.size	.panic_msg.40, 56

	.type	.panic_msg.41,@object           # @.panic_msg.41
.panic_msg.41:
	.asciz	"Dereference of null pointer, '(int*)desired' was null."
	.size	.panic_msg.41, 55

	.type	.L.str.42,@object               # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.42, 30

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.43, 17

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.44, 26

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.45, 30

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.46, 17

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.47, 26

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.48, 30

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.49, 17

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.50, 26

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.51, 30

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.52, 17

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.53, 26

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.54, 30

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.55, 17

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.56, 26

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Unrecognized success ordering"
	.size	.L.str.57, 30

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.58, 17

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.59, 26

	.type	.panic_msg.60,@object           # @.panic_msg.60
	.section	.rodata,"a",@progbits
.panic_msg.60:
	.asciz	"Dereference of null pointer, '(long*)expected' was null."
	.size	.panic_msg.60, 57

	.type	.panic_msg.61,@object           # @.panic_msg.61
.panic_msg.61:
	.asciz	"Dereference of null pointer, '(long*)desired' was null."
	.size	.panic_msg.61, 56

	.type	.L.str.62,@object               # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.62, 30

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.63, 17

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.64, 26

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.65, 30

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.66, 17

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.67, 26

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.68, 30

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.69, 17

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.70, 26

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.71, 30

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.72, 17

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.73, 26

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"Unrecognized failure ordering"
	.size	.L.str.74, 30

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.75, 17

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.76, 26

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Unrecognized success ordering"
	.size	.L.str.77, 30

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.78, 17

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.79, 26

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Unsuported size (%d) for atomic_compare_exchange"
	.size	.L.str.80, 49

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"atomic_nolibc.c3"
	.size	.L.str.81, 17

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"__atomic_compare_exchange"
	.size	.L.str.82, 26

	.type	$ct.int,@object                 # @"$ct.int"
	.section	".data.$ct.int","awG",@progbits,"$ct.int",comdat
	.weak	$ct.int
	.p2align	3, 0x0
$ct.int:
	.byte	2                               # 0x2
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.int, 48

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.ascii	"\264B"                         # DW_AT_GNU_pubnames
	.byte	25                              # DW_FORM_flag_present
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x822 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x36:0xc DW_TAG_subprogram
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x42:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x4e:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x5a:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x66:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x72:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x7e:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x8a:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x96:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xa2:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xae:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xba:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xc6:0xc DW_TAG_subprogram
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xd2:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xde:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xea:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xf6:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x102:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x10e:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x11a:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x126:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x132:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x13e:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x14a:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x156:0xc DW_TAG_subprogram
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x162:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x16e:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x17a:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x186:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x192:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x19e:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1aa:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1b6:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1c2:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1ce:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1da:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1e6:0xc DW_TAG_subprogram
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1f2:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x1fe:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x20a:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x216:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x222:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x22e:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x23a:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x246:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x252:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x25e:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x26a:0xc DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x276:0x52d DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1955                            # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x293:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1955                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2a1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1973                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2af:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1973                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2bd:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1973                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2cb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	84
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1955                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x2d9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	1955                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2e7:0x127 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	6                               # Abbrev [6] 0x2ec:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	2019                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2fb:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	71
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x309:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	70
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x317:0xf6 DW_TAG_inlined_subroutine
	.long	54                              # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp32-.Ltmp1                  # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x32b:0x29 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	22                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x33f:0x14 DW_TAG_inlined_subroutine
	.long	66                              # DW_AT_abstract_origin
	.quad	.Ltmp5                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x354:0x29 DW_TAG_inlined_subroutine
	.long	78                              # DW_AT_abstract_origin
	.quad	.Ltmp7                          # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp7                  # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	23                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x368:0x14 DW_TAG_inlined_subroutine
	.long	90                              # DW_AT_abstract_origin
	.quad	.Ltmp11                         # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x37d:0x29 DW_TAG_inlined_subroutine
	.long	102                             # DW_AT_abstract_origin
	.quad	.Ltmp13                         # DW_AT_low_pc
	.long	.Ltmp18-.Ltmp13                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	24                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x391:0x14 DW_TAG_inlined_subroutine
	.long	114                             # DW_AT_abstract_origin
	.quad	.Ltmp17                         # DW_AT_low_pc
	.long	.Ltmp18-.Ltmp17                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3a6:0x29 DW_TAG_inlined_subroutine
	.long	126                             # DW_AT_abstract_origin
	.quad	.Ltmp19                         # DW_AT_low_pc
	.long	.Ltmp24-.Ltmp19                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	55                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x3ba:0x14 DW_TAG_inlined_subroutine
	.long	138                             # DW_AT_abstract_origin
	.quad	.Ltmp23                         # DW_AT_low_pc
	.long	.Ltmp24-.Ltmp23                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3cf:0x29 DW_TAG_inlined_subroutine
	.long	150                             # DW_AT_abstract_origin
	.quad	.Ltmp25                         # DW_AT_low_pc
	.long	.Ltmp30-.Ltmp25                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	26                              # DW_AT_call_line
	.byte	54                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x3e3:0x14 DW_TAG_inlined_subroutine
	.long	162                             # DW_AT_abstract_origin
	.quad	.Ltmp29                         # DW_AT_low_pc
	.long	.Ltmp30-.Ltmp29                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x3f8:0x14 DW_TAG_inlined_subroutine
	.long	174                             # DW_AT_abstract_origin
	.quad	.Ltmp31                         # DW_AT_low_pc
	.long	.Ltmp32-.Ltmp31                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	27                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x40e:0x12a DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	6                               # Abbrev [6] 0x413:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340|"
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	2039                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x423:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\336|"
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	2052                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x432:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\216|"
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	2052                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x441:0xf6 DW_TAG_inlined_subroutine
	.long	198                             # DW_AT_abstract_origin
	.quad	.Ltmp34                         # DW_AT_low_pc
	.long	.Ltmp65-.Ltmp34                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x455:0x29 DW_TAG_inlined_subroutine
	.long	186                             # DW_AT_abstract_origin
	.quad	.Ltmp34                         # DW_AT_low_pc
	.long	.Ltmp39-.Ltmp34                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	22                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x469:0x14 DW_TAG_inlined_subroutine
	.long	210                             # DW_AT_abstract_origin
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp39-.Ltmp38                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x47e:0x29 DW_TAG_inlined_subroutine
	.long	222                             # DW_AT_abstract_origin
	.quad	.Ltmp40                         # DW_AT_low_pc
	.long	.Ltmp45-.Ltmp40                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	23                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x492:0x14 DW_TAG_inlined_subroutine
	.long	234                             # DW_AT_abstract_origin
	.quad	.Ltmp44                         # DW_AT_low_pc
	.long	.Ltmp45-.Ltmp44                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4a7:0x29 DW_TAG_inlined_subroutine
	.long	246                             # DW_AT_abstract_origin
	.quad	.Ltmp46                         # DW_AT_low_pc
	.long	.Ltmp51-.Ltmp46                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	24                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x4bb:0x14 DW_TAG_inlined_subroutine
	.long	258                             # DW_AT_abstract_origin
	.quad	.Ltmp50                         # DW_AT_low_pc
	.long	.Ltmp51-.Ltmp50                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4d0:0x29 DW_TAG_inlined_subroutine
	.long	270                             # DW_AT_abstract_origin
	.quad	.Ltmp52                         # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp52                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	55                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x4e4:0x14 DW_TAG_inlined_subroutine
	.long	282                             # DW_AT_abstract_origin
	.quad	.Ltmp56                         # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp56                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x4f9:0x29 DW_TAG_inlined_subroutine
	.long	294                             # DW_AT_abstract_origin
	.quad	.Ltmp58                         # DW_AT_low_pc
	.long	.Ltmp63-.Ltmp58                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	26                              # DW_AT_call_line
	.byte	54                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x50d:0x14 DW_TAG_inlined_subroutine
	.long	306                             # DW_AT_abstract_origin
	.quad	.Ltmp62                         # DW_AT_low_pc
	.long	.Ltmp63-.Ltmp62                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x522:0x14 DW_TAG_inlined_subroutine
	.long	318                             # DW_AT_abstract_origin
	.quad	.Ltmp64                         # DW_AT_low_pc
	.long	.Ltmp65-.Ltmp64                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	27                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x538:0x12a DW_TAG_lexical_block
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	6                               # Abbrev [6] 0x53d:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340x"
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	2059                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x54d:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334x"
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	1966                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x55c:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\214x"
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	1966                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x56b:0xf6 DW_TAG_inlined_subroutine
	.long	342                             # DW_AT_abstract_origin
	.quad	.Ltmp67                         # DW_AT_low_pc
	.long	.Ltmp98-.Ltmp67                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x57f:0x29 DW_TAG_inlined_subroutine
	.long	330                             # DW_AT_abstract_origin
	.quad	.Ltmp67                         # DW_AT_low_pc
	.long	.Ltmp72-.Ltmp67                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	22                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x593:0x14 DW_TAG_inlined_subroutine
	.long	354                             # DW_AT_abstract_origin
	.quad	.Ltmp71                         # DW_AT_low_pc
	.long	.Ltmp72-.Ltmp71                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5a8:0x29 DW_TAG_inlined_subroutine
	.long	366                             # DW_AT_abstract_origin
	.quad	.Ltmp73                         # DW_AT_low_pc
	.long	.Ltmp78-.Ltmp73                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	23                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x5bc:0x14 DW_TAG_inlined_subroutine
	.long	378                             # DW_AT_abstract_origin
	.quad	.Ltmp77                         # DW_AT_low_pc
	.long	.Ltmp78-.Ltmp77                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5d1:0x29 DW_TAG_inlined_subroutine
	.long	390                             # DW_AT_abstract_origin
	.quad	.Ltmp79                         # DW_AT_low_pc
	.long	.Ltmp84-.Ltmp79                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	24                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x5e5:0x14 DW_TAG_inlined_subroutine
	.long	402                             # DW_AT_abstract_origin
	.quad	.Ltmp83                         # DW_AT_low_pc
	.long	.Ltmp84-.Ltmp83                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5fa:0x29 DW_TAG_inlined_subroutine
	.long	414                             # DW_AT_abstract_origin
	.quad	.Ltmp85                         # DW_AT_low_pc
	.long	.Ltmp90-.Ltmp85                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	55                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x60e:0x14 DW_TAG_inlined_subroutine
	.long	426                             # DW_AT_abstract_origin
	.quad	.Ltmp89                         # DW_AT_low_pc
	.long	.Ltmp90-.Ltmp89                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x623:0x29 DW_TAG_inlined_subroutine
	.long	438                             # DW_AT_abstract_origin
	.quad	.Ltmp91                         # DW_AT_low_pc
	.long	.Ltmp96-.Ltmp91                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	26                              # DW_AT_call_line
	.byte	54                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x637:0x14 DW_TAG_inlined_subroutine
	.long	450                             # DW_AT_abstract_origin
	.quad	.Ltmp95                         # DW_AT_low_pc
	.long	.Ltmp96-.Ltmp95                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x64c:0x14 DW_TAG_inlined_subroutine
	.long	462                             # DW_AT_abstract_origin
	.quad	.Ltmp97                         # DW_AT_low_pc
	.long	.Ltmp98-.Ltmp97                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	27                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x662:0x12c DW_TAG_lexical_block
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	6                               # Abbrev [6] 0x667:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270t"
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	2072                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x677:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260t"
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	2085                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x687:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350s"
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	2085                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x697:0xf6 DW_TAG_inlined_subroutine
	.long	486                             # DW_AT_abstract_origin
	.quad	.Ltmp100                        # DW_AT_low_pc
	.long	.Ltmp131-.Ltmp100               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	56                              # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x6ab:0x29 DW_TAG_inlined_subroutine
	.long	474                             # DW_AT_abstract_origin
	.quad	.Ltmp100                        # DW_AT_low_pc
	.long	.Ltmp105-.Ltmp100               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	22                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x6bf:0x14 DW_TAG_inlined_subroutine
	.long	498                             # DW_AT_abstract_origin
	.quad	.Ltmp104                        # DW_AT_low_pc
	.long	.Ltmp105-.Ltmp104               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6d4:0x29 DW_TAG_inlined_subroutine
	.long	510                             # DW_AT_abstract_origin
	.quad	.Ltmp106                        # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp106               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	23                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x6e8:0x14 DW_TAG_inlined_subroutine
	.long	522                             # DW_AT_abstract_origin
	.quad	.Ltmp110                        # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp110               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6fd:0x29 DW_TAG_inlined_subroutine
	.long	534                             # DW_AT_abstract_origin
	.quad	.Ltmp112                        # DW_AT_low_pc
	.long	.Ltmp117-.Ltmp112               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	24                              # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x711:0x14 DW_TAG_inlined_subroutine
	.long	546                             # DW_AT_abstract_origin
	.quad	.Ltmp116                        # DW_AT_low_pc
	.long	.Ltmp117-.Ltmp116               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x726:0x29 DW_TAG_inlined_subroutine
	.long	558                             # DW_AT_abstract_origin
	.quad	.Ltmp118                        # DW_AT_low_pc
	.long	.Ltmp123-.Ltmp118               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	55                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x73a:0x14 DW_TAG_inlined_subroutine
	.long	570                             # DW_AT_abstract_origin
	.quad	.Ltmp122                        # DW_AT_low_pc
	.long	.Ltmp123-.Ltmp122               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x74f:0x29 DW_TAG_inlined_subroutine
	.long	582                             # DW_AT_abstract_origin
	.quad	.Ltmp124                        # DW_AT_low_pc
	.long	.Ltmp129-.Ltmp124               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	26                              # DW_AT_call_line
	.byte	54                              # DW_AT_call_column
	.byte	9                               # Abbrev [9] 0x763:0x14 DW_TAG_inlined_subroutine
	.long	594                             # DW_AT_abstract_origin
	.quad	.Ltmp128                        # DW_AT_low_pc
	.long	.Ltmp129-.Ltmp128               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	13                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x778:0x14 DW_TAG_inlined_subroutine
	.long	606                             # DW_AT_abstract_origin
	.quad	.Ltmp130                        # DW_AT_low_pc
	.long	.Ltmp131-.Ltmp130               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	27                              # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x78e:0x14 DW_TAG_inlined_subroutine
	.long	618                             # DW_AT_abstract_origin
	.quad	.Ltmp133                        # DW_AT_low_pc
	.long	.Ltmp134-.Ltmp133               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7a3:0xb DW_TAG_typedef
	.long	1966                            # DW_AT_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7ae:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x7b5:0x1e DW_TAG_structure_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x7bc:0xb DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	2003                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7c7:0xb DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	2012                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x7d3:0x9 DW_TAG_pointer_type
	.long	.Linfo_string11                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	11                              # Abbrev [11] 0x7dc:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x7e3:0xd DW_TAG_pointer_type
	.long	2032                            # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	11                              # Abbrev [11] 0x7f0:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x7f7:0xd DW_TAG_pointer_type
	.long	2052                            # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	11                              # Abbrev [11] 0x804:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x80b:0xd DW_TAG_pointer_type
	.long	1966                            # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	15                              # Abbrev [15] 0x818:0xd DW_TAG_pointer_type
	.long	2085                            # DW_AT_type
	.long	.Linfo_string28                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	11                              # Abbrev [11] 0x825:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"atomic.c3"                     # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std" # string offset=14
.Linfo_string3:
	.asciz	"@__atomic_compare_exchange_ordering_failure" # string offset=79
.Linfo_string4:
	.asciz	"@__atomic_compare_exchange_ordering_success" # string offset=123
.Linfo_string5:
	.asciz	"unreachable"                   # string offset=167
.Linfo_string6:
	.asciz	"__atomic_compare_exchange"     # string offset=179
.Linfo_string7:
	.asciz	"int"                           # string offset=205
.Linfo_string8:
	.asciz	"CInt"                          # string offset=209
.Linfo_string9:
	.asciz	"size"                          # string offset=214
.Linfo_string10:
	.asciz	"ptr"                           # string offset=219
.Linfo_string11:
	.asciz	"void*"                         # string offset=223
.Linfo_string12:
	.asciz	"type"                          # string offset=229
.Linfo_string13:
	.asciz	"typeid"                        # string offset=234
.Linfo_string14:
	.asciz	"any"                           # string offset=241
.Linfo_string15:
	.asciz	"expected"                      # string offset=245
.Linfo_string16:
	.asciz	"desired"                       # string offset=254
.Linfo_string17:
	.asciz	"success"                       # string offset=262
.Linfo_string18:
	.asciz	"failure"                       # string offset=270
.Linfo_string19:
	.asciz	"pt"                            # string offset=278
.Linfo_string20:
	.asciz	"char"                          # string offset=281
.Linfo_string21:
	.asciz	"char*"                         # string offset=286
.Linfo_string22:
	.asciz	"ex"                            # string offset=292
.Linfo_string23:
	.asciz	"de"                            # string offset=295
.Linfo_string24:
	.asciz	"short"                         # string offset=298
.Linfo_string25:
	.asciz	"short*"                        # string offset=304
.Linfo_string26:
	.asciz	"int*"                          # string offset=311
.Linfo_string27:
	.asciz	"long"                          # string offset=316
.Linfo_string28:
	.asciz	"long*"                         # string offset=321
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2093                            # Compilation Unit Length
	.long	486                             # DIE offset
	.asciz	"@__atomic_compare_exchange_ordering_success" # External Name
	.long	582                             # DIE offset
	.asciz	"@__atomic_compare_exchange_ordering_failure" # External Name
	.long	618                             # DIE offset
	.asciz	"unreachable"                   # External Name
	.long	630                             # DIE offset
	.asciz	"__atomic_compare_exchange"     # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2093                            # Compilation Unit Length
	.long	1955                            # DIE offset
	.asciz	"CInt"                          # External Name
	.long	1966                            # DIE offset
	.asciz	"int"                           # External Name
	.long	1973                            # DIE offset
	.asciz	"any"                           # External Name
	.long	2003                            # DIE offset
	.asciz	"void*"                         # External Name
	.long	2012                            # DIE offset
	.asciz	"typeid"                        # External Name
	.long	2019                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	2032                            # DIE offset
	.asciz	"char"                          # External Name
	.long	2039                            # DIE offset
	.asciz	"short*"                        # External Name
	.long	2052                            # DIE offset
	.asciz	"short"                         # External Name
	.long	2059                            # DIE offset
	.asciz	"int*"                          # External Name
	.long	2072                            # DIE offset
	.asciz	"long*"                         # External Name
	.long	2085                            # DIE offset
	.asciz	"long"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

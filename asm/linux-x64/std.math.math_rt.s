	.text
	.file	"std::math::math_rt"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math/runtime" "i128.c3"
	.section	.text.__divti3,"axG",@progbits,__divti3,comdat
	.weak	__divti3                        # -- Begin function __divti3
	.p2align	4, 0x90
	.type	__divti3,@function
__divti3:                               # @__divti3
.Lfunc_begin0:
	.loc	1 3 0                           # i128.c3:3:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1712, %rsp                     # imm = 0x6B0
	movq	%rdi, -1152(%rbp)
	movq	%rsi, -1144(%rbp)
	movq	%rdx, -1168(%rbp)
	movq	%rcx, -1160(%rbp)
.Ltmp0:
	.loc	1 5 18 prologue_end             # i128.c3:5:18
	movq	-1144(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -1176(%rbp)
	movq	%rax, -1184(%rbp)
	.loc	1 6 18                          # i128.c3:6:18
	movq	-1160(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -1192(%rbp)
	movq	%rax, -1200(%rbp)
	.loc	1 7 33                          # i128.c3:7:33
	movq	-1152(%rbp), %rcx
	movq	-1144(%rbp), %rax
	.loc	1 7 37 is_stmt 0                # i128.c3:7:37
	movq	-1184(%rbp), %rsi
	movq	-1176(%rbp), %rdx
	.loc	1 7 23                          # i128.c3:7:23
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -1216(%rbp)
	movq	%rax, -1208(%rbp)
	.loc	1 8 33 is_stmt 1                # i128.c3:8:33
	movq	-1168(%rbp), %rcx
	movq	-1160(%rbp), %rax
	.loc	1 8 37 is_stmt 0                # i128.c3:8:37
	movq	-1200(%rbp), %rsi
	movq	-1192(%rbp), %rdx
	.loc	1 8 23                          # i128.c3:8:23
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -1232(%rbp)
	movq	%rax, -1224(%rbp)
	.loc	1 9 2 is_stmt 1                 # i128.c3:9:2
	movq	-1184(%rbp), %rax
	movq	-1176(%rbp), %rcx
	.loc	1 9 12 is_stmt 0                # i128.c3:9:12
	movq	-1200(%rbp), %rsi
	movq	-1192(%rbp), %rdx
	.loc	1 9 2                           # i128.c3:9:2
	xorq	%rsi, %rax
	xorq	%rdx, %rcx
	movq	%rcx, -1176(%rbp)
	movq	%rax, -1184(%rbp)
	.loc	1 10 31 is_stmt 1               # i128.c3:10:31
	movq	-1216(%rbp), %rsi
	movq	-1208(%rbp), %rdx
	movq	-1232(%rbp), %rcx
	movq	-1224(%rbp), %rax
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
.Ltmp1:
	.loc	1 15 13                         # i128.c3:15:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -96(%rbp)
	.loc	1 15 26 is_stmt 0               # i128.c3:15:26
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rax, -96(%rbp)
	.loc	1 16 13 is_stmt 1               # i128.c3:16:13
	vmovdqa	%xmm0, -112(%rbp)
	.loc	1 16 26 is_stmt 0               # i128.c3:16:26
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	%rax, -112(%rbp)
	.loc	1 19 7 is_stmt 1                # i128.c3:19:7
	movl	$0, -148(%rbp)
	.loc	1 20 6                          # i128.c3:20:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_5
# %bb.1:
.Ltmp2:
	.loc	1 22 7                          # i128.c3:22:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_4
# %bb.2:
.Ltmp3:
	.loc	1 27 12                         # i128.c3:27:12
	movq	-96(%rbp), %rax
	movq	%rax, -1280(%rbp)               # 8-byte Spill
	.loc	1 27 20 is_stmt 0               # i128.c3:27:20
	movq	-112(%rbp), %rax
	movq	%rax, -1272(%rbp)               # 8-byte Spill
	.loc	1 27 12                         # i128.c3:27:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_59
# %bb.3:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1272(%rbp), %rcx               # 8-byte Reload
	movq	-1280(%rbp), %rax               # 8-byte Reload
	.loc	1 27 12                         # i128.c3:27:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB0_82
.Ltmp4:
.LBB0_4:
	.loc	1 33 11 is_stmt 1               # i128.c3:33:11
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB0_82
.Ltmp5:
.LBB0_5:
	.loc	1 36 6                          # i128.c3:36:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_22
# %bb.6:
.Ltmp6:
	.loc	1 38 7                          # i128.c3:38:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_9
# %bb.7:
.Ltmp7:
	.loc	1 43 12                         # i128.c3:43:12
	movq	-88(%rbp), %rax
	movq	%rax, -1296(%rbp)               # 8-byte Spill
	.loc	1 43 21 is_stmt 0               # i128.c3:43:21
	movq	-112(%rbp), %rax
	movq	%rax, -1288(%rbp)               # 8-byte Spill
	.loc	1 43 12                         # i128.c3:43:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_60
# %bb.8:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1288(%rbp), %rcx               # 8-byte Reload
	movq	-1296(%rbp), %rax               # 8-byte Reload
	.loc	1 43 12                         # i128.c3:43:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB0_82
.Ltmp8:
.LBB0_9:
	.loc	1 46 7 is_stmt 1                # i128.c3:46:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_12
# %bb.10:
.Ltmp9:
	.loc	1 53 12                         # i128.c3:53:12
	movq	-88(%rbp), %rax
	movq	%rax, -1312(%rbp)               # 8-byte Spill
	.loc	1 53 21 is_stmt 0               # i128.c3:53:21
	movq	-104(%rbp), %rax
	movq	%rax, -1304(%rbp)               # 8-byte Spill
	.loc	1 53 12                         # i128.c3:53:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_61
# %bb.11:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1304(%rbp), %rcx               # 8-byte Reload
	movq	-1312(%rbp), %rax               # 8-byte Reload
	.loc	1 53 12                         # i128.c3:53:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB0_82
.Ltmp10:
.LBB0_12:
	.loc	1 56 7 is_stmt 1                # i128.c3:56:7
	movq	-104(%rbp), %rax
	.loc	1 56 17 is_stmt 0               # i128.c3:56:17
	movq	-104(%rbp), %rcx
	subq	$1, %rcx
	.loc	1 56 7                          # i128.c3:56:7
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB0_15
# %bb.13:
.Ltmp11:
	.loc	1 63 22 is_stmt 1               # i128.c3:63:22
	movq	-88(%rbp), %rax
	movq	%rax, -1328(%rbp)               # 8-byte Spill
	.loc	1 63 38 is_stmt 0               # i128.c3:63:38
	movq	-104(%rbp), %rax
	bsfq	%rax, %rax
	movl	$64, %ecx
	cmoveq	%rcx, %rax
	movq	%rax, -1320(%rbp)               # 8-byte Spill
	.loc	1 63 12                         # i128.c3:63:12
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_62
# %bb.14:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1328(%rbp), %rax               # 8-byte Reload
	movq	-1320(%rbp), %rcx               # 8-byte Reload
	.loc	1 63 12                         # i128.c3:63:12
	shrq	%cl, %rax
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB0_82
.Ltmp12:
.LBB0_15:
	.loc	1 66 20 is_stmt 1               # i128.c3:66:20
	movq	-104(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 66 42 is_stmt 0               # i128.c3:66:42
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 66 8                          # i128.c3:66:8
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	.loc	1 68 7 is_stmt 1                # i128.c3:68:7
	movl	$62, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB0_17
# %bb.16:
.Ltmp13:
	.loc	1 73 12                         # i128.c3:73:12
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB0_82
.Ltmp14:
.LBB0_17:
	.loc	1 76 3                          # i128.c3:76:3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	.loc	1 79 3                          # i128.c3:79:3
	movq	$0, -128(%rbp)
	.loc	1 80 12                         # i128.c3:80:12
	movq	-96(%rbp), %rax
	movq	%rax, -1344(%rbp)               # 8-byte Spill
	.loc	1 80 22 is_stmt 0               # i128.c3:80:22
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 80 12                         # i128.c3:80:12
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1336(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_63
# %bb.18:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1344(%rbp), %rax               # 8-byte Reload
	movq	-1336(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 80 12                         # i128.c3:80:12
	shlq	%cl, %rax
	.loc	1 80 3                          # i128.c3:80:3
	movq	%rax, -120(%rbp)
	.loc	1 81 12 is_stmt 1               # i128.c3:81:12
	movq	-88(%rbp), %rax
	movq	%rax, -1360(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1352(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_64
# %bb.19:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1360(%rbp), %rax               # 8-byte Reload
	movq	-1352(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 81 12                         # i128.c3:81:12
	shrq	%cl, %rax
	.loc	1 81 3                          # i128.c3:81:3
	movq	%rax, -136(%rbp)
	.loc	1 82 12 is_stmt 1               # i128.c3:82:12
	movq	-88(%rbp), %rax
	movq	%rax, -1376(%rbp)               # 8-byte Spill
	.loc	1 82 23 is_stmt 0               # i128.c3:82:23
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 82 12                         # i128.c3:82:12
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1368(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_65
# %bb.20:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1376(%rbp), %rax               # 8-byte Reload
	movq	-1368(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 82 12                         # i128.c3:82:12
	shlq	%cl, %rax
	movq	%rax, -1400(%rbp)               # 8-byte Spill
	.loc	1 82 36                         # i128.c3:82:36
	movq	-96(%rbp), %rax
	movq	%rax, -1392(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1384(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_66
# %bb.21:
	.loc	1 0 36                          # i128.c3:0:36
	movq	-1400(%rbp), %rax               # 8-byte Reload
	movq	-1392(%rbp), %rdx               # 8-byte Reload
	movq	-1384(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 82 36                         # i128.c3:82:36
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 82 11                         # i128.c3:82:11
	orq	%rcx, %rax
	.loc	1 82 3                          # i128.c3:82:3
	movq	%rax, -144(%rbp)
	jmp	.LBB0_55
.Ltmp15:
.LBB0_22:
	.loc	1 86 7 is_stmt 1                # i128.c3:86:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_44
# %bb.23:
.Ltmp16:
	.loc	1 88 8                          # i128.c3:88:8
	movq	-112(%rbp), %rax
	.loc	1 88 17 is_stmt 0               # i128.c3:88:17
	movq	-112(%rbp), %rcx
	subq	$1, %rcx
	.loc	1 88 8                          # i128.c3:88:8
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB0_30
# %bb.24:
.Ltmp17:
	.loc	1 93 10 is_stmt 1               # i128.c3:93:10
	movl	$1, %eax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_26
# %bb.25:
	.loc	1 93 29 is_stmt 0               # i128.c3:93:29
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB0_82
.LBB0_26:
	.loc	1 94 23 is_stmt 1               # i128.c3:94:23
	movq	-112(%rbp), %rax
	bsfq	%rax, %rax
	movl	$64, %ecx
	cmoveq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -148(%rbp)
	.loc	1 95 15                         # i128.c3:95:15
	movq	-88(%rbp), %rax
	movq	%rax, -1416(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1408(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_67
# %bb.27:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1416(%rbp), %rax               # 8-byte Reload
	movq	-1408(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 95 15                         # i128.c3:95:15
	shrq	%cl, %rax
	.loc	1 95 6                          # i128.c3:95:6
	movq	%rax, -120(%rbp)
	.loc	1 96 15 is_stmt 1               # i128.c3:96:15
	movq	-88(%rbp), %rax
	movq	%rax, -1432(%rbp)               # 8-byte Spill
	.loc	1 96 26 is_stmt 0               # i128.c3:96:26
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 96 15                         # i128.c3:96:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1424(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_68
# %bb.28:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1432(%rbp), %rax               # 8-byte Reload
	movq	-1424(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 96 15                         # i128.c3:96:15
	shlq	%cl, %rax
	movq	%rax, -1456(%rbp)               # 8-byte Spill
	.loc	1 96 39                         # i128.c3:96:39
	movq	-96(%rbp), %rax
	movq	%rax, -1448(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1440(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_69
# %bb.29:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1456(%rbp), %rax               # 8-byte Reload
	movq	-1448(%rbp), %rdx               # 8-byte Reload
	movq	-1440(%rbp), %rcx               # 8-byte Reload
	.loc	1 96 39                         # i128.c3:96:39
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 96 14                         # i128.c3:96:14
	orq	%rcx, %rax
	.loc	1 96 6                          # i128.c3:96:6
	movq	%rax, -128(%rbp)
	.loc	1 97 13 is_stmt 1               # i128.c3:97:13
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB0_82
.Ltmp18:
.LBB0_30:
	.loc	1 100 30                        # i128.c3:100:30
	bsrq	-112(%rbp), %rax
	movl	$127, %edx
	cmoveq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	xorl	$63, %eax
	.loc	1 100 51 is_stmt 0              # i128.c3:100:51
	bsrq	-88(%rbp), %rcx
	cmoveq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	$63, %ecx
	.loc	1 100 9                         # i128.c3:100:9
	subl	%ecx, %eax
	addl	$65, %eax
	movl	%eax, -148(%rbp)
	movb	$1, -529(%rbp)
	movb	-529(%rbp), %cl
	movb	%cl, -1457(%rbp)                # 1-byte Spill
	andb	$1, %cl
.Ltmp19:
	.loc	1 106 10 is_stmt 1              # i128.c3:106:10
	movl	-148(%rbp), %eax
	subl	$64, %eax
	sete	%al
	subb	%cl, %al
	jne	.LBB0_32
	jmp	.LBB0_31
.LBB0_31:
.Ltmp20:
	.loc	1 107 6                         # i128.c3:107:6
	movq	$0, -128(%rbp)
	.loc	1 108 6                         # i128.c3:108:6
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 109 6                         # i128.c3:109:6
	movq	$0, -136(%rbp)
	.loc	1 110 6                         # i128.c3:110:6
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_43
.Ltmp21:
.LBB0_32:
	.loc	1 0 6 is_stmt 0                 # i128.c3:0:6
	movb	-1457(%rbp), %cl                # 1-byte Reload
	.loc	1 111 10 is_stmt 1              # i128.c3:111:10
	movl	-148(%rbp), %eax
	subl	$64, %eax
	setb	%al
	andb	$1, %cl
	subb	%cl, %al
	jne	.LBB0_38
	jmp	.LBB0_33
.LBB0_33:
.Ltmp22:
	.loc	1 112 6                         # i128.c3:112:6
	movq	$0, -128(%rbp)
	.loc	1 113 15                        # i128.c3:113:15
	movq	-96(%rbp), %rax
	movq	%rax, -1480(%rbp)               # 8-byte Spill
	.loc	1 113 25 is_stmt 0              # i128.c3:113:25
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 113 15                        # i128.c3:113:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1472(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_70
# %bb.34:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1480(%rbp), %rax               # 8-byte Reload
	movq	-1472(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 113 15                        # i128.c3:113:15
	shlq	%cl, %rax
	.loc	1 113 6                         # i128.c3:113:6
	movq	%rax, -120(%rbp)
	.loc	1 114 15 is_stmt 1              # i128.c3:114:15
	movq	-88(%rbp), %rax
	movq	%rax, -1496(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1488(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_71
# %bb.35:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1496(%rbp), %rax               # 8-byte Reload
	movq	-1488(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 114 15                        # i128.c3:114:15
	shrq	%cl, %rax
	.loc	1 114 6                         # i128.c3:114:6
	movq	%rax, -136(%rbp)
	.loc	1 115 15 is_stmt 1              # i128.c3:115:15
	movq	-88(%rbp), %rax
	movq	%rax, -1512(%rbp)               # 8-byte Spill
	.loc	1 115 26 is_stmt 0              # i128.c3:115:26
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 115 15                        # i128.c3:115:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1504(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_72
# %bb.36:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1512(%rbp), %rax               # 8-byte Reload
	movq	-1504(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 115 15                        # i128.c3:115:15
	shlq	%cl, %rax
	movq	%rax, -1536(%rbp)               # 8-byte Spill
	.loc	1 115 39                        # i128.c3:115:39
	movq	-96(%rbp), %rax
	movq	%rax, -1528(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1520(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_73
# %bb.37:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1536(%rbp), %rax               # 8-byte Reload
	movq	-1528(%rbp), %rdx               # 8-byte Reload
	movq	-1520(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 115 39                        # i128.c3:115:39
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 115 14                        # i128.c3:115:14
	orq	%rcx, %rax
	.loc	1 115 6                         # i128.c3:115:6
	movq	%rax, -144(%rbp)
	jmp	.LBB0_43
.Ltmp23:
.LBB0_38:
	.loc	1 117 14 is_stmt 1              # i128.c3:117:14
	movq	-96(%rbp), %rax
	movq	%rax, -1552(%rbp)               # 8-byte Spill
	.loc	1 117 24 is_stmt 0              # i128.c3:117:24
	movl	$128, %eax
	subl	-148(%rbp), %eax
	.loc	1 117 14                        # i128.c3:117:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1544(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_74
# %bb.39:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1552(%rbp), %rax               # 8-byte Reload
	movq	-1544(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 117 14                        # i128.c3:117:14
	shlq	%cl, %rax
	.loc	1 117 6                         # i128.c3:117:6
	movq	%rax, -128(%rbp)
	.loc	1 118 16 is_stmt 1              # i128.c3:118:16
	movq	-88(%rbp), %rax
	movq	%rax, -1568(%rbp)               # 8-byte Spill
	.loc	1 118 27 is_stmt 0              # i128.c3:118:27
	movl	$128, %eax
	subl	-148(%rbp), %eax
	.loc	1 118 16                        # i128.c3:118:16
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1560(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_75
# %bb.40:
	.loc	1 0 16                          # i128.c3:0:16
	movq	-1568(%rbp), %rax               # 8-byte Reload
	movq	-1560(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 118 16                        # i128.c3:118:16
	shlq	%cl, %rax
	movq	%rax, -1592(%rbp)               # 8-byte Spill
	.loc	1 118 41                        # i128.c3:118:41
	movq	-96(%rbp), %rax
	movq	%rax, -1584(%rbp)               # 8-byte Spill
	.loc	1 118 51                        # i128.c3:118:51
	movl	-148(%rbp), %eax
	subl	$64, %eax
	.loc	1 118 41                        # i128.c3:118:41
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1576(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_76
# %bb.41:
	.loc	1 0 41                          # i128.c3:0:41
	movq	-1592(%rbp), %rax               # 8-byte Reload
	movq	-1584(%rbp), %rdx               # 8-byte Reload
	movq	-1576(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 118 41                        # i128.c3:118:41
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 118 15                        # i128.c3:118:15
	orq	%rcx, %rax
	.loc	1 118 6                         # i128.c3:118:6
	movq	%rax, -120(%rbp)
	.loc	1 119 6 is_stmt 1               # i128.c3:119:6
	movq	$0, -136(%rbp)
	.loc	1 120 14                        # i128.c3:120:14
	movq	-88(%rbp), %rax
	movq	%rax, -1608(%rbp)               # 8-byte Spill
	.loc	1 120 25 is_stmt 0              # i128.c3:120:25
	movl	-148(%rbp), %eax
	subl	$64, %eax
	.loc	1 120 14                        # i128.c3:120:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1600(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_77
# %bb.42:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1608(%rbp), %rax               # 8-byte Reload
	movq	-1600(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 120 14                        # i128.c3:120:14
	shrq	%cl, %rax
	.loc	1 120 6                         # i128.c3:120:6
	movq	%rax, -144(%rbp)
.LBB0_43:
	jmp	.LBB0_54
.Ltmp24:
.LBB0_44:
	.loc	1 125 21 is_stmt 1              # i128.c3:125:21
	movq	-104(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 125 43 is_stmt 0              # i128.c3:125:43
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 125 9                         # i128.c3:125:9
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	.loc	1 127 8 is_stmt 1               # i128.c3:127:8
	movl	$63, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB0_46
# %bb.45:
.Ltmp25:
	.loc	1 132 13                        # i128.c3:132:13
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB0_82
.Ltmp26:
.LBB0_46:
	.loc	1 136 4                         # i128.c3:136:4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	.loc	1 140 4                         # i128.c3:140:4
	movq	$0, -128(%rbp)
	.loc	1 141 8                         # i128.c3:141:8
	movl	$64, %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB0_48
# %bb.47:
.Ltmp27:
	.loc	1 143 5                         # i128.c3:143:5
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 144 5                         # i128.c3:144:5
	movq	$0, -136(%rbp)
	.loc	1 145 5                         # i128.c3:145:5
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_53
.Ltmp28:
.LBB0_48:
	.loc	1 149 14                        # i128.c3:149:14
	movq	-88(%rbp), %rax
	movq	%rax, -1624(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1616(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_78
# %bb.49:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1624(%rbp), %rax               # 8-byte Reload
	movq	-1616(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 149 14                        # i128.c3:149:14
	shrq	%cl, %rax
	.loc	1 149 5                         # i128.c3:149:5
	movq	%rax, -136(%rbp)
	.loc	1 150 14 is_stmt 1              # i128.c3:150:14
	movq	-88(%rbp), %rax
	movq	%rax, -1640(%rbp)               # 8-byte Spill
	.loc	1 150 25 is_stmt 0              # i128.c3:150:25
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 150 14                        # i128.c3:150:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1632(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_79
# %bb.50:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1640(%rbp), %rax               # 8-byte Reload
	movq	-1632(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 150 14                        # i128.c3:150:14
	shlq	%cl, %rax
	movq	%rax, -1664(%rbp)               # 8-byte Spill
	.loc	1 150 38                        # i128.c3:150:38
	movq	-96(%rbp), %rax
	movq	%rax, -1656(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1648(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_80
# %bb.51:
	.loc	1 0 38                          # i128.c3:0:38
	movq	-1664(%rbp), %rax               # 8-byte Reload
	movq	-1656(%rbp), %rdx               # 8-byte Reload
	movq	-1648(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 150 38                        # i128.c3:150:38
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 150 13                        # i128.c3:150:13
	orq	%rcx, %rax
	.loc	1 150 5                         # i128.c3:150:5
	movq	%rax, -144(%rbp)
	.loc	1 151 14 is_stmt 1              # i128.c3:151:14
	movq	-96(%rbp), %rax
	movq	%rax, -1680(%rbp)               # 8-byte Spill
	.loc	1 151 24 is_stmt 0              # i128.c3:151:24
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 151 14                        # i128.c3:151:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1672(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_81
# %bb.52:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1680(%rbp), %rax               # 8-byte Reload
	movq	-1672(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 151 14                        # i128.c3:151:14
	shlq	%cl, %rax
	.loc	1 151 5                         # i128.c3:151:5
	movq	%rax, -120(%rbp)
.LBB0_53:
	jmp	.LBB0_54
.LBB0_54:
	jmp	.LBB0_55
.Ltmp29:
.LBB0_55:
	.loc	1 160 15 is_stmt 1              # i128.c3:160:15
	movl	$0, -1108(%rbp)
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
.Ltmp30:
	.loc	1 161 9                         # i128.c3:161:9
	xorl	%eax, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=1
.Ltmp31:
	.loc	1 164 29                        # i128.c3:164:29
	movq	-144(%rbp), %rcx
	.loc	1 164 13 is_stmt 0              # i128.c3:164:13
	movq	-136(%rbp), %rax
	addq	%rax, %rax
	.loc	1 164 29                        # i128.c3:164:29
	shrq	$63, %rcx
	.loc	1 164 12                        # i128.c3:164:12
	orq	%rcx, %rax
	.loc	1 164 3                         # i128.c3:164:3
	movq	%rax, -136(%rbp)
	.loc	1 165 13 is_stmt 1              # i128.c3:165:13
	movq	-144(%rbp), %rax
	addq	%rax, %rax
	.loc	1 165 29 is_stmt 0              # i128.c3:165:29
	movq	-120(%rbp), %rcx
	shrq	$63, %rcx
	.loc	1 165 12                        # i128.c3:165:12
	orq	%rcx, %rax
	.loc	1 165 3                         # i128.c3:165:3
	movq	%rax, -144(%rbp)
	.loc	1 166 29 is_stmt 1              # i128.c3:166:29
	movq	-128(%rbp), %rcx
	.loc	1 166 13 is_stmt 0              # i128.c3:166:13
	movq	-120(%rbp), %rax
	addq	%rax, %rax
	.loc	1 166 29                        # i128.c3:166:29
	shrq	$63, %rcx
	.loc	1 166 12                        # i128.c3:166:12
	orq	%rcx, %rax
	.loc	1 166 3                         # i128.c3:166:3
	movq	%rax, -120(%rbp)
	.loc	1 167 13 is_stmt 1              # i128.c3:167:13
	movq	-128(%rbp), %rax
	addq	%rax, %rax
	.loc	1 167 28 is_stmt 0              # i128.c3:167:28
	movl	-1108(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 167 12                        # i128.c3:167:12
	orq	%rcx, %rax
	.loc	1 167 3                         # i128.c3:167:3
	movq	%rax, -128(%rbp)
	.loc	1 174 23 is_stmt 1              # i128.c3:174:23
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rcx
	.loc	1 174 31 is_stmt 0              # i128.c3:174:31
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	.loc	1 174 14                        # i128.c3:174:14
	notq	%rax
	notq	%rdx
	addq	%rsi, %rdx
	adcq	%rcx, %rax
	sarq	$63, %rax
	movq	%rax, -1128(%rbp)
	movq	%rax, -1136(%rbp)
	.loc	1 175 18 is_stmt 1              # i128.c3:175:18
	movl	-1136(%rbp), %eax
	.loc	1 175 11 is_stmt 0              # i128.c3:175:11
	andl	$1, %eax
	movl	%eax, -1108(%rbp)
	.loc	1 176 3 is_stmt 1               # i128.c3:176:3
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	.loc	1 176 12 is_stmt 0              # i128.c3:176:12
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rdx
	.loc	1 176 20                        # i128.c3:176:20
	movq	-1136(%rbp), %rdi
	movq	-1128(%rbp), %r8
	.loc	1 176 12                        # i128.c3:176:12
	andq	%r8, %rdx
	andq	%rdi, %rsi
	.loc	1 176 3                         # i128.c3:176:3
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -144(%rbp)
	movq	%rax, -136(%rbp)
.Ltmp32:
	.loc	1 161 17 is_stmt 1              # i128.c3:161:17
	movl	-148(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB0_56
.Ltmp33:
.LBB0_58:
	.loc	1 181 11                        # i128.c3:181:11
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	shldq	$1, %rax, %rcx
	addq	%rax, %rax
	.loc	1 181 25 is_stmt 0              # i128.c3:181:25
	movl	-1108(%rbp), %edx
                                        # kill: def $rdx killed $edx
	.loc	1 181 10                        # i128.c3:181:10
	orq	%rdx, %rax
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB0_82
.LBB0_59:
.Ltmp34:
	.loc	1 27 12 is_stmt 1               # i128.c3:27:12
	leaq	.panic_msg.3(%rip), %rdi
	movl	$17, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$27, (%rsp)
	callq	*(%rax)
.Ltmp35:
.LBB0_60:
	.loc	1 43 12                         # i128.c3:43:12
	leaq	.panic_msg.3(%rip), %rdi
	movl	$17, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$43, (%rsp)
	callq	*(%rax)
.Ltmp36:
.LBB0_61:
	.loc	1 53 12                         # i128.c3:53:12
	leaq	.panic_msg.3(%rip), %rdi
	movl	$17, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$53, (%rsp)
	callq	*(%rax)
.Ltmp37:
.LBB0_62:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1320(%rbp), %rax               # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
.Ltmp38:
	.loc	1 63 12 is_stmt 1               # i128.c3:63:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-192(%rbp), %rax
	movl	$63, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp39:
.LBB0_63:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1336(%rbp), %rax               # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 80 12 is_stmt 1               # i128.c3:80:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-240(%rbp), %rax
	movl	$80, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_64:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1352(%rbp), %rax               # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-248(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
	.loc	1 81 12 is_stmt 1               # i128.c3:81:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-288(%rbp), %rax
	movl	$81, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_65:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1368(%rbp), %rax               # 8-byte Reload
	movq	%rax, -296(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	-296(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$1, -328(%rbp)
	.loc	1 82 12 is_stmt 1               # i128.c3:82:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-336(%rbp), %rax
	movl	$82, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_66:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1384(%rbp), %rax               # 8-byte Reload
	movq	%rax, -344(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -360(%rbp)
	leaq	-344(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$1, -376(%rbp)
	.loc	1 82 36                         # i128.c3:82:36
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-384(%rbp), %rax
	movl	$82, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp40:
.LBB0_67:
	.loc	1 0 36                          # i128.c3:0:36
	movq	-1408(%rbp), %rax               # 8-byte Reload
	movq	%rax, -392(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -408(%rbp)
	leaq	-392(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$1, -424(%rbp)
.Ltmp41:
	.loc	1 95 15 is_stmt 1               # i128.c3:95:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-432(%rbp), %rax
	movl	$95, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_68:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1424(%rbp), %rax               # 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -456(%rbp)
	leaq	-440(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$1, -472(%rbp)
	.loc	1 96 15 is_stmt 1               # i128.c3:96:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-480(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_69:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1440(%rbp), %rax               # 8-byte Reload
	movq	%rax, -488(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -504(%rbp)
	leaq	-488(%rbp), %rax
	movq	%rax, -512(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	$1, -520(%rbp)
	.loc	1 96 39                         # i128.c3:96:39
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-528(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp42:
.LBB0_70:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1472(%rbp), %rax               # 8-byte Reload
	movq	%rax, -544(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -552(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, -560(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	$1, -568(%rbp)
.Ltmp43:
	.loc	1 113 15 is_stmt 1              # i128.c3:113:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-576(%rbp), %rax
	movl	$113, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_71:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1488(%rbp), %rax               # 8-byte Reload
	movq	%rax, -584(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -600(%rbp)
	leaq	-584(%rbp), %rax
	movq	%rax, -608(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	$1, -616(%rbp)
	.loc	1 114 15 is_stmt 1              # i128.c3:114:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-624(%rbp), %rax
	movl	$114, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_72:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1504(%rbp), %rax               # 8-byte Reload
	movq	%rax, -632(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -648(%rbp)
	leaq	-632(%rbp), %rax
	movq	%rax, -656(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$1, -664(%rbp)
	.loc	1 115 15 is_stmt 1              # i128.c3:115:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-672(%rbp), %rax
	movl	$115, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_73:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1520(%rbp), %rax               # 8-byte Reload
	movq	%rax, -680(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -696(%rbp)
	leaq	-680(%rbp), %rax
	movq	%rax, -704(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	$1, -712(%rbp)
	.loc	1 115 39                        # i128.c3:115:39
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-720(%rbp), %rax
	movl	$115, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp44:
.LBB0_74:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1544(%rbp), %rax               # 8-byte Reload
	movq	%rax, -728(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -744(%rbp)
	leaq	-728(%rbp), %rax
	movq	%rax, -752(%rbp)
	leaq	-752(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	$1, -760(%rbp)
.Ltmp45:
	.loc	1 117 14 is_stmt 1              # i128.c3:117:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-768(%rbp), %rax
	movl	$117, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_75:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1560(%rbp), %rax               # 8-byte Reload
	movq	%rax, -776(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -792(%rbp)
	leaq	-776(%rbp), %rax
	movq	%rax, -800(%rbp)
	leaq	-800(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	$1, -808(%rbp)
	.loc	1 118 16 is_stmt 1              # i128.c3:118:16
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-816(%rbp), %rax
	movl	$118, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_76:
	.loc	1 0 16 is_stmt 0                # i128.c3:0:16
	movq	-1576(%rbp), %rax               # 8-byte Reload
	movq	%rax, -824(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -840(%rbp)
	leaq	-824(%rbp), %rax
	movq	%rax, -848(%rbp)
	leaq	-848(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	$1, -856(%rbp)
	.loc	1 118 41                        # i128.c3:118:41
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-864(%rbp), %rax
	movl	$118, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_77:
	.loc	1 0 41                          # i128.c3:0:41
	movq	-1600(%rbp), %rax               # 8-byte Reload
	movq	%rax, -872(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -888(%rbp)
	leaq	-872(%rbp), %rax
	movq	%rax, -896(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	$1, -904(%rbp)
	.loc	1 120 14 is_stmt 1              # i128.c3:120:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-912(%rbp), %rax
	movl	$120, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp46:
.LBB0_78:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1616(%rbp), %rax               # 8-byte Reload
	movq	%rax, -920(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -936(%rbp)
	leaq	-920(%rbp), %rax
	movq	%rax, -944(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, -960(%rbp)
	movq	$1, -952(%rbp)
.Ltmp47:
	.loc	1 149 14 is_stmt 1              # i128.c3:149:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-960(%rbp), %rax
	movl	$149, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_79:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1632(%rbp), %rax               # 8-byte Reload
	movq	%rax, -968(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -984(%rbp)
	leaq	-968(%rbp), %rax
	movq	%rax, -992(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	$1, -1000(%rbp)
	.loc	1 150 14 is_stmt 1              # i128.c3:150:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-1008(%rbp), %rax
	movl	$150, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_80:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1648(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1016(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -1032(%rbp)
	leaq	-1016(%rbp), %rax
	movq	%rax, -1040(%rbp)
	leaq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	$1, -1048(%rbp)
	.loc	1 150 38                        # i128.c3:150:38
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-1056(%rbp), %rax
	movl	$150, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_81:
	.loc	1 0 38                          # i128.c3:0:38
	movq	-1672(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1064(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -1080(%rbp)
	leaq	-1064(%rbp), %rax
	movq	%rax, -1088(%rbp)
	leaq	-1088(%rbp), %rax
	movq	%rax, -1104(%rbp)
	movq	$1, -1096(%rbp)
	.loc	1 151 14 is_stmt 1              # i128.c3:151:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-1104(%rbp), %rax
	movl	$151, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp48:
.LBB0_82:
	.loc	1 181 10                        # i128.c3:181:10
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, -1240(%rbp)
	movq	%rax, -1248(%rbp)
	movq	-1248(%rbp), %rcx
	movq	-1240(%rbp), %rax
.Ltmp49:
	.loc	1 10 53                         # i128.c3:10:53
	movq	-1184(%rbp), %rsi
	movq	-1176(%rbp), %rdx
	.loc	1 10 9 is_stmt 0                # i128.c3:10:9
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -1264(%rbp)
	movq	%rax, -1256(%rbp)
	movq	-1264(%rbp), %rax
	movq	-1256(%rbp), %rdx
	addq	$1712, %rsp                     # imm = 0x6B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp50:
.Lfunc_end0:
	.size	__divti3, .Lfunc_end0-__divti3
	.cfi_endproc
                                        # -- End function
	.section	.text.__umodti3,"axG",@progbits,__umodti3,comdat
	.weak	__umodti3                       # -- Begin function __umodti3
	.p2align	4, 0x90
	.type	__umodti3,@function
__umodti3:                              # @__umodti3
.Lfunc_begin1:
	.loc	1 185 0 is_stmt 1               # i128.c3:185:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1312, %rsp                     # imm = 0x520
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
.Ltmp51:
	.loc	1 15 13 prologue_end            # i128.c3:15:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -96(%rbp)
	.loc	1 15 26 is_stmt 0               # i128.c3:15:26
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rax, -96(%rbp)
	.loc	1 16 13 is_stmt 1               # i128.c3:16:13
	vmovdqa	%xmm0, -112(%rbp)
	.loc	1 16 26 is_stmt 0               # i128.c3:16:26
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	%rax, -112(%rbp)
	.loc	1 19 7 is_stmt 1                # i128.c3:19:7
	movl	$0, -148(%rbp)
	.loc	1 20 6                          # i128.c3:20:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_5
# %bb.1:
.Ltmp52:
	.loc	1 22 7                          # i128.c3:22:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB1_4
# %bb.2:
.Ltmp53:
	.loc	1 25 12                         # i128.c3:25:12
	movq	-96(%rbp), %rax
	movq	%rax, -960(%rbp)                # 8-byte Spill
	.loc	1 25 20 is_stmt 0               # i128.c3:25:20
	movq	-112(%rbp), %rax
	movq	%rax, -952(%rbp)                # 8-byte Spill
	.loc	1 25 12                         # i128.c3:25:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_56
# %bb.3:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-952(%rbp), %rcx                # 8-byte Reload
	movq	-960(%rbp), %rax                # 8-byte Reload
	.loc	1 25 12                         # i128.c3:25:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rdx, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB1_55
.Ltmp54:
.LBB1_4:
	.loc	1 31 11 is_stmt 1               # i128.c3:31:11
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB1_55
.Ltmp55:
.LBB1_5:
	.loc	1 36 6                          # i128.c3:36:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-112(%rbp), %rax
	jne	.LBB1_21
# %bb.6:
.Ltmp56:
	.loc	1 38 7                          # i128.c3:38:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB1_9
# %bb.7:
.Ltmp57:
	.loc	1 41 12                         # i128.c3:41:12
	movq	-88(%rbp), %rax
	movq	%rax, -976(%rbp)                # 8-byte Spill
	.loc	1 41 21 is_stmt 0               # i128.c3:41:21
	movq	-112(%rbp), %rax
	movq	%rax, -968(%rbp)                # 8-byte Spill
	.loc	1 41 12                         # i128.c3:41:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_57
# %bb.8:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-968(%rbp), %rcx                # 8-byte Reload
	movq	-976(%rbp), %rax                # 8-byte Reload
	.loc	1 41 12                         # i128.c3:41:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rdx, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB1_55
.Ltmp58:
.LBB1_9:
	.loc	1 46 7 is_stmt 1                # i128.c3:46:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_12
# %bb.10:
.Ltmp59:
	.loc	1 49 14                         # i128.c3:49:14
	movq	-88(%rbp), %rax
	movq	%rax, -992(%rbp)                # 8-byte Spill
	.loc	1 49 23 is_stmt 0               # i128.c3:49:23
	movq	-104(%rbp), %rax
	movq	%rax, -984(%rbp)                # 8-byte Spill
	.loc	1 49 14                         # i128.c3:49:14
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_58
# %bb.11:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-984(%rbp), %rcx                # 8-byte Reload
	movq	-992(%rbp), %rax                # 8-byte Reload
	.loc	1 49 14                         # i128.c3:49:14
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	.loc	1 49 5                          # i128.c3:49:5
	movq	%rdx, -136(%rbp)
	.loc	1 50 5 is_stmt 1                # i128.c3:50:5
	movq	$0, -144(%rbp)
	.loc	1 51 12                         # i128.c3:51:12
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB1_55
.Ltmp60:
.LBB1_12:
	.loc	1 56 7                          # i128.c3:56:7
	movq	-104(%rbp), %rax
	.loc	1 56 17 is_stmt 0               # i128.c3:56:17
	movq	-104(%rbp), %rcx
	subq	$1, %rcx
	.loc	1 56 7                          # i128.c3:56:7
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB1_14
# %bb.13:
.Ltmp61:
	.loc	1 59 5 is_stmt 1                # i128.c3:59:5
	movq	-96(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc	1 60 14                         # i128.c3:60:14
	movq	-88(%rbp), %rax
	.loc	1 60 24 is_stmt 0               # i128.c3:60:24
	movq	-104(%rbp), %rcx
	decq	%rcx
	.loc	1 60 14                         # i128.c3:60:14
	andq	%rcx, %rax
	.loc	1 60 5                          # i128.c3:60:5
	movq	%rax, -136(%rbp)
	.loc	1 61 12 is_stmt 1               # i128.c3:61:12
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB1_55
.Ltmp62:
.LBB1_14:
	.loc	1 66 20                         # i128.c3:66:20
	movq	-104(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 66 42 is_stmt 0               # i128.c3:66:42
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 66 8                          # i128.c3:66:8
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	.loc	1 68 7 is_stmt 1                # i128.c3:68:7
	movl	$62, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB1_16
# %bb.15:
.Ltmp63:
	.loc	1 71 12                         # i128.c3:71:12
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB1_55
.Ltmp64:
.LBB1_16:
	.loc	1 76 3                          # i128.c3:76:3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	.loc	1 79 3                          # i128.c3:79:3
	movq	$0, -128(%rbp)
	.loc	1 80 12                         # i128.c3:80:12
	movq	-96(%rbp), %rax
	movq	%rax, -1008(%rbp)               # 8-byte Spill
	.loc	1 80 22 is_stmt 0               # i128.c3:80:22
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 80 12                         # i128.c3:80:12
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1000(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_59
# %bb.17:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1008(%rbp), %rax               # 8-byte Reload
	movq	-1000(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 80 12                         # i128.c3:80:12
	shlq	%cl, %rax
	.loc	1 80 3                          # i128.c3:80:3
	movq	%rax, -120(%rbp)
	.loc	1 81 12 is_stmt 1               # i128.c3:81:12
	movq	-88(%rbp), %rax
	movq	%rax, -1024(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1016(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_60
# %bb.18:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1024(%rbp), %rax               # 8-byte Reload
	movq	-1016(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 81 12                         # i128.c3:81:12
	shrq	%cl, %rax
	.loc	1 81 3                          # i128.c3:81:3
	movq	%rax, -136(%rbp)
	.loc	1 82 12 is_stmt 1               # i128.c3:82:12
	movq	-88(%rbp), %rax
	movq	%rax, -1040(%rbp)               # 8-byte Spill
	.loc	1 82 23 is_stmt 0               # i128.c3:82:23
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 82 12                         # i128.c3:82:12
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1032(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_61
# %bb.19:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1040(%rbp), %rax               # 8-byte Reload
	movq	-1032(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 82 12                         # i128.c3:82:12
	shlq	%cl, %rax
	movq	%rax, -1064(%rbp)               # 8-byte Spill
	.loc	1 82 36                         # i128.c3:82:36
	movq	-96(%rbp), %rax
	movq	%rax, -1056(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1048(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_62
# %bb.20:
	.loc	1 0 36                          # i128.c3:0:36
	movq	-1064(%rbp), %rax               # 8-byte Reload
	movq	-1056(%rbp), %rdx               # 8-byte Reload
	movq	-1048(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 82 36                         # i128.c3:82:36
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 82 11                         # i128.c3:82:11
	orq	%rcx, %rax
	.loc	1 82 3                          # i128.c3:82:3
	movq	%rax, -144(%rbp)
	jmp	.LBB1_51
.Ltmp65:
.LBB1_21:
	.loc	1 86 7 is_stmt 1                # i128.c3:86:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB1_40
# %bb.22:
.Ltmp66:
	.loc	1 88 8                          # i128.c3:88:8
	movq	-112(%rbp), %rax
	.loc	1 88 17 is_stmt 0               # i128.c3:88:17
	movq	-112(%rbp), %rcx
	subq	$1, %rcx
	.loc	1 88 8                          # i128.c3:88:8
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB1_24
# %bb.23:
.Ltmp67:
	.loc	1 91 23 is_stmt 1               # i128.c3:91:23
	movq	-96(%rbp), %rcx
	.loc	1 91 32 is_stmt 0               # i128.c3:91:32
	movq	-112(%rbp), %rax
	decq	%rax
	.loc	1 91 13                         # i128.c3:91:13
	andq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$63, %rax
	movq	%rcx, -80(%rbp)
	movq	%rax, -72(%rbp)
	jmp	.LBB1_55
.Ltmp68:
.LBB1_24:
	.loc	1 100 30 is_stmt 1              # i128.c3:100:30
	movq	-112(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 100 9 is_stmt 0               # i128.c3:100:9
	addl	$65, %eax
	.loc	1 100 51                        # i128.c3:100:51
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 100 9                         # i128.c3:100:9
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	movb	$1, -337(%rbp)
# %bb.25:
	.loc	1 0 9                           # i128.c3:0:9
	movb	-337(%rbp), %cl
	movb	%cl, -1065(%rbp)                # 1-byte Spill
	andb	$1, %cl
.Ltmp69:
	.loc	1 106 10 is_stmt 1              # i128.c3:106:10
	movl	-148(%rbp), %eax
	subl	$64, %eax
	sete	%al
	subb	%cl, %al
	jne	.LBB1_27
	jmp	.LBB1_26
.LBB1_26:
.Ltmp70:
	.loc	1 107 6                         # i128.c3:107:6
	movq	$0, -128(%rbp)
	.loc	1 108 6                         # i128.c3:108:6
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 109 6                         # i128.c3:109:6
	movq	$0, -136(%rbp)
	.loc	1 110 6                         # i128.c3:110:6
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB1_39
.Ltmp71:
.LBB1_27:
	.loc	1 0 6 is_stmt 0                 # i128.c3:0:6
	movb	-1065(%rbp), %cl                # 1-byte Reload
	.loc	1 111 10 is_stmt 1              # i128.c3:111:10
	movl	-148(%rbp), %eax
	subl	$64, %eax
	setb	%al
	andb	$1, %cl
	subb	%cl, %al
	jne	.LBB1_33
	jmp	.LBB1_28
.LBB1_28:
.Ltmp72:
	.loc	1 112 6                         # i128.c3:112:6
	movq	$0, -128(%rbp)
	.loc	1 113 15                        # i128.c3:113:15
	movq	-96(%rbp), %rax
	movq	%rax, -1088(%rbp)               # 8-byte Spill
	.loc	1 113 25 is_stmt 0              # i128.c3:113:25
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 113 15                        # i128.c3:113:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1080(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_63
# %bb.29:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1088(%rbp), %rax               # 8-byte Reload
	movq	-1080(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 113 15                        # i128.c3:113:15
	shlq	%cl, %rax
	.loc	1 113 6                         # i128.c3:113:6
	movq	%rax, -120(%rbp)
	.loc	1 114 15 is_stmt 1              # i128.c3:114:15
	movq	-88(%rbp), %rax
	movq	%rax, -1104(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1096(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_64
# %bb.30:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1104(%rbp), %rax               # 8-byte Reload
	movq	-1096(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 114 15                        # i128.c3:114:15
	shrq	%cl, %rax
	.loc	1 114 6                         # i128.c3:114:6
	movq	%rax, -136(%rbp)
	.loc	1 115 15 is_stmt 1              # i128.c3:115:15
	movq	-88(%rbp), %rax
	movq	%rax, -1120(%rbp)               # 8-byte Spill
	.loc	1 115 26 is_stmt 0              # i128.c3:115:26
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 115 15                        # i128.c3:115:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1112(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_65
# %bb.31:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1120(%rbp), %rax               # 8-byte Reload
	movq	-1112(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 115 15                        # i128.c3:115:15
	shlq	%cl, %rax
	movq	%rax, -1144(%rbp)               # 8-byte Spill
	.loc	1 115 39                        # i128.c3:115:39
	movq	-96(%rbp), %rax
	movq	%rax, -1136(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1128(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_66
# %bb.32:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1144(%rbp), %rax               # 8-byte Reload
	movq	-1136(%rbp), %rdx               # 8-byte Reload
	movq	-1128(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 115 39                        # i128.c3:115:39
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 115 14                        # i128.c3:115:14
	orq	%rcx, %rax
	.loc	1 115 6                         # i128.c3:115:6
	movq	%rax, -144(%rbp)
	jmp	.LBB1_39
.LBB1_33:
	jmp	.LBB1_34
.Ltmp73:
.LBB1_34:
	.loc	1 117 14 is_stmt 1              # i128.c3:117:14
	movq	-96(%rbp), %rax
	movq	%rax, -1160(%rbp)               # 8-byte Spill
	.loc	1 117 24 is_stmt 0              # i128.c3:117:24
	movl	$128, %eax
	subl	-148(%rbp), %eax
	.loc	1 117 14                        # i128.c3:117:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1152(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_67
# %bb.35:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1160(%rbp), %rax               # 8-byte Reload
	movq	-1152(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 117 14                        # i128.c3:117:14
	shlq	%cl, %rax
	.loc	1 117 6                         # i128.c3:117:6
	movq	%rax, -128(%rbp)
	.loc	1 118 16 is_stmt 1              # i128.c3:118:16
	movq	-88(%rbp), %rax
	movq	%rax, -1176(%rbp)               # 8-byte Spill
	.loc	1 118 27 is_stmt 0              # i128.c3:118:27
	movl	$128, %eax
	subl	-148(%rbp), %eax
	.loc	1 118 16                        # i128.c3:118:16
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1168(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_68
# %bb.36:
	.loc	1 0 16                          # i128.c3:0:16
	movq	-1176(%rbp), %rax               # 8-byte Reload
	movq	-1168(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 118 16                        # i128.c3:118:16
	shlq	%cl, %rax
	movq	%rax, -1200(%rbp)               # 8-byte Spill
	.loc	1 118 41                        # i128.c3:118:41
	movq	-96(%rbp), %rax
	movq	%rax, -1192(%rbp)               # 8-byte Spill
	.loc	1 118 51                        # i128.c3:118:51
	movl	-148(%rbp), %eax
	subl	$64, %eax
	.loc	1 118 41                        # i128.c3:118:41
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1184(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_69
# %bb.37:
	.loc	1 0 41                          # i128.c3:0:41
	movq	-1200(%rbp), %rax               # 8-byte Reload
	movq	-1192(%rbp), %rdx               # 8-byte Reload
	movq	-1184(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 118 41                        # i128.c3:118:41
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 118 15                        # i128.c3:118:15
	orq	%rcx, %rax
	.loc	1 118 6                         # i128.c3:118:6
	movq	%rax, -120(%rbp)
	.loc	1 119 6 is_stmt 1               # i128.c3:119:6
	movq	$0, -136(%rbp)
	.loc	1 120 14                        # i128.c3:120:14
	movq	-88(%rbp), %rax
	movq	%rax, -1216(%rbp)               # 8-byte Spill
	.loc	1 120 25 is_stmt 0              # i128.c3:120:25
	movl	-148(%rbp), %eax
	subl	$64, %eax
	.loc	1 120 14                        # i128.c3:120:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1208(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_70
# %bb.38:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1216(%rbp), %rax               # 8-byte Reload
	movq	-1208(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 120 14                        # i128.c3:120:14
	shrq	%cl, %rax
	.loc	1 120 6                         # i128.c3:120:6
	movq	%rax, -144(%rbp)
.LBB1_39:
	jmp	.LBB1_50
.Ltmp74:
.LBB1_40:
	.loc	1 125 21 is_stmt 1              # i128.c3:125:21
	movq	-104(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 125 43 is_stmt 0              # i128.c3:125:43
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 125 9                         # i128.c3:125:9
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	.loc	1 127 8 is_stmt 1               # i128.c3:127:8
	movl	$63, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB1_42
# %bb.41:
.Ltmp75:
	.loc	1 130 13                        # i128.c3:130:13
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB1_55
.Ltmp76:
.LBB1_42:
	.loc	1 136 4                         # i128.c3:136:4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	.loc	1 140 4                         # i128.c3:140:4
	movq	$0, -128(%rbp)
	.loc	1 141 8                         # i128.c3:141:8
	movl	$64, %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB1_44
# %bb.43:
.Ltmp77:
	.loc	1 143 5                         # i128.c3:143:5
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 144 5                         # i128.c3:144:5
	movq	$0, -136(%rbp)
	.loc	1 145 5                         # i128.c3:145:5
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB1_49
.Ltmp78:
.LBB1_44:
	.loc	1 149 14                        # i128.c3:149:14
	movq	-88(%rbp), %rax
	movq	%rax, -1232(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1224(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_71
# %bb.45:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1232(%rbp), %rax               # 8-byte Reload
	movq	-1224(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 149 14                        # i128.c3:149:14
	shrq	%cl, %rax
	.loc	1 149 5                         # i128.c3:149:5
	movq	%rax, -136(%rbp)
	.loc	1 150 14 is_stmt 1              # i128.c3:150:14
	movq	-88(%rbp), %rax
	movq	%rax, -1248(%rbp)               # 8-byte Spill
	.loc	1 150 25 is_stmt 0              # i128.c3:150:25
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 150 14                        # i128.c3:150:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1240(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_72
# %bb.46:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1248(%rbp), %rax               # 8-byte Reload
	movq	-1240(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 150 14                        # i128.c3:150:14
	shlq	%cl, %rax
	movq	%rax, -1272(%rbp)               # 8-byte Spill
	.loc	1 150 38                        # i128.c3:150:38
	movq	-96(%rbp), %rax
	movq	%rax, -1264(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1256(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_73
# %bb.47:
	.loc	1 0 38                          # i128.c3:0:38
	movq	-1272(%rbp), %rax               # 8-byte Reload
	movq	-1264(%rbp), %rdx               # 8-byte Reload
	movq	-1256(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 150 38                        # i128.c3:150:38
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 150 13                        # i128.c3:150:13
	orq	%rcx, %rax
	.loc	1 150 5                         # i128.c3:150:5
	movq	%rax, -144(%rbp)
	.loc	1 151 14 is_stmt 1              # i128.c3:151:14
	movq	-96(%rbp), %rax
	movq	%rax, -1288(%rbp)               # 8-byte Spill
	.loc	1 151 24 is_stmt 0              # i128.c3:151:24
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 151 14                        # i128.c3:151:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1280(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_74
# %bb.48:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1288(%rbp), %rax               # 8-byte Reload
	movq	-1280(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 151 14                        # i128.c3:151:14
	shlq	%cl, %rax
	.loc	1 151 5                         # i128.c3:151:5
	movq	%rax, -120(%rbp)
.LBB1_49:
	jmp	.LBB1_50
.LBB1_50:
	jmp	.LBB1_51
.Ltmp79:
.LBB1_51:
	.loc	1 160 15 is_stmt 1              # i128.c3:160:15
	movl	$0, -916(%rbp)
.LBB1_52:                               # =>This Inner Loop Header: Depth=1
.Ltmp80:
	.loc	1 161 9                         # i128.c3:161:9
	xorl	%eax, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB1_54
# %bb.53:                               #   in Loop: Header=BB1_52 Depth=1
.Ltmp81:
	.loc	1 164 29                        # i128.c3:164:29
	movq	-144(%rbp), %rcx
	.loc	1 164 13 is_stmt 0              # i128.c3:164:13
	movq	-136(%rbp), %rax
	addq	%rax, %rax
	.loc	1 164 29                        # i128.c3:164:29
	shrq	$63, %rcx
	.loc	1 164 12                        # i128.c3:164:12
	orq	%rcx, %rax
	.loc	1 164 3                         # i128.c3:164:3
	movq	%rax, -136(%rbp)
	.loc	1 165 13 is_stmt 1              # i128.c3:165:13
	movq	-144(%rbp), %rax
	addq	%rax, %rax
	.loc	1 165 29 is_stmt 0              # i128.c3:165:29
	movq	-120(%rbp), %rcx
	shrq	$63, %rcx
	.loc	1 165 12                        # i128.c3:165:12
	orq	%rcx, %rax
	.loc	1 165 3                         # i128.c3:165:3
	movq	%rax, -144(%rbp)
	.loc	1 166 29 is_stmt 1              # i128.c3:166:29
	movq	-128(%rbp), %rcx
	.loc	1 166 13 is_stmt 0              # i128.c3:166:13
	movq	-120(%rbp), %rax
	addq	%rax, %rax
	.loc	1 166 29                        # i128.c3:166:29
	shrq	$63, %rcx
	.loc	1 166 12                        # i128.c3:166:12
	orq	%rcx, %rax
	.loc	1 166 3                         # i128.c3:166:3
	movq	%rax, -120(%rbp)
	.loc	1 167 13 is_stmt 1              # i128.c3:167:13
	movq	-128(%rbp), %rax
	addq	%rax, %rax
	.loc	1 167 28 is_stmt 0              # i128.c3:167:28
	movl	-916(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 167 12                        # i128.c3:167:12
	orq	%rcx, %rax
	.loc	1 167 3                         # i128.c3:167:3
	movq	%rax, -128(%rbp)
	.loc	1 174 23 is_stmt 1              # i128.c3:174:23
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rcx
	.loc	1 174 31 is_stmt 0              # i128.c3:174:31
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	.loc	1 174 14                        # i128.c3:174:14
	notq	%rax
	notq	%rdx
	addq	%rsi, %rdx
	adcq	%rcx, %rax
	sarq	$63, %rax
	movq	%rax, -936(%rbp)
	movq	%rax, -944(%rbp)
	.loc	1 175 18 is_stmt 1              # i128.c3:175:18
	movl	-944(%rbp), %eax
	.loc	1 175 11 is_stmt 0              # i128.c3:175:11
	andl	$1, %eax
	movl	%eax, -916(%rbp)
	.loc	1 176 3 is_stmt 1               # i128.c3:176:3
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	.loc	1 176 12 is_stmt 0              # i128.c3:176:12
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rdx
	.loc	1 176 20                        # i128.c3:176:20
	movq	-944(%rbp), %rdi
	movq	-936(%rbp), %r8
	.loc	1 176 12                        # i128.c3:176:12
	andq	%r8, %rdx
	andq	%rdi, %rsi
	.loc	1 176 3                         # i128.c3:176:3
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -144(%rbp)
	movq	%rax, -136(%rbp)
.Ltmp82:
	.loc	1 161 17 is_stmt 1              # i128.c3:161:17
	movl	-148(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB1_52
.Ltmp83:
.LBB1_54:
	.loc	1 179 10                        # i128.c3:179:10
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
.LBB1_55:
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	.loc	1 179 10 epilogue_begin is_stmt 0 # i128.c3:179:10
	addq	$1312, %rsp                     # imm = 0x520
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_56:
	.cfi_def_cfa %rbp, 16
.Ltmp84:
	.loc	1 25 12 is_stmt 1               # i128.c3:25:12
	leaq	.panic_msg(%rip), %rdi
	movl	$10, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$25, (%rsp)
	callq	*(%rax)
.Ltmp85:
.LBB1_57:
	.loc	1 41 12                         # i128.c3:41:12
	leaq	.panic_msg(%rip), %rdi
	movl	$10, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$41, (%rsp)
	callq	*(%rax)
.Ltmp86:
.LBB1_58:
	.loc	1 49 14                         # i128.c3:49:14
	leaq	.panic_msg(%rip), %rdi
	movl	$10, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$49, (%rsp)
	callq	*(%rax)
.Ltmp87:
.LBB1_59:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1000(%rbp), %rax               # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	1 80 12 is_stmt 1               # i128.c3:80:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-192(%rbp), %rax
	movl	$80, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_60:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1016(%rbp), %rax               # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 81 12 is_stmt 1               # i128.c3:81:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-240(%rbp), %rax
	movl	$81, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_61:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1032(%rbp), %rax               # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-248(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
	.loc	1 82 12 is_stmt 1               # i128.c3:82:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-288(%rbp), %rax
	movl	$82, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_62:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1048(%rbp), %rax               # 8-byte Reload
	movq	%rax, -296(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	-296(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$1, -328(%rbp)
	.loc	1 82 36                         # i128.c3:82:36
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-336(%rbp), %rax
	movl	$82, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp88:
.LBB1_63:
	.loc	1 0 36                          # i128.c3:0:36
	movq	-1080(%rbp), %rax               # 8-byte Reload
	movq	%rax, -352(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -360(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$1, -376(%rbp)
.Ltmp89:
	.loc	1 113 15 is_stmt 1              # i128.c3:113:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-384(%rbp), %rax
	movl	$113, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_64:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1096(%rbp), %rax               # 8-byte Reload
	movq	%rax, -392(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -408(%rbp)
	leaq	-392(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$1, -424(%rbp)
	.loc	1 114 15 is_stmt 1              # i128.c3:114:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-432(%rbp), %rax
	movl	$114, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_65:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1112(%rbp), %rax               # 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -456(%rbp)
	leaq	-440(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$1, -472(%rbp)
	.loc	1 115 15 is_stmt 1              # i128.c3:115:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-480(%rbp), %rax
	movl	$115, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_66:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1128(%rbp), %rax               # 8-byte Reload
	movq	%rax, -488(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -504(%rbp)
	leaq	-488(%rbp), %rax
	movq	%rax, -512(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	$1, -520(%rbp)
	.loc	1 115 39                        # i128.c3:115:39
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-528(%rbp), %rax
	movl	$115, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp90:
.LBB1_67:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1152(%rbp), %rax               # 8-byte Reload
	movq	%rax, -536(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -552(%rbp)
	leaq	-536(%rbp), %rax
	movq	%rax, -560(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	$1, -568(%rbp)
.Ltmp91:
	.loc	1 117 14 is_stmt 1              # i128.c3:117:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-576(%rbp), %rax
	movl	$117, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_68:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1168(%rbp), %rax               # 8-byte Reload
	movq	%rax, -584(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -600(%rbp)
	leaq	-584(%rbp), %rax
	movq	%rax, -608(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	$1, -616(%rbp)
	.loc	1 118 16 is_stmt 1              # i128.c3:118:16
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-624(%rbp), %rax
	movl	$118, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_69:
	.loc	1 0 16 is_stmt 0                # i128.c3:0:16
	movq	-1184(%rbp), %rax               # 8-byte Reload
	movq	%rax, -632(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -648(%rbp)
	leaq	-632(%rbp), %rax
	movq	%rax, -656(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$1, -664(%rbp)
	.loc	1 118 41                        # i128.c3:118:41
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-672(%rbp), %rax
	movl	$118, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_70:
	.loc	1 0 41                          # i128.c3:0:41
	movq	-1208(%rbp), %rax               # 8-byte Reload
	movq	%rax, -680(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -696(%rbp)
	leaq	-680(%rbp), %rax
	movq	%rax, -704(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	$1, -712(%rbp)
	.loc	1 120 14 is_stmt 1              # i128.c3:120:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-720(%rbp), %rax
	movl	$120, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp92:
.LBB1_71:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1224(%rbp), %rax               # 8-byte Reload
	movq	%rax, -728(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -744(%rbp)
	leaq	-728(%rbp), %rax
	movq	%rax, -752(%rbp)
	leaq	-752(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	$1, -760(%rbp)
.Ltmp93:
	.loc	1 149 14 is_stmt 1              # i128.c3:149:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-768(%rbp), %rax
	movl	$149, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_72:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1240(%rbp), %rax               # 8-byte Reload
	movq	%rax, -776(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -792(%rbp)
	leaq	-776(%rbp), %rax
	movq	%rax, -800(%rbp)
	leaq	-800(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	$1, -808(%rbp)
	.loc	1 150 14 is_stmt 1              # i128.c3:150:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-816(%rbp), %rax
	movl	$150, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_73:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1256(%rbp), %rax               # 8-byte Reload
	movq	%rax, -824(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -840(%rbp)
	leaq	-824(%rbp), %rax
	movq	%rax, -848(%rbp)
	leaq	-848(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	$1, -856(%rbp)
	.loc	1 150 38                        # i128.c3:150:38
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-864(%rbp), %rax
	movl	$150, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_74:
	.loc	1 0 38                          # i128.c3:0:38
	movq	-1280(%rbp), %rax               # 8-byte Reload
	movq	%rax, -872(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -888(%rbp)
	leaq	-872(%rbp), %rax
	movq	%rax, -896(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	$1, -904(%rbp)
	.loc	1 151 14 is_stmt 1              # i128.c3:151:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$9, %r9d
	leaq	-912(%rbp), %rax
	movl	$151, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp94:
.Lfunc_end1:
	.size	__umodti3, .Lfunc_end1-__umodti3
	.cfi_endproc
                                        # -- End function
	.section	.text.__udivti3,"axG",@progbits,__udivti3,comdat
	.weak	__udivti3                       # -- Begin function __udivti3
	.p2align	4, 0x90
	.type	__udivti3,@function
__udivti3:                              # @__udivti3
.Lfunc_begin2:
	.loc	1 190 0                         # i128.c3:190:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1584, %rsp                     # imm = 0x630
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
.Ltmp95:
	.loc	1 15 13 prologue_end            # i128.c3:15:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -96(%rbp)
	.loc	1 15 26 is_stmt 0               # i128.c3:15:26
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rax, -96(%rbp)
	.loc	1 16 13 is_stmt 1               # i128.c3:16:13
	vmovdqa	%xmm0, -112(%rbp)
	.loc	1 16 26 is_stmt 0               # i128.c3:16:26
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	%rax, -112(%rbp)
	.loc	1 19 7 is_stmt 1                # i128.c3:19:7
	movl	$0, -148(%rbp)
	.loc	1 20 6                          # i128.c3:20:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_5
# %bb.1:
.Ltmp96:
	.loc	1 22 7                          # i128.c3:22:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB2_4
# %bb.2:
.Ltmp97:
	.loc	1 27 12                         # i128.c3:27:12
	movq	-96(%rbp), %rax
	movq	%rax, -1152(%rbp)               # 8-byte Spill
	.loc	1 27 20 is_stmt 0               # i128.c3:27:20
	movq	-112(%rbp), %rax
	movq	%rax, -1144(%rbp)               # 8-byte Spill
	.loc	1 27 12                         # i128.c3:27:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_62
# %bb.3:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1144(%rbp), %rcx               # 8-byte Reload
	movq	-1152(%rbp), %rax               # 8-byte Reload
	.loc	1 27 12                         # i128.c3:27:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB2_61
.Ltmp98:
.LBB2_4:
	.loc	1 33 11 is_stmt 1               # i128.c3:33:11
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB2_61
.Ltmp99:
.LBB2_5:
	.loc	1 36 6                          # i128.c3:36:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_22
# %bb.6:
.Ltmp100:
	.loc	1 38 7                          # i128.c3:38:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB2_9
# %bb.7:
.Ltmp101:
	.loc	1 43 12                         # i128.c3:43:12
	movq	-88(%rbp), %rax
	movq	%rax, -1168(%rbp)               # 8-byte Spill
	.loc	1 43 21 is_stmt 0               # i128.c3:43:21
	movq	-112(%rbp), %rax
	movq	%rax, -1160(%rbp)               # 8-byte Spill
	.loc	1 43 12                         # i128.c3:43:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_63
# %bb.8:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1160(%rbp), %rcx               # 8-byte Reload
	movq	-1168(%rbp), %rax               # 8-byte Reload
	.loc	1 43 12                         # i128.c3:43:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB2_61
.Ltmp102:
.LBB2_9:
	.loc	1 46 7 is_stmt 1                # i128.c3:46:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-96(%rbp), %rax
	jne	.LBB2_12
# %bb.10:
.Ltmp103:
	.loc	1 53 12                         # i128.c3:53:12
	movq	-88(%rbp), %rax
	movq	%rax, -1184(%rbp)               # 8-byte Spill
	.loc	1 53 21 is_stmt 0               # i128.c3:53:21
	movq	-104(%rbp), %rax
	movq	%rax, -1176(%rbp)               # 8-byte Spill
	.loc	1 53 12                         # i128.c3:53:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_64
# %bb.11:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1176(%rbp), %rcx               # 8-byte Reload
	movq	-1184(%rbp), %rax               # 8-byte Reload
	.loc	1 53 12                         # i128.c3:53:12
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB2_61
.Ltmp104:
.LBB2_12:
	.loc	1 56 7 is_stmt 1                # i128.c3:56:7
	movq	-104(%rbp), %rax
	.loc	1 56 17 is_stmt 0               # i128.c3:56:17
	movq	-104(%rbp), %rcx
	subq	$1, %rcx
	.loc	1 56 7                          # i128.c3:56:7
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB2_15
# %bb.13:
.Ltmp105:
	.loc	1 63 22 is_stmt 1               # i128.c3:63:22
	movq	-88(%rbp), %rax
	movq	%rax, -1200(%rbp)               # 8-byte Spill
	.loc	1 63 38 is_stmt 0               # i128.c3:63:38
	movq	-104(%rbp), %rax
	bsfq	%rax, %rax
	movl	$64, %ecx
	cmoveq	%rcx, %rax
	movq	%rax, -1192(%rbp)               # 8-byte Spill
	.loc	1 63 12                         # i128.c3:63:12
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_65
# %bb.14:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1200(%rbp), %rax               # 8-byte Reload
	movq	-1192(%rbp), %rcx               # 8-byte Reload
	.loc	1 63 12                         # i128.c3:63:12
	shrq	%cl, %rax
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
	jmp	.LBB2_61
.Ltmp106:
.LBB2_15:
	.loc	1 66 20 is_stmt 1               # i128.c3:66:20
	movq	-104(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 66 42 is_stmt 0               # i128.c3:66:42
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 66 8                          # i128.c3:66:8
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	.loc	1 68 7 is_stmt 1                # i128.c3:68:7
	movl	$62, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB2_17
# %bb.16:
.Ltmp107:
	.loc	1 73 12                         # i128.c3:73:12
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB2_61
.Ltmp108:
.LBB2_17:
	.loc	1 76 3                          # i128.c3:76:3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	.loc	1 79 3                          # i128.c3:79:3
	movq	$0, -128(%rbp)
	.loc	1 80 12                         # i128.c3:80:12
	movq	-96(%rbp), %rax
	movq	%rax, -1216(%rbp)               # 8-byte Spill
	.loc	1 80 22 is_stmt 0               # i128.c3:80:22
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 80 12                         # i128.c3:80:12
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1208(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_66
# %bb.18:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1216(%rbp), %rax               # 8-byte Reload
	movq	-1208(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 80 12                         # i128.c3:80:12
	shlq	%cl, %rax
	.loc	1 80 3                          # i128.c3:80:3
	movq	%rax, -120(%rbp)
	.loc	1 81 12 is_stmt 1               # i128.c3:81:12
	movq	-88(%rbp), %rax
	movq	%rax, -1232(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1224(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_67
# %bb.19:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1232(%rbp), %rax               # 8-byte Reload
	movq	-1224(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 81 12                         # i128.c3:81:12
	shrq	%cl, %rax
	.loc	1 81 3                          # i128.c3:81:3
	movq	%rax, -136(%rbp)
	.loc	1 82 12 is_stmt 1               # i128.c3:82:12
	movq	-88(%rbp), %rax
	movq	%rax, -1248(%rbp)               # 8-byte Spill
	.loc	1 82 23 is_stmt 0               # i128.c3:82:23
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 82 12                         # i128.c3:82:12
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1240(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_68
# %bb.20:
	.loc	1 0 12                          # i128.c3:0:12
	movq	-1248(%rbp), %rax               # 8-byte Reload
	movq	-1240(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 82 12                         # i128.c3:82:12
	shlq	%cl, %rax
	movq	%rax, -1272(%rbp)               # 8-byte Spill
	.loc	1 82 36                         # i128.c3:82:36
	movq	-96(%rbp), %rax
	movq	%rax, -1264(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1256(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_69
# %bb.21:
	.loc	1 0 36                          # i128.c3:0:36
	movq	-1272(%rbp), %rax               # 8-byte Reload
	movq	-1264(%rbp), %rdx               # 8-byte Reload
	movq	-1256(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 82 36                         # i128.c3:82:36
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 82 11                         # i128.c3:82:11
	orq	%rcx, %rax
	.loc	1 82 3                          # i128.c3:82:3
	movq	%rax, -144(%rbp)
	jmp	.LBB2_57
.Ltmp109:
.LBB2_22:
	.loc	1 86 7 is_stmt 1                # i128.c3:86:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-104(%rbp), %rax
	jne	.LBB2_46
# %bb.23:
.Ltmp110:
	.loc	1 88 8                          # i128.c3:88:8
	movq	-112(%rbp), %rax
	.loc	1 88 17 is_stmt 0               # i128.c3:88:17
	movq	-112(%rbp), %rcx
	subq	$1, %rcx
	.loc	1 88 8                          # i128.c3:88:8
	andq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB2_30
# %bb.24:
.Ltmp111:
	.loc	1 93 10 is_stmt 1               # i128.c3:93:10
	movl	$1, %eax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_26
# %bb.25:
	.loc	1 93 29 is_stmt 0               # i128.c3:93:29
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB2_61
.LBB2_26:
	.loc	1 94 23 is_stmt 1               # i128.c3:94:23
	movq	-112(%rbp), %rax
	bsfq	%rax, %rax
	movl	$64, %ecx
	cmoveq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -148(%rbp)
	.loc	1 95 15                         # i128.c3:95:15
	movq	-88(%rbp), %rax
	movq	%rax, -1288(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1280(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_70
# %bb.27:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1288(%rbp), %rax               # 8-byte Reload
	movq	-1280(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 95 15                         # i128.c3:95:15
	shrq	%cl, %rax
	.loc	1 95 6                          # i128.c3:95:6
	movq	%rax, -120(%rbp)
	.loc	1 96 15 is_stmt 1               # i128.c3:96:15
	movq	-88(%rbp), %rax
	movq	%rax, -1304(%rbp)               # 8-byte Spill
	.loc	1 96 26 is_stmt 0               # i128.c3:96:26
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 96 15                         # i128.c3:96:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1296(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_71
# %bb.28:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1304(%rbp), %rax               # 8-byte Reload
	movq	-1296(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 96 15                         # i128.c3:96:15
	shlq	%cl, %rax
	movq	%rax, -1328(%rbp)               # 8-byte Spill
	.loc	1 96 39                         # i128.c3:96:39
	movq	-96(%rbp), %rax
	movq	%rax, -1320(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1312(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_72
# %bb.29:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1328(%rbp), %rax               # 8-byte Reload
	movq	-1320(%rbp), %rdx               # 8-byte Reload
	movq	-1312(%rbp), %rcx               # 8-byte Reload
	.loc	1 96 39                         # i128.c3:96:39
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 96 14                         # i128.c3:96:14
	orq	%rcx, %rax
	.loc	1 96 6                          # i128.c3:96:6
	movq	%rax, -128(%rbp)
	.loc	1 97 13 is_stmt 1               # i128.c3:97:13
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	jmp	.LBB2_61
.Ltmp112:
.LBB2_30:
	.loc	1 100 30                        # i128.c3:100:30
	movq	-112(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 100 9 is_stmt 0               # i128.c3:100:9
	addl	$65, %eax
	.loc	1 100 51                        # i128.c3:100:51
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 100 9                         # i128.c3:100:9
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	movb	$1, -529(%rbp)
# %bb.31:
	.loc	1 0 9                           # i128.c3:0:9
	movb	-529(%rbp), %cl
	movb	%cl, -1329(%rbp)                # 1-byte Spill
	andb	$1, %cl
.Ltmp113:
	.loc	1 106 10 is_stmt 1              # i128.c3:106:10
	movl	-148(%rbp), %eax
	subl	$64, %eax
	sete	%al
	subb	%cl, %al
	jne	.LBB2_33
	jmp	.LBB2_32
.LBB2_32:
.Ltmp114:
	.loc	1 107 6                         # i128.c3:107:6
	movq	$0, -128(%rbp)
	.loc	1 108 6                         # i128.c3:108:6
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 109 6                         # i128.c3:109:6
	movq	$0, -136(%rbp)
	.loc	1 110 6                         # i128.c3:110:6
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB2_45
.Ltmp115:
.LBB2_33:
	.loc	1 0 6 is_stmt 0                 # i128.c3:0:6
	movb	-1329(%rbp), %cl                # 1-byte Reload
	.loc	1 111 10 is_stmt 1              # i128.c3:111:10
	movl	-148(%rbp), %eax
	subl	$64, %eax
	setb	%al
	andb	$1, %cl
	subb	%cl, %al
	jne	.LBB2_39
	jmp	.LBB2_34
.LBB2_34:
.Ltmp116:
	.loc	1 112 6                         # i128.c3:112:6
	movq	$0, -128(%rbp)
	.loc	1 113 15                        # i128.c3:113:15
	movq	-96(%rbp), %rax
	movq	%rax, -1352(%rbp)               # 8-byte Spill
	.loc	1 113 25 is_stmt 0              # i128.c3:113:25
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 113 15                        # i128.c3:113:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1344(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_73
# %bb.35:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1352(%rbp), %rax               # 8-byte Reload
	movq	-1344(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 113 15                        # i128.c3:113:15
	shlq	%cl, %rax
	.loc	1 113 6                         # i128.c3:113:6
	movq	%rax, -120(%rbp)
	.loc	1 114 15 is_stmt 1              # i128.c3:114:15
	movq	-88(%rbp), %rax
	movq	%rax, -1368(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1360(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_74
# %bb.36:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1368(%rbp), %rax               # 8-byte Reload
	movq	-1360(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 114 15                        # i128.c3:114:15
	shrq	%cl, %rax
	.loc	1 114 6                         # i128.c3:114:6
	movq	%rax, -136(%rbp)
	.loc	1 115 15 is_stmt 1              # i128.c3:115:15
	movq	-88(%rbp), %rax
	movq	%rax, -1384(%rbp)               # 8-byte Spill
	.loc	1 115 26 is_stmt 0              # i128.c3:115:26
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 115 15                        # i128.c3:115:15
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1376(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_75
# %bb.37:
	.loc	1 0 15                          # i128.c3:0:15
	movq	-1384(%rbp), %rax               # 8-byte Reload
	movq	-1376(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 115 15                        # i128.c3:115:15
	shlq	%cl, %rax
	movq	%rax, -1408(%rbp)               # 8-byte Spill
	.loc	1 115 39                        # i128.c3:115:39
	movq	-96(%rbp), %rax
	movq	%rax, -1400(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1392(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_76
# %bb.38:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1408(%rbp), %rax               # 8-byte Reload
	movq	-1400(%rbp), %rdx               # 8-byte Reload
	movq	-1392(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 115 39                        # i128.c3:115:39
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 115 14                        # i128.c3:115:14
	orq	%rcx, %rax
	.loc	1 115 6                         # i128.c3:115:6
	movq	%rax, -144(%rbp)
	jmp	.LBB2_45
.LBB2_39:
	jmp	.LBB2_40
.Ltmp117:
.LBB2_40:
	.loc	1 117 14 is_stmt 1              # i128.c3:117:14
	movq	-96(%rbp), %rax
	movq	%rax, -1424(%rbp)               # 8-byte Spill
	.loc	1 117 24 is_stmt 0              # i128.c3:117:24
	movl	$128, %eax
	subl	-148(%rbp), %eax
	.loc	1 117 14                        # i128.c3:117:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1416(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_77
# %bb.41:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1424(%rbp), %rax               # 8-byte Reload
	movq	-1416(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 117 14                        # i128.c3:117:14
	shlq	%cl, %rax
	.loc	1 117 6                         # i128.c3:117:6
	movq	%rax, -128(%rbp)
	.loc	1 118 16 is_stmt 1              # i128.c3:118:16
	movq	-88(%rbp), %rax
	movq	%rax, -1440(%rbp)               # 8-byte Spill
	.loc	1 118 27 is_stmt 0              # i128.c3:118:27
	movl	$128, %eax
	subl	-148(%rbp), %eax
	.loc	1 118 16                        # i128.c3:118:16
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1432(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_78
# %bb.42:
	.loc	1 0 16                          # i128.c3:0:16
	movq	-1440(%rbp), %rax               # 8-byte Reload
	movq	-1432(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 118 16                        # i128.c3:118:16
	shlq	%cl, %rax
	movq	%rax, -1464(%rbp)               # 8-byte Spill
	.loc	1 118 41                        # i128.c3:118:41
	movq	-96(%rbp), %rax
	movq	%rax, -1456(%rbp)               # 8-byte Spill
	.loc	1 118 51                        # i128.c3:118:51
	movl	-148(%rbp), %eax
	subl	$64, %eax
	.loc	1 118 41                        # i128.c3:118:41
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1448(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_79
# %bb.43:
	.loc	1 0 41                          # i128.c3:0:41
	movq	-1464(%rbp), %rax               # 8-byte Reload
	movq	-1456(%rbp), %rdx               # 8-byte Reload
	movq	-1448(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 118 41                        # i128.c3:118:41
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 118 15                        # i128.c3:118:15
	orq	%rcx, %rax
	.loc	1 118 6                         # i128.c3:118:6
	movq	%rax, -120(%rbp)
	.loc	1 119 6 is_stmt 1               # i128.c3:119:6
	movq	$0, -136(%rbp)
	.loc	1 120 14                        # i128.c3:120:14
	movq	-88(%rbp), %rax
	movq	%rax, -1480(%rbp)               # 8-byte Spill
	.loc	1 120 25 is_stmt 0              # i128.c3:120:25
	movl	-148(%rbp), %eax
	subl	$64, %eax
	.loc	1 120 14                        # i128.c3:120:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1472(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_80
# %bb.44:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1480(%rbp), %rax               # 8-byte Reload
	movq	-1472(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 120 14                        # i128.c3:120:14
	shrq	%cl, %rax
	.loc	1 120 6                         # i128.c3:120:6
	movq	%rax, -144(%rbp)
.LBB2_45:
	jmp	.LBB2_56
.Ltmp118:
.LBB2_46:
	.loc	1 125 21 is_stmt 1              # i128.c3:125:21
	movq	-104(%rbp), %rax
	bsrq	%rax, %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	xorq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 125 43 is_stmt 0              # i128.c3:125:43
	movq	-88(%rbp), %rcx
	bsrq	%rcx, %rcx
	movl	$127, %edx
	cmoveq	%rdx, %rcx
	xorq	$63, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	.loc	1 125 9                         # i128.c3:125:9
	subl	%ecx, %eax
	movl	%eax, -148(%rbp)
	.loc	1 127 8 is_stmt 1               # i128.c3:127:8
	movl	$63, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB2_48
# %bb.47:
.Ltmp119:
	.loc	1 132 13                        # i128.c3:132:13
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	jmp	.LBB2_61
.Ltmp120:
.LBB2_48:
	.loc	1 136 4                         # i128.c3:136:4
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	.loc	1 140 4                         # i128.c3:140:4
	movq	$0, -128(%rbp)
	.loc	1 141 8                         # i128.c3:141:8
	movl	$64, %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB2_50
# %bb.49:
.Ltmp121:
	.loc	1 143 5                         # i128.c3:143:5
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 144 5                         # i128.c3:144:5
	movq	$0, -136(%rbp)
	.loc	1 145 5                         # i128.c3:145:5
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB2_55
.Ltmp122:
.LBB2_50:
	.loc	1 149 14                        # i128.c3:149:14
	movq	-88(%rbp), %rax
	movq	%rax, -1496(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1488(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_81
# %bb.51:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1496(%rbp), %rax               # 8-byte Reload
	movq	-1488(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 149 14                        # i128.c3:149:14
	shrq	%cl, %rax
	.loc	1 149 5                         # i128.c3:149:5
	movq	%rax, -136(%rbp)
	.loc	1 150 14 is_stmt 1              # i128.c3:150:14
	movq	-88(%rbp), %rax
	movq	%rax, -1512(%rbp)               # 8-byte Spill
	.loc	1 150 25 is_stmt 0              # i128.c3:150:25
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 150 14                        # i128.c3:150:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1504(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_82
# %bb.52:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1512(%rbp), %rax               # 8-byte Reload
	movq	-1504(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 150 14                        # i128.c3:150:14
	shlq	%cl, %rax
	movq	%rax, -1536(%rbp)               # 8-byte Spill
	.loc	1 150 38                        # i128.c3:150:38
	movq	-96(%rbp), %rax
	movq	%rax, -1528(%rbp)               # 8-byte Spill
	movl	-148(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1520(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_83
# %bb.53:
	.loc	1 0 38                          # i128.c3:0:38
	movq	-1536(%rbp), %rax               # 8-byte Reload
	movq	-1528(%rbp), %rdx               # 8-byte Reload
	movq	-1520(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 150 38                        # i128.c3:150:38
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 150 13                        # i128.c3:150:13
	orq	%rcx, %rax
	.loc	1 150 5                         # i128.c3:150:5
	movq	%rax, -144(%rbp)
	.loc	1 151 14 is_stmt 1              # i128.c3:151:14
	movq	-96(%rbp), %rax
	movq	%rax, -1552(%rbp)               # 8-byte Spill
	.loc	1 151 24 is_stmt 0              # i128.c3:151:24
	movl	$64, %eax
	subl	-148(%rbp), %eax
	.loc	1 151 14                        # i128.c3:151:14
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -1544(%rbp)               # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB2_84
# %bb.54:
	.loc	1 0 14                          # i128.c3:0:14
	movq	-1552(%rbp), %rax               # 8-byte Reload
	movq	-1544(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 151 14                        # i128.c3:151:14
	shlq	%cl, %rax
	.loc	1 151 5                         # i128.c3:151:5
	movq	%rax, -120(%rbp)
.LBB2_55:
	jmp	.LBB2_56
.LBB2_56:
	jmp	.LBB2_57
.Ltmp123:
.LBB2_57:
	.loc	1 160 15 is_stmt 1              # i128.c3:160:15
	movl	$0, -1108(%rbp)
.LBB2_58:                               # =>This Inner Loop Header: Depth=1
.Ltmp124:
	.loc	1 161 9                         # i128.c3:161:9
	xorl	%eax, %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB2_60
# %bb.59:                               #   in Loop: Header=BB2_58 Depth=1
.Ltmp125:
	.loc	1 164 29                        # i128.c3:164:29
	movq	-144(%rbp), %rcx
	.loc	1 164 13 is_stmt 0              # i128.c3:164:13
	movq	-136(%rbp), %rax
	addq	%rax, %rax
	.loc	1 164 29                        # i128.c3:164:29
	shrq	$63, %rcx
	.loc	1 164 12                        # i128.c3:164:12
	orq	%rcx, %rax
	.loc	1 164 3                         # i128.c3:164:3
	movq	%rax, -136(%rbp)
	.loc	1 165 13 is_stmt 1              # i128.c3:165:13
	movq	-144(%rbp), %rax
	addq	%rax, %rax
	.loc	1 165 29 is_stmt 0              # i128.c3:165:29
	movq	-120(%rbp), %rcx
	shrq	$63, %rcx
	.loc	1 165 12                        # i128.c3:165:12
	orq	%rcx, %rax
	.loc	1 165 3                         # i128.c3:165:3
	movq	%rax, -144(%rbp)
	.loc	1 166 29 is_stmt 1              # i128.c3:166:29
	movq	-128(%rbp), %rcx
	.loc	1 166 13 is_stmt 0              # i128.c3:166:13
	movq	-120(%rbp), %rax
	addq	%rax, %rax
	.loc	1 166 29                        # i128.c3:166:29
	shrq	$63, %rcx
	.loc	1 166 12                        # i128.c3:166:12
	orq	%rcx, %rax
	.loc	1 166 3                         # i128.c3:166:3
	movq	%rax, -120(%rbp)
	.loc	1 167 13 is_stmt 1              # i128.c3:167:13
	movq	-128(%rbp), %rax
	addq	%rax, %rax
	.loc	1 167 28 is_stmt 0              # i128.c3:167:28
	movl	-1108(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 167 12                        # i128.c3:167:12
	orq	%rcx, %rax
	.loc	1 167 3                         # i128.c3:167:3
	movq	%rax, -128(%rbp)
	.loc	1 174 23 is_stmt 1              # i128.c3:174:23
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rcx
	.loc	1 174 31 is_stmt 0              # i128.c3:174:31
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	.loc	1 174 14                        # i128.c3:174:14
	notq	%rax
	notq	%rdx
	addq	%rsi, %rdx
	adcq	%rcx, %rax
	sarq	$63, %rax
	movq	%rax, -1128(%rbp)
	movq	%rax, -1136(%rbp)
	.loc	1 175 18 is_stmt 1              # i128.c3:175:18
	movl	-1136(%rbp), %eax
	.loc	1 175 11 is_stmt 0              # i128.c3:175:11
	andl	$1, %eax
	movl	%eax, -1108(%rbp)
	.loc	1 176 3 is_stmt 1               # i128.c3:176:3
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	.loc	1 176 12 is_stmt 0              # i128.c3:176:12
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rdx
	.loc	1 176 20                        # i128.c3:176:20
	movq	-1136(%rbp), %rdi
	movq	-1128(%rbp), %r8
	.loc	1 176 12                        # i128.c3:176:12
	andq	%r8, %rdx
	andq	%rdi, %rsi
	.loc	1 176 3                         # i128.c3:176:3
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -144(%rbp)
	movq	%rax, -136(%rbp)
.Ltmp126:
	.loc	1 161 17 is_stmt 1              # i128.c3:161:17
	movl	-148(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB2_58
.Ltmp127:
.LBB2_60:
	.loc	1 181 11                        # i128.c3:181:11
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	shldq	$1, %rax, %rcx
	addq	%rax, %rax
	.loc	1 181 25 is_stmt 0              # i128.c3:181:25
	movl	-1108(%rbp), %edx
                                        # kill: def $rdx killed $edx
	.loc	1 181 10                        # i128.c3:181:10
	orq	%rdx, %rax
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
.LBB2_61:
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	.loc	1 181 10 epilogue_begin         # i128.c3:181:10
	addq	$1584, %rsp                     # imm = 0x630
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_62:
	.cfi_def_cfa %rbp, 16
.Ltmp128:
	.loc	1 27 12 is_stmt 1               # i128.c3:27:12
	leaq	.panic_msg.3(%rip), %rdi
	movl	$17, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$27, (%rsp)
	callq	*(%rax)
.Ltmp129:
.LBB2_63:
	.loc	1 43 12                         # i128.c3:43:12
	leaq	.panic_msg.3(%rip), %rdi
	movl	$17, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$43, (%rsp)
	callq	*(%rax)
.Ltmp130:
.LBB2_64:
	.loc	1 53 12                         # i128.c3:53:12
	leaq	.panic_msg.3(%rip), %rdi
	movl	$17, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$53, (%rsp)
	callq	*(%rax)
.Ltmp131:
.LBB2_65:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1192(%rbp), %rax               # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
.Ltmp132:
	.loc	1 63 12 is_stmt 1               # i128.c3:63:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-192(%rbp), %rax
	movl	$63, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp133:
.LBB2_66:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1208(%rbp), %rax               # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 80 12 is_stmt 1               # i128.c3:80:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-240(%rbp), %rax
	movl	$80, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_67:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1224(%rbp), %rax               # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-248(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
	.loc	1 81 12 is_stmt 1               # i128.c3:81:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-288(%rbp), %rax
	movl	$81, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_68:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1240(%rbp), %rax               # 8-byte Reload
	movq	%rax, -296(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	-296(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$1, -328(%rbp)
	.loc	1 82 12 is_stmt 1               # i128.c3:82:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-336(%rbp), %rax
	movl	$82, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_69:
	.loc	1 0 12 is_stmt 0                # i128.c3:0:12
	movq	-1256(%rbp), %rax               # 8-byte Reload
	movq	%rax, -344(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -360(%rbp)
	leaq	-344(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$1, -376(%rbp)
	.loc	1 82 36                         # i128.c3:82:36
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-384(%rbp), %rax
	movl	$82, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp134:
.LBB2_70:
	.loc	1 0 36                          # i128.c3:0:36
	movq	-1280(%rbp), %rax               # 8-byte Reload
	movq	%rax, -392(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -408(%rbp)
	leaq	-392(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$1, -424(%rbp)
.Ltmp135:
	.loc	1 95 15 is_stmt 1               # i128.c3:95:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-432(%rbp), %rax
	movl	$95, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_71:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1296(%rbp), %rax               # 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -456(%rbp)
	leaq	-440(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$1, -472(%rbp)
	.loc	1 96 15 is_stmt 1               # i128.c3:96:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-480(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_72:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1312(%rbp), %rax               # 8-byte Reload
	movq	%rax, -488(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -504(%rbp)
	leaq	-488(%rbp), %rax
	movq	%rax, -512(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	$1, -520(%rbp)
	.loc	1 96 39                         # i128.c3:96:39
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-528(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp136:
.LBB2_73:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1344(%rbp), %rax               # 8-byte Reload
	movq	%rax, -544(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -552(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, -560(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	$1, -568(%rbp)
.Ltmp137:
	.loc	1 113 15 is_stmt 1              # i128.c3:113:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-576(%rbp), %rax
	movl	$113, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_74:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1360(%rbp), %rax               # 8-byte Reload
	movq	%rax, -584(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -600(%rbp)
	leaq	-584(%rbp), %rax
	movq	%rax, -608(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	$1, -616(%rbp)
	.loc	1 114 15 is_stmt 1              # i128.c3:114:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-624(%rbp), %rax
	movl	$114, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_75:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1376(%rbp), %rax               # 8-byte Reload
	movq	%rax, -632(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -648(%rbp)
	leaq	-632(%rbp), %rax
	movq	%rax, -656(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$1, -664(%rbp)
	.loc	1 115 15 is_stmt 1              # i128.c3:115:15
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-672(%rbp), %rax
	movl	$115, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_76:
	.loc	1 0 15 is_stmt 0                # i128.c3:0:15
	movq	-1392(%rbp), %rax               # 8-byte Reload
	movq	%rax, -680(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -696(%rbp)
	leaq	-680(%rbp), %rax
	movq	%rax, -704(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	$1, -712(%rbp)
	.loc	1 115 39                        # i128.c3:115:39
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-720(%rbp), %rax
	movl	$115, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp138:
.LBB2_77:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-1416(%rbp), %rax               # 8-byte Reload
	movq	%rax, -728(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -744(%rbp)
	leaq	-728(%rbp), %rax
	movq	%rax, -752(%rbp)
	leaq	-752(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	$1, -760(%rbp)
.Ltmp139:
	.loc	1 117 14 is_stmt 1              # i128.c3:117:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-768(%rbp), %rax
	movl	$117, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_78:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1432(%rbp), %rax               # 8-byte Reload
	movq	%rax, -776(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -792(%rbp)
	leaq	-776(%rbp), %rax
	movq	%rax, -800(%rbp)
	leaq	-800(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	$1, -808(%rbp)
	.loc	1 118 16 is_stmt 1              # i128.c3:118:16
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-816(%rbp), %rax
	movl	$118, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_79:
	.loc	1 0 16 is_stmt 0                # i128.c3:0:16
	movq	-1448(%rbp), %rax               # 8-byte Reload
	movq	%rax, -824(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -840(%rbp)
	leaq	-824(%rbp), %rax
	movq	%rax, -848(%rbp)
	leaq	-848(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	$1, -856(%rbp)
	.loc	1 118 41                        # i128.c3:118:41
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-864(%rbp), %rax
	movl	$118, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_80:
	.loc	1 0 41                          # i128.c3:0:41
	movq	-1472(%rbp), %rax               # 8-byte Reload
	movq	%rax, -872(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -888(%rbp)
	leaq	-872(%rbp), %rax
	movq	%rax, -896(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	$1, -904(%rbp)
	.loc	1 120 14 is_stmt 1              # i128.c3:120:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-912(%rbp), %rax
	movl	$120, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp140:
.LBB2_81:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1488(%rbp), %rax               # 8-byte Reload
	movq	%rax, -920(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -936(%rbp)
	leaq	-920(%rbp), %rax
	movq	%rax, -944(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, -960(%rbp)
	movq	$1, -952(%rbp)
.Ltmp141:
	.loc	1 149 14 is_stmt 1              # i128.c3:149:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-960(%rbp), %rax
	movl	$149, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_82:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1504(%rbp), %rax               # 8-byte Reload
	movq	%rax, -968(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -984(%rbp)
	leaq	-968(%rbp), %rax
	movq	%rax, -992(%rbp)
	leaq	-992(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	$1, -1000(%rbp)
	.loc	1 150 14 is_stmt 1              # i128.c3:150:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-1008(%rbp), %rax
	movl	$150, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_83:
	.loc	1 0 14 is_stmt 0                # i128.c3:0:14
	movq	-1520(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1016(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -1032(%rbp)
	leaq	-1016(%rbp), %rax
	movq	%rax, -1040(%rbp)
	leaq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	$1, -1048(%rbp)
	.loc	1 150 38                        # i128.c3:150:38
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-1056(%rbp), %rax
	movl	$150, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_84:
	.loc	1 0 38                          # i128.c3:0:38
	movq	-1544(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1064(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -1080(%rbp)
	leaq	-1064(%rbp), %rax
	movq	%rax, -1088(%rbp)
	leaq	-1088(%rbp), %rax
	movq	%rax, -1104(%rbp)
	movq	$1, -1096(%rbp)
	.loc	1 151 14 is_stmt 1              # i128.c3:151:14
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.4(%rip), %r8
	movl	$9, %r9d
	leaq	-1104(%rbp), %rax
	movl	$151, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp142:
.Lfunc_end2:
	.size	__udivti3, .Lfunc_end2-__udivti3
	.cfi_endproc
                                        # -- End function
	.section	.text.__modti3,"axG",@progbits,__modti3,comdat
	.weak	__modti3                        # -- Begin function __modti3
	.p2align	4, 0x90
	.type	__modti3,@function
__modti3:                               # @__modti3
.Lfunc_begin3:
	.loc	1 195 0                         # i128.c3:195:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
.Ltmp143:
	.loc	1 197 16 prologue_end           # i128.c3:197:16
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 198 33                        # i128.c3:198:33
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	.loc	1 198 37 is_stmt 0              # i128.c3:198:37
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	.loc	1 198 23                        # i128.c3:198:23
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -64(%rbp)
	movq	%rax, -56(%rbp)
	.loc	1 199 9 is_stmt 1               # i128.c3:199:9
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 200 33                        # i128.c3:200:33
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	.loc	1 200 37 is_stmt 0              # i128.c3:200:37
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	.loc	1 200 23                        # i128.c3:200:23
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -80(%rbp)
	movq	%rax, -72(%rbp)
	.loc	1 202 31 is_stmt 1              # i128.c3:202:31
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	.loc	1 202 9 is_stmt 0               # i128.c3:202:9
	callq	__umodti3@PLT
	movq	%rdx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	.loc	1 202 45                        # i128.c3:202:45
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	.loc	1 202 9                         # i128.c3:202:9
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -112(%rbp)
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp144:
.Lfunc_end3:
	.size	__modti3, .Lfunc_end3-__modti3
	.cfi_endproc
                                        # -- End function
	.section	.text.__lshrti3,"axG",@progbits,__lshrti3,comdat
	.weak	__lshrti3                       # -- Begin function __lshrti3
	.p2align	4, 0x90
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
.Lfunc_begin4:
	.loc	1 215 0 is_stmt 1               # i128.c3:215:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp                      # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp145:
	.loc	1 217 13 prologue_end           # i128.c3:217:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -48(%rbp)
	.loc	1 218 2                         # i128.c3:218:2
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 219 6                         # i128.c3:219:6
	movl	$64, %eax
	cmpl	-20(%rbp), %eax
	ja	.LBB4_3
# %bb.1:
.Ltmp146:
	.loc	1 221 16                        # i128.c3:221:16
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)                # 8-byte Spill
	.loc	1 221 32 is_stmt 0              # i128.c3:221:32
	movl	-20(%rbp), %eax
	subl	$64, %eax
	.loc	1 221 16                        # i128.c3:221:16
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB4_10
# %bb.2:
	.loc	1 0 16                          # i128.c3:0:16
	movq	-256(%rbp), %rax                # 8-byte Reload
	movq	-248(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 221 16                        # i128.c3:221:16
	shrq	%cl, %rax
	.loc	1 221 3                         # i128.c3:221:3
	movq	%rax, -48(%rbp)
	.loc	1 222 3 is_stmt 1               # i128.c3:222:3
	movq	$0, -40(%rbp)
	jmp	.LBB4_9
.Ltmp147:
.LBB4_3:
	.loc	1 226 7                         # i128.c3:226:7
	xorl	%eax, %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB4_5
# %bb.4:
	.loc	1 226 22 is_stmt 0              # i128.c3:226:22
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	.loc	1 226 22 epilogue_begin         # i128.c3:226:22
	addq	$336, %rsp                      # imm = 0x150
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 227 17 is_stmt 1              # i128.c3:227:17
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	.loc	1 227 33 is_stmt 0              # i128.c3:227:33
	movl	$64, %eax
	subl	-20(%rbp), %eax
	.loc	1 227 17                        # i128.c3:227:17
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -264(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB4_11
# %bb.6:
	.loc	1 0 17                          # i128.c3:0:17
	movq	-272(%rbp), %rax                # 8-byte Reload
	movq	-264(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 227 17                        # i128.c3:227:17
	shlq	%cl, %rax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	.loc	1 227 45                        # i128.c3:227:45
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)                # 8-byte Spill
	movl	-20(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -280(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB4_12
# %bb.7:
	.loc	1 0 45                          # i128.c3:0:45
	movq	-296(%rbp), %rax                # 8-byte Reload
	movq	-288(%rbp), %rdx                # 8-byte Reload
	movq	-280(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 227 45                        # i128.c3:227:45
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 227 16                        # i128.c3:227:16
	orq	%rcx, %rax
	.loc	1 227 3                         # i128.c3:227:3
	movq	%rax, -48(%rbp)
	.loc	1 228 18 is_stmt 1              # i128.c3:228:18
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	movl	-20(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB4_13
# %bb.8:
	.loc	1 0 18 is_stmt 0                # i128.c3:0:18
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-304(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 228 18                        # i128.c3:228:18
	shrq	%cl, %rax
	.loc	1 228 3                         # i128.c3:228:3
	movq	%rax, -40(%rbp)
.Ltmp148:
.LBB4_9:
	.loc	1 230 9 is_stmt 1               # i128.c3:230:9
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	.loc	1 230 9 epilogue_begin is_stmt 0 # i128.c3:230:9
	addq	$336, %rsp                      # imm = 0x150
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_10:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # i128.c3:0:9
	movq	-248(%rbp), %rax                # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$1, -88(%rbp)
.Ltmp149:
	.loc	1 221 16 is_stmt 1              # i128.c3:221:16
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.5(%rip), %r8
	movl	$9, %r9d
	leaq	-96(%rbp), %rax
	movl	$221, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp150:
.LBB4_11:
	.loc	1 0 16 is_stmt 0                # i128.c3:0:16
	movq	-264(%rbp), %rax                # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$1, -136(%rbp)
.Ltmp151:
	.loc	1 227 17 is_stmt 1              # i128.c3:227:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.5(%rip), %r8
	movl	$9, %r9d
	leaq	-144(%rbp), %rax
	movl	$227, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_12:
	.loc	1 0 17 is_stmt 0                # i128.c3:0:17
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	1 227 45                        # i128.c3:227:45
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.5(%rip), %r8
	movl	$9, %r9d
	leaq	-192(%rbp), %rax
	movl	$227, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_13:
	.loc	1 0 45                          # i128.c3:0:45
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 228 18 is_stmt 1              # i128.c3:228:18
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.5(%rip), %r8
	movl	$9, %r9d
	leaq	-240(%rbp), %rax
	movl	$228, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp152:
.Lfunc_end4:
	.size	__lshrti3, .Lfunc_end4-__lshrti3
	.cfi_endproc
                                        # -- End function
	.section	.text.__ashrti3,"axG",@progbits,__ashrti3,comdat
	.weak	__ashrti3                       # -- Begin function __ashrti3
	.p2align	4, 0x90
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
.Lfunc_begin5:
	.loc	1 233 0                         # i128.c3:233:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp153:
	.loc	1 235 13 prologue_end           # i128.c3:235:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -48(%rbp)
	.loc	1 236 15                        # i128.c3:236:15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 236 2 is_stmt 0               # i128.c3:236:2
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 237 6 is_stmt 1               # i128.c3:237:6
	movl	$64, %eax
	cmpl	-20(%rbp), %eax
	ja	.LBB5_3
# %bb.1:
.Ltmp154:
	.loc	1 239 16                        # i128.c3:239:16
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	.loc	1 239 32 is_stmt 0              # i128.c3:239:32
	movl	-20(%rbp), %eax
	subl	$64, %eax
	.loc	1 239 16                        # i128.c3:239:16
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -264(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB5_10
# %bb.2:
	.loc	1 0 16                          # i128.c3:0:16
	movq	-272(%rbp), %rax                # 8-byte Reload
	movq	-264(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 239 16                        # i128.c3:239:16
	shrq	%cl, %rax
	.loc	1 239 3                         # i128.c3:239:3
	movq	%rax, -48(%rbp)
	.loc	1 240 17 is_stmt 1              # i128.c3:240:17
	movq	-40(%rbp), %rax
	shrq	$63, %rax
	.loc	1 240 3 is_stmt 0               # i128.c3:240:3
	movq	%rax, -40(%rbp)
	jmp	.LBB5_9
.Ltmp155:
.LBB5_3:
	.loc	1 244 7 is_stmt 1               # i128.c3:244:7
	xorl	%eax, %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB5_5
# %bb.4:
	.loc	1 244 22 is_stmt 0              # i128.c3:244:22
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	.loc	1 244 22 epilogue_begin         # i128.c3:244:22
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 245 16 is_stmt 1              # i128.c3:245:16
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)                # 8-byte Spill
	.loc	1 245 32 is_stmt 0              # i128.c3:245:32
	movl	$64, %eax
	subl	-20(%rbp), %eax
	.loc	1 245 16                        # i128.c3:245:16
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -280(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB5_11
# %bb.6:
	.loc	1 0 16                          # i128.c3:0:16
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	-280(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 245 16                        # i128.c3:245:16
	shlq	%cl, %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	.loc	1 245 43                        # i128.c3:245:43
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	movl	-20(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB5_12
# %bb.7:
	.loc	1 0 43                          # i128.c3:0:43
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-304(%rbp), %rdx                # 8-byte Reload
	movq	-296(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 245 43                        # i128.c3:245:43
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 245 16                        # i128.c3:245:16
	orq	%rcx, %rax
	.loc	1 245 3                         # i128.c3:245:3
	movq	%rax, -48(%rbp)
	.loc	1 246 18 is_stmt 1              # i128.c3:246:18
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	movl	-20(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB5_13
# %bb.8:
	.loc	1 0 18 is_stmt 0                # i128.c3:0:18
	movq	-328(%rbp), %rax                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 246 18                        # i128.c3:246:18
	shrq	%cl, %rax
	.loc	1 246 3                         # i128.c3:246:3
	movq	%rax, -40(%rbp)
.Ltmp156:
.LBB5_9:
	.loc	1 248 9 is_stmt 1               # i128.c3:248:9
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_10:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9 is_stmt 0                 # i128.c3:0:9
	movq	-264(%rbp), %rax                # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$1, -88(%rbp)
.Ltmp157:
	.loc	1 239 16 is_stmt 1              # i128.c3:239:16
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.6(%rip), %r8
	movl	$9, %r9d
	leaq	-96(%rbp), %rax
	movl	$239, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp158:
.LBB5_11:
	.loc	1 0 16 is_stmt 0                # i128.c3:0:16
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$1, -136(%rbp)
.Ltmp159:
	.loc	1 245 16 is_stmt 1              # i128.c3:245:16
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.6(%rip), %r8
	movl	$9, %r9d
	leaq	-144(%rbp), %rax
	movl	$245, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_12:
	.loc	1 0 16 is_stmt 0                # i128.c3:0:16
	movq	-296(%rbp), %rax                # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	1 245 43                        # i128.c3:245:43
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.6(%rip), %r8
	movl	$9, %r9d
	leaq	-192(%rbp), %rax
	movl	$245, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_13:
	.loc	1 0 43                          # i128.c3:0:43
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 246 18 is_stmt 1              # i128.c3:246:18
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.6(%rip), %r8
	movl	$9, %r9d
	leaq	-240(%rbp), %rax
	movl	$246, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp160:
.Lfunc_end5:
	.size	__ashrti3, .Lfunc_end5-__ashrti3
	.cfi_endproc
                                        # -- End function
	.section	.text.__ashlti3,"axG",@progbits,__ashlti3,comdat
	.weak	__ashlti3                       # -- Begin function __ashlti3
	.p2align	4, 0x90
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
.Lfunc_begin6:
	.loc	1 251 0                         # i128.c3:251:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp161:
	.loc	1 253 13 prologue_end           # i128.c3:253:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -48(%rbp)
	.loc	1 254 15                        # i128.c3:254:15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 254 2 is_stmt 0               # i128.c3:254:2
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 255 6 is_stmt 1               # i128.c3:255:6
	movl	$64, %eax
	cmpl	-20(%rbp), %eax
	ja	.LBB6_3
# %bb.1:
.Ltmp162:
	.loc	1 257 3                         # i128.c3:257:3
	movq	$0, -48(%rbp)
	.loc	1 258 17                        # i128.c3:258:17
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	.loc	1 258 32 is_stmt 0              # i128.c3:258:32
	movl	-20(%rbp), %eax
	subl	$64, %eax
	.loc	1 258 17                        # i128.c3:258:17
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -264(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB6_10
# %bb.2:
	.loc	1 0 17                          # i128.c3:0:17
	movq	-272(%rbp), %rax                # 8-byte Reload
	movq	-264(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 258 17                        # i128.c3:258:17
	shlq	%cl, %rax
	.loc	1 258 3                         # i128.c3:258:3
	movq	%rax, -40(%rbp)
	jmp	.LBB6_9
.Ltmp163:
.LBB6_3:
	.loc	1 262 7 is_stmt 1               # i128.c3:262:7
	xorl	%eax, %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB6_5
# %bb.4:
	.loc	1 262 22 is_stmt 0              # i128.c3:262:22
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	.loc	1 262 22 epilogue_begin         # i128.c3:262:22
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 263 18 is_stmt 1              # i128.c3:263:18
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)                # 8-byte Spill
	movl	-20(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -280(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB6_11
# %bb.6:
	.loc	1 0 18 is_stmt 0                # i128.c3:0:18
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	-280(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 263 18                        # i128.c3:263:18
	shlq	%cl, %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	.loc	1 263 39                        # i128.c3:263:39
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	.loc	1 263 54                        # i128.c3:263:54
	movl	$64, %eax
	subl	-20(%rbp), %eax
	.loc	1 263 39                        # i128.c3:263:39
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB6_12
# %bb.7:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-304(%rbp), %rdx                # 8-byte Reload
	movq	-296(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 263 39                        # i128.c3:263:39
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	.loc	1 263 17                        # i128.c3:263:17
	orq	%rcx, %rax
	.loc	1 263 3                         # i128.c3:263:3
	movq	%rax, -40(%rbp)
	.loc	1 264 17 is_stmt 1              # i128.c3:264:17
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	movl	-20(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	cmpq	$64, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB6_13
# %bb.8:
	.loc	1 0 17 is_stmt 0                # i128.c3:0:17
	movq	-328(%rbp), %rax                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
                                        # kill: def $cl killed $rcx
	.loc	1 264 17                        # i128.c3:264:17
	shlq	%cl, %rax
	.loc	1 264 3                         # i128.c3:264:3
	movq	%rax, -48(%rbp)
.Ltmp164:
.LBB6_9:
	.loc	1 266 9 is_stmt 1               # i128.c3:266:9
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -248(%rbp)
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_10:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9 is_stmt 0                 # i128.c3:0:9
	movq	-264(%rbp), %rax                # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$1, -88(%rbp)
.Ltmp165:
	.loc	1 258 17 is_stmt 1              # i128.c3:258:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$9, %r9d
	leaq	-96(%rbp), %rax
	movl	$258, (%rsp)                    # imm = 0x102
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp166:
.LBB6_11:
	.loc	1 0 17 is_stmt 0                # i128.c3:0:17
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$1, -136(%rbp)
.Ltmp167:
	.loc	1 263 18 is_stmt 1              # i128.c3:263:18
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$9, %r9d
	leaq	-144(%rbp), %rax
	movl	$263, (%rsp)                    # imm = 0x107
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_12:
	.loc	1 0 18 is_stmt 0                # i128.c3:0:18
	movq	-296(%rbp), %rax                # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	1 263 39                        # i128.c3:263:39
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$9, %r9d
	leaq	-192(%rbp), %rax
	movl	$263, (%rsp)                    # imm = 0x107
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_13:
	.loc	1 0 39                          # i128.c3:0:39
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 264 17 is_stmt 1              # i128.c3:264:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$9, %r9d
	leaq	-240(%rbp), %rax
	movl	$264, (%rsp)                    # imm = 0x108
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp168:
.Lfunc_end6:
	.size	__ashlti3, .Lfunc_end6-__ashlti3
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.math.math_rt.__mulddi3
	.type	std.math.math_rt.__mulddi3,@function
std.math.math_rt.__mulddi3:             # @std.math.math_rt.__mulddi3
.Lfunc_begin7:
	.loc	1 271 0                         # i128.c3:271:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp169:
	.loc	1 273 13 prologue_end           # i128.c3:273:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -32(%rbp)
	.loc	1 275 11                        # i128.c3:275:11
	movl	-8(%rbp), %eax
                                        # kill: def $rax killed $eax
	.loc	1 275 30 is_stmt 0              # i128.c3:275:30
	movl	-16(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 275 10                        # i128.c3:275:10
	imulq	%rcx, %rax
	.loc	1 275 2                         # i128.c3:275:2
	movq	%rax, -32(%rbp)
	.loc	1 276 12 is_stmt 1              # i128.c3:276:12
	movl	-28(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -40(%rbp)
	.loc	1 277 2                         # i128.c3:277:2
	movl	$0, -28(%rbp)
	.loc	1 278 2                         # i128.c3:278:2
	movq	-40(%rbp), %rax
	.loc	1 278 8 is_stmt 0               # i128.c3:278:8
	movl	-4(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 278 20                        # i128.c3:278:20
	movl	-16(%rbp), %edx
                                        # kill: def $rdx killed $edx
	.loc	1 278 7                         # i128.c3:278:7
	imulq	%rdx, %rcx
	.loc	1 278 2                         # i128.c3:278:2
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	.loc	1 279 2 is_stmt 1               # i128.c3:279:2
	movq	-32(%rbp), %rax
	.loc	1 279 12 is_stmt 0              # i128.c3:279:12
	movq	-40(%rbp), %rcx
	.loc	1 279 11                        # i128.c3:279:11
	shlq	$32, %rcx
	.loc	1 279 2                         # i128.c3:279:2
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc	1 280 11 is_stmt 1              # i128.c3:280:11
	movl	-36(%rbp), %eax
                                        # kill: def $rax killed $eax
	.loc	1 280 2 is_stmt 0               # i128.c3:280:2
	movq	%rax, -24(%rbp)
	.loc	1 281 6 is_stmt 1               # i128.c3:281:6
	movl	-28(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -40(%rbp)
	.loc	1 282 2                         # i128.c3:282:2
	movl	$0, -28(%rbp)
	.loc	1 283 2                         # i128.c3:283:2
	movq	-40(%rbp), %rax
	.loc	1 283 8 is_stmt 0               # i128.c3:283:8
	movl	-12(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 283 20                        # i128.c3:283:20
	movl	-8(%rbp), %edx
                                        # kill: def $rdx killed $edx
	.loc	1 283 7                         # i128.c3:283:7
	imulq	%rdx, %rcx
	.loc	1 283 2                         # i128.c3:283:2
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	.loc	1 284 2 is_stmt 1               # i128.c3:284:2
	movq	-32(%rbp), %rax
	.loc	1 284 12 is_stmt 0              # i128.c3:284:12
	movq	-40(%rbp), %rcx
	.loc	1 284 11                        # i128.c3:284:11
	shlq	$32, %rcx
	.loc	1 284 2                         # i128.c3:284:2
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc	1 285 2 is_stmt 1               # i128.c3:285:2
	movq	-24(%rbp), %rax
	.loc	1 285 12 is_stmt 0              # i128.c3:285:12
	movl	-36(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 285 2                         # i128.c3:285:2
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	.loc	1 286 2 is_stmt 1               # i128.c3:286:2
	movq	-24(%rbp), %rax
	.loc	1 286 13 is_stmt 0              # i128.c3:286:13
	movl	-4(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 286 25                        # i128.c3:286:25
	movl	-12(%rbp), %edx
                                        # kill: def $rdx killed $edx
	.loc	1 286 12                        # i128.c3:286:12
	imulq	%rdx, %rcx
	.loc	1 286 2                         # i128.c3:286:2
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	.loc	1 287 9 is_stmt 1               # i128.c3:287:9
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp170:
.Lfunc_end7:
	.size	std.math.math_rt.__mulddi3, .Lfunc_end7-std.math.math_rt.__mulddi3
	.cfi_endproc
                                        # -- End function
	.section	.text.__multi3,"axG",@progbits,__multi3,comdat
	.weak	__multi3                        # -- Begin function __multi3
	.p2align	4, 0x90
	.type	__multi3,@function
__multi3:                               # @__multi3
.Lfunc_begin8:
	.loc	1 290 0                         # i128.c3:290:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
.Ltmp171:
	.loc	1 292 13 prologue_end           # i128.c3:292:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -48(%rbp)
	.loc	1 292 26 is_stmt 0              # i128.c3:292:26
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 293 13 is_stmt 1              # i128.c3:293:13
	vmovdqa	%xmm0, -64(%rbp)
	.loc	1 293 26 is_stmt 0              # i128.c3:293:26
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -64(%rbp)
	.loc	1 294 13 is_stmt 1              # i128.c3:294:13
	vmovdqa	%xmm0, -80(%rbp)
	.loc	1 294 43 is_stmt 0              # i128.c3:294:43
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	.loc	1 294 26                        # i128.c3:294:26
	callq	std.math.math_rt.__mulddi3
	movq	%rdx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	.loc	1 295 2 is_stmt 1               # i128.c3:295:2
	movq	-72(%rbp), %rax
	.loc	1 295 29 is_stmt 0              # i128.c3:295:29
	movq	-48(%rbp), %rdx
	.loc	1 295 12                        # i128.c3:295:12
	movq	-40(%rbp), %rcx
	.loc	1 295 21                        # i128.c3:295:21
	movq	-64(%rbp), %rdi
	.loc	1 295 37                        # i128.c3:295:37
	movq	-56(%rbp), %rsi
	.loc	1 295 12                        # i128.c3:295:12
	imulq	%rdi, %rcx
	.loc	1 295 29                        # i128.c3:295:29
	imulq	%rsi, %rdx
	.loc	1 295 12                        # i128.c3:295:12
	addq	%rdx, %rcx
	.loc	1 295 2                         # i128.c3:295:2
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	.loc	1 296 9 is_stmt 1               # i128.c3:296:9
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp172:
.Lfunc_end8:
	.size	__multi3, .Lfunc_end8-__multi3
	.cfi_endproc
                                        # -- End function
	.section	.text.__floattisf,"axG",@progbits,__floattisf,comdat
	.weak	__floattisf                     # -- Begin function __floattisf
	.p2align	4, 0x90
	.type	__floattisf,@function
__floattisf:                            # @__floattisf
.Lfunc_begin9:
	.loc	1 299 0                         # i128.c3:299:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp                      # imm = 0x240
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp173:
	.loc	1 334 6 prologue_end            # i128.c3:334:6
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	orq	%rcx, %rax
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:
	.loc	1 334 21 is_stmt 0              # i128.c3:334:21
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -36(%rbp)
	jmp	.LBB9_20
.LBB9_2:
	.loc	1 336 16 is_stmt 1              # i128.c3:336:16
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	.loc	1 337 7                         # i128.c3:337:7
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	.loc	1 337 11 is_stmt 0              # i128.c3:337:11
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	.loc	1 337 7                         # i128.c3:337:7
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	.loc	1 337 6                         # i128.c3:337:6
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	.loc	1 338 28 is_stmt 1              # i128.c3:338:28
	movq	-24(%rbp), %rdx
	bsrq	-32(%rbp), %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	movl	%eax, %ecx
	xorl	$63, %ecx
	addl	$64, %ecx
	bsrq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	xorl	$63, %eax
	testq	%rdx, %rdx
	cmovnel	%eax, %ecx
	.loc	1 338 11 is_stmt 0              # i128.c3:338:11
	movl	$128, %eax
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)
	.loc	1 339 10 is_stmt 1              # i128.c3:339:10
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	.loc	1 340 6                         # i128.c3:340:6
	cmpl	$24, -68(%rbp)
	jle	.LBB9_14
# %bb.3:
	.loc	1 0 6 is_stmt 0                 # i128.c3:0:6
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
# %bb.4:
	movl	-76(%rbp), %eax
	movl	%eax, -404(%rbp)                # 4-byte Spill
	subl	$25, %eax
	je	.LBB9_5
	jmp	.LBB9_28
.LBB9_28:
	movl	-404(%rbp), %eax                # 4-byte Reload
	subl	$26, %eax
	je	.LBB9_6
	jmp	.LBB9_7
.LBB9_5:
.Ltmp174:
	.loc	1 345 5 is_stmt 1               # i128.c3:345:5
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	shldq	$1, %rax, %rcx
	addq	%rax, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	jmp	.LBB9_11
.Ltmp175:
.LBB9_6:
	.loc	1 347 5                         # i128.c3:347:5
	jmp	.LBB9_11
.Ltmp176:
.LBB9_7:
	.loc	1 349 10                        # i128.c3:349:10
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	.loc	1 349 16 is_stmt 0              # i128.c3:349:16
	movl	-68(%rbp), %eax
	addl	$-26, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 349 10                        # i128.c3:349:10
	testb	$1, %al
	jne	.LBB9_21
# %bb.8:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	-424(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 349 10                        # i128.c3:349:10
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB9_22
# %bb.9:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-432(%rbp), %rdx                # 8-byte Reload
	movq	-440(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	.loc	1 349 10                        # i128.c3:349:10
	movb	%cl, %sil
	movb	%sil, %cl
	shrdq	%cl, %rdx, %rax
	movq	%rax, -496(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	movq	%rdx, %rax
	sarq	%cl, %rax
	movq	-496(%rbp), %rcx                # 8-byte Reload
	sarq	$63, %rdx
	testb	$64, %sil
	cmovneq	%rax, %rcx
	cmovneq	%rdx, %rax
	movq	%rcx, -488(%rbp)                # 8-byte Spill
	movq	%rax, -480(%rbp)                # 8-byte Spill
	.loc	1 350 19 is_stmt 1              # i128.c3:350:19
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)                # 8-byte Spill
	.loc	1 350 65 is_stmt 0              # i128.c3:350:65
	movl	-68(%rbp), %ecx
	movl	$154, %eax
	.loc	1 350 42                        # i128.c3:350:42
	subl	%ecx, %eax
	.loc	1 350 24                        # i128.c3:350:24
	movl	%eax, %ecx
	movq	%rcx, -456(%rbp)                # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -448(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB9_23
# %bb.10:
	.loc	1 0 24                          # i128.c3:0:24
	movq	-488(%rbp), %rax                # 8-byte Reload
	movq	-472(%rbp), %rdx                # 8-byte Reload
	movq	-464(%rbp), %rsi                # 8-byte Reload
	movq	-456(%rbp), %rcx                # 8-byte Reload
	.loc	1 350 24                        # i128.c3:350:24
	movb	%cl, %r10b
	movq	$-1, %rdi
	movb	%r10b, %cl
	movq	%rdi, %r9
	shrq	%cl, %r9
	movq	-480(%rbp), %rcx                # 8-byte Reload
	xorl	%r8d, %r8d
	testb	$64, %r10b
	movl	%r8d, %r10d
	movq	%r9, %r8
	cmovneq	%r10, %r8
	cmovneq	%r9, %rdi
	.loc	1 350 19                        # i128.c3:350:19
	andq	%r8, %rsi
	andq	%rdi, %rdx
	.loc	1 350 8                         # i128.c3:350:8
	orq	%rsi, %rdx
	setne	%dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
	.loc	1 349 9 is_stmt 1               # i128.c3:349:9
	orq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp177:
.LBB9_11:
	.loc	1 352 3                         # i128.c3:352:3
	movq	-32(%rbp), %rax
	.loc	1 352 19 is_stmt 0              # i128.c3:352:19
	movl	%eax, %ecx
	andl	$4, %ecx
	.loc	1 352 8                         # i128.c3:352:8
	shrl	$2, %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 352 3                         # i128.c3:352:3
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc	1 353 3 is_stmt 1               # i128.c3:353:3
	movq	-32(%rbp), %rax
	addq	$1, %rax
	adcq	$0, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 354 3                         # i128.c3:354:3
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	sarq	$2, %rcx
	shldq	$62, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 355 7                         # i128.c3:355:7
	movb	-29(%rbp), %al
	testb	$1, %al
	je	.LBB9_13
	jmp	.LBB9_12
.LBB9_12:
.Ltmp178:
	.loc	1 357 4                         # i128.c3:357:4
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	sarq	%rcx
	shldq	$63, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 358 4                         # i128.c3:358:4
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB9_13:
	jmp	.LBB9_17
.Ltmp179:
.LBB9_14:
	.loc	1 363 3                         # i128.c3:363:3
	movq	-32(%rbp), %rax
	movq	%rax, -528(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -520(%rbp)                # 8-byte Spill
	.loc	1 363 21 is_stmt 0              # i128.c3:363:21
	movl	-68(%rbp), %ecx
	movl	$24, %eax
	.loc	1 363 10                        # i128.c3:363:10
	subl	%ecx, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -512(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -504(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 363 3                         # i128.c3:363:3
	testb	$1, %al
	jne	.LBB9_24
# %bb.15:
	.loc	1 0 3                           # i128.c3:0:3
	movq	-504(%rbp), %rcx                # 8-byte Reload
	movq	-512(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 363 3                         # i128.c3:363:3
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB9_25
# %bb.16:
	.loc	1 0 3                           # i128.c3:0:3
	movq	-528(%rbp), %rax                # 8-byte Reload
	movq	-520(%rbp), %rdx                # 8-byte Reload
	movq	-512(%rbp), %rcx                # 8-byte Reload
	.loc	1 363 3                         # i128.c3:363:3
	movb	%cl, %sil
	movb	%sil, %cl
	shldq	%cl, %rax, %rdx
	movq	%rdx, -536(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shlq	%cl, %rax
	movq	-536(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp180:
.LBB9_17:
	.loc	1 365 18 is_stmt 1              # i128.c3:365:18
	movl	-64(%rbp), %eax
	andl	$-2147483648, %eax              # imm = 0x80000000
	.loc	1 365 45 is_stmt 0              # i128.c3:365:45
	movl	-72(%rbp), %ecx
	shll	$23, %ecx
	.loc	1 365 44                        # i128.c3:365:44
	addl	$1065353216, %ecx               # imm = 0x3F800000
	.loc	1 365 17                        # i128.c3:365:17
	orl	%ecx, %eax
	.loc	1 365 95                        # i128.c3:365:95
	movl	-32(%rbp), %ecx
	andl	$8388607, %ecx                  # imm = 0x7FFFFF
	.loc	1 365 17                        # i128.c3:365:17
	orl	%ecx, %eax
	movl	%eax, -324(%rbp)
.Ltmp181:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "builtin.c3"
	.loc	2 293 20 is_stmt 1              # builtin.c3:293:20
	leaq	-324(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB9_26
# %bb.18:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-324(%rbp), %rax
	andq	$3, %rax
	movq	%rax, -544(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB9_27
# %bb.19:
	vmovss	-324(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -36(%rbp)
.LBB9_20:
	vmovss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	.loc	2 293 11 epilogue_begin         # builtin.c3:293:11
	addq	$576, %rsp                      # imm = 0x240
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp182:
.LBB9_21:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -96(%rbp)
	movq	%rax, -88(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$1, -120(%rbp)
.Ltmp183:
	.loc	1 349 10 is_stmt 1              # i128.c3:349:10
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.8(%rip), %r8
	movl	$11, %r9d
	leaq	-128(%rbp), %rax
	movl	$349, (%rsp)                    # imm = 0x15D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB9_22:
	.loc	1 0 10 is_stmt 0                # i128.c3:0:10
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$1, -168(%rbp)
	.loc	1 349 10                        # i128.c3:349:10
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.8(%rip), %r8
	movl	$11, %r9d
	leaq	-176(%rbp), %rax
	movl	$349, (%rsp)                    # imm = 0x15D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB9_23:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-448(%rbp), %rax                # 8-byte Reload
	movq	-456(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$1, -216(%rbp)
	.loc	1 350 24 is_stmt 1              # i128.c3:350:24
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.8(%rip), %r8
	movl	$11, %r9d
	leaq	-224(%rbp), %rax
	movl	$350, (%rsp)                    # imm = 0x15E
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp184:
.LBB9_24:
	.loc	1 0 24 is_stmt 0                # i128.c3:0:24
	movq	-504(%rbp), %rax                # 8-byte Reload
	movq	-512(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	%rax, -232(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$1, -264(%rbp)
.Ltmp185:
	.loc	1 363 3 is_stmt 1               # i128.c3:363:3
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.8(%rip), %r8
	movl	$11, %r9d
	leaq	-272(%rbp), %rax
	movl	$363, (%rsp)                    # imm = 0x16B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB9_25:
	.loc	1 0 3 is_stmt 0                 # i128.c3:0:3
	movq	-504(%rbp), %rax                # 8-byte Reload
	movq	-512(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -288(%rbp)
	movq	%rax, -280(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$1, -312(%rbp)
	.loc	1 363 3                         # i128.c3:363:3
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.8(%rip), %r8
	movl	$11, %r9d
	leaq	-320(%rbp), %rax
	movl	$363, (%rsp)                    # imm = 0x16B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp186:
.LBB9_26:
	.loc	2 293 11 is_stmt 1              # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.8(%rip), %r8
	movl	$11, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB9_27:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-544(%rbp), %rcx                # 8-byte Reload
	movq	$4, -336(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -344(%rbp)
	movq	%rax, -376(%rbp)
	leaq	-336(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movq	%rax, -360(%rbp)
	leaq	-344(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$2, -392(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.8(%rip), %r8
	movl	$11, %r9d
	leaq	-400(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp187:
.Lfunc_end9:
	.size	__floattisf, .Lfunc_end9-__floattisf
	.cfi_endproc
                                        # -- End function
	.section	.text.__floattidf,"axG",@progbits,__floattidf,comdat
	.weak	__floattidf                     # -- Begin function __floattidf
	.p2align	4, 0x90
	.type	__floattidf,@function
__floattidf:                            # @__floattidf
.Lfunc_begin10:
	.loc	1 300 0 is_stmt 1               # i128.c3:300:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp                      # imm = 0x240
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp188:
	.loc	1 334 6 prologue_end            # i128.c3:334:6
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	orq	%rcx, %rax
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:
	.loc	1 334 21 is_stmt 0              # i128.c3:334:21
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	jmp	.LBB10_20
.LBB10_2:
	.loc	1 336 16 is_stmt 1              # i128.c3:336:16
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	.loc	1 337 7                         # i128.c3:337:7
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	.loc	1 337 11 is_stmt 0              # i128.c3:337:11
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	.loc	1 337 7                         # i128.c3:337:7
	xorq	%rdx, %rax
	xorq	%rsi, %rcx
	.loc	1 337 6                         # i128.c3:337:6
	subq	%rsi, %rcx
	sbbq	%rdx, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	.loc	1 338 28 is_stmt 1              # i128.c3:338:28
	movq	-24(%rbp), %rdx
	bsrq	-32(%rbp), %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	movl	%eax, %ecx
	xorl	$63, %ecx
	addl	$64, %ecx
	bsrq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	xorl	$63, %eax
	testq	%rdx, %rdx
	cmovnel	%eax, %ecx
	.loc	1 338 11 is_stmt 0              # i128.c3:338:11
	movl	$128, %eax
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)
	.loc	1 339 10 is_stmt 1              # i128.c3:339:10
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	.loc	1 340 6                         # i128.c3:340:6
	cmpl	$53, -68(%rbp)
	jle	.LBB10_14
# %bb.3:
	.loc	1 0 6 is_stmt 0                 # i128.c3:0:6
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
# %bb.4:
	movl	-76(%rbp), %eax
	movl	%eax, -404(%rbp)                # 4-byte Spill
	subl	$54, %eax
	je	.LBB10_5
	jmp	.LBB10_28
.LBB10_28:
	movl	-404(%rbp), %eax                # 4-byte Reload
	subl	$55, %eax
	je	.LBB10_6
	jmp	.LBB10_7
.LBB10_5:
.Ltmp189:
	.loc	1 345 5 is_stmt 1               # i128.c3:345:5
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	shldq	$1, %rax, %rcx
	addq	%rax, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	jmp	.LBB10_11
.Ltmp190:
.LBB10_6:
	.loc	1 347 5                         # i128.c3:347:5
	jmp	.LBB10_11
.Ltmp191:
.LBB10_7:
	.loc	1 349 10                        # i128.c3:349:10
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	.loc	1 349 16 is_stmt 0              # i128.c3:349:16
	movl	-68(%rbp), %eax
	addl	$-55, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 349 10                        # i128.c3:349:10
	testb	$1, %al
	jne	.LBB10_21
# %bb.8:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	-424(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 349 10                        # i128.c3:349:10
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB10_22
# %bb.9:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-432(%rbp), %rdx                # 8-byte Reload
	movq	-440(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	.loc	1 349 10                        # i128.c3:349:10
	movb	%cl, %sil
	movb	%sil, %cl
	shrdq	%cl, %rdx, %rax
	movq	%rax, -496(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	movq	%rdx, %rax
	sarq	%cl, %rax
	movq	-496(%rbp), %rcx                # 8-byte Reload
	sarq	$63, %rdx
	testb	$64, %sil
	cmovneq	%rax, %rcx
	cmovneq	%rdx, %rax
	movq	%rcx, -488(%rbp)                # 8-byte Spill
	movq	%rax, -480(%rbp)                # 8-byte Spill
	.loc	1 350 19 is_stmt 1              # i128.c3:350:19
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)                # 8-byte Spill
	.loc	1 350 65 is_stmt 0              # i128.c3:350:65
	movl	-68(%rbp), %ecx
	movl	$183, %eax
	.loc	1 350 42                        # i128.c3:350:42
	subl	%ecx, %eax
	.loc	1 350 24                        # i128.c3:350:24
	movl	%eax, %ecx
	movq	%rcx, -456(%rbp)                # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -448(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB10_23
# %bb.10:
	.loc	1 0 24                          # i128.c3:0:24
	movq	-488(%rbp), %rax                # 8-byte Reload
	movq	-472(%rbp), %rdx                # 8-byte Reload
	movq	-464(%rbp), %rsi                # 8-byte Reload
	movq	-456(%rbp), %rcx                # 8-byte Reload
	.loc	1 350 24                        # i128.c3:350:24
	movb	%cl, %r10b
	movq	$-1, %rdi
	movb	%r10b, %cl
	movq	%rdi, %r9
	shrq	%cl, %r9
	movq	-480(%rbp), %rcx                # 8-byte Reload
	xorl	%r8d, %r8d
	testb	$64, %r10b
	movl	%r8d, %r10d
	movq	%r9, %r8
	cmovneq	%r10, %r8
	cmovneq	%r9, %rdi
	.loc	1 350 19                        # i128.c3:350:19
	andq	%r8, %rsi
	andq	%rdi, %rdx
	.loc	1 350 8                         # i128.c3:350:8
	orq	%rsi, %rdx
	setne	%dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
	.loc	1 349 9 is_stmt 1               # i128.c3:349:9
	orq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp192:
.LBB10_11:
	.loc	1 352 3                         # i128.c3:352:3
	movq	-32(%rbp), %rax
	.loc	1 352 19 is_stmt 0              # i128.c3:352:19
	movl	%eax, %ecx
	andl	$4, %ecx
	.loc	1 352 8                         # i128.c3:352:8
	shrl	$2, %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 352 3                         # i128.c3:352:3
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc	1 353 3 is_stmt 1               # i128.c3:353:3
	movq	-32(%rbp), %rax
	addq	$1, %rax
	adcq	$0, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 354 3                         # i128.c3:354:3
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	sarq	$2, %rcx
	shldq	$62, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 355 7                         # i128.c3:355:7
	movb	-26(%rbp), %al
	testb	$32, %al
	je	.LBB10_13
	jmp	.LBB10_12
.LBB10_12:
.Ltmp193:
	.loc	1 357 4                         # i128.c3:357:4
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	sarq	%rcx
	shldq	$63, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 358 4                         # i128.c3:358:4
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB10_13:
	jmp	.LBB10_17
.Ltmp194:
.LBB10_14:
	.loc	1 363 3                         # i128.c3:363:3
	movq	-32(%rbp), %rax
	movq	%rax, -528(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -520(%rbp)                # 8-byte Spill
	.loc	1 363 21 is_stmt 0              # i128.c3:363:21
	movl	-68(%rbp), %ecx
	movl	$53, %eax
	.loc	1 363 10                        # i128.c3:363:10
	subl	%ecx, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -512(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -504(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 363 3                         # i128.c3:363:3
	testb	$1, %al
	jne	.LBB10_24
# %bb.15:
	.loc	1 0 3                           # i128.c3:0:3
	movq	-504(%rbp), %rcx                # 8-byte Reload
	movq	-512(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 363 3                         # i128.c3:363:3
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB10_25
# %bb.16:
	.loc	1 0 3                           # i128.c3:0:3
	movq	-528(%rbp), %rax                # 8-byte Reload
	movq	-520(%rbp), %rdx                # 8-byte Reload
	movq	-512(%rbp), %rcx                # 8-byte Reload
	.loc	1 363 3                         # i128.c3:363:3
	movb	%cl, %sil
	movb	%sil, %cl
	shldq	%cl, %rax, %rdx
	movq	%rdx, -536(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shlq	%cl, %rax
	movq	-536(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp195:
.LBB10_17:
	.loc	1 365 18 is_stmt 1              # i128.c3:365:18
	movq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	andq	%rcx, %rax
	.loc	1 365 45 is_stmt 0              # i128.c3:365:45
	movl	-72(%rbp), %edx
                                        # implicit-def: $rcx
	movl	%edx, %ecx
	shlq	$52, %rcx
	movabsq	$4607182418800017408, %rdx      # imm = 0x3FF0000000000000
	.loc	1 365 44                        # i128.c3:365:44
	addq	%rdx, %rcx
	.loc	1 365 17                        # i128.c3:365:17
	orq	%rcx, %rax
	.loc	1 365 95                        # i128.c3:365:95
	movq	-32(%rbp), %rcx
	movabsq	$4503599627370495, %rdx         # imm = 0xFFFFFFFFFFFFF
	andq	%rdx, %rcx
	.loc	1 365 17                        # i128.c3:365:17
	orq	%rcx, %rax
	movq	%rax, -328(%rbp)
.Ltmp196:
	.loc	2 293 20 is_stmt 1              # builtin.c3:293:20
	leaq	-328(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_26
# %bb.18:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-328(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -544(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB10_27
# %bb.19:
	vmovsd	-328(%rbp), %xmm0               # xmm0 = mem[0],zero
	vmovsd	%xmm0, -40(%rbp)
.LBB10_20:
	vmovsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	.loc	2 293 11 epilogue_begin         # builtin.c3:293:11
	addq	$576, %rsp                      # imm = 0x240
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp197:
.LBB10_21:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -96(%rbp)
	movq	%rax, -88(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$1, -120(%rbp)
.Ltmp198:
	.loc	1 349 10 is_stmt 1              # i128.c3:349:10
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.12(%rip), %r8
	movl	$11, %r9d
	leaq	-128(%rbp), %rax
	movl	$349, (%rsp)                    # imm = 0x15D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB10_22:
	.loc	1 0 10 is_stmt 0                # i128.c3:0:10
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$1, -168(%rbp)
	.loc	1 349 10                        # i128.c3:349:10
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.12(%rip), %r8
	movl	$11, %r9d
	leaq	-176(%rbp), %rax
	movl	$349, (%rsp)                    # imm = 0x15D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB10_23:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-448(%rbp), %rax                # 8-byte Reload
	movq	-456(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$1, -216(%rbp)
	.loc	1 350 24 is_stmt 1              # i128.c3:350:24
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.12(%rip), %r8
	movl	$11, %r9d
	leaq	-224(%rbp), %rax
	movl	$350, (%rsp)                    # imm = 0x15E
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp199:
.LBB10_24:
	.loc	1 0 24 is_stmt 0                # i128.c3:0:24
	movq	-504(%rbp), %rax                # 8-byte Reload
	movq	-512(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	%rax, -232(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$1, -264(%rbp)
.Ltmp200:
	.loc	1 363 3 is_stmt 1               # i128.c3:363:3
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.12(%rip), %r8
	movl	$11, %r9d
	leaq	-272(%rbp), %rax
	movl	$363, (%rsp)                    # imm = 0x16B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB10_25:
	.loc	1 0 3 is_stmt 0                 # i128.c3:0:3
	movq	-504(%rbp), %rax                # 8-byte Reload
	movq	-512(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -288(%rbp)
	movq	%rax, -280(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$1, -312(%rbp)
	.loc	1 363 3                         # i128.c3:363:3
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.12(%rip), %r8
	movl	$11, %r9d
	leaq	-320(%rbp), %rax
	movl	$363, (%rsp)                    # imm = 0x16B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp201:
.LBB10_26:
	.loc	2 293 11 is_stmt 1              # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.12(%rip), %r8
	movl	$11, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB10_27:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-544(%rbp), %rcx                # 8-byte Reload
	movq	$8, -336(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -344(%rbp)
	movq	%rax, -376(%rbp)
	leaq	-336(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movq	%rax, -360(%rbp)
	leaq	-344(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$2, -392(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.12(%rip), %r8
	movl	$11, %r9d
	leaq	-400(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp202:
.Lfunc_end10:
	.size	__floattidf, .Lfunc_end10-__floattidf
	.cfi_endproc
                                        # -- End function
	.section	.text.__floatuntisf,"axG",@progbits,__floatuntisf,comdat
	.weak	__floatuntisf                   # -- Begin function __floatuntisf
	.p2align	4, 0x90
	.type	__floatuntisf,@function
__floatuntisf:                          # @__floatuntisf
.Lfunc_begin11:
	.loc	1 301 0 is_stmt 1               # i128.c3:301:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp                      # imm = 0x1C0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp203:
	.loc	1 391 6 prologue_end            # i128.c3:391:6
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	orq	%rcx, %rax
	sete	%al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:
	.loc	1 391 21 is_stmt 0              # i128.c3:391:21
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -36(%rbp)
	jmp	.LBB11_18
.LBB11_2:
	.loc	1 392 28 is_stmt 1              # i128.c3:392:28
	movq	-24(%rbp), %rdx
	bsrq	-32(%rbp), %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	movl	%eax, %ecx
	xorl	$63, %ecx
	addl	$64, %ecx
	bsrq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	xorl	$63, %eax
	testq	%rdx, %rdx
	cmovnel	%eax, %ecx
	.loc	1 392 11 is_stmt 0              # i128.c3:392:11
	movl	$128, %eax
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)
	.loc	1 393 10 is_stmt 1              # i128.c3:393:10
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	.loc	1 394 6                         # i128.c3:394:6
	cmpl	$24, -40(%rbp)
	jle	.LBB11_13
# %bb.3:
	.loc	1 0 6 is_stmt 0                 # i128.c3:0:6
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
# %bb.4:
	movl	-48(%rbp), %eax
	movl	%eax, -276(%rbp)                # 4-byte Spill
	subl	$25, %eax
	je	.LBB11_5
	jmp	.LBB11_24
.LBB11_24:
	movl	-276(%rbp), %eax                # 4-byte Reload
	subl	$26, %eax
	je	.LBB11_6
	jmp	.LBB11_7
.LBB11_5:
.Ltmp204:
	.loc	1 399 5 is_stmt 1               # i128.c3:399:5
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	shldq	$1, %rax, %rcx
	addq	%rax, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	jmp	.LBB11_10
.Ltmp205:
.LBB11_6:
	.loc	1 401 5                         # i128.c3:401:5
	jmp	.LBB11_10
.Ltmp206:
.LBB11_7:
	.loc	1 403 10                        # i128.c3:403:10
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	.loc	1 403 16 is_stmt 0              # i128.c3:403:16
	movl	-40(%rbp), %eax
	addl	$-26, %eax
	.loc	1 403 10                        # i128.c3:403:10
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)                # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -288(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB11_19
# %bb.8:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	-312(%rbp), %rdx                # 8-byte Reload
	movq	-296(%rbp), %rcx                # 8-byte Reload
	.loc	1 403 10                        # i128.c3:403:10
	movb	%cl, %sil
	movb	%sil, %cl
	shrdq	%cl, %rax, %rdx
	movq	%rdx, -368(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shrq	%cl, %rax
	movq	-368(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -360(%rbp)                # 8-byte Spill
	cmovneq	%rdx, %rax
	movq	%rcx, -352(%rbp)                # 8-byte Spill
	movq	%rax, -344(%rbp)                # 8-byte Spill
	.loc	1 404 19 is_stmt 1              # i128.c3:404:19
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	.loc	1 404 65 is_stmt 0              # i128.c3:404:65
	movl	-40(%rbp), %ecx
	movl	$154, %eax
	.loc	1 404 42                        # i128.c3:404:42
	subl	%ecx, %eax
	.loc	1 404 24                        # i128.c3:404:24
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB11_20
# %bb.9:
	.loc	1 0 24                          # i128.c3:0:24
	movq	-352(%rbp), %rax                # 8-byte Reload
	movq	-336(%rbp), %rdx                # 8-byte Reload
	movq	-328(%rbp), %rsi                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
	.loc	1 404 24                        # i128.c3:404:24
	movb	%cl, %r10b
	movq	$-1, %rdi
	movb	%r10b, %cl
	movq	%rdi, %r9
	shrq	%cl, %r9
	movq	-344(%rbp), %rcx                # 8-byte Reload
	xorl	%r8d, %r8d
	testb	$64, %r10b
	movl	%r8d, %r10d
	movq	%r9, %r8
	cmovneq	%r10, %r8
	cmovneq	%r9, %rdi
	.loc	1 404 19                        # i128.c3:404:19
	andq	%r8, %rsi
	andq	%rdi, %rdx
	.loc	1 404 8                         # i128.c3:404:8
	orq	%rsi, %rdx
	setne	%dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
	.loc	1 403 9 is_stmt 1               # i128.c3:403:9
	orq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp207:
.LBB11_10:
	.loc	1 406 3                         # i128.c3:406:3
	movq	-32(%rbp), %rax
	.loc	1 406 19 is_stmt 0              # i128.c3:406:19
	movl	%eax, %ecx
	andl	$4, %ecx
	.loc	1 406 8                         # i128.c3:406:8
	shrl	$2, %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 406 3                         # i128.c3:406:3
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc	1 407 3 is_stmt 1               # i128.c3:407:3
	movq	-32(%rbp), %rax
	addq	$1, %rax
	adcq	$0, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 408 3                         # i128.c3:408:3
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	shldq	$62, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 409 7                         # i128.c3:409:7
	movb	-29(%rbp), %al
	testb	$1, %al
	je	.LBB11_12
	jmp	.LBB11_11
.LBB11_11:
.Ltmp208:
	.loc	1 411 4                         # i128.c3:411:4
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	shrq	%rcx
	shldq	$63, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 412 4                         # i128.c3:412:4
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB11_12:
	jmp	.LBB11_15
.Ltmp209:
.LBB11_13:
	.loc	1 417 3                         # i128.c3:417:3
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	.loc	1 417 21 is_stmt 0              # i128.c3:417:21
	movl	-40(%rbp), %ecx
	movl	$24, %eax
	.loc	1 417 10                        # i128.c3:417:10
	subl	%ecx, %eax
	.loc	1 417 3                         # i128.c3:417:3
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)                # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -376(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB11_21
# %bb.14:
	.loc	1 0 3                           # i128.c3:0:3
	movq	-400(%rbp), %rax                # 8-byte Reload
	movq	-392(%rbp), %rdx                # 8-byte Reload
	movq	-384(%rbp), %rcx                # 8-byte Reload
	.loc	1 417 3                         # i128.c3:417:3
	movb	%cl, %sil
	movb	%sil, %cl
	shldq	%cl, %rax, %rdx
	movq	%rdx, -408(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shlq	%cl, %rax
	movq	-408(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp210:
.LBB11_15:
	.loc	1 419 19 is_stmt 1              # i128.c3:419:19
	movl	-44(%rbp), %eax
	shll	$23, %eax
	.loc	1 419 18 is_stmt 0              # i128.c3:419:18
	addl	$1065353216, %eax               # imm = 0x3F800000
	.loc	1 419 69                        # i128.c3:419:69
	movl	-32(%rbp), %ecx
	andl	$8388607, %ecx                  # imm = 0x7FFFFF
	.loc	1 419 17                        # i128.c3:419:17
	orl	%ecx, %eax
	movl	%eax, -196(%rbp)
.Ltmp211:
	.loc	2 293 20 is_stmt 1              # builtin.c3:293:20
	leaq	-196(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB11_22
# %bb.16:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-196(%rbp), %rax
	andq	$3, %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB11_23
# %bb.17:
	vmovss	-196(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -36(%rbp)
.LBB11_18:
	vmovss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	.loc	2 293 11 epilogue_begin         # builtin.c3:293:11
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp212:
.LBB11_19:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	-296(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$1, -88(%rbp)
.Ltmp213:
	.loc	1 403 10 is_stmt 1              # i128.c3:403:10
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.13(%rip), %r8
	movl	$13, %r9d
	leaq	-96(%rbp), %rax
	movl	$403, (%rsp)                    # imm = 0x193
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB11_20:
	.loc	1 0 10 is_stmt 0                # i128.c3:0:10
	movq	-360(%rbp), %rax                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -112(%rbp)
	movq	%rax, -104(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$1, -136(%rbp)
	.loc	1 404 24 is_stmt 1              # i128.c3:404:24
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.13(%rip), %r8
	movl	$13, %r9d
	leaq	-144(%rbp), %rax
	movl	$404, (%rsp)                    # imm = 0x194
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp214:
.LBB11_21:
	.loc	1 0 24 is_stmt 0                # i128.c3:0:24
	movq	-376(%rbp), %rax                # 8-byte Reload
	movq	-384(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -160(%rbp)
	movq	%rax, -152(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
.Ltmp215:
	.loc	1 417 3 is_stmt 1               # i128.c3:417:3
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.13(%rip), %r8
	movl	$13, %r9d
	leaq	-192(%rbp), %rax
	movl	$417, (%rsp)                    # imm = 0x1A1
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp216:
.LBB11_22:
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.13(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB11_23:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	$4, -208(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -216(%rbp)
	movq	%rax, -248(%rbp)
	leaq	-208(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	%rax, -232(%rbp)
	leaq	-216(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$2, -264(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.13(%rip), %r8
	movl	$13, %r9d
	leaq	-272(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp217:
.Lfunc_end11:
	.size	__floatuntisf, .Lfunc_end11-__floatuntisf
	.cfi_endproc
                                        # -- End function
	.section	.text.__floatuntidf,"axG",@progbits,__floatuntidf,comdat
	.weak	__floatuntidf                   # -- Begin function __floatuntidf
	.p2align	4, 0x90
	.type	__floatuntidf,@function
__floatuntidf:                          # @__floatuntidf
.Lfunc_begin12:
	.loc	1 302 0 is_stmt 1               # i128.c3:302:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp                      # imm = 0x1D0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp218:
	.loc	1 391 6 prologue_end            # i128.c3:391:6
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	orq	%rcx, %rax
	sete	%al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB12_1
	jmp	.LBB12_2
.LBB12_1:
	.loc	1 391 21 is_stmt 0              # i128.c3:391:21
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	jmp	.LBB12_18
.LBB12_2:
	.loc	1 392 28 is_stmt 1              # i128.c3:392:28
	movq	-24(%rbp), %rdx
	bsrq	-32(%rbp), %rax
	movl	$127, %ecx
	cmoveq	%rcx, %rax
	movl	%eax, %ecx
	xorl	$63, %ecx
	addl	$64, %ecx
	bsrq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	xorl	$63, %eax
	testq	%rdx, %rdx
	cmovnel	%eax, %ecx
	.loc	1 392 11 is_stmt 0              # i128.c3:392:11
	movl	$128, %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	.loc	1 393 10 is_stmt 1              # i128.c3:393:10
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	.loc	1 394 6                         # i128.c3:394:6
	cmpl	$53, -44(%rbp)
	jle	.LBB12_13
# %bb.3:
	.loc	1 0 6 is_stmt 0                 # i128.c3:0:6
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
# %bb.4:
	movl	-52(%rbp), %eax
	movl	%eax, -292(%rbp)                # 4-byte Spill
	subl	$54, %eax
	je	.LBB12_5
	jmp	.LBB12_24
.LBB12_24:
	movl	-292(%rbp), %eax                # 4-byte Reload
	subl	$55, %eax
	je	.LBB12_6
	jmp	.LBB12_7
.LBB12_5:
.Ltmp219:
	.loc	1 399 5 is_stmt 1               # i128.c3:399:5
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	shldq	$1, %rax, %rcx
	addq	%rax, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	jmp	.LBB12_10
.Ltmp220:
.LBB12_6:
	.loc	1 401 5                         # i128.c3:401:5
	jmp	.LBB12_10
.Ltmp221:
.LBB12_7:
	.loc	1 403 10                        # i128.c3:403:10
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	.loc	1 403 16 is_stmt 0              # i128.c3:403:16
	movl	-44(%rbp), %eax
	addl	$-55, %eax
	.loc	1 403 10                        # i128.c3:403:10
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)                # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -304(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB12_19
# %bb.8:
	.loc	1 0 10                          # i128.c3:0:10
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	-328(%rbp), %rdx                # 8-byte Reload
	movq	-312(%rbp), %rcx                # 8-byte Reload
	.loc	1 403 10                        # i128.c3:403:10
	movb	%cl, %sil
	movb	%sil, %cl
	shrdq	%cl, %rax, %rdx
	movq	%rdx, -384(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shrq	%cl, %rax
	movq	-384(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -376(%rbp)                # 8-byte Spill
	cmovneq	%rdx, %rax
	movq	%rcx, -368(%rbp)                # 8-byte Spill
	movq	%rax, -360(%rbp)                # 8-byte Spill
	.loc	1 404 19 is_stmt 1              # i128.c3:404:19
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	.loc	1 404 65 is_stmt 0              # i128.c3:404:65
	movl	-44(%rbp), %ecx
	movl	$183, %eax
	.loc	1 404 42                        # i128.c3:404:42
	subl	%ecx, %eax
	.loc	1 404 24                        # i128.c3:404:24
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB12_20
# %bb.9:
	.loc	1 0 24                          # i128.c3:0:24
	movq	-368(%rbp), %rax                # 8-byte Reload
	movq	-352(%rbp), %rdx                # 8-byte Reload
	movq	-344(%rbp), %rsi                # 8-byte Reload
	movq	-336(%rbp), %rcx                # 8-byte Reload
	.loc	1 404 24                        # i128.c3:404:24
	movb	%cl, %r10b
	movq	$-1, %rdi
	movb	%r10b, %cl
	movq	%rdi, %r9
	shrq	%cl, %r9
	movq	-360(%rbp), %rcx                # 8-byte Reload
	xorl	%r8d, %r8d
	testb	$64, %r10b
	movl	%r8d, %r10d
	movq	%r9, %r8
	cmovneq	%r10, %r8
	cmovneq	%r9, %rdi
	.loc	1 404 19                        # i128.c3:404:19
	andq	%r8, %rsi
	andq	%rdi, %rdx
	.loc	1 404 8                         # i128.c3:404:8
	orq	%rsi, %rdx
	setne	%dl
	movzbl	%dl, %edx
                                        # kill: def $rdx killed $edx
	.loc	1 403 9 is_stmt 1               # i128.c3:403:9
	orq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp222:
.LBB12_10:
	.loc	1 406 3                         # i128.c3:406:3
	movq	-32(%rbp), %rax
	.loc	1 406 19 is_stmt 0              # i128.c3:406:19
	movl	%eax, %ecx
	andl	$4, %ecx
	.loc	1 406 8                         # i128.c3:406:8
	shrl	$2, %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 406 3                         # i128.c3:406:3
	orq	%rcx, %rax
	movq	%rax, -32(%rbp)
	.loc	1 407 3 is_stmt 1               # i128.c3:407:3
	movq	-32(%rbp), %rax
	addq	$1, %rax
	adcq	$0, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 408 3                         # i128.c3:408:3
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	shldq	$62, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 409 7                         # i128.c3:409:7
	movb	-26(%rbp), %al
	testb	$32, %al
	je	.LBB12_12
	jmp	.LBB12_11
.LBB12_11:
.Ltmp223:
	.loc	1 411 4                         # i128.c3:411:4
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	shrq	%rcx
	shldq	$63, %rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 412 4                         # i128.c3:412:4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB12_12:
	jmp	.LBB12_15
.Ltmp224:
.LBB12_13:
	.loc	1 417 3                         # i128.c3:417:3
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	.loc	1 417 21 is_stmt 0              # i128.c3:417:21
	movl	-44(%rbp), %ecx
	movl	$53, %eax
	.loc	1 417 10                        # i128.c3:417:10
	subl	%ecx, %eax
	.loc	1 417 3                         # i128.c3:417:3
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)                # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -392(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB12_21
# %bb.14:
	.loc	1 0 3                           # i128.c3:0:3
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-408(%rbp), %rdx                # 8-byte Reload
	movq	-400(%rbp), %rcx                # 8-byte Reload
	.loc	1 417 3                         # i128.c3:417:3
	movb	%cl, %sil
	movb	%sil, %cl
	shldq	%cl, %rax, %rdx
	movq	%rdx, -424(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shlq	%cl, %rax
	movq	-424(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp225:
.LBB12_15:
	.loc	1 419 19 is_stmt 1              # i128.c3:419:19
	movl	-48(%rbp), %ecx
                                        # implicit-def: $rax
	movl	%ecx, %eax
	shlq	$52, %rax
	movabsq	$4607182418800017408, %rcx      # imm = 0x3FF0000000000000
	.loc	1 419 18 is_stmt 0              # i128.c3:419:18
	addq	%rcx, %rax
	.loc	1 419 69                        # i128.c3:419:69
	movq	-32(%rbp), %rcx
	movabsq	$4503599627370495, %rdx         # imm = 0xFFFFFFFFFFFFF
	andq	%rdx, %rcx
	.loc	1 419 17                        # i128.c3:419:17
	orq	%rcx, %rax
	movq	%rax, -216(%rbp)
.Ltmp226:
	.loc	2 293 20 is_stmt 1              # builtin.c3:293:20
	leaq	-216(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB12_22
# %bb.16:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-216(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB12_23
# %bb.17:
	vmovsd	-216(%rbp), %xmm0               # xmm0 = mem[0],zero
	vmovsd	%xmm0, -40(%rbp)
.LBB12_18:
	vmovsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	.loc	2 293 11 epilogue_begin         # builtin.c3:293:11
	addq	$464, %rsp                      # imm = 0x1D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp227:
.LBB12_19:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -80(%rbp)
	movq	%rax, -72(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$1, -104(%rbp)
.Ltmp228:
	.loc	1 403 10 is_stmt 1              # i128.c3:403:10
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.14(%rip), %r8
	movl	$13, %r9d
	leaq	-112(%rbp), %rax
	movl	$403, (%rsp)                    # imm = 0x193
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB12_20:
	.loc	1 0 10 is_stmt 0                # i128.c3:0:10
	movq	-376(%rbp), %rax                # 8-byte Reload
	movq	-336(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -128(%rbp)
	movq	%rax, -120(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$1, -152(%rbp)
	.loc	1 404 24 is_stmt 1              # i128.c3:404:24
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.14(%rip), %r8
	movl	$13, %r9d
	leaq	-160(%rbp), %rax
	movl	$404, (%rsp)                    # imm = 0x194
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp229:
.LBB12_21:
	.loc	1 0 24 is_stmt 0                # i128.c3:0:24
	movq	-392(%rbp), %rax                # 8-byte Reload
	movq	-400(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	%rax, -168(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$1, -200(%rbp)
.Ltmp230:
	.loc	1 417 3 is_stmt 1               # i128.c3:417:3
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.14(%rip), %r8
	movl	$13, %r9d
	leaq	-208(%rbp), %rax
	movl	$417, (%rsp)                    # imm = 0x1A1
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp231:
.LBB12_22:
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.14(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB12_23:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-432(%rbp), %rcx                # 8-byte Reload
	movq	$8, -224(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -232(%rbp)
	movq	%rax, -264(%rbp)
	leaq	-224(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	%rax, -248(%rbp)
	leaq	-232(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$2, -280(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.14(%rip), %r8
	movl	$13, %r9d
	leaq	-288(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp232:
.Lfunc_end12:
	.size	__floatuntidf, .Lfunc_end12-__floatuntidf
	.cfi_endproc
                                        # -- End function
	.section	.text.__fixunsdfti,"axG",@progbits,__fixunsdfti,comdat
	.weak	__fixunsdfti                    # -- Begin function __fixunsdfti
	.p2align	4, 0x90
	.type	__fixunsdfti,@function
__fixunsdfti:                           # @__fixunsdfti
.Lfunc_begin13:
	.loc	1 303 0 is_stmt 1               # i128.c3:303:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, -48(%rbp)
.Ltmp233:
	.loc	2 293 20 prologue_end           # builtin.c3:293:20
	leaq	-48(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB13_14
# %bb.1:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-48(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB13_15
# %bb.2:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.Ltmp234:
	.loc	1 457 13 is_stmt 1              # i128.c3:457:13
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	andq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 458 13                        # i128.c3:458:13
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	andq	-40(%rbp), %rdx
	.loc	1 458 35 is_stmt 0              # i128.c3:458:35
	movl	$1, %eax
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	.loc	1 458 13                        # i128.c3:458:13
	cmpq	$0, %rdx
	.loc	1 458 35                        # i128.c3:458:35
	cmovnel	%ecx, %eax
	movl	%eax, -124(%rbp)
	.loc	1 459 24 is_stmt 1              # i128.c3:459:24
	movq	-120(%rbp), %rax
	shrq	$52, %rax
	.loc	1 459 17 is_stmt 0              # i128.c3:459:17
	subq	$1023, %rax                     # imm = 0x3FF
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -128(%rbp)
	.loc	1 460 22 is_stmt 1              # i128.c3:460:22
	movabsq	$4503599627370495, %rax         # imm = 0xFFFFFFFFFFFFF
	andq	-120(%rbp), %rax
	.loc	1 460 21 is_stmt 0              # i128.c3:460:21
	movabsq	$4503599627370496, %rcx         # imm = 0x10000000000000
	orq	%rcx, %rax
	movq	%rax, -136(%rbp)
	.loc	1 461 6 is_stmt 1               # i128.c3:461:6
	movb	$1, %al
	cmpl	$-1, -124(%rbp)
	movb	%al, -249(%rbp)                 # 1-byte Spill
	je	.LBB13_4
# %bb.3:
	.loc	1 461 20 is_stmt 0              # i128.c3:461:20
	cmpl	$0, -128(%rbp)
	setl	%al
	movb	%al, -249(%rbp)                 # 1-byte Spill
.LBB13_4:
	.loc	1 0 20                          # i128.c3:0:20
	movb	-249(%rbp), %al                 # 1-byte Reload
	.loc	1 461 20                        # i128.c3:461:20
	testb	$1, %al
	jne	.LBB13_5
	jmp	.LBB13_6
.LBB13_5:
	.loc	1 461 41                        # i128.c3:461:41
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB13_13
.LBB13_6:
	.loc	1 462 6 is_stmt 1               # i128.c3:462:6
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	movl	$128, %eax
	cmpq	%rcx, %rax
	ja	.LBB13_8
# %bb.7:
	.loc	1 462 51 is_stmt 0              # i128.c3:462:51
	movq	$-1, -24(%rbp)
	movq	$-1, -32(%rbp)
	jmp	.LBB13_13
.LBB13_8:
	.loc	1 463 6 is_stmt 1               # i128.c3:463:6
	cmpl	$52, -128(%rbp)
	jge	.LBB13_11
# %bb.9:
	.loc	1 463 42 is_stmt 0              # i128.c3:463:42
	movq	-136(%rbp), %rax
	movq	%rax, -288(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)                # 8-byte Spill
	.loc	1 463 86                        # i128.c3:463:86
	movl	-128(%rbp), %edx
	movl	$52, %eax
	.loc	1 463 67                        # i128.c3:463:67
	subl	%edx, %eax
	.loc	1 463 42                        # i128.c3:463:42
	movl	%eax, %edx
	movq	%rdx, -272(%rbp)                # 8-byte Spill
	movq	%rcx, -264(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB13_16
# %bb.10:
	.loc	1 0 42                          # i128.c3:0:42
	movq	-280(%rbp), %rdx                # 8-byte Reload
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	-272(%rbp), %rcx                # 8-byte Reload
	.loc	1 463 42                        # i128.c3:463:42
	movb	%cl, %sil
	movb	%sil, %cl
	shrdq	%cl, %rdx, %rax
	movb	%sil, %cl
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rcx, %rax
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	jmp	.LBB13_13
.LBB13_11:
	.loc	1 464 9 is_stmt 1               # i128.c3:464:9
	movq	-136(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)                # 8-byte Spill
	.loc	1 464 34 is_stmt 0              # i128.c3:464:34
	movl	-128(%rbp), %eax
	addl	$-52, %eax
	.loc	1 464 9                         # i128.c3:464:9
	movl	%eax, %edx
	movq	%rdx, -304(%rbp)                # 8-byte Spill
	movq	%rcx, -296(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB13_17
# %bb.12:
	.loc	1 0 9                           # i128.c3:0:9
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	-312(%rbp), %rdx                # 8-byte Reload
	movq	-304(%rbp), %rcx                # 8-byte Reload
	.loc	1 464 9                         # i128.c3:464:9
	movb	%cl, %sil
	movb	%sil, %cl
	shldq	%cl, %rax, %rdx
	movq	%rdx, -328(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shlq	%cl, %rax
	movq	-328(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.LBB13_13:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	.loc	1 464 9 epilogue_begin          # i128.c3:464:9
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_14:
	.cfi_def_cfa %rbp, 16
.Ltmp235:
	.loc	2 293 11 is_stmt 1              # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.15(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB13_15:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-248(%rbp), %rcx                # 8-byte Reload
	movq	$8, -56(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -64(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.15(%rip), %r8
	movl	$12, %r9d
	leaq	-112(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp236:
.LBB13_16:
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-264(%rbp), %rax                # 8-byte Reload
	movq	-272(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -160(%rbp)
	movq	%rax, -152(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	1 463 42 is_stmt 1              # i128.c3:463:42
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.15(%rip), %r8
	movl	$12, %r9d
	leaq	-192(%rbp), %rax
	movl	$463, (%rsp)                    # imm = 0x1CF
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB13_17:
	.loc	1 0 42 is_stmt 0                # i128.c3:0:42
	movq	-296(%rbp), %rax                # 8-byte Reload
	movq	-304(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	%rax, -200(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 464 9 is_stmt 1               # i128.c3:464:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.15(%rip), %r8
	movl	$12, %r9d
	leaq	-240(%rbp), %rax
	movl	$464, (%rsp)                    # imm = 0x1D0
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp237:
.Lfunc_end13:
	.size	__fixunsdfti, .Lfunc_end13-__fixunsdfti
	.cfi_endproc
                                        # -- End function
	.section	.text.__fixunssfti,"axG",@progbits,__fixunssfti,comdat
	.weak	__fixunssfti                    # -- Begin function __fixunssfti
	.p2align	4, 0x90
	.type	__fixunssfti,@function
__fixunssfti:                           # @__fixunssfti
.Lfunc_begin14:
	.loc	1 304 0                         # i128.c3:304:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp                      # imm = 0x150
	vmovss	%xmm0, -4(%rbp)
	vmovss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -8(%rbp)
	vmovss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -40(%rbp)
.Ltmp238:
	.loc	2 293 20 prologue_end           # builtin.c3:293:20
	leaq	-40(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB14_14
# %bb.1:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-40(%rbp), %rax
	andq	$3, %rax
	movq	%rax, -232(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB14_15
# %bb.2:
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.Ltmp239:
	.loc	1 457 13 is_stmt 1              # i128.c3:457:13
	movl	-36(%rbp), %eax
	andl	$2147483647, %eax               # imm = 0x7FFFFFFF
	movl	%eax, -116(%rbp)
	.loc	1 458 13                        # i128.c3:458:13
	movl	-36(%rbp), %edx
	andl	$-2147483648, %edx              # imm = 0x80000000
	.loc	1 458 35 is_stmt 0              # i128.c3:458:35
	movl	$1, %eax
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	.loc	1 458 13                        # i128.c3:458:13
	cmpl	$0, %edx
	.loc	1 458 35                        # i128.c3:458:35
	cmovnel	%ecx, %eax
	movl	%eax, -120(%rbp)
	.loc	1 459 24 is_stmt 1              # i128.c3:459:24
	movl	-116(%rbp), %eax
	shrl	$23, %eax
	.loc	1 459 17 is_stmt 0              # i128.c3:459:17
	subl	$127, %eax
	movl	%eax, -124(%rbp)
	.loc	1 460 22 is_stmt 1              # i128.c3:460:22
	movl	-116(%rbp), %eax
	andl	$8388607, %eax                  # imm = 0x7FFFFF
	.loc	1 460 21 is_stmt 0              # i128.c3:460:21
	orl	$8388608, %eax                  # imm = 0x800000
	movl	%eax, -128(%rbp)
	.loc	1 461 6 is_stmt 1               # i128.c3:461:6
	movb	$1, %al
	cmpl	$-1, -120(%rbp)
	movb	%al, -233(%rbp)                 # 1-byte Spill
	je	.LBB14_4
# %bb.3:
	.loc	1 461 20 is_stmt 0              # i128.c3:461:20
	cmpl	$0, -124(%rbp)
	setl	%al
	movb	%al, -233(%rbp)                 # 1-byte Spill
.LBB14_4:
	.loc	1 0 20                          # i128.c3:0:20
	movb	-233(%rbp), %al                 # 1-byte Reload
	.loc	1 461 20                        # i128.c3:461:20
	testb	$1, %al
	jne	.LBB14_5
	jmp	.LBB14_6
.LBB14_5:
	.loc	1 461 41                        # i128.c3:461:41
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB14_13
.LBB14_6:
	.loc	1 462 6 is_stmt 1               # i128.c3:462:6
	movl	-124(%rbp), %eax
	movl	%eax, %ecx
	movl	$128, %eax
	cmpq	%rcx, %rax
	ja	.LBB14_8
# %bb.7:
	.loc	1 462 51 is_stmt 0              # i128.c3:462:51
	movq	$-1, -24(%rbp)
	movq	$-1, -32(%rbp)
	jmp	.LBB14_13
.LBB14_8:
	.loc	1 463 6 is_stmt 1               # i128.c3:463:6
	cmpl	$23, -124(%rbp)
	jge	.LBB14_11
# %bb.9:
	.loc	1 463 42 is_stmt 0              # i128.c3:463:42
	movl	-128(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)                # 8-byte Spill
	.loc	1 463 86                        # i128.c3:463:86
	movl	-124(%rbp), %edx
	movl	$23, %eax
	.loc	1 463 67                        # i128.c3:463:67
	subl	%edx, %eax
	.loc	1 463 42                        # i128.c3:463:42
	movl	%eax, %edx
	movq	%rdx, -256(%rbp)                # 8-byte Spill
	movq	%rcx, -248(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB14_16
# %bb.10:
	.loc	1 0 42                          # i128.c3:0:42
	movq	-264(%rbp), %rdx                # 8-byte Reload
	movq	-272(%rbp), %rax                # 8-byte Reload
	movq	-256(%rbp), %rcx                # 8-byte Reload
	.loc	1 463 42                        # i128.c3:463:42
	movb	%cl, %sil
	movb	%sil, %cl
	shrdq	%cl, %rdx, %rax
	movb	%sil, %cl
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rcx, %rax
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	jmp	.LBB14_13
.LBB14_11:
	.loc	1 464 9 is_stmt 1               # i128.c3:464:9
	movl	-128(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)                # 8-byte Spill
	.loc	1 464 34 is_stmt 0              # i128.c3:464:34
	movl	-124(%rbp), %eax
	addl	$-23, %eax
	.loc	1 464 9                         # i128.c3:464:9
	movl	%eax, %edx
	movq	%rdx, -288(%rbp)                # 8-byte Spill
	movq	%rcx, -280(%rbp)                # 8-byte Spill
	subl	$127, %eax
	seta	%al
	testb	$1, %al
	jne	.LBB14_17
# %bb.12:
	.loc	1 0 9                           # i128.c3:0:9
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	-296(%rbp), %rdx                # 8-byte Reload
	movq	-288(%rbp), %rcx                # 8-byte Reload
	.loc	1 464 9                         # i128.c3:464:9
	movb	%cl, %sil
	movb	%sil, %cl
	shldq	%cl, %rax, %rdx
	movq	%rdx, -312(%rbp)                # 8-byte Spill
	movb	%sil, %cl
	shlq	%cl, %rax
	movq	-312(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %sil
	cmovneq	%rax, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.LBB14_13:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	.loc	1 464 9 epilogue_begin          # i128.c3:464:9
	addq	$336, %rsp                      # imm = 0x150
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_14:
	.cfi_def_cfa %rbp, 16
.Ltmp240:
	.loc	2 293 11 is_stmt 1              # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB14_15:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-232(%rbp), %rcx                # 8-byte Reload
	movq	$4, -48(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$12, %r9d
	leaq	-112(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp241:
.LBB14_16:
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-248(%rbp), %rax                # 8-byte Reload
	movq	-256(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$1, -168(%rbp)
	.loc	1 463 42 is_stmt 1              # i128.c3:463:42
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.16(%rip), %r8
	movl	$12, %r9d
	leaq	-176(%rbp), %rax
	movl	$463, (%rsp)                    # imm = 0x1CF
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB14_17:
	.loc	1 0 42 is_stmt 0                # i128.c3:0:42
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	-288(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	($ct.uint128)@GOTPCREL(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$1, -216(%rbp)
	.loc	1 464 9 is_stmt 1               # i128.c3:464:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.16(%rip), %r8
	movl	$12, %r9d
	leaq	-224(%rbp), %rax
	movl	$464, (%rsp)                    # imm = 0x1D0
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp242:
.Lfunc_end14:
	.size	__fixunssfti, .Lfunc_end14-__fixunssfti
	.cfi_endproc
                                        # -- End function
	.section	.text.__fixdfti,"axG",@progbits,__fixdfti,comdat
	.weak	__fixdfti                       # -- Begin function __fixdfti
	.p2align	4, 0x90
	.type	__fixdfti,@function
__fixdfti:                              # @__fixdfti
.Lfunc_begin15:
	.loc	1 305 0                         # i128.c3:305:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp                      # imm = 0x1F0
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, -48(%rbp)
.Ltmp243:
	.loc	2 293 20 prologue_end           # builtin.c3:293:20
	leaq	-48(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB15_14
# %bb.1:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-48(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB15_15
# %bb.2:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.Ltmp244:
	.loc	1 501 13 is_stmt 1              # i128.c3:501:13
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	andq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
	.loc	1 502 13                        # i128.c3:502:13
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	andq	-40(%rbp), %rdx
	.loc	1 502 35 is_stmt 0              # i128.c3:502:35
	movl	$1, %eax
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	.loc	1 502 13                        # i128.c3:502:13
	cmpq	$0, %rdx
	.loc	1 502 35                        # i128.c3:502:35
	cmovnel	%ecx, %eax
	movl	%eax, -124(%rbp)
	.loc	1 503 24 is_stmt 1              # i128.c3:503:24
	movq	-120(%rbp), %rax
	shrq	$52, %rax
	.loc	1 503 17 is_stmt 0              # i128.c3:503:17
	subq	$1023, %rax                     # imm = 0x3FF
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -128(%rbp)
	.loc	1 504 22 is_stmt 1              # i128.c3:504:22
	movabsq	$4503599627370495, %rax         # imm = 0xFFFFFFFFFFFFF
	andq	-120(%rbp), %rax
	.loc	1 504 21 is_stmt 0              # i128.c3:504:21
	movabsq	$4503599627370496, %rcx         # imm = 0x10000000000000
	orq	%rcx, %rax
	movq	%rax, -136(%rbp)
	.loc	1 505 6 is_stmt 1               # i128.c3:505:6
	cmpl	$0, -128(%rbp)
	jge	.LBB15_4
# %bb.3:
	.loc	1 505 27 is_stmt 0              # i128.c3:505:27
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB15_13
.LBB15_4:
	.loc	1 506 6 is_stmt 1               # i128.c3:506:6
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	movl	$128, %eax
	cmpq	%rcx, %rax
	ja	.LBB15_6
# %bb.5:
	.loc	1 506 51 is_stmt 0              # i128.c3:506:51
	movl	-124(%rbp), %eax
	subl	$1, %eax
	sete	%al
	.loc	1 506 76                        # i128.c3:506:76
	movzbl	%al, %eax
	movl	%eax, %ecx
	negq	%rcx
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	sbbq	$0, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	jmp	.LBB15_13
.LBB15_6:
	.loc	1 508 6 is_stmt 1               # i128.c3:508:6
	cmpl	$52, -128(%rbp)
	jge	.LBB15_10
# %bb.7:
	.loc	1 508 42 is_stmt 0              # i128.c3:508:42
	movslq	-124(%rbp), %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	sarq	$63, %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	.loc	1 508 50                        # i128.c3:508:50
	movq	-136(%rbp), %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)                # 8-byte Spill
	.loc	1 508 93                        # i128.c3:508:93
	movl	-128(%rbp), %esi
	movl	$52, %edx
	.loc	1 508 74                        # i128.c3:508:74
	subl	%esi, %edx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -360(%rbp)                # 8-byte Spill
	movq	%rcx, -352(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 508 50                        # i128.c3:508:50
	testb	$1, %al
	jne	.LBB15_16
# %bb.8:
	.loc	1 0 50                          # i128.c3:0:50
	movq	-352(%rbp), %rcx                # 8-byte Reload
	movq	-360(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 508 50                        # i128.c3:508:50
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB15_17
# %bb.9:
	.loc	1 0 50                          # i128.c3:0:50
	movq	-392(%rbp), %rsi                # 8-byte Reload
	movq	-384(%rbp), %rax                # 8-byte Reload
	movq	-368(%rbp), %rdx                # 8-byte Reload
	movq	-376(%rbp), %rdi                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	.loc	1 508 50                        # i128.c3:508:50
	movb	%cl, %r8b
	movb	%r8b, %cl
	shrdq	%cl, %rdx, %rdi
	movq	%rdi, -408(%rbp)                # 8-byte Spill
	movb	%r8b, %cl
	movq	%rdx, %rdi
	sarq	%cl, %rdi
	movq	-408(%rbp), %rcx                # 8-byte Reload
	sarq	$63, %rdx
	testb	$64, %r8b
	cmovneq	%rdi, %rcx
	cmovneq	%rdx, %rdi
	.loc	1 508 42                        # i128.c3:508:42
	imulq	%rcx, %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	-400(%rbp), %rdx                # 8-byte Reload
	imulq	%rdi, %rsi
	addq	%rsi, %rax
	addq	%rdx, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	jmp	.LBB15_13
.LBB15_10:
	.loc	1 509 9 is_stmt 1               # i128.c3:509:9
	movslq	-124(%rbp), %rax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	sarq	$63, %rax
	movq	%rax, -448(%rbp)                # 8-byte Spill
	.loc	1 509 17 is_stmt 0              # i128.c3:509:17
	movq	-136(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)                # 8-byte Spill
	.loc	1 509 41                        # i128.c3:509:41
	movl	-128(%rbp), %edx
	addl	$-52, %edx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -424(%rbp)                # 8-byte Spill
	movq	%rcx, -416(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 509 17                        # i128.c3:509:17
	testb	$1, %al
	jne	.LBB15_18
# %bb.11:
	.loc	1 0 17                          # i128.c3:0:17
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	-424(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 509 17                        # i128.c3:509:17
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB15_19
# %bb.12:
	.loc	1 0 17                          # i128.c3:0:17
	movq	-456(%rbp), %rax                # 8-byte Reload
	movq	-440(%rbp), %rsi                # 8-byte Reload
	movq	-432(%rbp), %rdx                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	.loc	1 509 17                        # i128.c3:509:17
	movb	%cl, %dil
	movb	%dil, %cl
	shldq	%cl, %rsi, %rdx
	movq	%rdx, -464(%rbp)                # 8-byte Spill
	movb	%dil, %cl
	shlq	%cl, %rsi
	movq	-464(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %dil
	cmovneq	%rsi, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rsi
	.loc	1 509 9                         # i128.c3:509:9
	movq	%rax, %rdi
	imulq	%rcx, %rdi
	mulq	%rsi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	-448(%rbp), %rdx                # 8-byte Reload
	addq	%rdi, %rax
	imulq	%rsi, %rdx
	addq	%rdx, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
.LBB15_13:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	.loc	1 509 9 epilogue_begin          # i128.c3:509:9
	addq	$496, %rsp                      # imm = 0x1F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_14:
	.cfi_def_cfa %rbp, 16
.Ltmp245:
	.loc	2 293 11 is_stmt 1              # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.17(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB15_15:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-344(%rbp), %rcx                # 8-byte Reload
	movq	$8, -56(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -64(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.17(%rip), %r8
	movl	$9, %r9d
	leaq	-112(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp246:
.LBB15_16:
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-352(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -160(%rbp)
	movq	%rax, -152(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	1 508 50 is_stmt 1              # i128.c3:508:50
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.17(%rip), %r8
	movl	$9, %r9d
	leaq	-192(%rbp), %rax
	movl	$508, (%rsp)                    # imm = 0x1FC
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB15_17:
	.loc	1 0 50 is_stmt 0                # i128.c3:0:50
	movq	-352(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	%rax, -200(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 508 50                        # i128.c3:508:50
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.17(%rip), %r8
	movl	$9, %r9d
	leaq	-240(%rbp), %rax
	movl	$508, (%rsp)                    # imm = 0x1FC
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB15_18:
	.loc	1 0 50                          # i128.c3:0:50
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -256(%rbp)
	movq	%rax, -248(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
	.loc	1 509 17 is_stmt 1              # i128.c3:509:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.17(%rip), %r8
	movl	$9, %r9d
	leaq	-288(%rbp), %rax
	movl	$509, (%rsp)                    # imm = 0x1FD
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB15_19:
	.loc	1 0 17 is_stmt 0                # i128.c3:0:17
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -304(%rbp)
	movq	%rax, -296(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -312(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$1, -328(%rbp)
	.loc	1 509 17                        # i128.c3:509:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.17(%rip), %r8
	movl	$9, %r9d
	leaq	-336(%rbp), %rax
	movl	$509, (%rsp)                    # imm = 0x1FD
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp247:
.Lfunc_end15:
	.size	__fixdfti, .Lfunc_end15-__fixdfti
	.cfi_endproc
                                        # -- End function
	.section	.text.__fixsfti,"axG",@progbits,__fixsfti,comdat
	.weak	__fixsfti                       # -- Begin function __fixsfti
	.p2align	4, 0x90
	.type	__fixsfti,@function
__fixsfti:                              # @__fixsfti
.Lfunc_begin16:
	.loc	1 306 0 is_stmt 1               # i128.c3:306:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp                      # imm = 0x1E0
	vmovss	%xmm0, -4(%rbp)
	vmovss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -8(%rbp)
	vmovss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -40(%rbp)
.Ltmp248:
	.loc	2 293 20 prologue_end           # builtin.c3:293:20
	leaq	-40(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB16_14
# %bb.1:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-40(%rbp), %rax
	andq	$3, %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB16_15
# %bb.2:
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.Ltmp249:
	.loc	1 501 13 is_stmt 1              # i128.c3:501:13
	movl	-36(%rbp), %eax
	andl	$2147483647, %eax               # imm = 0x7FFFFFFF
	movl	%eax, -116(%rbp)
	.loc	1 502 13                        # i128.c3:502:13
	movl	-36(%rbp), %edx
	andl	$-2147483648, %edx              # imm = 0x80000000
	.loc	1 502 35 is_stmt 0              # i128.c3:502:35
	movl	$1, %eax
	movl	$4294967295, %ecx               # imm = 0xFFFFFFFF
	.loc	1 502 13                        # i128.c3:502:13
	cmpl	$0, %edx
	.loc	1 502 35                        # i128.c3:502:35
	cmovnel	%ecx, %eax
	movl	%eax, -120(%rbp)
	.loc	1 503 24 is_stmt 1              # i128.c3:503:24
	movl	-116(%rbp), %eax
	shrl	$23, %eax
	.loc	1 503 17 is_stmt 0              # i128.c3:503:17
	subl	$127, %eax
	movl	%eax, -124(%rbp)
	.loc	1 504 22 is_stmt 1              # i128.c3:504:22
	movl	-116(%rbp), %eax
	andl	$8388607, %eax                  # imm = 0x7FFFFF
	.loc	1 504 21 is_stmt 0              # i128.c3:504:21
	orl	$8388608, %eax                  # imm = 0x800000
	movl	%eax, -128(%rbp)
	.loc	1 505 6 is_stmt 1               # i128.c3:505:6
	cmpl	$0, -124(%rbp)
	jge	.LBB16_4
# %bb.3:
	.loc	1 505 27 is_stmt 0              # i128.c3:505:27
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB16_13
.LBB16_4:
	.loc	1 506 6 is_stmt 1               # i128.c3:506:6
	movl	-124(%rbp), %eax
	movl	%eax, %ecx
	movl	$128, %eax
	cmpq	%rcx, %rax
	ja	.LBB16_6
# %bb.5:
	.loc	1 506 51 is_stmt 0              # i128.c3:506:51
	movl	-120(%rbp), %eax
	subl	$1, %eax
	sete	%al
	.loc	1 506 76                        # i128.c3:506:76
	movzbl	%al, %eax
	movl	%eax, %ecx
	negq	%rcx
	movabsq	$-9223372036854775808, %rax     # imm = 0x8000000000000000
	sbbq	$0, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	jmp	.LBB16_13
.LBB16_6:
	.loc	1 508 6 is_stmt 1               # i128.c3:508:6
	cmpl	$23, -124(%rbp)
	jge	.LBB16_10
# %bb.7:
	.loc	1 508 42 is_stmt 0              # i128.c3:508:42
	movslq	-120(%rbp), %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	sarq	$63, %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
	.loc	1 508 50                        # i128.c3:508:50
	movl	-128(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)                # 8-byte Spill
	.loc	1 508 93                        # i128.c3:508:93
	movl	-124(%rbp), %esi
	movl	$23, %edx
	.loc	1 508 74                        # i128.c3:508:74
	subl	%esi, %edx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -344(%rbp)                # 8-byte Spill
	movq	%rcx, -336(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 508 50                        # i128.c3:508:50
	testb	$1, %al
	jne	.LBB16_16
# %bb.8:
	.loc	1 0 50                          # i128.c3:0:50
	movq	-336(%rbp), %rcx                # 8-byte Reload
	movq	-344(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 508 50                        # i128.c3:508:50
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB16_17
# %bb.9:
	.loc	1 0 50                          # i128.c3:0:50
	movq	-376(%rbp), %rsi                # 8-byte Reload
	movq	-368(%rbp), %rax                # 8-byte Reload
	movq	-352(%rbp), %rdx                # 8-byte Reload
	movq	-360(%rbp), %rdi                # 8-byte Reload
	movq	-344(%rbp), %rcx                # 8-byte Reload
	.loc	1 508 50                        # i128.c3:508:50
	movb	%cl, %r8b
	movb	%r8b, %cl
	shrdq	%cl, %rdx, %rdi
	movq	%rdi, -392(%rbp)                # 8-byte Spill
	movb	%r8b, %cl
	movq	%rdx, %rdi
	sarq	%cl, %rdi
	movq	-392(%rbp), %rcx                # 8-byte Reload
	sarq	$63, %rdx
	testb	$64, %r8b
	cmovneq	%rdi, %rcx
	cmovneq	%rdx, %rdi
	.loc	1 508 42                        # i128.c3:508:42
	imulq	%rcx, %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	-384(%rbp), %rdx                # 8-byte Reload
	imulq	%rdi, %rsi
	addq	%rsi, %rax
	addq	%rdx, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	jmp	.LBB16_13
.LBB16_10:
	.loc	1 509 9 is_stmt 1               # i128.c3:509:9
	movslq	-120(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	sarq	$63, %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	.loc	1 509 17 is_stmt 0              # i128.c3:509:17
	movl	-128(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)                # 8-byte Spill
	.loc	1 509 41                        # i128.c3:509:41
	movl	-124(%rbp), %edx
	addl	$-23, %edx
                                        # kill: def $rdx killed $edx
	movq	%rdx, -408(%rbp)                # 8-byte Spill
	movq	%rcx, -400(%rbp)                # 8-byte Spill
                                        # kill: def $al killed $al killed $eax
	.loc	1 509 17                        # i128.c3:509:17
	testb	$1, %al
	jne	.LBB16_18
# %bb.11:
	.loc	1 0 17                          # i128.c3:0:17
	movq	-400(%rbp), %rcx                # 8-byte Reload
	movq	-408(%rbp), %rsi                # 8-byte Reload
	xorl	%eax, %eax
	movl	$127, %edx
	.loc	1 509 17                        # i128.c3:509:17
	subq	%rsi, %rdx
                                        # kill: def $rax killed $eax
	sbbq	%rcx, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB16_19
# %bb.12:
	.loc	1 0 17                          # i128.c3:0:17
	movq	-440(%rbp), %rax                # 8-byte Reload
	movq	-424(%rbp), %rsi                # 8-byte Reload
	movq	-416(%rbp), %rdx                # 8-byte Reload
	movq	-408(%rbp), %rcx                # 8-byte Reload
	.loc	1 509 17                        # i128.c3:509:17
	movb	%cl, %dil
	movb	%dil, %cl
	shldq	%cl, %rsi, %rdx
	movq	%rdx, -448(%rbp)                # 8-byte Spill
	movb	%dil, %cl
	shlq	%cl, %rsi
	movq	-448(%rbp), %rcx                # 8-byte Reload
	xorl	%edx, %edx
	testb	$64, %dil
	cmovneq	%rsi, %rcx
                                        # kill: def $rdx killed $edx
	cmovneq	%rdx, %rsi
	.loc	1 509 9                         # i128.c3:509:9
	movq	%rax, %rdi
	imulq	%rcx, %rdi
	mulq	%rsi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	-432(%rbp), %rdx                # 8-byte Reload
	addq	%rdi, %rax
	imulq	%rsi, %rdx
	addq	%rdx, %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
.LBB16_13:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	.loc	1 509 9 epilogue_begin          # i128.c3:509:9
	addq	$480, %rsp                      # imm = 0x1E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_14:
	.cfi_def_cfa %rbp, 16
.Ltmp250:
	.loc	2 293 11 is_stmt 1              # builtin.c3:293:11
	leaq	.panic_msg.9(%rip), %rdi
	movl	$54, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.18(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB16_15:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-328(%rbp), %rcx                # 8-byte Reload
	movq	$4, -48(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$94, %esi
	leaq	.file.10(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.18(%rip), %r8
	movl	$9, %r9d
	leaq	-112(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp251:
.LBB16_16:
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-336(%rbp), %rax                # 8-byte Reload
	movq	-344(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$1, -168(%rbp)
	.loc	1 508 50 is_stmt 1              # i128.c3:508:50
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$9, %r9d
	leaq	-176(%rbp), %rax
	movl	$508, (%rsp)                    # imm = 0x1FC
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB16_17:
	.loc	1 0 50 is_stmt 0                # i128.c3:0:50
	movq	-336(%rbp), %rax                # 8-byte Reload
	movq	-344(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	%rax, -184(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$1, -216(%rbp)
	.loc	1 508 50                        # i128.c3:508:50
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$9, %r9d
	leaq	-224(%rbp), %rax
	movl	$508, (%rsp)                    # imm = 0x1FC
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB16_18:
	.loc	1 0 50                          # i128.c3:0:50
	movq	-400(%rbp), %rax                # 8-byte Reload
	movq	-408(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	%rax, -232(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$1, -264(%rbp)
	.loc	1 509 17 is_stmt 1              # i128.c3:509:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$9, %r9d
	leaq	-272(%rbp), %rax
	movl	$509, (%rsp)                    # imm = 0x1FD
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB16_19:
	.loc	1 0 17 is_stmt 0                # i128.c3:0:17
	movq	-400(%rbp), %rax                # 8-byte Reload
	movq	-408(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -288(%rbp)
	movq	%rax, -280(%rbp)
	movq	($ct.int128)@GOTPCREL(%rip), %rax
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$1, -312(%rbp)
	.loc	1 509 17                        # i128.c3:509:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$35, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$9, %r9d
	leaq	-320(%rbp), %rax
	movl	$509, (%rsp)                    # imm = 0x1FD
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp252:
.Lfunc_end16:
	.size	__fixsfti, .Lfunc_end16-__fixsfti
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function roundevenf
.LCPI17_0:
	.long	0x40000000                      # float 2
.LCPI17_2:
	.long	0x3effffff                      # float 0.49999997
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI17_1:
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.section	.text.roundevenf,"axG",@progbits,roundevenf,comdat
	.weak	roundevenf
	.p2align	4, 0x90
	.type	roundevenf,@function
roundevenf:                             # @roundevenf
.Lfunc_begin17:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math/runtime" "math_supplemental.c3"
	.loc	3 3 0 is_stmt 1                 # math_supplemental.c3:3:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovss	%xmm0, -4(%rbp)
.Ltmp253:
	.loc	3 6 21 prologue_end             # math_supplemental.c3:6:21
	vmovss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	vmovss	.LCPI17_0(%rip), %xmm1          # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	vdivss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, -8(%rbp)
.Ltmp254:
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	4 463 27                        # math.c3:463:27
	vmovss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	vmovaps	%xmm0, %xmm1
	vmovdqa	.LCPI17_1(%rip), %xmm2          # xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	vpand	%xmm2, %xmm1, %xmm1
	vbroadcastss	.LCPI17_2(%rip), %xmm2  # xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	vpor	%xmm2, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm1
                                        # implicit-def: $xmm0
	vroundss	$11, %xmm1, %xmm0, %xmm0
.Ltmp255:
	.loc	3 6 9                           # math_supplemental.c3:6:9
	vmovss	.LCPI17_0(%rip), %xmm1          # xmm1 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	vmulss	%xmm1, %xmm0, %xmm0
	.loc	3 6 9 epilogue_begin is_stmt 0  # math_supplemental.c3:6:9
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp256:
.Lfunc_end17:
	.size	roundevenf, .Lfunc_end17-roundevenf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function roundeven
.LCPI18_0:
	.quad	0x4000000000000000              # double 2
.LCPI18_2:
	.quad	0x3fdfffffffffffff              # double 0.49999999999999994
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI18_1:
	.quad	0x8000000000000000              # double -0
	.quad	0x8000000000000000              # double -0
	.section	.text.roundeven,"axG",@progbits,roundeven,comdat
	.weak	roundeven
	.p2align	4, 0x90
	.type	roundeven,@function
roundeven:                              # @roundeven
.Lfunc_begin18:
	.loc	3 9 0 is_stmt 1                 # math_supplemental.c3:9:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovsd	%xmm0, -8(%rbp)
.Ltmp257:
	.loc	3 12 21 prologue_end            # math_supplemental.c3:12:21
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	.LCPI18_0(%rip), %xmm1          # xmm1 = [2.0E+0,0.0E+0]
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)
.Ltmp258:
	.loc	4 463 27                        # math.c3:463:27
	vmovsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	vmovaps	%xmm0, %xmm1
	vmovdqa	.LCPI18_1(%rip), %xmm2          # xmm2 = [-0.0E+0,-0.0E+0]
	vpand	%xmm2, %xmm1, %xmm1
	vmovddup	.LCPI18_2(%rip), %xmm2          # xmm2 = [4.9999999999999994E-1,4.9999999999999994E-1]
                                        # xmm2 = mem[0,0]
	vpor	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm1
                                        # implicit-def: $xmm0
	vroundsd	$11, %xmm1, %xmm0, %xmm0
.Ltmp259:
	.loc	3 12 9                          # math_supplemental.c3:12:9
	vmovsd	.LCPI18_0(%rip), %xmm1          # xmm1 = [2.0E+0,0.0E+0]
	vmulsd	%xmm1, %xmm0, %xmm0
	.loc	3 12 9 epilogue_begin is_stmt 0 # math_supplemental.c3:12:9
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp260:
.Lfunc_end18:
	.size	roundeven, .Lfunc_end18-roundeven
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __powidf2
.LCPI19_0:
	.quad	0x3ff0000000000000              # double 1
	.section	.text.__powidf2,"axG",@progbits,__powidf2,comdat
	.weak	__powidf2
	.p2align	4, 0x90
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
.Lfunc_begin19:
	.loc	3 15 0 is_stmt 1                # math_supplemental.c3:15:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	vmovsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
.Ltmp261:
	.loc	3 17 15 prologue_end            # math_supplemental.c3:17:15
	cmpl	$0, -12(%rbp)
	setl	%al
	andb	$1, %al
	movb	%al, -13(%rbp)
	.loc	3 18 16                         # math_supplemental.c3:18:16
	vmovsd	.LCPI19_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	vmovsd	%xmm0, -24(%rbp)
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
.Ltmp262:
	.loc	3 21 13                         # math_supplemental.c3:21:13
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB19_3
# %bb.2:                                #   in Loop: Header=BB19_1 Depth=1
	.loc	3 21 20 is_stmt 0               # math_supplemental.c3:21:20
	vmovsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	vmulsd	-8(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
.LBB19_3:                               #   in Loop: Header=BB19_1 Depth=1
	.loc	3 22 9 is_stmt 1                # math_supplemental.c3:22:9
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	.loc	3 23 13                         # math_supplemental.c3:23:13
	cmpl	$0, -12(%rbp)
	jne	.LBB19_5
# %bb.4:
	.loc	3 23 21 is_stmt 0               # math_supplemental.c3:23:21
	jmp	.LBB19_6
.LBB19_5:                               #   in Loop: Header=BB19_1 Depth=1
	.loc	3 24 9 is_stmt 1                # math_supplemental.c3:24:9
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	vmulsd	-8(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	jmp	.LBB19_1
.Ltmp263:
.LBB19_6:
	.loc	3 26 12                         # math_supplemental.c3:26:12
	testb	$1, -13(%rbp)
	je	.LBB19_9
# %bb.7:
	.loc	3 26 24 is_stmt 0               # math_supplemental.c3:26:24
	vmovsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, -32(%rbp)                # 8-byte Spill
	.loc	3 26 20                         # math_supplemental.c3:26:20
	vxorps	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	sete	%al
	testb	$1, %al
	jne	.LBB19_11
# %bb.8:
	.loc	3 0 20                          # math_supplemental.c3:0:20
	vmovsd	-32(%rbp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.loc	3 26 20                         # math_supplemental.c3:26:20
	vmovsd	.LCPI19_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)                # 8-byte Spill
	jmp	.LBB19_10
.LBB19_9:
	.loc	3 26 28                         # math_supplemental.c3:26:28
	vmovsd	-24(%rbp), %xmm0                # xmm0 = mem[0],zero
	vmovsd	%xmm0, -40(%rbp)                # 8-byte Spill
.LBB19_10:
	.loc	3 0 28                          # math_supplemental.c3:0:28
	vmovsd	-40(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	.loc	3 26 28 epilogue_begin          # math_supplemental.c3:26:28
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB19_11:
	.cfi_def_cfa %rbp, 16
	.loc	3 26 20                         # math_supplemental.c3:26:20
	leaq	.panic_msg.3(%rip), %rdi
	movl	$17, %esi
	leaq	.file.19(%rip), %rdx
	movl	$20, %ecx
	leaq	.func.20(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$26, (%rsp)
	callq	*(%rax)
.Ltmp264:
.Lfunc_end19:
	.size	__powidf2, .Lfunc_end19-__powidf2
	.cfi_endproc
                                        # -- End function
	.type	$ct.std.math.math_rt.$anon,@object # @"$ct.std.math.math_rt.$anon"
	.section	".data.$ct.std.math.math_rt.$anon","awG",@progbits,"$ct.std.math.math_rt.$anon",comdat
	.weak	$ct.std.math.math_rt.$anon
	.p2align	3, 0x0
$ct.std.math.math_rt.$anon:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	16                              # 0x10
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.size	$ct.std.math.math_rt.$anon, 48

	.type	$ct.std.math.math_rt.Int128bits,@object # @"$ct.std.math.math_rt.Int128bits"
	.section	".data.$ct.std.math.math_rt.Int128bits","awG",@progbits,"$ct.std.math.math_rt.Int128bits",comdat
	.weak	$ct.std.math.math_rt.Int128bits
	.p2align	3, 0x0
$ct.std.math.math_rt.Int128bits:
	.byte	11                              # 0xb
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	16                              # 0x10
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.size	$ct.std.math.math_rt.Int128bits, 48

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"% by zero."
	.size	.panic_msg, 11

	.type	.file,@object                   # @.file
.file:
	.asciz	"i128.c3"
	.size	.file, 8

	.type	.func,@object                   # @.func
.func:
	.asciz	"__umodti3"
	.size	.func, 10

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

	.type	.panic_msg.2,@object            # @.panic_msg.2
	.section	.rodata,"a",@progbits
.panic_msg.2:
	.asciz	"Shift amount out of range (was %s)."
	.size	.panic_msg.2, 36

	.type	.panic_msg.3,@object            # @.panic_msg.3
.panic_msg.3:
	.asciz	"Division by zero."
	.size	.panic_msg.3, 18

	.type	.func.4,@object                 # @.func.4
.func.4:
	.asciz	"__udivti3"
	.size	.func.4, 10

	.type	.func.5,@object                 # @.func.5
.func.5:
	.asciz	"__lshrti3"
	.size	.func.5, 10

	.type	.func.6,@object                 # @.func.6
.func.6:
	.asciz	"__ashrti3"
	.size	.func.6, 10

	.type	.func.7,@object                 # @.func.7
.func.7:
	.asciz	"__ashlti3"
	.size	.func.7, 10

	.type	__mulddi3.LOWER_MASK,@object    # @__mulddi3.LOWER_MASK
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
__mulddi3.LOWER_MASK:
	.quad	4294967295                      # 0xffffffff
	.size	__mulddi3.LOWER_MASK, 8

	.type	__floattisf.MANT_DIG,@object    # @__floattisf.MANT_DIG
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__floattisf.MANT_DIG:
	.long	24                              # 0x18
	.size	__floattisf.MANT_DIG, 4

	.type	__floattisf.EXP_BIAS,@object    # @__floattisf.EXP_BIAS
	.p2align	2, 0x0
__floattisf.EXP_BIAS:
	.long	127                             # 0x7f
	.size	__floattisf.EXP_BIAS, 4

	.type	__floattisf.SIGNIFICANT_BITS,@object # @__floattisf.SIGNIFICANT_BITS
	.p2align	2, 0x0
__floattisf.SIGNIFICANT_BITS:
	.long	23                              # 0x17
	.size	__floattisf.SIGNIFICANT_BITS, 4

	.type	__floattisf.MANTISSA_MASK,@object # @__floattisf.MANTISSA_MASK
	.p2align	2, 0x0
__floattisf.MANTISSA_MASK:
	.long	8388607                         # 0x7fffff
	.size	__floattisf.MANTISSA_MASK, 4

	.type	__floattisf.SIGN_BIT,@object    # @__floattisf.SIGN_BIT
	.p2align	2, 0x0
__floattisf.SIGN_BIT:
	.long	2147483648                      # 0x80000000
	.size	__floattisf.SIGN_BIT, 4

	.type	$ct.int128,@object              # @"$ct.int128"
	.section	".data.$ct.int128","awG",@progbits,"$ct.int128",comdat
	.weak	$ct.int128
	.p2align	3, 0x0
$ct.int128:
	.byte	2                               # 0x2
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	16                              # 0x10
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.int128, 48

	.type	.func.8,@object                 # @.func.8
	.section	.rodata,"a",@progbits
.func.8:
	.asciz	"__floattisf"
	.size	.func.8, 12

	.type	$ct.uint128,@object             # @"$ct.uint128"
	.section	".data.$ct.uint128","awG",@progbits,"$ct.uint128",comdat
	.weak	$ct.uint128
	.p2align	3, 0x0
$ct.uint128:
	.byte	3                               # 0x3
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	16                              # 0x10
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.uint128, 48

	.type	.panic_msg.9,@object            # @.panic_msg.9
	.section	.rodata,"a",@progbits
.panic_msg.9:
	.asciz	"Dereference of null pointer, '($Type*)&expr' was null."
	.size	.panic_msg.9, 55

	.type	.file.10,@object                # @.file.10
.file.10:
	.asciz	"builtin.c3"
	.size	.file.10, 11

	.type	.panic_msg.11,@object           # @.panic_msg.11
.panic_msg.11:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.11, 95

	.type	__floattidf.MANT_DIG,@object    # @__floattidf.MANT_DIG
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__floattidf.MANT_DIG:
	.long	53                              # 0x35
	.size	__floattidf.MANT_DIG, 4

	.type	__floattidf.SIGNIFICANT_BITS,@object # @__floattidf.SIGNIFICANT_BITS
	.p2align	2, 0x0
__floattidf.SIGNIFICANT_BITS:
	.long	52                              # 0x34
	.size	__floattidf.SIGNIFICANT_BITS, 4

	.type	__floattidf.EXP_BIAS,@object    # @__floattidf.EXP_BIAS
	.p2align	2, 0x0
__floattidf.EXP_BIAS:
	.long	1023                            # 0x3ff
	.size	__floattidf.EXP_BIAS, 4

	.type	__floattidf.MANTISSA_MASK,@object # @__floattidf.MANTISSA_MASK
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
__floattidf.MANTISSA_MASK:
	.quad	4503599627370495                # 0xfffffffffffff
	.size	__floattidf.MANTISSA_MASK, 8

	.type	__floattidf.SIGN_BIT,@object    # @__floattidf.SIGN_BIT
	.p2align	3, 0x0
__floattidf.SIGN_BIT:
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	__floattidf.SIGN_BIT, 8

	.type	.func.12,@object                # @.func.12
	.section	.rodata,"a",@progbits
.func.12:
	.asciz	"__floattidf"
	.size	.func.12, 12

	.type	__floatuntisf.MANT_DIG,@object  # @__floatuntisf.MANT_DIG
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__floatuntisf.MANT_DIG:
	.long	24                              # 0x18
	.size	__floatuntisf.MANT_DIG, 4

	.type	__floatuntisf.EXP_BIAS,@object  # @__floatuntisf.EXP_BIAS
	.p2align	2, 0x0
__floatuntisf.EXP_BIAS:
	.long	127                             # 0x7f
	.size	__floatuntisf.EXP_BIAS, 4

	.type	__floatuntisf.SIGNIFICANT_BITS,@object # @__floatuntisf.SIGNIFICANT_BITS
	.p2align	2, 0x0
__floatuntisf.SIGNIFICANT_BITS:
	.long	23                              # 0x17
	.size	__floatuntisf.SIGNIFICANT_BITS, 4

	.type	__floatuntisf.MANTISSA_MASK,@object # @__floatuntisf.MANTISSA_MASK
	.p2align	2, 0x0
__floatuntisf.MANTISSA_MASK:
	.long	8388607                         # 0x7fffff
	.size	__floatuntisf.MANTISSA_MASK, 4

	.type	.func.13,@object                # @.func.13
	.section	.rodata,"a",@progbits
.func.13:
	.asciz	"__floatuntisf"
	.size	.func.13, 14

	.type	__floatuntidf.MANT_DIG,@object  # @__floatuntidf.MANT_DIG
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__floatuntidf.MANT_DIG:
	.long	53                              # 0x35
	.size	__floatuntidf.MANT_DIG, 4

	.type	__floatuntidf.SIGNIFICANT_BITS,@object # @__floatuntidf.SIGNIFICANT_BITS
	.p2align	2, 0x0
__floatuntidf.SIGNIFICANT_BITS:
	.long	52                              # 0x34
	.size	__floatuntidf.SIGNIFICANT_BITS, 4

	.type	__floatuntidf.EXP_BIAS,@object  # @__floatuntidf.EXP_BIAS
	.p2align	2, 0x0
__floatuntidf.EXP_BIAS:
	.long	1023                            # 0x3ff
	.size	__floatuntidf.EXP_BIAS, 4

	.type	__floatuntidf.MANTISSA_MASK,@object # @__floatuntidf.MANTISSA_MASK
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
__floatuntidf.MANTISSA_MASK:
	.quad	4503599627370495                # 0xfffffffffffff
	.size	__floatuntidf.MANTISSA_MASK, 8

	.type	.func.14,@object                # @.func.14
	.section	.rodata,"a",@progbits
.func.14:
	.asciz	"__floatuntidf"
	.size	.func.14, 14

	.type	__fixunsdfti.EXPONENT_BITS,@object # @__fixunsdfti.EXPONENT_BITS
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__fixunsdfti.EXPONENT_BITS:
	.long	11                              # 0xb
	.size	__fixunsdfti.EXPONENT_BITS, 4

	.type	__fixunsdfti.SIGNIFICANT_BITS,@object # @__fixunsdfti.SIGNIFICANT_BITS
	.p2align	2, 0x0
__fixunsdfti.SIGNIFICANT_BITS:
	.long	52                              # 0x34
	.size	__fixunsdfti.SIGNIFICANT_BITS, 4

	.type	__fixunsdfti.MAX_EXPONENT,@object # @__fixunsdfti.MAX_EXPONENT
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
__fixunsdfti.MAX_EXPONENT:
	.quad	2047                            # 0x7ff
	.size	__fixunsdfti.MAX_EXPONENT, 8

	.type	__fixunsdfti.EXPONENT_BIAS,@object # @__fixunsdfti.EXPONENT_BIAS
	.p2align	3, 0x0
__fixunsdfti.EXPONENT_BIAS:
	.quad	1023                            # 0x3ff
	.size	__fixunsdfti.EXPONENT_BIAS, 8

	.type	__fixunsdfti.ONE_REP,@object    # @__fixunsdfti.ONE_REP
	.p2align	3, 0x0
__fixunsdfti.ONE_REP:
	.quad	4607182418800017408             # 0x3ff0000000000000
	.size	__fixunsdfti.ONE_REP, 8

	.type	__fixunsdfti.SIGN_BIT,@object   # @__fixunsdfti.SIGN_BIT
	.p2align	3, 0x0
__fixunsdfti.SIGN_BIT:
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	__fixunsdfti.SIGN_BIT, 8

	.type	__fixunsdfti.ABS_MASK,@object   # @__fixunsdfti.ABS_MASK
	.p2align	3, 0x0
__fixunsdfti.ABS_MASK:
	.quad	9223372036854775807             # 0x7fffffffffffffff
	.size	__fixunsdfti.ABS_MASK, 8

	.type	__fixunsdfti.IMPLICIT_BIT,@object # @__fixunsdfti.IMPLICIT_BIT
	.p2align	3, 0x0
__fixunsdfti.IMPLICIT_BIT:
	.quad	4503599627370496                # 0x10000000000000
	.size	__fixunsdfti.IMPLICIT_BIT, 8

	.type	__fixunsdfti.SIGNIFICANT_MASK,@object # @__fixunsdfti.SIGNIFICANT_MASK
	.p2align	3, 0x0
__fixunsdfti.SIGNIFICANT_MASK:
	.quad	4503599627370495                # 0xfffffffffffff
	.size	__fixunsdfti.SIGNIFICANT_MASK, 8

	.type	__fixunsdfti.EXPONENT_MASK,@object # @__fixunsdfti.EXPONENT_MASK
	.p2align	3, 0x0
__fixunsdfti.EXPONENT_MASK:
	.quad	9218868437227405312             # 0x7ff0000000000000
	.size	__fixunsdfti.EXPONENT_MASK, 8

	.type	__fixunsdfti.QUIET_BIT,@object  # @__fixunsdfti.QUIET_BIT
	.p2align	3, 0x0
__fixunsdfti.QUIET_BIT:
	.quad	2251799813685248                # 0x8000000000000
	.size	__fixunsdfti.QUIET_BIT, 8

	.type	__fixunsdfti.QNAN_REP,@object   # @__fixunsdfti.QNAN_REP
	.p2align	3, 0x0
__fixunsdfti.QNAN_REP:
	.quad	9221120237041090560             # 0x7ff8000000000000
	.size	__fixunsdfti.QNAN_REP, 8

	.type	__fixunsdfti.INF_REP,@object    # @__fixunsdfti.INF_REP
	.p2align	3, 0x0
__fixunsdfti.INF_REP:
	.quad	9218868437227405312             # 0x7ff0000000000000
	.size	__fixunsdfti.INF_REP, 8

	.type	.func.15,@object                # @.func.15
	.section	.rodata,"a",@progbits
.func.15:
	.asciz	"__fixunsdfti"
	.size	.func.15, 13

	.type	__fixunssfti.EXPONENT_BITS,@object # @__fixunssfti.EXPONENT_BITS
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__fixunssfti.EXPONENT_BITS:
	.long	8                               # 0x8
	.size	__fixunssfti.EXPONENT_BITS, 4

	.type	__fixunssfti.SIGNIFICANT_BITS,@object # @__fixunssfti.SIGNIFICANT_BITS
	.p2align	2, 0x0
__fixunssfti.SIGNIFICANT_BITS:
	.long	23                              # 0x17
	.size	__fixunssfti.SIGNIFICANT_BITS, 4

	.type	__fixunssfti.MAX_EXPONENT,@object # @__fixunssfti.MAX_EXPONENT
	.p2align	2, 0x0
__fixunssfti.MAX_EXPONENT:
	.long	255                             # 0xff
	.size	__fixunssfti.MAX_EXPONENT, 4

	.type	__fixunssfti.EXPONENT_BIAS,@object # @__fixunssfti.EXPONENT_BIAS
	.p2align	2, 0x0
__fixunssfti.EXPONENT_BIAS:
	.long	127                             # 0x7f
	.size	__fixunssfti.EXPONENT_BIAS, 4

	.type	__fixunssfti.ONE_REP,@object    # @__fixunssfti.ONE_REP
	.p2align	2, 0x0
__fixunssfti.ONE_REP:
	.long	1065353216                      # 0x3f800000
	.size	__fixunssfti.ONE_REP, 4

	.type	__fixunssfti.SIGN_BIT,@object   # @__fixunssfti.SIGN_BIT
	.p2align	2, 0x0
__fixunssfti.SIGN_BIT:
	.long	2147483648                      # 0x80000000
	.size	__fixunssfti.SIGN_BIT, 4

	.type	__fixunssfti.ABS_MASK,@object   # @__fixunssfti.ABS_MASK
	.p2align	2, 0x0
__fixunssfti.ABS_MASK:
	.long	2147483647                      # 0x7fffffff
	.size	__fixunssfti.ABS_MASK, 4

	.type	__fixunssfti.IMPLICIT_BIT,@object # @__fixunssfti.IMPLICIT_BIT
	.p2align	2, 0x0
__fixunssfti.IMPLICIT_BIT:
	.long	8388608                         # 0x800000
	.size	__fixunssfti.IMPLICIT_BIT, 4

	.type	__fixunssfti.SIGNIFICANT_MASK,@object # @__fixunssfti.SIGNIFICANT_MASK
	.p2align	2, 0x0
__fixunssfti.SIGNIFICANT_MASK:
	.long	8388607                         # 0x7fffff
	.size	__fixunssfti.SIGNIFICANT_MASK, 4

	.type	__fixunssfti.EXPONENT_MASK,@object # @__fixunssfti.EXPONENT_MASK
	.p2align	2, 0x0
__fixunssfti.EXPONENT_MASK:
	.long	2139095040                      # 0x7f800000
	.size	__fixunssfti.EXPONENT_MASK, 4

	.type	__fixunssfti.QUIET_BIT,@object  # @__fixunssfti.QUIET_BIT
	.p2align	2, 0x0
__fixunssfti.QUIET_BIT:
	.long	4194304                         # 0x400000
	.size	__fixunssfti.QUIET_BIT, 4

	.type	__fixunssfti.QNAN_REP,@object   # @__fixunssfti.QNAN_REP
	.p2align	2, 0x0
__fixunssfti.QNAN_REP:
	.long	2143289344                      # 0x7fc00000
	.size	__fixunssfti.QNAN_REP, 4

	.type	__fixunssfti.INF_REP,@object    # @__fixunssfti.INF_REP
	.p2align	2, 0x0
__fixunssfti.INF_REP:
	.long	2139095040                      # 0x7f800000
	.size	__fixunssfti.INF_REP, 4

	.type	.func.16,@object                # @.func.16
	.section	.rodata,"a",@progbits
.func.16:
	.asciz	"__fixunssfti"
	.size	.func.16, 13

	.type	__fixdfti.EXPONENT_BITS,@object # @__fixdfti.EXPONENT_BITS
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__fixdfti.EXPONENT_BITS:
	.long	11                              # 0xb
	.size	__fixdfti.EXPONENT_BITS, 4

	.type	__fixdfti.SIGNIFICANT_BITS,@object # @__fixdfti.SIGNIFICANT_BITS
	.p2align	2, 0x0
__fixdfti.SIGNIFICANT_BITS:
	.long	52                              # 0x34
	.size	__fixdfti.SIGNIFICANT_BITS, 4

	.type	__fixdfti.MAX_EXPONENT,@object  # @__fixdfti.MAX_EXPONENT
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
__fixdfti.MAX_EXPONENT:
	.quad	2047                            # 0x7ff
	.size	__fixdfti.MAX_EXPONENT, 8

	.type	__fixdfti.EXPONENT_BIAS,@object # @__fixdfti.EXPONENT_BIAS
	.p2align	3, 0x0
__fixdfti.EXPONENT_BIAS:
	.quad	1023                            # 0x3ff
	.size	__fixdfti.EXPONENT_BIAS, 8

	.type	__fixdfti.ONE_REP,@object       # @__fixdfti.ONE_REP
	.p2align	3, 0x0
__fixdfti.ONE_REP:
	.quad	4607182418800017408             # 0x3ff0000000000000
	.size	__fixdfti.ONE_REP, 8

	.type	__fixdfti.SIGN_BIT,@object      # @__fixdfti.SIGN_BIT
	.p2align	3, 0x0
__fixdfti.SIGN_BIT:
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	__fixdfti.SIGN_BIT, 8

	.type	__fixdfti.ABS_MASK,@object      # @__fixdfti.ABS_MASK
	.p2align	3, 0x0
__fixdfti.ABS_MASK:
	.quad	9223372036854775807             # 0x7fffffffffffffff
	.size	__fixdfti.ABS_MASK, 8

	.type	__fixdfti.IMPLICIT_BIT,@object  # @__fixdfti.IMPLICIT_BIT
	.p2align	3, 0x0
__fixdfti.IMPLICIT_BIT:
	.quad	4503599627370496                # 0x10000000000000
	.size	__fixdfti.IMPLICIT_BIT, 8

	.type	__fixdfti.SIGNIFICANT_MASK,@object # @__fixdfti.SIGNIFICANT_MASK
	.p2align	3, 0x0
__fixdfti.SIGNIFICANT_MASK:
	.quad	4503599627370495                # 0xfffffffffffff
	.size	__fixdfti.SIGNIFICANT_MASK, 8

	.type	__fixdfti.EXPONENT_MASK,@object # @__fixdfti.EXPONENT_MASK
	.p2align	3, 0x0
__fixdfti.EXPONENT_MASK:
	.quad	9218868437227405312             # 0x7ff0000000000000
	.size	__fixdfti.EXPONENT_MASK, 8

	.type	__fixdfti.QUIET_BIT,@object     # @__fixdfti.QUIET_BIT
	.p2align	3, 0x0
__fixdfti.QUIET_BIT:
	.quad	2251799813685248                # 0x8000000000000
	.size	__fixdfti.QUIET_BIT, 8

	.type	__fixdfti.QNAN_REP,@object      # @__fixdfti.QNAN_REP
	.p2align	3, 0x0
__fixdfti.QNAN_REP:
	.quad	9221120237041090560             # 0x7ff8000000000000
	.size	__fixdfti.QNAN_REP, 8

	.type	__fixdfti.INF_REP,@object       # @__fixdfti.INF_REP
	.p2align	3, 0x0
__fixdfti.INF_REP:
	.quad	9218868437227405312             # 0x7ff0000000000000
	.size	__fixdfti.INF_REP, 8

	.type	.func.17,@object                # @.func.17
	.section	.rodata,"a",@progbits
.func.17:
	.asciz	"__fixdfti"
	.size	.func.17, 10

	.type	__fixsfti.EXPONENT_BITS,@object # @__fixsfti.EXPONENT_BITS
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
__fixsfti.EXPONENT_BITS:
	.long	8                               # 0x8
	.size	__fixsfti.EXPONENT_BITS, 4

	.type	__fixsfti.SIGNIFICANT_BITS,@object # @__fixsfti.SIGNIFICANT_BITS
	.p2align	2, 0x0
__fixsfti.SIGNIFICANT_BITS:
	.long	23                              # 0x17
	.size	__fixsfti.SIGNIFICANT_BITS, 4

	.type	__fixsfti.MAX_EXPONENT,@object  # @__fixsfti.MAX_EXPONENT
	.p2align	2, 0x0
__fixsfti.MAX_EXPONENT:
	.long	255                             # 0xff
	.size	__fixsfti.MAX_EXPONENT, 4

	.type	__fixsfti.EXPONENT_BIAS,@object # @__fixsfti.EXPONENT_BIAS
	.p2align	2, 0x0
__fixsfti.EXPONENT_BIAS:
	.long	127                             # 0x7f
	.size	__fixsfti.EXPONENT_BIAS, 4

	.type	__fixsfti.ONE_REP,@object       # @__fixsfti.ONE_REP
	.p2align	2, 0x0
__fixsfti.ONE_REP:
	.long	1065353216                      # 0x3f800000
	.size	__fixsfti.ONE_REP, 4

	.type	__fixsfti.SIGN_BIT,@object      # @__fixsfti.SIGN_BIT
	.p2align	2, 0x0
__fixsfti.SIGN_BIT:
	.long	2147483648                      # 0x80000000
	.size	__fixsfti.SIGN_BIT, 4

	.type	__fixsfti.ABS_MASK,@object      # @__fixsfti.ABS_MASK
	.p2align	2, 0x0
__fixsfti.ABS_MASK:
	.long	2147483647                      # 0x7fffffff
	.size	__fixsfti.ABS_MASK, 4

	.type	__fixsfti.IMPLICIT_BIT,@object  # @__fixsfti.IMPLICIT_BIT
	.p2align	2, 0x0
__fixsfti.IMPLICIT_BIT:
	.long	8388608                         # 0x800000
	.size	__fixsfti.IMPLICIT_BIT, 4

	.type	__fixsfti.SIGNIFICANT_MASK,@object # @__fixsfti.SIGNIFICANT_MASK
	.p2align	2, 0x0
__fixsfti.SIGNIFICANT_MASK:
	.long	8388607                         # 0x7fffff
	.size	__fixsfti.SIGNIFICANT_MASK, 4

	.type	__fixsfti.EXPONENT_MASK,@object # @__fixsfti.EXPONENT_MASK
	.p2align	2, 0x0
__fixsfti.EXPONENT_MASK:
	.long	2139095040                      # 0x7f800000
	.size	__fixsfti.EXPONENT_MASK, 4

	.type	__fixsfti.QUIET_BIT,@object     # @__fixsfti.QUIET_BIT
	.p2align	2, 0x0
__fixsfti.QUIET_BIT:
	.long	4194304                         # 0x400000
	.size	__fixsfti.QUIET_BIT, 4

	.type	__fixsfti.QNAN_REP,@object      # @__fixsfti.QNAN_REP
	.p2align	2, 0x0
__fixsfti.QNAN_REP:
	.long	2143289344                      # 0x7fc00000
	.size	__fixsfti.QNAN_REP, 4

	.type	__fixsfti.INF_REP,@object       # @__fixsfti.INF_REP
	.p2align	2, 0x0
__fixsfti.INF_REP:
	.long	2139095040                      # 0x7f800000
	.size	__fixsfti.INF_REP, 4

	.type	.func.18,@object                # @.func.18
	.section	.rodata,"a",@progbits
.func.18:
	.asciz	"__fixsfti"
	.size	.func.18, 10

	.type	.file.19,@object                # @.file.19
.file.19:
	.asciz	"math_supplemental.c3"
	.size	.file.19, 21

	.type	.func.20,@object                # @.func.20
.func.20:
	.asciz	"__powidf2"
	.size	.func.20, 10

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
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	6                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
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
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x13cd DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges8                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x1b DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	274                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__mulddi3.LOWER_MASK
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x45:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x4c:0x1a DW_TAG_variable
	.long	.Linfo_string6                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	322                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattisf.MANT_DIG
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x66:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x6d:0x1a DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	323                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattisf.EXP_BIAS
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x87:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattisf.SIGNIFICANT_BITS
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0xa1:0x1a DW_TAG_variable
	.long	.Linfo_string13                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	325                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattisf.MANTISSA_MASK
	.long	.Linfo_string15                 # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0xbb:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xc2:0x1a DW_TAG_variable
	.long	.Linfo_string16                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	326                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattisf.SIGN_BIT
	.long	.Linfo_string17                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0xdc:0x1a DW_TAG_variable
	.long	.Linfo_string6                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattidf.MANT_DIG
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0xf6:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	316                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattidf.SIGNIFICANT_BITS
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x110:0x1a DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	317                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattidf.EXP_BIAS
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x12a:0x1b DW_TAG_variable
	.long	.Linfo_string13                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattidf.MANTISSA_MASK
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x145:0x1b DW_TAG_variable
	.long	.Linfo_string16                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floattidf.SIGN_BIT
	.long	.Linfo_string22                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x160:0x1a DW_TAG_variable
	.long	.Linfo_string6                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	380                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntisf.MANT_DIG
	.long	.Linfo_string23                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x17a:0x1a DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	381                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntisf.EXP_BIAS
	.long	.Linfo_string24                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x194:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntisf.SIGNIFICANT_BITS
	.long	.Linfo_string25                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x1ae:0x1a DW_TAG_variable
	.long	.Linfo_string13                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	383                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntisf.MANTISSA_MASK
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x1c8:0x1a DW_TAG_variable
	.long	.Linfo_string6                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	374                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntidf.MANT_DIG
	.long	.Linfo_string27                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x1e2:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntidf.SIGNIFICANT_BITS
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x1fc:0x1a DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	376                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntidf.EXP_BIAS
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x216:0x1b DW_TAG_variable
	.long	.Linfo_string13                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	377                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__floatuntidf.MANTISSA_MASK
	.long	.Linfo_string30                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x231:0x1a DW_TAG_variable
	.long	.Linfo_string31                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.EXPONENT_BITS
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x24b:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	430                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.SIGNIFICANT_BITS
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x265:0x1b DW_TAG_variable
	.long	.Linfo_string34                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	444                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.MAX_EXPONENT
	.long	.Linfo_string35                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x280:0x1b DW_TAG_variable
	.long	.Linfo_string36                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	445                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.EXPONENT_BIAS
	.long	.Linfo_string37                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x29b:0x1b DW_TAG_variable
	.long	.Linfo_string38                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	446                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.ONE_REP
	.long	.Linfo_string39                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x2b6:0x1b DW_TAG_variable
	.long	.Linfo_string16                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	447                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.SIGN_BIT
	.long	.Linfo_string40                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x2d1:0x1b DW_TAG_variable
	.long	.Linfo_string41                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	448                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.ABS_MASK
	.long	.Linfo_string42                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x2ec:0x1b DW_TAG_variable
	.long	.Linfo_string43                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	449                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.IMPLICIT_BIT
	.long	.Linfo_string44                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x307:0x1b DW_TAG_variable
	.long	.Linfo_string45                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	450                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.SIGNIFICANT_MASK
	.long	.Linfo_string46                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x322:0x1b DW_TAG_variable
	.long	.Linfo_string47                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.EXPONENT_MASK
	.long	.Linfo_string48                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x33d:0x1b DW_TAG_variable
	.long	.Linfo_string49                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	452                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.QUIET_BIT
	.long	.Linfo_string50                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x358:0x1b DW_TAG_variable
	.long	.Linfo_string51                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.QNAN_REP
	.long	.Linfo_string52                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x373:0x1b DW_TAG_variable
	.long	.Linfo_string53                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunsdfti.INF_REP
	.long	.Linfo_string54                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x38e:0x1a DW_TAG_variable
	.long	.Linfo_string31                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	433                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.EXPONENT_BITS
	.long	.Linfo_string55                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x3a8:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	434                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.SIGNIFICANT_BITS
	.long	.Linfo_string56                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x3c2:0x1a DW_TAG_variable
	.long	.Linfo_string34                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	444                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.MAX_EXPONENT
	.long	.Linfo_string57                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x3dc:0x1a DW_TAG_variable
	.long	.Linfo_string36                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	445                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.EXPONENT_BIAS
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x3f6:0x1a DW_TAG_variable
	.long	.Linfo_string38                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	446                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.ONE_REP
	.long	.Linfo_string59                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x410:0x1a DW_TAG_variable
	.long	.Linfo_string16                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	447                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.SIGN_BIT
	.long	.Linfo_string60                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x42a:0x1a DW_TAG_variable
	.long	.Linfo_string41                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	448                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.ABS_MASK
	.long	.Linfo_string61                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x444:0x1a DW_TAG_variable
	.long	.Linfo_string43                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	449                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.IMPLICIT_BIT
	.long	.Linfo_string62                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x45e:0x1a DW_TAG_variable
	.long	.Linfo_string45                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	450                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.SIGNIFICANT_MASK
	.long	.Linfo_string63                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x478:0x1a DW_TAG_variable
	.long	.Linfo_string47                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	451                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.EXPONENT_MASK
	.long	.Linfo_string64                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x492:0x1a DW_TAG_variable
	.long	.Linfo_string49                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	452                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.QUIET_BIT
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x4ac:0x1a DW_TAG_variable
	.long	.Linfo_string51                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	453                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.QNAN_REP
	.long	.Linfo_string66                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x4c6:0x1a DW_TAG_variable
	.long	.Linfo_string53                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	454                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixunssfti.INF_REP
	.long	.Linfo_string67                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x4e0:0x1a DW_TAG_variable
	.long	.Linfo_string31                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	473                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.EXPONENT_BITS
	.long	.Linfo_string68                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x4fa:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	474                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.SIGNIFICANT_BITS
	.long	.Linfo_string69                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x514:0x1b DW_TAG_variable
	.long	.Linfo_string34                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.MAX_EXPONENT
	.long	.Linfo_string70                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x52f:0x1b DW_TAG_variable
	.long	.Linfo_string36                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	489                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.EXPONENT_BIAS
	.long	.Linfo_string71                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x54a:0x1b DW_TAG_variable
	.long	.Linfo_string38                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.ONE_REP
	.long	.Linfo_string72                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x565:0x1b DW_TAG_variable
	.long	.Linfo_string16                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	491                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.SIGN_BIT
	.long	.Linfo_string73                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x580:0x1b DW_TAG_variable
	.long	.Linfo_string41                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	492                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.ABS_MASK
	.long	.Linfo_string74                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x59b:0x1b DW_TAG_variable
	.long	.Linfo_string43                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	493                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.IMPLICIT_BIT
	.long	.Linfo_string75                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x5b6:0x1b DW_TAG_variable
	.long	.Linfo_string45                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	494                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.SIGNIFICANT_MASK
	.long	.Linfo_string76                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x5d1:0x1b DW_TAG_variable
	.long	.Linfo_string47                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	495                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.EXPONENT_MASK
	.long	.Linfo_string77                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x5ec:0x1b DW_TAG_variable
	.long	.Linfo_string49                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	496                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.QUIET_BIT
	.long	.Linfo_string78                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x607:0x1b DW_TAG_variable
	.long	.Linfo_string51                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	497                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.QNAN_REP
	.long	.Linfo_string79                 # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x622:0x1b DW_TAG_variable
	.long	.Linfo_string53                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixdfti.INF_REP
	.long	.Linfo_string80                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x63d:0x1a DW_TAG_variable
	.long	.Linfo_string31                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	477                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.EXPONENT_BITS
	.long	.Linfo_string81                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x657:0x1a DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	102                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	478                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.SIGNIFICANT_BITS
	.long	.Linfo_string82                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x671:0x1a DW_TAG_variable
	.long	.Linfo_string34                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.MAX_EXPONENT
	.long	.Linfo_string83                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x68b:0x1a DW_TAG_variable
	.long	.Linfo_string36                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	489                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.EXPONENT_BIAS
	.long	.Linfo_string84                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x6a5:0x1a DW_TAG_variable
	.long	.Linfo_string38                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	490                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.ONE_REP
	.long	.Linfo_string85                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x6bf:0x1a DW_TAG_variable
	.long	.Linfo_string16                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	491                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.SIGN_BIT
	.long	.Linfo_string86                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x6d9:0x1a DW_TAG_variable
	.long	.Linfo_string41                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	492                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.ABS_MASK
	.long	.Linfo_string87                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x6f3:0x1a DW_TAG_variable
	.long	.Linfo_string43                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	493                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.IMPLICIT_BIT
	.long	.Linfo_string88                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x70d:0x1a DW_TAG_variable
	.long	.Linfo_string45                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	494                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.SIGNIFICANT_MASK
	.long	.Linfo_string89                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x727:0x1a DW_TAG_variable
	.long	.Linfo_string47                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	495                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.EXPONENT_MASK
	.long	.Linfo_string90                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x741:0x1a DW_TAG_variable
	.long	.Linfo_string49                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	496                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.QUIET_BIT
	.long	.Linfo_string91                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x75b:0x1a DW_TAG_variable
	.long	.Linfo_string51                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	497                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.QNAN_REP
	.long	.Linfo_string92                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x775:0x1a DW_TAG_variable
	.long	.Linfo_string53                 # DW_AT_name
	.long	187                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	498                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	__fixsfti.INF_REP
	.long	.Linfo_string93                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x78f:0x61 DW_TAG_subprogram
	.long	.Linfo_string94                 # DW_AT_linkage_name
	.long	.Linfo_string94                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x79b:0xc DW_TAG_variable
	.long	.Linfo_string95                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x7a7:0xc DW_TAG_variable
	.long	.Linfo_string102                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x7b3:0xc DW_TAG_variable
	.long	.Linfo_string103                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x7bf:0xc DW_TAG_variable
	.long	.Linfo_string104                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7cb:0xb DW_TAG_variable
	.long	.Linfo_string105                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7d6:0xb DW_TAG_variable
	.long	.Linfo_string106                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x7e1:0xe DW_TAG_lexical_block
	.byte	6                               # Abbrev [6] 0x7e2:0xc DW_TAG_variable
	.long	.Linfo_string107                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x7f0:0x44 DW_TAG_union_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	16                              # DW_AT_alignment
	.byte	10                              # Abbrev [10] 0x7f9:0x9 DW_TAG_member
	.long	2050                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	16                              # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x802:0x24 DW_TAG_structure_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	16                              # DW_AT_alignment
	.byte	12                              # Abbrev [12] 0x80b:0xd DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x818:0xd DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x826:0xd DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2100                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	16                              # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x834:0x7 DW_TAG_base_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x83b:0x7 DW_TAG_base_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	16                              # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x842:0x27 DW_TAG_subprogram
	.long	.Linfo_string109                # DW_AT_linkage_name
	.long	.Linfo_string109                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2100                            # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x852:0xb DW_TAG_formal_parameter
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x85d:0xb DW_TAG_formal_parameter
	.long	.Linfo_string102                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x869:0x103 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string123                # DW_AT_linkage_name
	.long	.Linfo_string123                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0x886:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200w"
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x895:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360v"
	.long	.Linfo_string148                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x8a4:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340v"
	.long	.Linfo_string149                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x8b4:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320v"
	.long	.Linfo_string150                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x8c4:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300v"
	.long	.Linfo_string151                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x8d4:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260v"
	.long	.Linfo_string152                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8e4:0x87 DW_TAG_inlined_subroutine
	.long	2114                            # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp49-.Ltmp1                  # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	10                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x8f8:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	2130                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x900:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	2141                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0x908:0x62 DW_TAG_inlined_subroutine
	.long	1935                            # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp49-.Ltmp1                  # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	192                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x91c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	1947                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x925:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	1959                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x92e:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	1971                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x937:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360~"
	.long	1983                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x940:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\354~"
	.long	1995                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x949:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\254w"
	.long	2006                            # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x952:0x17 DW_TAG_lexical_block
	.quad	.Ltmp31                         # DW_AT_low_pc
	.long	.Ltmp32-.Ltmp31                 # DW_AT_high_pc
	.byte	20                              # Abbrev [20] 0x95f:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220w"
	.long	2018                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x96c:0x61 DW_TAG_subprogram
	.long	.Linfo_string94                 # DW_AT_linkage_name
	.long	.Linfo_string94                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x978:0xc DW_TAG_variable
	.long	.Linfo_string95                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x984:0xc DW_TAG_variable
	.long	.Linfo_string102                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x990:0xc DW_TAG_variable
	.long	.Linfo_string103                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x99c:0xc DW_TAG_variable
	.long	.Linfo_string104                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9a8:0xb DW_TAG_variable
	.long	.Linfo_string105                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x9b3:0xb DW_TAG_variable
	.long	.Linfo_string106                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x9be:0xe DW_TAG_lexical_block
	.byte	6                               # Abbrev [6] 0x9bf:0xc DW_TAG_variable
	.long	.Linfo_string107                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x9cd:0x9c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string124                # DW_AT_linkage_name
	.long	.Linfo_string124                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2100                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0x9ea:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x9f8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string102                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa06:0x62 DW_TAG_inlined_subroutine
	.long	2412                            # DW_AT_abstract_origin
	.quad	.Ltmp51                         # DW_AT_low_pc
	.long	.Ltmp94-.Ltmp51                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	187                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xa1a:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	2424                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xa23:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	2436                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xa2c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	2448                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xa35:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360~"
	.long	2460                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xa3e:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\354~"
	.long	2472                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xa47:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\354x"
	.long	2483                            # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xa50:0x17 DW_TAG_lexical_block
	.quad	.Ltmp81                         # DW_AT_low_pc
	.long	.Ltmp82-.Ltmp81                 # DW_AT_high_pc
	.byte	20                              # Abbrev [20] 0xa5d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320x"
	.long	2495                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0xa69:0x86 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	2114                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0xa7c:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	2130                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0xa84:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	2141                            # DW_AT_abstract_origin
	.byte	18                              # Abbrev [18] 0xa8c:0x62 DW_TAG_inlined_subroutine
	.long	1935                            # DW_AT_abstract_origin
	.quad	.Ltmp95                         # DW_AT_low_pc
	.long	.Ltmp142-.Ltmp95                # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	192                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xaa0:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	1947                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xaa9:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	1959                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xab2:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	1971                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xabb:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360~"
	.long	1983                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xac4:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\354~"
	.long	1995                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xacd:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\254w"
	.long	2006                            # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0xad6:0x17 DW_TAG_lexical_block
	.quad	.Ltmp125                        # DW_AT_low_pc
	.long	.Ltmp126-.Ltmp125               # DW_AT_high_pc
	.byte	20                              # Abbrev [20] 0xae3:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220w"
	.long	2018                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xaef:0x68 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string125                # DW_AT_linkage_name
	.long	.Linfo_string125                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0xb0c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0xb1a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string148                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xb28:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string111                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xb37:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string152                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0xb46:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string151                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xb57:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string126                # DW_AT_linkage_name
	.long	.Linfo_string126                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2100                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0xb74:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0xb82:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string148                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0xb90:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string153                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xba0:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string127                # DW_AT_linkage_name
	.long	.Linfo_string127                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0xbbd:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0xbcb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string148                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0xbd9:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string153                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xbe9:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string128                # DW_AT_linkage_name
	.long	.Linfo_string128                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0xc06:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0xc14:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string148                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0xc22:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string153                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xc32:0x5d DW_TAG_subprogram
	.quad	.Lfunc_begin7                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string129                # DW_AT_linkage_name
	.long	.Linfo_string130                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xc50:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0xc5f:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string148                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	25                              # Abbrev [25] 0xc6e:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string104                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	273                             # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xc7e:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string154                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	276                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0xc8f:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin8                   # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string131                # DW_AT_linkage_name
	.long	.Linfo_string131                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0xcad:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xcbc:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string148                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xccb:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string155                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	292                             # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xcdb:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string156                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	293                             # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0xceb:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string104                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	2032                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xcfd:0x33 DW_TAG_subprogram
	.long	.Linfo_string110                # DW_AT_linkage_name
	.long	.Linfo_string110                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	28                              # Abbrev [28] 0xd0a:0xd DW_TAG_variable
	.long	.Linfo_string111                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xd17:0xc DW_TAG_variable
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xd23:0xc DW_TAG_variable
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xd30:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0xd3d:0x6b DW_TAG_subprogram
	.quad	.Lfunc_begin9                   # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string132                # DW_AT_linkage_name
	.long	.Linfo_string132                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	299                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	5058                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0xd5b:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	299                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xd6a:0x3d DW_TAG_inlined_subroutine
	.long	3325                            # DW_AT_abstract_origin
	.quad	.Ltmp173                        # DW_AT_low_pc
	.long	.Ltmp187-.Ltmp173               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	299                             # DW_AT_call_line
	.byte	73                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xd7f:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	3338                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xd87:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\274\177"
	.long	3351                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xd90:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	3363                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xd99:0xd DW_TAG_inlined_subroutine
	.long	3376                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	365                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xda8:0x33 DW_TAG_subprogram
	.long	.Linfo_string110                # DW_AT_linkage_name
	.long	.Linfo_string110                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	28                              # Abbrev [28] 0xdb5:0xd DW_TAG_variable
	.long	.Linfo_string111                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	336                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xdc2:0xc DW_TAG_variable
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xdce:0xc DW_TAG_variable
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xddb:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0xde8:0x6b DW_TAG_subprogram
	.quad	.Lfunc_begin10                  # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string134                # DW_AT_linkage_name
	.long	.Linfo_string134                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	5065                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0xe06:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.long	2107                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xe15:0x3d DW_TAG_inlined_subroutine
	.long	3496                            # DW_AT_abstract_origin
	.quad	.Ltmp188                        # DW_AT_low_pc
	.long	.Ltmp202-.Ltmp188               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	300                             # DW_AT_call_line
	.byte	74                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xe2a:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	3509                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xe32:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\274\177"
	.long	3522                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xe3b:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	3534                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xe44:0xd DW_TAG_inlined_subroutine
	.long	3547                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	365                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xe53:0x26 DW_TAG_subprogram
	.long	.Linfo_string115                # DW_AT_linkage_name
	.long	.Linfo_string115                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	29                              # Abbrev [29] 0xe60:0xc DW_TAG_variable
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xe6c:0xc DW_TAG_variable
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xe79:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0xe86:0x61 DW_TAG_subprogram
	.quad	.Lfunc_begin11                  # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string136                # DW_AT_linkage_name
	.long	.Linfo_string136                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	5058                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0xea4:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	301                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xeb3:0x33 DW_TAG_inlined_subroutine
	.long	3667                            # DW_AT_abstract_origin
	.quad	.Ltmp203                        # DW_AT_low_pc
	.long	.Ltmp217-.Ltmp203               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	301                             # DW_AT_call_line
	.byte	78                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xec8:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	3680                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xed0:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	84
	.long	3692                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xed8:0xd DW_TAG_inlined_subroutine
	.long	3705                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	419                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0xee7:0x26 DW_TAG_subprogram
	.long	.Linfo_string115                # DW_AT_linkage_name
	.long	.Linfo_string115                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	29                              # Abbrev [29] 0xef4:0xc DW_TAG_variable
	.long	.Linfo_string112                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	392                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xf00:0xc DW_TAG_variable
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xf0d:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0xf1a:0x61 DW_TAG_subprogram
	.quad	.Lfunc_begin12                  # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string137                # DW_AT_linkage_name
	.long	.Linfo_string137                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	5065                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0xf38:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.long	2100                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0xf47:0x33 DW_TAG_inlined_subroutine
	.long	3815                            # DW_AT_abstract_origin
	.quad	.Ltmp218                        # DW_AT_low_pc
	.long	.Ltmp232-.Ltmp218               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	302                             # DW_AT_call_line
	.byte	79                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0xf5c:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	84
	.long	3828                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0xf64:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	3840                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xf6c:0xd DW_TAG_inlined_subroutine
	.long	3853                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	419                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0xf7b:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0xf88:0x4d DW_TAG_subprogram
	.long	.Linfo_string116                # DW_AT_linkage_name
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	28                              # Abbrev [28] 0xf95:0xd DW_TAG_variable
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	28                              # Abbrev [28] 0xfa2:0xd DW_TAG_variable
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	457                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	29                              # Abbrev [29] 0xfaf:0xc DW_TAG_variable
	.long	.Linfo_string111                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xfbb:0xc DW_TAG_variable
	.long	.Linfo_string119                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xfc7:0xd DW_TAG_variable
	.long	.Linfo_string120                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0xfd5:0x7d DW_TAG_subprogram
	.quad	.Lfunc_begin13                  # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string138                # DW_AT_linkage_name
	.long	.Linfo_string138                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2100                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0xff3:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	303                             # DW_AT_decl_line
	.long	5065                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1002:0x4f DW_TAG_inlined_subroutine
	.long	3976                            # DW_AT_abstract_origin
	.quad	.Ltmp233                        # DW_AT_low_pc
	.long	.Ltmp237-.Ltmp233               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	303                             # DW_AT_call_line
	.byte	77                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x1017:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	3989                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x101f:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210\177"
	.long	4002                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x1028:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\204\177"
	.long	4015                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x1031:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	4027                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x103a:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	4039                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x1043:0xd DW_TAG_inlined_subroutine
	.long	3963                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	456                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x1052:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x105f:0x4a DW_TAG_subprogram
	.long	.Linfo_string116                # DW_AT_linkage_name
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	29                              # Abbrev [29] 0x106c:0xc DW_TAG_variable
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1078:0xc DW_TAG_variable
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	457                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1084:0xc DW_TAG_variable
	.long	.Linfo_string111                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	458                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1090:0xc DW_TAG_variable
	.long	.Linfo_string119                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	459                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x109c:0xc DW_TAG_variable
	.long	.Linfo_string120                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	460                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x10a9:0x7d DW_TAG_subprogram
	.quad	.Lfunc_begin14                  # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string139                # DW_AT_linkage_name
	.long	.Linfo_string139                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2100                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x10c7:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.long	5058                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x10d6:0x4f DW_TAG_inlined_subroutine
	.long	4191                            # DW_AT_abstract_origin
	.quad	.Ltmp238                        # DW_AT_low_pc
	.long	.Ltmp242-.Ltmp238               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	76                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x10eb:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	4204                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x10f3:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\214\177"
	.long	4216                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x10fc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210\177"
	.long	4228                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x1105:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\204\177"
	.long	4240                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x110e:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	4252                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x1117:0xd DW_TAG_inlined_subroutine
	.long	4178                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	456                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x1126:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x1133:0x4d DW_TAG_subprogram
	.long	.Linfo_string121                # DW_AT_linkage_name
	.long	.Linfo_string121                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	467                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	28                              # Abbrev [28] 0x1140:0xd DW_TAG_variable
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	500                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	28                              # Abbrev [28] 0x114d:0xd DW_TAG_variable
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	501                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	29                              # Abbrev [29] 0x115a:0xc DW_TAG_variable
	.long	.Linfo_string111                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1166:0xc DW_TAG_variable
	.long	.Linfo_string119                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x1172:0xd DW_TAG_variable
	.long	.Linfo_string120                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	504                             # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x1180:0x7d DW_TAG_subprogram
	.quad	.Lfunc_begin15                  # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string140                # DW_AT_linkage_name
	.long	.Linfo_string140                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x119e:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.long	5065                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x11ad:0x4f DW_TAG_inlined_subroutine
	.long	4403                            # DW_AT_abstract_origin
	.quad	.Ltmp243                        # DW_AT_low_pc
	.long	.Ltmp247-.Ltmp243               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	305                             # DW_AT_call_line
	.byte	70                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x11c2:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	4416                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x11ca:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210\177"
	.long	4429                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x11d3:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\204\177"
	.long	4442                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x11dc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	4454                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x11e5:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	4466                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x11ee:0xd DW_TAG_inlined_subroutine
	.long	4390                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	500                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x11fd:0xd DW_TAG_subprogram
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x120a:0x4a DW_TAG_subprogram
	.long	.Linfo_string121                # DW_AT_linkage_name
	.long	.Linfo_string121                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	467                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	29                              # Abbrev [29] 0x1217:0xc DW_TAG_variable
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	500                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1223:0xc DW_TAG_variable
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	501                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x122f:0xc DW_TAG_variable
	.long	.Linfo_string111                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x123b:0xc DW_TAG_variable
	.long	.Linfo_string119                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	503                             # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1247:0xc DW_TAG_variable
	.long	.Linfo_string120                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	504                             # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x1254:0x7d DW_TAG_subprogram
	.quad	.Lfunc_begin16                  # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string141                # DW_AT_linkage_name
	.long	.Linfo_string141                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2107                            # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x1272:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string147                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.long	5058                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1281:0x4f DW_TAG_inlined_subroutine
	.long	4618                            # DW_AT_abstract_origin
	.quad	.Ltmp248                        # DW_AT_low_pc
	.long	.Ltmp252-.Ltmp248               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	306                             # DW_AT_call_line
	.byte	69                              # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x1296:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	4631                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x129e:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\214\177"
	.long	4643                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x12a7:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210\177"
	.long	4655                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x12b0:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\204\177"
	.long	4667                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x12b9:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	4679                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x12c2:0xd DW_TAG_inlined_subroutine
	.long	4605                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	500                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x12d1:0xd DW_TAG_subprogram
	.long	.Linfo_string122                # DW_AT_linkage_name
	.long	.Linfo_string122                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	463                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x12de:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin17                  # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string142                # DW_AT_linkage_name
	.long	.Linfo_string143                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	5058                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0x12fb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string157                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.long	5058                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1309:0x14 DW_TAG_inlined_subroutine
	.long	4817                            # DW_AT_abstract_origin
	.quad	.Ltmp254                        # DW_AT_low_pc
	.long	.Ltmp255-.Ltmp254               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	6                               # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x131e:0xd DW_TAG_subprogram
	.long	.Linfo_string122                # DW_AT_linkage_name
	.long	.Linfo_string122                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	463                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x132b:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin18                  # DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string144                # DW_AT_linkage_name
	.long	.Linfo_string145                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	5065                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0x1348:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string102                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	5065                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1356:0x14 DW_TAG_inlined_subroutine
	.long	4894                            # DW_AT_abstract_origin
	.quad	.Ltmp258                        # DW_AT_low_pc
	.long	.Ltmp259-.Ltmp258               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	12                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x136b:0x57 DW_TAG_subprogram
	.quad	.Lfunc_begin19                  # DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string146                # DW_AT_linkage_name
	.long	.Linfo_string146                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	5065                            # DW_AT_type
                                        # DW_AT_external
	.byte	16                              # Abbrev [16] 0x1388:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string147                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	5065                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1396:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string148                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	102                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x13a4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	115
	.long	.Linfo_string158                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	5072                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x13b2:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string104                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	5065                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x13c2:0x7 DW_TAG_base_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x13c9:0x7 DW_TAG_base_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x13d0:0x7 DW_TAG_base_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp181
	.quad	.Ltmp182
	.quad	.Ltmp186
	.quad	.Ltmp187
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp196
	.quad	.Ltmp197
	.quad	.Ltmp201
	.quad	.Ltmp202
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp211
	.quad	.Ltmp212
	.quad	.Ltmp216
	.quad	.Ltmp217
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp226
	.quad	.Ltmp227
	.quad	.Ltmp231
	.quad	.Ltmp232
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp233
	.quad	.Ltmp234
	.quad	.Ltmp235
	.quad	.Ltmp236
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp238
	.quad	.Ltmp239
	.quad	.Ltmp240
	.quad	.Ltmp241
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp243
	.quad	.Ltmp244
	.quad	.Ltmp245
	.quad	.Ltmp246
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp248
	.quad	.Ltmp249
	.quad	.Ltmp250
	.quad	.Ltmp251
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end3
	.quad	.Lfunc_begin4
	.quad	.Lfunc_end4
	.quad	.Lfunc_begin5
	.quad	.Lfunc_end5
	.quad	.Lfunc_begin6
	.quad	.Lfunc_end6
	.quad	.Lfunc_begin7
	.quad	.Lfunc_end7
	.quad	.Lfunc_begin8
	.quad	.Lfunc_end8
	.quad	.Lfunc_begin9
	.quad	.Lfunc_end9
	.quad	.Lfunc_begin10
	.quad	.Lfunc_end10
	.quad	.Lfunc_begin11
	.quad	.Lfunc_end11
	.quad	.Lfunc_begin12
	.quad	.Lfunc_end12
	.quad	.Lfunc_begin13
	.quad	.Lfunc_end13
	.quad	.Lfunc_begin14
	.quad	.Lfunc_end14
	.quad	.Lfunc_begin15
	.quad	.Lfunc_end15
	.quad	.Lfunc_begin16
	.quad	.Lfunc_end16
	.quad	.Lfunc_begin17
	.quad	.Lfunc_end17
	.quad	.Lfunc_begin18
	.quad	.Lfunc_end18
	.quad	.Lfunc_begin19
	.quad	.Lfunc_end19
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"i128.c3"                       # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math/runtime" # string offset=12
.Linfo_string3:
	.asciz	"LOWER_MASK"                    # string offset=90
.Linfo_string4:
	.asciz	"ulong"                         # string offset=101
.Linfo_string5:
	.asciz	"__mulddi3.LOWER_MASK"          # string offset=107
.Linfo_string6:
	.asciz	"MANT_DIG"                      # string offset=128
.Linfo_string7:
	.asciz	"int"                           # string offset=137
.Linfo_string8:
	.asciz	"__floattisf.MANT_DIG"          # string offset=141
.Linfo_string9:
	.asciz	"EXP_BIAS"                      # string offset=162
.Linfo_string10:
	.asciz	"__floattisf.EXP_BIAS"          # string offset=171
.Linfo_string11:
	.asciz	"SIGNIFICANT_BITS"              # string offset=192
.Linfo_string12:
	.asciz	"__floattisf.SIGNIFICANT_BITS"  # string offset=209
.Linfo_string13:
	.asciz	"MANTISSA_MASK"                 # string offset=238
.Linfo_string14:
	.asciz	"uint"                          # string offset=252
.Linfo_string15:
	.asciz	"__floattisf.MANTISSA_MASK"     # string offset=257
.Linfo_string16:
	.asciz	"SIGN_BIT"                      # string offset=283
.Linfo_string17:
	.asciz	"__floattisf.SIGN_BIT"          # string offset=292
.Linfo_string18:
	.asciz	"__floattidf.MANT_DIG"          # string offset=313
.Linfo_string19:
	.asciz	"__floattidf.SIGNIFICANT_BITS"  # string offset=334
.Linfo_string20:
	.asciz	"__floattidf.EXP_BIAS"          # string offset=363
.Linfo_string21:
	.asciz	"__floattidf.MANTISSA_MASK"     # string offset=384
.Linfo_string22:
	.asciz	"__floattidf.SIGN_BIT"          # string offset=410
.Linfo_string23:
	.asciz	"__floatuntisf.MANT_DIG"        # string offset=431
.Linfo_string24:
	.asciz	"__floatuntisf.EXP_BIAS"        # string offset=454
.Linfo_string25:
	.asciz	"__floatuntisf.SIGNIFICANT_BITS" # string offset=477
.Linfo_string26:
	.asciz	"__floatuntisf.MANTISSA_MASK"   # string offset=508
.Linfo_string27:
	.asciz	"__floatuntidf.MANT_DIG"        # string offset=536
.Linfo_string28:
	.asciz	"__floatuntidf.SIGNIFICANT_BITS" # string offset=559
.Linfo_string29:
	.asciz	"__floatuntidf.EXP_BIAS"        # string offset=590
.Linfo_string30:
	.asciz	"__floatuntidf.MANTISSA_MASK"   # string offset=613
.Linfo_string31:
	.asciz	"EXPONENT_BITS"                 # string offset=641
.Linfo_string32:
	.asciz	"__fixunsdfti.EXPONENT_BITS"    # string offset=655
.Linfo_string33:
	.asciz	"__fixunsdfti.SIGNIFICANT_BITS" # string offset=682
.Linfo_string34:
	.asciz	"MAX_EXPONENT"                  # string offset=712
.Linfo_string35:
	.asciz	"__fixunsdfti.MAX_EXPONENT"     # string offset=725
.Linfo_string36:
	.asciz	"EXPONENT_BIAS"                 # string offset=751
.Linfo_string37:
	.asciz	"__fixunsdfti.EXPONENT_BIAS"    # string offset=765
.Linfo_string38:
	.asciz	"ONE_REP"                       # string offset=792
.Linfo_string39:
	.asciz	"__fixunsdfti.ONE_REP"          # string offset=800
.Linfo_string40:
	.asciz	"__fixunsdfti.SIGN_BIT"         # string offset=821
.Linfo_string41:
	.asciz	"ABS_MASK"                      # string offset=843
.Linfo_string42:
	.asciz	"__fixunsdfti.ABS_MASK"         # string offset=852
.Linfo_string43:
	.asciz	"IMPLICIT_BIT"                  # string offset=874
.Linfo_string44:
	.asciz	"__fixunsdfti.IMPLICIT_BIT"     # string offset=887
.Linfo_string45:
	.asciz	"SIGNIFICANT_MASK"              # string offset=913
.Linfo_string46:
	.asciz	"__fixunsdfti.SIGNIFICANT_MASK" # string offset=930
.Linfo_string47:
	.asciz	"EXPONENT_MASK"                 # string offset=960
.Linfo_string48:
	.asciz	"__fixunsdfti.EXPONENT_MASK"    # string offset=974
.Linfo_string49:
	.asciz	"QUIET_BIT"                     # string offset=1001
.Linfo_string50:
	.asciz	"__fixunsdfti.QUIET_BIT"        # string offset=1011
.Linfo_string51:
	.asciz	"QNAN_REP"                      # string offset=1034
.Linfo_string52:
	.asciz	"__fixunsdfti.QNAN_REP"         # string offset=1043
.Linfo_string53:
	.asciz	"INF_REP"                       # string offset=1065
.Linfo_string54:
	.asciz	"__fixunsdfti.INF_REP"          # string offset=1073
.Linfo_string55:
	.asciz	"__fixunssfti.EXPONENT_BITS"    # string offset=1094
.Linfo_string56:
	.asciz	"__fixunssfti.SIGNIFICANT_BITS" # string offset=1121
.Linfo_string57:
	.asciz	"__fixunssfti.MAX_EXPONENT"     # string offset=1151
.Linfo_string58:
	.asciz	"__fixunssfti.EXPONENT_BIAS"    # string offset=1177
.Linfo_string59:
	.asciz	"__fixunssfti.ONE_REP"          # string offset=1204
.Linfo_string60:
	.asciz	"__fixunssfti.SIGN_BIT"         # string offset=1225
.Linfo_string61:
	.asciz	"__fixunssfti.ABS_MASK"         # string offset=1247
.Linfo_string62:
	.asciz	"__fixunssfti.IMPLICIT_BIT"     # string offset=1269
.Linfo_string63:
	.asciz	"__fixunssfti.SIGNIFICANT_MASK" # string offset=1295
.Linfo_string64:
	.asciz	"__fixunssfti.EXPONENT_MASK"    # string offset=1325
.Linfo_string65:
	.asciz	"__fixunssfti.QUIET_BIT"        # string offset=1352
.Linfo_string66:
	.asciz	"__fixunssfti.QNAN_REP"         # string offset=1375
.Linfo_string67:
	.asciz	"__fixunssfti.INF_REP"          # string offset=1397
.Linfo_string68:
	.asciz	"__fixdfti.EXPONENT_BITS"       # string offset=1418
.Linfo_string69:
	.asciz	"__fixdfti.SIGNIFICANT_BITS"    # string offset=1442
.Linfo_string70:
	.asciz	"__fixdfti.MAX_EXPONENT"        # string offset=1469
.Linfo_string71:
	.asciz	"__fixdfti.EXPONENT_BIAS"       # string offset=1492
.Linfo_string72:
	.asciz	"__fixdfti.ONE_REP"             # string offset=1516
.Linfo_string73:
	.asciz	"__fixdfti.SIGN_BIT"            # string offset=1534
.Linfo_string74:
	.asciz	"__fixdfti.ABS_MASK"            # string offset=1553
.Linfo_string75:
	.asciz	"__fixdfti.IMPLICIT_BIT"        # string offset=1572
.Linfo_string76:
	.asciz	"__fixdfti.SIGNIFICANT_MASK"    # string offset=1595
.Linfo_string77:
	.asciz	"__fixdfti.EXPONENT_MASK"       # string offset=1622
.Linfo_string78:
	.asciz	"__fixdfti.QUIET_BIT"           # string offset=1646
.Linfo_string79:
	.asciz	"__fixdfti.QNAN_REP"            # string offset=1666
.Linfo_string80:
	.asciz	"__fixdfti.INF_REP"             # string offset=1685
.Linfo_string81:
	.asciz	"__fixsfti.EXPONENT_BITS"       # string offset=1703
.Linfo_string82:
	.asciz	"__fixsfti.SIGNIFICANT_BITS"    # string offset=1727
.Linfo_string83:
	.asciz	"__fixsfti.MAX_EXPONENT"        # string offset=1754
.Linfo_string84:
	.asciz	"__fixsfti.EXPONENT_BIAS"       # string offset=1777
.Linfo_string85:
	.asciz	"__fixsfti.ONE_REP"             # string offset=1801
.Linfo_string86:
	.asciz	"__fixsfti.SIGN_BIT"            # string offset=1819
.Linfo_string87:
	.asciz	"__fixsfti.ABS_MASK"            # string offset=1838
.Linfo_string88:
	.asciz	"__fixsfti.IMPLICIT_BIT"        # string offset=1857
.Linfo_string89:
	.asciz	"__fixsfti.SIGNIFICANT_MASK"    # string offset=1880
.Linfo_string90:
	.asciz	"__fixsfti.EXPONENT_MASK"       # string offset=1907
.Linfo_string91:
	.asciz	"__fixsfti.QUIET_BIT"           # string offset=1931
.Linfo_string92:
	.asciz	"__fixsfti.QNAN_REP"            # string offset=1951
.Linfo_string93:
	.asciz	"__fixsfti.INF_REP"             # string offset=1970
.Linfo_string94:
	.asciz	"@__udivmodti4"                 # string offset=1988
.Linfo_string95:
	.asciz	"n"                             # string offset=2002
.Linfo_string96:
	.asciz	"low"                           # string offset=2004
.Linfo_string97:
	.asciz	"high"                          # string offset=2008
.Linfo_string98:
	.asciz	"$anon"                         # string offset=2013
.Linfo_string99:
	.asciz	"all"                           # string offset=2019
.Linfo_string100:
	.asciz	"uint128"                       # string offset=2023
.Linfo_string101:
	.asciz	"Int128bits"                    # string offset=2031
.Linfo_string102:
	.asciz	"d"                             # string offset=2042
.Linfo_string103:
	.asciz	"q"                             # string offset=2044
.Linfo_string104:
	.asciz	"r"                             # string offset=2046
.Linfo_string105:
	.asciz	"sr"                            # string offset=2048
.Linfo_string106:
	.asciz	"carry"                         # string offset=2051
.Linfo_string107:
	.asciz	"s"                             # string offset=2057
.Linfo_string108:
	.asciz	"int128"                        # string offset=2059
.Linfo_string109:
	.asciz	"__udivti3"                     # string offset=2066
.Linfo_string110:
	.asciz	"float_from_i128"               # string offset=2076
.Linfo_string111:
	.asciz	"sign"                          # string offset=2092
.Linfo_string112:
	.asciz	"sd"                            # string offset=2097
.Linfo_string113:
	.asciz	"e"                             # string offset=2100
.Linfo_string114:
	.asciz	"bitcast"                       # string offset=2102
.Linfo_string115:
	.asciz	"float_from_u128"               # string offset=2110
.Linfo_string116:
	.asciz	"fixuint"                       # string offset=2126
.Linfo_string117:
	.asciz	"rep"                           # string offset=2134
.Linfo_string118:
	.asciz	"abs"                           # string offset=2138
.Linfo_string119:
	.asciz	"exponent"                      # string offset=2142
.Linfo_string120:
	.asciz	"significand"                   # string offset=2151
.Linfo_string121:
	.asciz	"fixint"                        # string offset=2163
.Linfo_string122:
	.asciz	"round"                         # string offset=2170
.Linfo_string123:
	.asciz	"__divti3"                      # string offset=2176
.Linfo_string124:
	.asciz	"__umodti3"                     # string offset=2185
.Linfo_string125:
	.asciz	"__modti3"                      # string offset=2195
.Linfo_string126:
	.asciz	"__lshrti3"                     # string offset=2204
.Linfo_string127:
	.asciz	"__ashrti3"                     # string offset=2214
.Linfo_string128:
	.asciz	"__ashlti3"                     # string offset=2224
.Linfo_string129:
	.asciz	"std.math.math_rt.__mulddi3"    # string offset=2234
.Linfo_string130:
	.asciz	"__mulddi3"                     # string offset=2261
.Linfo_string131:
	.asciz	"__multi3"                      # string offset=2271
.Linfo_string132:
	.asciz	"__floattisf"                   # string offset=2280
.Linfo_string133:
	.asciz	"float"                         # string offset=2292
.Linfo_string134:
	.asciz	"__floattidf"                   # string offset=2298
.Linfo_string135:
	.asciz	"double"                        # string offset=2310
.Linfo_string136:
	.asciz	"__floatuntisf"                 # string offset=2317
.Linfo_string137:
	.asciz	"__floatuntidf"                 # string offset=2331
.Linfo_string138:
	.asciz	"__fixunsdfti"                  # string offset=2345
.Linfo_string139:
	.asciz	"__fixunssfti"                  # string offset=2358
.Linfo_string140:
	.asciz	"__fixdfti"                     # string offset=2371
.Linfo_string141:
	.asciz	"__fixsfti"                     # string offset=2381
.Linfo_string142:
	.asciz	"roundevenf"                    # string offset=2391
.Linfo_string143:
	.asciz	"__roundevenf"                  # string offset=2402
.Linfo_string144:
	.asciz	"roundeven"                     # string offset=2415
.Linfo_string145:
	.asciz	"__roundeven"                   # string offset=2425
.Linfo_string146:
	.asciz	"__powidf2"                     # string offset=2437
.Linfo_string147:
	.asciz	"a"                             # string offset=2447
.Linfo_string148:
	.asciz	"b"                             # string offset=2449
.Linfo_string149:
	.asciz	"sign_a"                        # string offset=2451
.Linfo_string150:
	.asciz	"sign_b"                        # string offset=2458
.Linfo_string151:
	.asciz	"unsigned_a"                    # string offset=2465
.Linfo_string152:
	.asciz	"unsigned_b"                    # string offset=2476
.Linfo_string153:
	.asciz	"result"                        # string offset=2487
.Linfo_string154:
	.asciz	"t"                             # string offset=2494
.Linfo_string155:
	.asciz	"x"                             # string offset=2496
.Linfo_string156:
	.asciz	"y"                             # string offset=2498
.Linfo_string157:
	.asciz	"f"                             # string offset=2500
.Linfo_string158:
	.asciz	"recip"                         # string offset=2502
.Linfo_string159:
	.asciz	"bool"                          # string offset=2508
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	5080                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"LOWER_MASK"                    # External Name
	.long	456                             # DIE offset
	.asciz	"MANT_DIG"                      # External Name
	.long	508                             # DIE offset
	.asciz	"EXP_BIAS"                      # External Name
	.long	534                             # DIE offset
	.asciz	"MANTISSA_MASK"                 # External Name
	.long	1597                            # DIE offset
	.asciz	"EXPONENT_BITS"                 # External Name
	.long	1623                            # DIE offset
	.asciz	"SIGNIFICANT_BITS"              # External Name
	.long	1649                            # DIE offset
	.asciz	"MAX_EXPONENT"                  # External Name
	.long	1675                            # DIE offset
	.asciz	"EXPONENT_BIAS"                 # External Name
	.long	1701                            # DIE offset
	.asciz	"ONE_REP"                       # External Name
	.long	1727                            # DIE offset
	.asciz	"SIGN_BIT"                      # External Name
	.long	1753                            # DIE offset
	.asciz	"ABS_MASK"                      # External Name
	.long	1779                            # DIE offset
	.asciz	"IMPLICIT_BIT"                  # External Name
	.long	1805                            # DIE offset
	.asciz	"SIGNIFICANT_MASK"              # External Name
	.long	1831                            # DIE offset
	.asciz	"EXPONENT_MASK"                 # External Name
	.long	1857                            # DIE offset
	.asciz	"QUIET_BIT"                     # External Name
	.long	1883                            # DIE offset
	.asciz	"QNAN_REP"                      # External Name
	.long	1909                            # DIE offset
	.asciz	"INF_REP"                       # External Name
	.long	2114                            # DIE offset
	.asciz	"__udivti3"                     # External Name
	.long	2153                            # DIE offset
	.asciz	"__divti3"                      # External Name
	.long	2412                            # DIE offset
	.asciz	"@__udivmodti4"                 # External Name
	.long	2509                            # DIE offset
	.asciz	"__umodti3"                     # External Name
	.long	2799                            # DIE offset
	.asciz	"__modti3"                      # External Name
	.long	2903                            # DIE offset
	.asciz	"__lshrti3"                     # External Name
	.long	2976                            # DIE offset
	.asciz	"__ashrti3"                     # External Name
	.long	3049                            # DIE offset
	.asciz	"__ashlti3"                     # External Name
	.long	3122                            # DIE offset
	.asciz	"__mulddi3"                     # External Name
	.long	3215                            # DIE offset
	.asciz	"__multi3"                      # External Name
	.long	3389                            # DIE offset
	.asciz	"__floattisf"                   # External Name
	.long	3496                            # DIE offset
	.asciz	"float_from_i128"               # External Name
	.long	3560                            # DIE offset
	.asciz	"__floattidf"                   # External Name
	.long	3718                            # DIE offset
	.asciz	"__floatuntisf"                 # External Name
	.long	3815                            # DIE offset
	.asciz	"float_from_u128"               # External Name
	.long	3866                            # DIE offset
	.asciz	"__floatuntidf"                 # External Name
	.long	4053                            # DIE offset
	.asciz	"__fixunsdfti"                  # External Name
	.long	4191                            # DIE offset
	.asciz	"fixuint"                       # External Name
	.long	4265                            # DIE offset
	.asciz	"__fixunssfti"                  # External Name
	.long	4480                            # DIE offset
	.asciz	"__fixdfti"                     # External Name
	.long	4605                            # DIE offset
	.asciz	"bitcast"                       # External Name
	.long	4618                            # DIE offset
	.asciz	"fixint"                        # External Name
	.long	4692                            # DIE offset
	.asciz	"__fixsfti"                     # External Name
	.long	4830                            # DIE offset
	.asciz	"__roundevenf"                  # External Name
	.long	4894                            # DIE offset
	.asciz	"round"                         # External Name
	.long	4907                            # DIE offset
	.asciz	"__roundeven"                   # External Name
	.long	4971                            # DIE offset
	.asciz	"__powidf2"                     # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	5080                            # Compilation Unit Length
	.long	69                              # DIE offset
	.asciz	"ulong"                         # External Name
	.long	102                             # DIE offset
	.asciz	"int"                           # External Name
	.long	187                             # DIE offset
	.asciz	"uint"                          # External Name
	.long	2032                            # DIE offset
	.asciz	"Int128bits"                    # External Name
	.long	2100                            # DIE offset
	.asciz	"uint128"                       # External Name
	.long	2107                            # DIE offset
	.asciz	"int128"                        # External Name
	.long	5058                            # DIE offset
	.asciz	"float"                         # External Name
	.long	5065                            # DIE offset
	.asciz	"double"                        # External Name
	.long	5072                            # DIE offset
	.asciz	"bool"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

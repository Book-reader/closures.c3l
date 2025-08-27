	.text
	.file	"std::io::os"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/io/os" "file_libc.c3"
	.section	.text.std.io.os.native_fopen,"axG",@progbits,std.io.os.native_fopen,comdat
	.weak	std.io.os.native_fopen          # -- Begin function std.io.os.native_fopen
	.p2align	4, 0x90
	.type	std.io.os.native_fopen,@function
std.io.os.native_fopen:                 # @std.io.os.native_fopen
.Lfunc_begin0:
	.loc	1 8 0                           # file_libc.c3:8:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -88(%rbp)                 # 8-byte Spill
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -24(%rbp)
.Ltmp0:
	.loc	1 5 11 prologue_end             # file_libc.c3:5:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-24(%rbp), %rax
	jb	.LBB0_2
# %bb.1:
	leaq	.panic_msg(%rip), %rdi
	movl	$33, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %r9d
	leaq	.func(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$5, (%rsp)
	callq	*(%rax)
.LBB0_2:
	.loc	1 6 11                          # file_libc.c3:6:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-8(%rbp), %rax
	jb	.LBB0_4
# %bb.3:
	leaq	.panic_msg.1(%rip), %rdi
	movl	$37, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %r9d
	leaq	.func(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$6, (%rsp)
	callq	*(%rax)
.Ltmp1:
.LBB0_4:
	.loc	1 0 11 is_stmt 0                # file_libc.c3:0:11
	movq	$0, -40(%rbp)
.Ltmp2:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	2 641 41 is_stmt 1              # mem.c3:641:41
	movq	-40(%rbp), %rdi
	.loc	2 641 20 is_stmt 0              # mem.c3:641:20
	callq	std.core.mem.allocator.push_pool@PLT
	movq	%rax, -48(%rbp)
.Ltmp3:
	.loc	1 13 28 is_stmt 1               # file_libc.c3:13:28
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	std.core.String.zstr_tcopy@PLT
	movq	%rax, -104(%rbp)                # 8-byte Spill
	.loc	1 13 51 is_stmt 0               # file_libc.c3:13:51
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	std.core.String.zstr_tcopy@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	.loc	1 13 16                         # file_libc.c3:13:16
	callq	fopen@PLT
	movq	%rax, -56(%rbp)
	.loc	1 15 10 is_stmt 1               # file_libc.c3:15:10
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	jmp	.LBB0_30
.LBB0_6:
.Ltmp4:
	.loc	1 81 10                         # file_libc.c3:81:10
	callq	libc.errno@PLT
	movl	%eax, -76(%rbp)
# %bb.7:
	.loc	1 0 10 is_stmt 0                # file_libc.c3:0:10
	movl	-76(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	subl	$120, %eax
	ja	.LBB0_28
# %bb.32:
	movq	-112(%rbp), %rax                # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_8:
.Ltmp5:
	.loc	1 83 30 is_stmt 1               # file_libc.c3:83:30
	movq	std.io.NO_PERMISSION@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp6:
.LBB0_9:
	.loc	1 84 30                         # file_libc.c3:84:30
	movq	std.io.OUT_OF_SPACE@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp7:
.LBB0_10:
	.loc	1 85 29                         # file_libc.c3:85:29
	movq	std.io.FILE_NOT_VALID@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp8:
.LBB0_11:
	.loc	1 86 30                         # file_libc.c3:86:30
	movq	std.io.ALREADY_EXISTS@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp9:
.LBB0_12:
	.loc	1 87 29                         # file_libc.c3:87:29
	movq	std.io.INTERRUPTED@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp10:
.LBB0_13:
	.loc	1 88 30                         # file_libc.c3:88:30
	movq	std.io.GENERAL_ERROR@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp11:
.LBB0_14:
	.loc	1 89 30                         # file_libc.c3:89:30
	movq	std.io.FILE_IS_DIR@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp12:
.LBB0_15:
	.loc	1 90 29                         # file_libc.c3:90:29
	movq	std.io.SYMLINK_FAILED@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp13:
.LBB0_16:
	.loc	1 91 30                         # file_libc.c3:91:30
	movq	std.io.TOO_MANY_DESCRIPTORS@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp14:
.LBB0_17:
	.loc	1 92 36                         # file_libc.c3:92:36
	movq	std.io.NAME_TOO_LONG@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp15:
.LBB0_18:
	.loc	1 93 30                         # file_libc.c3:93:30
	movq	std.io.OUT_OF_SPACE@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp16:
.LBB0_19:
	.loc	1 94 31                         # file_libc.c3:94:31
	movq	std.io.FILE_NOT_DIR@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp17:
.LBB0_20:
	.loc	1 95 30                         # file_libc.c3:95:30
	movq	std.io.FILE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp18:
.LBB0_21:
	.loc	1 96 30                         # file_libc.c3:96:30
	movq	std.io.OUT_OF_SPACE@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp19:
.LBB0_22:
	.loc	1 97 29                         # file_libc.c3:97:29
	movq	std.io.FILE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp20:
.LBB0_23:
	.loc	1 98 33                         # file_libc.c3:98:33
	movq	std.io.OVERFLOW@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp21:
.LBB0_24:
	.loc	1 99 29                         # file_libc.c3:99:29
	movq	std.io.READ_ONLY@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp22:
.LBB0_25:
	.loc	1 100 34                        # file_libc.c3:100:34
	movq	std.io.UNSUPPORTED_OPERATION@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp23:
.LBB0_26:
	.loc	1 101 27                        # file_libc.c3:101:27
	movq	std.io.INCOMPLETE_WRITE@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp24:
.LBB0_27:
	.loc	1 102 35                        # file_libc.c3:102:35
	movq	std.io.WOULD_BLOCK@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_29
.Ltmp25:
.LBB0_28:
	.loc	1 103 19                        # file_libc.c3:103:19
	movq	std.io.UNKNOWN_ERROR@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
.LBB0_29:
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_31
.Ltmp26:
.LBB0_30:
	.loc	2 644 23                        # mem.c3:644:23
	movq	-48(%rbp), %rdi
	.loc	2 644 3 is_stmt 0               # mem.c3:644:3
	callq	std.core.mem.allocator.pop_pool@PLT
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	2 644 3 epilogue_begin          # mem.c3:644:3
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp27:
.LBB0_31:
	.cfi_def_cfa %rbp, 16
	.loc	2 644 23                        # mem.c3:644:23
	movq	-48(%rbp), %rdi
	.loc	2 644 3                         # mem.c3:644:3
	callq	std.core.mem.allocator.pop_pool@PLT
	movq	-64(%rbp), %rax
	.loc	2 644 3 epilogue_begin          # mem.c3:644:3
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp28:
.Lfunc_end0:
	.size	std.io.os.native_fopen, .Lfunc_end0-std.io.os.native_fopen
	.cfi_endproc
	.section	.rodata.std.io.os.native_fopen,"aG",@progbits,std.io.os.native_fopen,comdat
	.p2align	2, 0x0
.LJTI0_0:
	.long	.LBB0_20-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_26-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_27-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_19-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_18-.LJTI0_0
	.long	.LBB0_16-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_21-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_24-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_17-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_23-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_25-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_28-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
                                        # -- End function
	.section	.text.std.io.os.native_fseek,"axG",@progbits,std.io.os.native_fseek,comdat
	.weak	std.io.os.native_fseek          # -- Begin function std.io.os.native_fseek
	.p2align	4, 0x90
	.type	std.io.os.native_fseek,@function
std.io.os.native_fseek:                 # @std.io.os.native_fseek
.Lfunc_begin1:
	.loc	1 52 0 is_stmt 1                # file_libc.c3:52:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp29:
	.loc	1 54 43 prologue_end            # file_libc.c3:54:43
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	.loc	1 54 6 is_stmt 0                # file_libc.c3:54:6
	callq	fseek@PLT
	cmpl	$0, %eax
	je	.LBB1_16
# %bb.1:
.Ltmp30:
	.loc	1 109 10 is_stmt 1              # file_libc.c3:109:10
	callq	libc.errno@PLT
	movl	%eax, -36(%rbp)
# %bb.2:
	.loc	1 0 10 is_stmt 0                # file_libc.c3:0:10
	movl	-36(%rbp), %eax
	addl	$-4, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	subl	$71, %eax
	ja	.LBB1_14
# %bb.17:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI1_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB1_3:
.Ltmp31:
	.loc	1 111 30 is_stmt 1              # file_libc.c3:111:30
	movq	std.io.FILE_IS_PIPE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp32:
.LBB1_4:
	.loc	1 112 29                        # file_libc.c3:112:29
	movq	std.io.FILE_IS_PIPE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp33:
.LBB1_5:
	.loc	1 113 33                        # file_libc.c3:113:33
	movq	std.io.OVERFLOW@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp34:
.LBB1_6:
	.loc	1 114 29                        # file_libc.c3:114:29
	movq	std.io.FILE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp35:
.LBB1_7:
	.loc	1 115 30                        # file_libc.c3:115:30
	movq	std.io.OUT_OF_SPACE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp36:
.LBB1_8:
	.loc	1 116 27                        # file_libc.c3:116:27
	movq	std.io.INCOMPLETE_WRITE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp37:
.LBB1_9:
	.loc	1 117 30                        # file_libc.c3:117:30
	movq	std.io.INVALID_POSITION@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp38:
.LBB1_10:
	.loc	1 118 29                        # file_libc.c3:118:29
	movq	std.io.INTERRUPTED@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp39:
.LBB1_11:
	.loc	1 119 29                        # file_libc.c3:119:29
	movq	std.io.OUT_OF_SPACE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp40:
.LBB1_12:
	.loc	1 120 29                        # file_libc.c3:120:29
	movq	std.io.FILE_NOT_VALID@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp41:
.LBB1_13:
	.loc	1 121 30                        # file_libc.c3:121:30
	movq	std.io.WOULD_BLOCK@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_15
.Ltmp42:
.LBB1_14:
	.loc	1 122 19                        # file_libc.c3:122:19
	movq	std.io.UNKNOWN_ERROR@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
.LBB1_15:
	movq	-32(%rbp), %rax
	.loc	1 122 19 epilogue_begin is_stmt 0 # file_libc.c3:122:19
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_16:
	.cfi_def_cfa %rbp, 16
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 122 19 epilogue_begin         # file_libc.c3:122:19
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp43:
.Lfunc_end1:
	.size	std.io.os.native_fseek, .Lfunc_end1-std.io.os.native_fseek
	.cfi_endproc
	.section	.rodata.std.io.os.native_fseek,"aG",@progbits,std.io.os.native_fseek,comdat
	.p2align	2, 0x0
.LJTI1_0:
	.long	.LBB1_10-.LJTI1_0
	.long	.LBB1_8-.LJTI1_0
	.long	.LBB1_6-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_12-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_13-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_9-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_11-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_3-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_4-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_14-.LJTI1_0
	.long	.LBB1_5-.LJTI1_0
                                        # -- End function
	.section	.text.std.io.os.native_ftell,"axG",@progbits,std.io.os.native_ftell,comdat
	.weak	std.io.os.native_ftell          # -- Begin function std.io.os.native_ftell
	.p2align	4, 0x90
	.type	std.io.os.native_ftell,@function
std.io.os.native_ftell:                 # @std.io.os.native_ftell
.Lfunc_begin2:
	.loc	1 58 0 is_stmt 1                # file_libc.c3:58:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
.Ltmp44:
	.loc	1 60 27 prologue_end            # file_libc.c3:60:27
	movq	-8(%rbp), %rdi
	.loc	1 60 15 is_stmt 0               # file_libc.c3:60:15
	callq	ftell@PLT
	movq	%rax, -16(%rbp)
	.loc	1 61 9 is_stmt 1                # file_libc.c3:61:9
	cmpq	$0, -16(%rbp)
	jl	.LBB2_2
# %bb.1:
	.loc	1 61 22 is_stmt 0               # file_libc.c3:61:22
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB2_17
.LBB2_2:
.Ltmp45:
	.loc	1 109 10 is_stmt 1              # file_libc.c3:109:10
	callq	libc.errno@PLT
	movl	%eax, -36(%rbp)
# %bb.3:
	.loc	1 0 10 is_stmt 0                # file_libc.c3:0:10
	movl	-36(%rbp), %eax
	addl	$-4, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	subl	$71, %eax
	ja	.LBB2_15
# %bb.19:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI2_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB2_4:
.Ltmp46:
	.loc	1 111 30 is_stmt 1              # file_libc.c3:111:30
	movq	std.io.FILE_IS_PIPE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp47:
.LBB2_5:
	.loc	1 112 29                        # file_libc.c3:112:29
	movq	std.io.FILE_IS_PIPE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp48:
.LBB2_6:
	.loc	1 113 33                        # file_libc.c3:113:33
	movq	std.io.OVERFLOW@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp49:
.LBB2_7:
	.loc	1 114 29                        # file_libc.c3:114:29
	movq	std.io.FILE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp50:
.LBB2_8:
	.loc	1 115 30                        # file_libc.c3:115:30
	movq	std.io.OUT_OF_SPACE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp51:
.LBB2_9:
	.loc	1 116 27                        # file_libc.c3:116:27
	movq	std.io.INCOMPLETE_WRITE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp52:
.LBB2_10:
	.loc	1 117 30                        # file_libc.c3:117:30
	movq	std.io.INVALID_POSITION@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp53:
.LBB2_11:
	.loc	1 118 29                        # file_libc.c3:118:29
	movq	std.io.INTERRUPTED@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp54:
.LBB2_12:
	.loc	1 119 29                        # file_libc.c3:119:29
	movq	std.io.OUT_OF_SPACE@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp55:
.LBB2_13:
	.loc	1 120 29                        # file_libc.c3:120:29
	movq	std.io.FILE_NOT_VALID@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp56:
.LBB2_14:
	.loc	1 121 30                        # file_libc.c3:121:30
	movq	std.io.WOULD_BLOCK@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_16
.Ltmp57:
.LBB2_15:
	.loc	1 122 19                        # file_libc.c3:122:19
	movq	std.io.UNKNOWN_ERROR@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
.LBB2_16:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_18
.LBB2_17:
	.loc	1 0 19 is_stmt 0                # file_libc.c3:0:19
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	.loc	1 122 19                        # file_libc.c3:122:19
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 122 19 epilogue_begin         # file_libc.c3:122:19
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_18:
	.cfi_def_cfa %rbp, 16
	movq	-24(%rbp), %rax
	.loc	1 122 19 epilogue_begin         # file_libc.c3:122:19
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp58:
.Lfunc_end2:
	.size	std.io.os.native_ftell, .Lfunc_end2-std.io.os.native_ftell
	.cfi_endproc
	.section	.rodata.std.io.os.native_ftell,"aG",@progbits,std.io.os.native_ftell,comdat
	.p2align	2, 0x0
.LJTI2_0:
	.long	.LBB2_11-.LJTI2_0
	.long	.LBB2_9-.LJTI2_0
	.long	.LBB2_7-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_13-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_14-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_10-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_12-.LJTI2_0
	.long	.LBB2_8-.LJTI2_0
	.long	.LBB2_4-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_5-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_15-.LJTI2_0
	.long	.LBB2_6-.LJTI2_0
                                        # -- End function
	.section	.text.std.io.os.native_fwrite,"axG",@progbits,std.io.os.native_fwrite,comdat
	.weak	std.io.os.native_fwrite         # -- Begin function std.io.os.native_fwrite
	.p2align	4, 0x90
	.type	std.io.os.native_fwrite,@function
std.io.os.native_fwrite:                # @std.io.os.native_fwrite
.Lfunc_begin3:
	.loc	1 64 0 is_stmt 1                # file_libc.c3:64:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
.Ltmp59:
	.loc	1 66 22 prologue_end            # file_libc.c3:66:22
	movq	-24(%rbp), %rdi
	.loc	1 66 49 is_stmt 0               # file_libc.c3:66:49
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	.loc	1 66 9                          # file_libc.c3:66:9
	movl	$1, %esi
	callq	fwrite@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, (%rdi)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 66 9 epilogue_begin           # file_libc.c3:66:9
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp60:
.Lfunc_end3:
	.size	std.io.os.native_fwrite, .Lfunc_end3-std.io.os.native_fwrite
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.os.native_fputc,"axG",@progbits,std.io.os.native_fputc,comdat
	.weak	std.io.os.native_fputc          # -- Begin function std.io.os.native_fputc
	.p2align	4, 0x90
	.type	std.io.os.native_fputc,@function
std.io.os.native_fputc:                 # @std.io.os.native_fputc
.Lfunc_begin4:
	.loc	1 69 0 is_stmt 1                # file_libc.c3:69:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp61:
	.loc	1 71 21 prologue_end            # file_libc.c3:71:21
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	.loc	1 71 6 is_stmt 0                # file_libc.c3:71:6
	callq	fputc@PLT
	cmpl	$-1, %eax
	jne	.LBB4_2
# %bb.1:
	.loc	1 71 50                         # file_libc.c3:71:50
	movq	std.io.EOF@GOTPCREL(%rip), %rax
	.loc	1 71 50 epilogue_begin          # file_libc.c3:71:50
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_2:
	.cfi_def_cfa %rbp, 16
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 71 50 epilogue_begin          # file_libc.c3:71:50
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp62:
.Lfunc_end4:
	.size	std.io.os.native_fputc, .Lfunc_end4-std.io.os.native_fputc
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.os.native_fread,"axG",@progbits,std.io.os.native_fread,comdat
	.weak	std.io.os.native_fread          # -- Begin function std.io.os.native_fread
	.p2align	4, 0x90
	.type	std.io.os.native_fread,@function
std.io.os.native_fread:                 # @std.io.os.native_fread
.Lfunc_begin5:
	.loc	1 74 0 is_stmt 1                # file_libc.c3:74:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
.Ltmp63:
	.loc	1 76 21 prologue_end            # file_libc.c3:76:21
	movq	-24(%rbp), %rdi
	.loc	1 76 48 is_stmt 0               # file_libc.c3:76:48
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	.loc	1 76 9                          # file_libc.c3:76:9
	movl	$1, %esi
	callq	fread@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, (%rdi)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 76 9 epilogue_begin           # file_libc.c3:76:9
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp64:
.Lfunc_end5:
	.size	std.io.os.native_fread, .Lfunc_end5-std.io.os.native_fread
	.cfi_endproc
                                        # -- End function
	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"@require \"mode.len > 0\" violated."
	.size	.panic_msg, 34

	.type	.file,@object                   # @.file
.file:
	.asciz	"file_libc.c3"
	.size	.file, 13

	.type	.func,@object                   # @.func
.func:
	.asciz	"native_fopen"
	.size	.func, 13

	.type	.panic_msg.1,@object            # @.panic_msg.1
.panic_msg.1:
	.asciz	"@require \"filename.len > 0\" violated."
	.size	.panic_msg.1, 38

	.type	std.io.NO_PERMISSION,@object    # @std.io.NO_PERMISSION
	.section	.data.rel.ro.std.io.NO_PERMISSION,"awG",@progbits,std.io.NO_PERMISSION,comdat
	.weak	std.io.NO_PERMISSION
	.p2align	3, 0x0
std.io.NO_PERMISSION:
	.quad	std.io.NO_PERMISSION.nameof
	.quad	17                              # 0x11
	.size	std.io.NO_PERMISSION, 16

	.type	std.io.NO_PERMISSION.nameof,@object # @std.io.NO_PERMISSION.nameof
	.section	.rodata,"a",@progbits
std.io.NO_PERMISSION.nameof:
	.asciz	"io::NO_PERMISSION"
	.size	std.io.NO_PERMISSION.nameof, 18

	.type	std.io.OUT_OF_SPACE,@object     # @std.io.OUT_OF_SPACE
	.section	.data.rel.ro.std.io.OUT_OF_SPACE,"awG",@progbits,std.io.OUT_OF_SPACE,comdat
	.weak	std.io.OUT_OF_SPACE
	.p2align	3, 0x0
std.io.OUT_OF_SPACE:
	.quad	std.io.OUT_OF_SPACE.nameof
	.quad	16                              # 0x10
	.size	std.io.OUT_OF_SPACE, 16

	.type	std.io.OUT_OF_SPACE.nameof,@object # @std.io.OUT_OF_SPACE.nameof
	.section	.rodata,"a",@progbits
std.io.OUT_OF_SPACE.nameof:
	.asciz	"io::OUT_OF_SPACE"
	.size	std.io.OUT_OF_SPACE.nameof, 17

	.type	std.io.FILE_NOT_VALID,@object   # @std.io.FILE_NOT_VALID
	.section	.data.rel.ro.std.io.FILE_NOT_VALID,"awG",@progbits,std.io.FILE_NOT_VALID,comdat
	.weak	std.io.FILE_NOT_VALID
	.p2align	3, 0x0
std.io.FILE_NOT_VALID:
	.quad	std.io.FILE_NOT_VALID.nameof
	.quad	18                              # 0x12
	.size	std.io.FILE_NOT_VALID, 16

	.type	std.io.FILE_NOT_VALID.nameof,@object # @std.io.FILE_NOT_VALID.nameof
	.section	.rodata,"a",@progbits
std.io.FILE_NOT_VALID.nameof:
	.asciz	"io::FILE_NOT_VALID"
	.size	std.io.FILE_NOT_VALID.nameof, 19

	.type	std.io.ALREADY_EXISTS,@object   # @std.io.ALREADY_EXISTS
	.section	.data.rel.ro.std.io.ALREADY_EXISTS,"awG",@progbits,std.io.ALREADY_EXISTS,comdat
	.weak	std.io.ALREADY_EXISTS
	.p2align	3, 0x0
std.io.ALREADY_EXISTS:
	.quad	std.io.ALREADY_EXISTS.nameof
	.quad	18                              # 0x12
	.size	std.io.ALREADY_EXISTS, 16

	.type	std.io.ALREADY_EXISTS.nameof,@object # @std.io.ALREADY_EXISTS.nameof
	.section	.rodata,"a",@progbits
std.io.ALREADY_EXISTS.nameof:
	.asciz	"io::ALREADY_EXISTS"
	.size	std.io.ALREADY_EXISTS.nameof, 19

	.type	std.io.INTERRUPTED,@object      # @std.io.INTERRUPTED
	.section	.data.rel.ro.std.io.INTERRUPTED,"awG",@progbits,std.io.INTERRUPTED,comdat
	.weak	std.io.INTERRUPTED
	.p2align	3, 0x0
std.io.INTERRUPTED:
	.quad	std.io.INTERRUPTED.nameof
	.quad	15                              # 0xf
	.size	std.io.INTERRUPTED, 16

	.type	std.io.INTERRUPTED.nameof,@object # @std.io.INTERRUPTED.nameof
	.section	.rodata,"a",@progbits
std.io.INTERRUPTED.nameof:
	.asciz	"io::INTERRUPTED"
	.size	std.io.INTERRUPTED.nameof, 16

	.type	std.io.GENERAL_ERROR,@object    # @std.io.GENERAL_ERROR
	.section	.data.rel.ro.std.io.GENERAL_ERROR,"awG",@progbits,std.io.GENERAL_ERROR,comdat
	.weak	std.io.GENERAL_ERROR
	.p2align	3, 0x0
std.io.GENERAL_ERROR:
	.quad	std.io.GENERAL_ERROR.nameof
	.quad	17                              # 0x11
	.size	std.io.GENERAL_ERROR, 16

	.type	std.io.GENERAL_ERROR.nameof,@object # @std.io.GENERAL_ERROR.nameof
	.section	.rodata,"a",@progbits
std.io.GENERAL_ERROR.nameof:
	.asciz	"io::GENERAL_ERROR"
	.size	std.io.GENERAL_ERROR.nameof, 18

	.type	std.io.FILE_IS_DIR,@object      # @std.io.FILE_IS_DIR
	.section	.data.rel.ro.std.io.FILE_IS_DIR,"awG",@progbits,std.io.FILE_IS_DIR,comdat
	.weak	std.io.FILE_IS_DIR
	.p2align	3, 0x0
std.io.FILE_IS_DIR:
	.quad	std.io.FILE_IS_DIR.nameof
	.quad	15                              # 0xf
	.size	std.io.FILE_IS_DIR, 16

	.type	std.io.FILE_IS_DIR.nameof,@object # @std.io.FILE_IS_DIR.nameof
	.section	.rodata,"a",@progbits
std.io.FILE_IS_DIR.nameof:
	.asciz	"io::FILE_IS_DIR"
	.size	std.io.FILE_IS_DIR.nameof, 16

	.type	std.io.SYMLINK_FAILED,@object   # @std.io.SYMLINK_FAILED
	.section	.data.rel.ro.std.io.SYMLINK_FAILED,"awG",@progbits,std.io.SYMLINK_FAILED,comdat
	.weak	std.io.SYMLINK_FAILED
	.p2align	3, 0x0
std.io.SYMLINK_FAILED:
	.quad	std.io.SYMLINK_FAILED.nameof
	.quad	18                              # 0x12
	.size	std.io.SYMLINK_FAILED, 16

	.type	std.io.SYMLINK_FAILED.nameof,@object # @std.io.SYMLINK_FAILED.nameof
	.section	.rodata,"a",@progbits
std.io.SYMLINK_FAILED.nameof:
	.asciz	"io::SYMLINK_FAILED"
	.size	std.io.SYMLINK_FAILED.nameof, 19

	.type	std.io.TOO_MANY_DESCRIPTORS,@object # @std.io.TOO_MANY_DESCRIPTORS
	.section	.data.rel.ro.std.io.TOO_MANY_DESCRIPTORS,"awG",@progbits,std.io.TOO_MANY_DESCRIPTORS,comdat
	.weak	std.io.TOO_MANY_DESCRIPTORS
	.p2align	3, 0x0
std.io.TOO_MANY_DESCRIPTORS:
	.quad	std.io.TOO_MANY_DESCRIPTORS.nameof
	.quad	24                              # 0x18
	.size	std.io.TOO_MANY_DESCRIPTORS, 16

	.type	std.io.TOO_MANY_DESCRIPTORS.nameof,@object # @std.io.TOO_MANY_DESCRIPTORS.nameof
	.section	.rodata,"a",@progbits
std.io.TOO_MANY_DESCRIPTORS.nameof:
	.asciz	"io::TOO_MANY_DESCRIPTORS"
	.size	std.io.TOO_MANY_DESCRIPTORS.nameof, 25

	.type	std.io.NAME_TOO_LONG,@object    # @std.io.NAME_TOO_LONG
	.section	.data.rel.ro.std.io.NAME_TOO_LONG,"awG",@progbits,std.io.NAME_TOO_LONG,comdat
	.weak	std.io.NAME_TOO_LONG
	.p2align	3, 0x0
std.io.NAME_TOO_LONG:
	.quad	std.io.NAME_TOO_LONG.nameof
	.quad	17                              # 0x11
	.size	std.io.NAME_TOO_LONG, 16

	.type	std.io.NAME_TOO_LONG.nameof,@object # @std.io.NAME_TOO_LONG.nameof
	.section	.rodata,"a",@progbits
std.io.NAME_TOO_LONG.nameof:
	.asciz	"io::NAME_TOO_LONG"
	.size	std.io.NAME_TOO_LONG.nameof, 18

	.type	std.io.FILE_NOT_DIR,@object     # @std.io.FILE_NOT_DIR
	.section	.data.rel.ro.std.io.FILE_NOT_DIR,"awG",@progbits,std.io.FILE_NOT_DIR,comdat
	.weak	std.io.FILE_NOT_DIR
	.p2align	3, 0x0
std.io.FILE_NOT_DIR:
	.quad	std.io.FILE_NOT_DIR.nameof
	.quad	16                              # 0x10
	.size	std.io.FILE_NOT_DIR, 16

	.type	std.io.FILE_NOT_DIR.nameof,@object # @std.io.FILE_NOT_DIR.nameof
	.section	.rodata,"a",@progbits
std.io.FILE_NOT_DIR.nameof:
	.asciz	"io::FILE_NOT_DIR"
	.size	std.io.FILE_NOT_DIR.nameof, 17

	.type	std.io.FILE_NOT_FOUND,@object   # @std.io.FILE_NOT_FOUND
	.section	.data.rel.ro.std.io.FILE_NOT_FOUND,"awG",@progbits,std.io.FILE_NOT_FOUND,comdat
	.weak	std.io.FILE_NOT_FOUND
	.p2align	3, 0x0
std.io.FILE_NOT_FOUND:
	.quad	std.io.FILE_NOT_FOUND.nameof
	.quad	18                              # 0x12
	.size	std.io.FILE_NOT_FOUND, 16

	.type	std.io.FILE_NOT_FOUND.nameof,@object # @std.io.FILE_NOT_FOUND.nameof
	.section	.rodata,"a",@progbits
std.io.FILE_NOT_FOUND.nameof:
	.asciz	"io::FILE_NOT_FOUND"
	.size	std.io.FILE_NOT_FOUND.nameof, 19

	.type	std.io.OVERFLOW,@object         # @std.io.OVERFLOW
	.section	.data.rel.ro.std.io.OVERFLOW,"awG",@progbits,std.io.OVERFLOW,comdat
	.weak	std.io.OVERFLOW
	.p2align	3, 0x0
std.io.OVERFLOW:
	.quad	std.io.OVERFLOW.nameof
	.quad	12                              # 0xc
	.size	std.io.OVERFLOW, 16

	.type	std.io.OVERFLOW.nameof,@object  # @std.io.OVERFLOW.nameof
	.section	.rodata,"a",@progbits
std.io.OVERFLOW.nameof:
	.asciz	"io::OVERFLOW"
	.size	std.io.OVERFLOW.nameof, 13

	.type	std.io.READ_ONLY,@object        # @std.io.READ_ONLY
	.section	.data.rel.ro.std.io.READ_ONLY,"awG",@progbits,std.io.READ_ONLY,comdat
	.weak	std.io.READ_ONLY
	.p2align	3, 0x0
std.io.READ_ONLY:
	.quad	std.io.READ_ONLY.nameof
	.quad	13                              # 0xd
	.size	std.io.READ_ONLY, 16

	.type	std.io.READ_ONLY.nameof,@object # @std.io.READ_ONLY.nameof
	.section	.rodata,"a",@progbits
std.io.READ_ONLY.nameof:
	.asciz	"io::READ_ONLY"
	.size	std.io.READ_ONLY.nameof, 14

	.type	std.io.UNSUPPORTED_OPERATION,@object # @std.io.UNSUPPORTED_OPERATION
	.section	.data.rel.ro.std.io.UNSUPPORTED_OPERATION,"awG",@progbits,std.io.UNSUPPORTED_OPERATION,comdat
	.weak	std.io.UNSUPPORTED_OPERATION
	.p2align	3, 0x0
std.io.UNSUPPORTED_OPERATION:
	.quad	std.io.UNSUPPORTED_OPERATION.nameof
	.quad	25                              # 0x19
	.size	std.io.UNSUPPORTED_OPERATION, 16

	.type	std.io.UNSUPPORTED_OPERATION.nameof,@object # @std.io.UNSUPPORTED_OPERATION.nameof
	.section	.rodata,"a",@progbits
std.io.UNSUPPORTED_OPERATION.nameof:
	.asciz	"io::UNSUPPORTED_OPERATION"
	.size	std.io.UNSUPPORTED_OPERATION.nameof, 26

	.type	std.io.INCOMPLETE_WRITE,@object # @std.io.INCOMPLETE_WRITE
	.section	.data.rel.ro.std.io.INCOMPLETE_WRITE,"awG",@progbits,std.io.INCOMPLETE_WRITE,comdat
	.weak	std.io.INCOMPLETE_WRITE
	.p2align	3, 0x0
std.io.INCOMPLETE_WRITE:
	.quad	std.io.INCOMPLETE_WRITE.nameof
	.quad	20                              # 0x14
	.size	std.io.INCOMPLETE_WRITE, 16

	.type	std.io.INCOMPLETE_WRITE.nameof,@object # @std.io.INCOMPLETE_WRITE.nameof
	.section	.rodata,"a",@progbits
std.io.INCOMPLETE_WRITE.nameof:
	.asciz	"io::INCOMPLETE_WRITE"
	.size	std.io.INCOMPLETE_WRITE.nameof, 21

	.type	std.io.WOULD_BLOCK,@object      # @std.io.WOULD_BLOCK
	.section	.data.rel.ro.std.io.WOULD_BLOCK,"awG",@progbits,std.io.WOULD_BLOCK,comdat
	.weak	std.io.WOULD_BLOCK
	.p2align	3, 0x0
std.io.WOULD_BLOCK:
	.quad	std.io.WOULD_BLOCK.nameof
	.quad	15                              # 0xf
	.size	std.io.WOULD_BLOCK, 16

	.type	std.io.WOULD_BLOCK.nameof,@object # @std.io.WOULD_BLOCK.nameof
	.section	.rodata,"a",@progbits
std.io.WOULD_BLOCK.nameof:
	.asciz	"io::WOULD_BLOCK"
	.size	std.io.WOULD_BLOCK.nameof, 16

	.type	std.io.UNKNOWN_ERROR,@object    # @std.io.UNKNOWN_ERROR
	.section	.data.rel.ro.std.io.UNKNOWN_ERROR,"awG",@progbits,std.io.UNKNOWN_ERROR,comdat
	.weak	std.io.UNKNOWN_ERROR
	.p2align	3, 0x0
std.io.UNKNOWN_ERROR:
	.quad	std.io.UNKNOWN_ERROR.nameof
	.quad	17                              # 0x11
	.size	std.io.UNKNOWN_ERROR, 16

	.type	std.io.UNKNOWN_ERROR.nameof,@object # @std.io.UNKNOWN_ERROR.nameof
	.section	.rodata,"a",@progbits
std.io.UNKNOWN_ERROR.nameof:
	.asciz	"io::UNKNOWN_ERROR"
	.size	std.io.UNKNOWN_ERROR.nameof, 18

	.type	std.io.FILE_IS_PIPE,@object     # @std.io.FILE_IS_PIPE
	.section	.data.rel.ro.std.io.FILE_IS_PIPE,"awG",@progbits,std.io.FILE_IS_PIPE,comdat
	.weak	std.io.FILE_IS_PIPE
	.p2align	3, 0x0
std.io.FILE_IS_PIPE:
	.quad	std.io.FILE_IS_PIPE.nameof
	.quad	16                              # 0x10
	.size	std.io.FILE_IS_PIPE, 16

	.type	std.io.FILE_IS_PIPE.nameof,@object # @std.io.FILE_IS_PIPE.nameof
	.section	.rodata,"a",@progbits
std.io.FILE_IS_PIPE.nameof:
	.asciz	"io::FILE_IS_PIPE"
	.size	std.io.FILE_IS_PIPE.nameof, 17

	.type	std.io.INVALID_POSITION,@object # @std.io.INVALID_POSITION
	.section	.data.rel.ro.std.io.INVALID_POSITION,"awG",@progbits,std.io.INVALID_POSITION,comdat
	.weak	std.io.INVALID_POSITION
	.p2align	3, 0x0
std.io.INVALID_POSITION:
	.quad	std.io.INVALID_POSITION.nameof
	.quad	20                              # 0x14
	.size	std.io.INVALID_POSITION, 16

	.type	std.io.INVALID_POSITION.nameof,@object # @std.io.INVALID_POSITION.nameof
	.section	.rodata,"a",@progbits
std.io.INVALID_POSITION.nameof:
	.asciz	"io::INVALID_POSITION"
	.size	std.io.INVALID_POSITION.nameof, 21

	.type	std.io.EOF,@object              # @std.io.EOF
	.section	.data.rel.ro.std.io.EOF,"awG",@progbits,std.io.EOF,comdat
	.weak	std.io.EOF
	.p2align	3, 0x0
std.io.EOF:
	.quad	std.io.EOF.nameof
	.quad	7                               # 0x7
	.size	std.io.EOF, 16

	.type	std.io.EOF.nameof,@object       # @std.io.EOF.nameof
	.section	.rodata,"a",@progbits
std.io.EOF.nameof:
	.asciz	"io::EOF"
	.size	std.io.EOF.nameof, 8

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
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	34                              # DW_AT_lower_bound
	.byte	13                              # DW_FORM_sdata
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x42d DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x20 DW_TAG_enumeration_type
	.long	74                              # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	3                               # Abbrev [3] 0x37:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3d:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x43:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4a:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x51:0x1b DW_TAG_subprogram
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.long	.Linfo_string8                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	639                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x5e:0xd DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	641                             # DW_AT_decl_line
	.long	108                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6c:0xc DW_TAG_typedef
	.long	120                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	420                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x78:0xd DW_TAG_pointer_type
	.long	133                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	9                               # Abbrev [9] 0x85:0x99 DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	10                              # Abbrev [10] 0x8e:0xd DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	286                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9b:0xd DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	332                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa8:0xd DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	120                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb5:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xc2:0xd DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xcf:0xd DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xdc:0xd DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xe9:0xd DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xf6:0xd DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x103:0xd DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x110:0xd DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x11e:0x1e DW_TAG_structure_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	12                              # Abbrev [12] 0x125:0xb DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x130:0xb DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	325                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x13c:0x9 DW_TAG_pointer_type
	.long	.Linfo_string12                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	4                               # Abbrev [4] 0x145:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x14c:0xd DW_TAG_pointer_type
	.long	345                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	9                               # Abbrev [9] 0x159:0x4b DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	10                              # Abbrev [10] 0x162:0xd DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	332                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x16f:0xd DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	316                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x17c:0xd DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x189:0xd DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x196:0xd DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	436                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1a4:0x9 DW_TAG_typedef
	.long	429                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # Abbrev [4] 0x1ad:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x1b4:0xd DW_TAG_array_type
	.long	449                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1b9:0x7 DW_TAG_subrange_type
	.long	456                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	0                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1c1:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x1c8:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	4                               # Abbrev [4] 0x1cf:0x7 DW_TAG_base_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x1d6:0xc DW_TAG_subprogram
	.long	.Linfo_string40                 # DW_AT_linkage_name
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x1e2:0x80 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string42                 # DW_AT_linkage_name
	.long	.Linfo_string43                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	979                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x1ff:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	995                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x20d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	995                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x21b:0x15 DW_TAG_inlined_subroutine
	.long	81                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	8                               # DW_AT_call_line
	.byte	65                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x227:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	94                              # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x230:0x31 DW_TAG_lexical_block
	.quad	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp26-.Ltmp3                  # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x23d:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.long	316                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x24c:0x14 DW_TAG_inlined_subroutine
	.long	470                             # DW_AT_abstract_origin
	.quad	.Ltmp4                          # DW_AT_low_pc
	.long	.Ltmp26-.Ltmp4                  # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	15                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x262:0xc DW_TAG_subprogram
	.long	.Linfo_string41                 # DW_AT_linkage_name
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x26e:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string46                 # DW_AT_linkage_name
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	979                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x28b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	316                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x299:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	1047                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2a7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	42                              # DW_AT_type
	.byte	25                              # Abbrev [25] 0x2b5:0x14 DW_TAG_inlined_subroutine
	.long	610                             # DW_AT_abstract_origin
	.quad	.Ltmp30                         # DW_AT_low_pc
	.long	.Ltmp43-.Ltmp30                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	54                              # DW_AT_call_line
	.byte	70                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x2ca:0xc DW_TAG_subprogram
	.long	.Linfo_string41                 # DW_AT_linkage_name
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x2d6:0x4f DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string48                 # DW_AT_linkage_name
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	979                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x2f3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	1056                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x301:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	988                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x310:0x14 DW_TAG_inlined_subroutine
	.long	714                             # DW_AT_abstract_origin
	.quad	.Ltmp45                         # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp45                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	35                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x325:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string50                 # DW_AT_linkage_name
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	979                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x342:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	1056                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x350:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	1004                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x35f:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string52                 # DW_AT_linkage_name
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	979                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x37c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	1068                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x38a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	1056                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x399:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string54                 # DW_AT_linkage_name
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	979                             # DW_AT_type
                                        # DW_AT_external
	.byte	20                              # Abbrev [20] 0x3b6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	1056                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0x3c4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	1004                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x3d3:0x9 DW_TAG_typedef
	.long	988                             # DW_AT_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	4                               # Abbrev [4] 0x3dc:0x7 DW_TAG_base_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x3e3:0x9 DW_TAG_typedef
	.long	1004                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	11                              # Abbrev [11] 0x3ec:0x1e DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	12                              # Abbrev [12] 0x3f3:0xb DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	1034                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3fe:0xb DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x40a:0xd DW_TAG_pointer_type
	.long	449                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	14                              # Abbrev [14] 0x417:0x9 DW_TAG_typedef
	.long	988                             # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	7                               # Abbrev [7] 0x420:0xc DW_TAG_typedef
	.long	316                             # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0x42c:0xb DW_TAG_typedef
	.long	74                              # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp2
	.quad	.Ltmp3
	.quad	.Ltmp26
	.quad	.Ltmp28
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"chdir.c3"                      # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/io/os" # string offset=13
.Linfo_string3:
	.asciz	"int"                           # string offset=84
.Linfo_string4:
	.asciz	"SET"                           # string offset=88
.Linfo_string5:
	.asciz	"CURSOR"                        # string offset=92
.Linfo_string6:
	.asciz	"END"                           # string offset=99
.Linfo_string7:
	.asciz	"Seek"                          # string offset=103
.Linfo_string8:
	.asciz	"@pool"                         # string offset=108
.Linfo_string9:
	.asciz	"state"                         # string offset=114
.Linfo_string10:
	.asciz	"backing_allocator"             # string offset=120
.Linfo_string11:
	.asciz	"ptr"                           # string offset=138
.Linfo_string12:
	.asciz	"void*"                         # string offset=142
.Linfo_string13:
	.asciz	"type"                          # string offset=148
.Linfo_string14:
	.asciz	"typeid"                        # string offset=153
.Linfo_string15:
	.asciz	"Allocator"                     # string offset=160
.Linfo_string16:
	.asciz	"last_page"                     # string offset=170
.Linfo_string17:
	.asciz	"prev_page"                     # string offset=180
.Linfo_string18:
	.asciz	"start"                         # string offset=190
.Linfo_string19:
	.asciz	"size"                          # string offset=196
.Linfo_string20:
	.asciz	"ulong"                         # string offset=201
.Linfo_string21:
	.asciz	"usz"                           # string offset=207
.Linfo_string22:
	.asciz	"ident"                         # string offset=211
.Linfo_string23:
	.asciz	"data"                          # string offset=217
.Linfo_string24:
	.asciz	"char"                          # string offset=222
.Linfo_string25:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=227
.Linfo_string26:
	.asciz	"TempAllocatorPage"             # string offset=247
.Linfo_string27:
	.asciz	"TempAllocatorPage*"            # string offset=265
.Linfo_string28:
	.asciz	"derived"                       # string offset=284
.Linfo_string29:
	.asciz	"allocated"                     # string offset=292
.Linfo_string30:
	.asciz	"bool"                          # string offset=302
.Linfo_string31:
	.asciz	"reserve_size"                  # string offset=307
.Linfo_string32:
	.asciz	"realloc_size"                  # string offset=320
.Linfo_string33:
	.asciz	"min_size"                      # string offset=333
.Linfo_string34:
	.asciz	"used"                          # string offset=342
.Linfo_string35:
	.asciz	"capacity"                      # string offset=347
.Linfo_string36:
	.asciz	"original_capacity"             # string offset=356
.Linfo_string37:
	.asciz	"TempAllocator"                 # string offset=374
.Linfo_string38:
	.asciz	"TempAllocator*"                # string offset=388
.Linfo_string39:
	.asciz	"PoolState"                     # string offset=403
.Linfo_string40:
	.asciz	"file_open_errno"               # string offset=413
.Linfo_string41:
	.asciz	"file_seek_errno"               # string offset=429
.Linfo_string42:
	.asciz	"std.io.os.native_fopen"        # string offset=445
.Linfo_string43:
	.asciz	"native_fopen"                  # string offset=468
.Linfo_string44:
	.asciz	"long"                          # string offset=481
.Linfo_string45:
	.asciz	"fault"                         # string offset=486
.Linfo_string46:
	.asciz	"std.io.os.native_fseek"        # string offset=492
.Linfo_string47:
	.asciz	"native_fseek"                  # string offset=515
.Linfo_string48:
	.asciz	"std.io.os.native_ftell"        # string offset=528
.Linfo_string49:
	.asciz	"native_ftell"                  # string offset=551
.Linfo_string50:
	.asciz	"std.io.os.native_fwrite"       # string offset=564
.Linfo_string51:
	.asciz	"native_fwrite"                 # string offset=588
.Linfo_string52:
	.asciz	"std.io.os.native_fputc"        # string offset=602
.Linfo_string53:
	.asciz	"native_fputc"                  # string offset=625
.Linfo_string54:
	.asciz	"std.io.os.native_fread"        # string offset=638
.Linfo_string55:
	.asciz	"native_fread"                  # string offset=661
.Linfo_string56:
	.asciz	"filename"                      # string offset=674
.Linfo_string57:
	.asciz	"char*"                         # string offset=683
.Linfo_string58:
	.asciz	"len"                           # string offset=689
.Linfo_string59:
	.asciz	"char[]"                        # string offset=693
.Linfo_string60:
	.asciz	"String"                        # string offset=700
.Linfo_string61:
	.asciz	"mode"                          # string offset=707
.Linfo_string62:
	.asciz	"file"                          # string offset=712
.Linfo_string63:
	.asciz	"offset"                        # string offset=717
.Linfo_string64:
	.asciz	"isz"                           # string offset=724
.Linfo_string65:
	.asciz	"seek_mode"                     # string offset=728
.Linfo_string66:
	.asciz	"CFile"                         # string offset=738
.Linfo_string67:
	.asciz	"index"                         # string offset=744
.Linfo_string68:
	.asciz	"buffer"                        # string offset=750
.Linfo_string69:
	.asciz	"c"                             # string offset=757
.Linfo_string70:
	.asciz	"CInt"                          # string offset=759
.Linfo_string71:
	.asciz	"stream"                        # string offset=764
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	1080                            # Compilation Unit Length
	.long	55                              # DIE offset
	.asciz	"SET"                           # External Name
	.long	61                              # DIE offset
	.asciz	"CURSOR"                        # External Name
	.long	67                              # DIE offset
	.asciz	"END"                           # External Name
	.long	81                              # DIE offset
	.asciz	"@pool"                         # External Name
	.long	470                             # DIE offset
	.asciz	"file_open_errno"               # External Name
	.long	482                             # DIE offset
	.asciz	"native_fopen"                  # External Name
	.long	622                             # DIE offset
	.asciz	"native_fseek"                  # External Name
	.long	714                             # DIE offset
	.asciz	"file_seek_errno"               # External Name
	.long	726                             # DIE offset
	.asciz	"native_ftell"                  # External Name
	.long	805                             # DIE offset
	.asciz	"native_fwrite"                 # External Name
	.long	863                             # DIE offset
	.asciz	"native_fputc"                  # External Name
	.long	921                             # DIE offset
	.asciz	"native_fread"                  # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	1080                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"Seek"                          # External Name
	.long	74                              # DIE offset
	.asciz	"int"                           # External Name
	.long	108                             # DIE offset
	.asciz	"PoolState"                     # External Name
	.long	120                             # DIE offset
	.asciz	"TempAllocator*"                # External Name
	.long	133                             # DIE offset
	.asciz	"TempAllocator"                 # External Name
	.long	286                             # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	316                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	325                             # DIE offset
	.asciz	"typeid"                        # External Name
	.long	332                             # DIE offset
	.asciz	"TempAllocatorPage*"            # External Name
	.long	345                             # DIE offset
	.asciz	"TempAllocatorPage"             # External Name
	.long	420                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	429                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	449                             # DIE offset
	.asciz	"char"                          # External Name
	.long	463                             # DIE offset
	.asciz	"bool"                          # External Name
	.long	979                             # DIE offset
	.asciz	"fault"                         # External Name
	.long	988                             # DIE offset
	.asciz	"long"                          # External Name
	.long	995                             # DIE offset
	.asciz	"String"                        # External Name
	.long	1004                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	1034                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	1047                            # DIE offset
	.asciz	"isz"                           # External Name
	.long	1056                            # DIE offset
	.asciz	"CFile"                         # External Name
	.long	1068                            # DIE offset
	.asciz	"CInt"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.mem.allocator.push_pool
	.weak	std.core.String.zstr_tcopy
	.weak	libc.errno
	.weak	std.core.mem.allocator.pop_pool
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

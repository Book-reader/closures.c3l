	.text
	.file	"std_collections_list$std.os.backtrace.Backtrace$"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/collections" "list.c3"
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List.init","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List.init",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.init # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.init
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.init,@function
std_collections_list$std.os.backtrace.Backtrace$.List.init: # @"std_collections_list$std.os.backtrace.Backtrace$.List.init"
.Lfunc_begin0:
	.loc	1 30 0                          # list.c3:30:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	movq	%rsi, -56(%rbp)                 # 8-byte Spill
	movq	%rdx, -48(%rbp)                 # 8-byte Spill
	movq	%rcx, -40(%rbp)                 # 8-byte Spill
.Ltmp0:
	.loc	1 31 1 prologue_end             # list.c3:31:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 32 2 is_stmt 1                # list.c3:32:2
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.loc	1 33 2                          # list.c3:33:2
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc	1 34 2                          # list.c3:34:2
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc	1 35 2                          # list.c3:35:2
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc	1 36 15                         # list.c3:36:15
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	.loc	1 36 2 is_stmt 0                # list.c3:36:2
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.reserve@PLT
	.loc	1 37 9 is_stmt 1                # list.c3:37:9
	movq	-8(%rbp), %rax
	.loc	1 37 9 epilogue_begin is_stmt 0 # list.c3:37:9
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 30 20 is_stmt 1               # list.c3:30:20
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$30, (%rsp)
	callq	*(%rax)
.Ltmp1:
.Lfunc_end0:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.init, .Lfunc_end0-std_collections_list$std.os.backtrace.Backtrace$.List.init
	.cfi_endproc
                                        # -- End function
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List.to_format","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List.to_format",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.to_format # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.to_format
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.to_format,@function
std_collections_list$std.os.backtrace.Backtrace$.List.to_format: # @"std_collections_list$std.os.backtrace.Backtrace$.List.to_format"
.Lfunc_begin1:
	.loc	1 90 0                          # list.c3:90:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$752, %rsp                      # imm = 0x2F0
	movq	%rdi, -568(%rbp)                # 8-byte Spill
	movq	%rsi, -560(%rbp)                # 8-byte Spill
	movq	%rdx, -552(%rbp)                # 8-byte Spill
.Ltmp2:
	.loc	1 91 1 prologue_end             # list.c3:91:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB1_39
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-552(%rbp), %rax                # 8-byte Reload
	movq	-560(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
.Ltmp3:
	.loc	1 92 10 is_stmt 1               # list.c3:92:10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
# %bb.2:
	.loc	1 0 10 is_stmt 0                # list.c3:0:10
	movq	-24(%rbp), %rax
	movq	%rax, -576(%rbp)                # 8-byte Spill
	testq	%rax, %rax
	je	.LBB1_3
	jmp	.LBB1_44
.LBB1_44:
	movq	-576(%rbp), %rax                # 8-byte Reload
	subq	$1, %rax
	je	.LBB1_8
	jmp	.LBB1_14
.LBB1_3:
	movq	-16(%rbp), %rsi
.Ltmp4:
	.loc	1 95 11 is_stmt 1               # list.c3:95:11
	leaq	-48(%rbp), %rdi
	leaq	.L.str(%rip), %rdx
	movl	$2, %ecx
	callq	std.io.Formatter.print@PLT
	movq	%rax, -584(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_5
# %bb.4:
	.loc	1 0 11 is_stmt 0                # list.c3:0:11
	movq	-584(%rbp), %rax                # 8-byte Reload
	.loc	1 95 11                         # list.c3:95:11
	movq	%rax, -40(%rbp)
	jmp	.LBB1_6
.LBB1_5:
	jmp	.LBB1_7
.LBB1_6:
	movq	-40(%rbp), %rax
	.loc	1 95 11 epilogue_begin          # list.c3:95:11
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 11                          # list.c3:0:11
	movq	-568(%rbp), %rax                # 8-byte Reload
	.loc	1 95 11                         # list.c3:95:11
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 95 11 epilogue_begin          # list.c3:95:11
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.LBB1_8:
	.cfi_def_cfa %rbp, 16
	.loc	1 97 36 is_stmt 1               # list.c3:97:36
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -600(%rbp)                # 8-byte Spill
	.loc	1 97 49 is_stmt 0               # list.c3:97:49
	andq	$7, %rax
	movq	%rax, -592(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_40
# %bb.9:
	.loc	1 0 49                          # list.c3:0:49
	movq	-600(%rbp), %rax                # 8-byte Reload
	.loc	1 97 36                         # list.c3:97:36
	movq	($ct.std.os.backtrace.Backtrace)@GOTPCREL(%rip), %rcx
	movq	%rcx, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rsi
	.loc	1 97 11                         # list.c3:97:11
	leaq	-152(%rbp), %rdi
	leaq	.L.str.2(%rip), %rdx
	movl	$4, %ecx
	leaq	-80(%rbp), %r8
	movl	$1, %r9d
	callq	std.io.Formatter.printf@PLT
	movq	%rax, -608(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_11
# %bb.10:
	.loc	1 0 11                          # list.c3:0:11
	movq	-608(%rbp), %rax                # 8-byte Reload
	.loc	1 97 11                         # list.c3:97:11
	movq	%rax, -64(%rbp)
	jmp	.LBB1_12
.LBB1_11:
	jmp	.LBB1_13
.LBB1_12:
	movq	-64(%rbp), %rax
	.loc	1 97 11 epilogue_begin          # list.c3:97:11
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_13:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 11                          # list.c3:0:11
	movq	-568(%rbp), %rax                # 8-byte Reload
	.loc	1 97 11                         # list.c3:97:11
	movq	-152(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 97 11 epilogue_begin          # list.c3:97:11
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB1_14:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 11                          # list.c3:0:11
	movq	-16(%rbp), %rsi
.Ltmp7:
	.loc	1 99 12 is_stmt 1               # list.c3:99:12
	leaq	-176(%rbp), %rdi
	leaq	.L.str.4(%rip), %rdx
	movl	$1, %ecx
	callq	std.io.Formatter.print@PLT
	movq	%rax, -616(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_16
# %bb.15:
	.loc	1 0 12 is_stmt 0                # list.c3:0:12
	movq	-616(%rbp), %rax                # 8-byte Reload
	.loc	1 99 12                         # list.c3:99:12
	movq	%rax, -168(%rbp)
	jmp	.LBB1_17
.LBB1_16:
	jmp	.LBB1_18
.LBB1_17:
	movq	-168(%rbp), %rax
	.loc	1 99 12 epilogue_begin          # list.c3:99:12
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_18:
	.cfi_def_cfa %rbp, 16
	movq	-176(%rbp), %rax
	movq	%rax, -160(%rbp)
.Ltmp8:
	.loc	1 100 26 is_stmt 1              # list.c3:100:26
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
	.loc	1 100 40 is_stmt 0              # list.c3:100:40
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -632(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -624(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB1_41
# %bb.19:
	.loc	1 0 40                          # list.c3:0:40
	movq	-640(%rbp), %rax                # 8-byte Reload
	movq	-632(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -656(%rbp)                # 8-byte Spill
	movq	%rax, -648(%rbp)                # 8-byte Spill
	.loc	1 100 13                        # list.c3:100:13
	movq	$0, -232(%rbp)
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 13                          # list.c3:0:13
	movq	-656(%rbp), %rax                # 8-byte Reload
	.loc	1 100 13                        # list.c3:100:13
	cmpq	%rax, -232(%rbp)
	jae	.LBB1_34
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	.loc	1 0 13                          # list.c3:0:13
	movq	-656(%rbp), %rcx                # 8-byte Reload
.Ltmp9:
	.loc	1 100 13                        # list.c3:100:13
	movq	-232(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -664(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_42
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	.loc	1 0 13                          # list.c3:0:13
	movq	-648(%rbp), %rax                # 8-byte Reload
	movq	-664(%rbp), %rcx                # 8-byte Reload
	.loc	1 100 13                        # list.c3:100:13
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -672(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_43
# %bb.23:                               #   in Loop: Header=BB1_20 Depth=1
	.loc	1 0 13                          # list.c3:0:13
	movq	-680(%rbp), %rax                # 8-byte Reload
	.loc	1 100 26                        # list.c3:100:26
	vmovdqu	(%rax), %xmm0
	vmovdqu	16(%rax), %xmm1
	vmovdqu	32(%rax), %xmm2
	vmovdqu	48(%rax), %xmm3
	vmovdqa	%xmm3, -288(%rbp)
	vmovdqa	%xmm2, -304(%rbp)
	vmovdqa	%xmm1, -320(%rbp)
	vmovdqa	%xmm0, -336(%rbp)
	movq	80(%rax), %rcx
	movq	%rcx, -256(%rbp)
	movq	72(%rax), %rcx
	movq	%rcx, -264(%rbp)
	movq	64(%rax), %rax
	movq	%rax, -272(%rbp)
.Ltmp10:
	.loc	1 102 9 is_stmt 1               # list.c3:102:9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-240(%rbp), %rax
	je	.LBB1_29
# %bb.24:                               #   in Loop: Header=BB1_20 Depth=1
	.loc	1 0 9 is_stmt 0                 # list.c3:0:9
	movq	-16(%rbp), %rsi
	.loc	1 102 17                        # list.c3:102:17
	leaq	-480(%rbp), %rdi
	leaq	.L.str.7(%rip), %rdx
	movl	$2, %ecx
	callq	std.io.Formatter.print@PLT
	movq	%rax, -688(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_26
# %bb.25:
	.loc	1 0 17                          # list.c3:0:17
	movq	-688(%rbp), %rax                # 8-byte Reload
	.loc	1 102 17                        # list.c3:102:17
	movq	%rax, -472(%rbp)
	jmp	.LBB1_27
.LBB1_26:                               #   in Loop: Header=BB1_20 Depth=1
	jmp	.LBB1_28
.LBB1_27:
	movq	-472(%rbp), %rax
	.loc	1 102 17 epilogue_begin         # list.c3:102:17
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_28:                               #   in Loop: Header=BB1_20 Depth=1
	.cfi_def_cfa %rbp, 16
	jmp	.LBB1_29
.LBB1_29:                               #   in Loop: Header=BB1_20 Depth=1
	.loc	1 103 5 is_stmt 1               # list.c3:103:5
	movq	-160(%rbp), %rax
	movq	%rax, -704(%rbp)                # 8-byte Spill
	.loc	1 103 33 is_stmt 0              # list.c3:103:33
	movq	($ct.std.os.backtrace.Backtrace)@GOTPCREL(%rip), %rax
	movq	%rax, -504(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-16(%rbp), %rsi
	.loc	1 103 10                        # list.c3:103:10
	leaq	-520(%rbp), %rdi
	leaq	.L.str.8(%rip), %rdx
	movl	$2, %ecx
	leaq	-512(%rbp), %r8
	movl	$1, %r9d
	callq	std.io.Formatter.printf@PLT
	movq	%rax, -696(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_31
# %bb.30:
	.loc	1 0 10                          # list.c3:0:10
	movq	-696(%rbp), %rax                # 8-byte Reload
	.loc	1 103 10                        # list.c3:103:10
	movq	%rax, -488(%rbp)
	jmp	.LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_20 Depth=1
	jmp	.LBB1_33
.LBB1_32:
	movq	-488(%rbp), %rax
	.loc	1 103 10 epilogue_begin         # list.c3:103:10
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_33:                               #   in Loop: Header=BB1_20 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 0 10                          # list.c3:0:10
	movq	-704(%rbp), %rax                # 8-byte Reload
	.loc	1 103 5                         # list.c3:103:5
	addq	-520(%rbp), %rax
	movq	%rax, -160(%rbp)
.Ltmp11:
	.loc	1 100 13 is_stmt 1              # list.c3:100:13
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB1_20
.Ltmp12:
.LBB1_34:
	.loc	1 105 4                         # list.c3:105:4
	movq	-160(%rbp), %rax
	movq	%rax, -720(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rsi
	.loc	1 105 9 is_stmt 0               # list.c3:105:9
	leaq	-536(%rbp), %rdi
	leaq	.L.str.9(%rip), %rdx
	movl	$1, %ecx
	callq	std.io.Formatter.print@PLT
	movq	%rax, -712(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_36
# %bb.35:
	.loc	1 0 9                           # list.c3:0:9
	movq	-712(%rbp), %rax                # 8-byte Reload
	.loc	1 105 9                         # list.c3:105:9
	movq	%rax, -528(%rbp)
	jmp	.LBB1_37
.LBB1_36:
	jmp	.LBB1_38
.LBB1_37:
	movq	-528(%rbp), %rax
	.loc	1 105 9 epilogue_begin          # list.c3:105:9
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_38:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # list.c3:0:9
	movq	-568(%rbp), %rax                # 8-byte Reload
	movq	-720(%rbp), %rcx                # 8-byte Reload
	.loc	1 105 4                         # list.c3:105:4
	addq	-536(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	.loc	1 106 11 is_stmt 1              # list.c3:106:11
	movq	-160(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 106 11 epilogue_begin is_stmt 0 # list.c3:106:11
	addq	$752, %rsp                      # imm = 0x2F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.LBB1_39:
	.cfi_def_cfa %rbp, 16
	.loc	1 90 24 is_stmt 1               # list.c3:90:24
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.1(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$90, (%rsp)
	callq	*(%rax)
.LBB1_40:
	.loc	1 0 24 is_stmt 0                # list.c3:0:24
	movq	-592(%rbp), %rcx                # 8-byte Reload
	movq	$8, -88(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -96(%rbp)
	movq	%rax, -120(%rbp)
	leaq	-88(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$2, -136(%rbp)
.Ltmp14:
	.loc	1 97 36 is_stmt 1               # list.c3:97:36
	leaq	.panic_msg.3(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.1(%rip), %r8
	movl	$9, %r9d
	leaq	-144(%rbp), %rax
	movl	$97, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp15:
.LBB1_41:
	.loc	1 0 36 is_stmt 0                # list.c3:0:36
	movq	-624(%rbp), %rax                # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$1, -216(%rbp)
.Ltmp16:
	.loc	1 100 26 is_stmt 1              # list.c3:100:26
	leaq	.panic_msg.5(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.1(%rip), %r8
	movl	$9, %r9d
	leaq	-224(%rbp), %rax
	movl	$100, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_42:
	.loc	1 0 26 is_stmt 0                # list.c3:0:26
	movq	-664(%rbp), %rcx                # 8-byte Reload
	movq	-656(%rbp), %rax                # 8-byte Reload
	movq	%rax, -344(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -352(%rbp)
	movq	%rax, -376(%rbp)
	leaq	-344(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movq	%rax, -360(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$2, -392(%rbp)
.Ltmp17:
	.loc	1 100 13                        # list.c3:100:13
	leaq	.panic_msg.6(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.1(%rip), %r8
	movl	$9, %r9d
	leaq	-400(%rbp), %rax
	movl	$100, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_43:
	.loc	1 0 13                          # list.c3:0:13
	movq	-672(%rbp), %rcx                # 8-byte Reload
	movq	$8, -408(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -416(%rbp)
	movq	%rax, -440(%rbp)
	leaq	-408(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	movq	%rax, -424(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	$2, -456(%rbp)
	.loc	1 100 26                        # list.c3:100:26
	leaq	.panic_msg.3(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.1(%rip), %r8
	movl	$9, %r9d
	leaq	-464(%rbp), %rax
	movl	$100, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp18:
.Lfunc_end1:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.to_format, .Lfunc_end1-std_collections_list$std.os.backtrace.Backtrace$.List.to_format
	.cfi_endproc
                                        # -- End function
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List.push","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List.push",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.push # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.push
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.push,@function
std_collections_list$std.os.backtrace.Backtrace$.List.push: # @"std_collections_list$std.os.backtrace.Backtrace$.List.push"
.Lfunc_begin2:
	.loc	1 110 0 is_stmt 1               # list.c3:110:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -112(%rbp)                # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
.Ltmp19:
	.loc	1 111 1 prologue_end            # list.c3:111:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB2_13
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	%rax, -32(%rbp)
	.loc	1 112 15 is_stmt 1              # list.c3:112:15
	movq	-32(%rbp), %rdi
	.loc	1 112 2 is_stmt 0               # list.c3:112:2
	movl	$1, %esi
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.reserve@PLT
	.loc	1 113 2 is_stmt 1               # list.c3:113:2
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	1 113 15 is_stmt 0              # list.c3:113:15
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	.loc	1 113 29                        # list.c3:113:29
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	addq	$1, %rdx
	movq	%rdx, -128(%rbp)                # 8-byte Spill
	.loc	1 437 11 is_stmt 1              # list.c3:437:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rdx, %rcx
	movb	%al, -113(%rbp)                 # 1-byte Spill
	je	.LBB2_3
# %bb.2:
	.loc	1 0 11 is_stmt 0                # list.c3:0:11
	movq	-136(%rbp), %rcx                # 8-byte Reload
	.loc	1 437 28                        # list.c3:437:28
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	8(%rcx), %rax
	setne	%al
	movb	%al, -113(%rbp)                 # 1-byte Spill
.LBB2_3:
	.loc	1 0 28                          # list.c3:0:28
	movb	-113(%rbp), %al                 # 1-byte Reload
	.loc	1 437 28                        # list.c3:437:28
	testb	$1, %al
	jne	.LBB2_5
# %bb.4:
	.loc	1 113 15 is_stmt 1              # list.c3:113:15
	leaq	.panic_msg.11(%rip), %rdi
	movl	$56, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB2_5:
	.loc	1 0 15 is_stmt 0                # list.c3:0:15
	movq	-136(%rbp), %rax                # 8-byte Reload
.Ltmp20:
	.loc	1 440 1 is_stmt 1               # list.c3:440:1
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_10
# %bb.6:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-128(%rbp), %rax                # 8-byte Reload
	movq	-136(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
.Ltmp21:
	.loc	1 437 11 is_stmt 1              # list.c3:437:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-16(%rbp), %rcx
	movb	%al, -145(%rbp)                 # 1-byte Spill
	je	.LBB2_8
# %bb.7:
	.loc	1 437 28 is_stmt 0              # list.c3:437:28
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	8(%rcx), %rax
	setne	%al
	movb	%al, -145(%rbp)                 # 1-byte Spill
.LBB2_8:
	.loc	1 0 28                          # list.c3:0:28
	movb	-145(%rbp), %al                 # 1-byte Reload
	.loc	1 437 28                        # list.c3:437:28
	testb	$1, %al
	jne	.LBB2_11
# %bb.9:
	.loc	1 437 11                        # list.c3:437:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$56, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.33(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$437, (%rsp)                    # imm = 0x1B5
	callq	*(%rax)
.Ltmp22:
.LBB2_10:
	.loc	1 439 22 is_stmt 1              # list.c3:439:22
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.33(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$439, (%rsp)                    # imm = 0x1B7
	callq	*(%rax)
.LBB2_11:
	.loc	1 441 17                        # list.c3:441:17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	1 442 37                        # list.c3:442:37
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	.loc	1 442 2 is_stmt 0               # list.c3:442:2
	callq	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change@PLT
	movq	-144(%rbp), %rax                # 8-byte Reload
	.loc	1 443 2 is_stmt 1               # list.c3:443:2
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rcx)
.Ltmp23:
	.loc	1 113 15                        # list.c3:113:15
	imulq	$88, -24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_14
# %bb.12:
	.loc	1 0 15 is_stmt 0                # list.c3:0:15
	movq	-168(%rbp), %rax                # 8-byte Reload
	movq	-104(%rbp), %rcx                # 8-byte Reload
	.loc	1 113 2                         # list.c3:113:2
	vmovdqu	(%rcx), %xmm0
	vmovdqu	16(%rcx), %xmm1
	vmovdqu	32(%rcx), %xmm2
	vmovdqu	48(%rcx), %xmm3
	vmovdqu	%xmm3, 48(%rax)
	vmovdqu	%xmm2, 32(%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm0, (%rax)
	movq	80(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	72(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	64(%rcx), %rcx
	movq	%rcx, 64(%rax)
	.loc	1 113 2 epilogue_begin          # list.c3:113:2
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_13:
	.cfi_def_cfa %rbp, 16
	.loc	1 110 19 is_stmt 1              # list.c3:110:19
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$110, (%rsp)
	callq	*(%rax)
.LBB2_14:
	.loc	1 0 19 is_stmt 0                # list.c3:0:19
	movq	-160(%rbp), %rcx                # 8-byte Reload
	movq	$8, -40(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -48(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-40(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -56(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$2, -88(%rbp)
	.loc	1 113 2 is_stmt 1               # list.c3:113:2
	leaq	.panic_msg.3(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	leaq	-96(%rbp), %rax
	movl	$113, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp24:
.Lfunc_end2:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.push, .Lfunc_end2-std_collections_list$std.os.backtrace.Backtrace$.List.push
	.cfi_endproc
                                        # -- End function
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List.len","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List.len",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.len # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.len
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.len,@function
std_collections_list$std.os.backtrace.Backtrace$.List.len: # @"std_collections_list$std.os.backtrace.Backtrace$.List.len"
.Lfunc_begin3:
	.loc	1 285 0                         # list.c3:285:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
.Ltmp25:
	.loc	1 286 1 prologue_end            # list.c3:286:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB3_2
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 287 9 is_stmt 1               # list.c3:287:9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc	1 287 9 epilogue_begin is_stmt 0 # list.c3:287:9
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 285 17 is_stmt 1              # list.c3:285:17
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.12(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$285, (%rsp)                    # imm = 0x11D
	callq	*(%rax)
.Ltmp26:
.Lfunc_end3:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.len, .Lfunc_end3-std_collections_list$std.os.backtrace.Backtrace$.List.len
	.cfi_endproc
                                        # -- End function
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List.free","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List.free",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.free # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.free
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.free,@function
std_collections_list$std.os.backtrace.Backtrace$.List.free: # @"std_collections_list$std.os.backtrace.Backtrace$.List.free"
.Lfunc_begin4:
	.loc	1 298 0                         # list.c3:298:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
.Ltmp27:
	.loc	1 299 1 prologue_end            # list.c3:299:1
	movq	$0, -56(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB4_23
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 300 7 is_stmt 1               # list.c3:300:7
	movq	-8(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, 16(%rcx)
	movb	%al, -65(%rbp)                  # 1-byte Spill
	je	.LBB4_3
# %bb.2:
	.loc	1 300 25 is_stmt 0              # list.c3:300:25
	movq	-8(%rbp), %rax
	leaq	std_collections_list$std.os.backtrace.Backtrace$.dummy.28586(%rip), %rcx
	cmpq	%rcx, 16(%rax)
	sete	%al
	movb	%al, -65(%rbp)                  # 1-byte Spill
.LBB4_3:
	.loc	1 0 25                          # list.c3:0:25
	movb	-65(%rbp), %cl                  # 1-byte Reload
	.loc	1 300 25                        # list.c3:300:25
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -66(%rbp)                  # 1-byte Spill
	jne	.LBB4_5
# %bb.4:
	.loc	1 300 58                        # list.c3:300:58
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	sete	%al
	movb	%al, -66(%rbp)                  # 1-byte Spill
.LBB4_5:
	.loc	1 0 58                          # list.c3:0:58
	movb	-66(%rbp), %al                  # 1-byte Reload
	.loc	1 300 58                        # list.c3:300:58
	testb	$1, %al
	jne	.LBB4_6
	jmp	.LBB4_7
.LBB4_6:
	.loc	1 300 79 epilogue_begin         # list.c3:300:79
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 79                          # list.c3:0:79
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.Ltmp28:
	.loc	1 447 26 is_stmt 1              # list.c3:447:26
	cmpq	$0, -16(%rbp)
	jne	.LBB4_9
# %bb.8:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$32, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.13(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$447, (%rsp)                    # imm = 0x1BF
	callq	*(%rax)
.Ltmp29:
.LBB4_9:
	.loc	1 449 7                         # list.c3:449:7
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB4_11
# %bb.10:
	.loc	1 449 28 is_stmt 0              # list.c3:449:28
	jmp	.LBB4_12
.LBB4_11:
	.loc	1 450 27 is_stmt 1              # list.c3:450:27
	movq	-16(%rbp), %rcx
	.loc	1 450 38 is_stmt 0              # list.c3:450:38
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	(%rcx), %rsi
	movq	8(%rax), %rdx
	.loc	1 450 2                         # list.c3:450:2
	callq	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change@PLT
.Ltmp30:
.LBB4_12:
	.loc	1 307 19 is_stmt 1              # list.c3:307:19
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	1 307 35 is_stmt 0              # list.c3:307:35
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.Ltmp31:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -40(%rbp)
	jne	.LBB4_14
# %bb.13:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB4_22
.LBB4_14:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB4_16
# %bb.15:
	leaq	.panic_msg.15(%rip), %rdi
	movl	$75, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.13(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB4_16:
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.Ltmp32:
	.loc	1 299 1 is_stmt 1               # list.c3:299:1
	cmpq	-56(%rbp), %rax
	je	.LBB4_18
# %bb.17:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-88(%rbp), %rax                 # 8-byte Reload
	.loc	1 299 1                         # list.c3:299:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jmp	.LBB4_19
.LBB4_18:
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
.LBB4_19:
	.loc	1 0 1                           # list.c3:0:1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -104(%rbp)                # 8-byte Spill
	.loc	1 299 1                         # list.c3:299:1
	cmpq	$0, %rax
	jne	.LBB4_21
# %bb.20:
	leaq	.panic_msg.17(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.13(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB4_21:
	.loc	1 0 1                           # list.c3:0:1
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	.loc	1 299 1                         # list.c3:299:1
	movq	-32(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB4_22:
	.loc	1 309 2 is_stmt 1               # list.c3:309:2
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	.loc	1 310 2                         # list.c3:310:2
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	.loc	1 311 2                         # list.c3:311:2
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc	1 311 2 epilogue_begin is_stmt 0 # list.c3:311:2
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_23:
	.cfi_def_cfa %rbp, 16
	.loc	1 298 19 is_stmt 1              # list.c3:298:19
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.13(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$298, (%rsp)                    # imm = 0x12A
	callq	*(%rax)
.Ltmp33:
.Lfunc_end4:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.free, .Lfunc_end4-std_collections_list$std.os.backtrace.Backtrace$.List.free
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity,@function
std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity: # @"std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity"
.Lfunc_begin5:
	.loc	1 361 0                         # list.c3:361:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp                      # imm = 0x1E0
	movq	%rdi, -296(%rbp)                # 8-byte Spill
	movq	%rsi, -288(%rbp)                # 8-byte Spill
.Ltmp34:
	.loc	1 362 1 prologue_end            # list.c3:362:1
	movq	$0, -224(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -168(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB5_78
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	-296(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	.loc	1 363 6 is_stmt 1               # list.c3:363:6
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# %bb.2:
	.loc	1 363 27 epilogue_begin is_stmt 0 # list.c3:363:27
	addq	$480, %rsp                      # imm = 0x1E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 364 6 is_stmt 1               # list.c3:364:6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB5_5
# %bb.4:
	.loc	1 364 43 epilogue_begin is_stmt 0 # list.c3:364:43
	addq	$480, %rsp                      # imm = 0x1E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_5:
	.cfi_def_cfa %rbp, 16
.Ltmp35:
	.loc	1 367 10 is_stmt 1              # list.c3:367:10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
# %bb.6:
	.loc	1 0 10 is_stmt 0                # list.c3:0:10
	movq	-24(%rbp), %rcx
	movq	%rcx, -304(%rbp)                # 8-byte Spill
	.loc	1 369 8 is_stmt 1               # list.c3:369:8
	leaq	std_collections_list$std.os.backtrace.Backtrace$.dummy.28586(%rip), %rax
	cmpq	%rcx, %rax
	jne	.LBB5_8
# %bb.7:
.Ltmp36:
	.loc	1 370 21                        # list.c3:370:21
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rax
	movq	%fs:0, %rcx
	addq	%rax, %rcx
	.loc	1 370 4 is_stmt 0               # list.c3:370:4
	movq	-8(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB5_12
.Ltmp37:
.LBB5_8:
	.loc	1 0 4                           # list.c3:0:4
	movq	-304(%rbp), %rcx                # 8-byte Reload
	.loc	1 371 8 is_stmt 1               # list.c3:371:8
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jne	.LBB5_10
# %bb.9:
.Ltmp38:
	.loc	1 372 21                        # list.c3:372:21
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rax
	movq	%fs:0, %rcx
	addq	%rax, %rcx
	.loc	1 372 4 is_stmt 0               # list.c3:372:4
	movq	-8(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB5_12
.LBB5_10:
	jmp	.LBB5_11
.Ltmp39:
.LBB5_11:
	.loc	1 374 4 is_stmt 1               # list.c3:374:4
	jmp	.LBB5_12
.Ltmp40:
.LBB5_12:
	.loc	1 0 4 is_stmt 0                 # list.c3:0:4
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.Ltmp41:
	.loc	1 447 26 is_stmt 1              # list.c3:447:26
	cmpq	$0, -32(%rbp)
	jne	.LBB5_14
# %bb.13:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$32, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$447, (%rsp)                    # imm = 0x1BF
	callq	*(%rax)
.Ltmp42:
.LBB5_14:
	.loc	1 449 7                         # list.c3:449:7
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB5_16
# %bb.15:
	.loc	1 449 28 is_stmt 0              # list.c3:449:28
	jmp	.LBB5_17
.LBB5_16:
	.loc	1 450 27 is_stmt 1              # list.c3:450:27
	movq	-32(%rbp), %rcx
	.loc	1 450 38 is_stmt 0              # list.c3:450:38
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	(%rcx), %rsi
	movq	8(%rax), %rdx
	.loc	1 450 2                         # list.c3:450:2
	callq	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change@PLT
.Ltmp43:
.LBB5_17:
	.loc	1 0 2                           # list.c3:0:2
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.Ltmp44:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	3 997 17 is_stmt 1              # math.c3:997:17
	movq	$1, -48(%rbp)
.LBB5_18:                               # =>This Inner Loop Header: Depth=1
.Ltmp45:
	.loc	3 998 9                         # math.c3:998:9
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB5_20
# %bb.19:                               #   in Loop: Header=BB5_18 Depth=1
	.loc	3 998 16 is_stmt 0              # math.c3:998:16
	movq	-48(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB5_18
.Ltmp46:
.LBB5_20:
	.loc	3 999 9 is_stmt 1               # math.c3:999:9
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.Ltmp47:
	.loc	1 383 37                        # list.c3:383:37
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc	1 383 53 is_stmt 0              # list.c3:383:53
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	.loc	1 383 67                        # list.c3:383:67
	imulq	$88, -16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)
.Ltmp48:
	.loc	2 108 6 is_stmt 1               # mem_allocator.c3:108:6
	cmpq	$0, -120(%rbp)
	jne	.LBB5_32
# %bb.21:
	.loc	2 0 6 is_stmt 0                 # mem_allocator.c3:0:6
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -152(%rbp)
.Ltmp49:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -152(%rbp)
	jne	.LBB5_23
# %bb.22:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB5_31
.LBB5_23:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-152(%rbp), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB5_25
# %bb.24:
	leaq	.panic_msg.15(%rip), %rdi
	movl	$75, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB5_25:
	movq	-136(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
.Ltmp50:
	.loc	1 362 1 is_stmt 1               # list.c3:362:1
	cmpq	-168(%rbp), %rax
	je	.LBB5_27
# %bb.26:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-320(%rbp), %rax                # 8-byte Reload
	.loc	1 362 1                         # list.c3:362:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%rax, -328(%rbp)                # 8-byte Spill
	jmp	.LBB5_28
.LBB5_27:
	movq	-160(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
.LBB5_28:
	.loc	1 0 1                           # list.c3:0:1
	movq	-328(%rbp), %rax                # 8-byte Reload
	movq	%rax, -336(%rbp)                # 8-byte Spill
	.loc	1 362 1                         # list.c3:362:1
	cmpq	$0, %rax
	jne	.LBB5_30
# %bb.29:
	leaq	.panic_msg.17(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB5_30:
	.loc	1 0 1                           # list.c3:0:1
	movq	-336(%rbp), %rax                # 8-byte Reload
	movq	-312(%rbp), %rsi                # 8-byte Reload
	.loc	1 362 1                         # list.c3:362:1
	movq	-144(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB5_31:
.Ltmp51:
	.loc	2 111 10 is_stmt 1              # mem_allocator.c3:111:10
	movq	$0, -128(%rbp)
	jmp	.LBB5_71
.Ltmp52:
.LBB5_32:
	.loc	2 113 6                         # mem_allocator.c3:113:6
	cmpq	$0, -112(%rbp)
	jne	.LBB5_51
# %bb.33:
	.loc	2 113 37 is_stmt 0              # mem_allocator.c3:113:37
	movq	-120(%rbp), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	.loc	2 38 12 is_stmt 1               # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -337(%rbp)                 # 1-byte Spill
	jne	.LBB5_37
# %bb.34:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -176(%rbp)
.Ltmp53:
	.loc	3 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-176(%rbp), %rcx
	movb	%al, -353(%rbp)                 # 1-byte Spill
	je	.LBB5_36
# %bb.35:
	.loc	3 992 20 is_stmt 0              # math.c3:992:20
	movq	-176(%rbp), %rax
	.loc	3 992 25                        # math.c3:992:25
	movq	-176(%rbp), %rcx
	subq	$1, %rcx
	.loc	3 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	3 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -353(%rbp)                 # 1-byte Spill
.LBB5_36:
	.loc	3 0 19                          # math.c3:0:19
	movb	-353(%rbp), %al                 # 1-byte Reload
	movb	%al, -337(%rbp)                 # 1-byte Spill
.LBB5_37:
	movb	-337(%rbp), %al                 # 1-byte Reload
	.loc	3 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB5_39
.Ltmp54:
# %bb.38:
	.loc	2 113 19 is_stmt 1              # mem_allocator.c3:113:19
	leaq	.panic_msg.19(%rip), %rdi
	movl	$65, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB5_39:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB5_41
	jmp	.LBB5_40
.LBB5_40:
	leaq	.panic_msg.20(%rip), %rdi
	movl	$80, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB5_41:
	.loc	2 0 19 is_stmt 0                # mem_allocator.c3:0:19
	movq	-352(%rbp), %rcx                # 8-byte Reload
	.loc	2 113 19                        # mem_allocator.c3:113:19
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB5_43
# %bb.42:
	leaq	.panic_msg.21(%rip), %rdi
	movl	$59, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB5_43:
	movq	-96(%rbp), %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
.Ltmp55:
	.loc	1 362 1 is_stmt 1               # list.c3:362:1
	cmpq	-192(%rbp), %rax
	je	.LBB5_45
# %bb.44:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-368(%rbp), %rax                # 8-byte Reload
	.loc	1 362 1                         # list.c3:362:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-368(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%rax, -376(%rbp)                # 8-byte Spill
	jmp	.LBB5_46
.LBB5_45:
	movq	-184(%rbp), %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
.LBB5_46:
	.loc	1 0 1                           # list.c3:0:1
	movq	-376(%rbp), %rax                # 8-byte Reload
	movq	%rax, -384(%rbp)                # 8-byte Spill
	.loc	1 362 1                         # list.c3:362:1
	cmpq	$0, %rax
	jne	.LBB5_48
# %bb.47:
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB5_48:
	.loc	1 0 1                           # list.c3:0:1
	movq	-384(%rbp), %rax                # 8-byte Reload
	movq	-352(%rbp), %rdx                # 8-byte Reload
	movq	-104(%rbp), %rsi
.Ltmp56:
	.loc	2 113 19 is_stmt 1              # mem_allocator.c3:113:19
	leaq	-200(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB5_50
# %bb.49:
	.loc	2 0 19 is_stmt 0                # mem_allocator.c3:0:19
	movq	-392(%rbp), %rax                # 8-byte Reload
	.loc	2 113 19                        # mem_allocator.c3:113:19
	movq	%rax, -88(%rbp)
	jmp	.LBB5_72
.LBB5_50:
	movq	-200(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB5_71
.LBB5_51:
	.loc	2 114 26 is_stmt 1              # mem_allocator.c3:114:26
	movq	-112(%rbp), %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	.loc	2 114 31 is_stmt 0              # mem_allocator.c3:114:31
	movq	-120(%rbp), %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	.loc	2 48 12 is_stmt 1               # mem_allocator.c3:48:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -393(%rbp)                 # 1-byte Spill
	jne	.LBB5_55
# %bb.52:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -208(%rbp)
.Ltmp57:
	.loc	3 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-208(%rbp), %rcx
	movb	%al, -417(%rbp)                 # 1-byte Spill
	je	.LBB5_54
# %bb.53:
	.loc	3 992 20 is_stmt 0              # math.c3:992:20
	movq	-208(%rbp), %rax
	.loc	3 992 25                        # math.c3:992:25
	movq	-208(%rbp), %rcx
	subq	$1, %rcx
	.loc	3 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	3 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -417(%rbp)                 # 1-byte Spill
.LBB5_54:
	.loc	3 0 19                          # math.c3:0:19
	movb	-417(%rbp), %al                 # 1-byte Reload
	movb	%al, -393(%rbp)                 # 1-byte Spill
.LBB5_55:
	movb	-393(%rbp), %al                 # 1-byte Reload
	.loc	3 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB5_57
.Ltmp58:
# %bb.56:
	.loc	2 114 9 is_stmt 1               # mem_allocator.c3:114:9
	leaq	.panic_msg.19(%rip), %rdi
	movl	$65, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB5_57:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB5_59
	jmp	.LBB5_58
.LBB5_58:
	leaq	.panic_msg.20(%rip), %rdi
	movl	$80, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB5_59:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-416(%rbp), %rax                # 8-byte Reload
	.loc	2 114 9                         # mem_allocator.c3:114:9
	cmpq	$0, %rax
	jne	.LBB5_61
# %bb.60:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$32, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB5_61:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-408(%rbp), %rcx                # 8-byte Reload
	.loc	2 114 9                         # mem_allocator.c3:114:9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB5_63
# %bb.62:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$33, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB5_63:
	movq	-96(%rbp), %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
.Ltmp59:
	.loc	1 362 1 is_stmt 1               # list.c3:362:1
	cmpq	-224(%rbp), %rax
	je	.LBB5_65
# %bb.64:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-432(%rbp), %rax                # 8-byte Reload
	.loc	1 362 1                         # list.c3:362:1
	movq	16(%rax), %rdi
	movq	($sel.resize)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-432(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%rax, -440(%rbp)                # 8-byte Spill
	jmp	.LBB5_66
.LBB5_65:
	movq	-216(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
.LBB5_66:
	.loc	1 0 1                           # list.c3:0:1
	movq	-440(%rbp), %rax                # 8-byte Reload
	movq	%rax, -448(%rbp)                # 8-byte Spill
	.loc	1 362 1                         # list.c3:362:1
	cmpq	$0, %rax
	jne	.LBB5_68
# %bb.67:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$43, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB5_68:
	.loc	1 0 1                           # list.c3:0:1
	movq	-448(%rbp), %rax                # 8-byte Reload
	movq	-408(%rbp), %rcx                # 8-byte Reload
	movq	-416(%rbp), %rdx                # 8-byte Reload
	movq	-104(%rbp), %rsi
.Ltmp60:
	.loc	2 114 9 is_stmt 1               # mem_allocator.c3:114:9
	leaq	-232(%rbp), %rdi
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB5_70
# %bb.69:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-456(%rbp), %rax                # 8-byte Reload
	.loc	2 114 9                         # mem_allocator.c3:114:9
	movq	%rax, -88(%rbp)
	jmp	.LBB5_72
.LBB5_70:
	movq	-232(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB5_71:
	jmp	.LBB5_73
.LBB5_72:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -248(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$1, -264(%rbp)
.Ltmp61:
	.loc	2 103 9 is_stmt 1               # mem_allocator.c3:103:9
	leaq	.panic_msg.26(%rip), %rdi
	movl	$36, %esi
	leaq	.file.16(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	leaq	-272(%rbp), %rax
	movl	$103, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_73:
	movq	-128(%rbp), %rcx
.Ltmp62:
	.loc	1 383 3                         # list.c3:383:3
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	.loc	1 385 2                         # list.c3:385:2
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)
.Ltmp63:
	.loc	1 456 28                        # list.c3:456:28
	cmpq	$0, -280(%rbp)
	jne	.LBB5_75
# %bb.74:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$32, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$456, (%rsp)                    # imm = 0x1C8
	callq	*(%rax)
.LBB5_75:
	.loc	1 454 11                        # list.c3:454:11
	movq	-280(%rbp), %rcx
	.loc	1 387 2                         # list.c3:387:2
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	8(%rcx), %rax
	jb	.LBB5_77
# %bb.76:
	leaq	.panic_msg.27(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$387, (%rsp)                    # imm = 0x183
	callq	*(%rax)
.Ltmp64:
.LBB5_77:
	.loc	1 458 27                        # list.c3:458:27
	movq	-280(%rbp), %rcx
	.loc	1 458 42 is_stmt 0              # list.c3:458:42
	movq	-280(%rbp), %rax
	movq	-280(%rbp), %rdi
	movq	8(%rcx), %rsi
	movq	(%rax), %rdx
	.loc	1 458 2                         # list.c3:458:2
	callq	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change@PLT
	.loc	1 458 2 epilogue_begin          # list.c3:458:2
	addq	$480, %rsp                      # imm = 0x1E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp65:
.LBB5_78:
	.cfi_def_cfa %rbp, 16
	.loc	1 361 30 is_stmt 1              # list.c3:361:30
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.18(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$361, (%rsp)                    # imm = 0x169
	callq	*(%rax)
.Ltmp66:
.Lfunc_end5:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity, .Lfunc_end5-std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity
	.cfi_endproc
                                        # -- End function
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List.get_ref","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List.get_ref",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.get_ref # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.get_ref
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.get_ref,@function
std_collections_list$std.os.backtrace.Backtrace$.List.get_ref: # @"std_collections_list$std.os.backtrace.Backtrace$.List.get_ref"
.Lfunc_begin6:
	.loc	1 401 0                         # list.c3:401:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movq	%rsi, -24(%rbp)                 # 8-byte Spill
.Ltmp67:
	.loc	1 402 1 prologue_end            # list.c3:402:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB6_4
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
.Ltmp68:
	.loc	1 399 11 is_stmt 1              # list.c3:399:11
	movq	-16(%rbp), %rax
	.loc	1 399 19 is_stmt 0              # list.c3:399:19
	movq	-8(%rbp), %rcx
	.loc	1 399 11                        # list.c3:399:11
	cmpq	(%rcx), %rax
	jb	.LBB6_3
# %bb.2:
	leaq	.panic_msg.29(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %r9d
	leaq	.func.28(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$399, (%rsp)                    # imm = 0x18F
	callq	*(%rax)
.Ltmp69:
.LBB6_3:
	.loc	1 403 10 is_stmt 1              # list.c3:403:10
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	.loc	1 403 23 is_stmt 0              # list.c3:403:23
	imulq	$88, -16(%rbp), %rcx
	addq	%rcx, %rax
	.loc	1 403 23 epilogue_begin         # list.c3:403:23
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 401 23 is_stmt 1              # list.c3:401:23
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %r9d
	leaq	.func.28(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$401, (%rsp)                    # imm = 0x191
	callq	*(%rax)
.Ltmp70:
.Lfunc_end6:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.get_ref, .Lfunc_end6-std_collections_list$std.os.backtrace.Backtrace$.List.get_ref
	.cfi_endproc
                                        # -- End function
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List.reserve","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List.reserve",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.reserve # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.reserve
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.reserve,@function
std_collections_list$std.os.backtrace.Backtrace$.List.reserve: # @"std_collections_list$std.os.backtrace.Backtrace$.List.reserve"
.Lfunc_begin7:
	.loc	1 414 0                         # list.c3:414:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
.Ltmp71:
	.loc	1 415 1 prologue_end            # list.c3:415:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB7_12
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	.loc	1 416 17 is_stmt 1              # list.c3:416:17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc	1 417 6                         # list.c3:417:6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB7_3
# %bb.2:
	.loc	1 417 39 epilogue_begin is_stmt 0 # list.c3:417:39
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 419 9 is_stmt 1               # list.c3:419:9
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -24(%rbp)
	jb	.LBB7_5
# %bb.4:
	leaq	.panic_msg.31(%rip), %rdi
	movl	$40, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %r9d
	leaq	.func.30(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$419, (%rsp)                    # imm = 0x1A3
	callq	*(%rax)
.LBB7_5:
	.loc	1 420 21                        # list.c3:420:21
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_7
# %bb.6:
	.loc	1 420 42 is_stmt 0              # list.c3:420:42
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc	1 420 37                        # list.c3:420:37
	shlq	%rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:
	.loc	1 420 58                        # list.c3:420:58
	movl	$16, %eax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	jmp	.LBB7_8
.LBB7_8:
	.loc	1 0 58                          # list.c3:0:58
	movq	-56(%rbp), %rax                 # 8-byte Reload
	.loc	1 420 58                        # list.c3:420:58
	movq	%rax, -32(%rbp)
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
.Ltmp72:
	.loc	1 421 9 is_stmt 1               # list.c3:421:9
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	.loc	1 421 34 is_stmt 0              # list.c3:421:34
	movq	-32(%rbp), %rax
	shlq	%rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_9
.Ltmp73:
.LBB7_11:
	.loc	1 422 23 is_stmt 1              # list.c3:422:23
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	.loc	1 422 2 is_stmt 0               # list.c3:422:2
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity
	.loc	1 422 2 epilogue_begin          # list.c3:422:2
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_12:
	.cfi_def_cfa %rbp, 16
	.loc	1 414 22 is_stmt 1              # list.c3:414:22
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %r9d
	leaq	.func.30(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$414, (%rsp)                    # imm = 0x19E
	callq	*(%rax)
.Ltmp74:
.Lfunc_end7:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.reserve, .Lfunc_end7-std_collections_list$std.os.backtrace.Backtrace$.List.reserve
	.cfi_endproc
                                        # -- End function
	.section	".text.std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change","axG",@progbits,"std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change",comdat
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change
	.p2align	4, 0x90
	.type	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change,@function
std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change: # @"std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change"
.Lfunc_begin8:
	.loc	1 425 0                         # list.c3:425:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	movq	%rdx, -32(%rbp)                 # 8-byte Spill
.Ltmp75:
	.loc	1 426 1 prologue_end            # list.c3:426:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB8_4
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	.loc	1 427 6 is_stmt 1               # list.c3:427:6
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_3
# %bb.2:
	.loc	1 427 34 epilogue_begin is_stmt 0 # list.c3:427:34
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 428 2 epilogue_begin is_stmt 1 # list.c3:428:2
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 425 34                        # list.c3:425:34
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.32(%rip), %r8
	movl	$19, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$425, (%rsp)                    # imm = 0x1A9
	callq	*(%rax)
.Ltmp76:
.Lfunc_end8:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change, .Lfunc_end8-std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std_collections_list$std.os.backtrace.Backtrace$.List.set_size
	.type	std_collections_list$std.os.backtrace.Backtrace$.List.set_size,@function
std_collections_list$std.os.backtrace.Backtrace$.List.set_size: # @"std_collections_list$std.os.backtrace.Backtrace$.List.set_size"
.Lfunc_begin9:
	.loc	1 439 0                         # list.c3:439:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -32(%rbp)                 # 8-byte Spill
.Ltmp77:
	.loc	1 440 1 prologue_end            # list.c3:440:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB9_6
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # list.c3:0:1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
.Ltmp78:
	.loc	1 437 11 is_stmt 1              # list.c3:437:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-16(%rbp), %rcx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	je	.LBB9_3
# %bb.2:
	.loc	1 437 28 is_stmt 0              # list.c3:437:28
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	8(%rcx), %rax
	setne	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB9_3:
	.loc	1 0 28                          # list.c3:0:28
	movb	-41(%rbp), %al                  # 1-byte Reload
	.loc	1 437 28                        # list.c3:437:28
	testb	$1, %al
	jne	.LBB9_5
# %bb.4:
	.loc	1 437 11                        # list.c3:437:11
	leaq	.panic_msg.11(%rip), %rdi
	movl	$56, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.33(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$437, (%rsp)                    # imm = 0x1B5
	callq	*(%rax)
.Ltmp79:
.LBB9_5:
	.loc	1 441 17 is_stmt 1              # list.c3:441:17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	1 442 37                        # list.c3:442:37
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	.loc	1 442 2 is_stmt 0               # list.c3:442:2
	callq	std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change@PLT
	.loc	1 443 2 is_stmt 1               # list.c3:443:2
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	1 444 9                         # list.c3:444:9
	movq	-24(%rbp), %rax
	.loc	1 444 9 epilogue_begin is_stmt 0 # list.c3:444:9
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_6:
	.cfi_def_cfa %rbp, 16
	.loc	1 439 22 is_stmt 1              # list.c3:439:22
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.33(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$439, (%rsp)                    # imm = 0x1B7
	callq	*(%rax)
.Ltmp80:
.Lfunc_end9:
	.size	std_collections_list$std.os.backtrace.Backtrace$.List.set_size, .Lfunc_end9-std_collections_list$std.os.backtrace.Backtrace$.List.set_size
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB10_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB10_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB10_1
.Lfunc_end10:
	.size	.dyn_search, .Lfunc_end10-.dyn_search
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .c3_dynamic_register
	.type	.c3_dynamic_register,@function
.c3_dynamic_register:                   # @.c3_dynamic_register
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:
	movq	($ct.std_collections_list$std.os.backtrace.Backtrace$.List)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB11_3
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB11_1
# %bb.2:
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB11_3:
	retq
.Lfunc_end11:
	.size	.c3_dynamic_register, .Lfunc_end11-.c3_dynamic_register
	.cfi_endproc
                                        # -- End function
	.type	$ct.std_collections_list$std.os.backtrace.Backtrace$.List,@object # @"$ct.std_collections_list$std.os.backtrace.Backtrace$.List"
	.section	".data.$ct.std_collections_list$std.os.backtrace.Backtrace$.List","awG",@progbits,"$ct.std_collections_list$std.os.backtrace.Backtrace$.List",comdat
	.weak	$ct.std_collections_list$std.os.backtrace.Backtrace$.List
	.p2align	3, 0x0
$ct.std_collections_list$std.os.backtrace.Backtrace$.List:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	40                              # 0x28
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.size	$ct.std_collections_list$std.os.backtrace.Backtrace$.List, 48

	.type	std_collections_list$std.os.backtrace.Backtrace$.dummy.28586,@object # @"std_collections_list$std.os.backtrace.Backtrace$.dummy.28586"
	.local	std_collections_list$std.os.backtrace.Backtrace$.dummy.28586
	.comm	std_collections_list$std.os.backtrace.Backtrace$.dummy.28586,4,4
	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Reference parameter 'self' was passed a null pointer argument."
	.size	.panic_msg, 63

	.type	.file,@object                   # @.file
.file:
	.asciz	"list.c3"
	.size	.file, 8

	.type	.func,@object                   # @.func
.func:
	.asciz	"init"
	.size	.func, 5

	.type	.func.1,@object                 # @.func.1
.func.1:
	.asciz	"to_format"
	.size	.func.1, 10

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[]"
	.size	.L.str, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"[%s]"
	.size	.L.str.2, 5

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

	.type	.panic_msg.3,@object            # @.panic_msg.3
	.section	.rodata,"a",@progbits
.panic_msg.3:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.3, 95

	.type	$ct.std.os.backtrace.Backtrace,@object # @"$ct.std.os.backtrace.Backtrace"
	.section	".data.$ct.std.os.backtrace.Backtrace","awG",@progbits,"$ct.std.os.backtrace.Backtrace",comdat
	.weak	$ct.std.os.backtrace.Backtrace
	.p2align	3, 0x0
$ct.std.os.backtrace.Backtrace:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.size	$ct.std.os.backtrace.Backtrace, 48

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"["
	.size	.L.str.4, 2

	.type	$ct.long,@object                # @"$ct.long"
	.section	".data.$ct.long","awG",@progbits,"$ct.long",comdat
	.weak	$ct.long
	.p2align	3, 0x0
$ct.long:
	.byte	2                               # 0x2
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.long, 48

	.type	.panic_msg.5,@object            # @.panic_msg.5
	.section	.rodata,"a",@progbits
.panic_msg.5:
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.5, 44

	.type	.panic_msg.6,@object            # @.panic_msg.6
.panic_msg.6:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.6, 60

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	", "
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"]"
	.size	.L.str.9, 2

	.type	.func.10,@object                # @.func.10
	.section	.rodata,"a",@progbits
.func.10:
	.asciz	"push"
	.size	.func.10, 5

	.type	.panic_msg.11,@object           # @.panic_msg.11
.panic_msg.11:
	.asciz	"@require \"new_size == 0 || self.capacity != 0\" violated."
	.size	.panic_msg.11, 57

	.type	.func.12,@object                # @.func.12
.func.12:
	.asciz	"len"
	.size	.func.12, 4

	.type	.func.13,@object                # @.func.13
.func.13:
	.asciz	"free"
	.size	.func.13, 5

	.type	.panic_msg.14,@object           # @.panic_msg.14
.panic_msg.14:
	.asciz	"Called a method on a null value."
	.size	.panic_msg.14, 33

	.type	$sel.release,@object            # @"$sel.release"
	.section	".rodata.$sel.release","aG",@progbits,"$sel.release",comdat
	.weak	$sel.release
$sel.release:
	.asciz	"release"
	.size	$sel.release, 8

	.type	.panic_msg.15,@object           # @.panic_msg.15
	.section	.rodata,"a",@progbits
.panic_msg.15:
	.asciz	"@require \"ptr != null\" violated: 'Empty pointers should never be released'."
	.size	.panic_msg.15, 76

	.type	.file.16,@object                # @.file.16
.file.16:
	.asciz	"mem_allocator.c3"
	.size	.file.16, 17

	.type	.panic_msg.17,@object           # @.panic_msg.17
.panic_msg.17:
	.asciz	"No method 'release' could be found on target"
	.size	.panic_msg.17, 45

	.type	.func.18,@object                # @.func.18
.func.18:
	.asciz	"ensure_capacity"
	.size	.func.18, 16

	.type	$sel.acquire,@object            # @"$sel.acquire"
	.section	".rodata.$sel.acquire","aG",@progbits,"$sel.acquire",comdat
	.weak	$sel.acquire
$sel.acquire:
	.asciz	"acquire"
	.size	$sel.acquire, 8

	.type	.panic_msg.19,@object           # @.panic_msg.19
	.section	.rodata,"a",@progbits
.panic_msg.19:
	.asciz	"@require \"!alignment || math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.19, 66

	.type	.panic_msg.20,@object           # @.panic_msg.20
.panic_msg.20:
	.asciz	"@require \"alignment <= mem::MAX_MEMORY_ALIGNMENT\" violated: 'alignment too big'."
	.size	.panic_msg.20, 81

	.type	.panic_msg.21,@object           # @.panic_msg.21
.panic_msg.21:
	.asciz	"@require \"size > 0\" violated: 'The size must be 1 or more'."
	.size	.panic_msg.21, 60

	.type	.panic_msg.22,@object           # @.panic_msg.22
.panic_msg.22:
	.asciz	"No method 'acquire' could be found on target"
	.size	.panic_msg.22, 45

	.type	$sel.resize,@object             # @"$sel.resize"
	.section	".rodata.$sel.resize","aG",@progbits,"$sel.resize",comdat
	.weak	$sel.resize
$sel.resize:
	.asciz	"resize"
	.size	$sel.resize, 7

	.type	.panic_msg.23,@object           # @.panic_msg.23
	.section	.rodata,"a",@progbits
.panic_msg.23:
	.asciz	"@require \"ptr != null\" violated."
	.size	.panic_msg.23, 33

	.type	.panic_msg.24,@object           # @.panic_msg.24
.panic_msg.24:
	.asciz	"@require \"new_size > 0\" violated."
	.size	.panic_msg.24, 34

	.type	.panic_msg.25,@object           # @.panic_msg.25
.panic_msg.25:
	.asciz	"No method 'resize' could be found on target"
	.size	.panic_msg.25, 44

	.type	$ct.fault,@object               # @"$ct.fault"
	.section	".data.$ct.fault","awG",@progbits,"$ct.fault",comdat
	.weak	$ct.fault
	.p2align	3, 0x0
$ct.fault:
	.byte	6                               # 0x6
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.fault, 48

	.type	.panic_msg.26,@object           # @.panic_msg.26
	.section	.rodata,"a",@progbits
.panic_msg.26:
	.asciz	"Unexpected fault '%s' was unwrapped!"
	.size	.panic_msg.26, 37

	.type	.panic_msg.27,@object           # @.panic_msg.27
.panic_msg.27:
	.asciz	"@require \"self.capacity > 0\" violated."
	.size	.panic_msg.27, 39

	.type	.func.28,@object                # @.func.28
.func.28:
	.asciz	"get_ref"
	.size	.func.28, 8

	.type	.panic_msg.29,@object           # @.panic_msg.29
.panic_msg.29:
	.asciz	"@require \"index < self.size\" violated: 'Access out of bounds'."
	.size	.panic_msg.29, 63

	.type	.func.30,@object                # @.func.30
.func.30:
	.asciz	"reserve"
	.size	.func.30, 8

	.type	.panic_msg.31,@object           # @.panic_msg.31
.panic_msg.31:
	.asciz	"Assert \"new_size < usz.max / 2U\" failed."
	.size	.panic_msg.31, 41

	.type	.func.32,@object                # @.func.32
.func.32:
	.asciz	"_update_size_change"
	.size	.func.32, 20

	.type	.func.33,@object                # @.func.33
.func.33:
	.asciz	"set_size"
	.size	.func.33, 9

	.type	$ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format,@object # @"$ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format"
	.section	".data.$ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format","awG",@progbits,"$ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format",comdat
	.weak	$ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format
	.p2align	3, 0x0
$ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format:
	.quad	std_collections_list$std.os.backtrace.Backtrace$.List.to_format
	.quad	($sel.to_format)
	.quad	-1
	.size	$ct.dyn.std_collections_list$std.os.backtrace.Backtrace$.List.to_format, 24

	.type	$sel.to_format,@object          # @"$sel.to_format"
	.section	".rodata.$sel.to_format","aG",@progbits,"$sel.to_format",comdat
	.weak	$sel.to_format
$sel.to_format:
	.asciz	"to_format"
	.size	$sel.to_format, 10

	.section	.init_array.1,"aw",@init_array
	.p2align	3, 0x0
	.quad	.c3_dynamic_register
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xb:0x6ac DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x1a DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std_collections_list$std.os.backtrace.Backtrace$.dummy.28586
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x44:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x4b:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string49                 # DW_AT_linkage_name
	.long	.Linfo_string50                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	358                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x68:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	433                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x93:0x8c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string51                 # DW_AT_linkage_name
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1537                            # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0xb0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xbe:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	1553                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0xcc:0x52 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	7                               # Abbrev [7] 0xd1:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	.Linfo_string79                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe1:0x3c DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	7                               # Abbrev [7] 0xe6:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230~"
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf6:0x26 DW_TAG_lexical_block
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	7                               # Abbrev [7] 0xfb:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220~"
	.long	.Linfo_string81                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x10b:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260}"
	.long	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	503                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x11f:0x37 DW_TAG_subprogram
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	439                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	342                             # DW_AT_type
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x130:0xc DW_TAG_formal_parameter
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	439                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x13c:0xc DW_TAG_formal_parameter
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	439                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x148:0xd DW_TAG_variable
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	441                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x156:0x9 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	3                               # Abbrev [3] 0x15f:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x166:0xd DW_TAG_pointer_type
	.long	371                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	13                              # Abbrev [13] 0x173:0x3e DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	14                              # Abbrev [14] 0x17c:0xd DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	342                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x189:0xd DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	342                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x196:0xd DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	433                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x1a3:0xd DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1b1:0x1e DW_TAG_structure_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	16                              # Abbrev [16] 0x1b8:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x1c3:0xb DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	472                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x1cf:0x9 DW_TAG_pointer_type
	.long	.Linfo_string15                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	3                               # Abbrev [3] 0x1d8:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x1df:0xd DW_TAG_pointer_type
	.long	492                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	18                              # Abbrev [18] 0x1ec:0xb DW_TAG_typedef
	.long	503                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1f7:0x65 DW_TAG_structure_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	14                              # Abbrev [14] 0x200:0xd DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	604                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x20d:0xd DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	613                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x21a:0xd DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	613                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x227:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	613                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x234:0xd DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	56                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x241:0xd DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	433                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	64                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x24e:0xd DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	679                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x25c:0x9 DW_TAG_typedef
	.long	351                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	11                              # Abbrev [11] 0x265:0x9 DW_TAG_typedef
	.long	622                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	15                              # Abbrev [15] 0x26e:0x1e DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	16                              # Abbrev [16] 0x275:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	652                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x280:0xb DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	342                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x28c:0xd DW_TAG_pointer_type
	.long	665                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	3                               # Abbrev [3] 0x299:0x7 DW_TAG_base_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2a0:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2a7:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x2ae:0x63 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string55                 # DW_AT_linkage_name
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x2c7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2d5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	492                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x2e3:0x2d DW_TAG_inlined_subroutine
	.long	287                             # DW_AT_abstract_origin
	.quad	.Ltmp20                         # DW_AT_low_pc
	.long	.Ltmp23-.Ltmp20                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	113                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x2f7:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	304                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x2ff:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	316                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x307:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	328                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x311:0x2e DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string57                 # DW_AT_linkage_name
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	342                             # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x32f:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x33f:0xd DW_TAG_subprogram
	.long	.Linfo_string41                 # DW_AT_linkage_name
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	447                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x34c:0xc DW_TAG_subprogram
	.long	.Linfo_string42                 # DW_AT_linkage_name
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x358:0x54 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	298                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x372:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	298                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x381:0x15 DW_TAG_inlined_subroutine
	.long	831                             # DW_AT_abstract_origin
	.quad	.Ltmp28                         # DW_AT_low_pc
	.long	.Ltmp30-.Ltmp28                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	302                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x396:0x15 DW_TAG_inlined_subroutine
	.long	844                             # DW_AT_abstract_origin
	.quad	.Ltmp31                         # DW_AT_low_pc
	.long	.Ltmp32-.Ltmp31                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	307                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x3ac:0xd DW_TAG_subprogram
	.long	.Linfo_string41                 # DW_AT_linkage_name
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	447                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	29                              # Abbrev [29] 0x3b9:0x1b DW_TAG_subprogram
	.long	.Linfo_string43                 # DW_AT_linkage_name
	.long	.Linfo_string43                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	995                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x3c6:0xd DW_TAG_variable
	.long	.Linfo_string44                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	997                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x3d4:0xc DW_TAG_subprogram
	.long	.Linfo_string45                 # DW_AT_linkage_name
	.long	.Linfo_string45                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x3e0:0xc DW_TAG_subprogram
	.long	.Linfo_string46                 # DW_AT_linkage_name
	.long	.Linfo_string46                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x3ec:0xc DW_TAG_subprogram
	.long	.Linfo_string42                 # DW_AT_linkage_name
	.long	.Linfo_string42                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x3f8:0xd DW_TAG_subprogram
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.long	.Linfo_string47                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x405:0xd DW_TAG_subprogram
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.long	.Linfo_string47                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x412:0xd DW_TAG_subprogram
	.long	.Linfo_string48                 # DW_AT_linkage_name
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	456                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x41f:0xd8 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string59                 # DW_AT_linkage_name
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	24                              # Abbrev [24] 0x439:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x448:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x457:0x15 DW_TAG_inlined_subroutine
	.long	940                             # DW_AT_abstract_origin
	.quad	.Ltmp41                         # DW_AT_low_pc
	.long	.Ltmp43-.Ltmp41                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	377                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x46c:0x1e DW_TAG_inlined_subroutine
	.long	953                             # DW_AT_abstract_origin
	.quad	.Ltmp44                         # DW_AT_low_pc
	.long	.Ltmp47-.Ltmp44                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	379                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	22                              # Abbrev [22] 0x481:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	966                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x48a:0x57 DW_TAG_inlined_subroutine
	.long	992                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	383                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x497:0x49 DW_TAG_inlined_subroutine
	.long	980                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	103                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x4a3:0x14 DW_TAG_inlined_subroutine
	.long	1004                            # DW_AT_abstract_origin
	.quad	.Ltmp49                         # DW_AT_low_pc
	.long	.Ltmp50-.Ltmp49                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	110                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x4b7:0x14 DW_TAG_inlined_subroutine
	.long	1016                            # DW_AT_abstract_origin
	.quad	.Ltmp53                         # DW_AT_low_pc
	.long	.Ltmp54-.Ltmp53                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x4cb:0x14 DW_TAG_inlined_subroutine
	.long	1029                            # DW_AT_abstract_origin
	.quad	.Ltmp57                         # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp57                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	48                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x4e1:0x15 DW_TAG_inlined_subroutine
	.long	1042                            # DW_AT_abstract_origin
	.quad	.Ltmp63                         # DW_AT_low_pc
	.long	.Ltmp65-.Ltmp63                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	387                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4f7:0x3d DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string61                 # DW_AT_linkage_name
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	479                             # DW_AT_type
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x515:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x524:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	401                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x534:0x59 DW_TAG_subprogram
	.quad	.Lfunc_begin7                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string63                 # DW_AT_linkage_name
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	414                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x54e:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	414                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x55d:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string85                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	414                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x56c:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	416                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x57c:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	420                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x58d:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin8                   # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	425                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x5a7:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	425                             # DW_AT_decl_line
	.long	358                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x5b6:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	425                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x5c5:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	425                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x5d5:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin9                   # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	287                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x5e8:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	304                             # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x5f0:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	316                             # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x5f8:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	328                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x601:0x9 DW_TAG_typedef
	.long	1546                            # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	3                               # Abbrev [3] 0x60a:0x7 DW_TAG_base_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x611:0xd DW_TAG_pointer_type
	.long	1566                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	13                              # Abbrev [13] 0x61e:0x6b DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	14                              # Abbrev [14] 0x627:0xd DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	463                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x634:0xd DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1673                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	37                              # Abbrev [37] 0x641:0x9 DW_TAG_member
	.long	1610                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x64a:0x3e DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	14                              # Abbrev [14] 0x653:0xd DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x660:0xd DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	4                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x66d:0xd DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	672                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x67a:0xd DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1537                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x689:0xb DW_TAG_typedef
	.long	1684                            # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x694:0xd DW_TAG_pointer_type
	.long	1697                            # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	38                              # Abbrev [38] 0x6a1:0x15 DW_TAG_subroutine_type
	.long	1537                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	39                              # Abbrev [39] 0x6a6:0x5 DW_TAG_formal_parameter
	.long	463                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6ab:0x5 DW_TAG_formal_parameter
	.long	463                             # DW_AT_type
	.byte	39                              # Abbrev [39] 0x6b0:0x5 DW_TAG_formal_parameter
	.long	665                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp7
	.quad	.Ltmp13
	.quad	.Ltmp16
	.quad	.Ltmp18
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp8
	.quad	.Ltmp12
	.quad	.Ltmp16
	.quad	.Ltmp18
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp9
	.quad	.Ltmp11
	.quad	.Ltmp17
	.quad	.Ltmp18
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp48
	.quad	.Ltmp50
	.quad	.Ltmp51
	.quad	.Ltmp55
	.quad	.Ltmp56
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp62
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp48
	.quad	.Ltmp50
	.quad	.Ltmp51
	.quad	.Ltmp55
	.quad	.Ltmp56
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp61
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Lfunc_begin9
	.quad	.Lfunc_end9
	.quad	.Lfunc_begin6
	.quad	.Lfunc_end6
	.quad	.Lfunc_begin7
	.quad	.Lfunc_end7
	.quad	.Lfunc_begin8
	.quad	.Lfunc_end8
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"list.c3"                       # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/collections" # string offset=12
.Linfo_string3:
	.asciz	"dummy"                         # string offset=89
.Linfo_string4:
	.asciz	"int"                           # string offset=95
.Linfo_string5:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.dummy.28586" # string offset=99
.Linfo_string6:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.set_size" # string offset=160
.Linfo_string7:
	.asciz	"set_size"                      # string offset=223
.Linfo_string8:
	.asciz	"ulong"                         # string offset=232
.Linfo_string9:
	.asciz	"usz"                           # string offset=238
.Linfo_string10:
	.asciz	"self"                          # string offset=242
.Linfo_string11:
	.asciz	"size"                          # string offset=247
.Linfo_string12:
	.asciz	"capacity"                      # string offset=252
.Linfo_string13:
	.asciz	"allocator"                     # string offset=261
.Linfo_string14:
	.asciz	"ptr"                           # string offset=271
.Linfo_string15:
	.asciz	"void*"                         # string offset=275
.Linfo_string16:
	.asciz	"type"                          # string offset=281
.Linfo_string17:
	.asciz	"typeid"                        # string offset=286
.Linfo_string18:
	.asciz	"Allocator"                     # string offset=293
.Linfo_string19:
	.asciz	"entries"                       # string offset=303
.Linfo_string20:
	.asciz	"offset"                        # string offset=311
.Linfo_string21:
	.asciz	"uptr"                          # string offset=318
.Linfo_string22:
	.asciz	"function"                      # string offset=323
.Linfo_string23:
	.asciz	"char"                          # string offset=332
.Linfo_string24:
	.asciz	"char*"                         # string offset=337
.Linfo_string25:
	.asciz	"len"                           # string offset=343
.Linfo_string26:
	.asciz	"char[]"                        # string offset=347
.Linfo_string27:
	.asciz	"String"                        # string offset=354
.Linfo_string28:
	.asciz	"object_file"                   # string offset=361
.Linfo_string29:
	.asciz	"file"                          # string offset=373
.Linfo_string30:
	.asciz	"line"                          # string offset=378
.Linfo_string31:
	.asciz	"uint"                          # string offset=383
.Linfo_string32:
	.asciz	"is_inline"                     # string offset=388
.Linfo_string33:
	.asciz	"bool"                          # string offset=398
.Linfo_string34:
	.asciz	"Backtrace"                     # string offset=403
.Linfo_string35:
	.asciz	"Type"                          # string offset=413
.Linfo_string36:
	.asciz	"Type*"                         # string offset=418
.Linfo_string37:
	.asciz	"List"                          # string offset=424
.Linfo_string38:
	.asciz	"List*"                         # string offset=429
.Linfo_string39:
	.asciz	"new_size"                      # string offset=435
.Linfo_string40:
	.asciz	"old_size"                      # string offset=444
.Linfo_string41:
	.asciz	"pre_free"                      # string offset=453
.Linfo_string42:
	.asciz	"free"                          # string offset=462
.Linfo_string43:
	.asciz	"next_power_of_2"               # string offset=467
.Linfo_string44:
	.asciz	"y"                             # string offset=483
.Linfo_string45:
	.asciz	"realloc_try"                   # string offset=485
.Linfo_string46:
	.asciz	"realloc"                       # string offset=497
.Linfo_string47:
	.asciz	"is_power_of_2"                 # string offset=505
.Linfo_string48:
	.asciz	"post_alloc"                    # string offset=519
.Linfo_string49:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.init" # string offset=530
.Linfo_string50:
	.asciz	"init"                          # string offset=589
.Linfo_string51:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.to_format" # string offset=594
.Linfo_string52:
	.asciz	"to_format"                     # string offset=658
.Linfo_string53:
	.asciz	"long"                          # string offset=668
.Linfo_string54:
	.asciz	"fault"                         # string offset=673
.Linfo_string55:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.push" # string offset=679
.Linfo_string56:
	.asciz	"push"                          # string offset=738
.Linfo_string57:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.len" # string offset=743
.Linfo_string58:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.free" # string offset=801
.Linfo_string59:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.ensure_capacity" # string offset=860
.Linfo_string60:
	.asciz	"ensure_capacity"               # string offset=930
.Linfo_string61:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.get_ref" # string offset=946
.Linfo_string62:
	.asciz	"get_ref"                       # string offset=1008
.Linfo_string63:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List.reserve" # string offset=1016
.Linfo_string64:
	.asciz	"reserve"                       # string offset=1078
.Linfo_string65:
	.asciz	"std_collections_list$std.os.backtrace.Backtrace$.List._update_size_change" # string offset=1086
.Linfo_string66:
	.asciz	"_update_size_change"           # string offset=1160
.Linfo_string67:
	.asciz	"initial_capacity"              # string offset=1180
.Linfo_string68:
	.asciz	"formatter"                     # string offset=1197
.Linfo_string69:
	.asciz	"data"                          # string offset=1207
.Linfo_string70:
	.asciz	"out_fn"                        # string offset=1212
.Linfo_string71:
	.asciz	"OutputFn"                      # string offset=1219
.Linfo_string72:
	.asciz	"flags"                         # string offset=1228
.Linfo_string73:
	.asciz	"width"                         # string offset=1234
.Linfo_string74:
	.asciz	"prec"                          # string offset=1240
.Linfo_string75:
	.asciz	"first_fault"                   # string offset=1245
.Linfo_string76:
	.asciz	"$anon"                         # string offset=1257
.Linfo_string77:
	.asciz	"Formatter"                     # string offset=1263
.Linfo_string78:
	.asciz	"Formatter*"                    # string offset=1273
.Linfo_string79:
	.asciz	"n"                             # string offset=1284
.Linfo_string80:
	.asciz	".temp"                         # string offset=1286
.Linfo_string81:
	.asciz	"i"                             # string offset=1292
.Linfo_string82:
	.asciz	"element"                       # string offset=1294
.Linfo_string83:
	.asciz	"min_capacity"                  # string offset=1302
.Linfo_string84:
	.asciz	"index"                         # string offset=1315
.Linfo_string85:
	.asciz	"added"                         # string offset=1321
.Linfo_string86:
	.asciz	"new_capacity"                  # string offset=1327
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	1719                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"dummy"                         # External Name
	.long	75                              # DIE offset
	.asciz	"init"                          # External Name
	.long	147                             # DIE offset
	.asciz	"to_format"                     # External Name
	.long	287                             # DIE offset
	.asciz	"set_size"                      # External Name
	.long	686                             # DIE offset
	.asciz	"push"                          # External Name
	.long	785                             # DIE offset
	.asciz	"len"                           # External Name
	.long	856                             # DIE offset
	.asciz	"free"                          # External Name
	.long	940                             # DIE offset
	.asciz	"pre_free"                      # External Name
	.long	953                             # DIE offset
	.asciz	"next_power_of_2"               # External Name
	.long	980                             # DIE offset
	.asciz	"realloc_try"                   # External Name
	.long	992                             # DIE offset
	.asciz	"realloc"                       # External Name
	.long	1029                            # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	1042                            # DIE offset
	.asciz	"post_alloc"                    # External Name
	.long	1055                            # DIE offset
	.asciz	"ensure_capacity"               # External Name
	.long	1271                            # DIE offset
	.asciz	"get_ref"                       # External Name
	.long	1332                            # DIE offset
	.asciz	"reserve"                       # External Name
	.long	1421                            # DIE offset
	.asciz	"_update_size_change"           # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	1719                            # Compilation Unit Length
	.long	68                              # DIE offset
	.asciz	"int"                           # External Name
	.long	342                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	351                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	358                             # DIE offset
	.asciz	"List*"                         # External Name
	.long	371                             # DIE offset
	.asciz	"List"                          # External Name
	.long	433                             # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	463                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	472                             # DIE offset
	.asciz	"typeid"                        # External Name
	.long	479                             # DIE offset
	.asciz	"Type*"                         # External Name
	.long	492                             # DIE offset
	.asciz	"Type"                          # External Name
	.long	503                             # DIE offset
	.asciz	"Backtrace"                     # External Name
	.long	604                             # DIE offset
	.asciz	"uptr"                          # External Name
	.long	613                             # DIE offset
	.asciz	"String"                        # External Name
	.long	622                             # DIE offset
	.asciz	"char[]"                        # External Name
	.long	652                             # DIE offset
	.asciz	"char*"                         # External Name
	.long	665                             # DIE offset
	.asciz	"char"                          # External Name
	.long	672                             # DIE offset
	.asciz	"uint"                          # External Name
	.long	679                             # DIE offset
	.asciz	"bool"                          # External Name
	.long	1537                            # DIE offset
	.asciz	"fault"                         # External Name
	.long	1546                            # DIE offset
	.asciz	"long"                          # External Name
	.long	1553                            # DIE offset
	.asciz	"Formatter*"                    # External Name
	.long	1566                            # DIE offset
	.asciz	"Formatter"                     # External Name
	.long	1684                            # DIE offset
	.asciz	"OutputFn"                      # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.io.Formatter.print
	.weak	std.io.Formatter.printf
	.weak	std.core.builtin.panicf
	.weak	std.core.builtin.panic
	.weak	std.core.mem.allocator.thread_allocator
	.weak	std.core.mem.allocator.current_temp
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

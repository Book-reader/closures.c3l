	.text
	.file	"std::os::backtrace"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/os" "backtrace.c3"
	.section	.text.std.os.backtrace.Backtrace.has_file,"axG",@progbits,std.os.backtrace.Backtrace.has_file,comdat
	.weak	std.os.backtrace.Backtrace.has_file # -- Begin function std.os.backtrace.Backtrace.has_file
	.p2align	4, 0x90
	.type	std.os.backtrace.Backtrace.has_file,@function
std.os.backtrace.Backtrace.has_file:    # @std.os.backtrace.Backtrace.has_file
.Lfunc_begin0:
	.loc	1 21 0                          # backtrace.c3:21:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
.Ltmp0:
	.loc	1 22 1 prologue_end             # backtrace.c3:22:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # backtrace.c3:0:1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 23 9 is_stmt 1                # backtrace.c3:23:9
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	48(%rcx), %rax
	setb	%al
	andb	$1, %al
	.loc	1 23 9 epilogue_begin is_stmt 0 # backtrace.c3:23:9
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 21 28 is_stmt 1               # backtrace.c3:21:28
	leaq	.panic_msg.3(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.4(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$21, (%rsp)
	callq	*(%rax)
.Ltmp1:
.Lfunc_end0:
	.size	std.os.backtrace.Backtrace.has_file, .Lfunc_end0-std.os.backtrace.Backtrace.has_file
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.backtrace.Backtrace.is_unknown,"axG",@progbits,std.os.backtrace.Backtrace.is_unknown,comdat
	.weak	std.os.backtrace.Backtrace.is_unknown # -- Begin function std.os.backtrace.Backtrace.is_unknown
	.p2align	4, 0x90
	.type	std.os.backtrace.Backtrace.is_unknown,@function
std.os.backtrace.Backtrace.is_unknown:  # @std.os.backtrace.Backtrace.is_unknown
.Lfunc_begin1:
	.loc	1 26 0                          # backtrace.c3:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
.Ltmp2:
	.loc	1 27 1 prologue_end             # backtrace.c3:27:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB1_2
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # backtrace.c3:0:1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 28 10 is_stmt 1               # backtrace.c3:28:10
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	sete	%al
	andb	$1, %al
	.loc	1 28 10 epilogue_begin is_stmt 0 # backtrace.c3:28:10
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 26 30 is_stmt 1               # backtrace.c3:26:30
	leaq	.panic_msg.3(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$26, (%rsp)
	callq	*(%rax)
.Ltmp3:
.Lfunc_end1:
	.size	std.os.backtrace.Backtrace.is_unknown, .Lfunc_end1-std.os.backtrace.Backtrace.is_unknown
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.backtrace.Backtrace.to_format,"axG",@progbits,std.os.backtrace.Backtrace.to_format,comdat
	.weak	std.os.backtrace.Backtrace.to_format # -- Begin function std.os.backtrace.Backtrace.to_format
	.p2align	4, 0x90
	.type	std.os.backtrace.Backtrace.to_format,@function
std.os.backtrace.Backtrace.to_format:   # @std.os.backtrace.Backtrace.to_format
.Lfunc_begin2:
	.loc	1 31 0                          # backtrace.c3:31:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      # imm = 0x120
	movq	%rdi, -256(%rbp)                # 8-byte Spill
	movq	%rsi, -248(%rbp)                # 8-byte Spill
	movq	%rdx, -240(%rbp)                # 8-byte Spill
.Ltmp4:
	.loc	1 32 1 prologue_end             # backtrace.c3:32:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB2_15
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # backtrace.c3:0:1
	movq	-240(%rbp), %rax                # 8-byte Reload
	movq	-248(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	.loc	1 33 25 is_stmt 1               # backtrace.c3:33:25
	movq	-8(%rbp), %rax
	.loc	1 33 56 is_stmt 0               # backtrace.c3:33:56
	movzbl	80(%rax), %eax
                                        # kill: def $rax killed $eax
	.loc	1 33 25                         # backtrace.c3:33:25
	movb	%al, %sil
	.loc	1 33 56                         # backtrace.c3:33:56
	leaq	.L.str(%rip), %rdx
	leaq	.emptystr(%rip), %rcx
	testb	$1, %sil
	cmovneq	%rdx, %rcx
                                        # kill: def $eax killed $eax killed $rax
	andl	$1, %eax
                                        # kill: def $rax killed $eax
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	.loc	1 34 6 is_stmt 1                # backtrace.c3:34:6
	movq	-8(%rbp), %rdi
	callq	std.os.backtrace.Backtrace.has_file@PLT
	testb	$1, %al
	je	.LBB2_6
# %bb.2:
.Ltmp5:
	.loc	1 36 51                         # backtrace.c3:36:51
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movq	($ct.String)@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	%rcx, -128(%rbp)
	.loc	1 36 66 is_stmt 0               # backtrace.c3:36:66
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	movq	%rax, -104(%rbp)
	movq	%rcx, -112(%rbp)
	.loc	1 36 84                         # backtrace.c3:36:84
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	.loc	1 36 95                         # backtrace.c3:36:95
	movq	-8(%rbp), %rcx
	addq	$56, %rcx
	movq	($ct.uint)@GOTPCREL(%rip), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc	1 36 106                        # backtrace.c3:36:106
	movq	%rax, -56(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rsi
	.loc	1 36 10                         # backtrace.c3:36:10
	leaq	-136(%rbp), %rdi
	leaq	.L.str.7(%rip), %rdx
	movl	$20, %ecx
	leaq	-128(%rbp), %r8
	movl	$5, %r9d
	callq	std.io.Formatter.printf@PLT
	movq	%rax, -264(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_4
# %bb.3:
	.loc	1 0 10                          # backtrace.c3:0:10
	movq	-264(%rbp), %rax                # 8-byte Reload
	.loc	1 36 10                         # backtrace.c3:36:10
	movq	%rax, -40(%rbp)
	jmp	.LBB2_5
.LBB2_4:
	.loc	1 0 10                          # backtrace.c3:0:10
	movq	-256(%rbp), %rax                # 8-byte Reload
	.loc	1 36 10                         # backtrace.c3:36:10
	movq	-136(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 36 10 epilogue_begin          # backtrace.c3:36:10
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_5:
	.cfi_def_cfa %rbp, 16
	movq	-40(%rbp), %rax
	.loc	1 36 10 epilogue_begin          # backtrace.c3:36:10
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB2_6:
	.cfi_def_cfa %rbp, 16
	.loc	1 38 6 is_stmt 1                # backtrace.c3:38:6
	movq	-8(%rbp), %rdi
	callq	std.os.backtrace.Backtrace.is_unknown@PLT
	testb	$1, %al
	je	.LBB2_11
# %bb.7:
.Ltmp7:
	.loc	1 40 49                         # backtrace.c3:40:49
	movq	($ct.String)@GOTPCREL(%rip), %rax
	movq	%rax, -152(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rsi
	.loc	1 40 10 is_stmt 0               # backtrace.c3:40:10
	leaq	-168(%rbp), %rdi
	leaq	.L.str.8(%rip), %rdx
	movl	$18, %ecx
	leaq	-160(%rbp), %r8
	movl	$1, %r9d
	callq	std.io.Formatter.printf@PLT
	movq	%rax, -272(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_9
# %bb.8:
	.loc	1 0 10                          # backtrace.c3:0:10
	movq	-272(%rbp), %rax                # 8-byte Reload
	.loc	1 40 10                         # backtrace.c3:40:10
	movq	%rax, -144(%rbp)
	jmp	.LBB2_10
.LBB2_9:
	.loc	1 0 10                          # backtrace.c3:0:10
	movq	-256(%rbp), %rax                # 8-byte Reload
	.loc	1 40 10                         # backtrace.c3:40:10
	movq	-168(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 40 10 epilogue_begin          # backtrace.c3:40:10
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_10:
	.cfi_def_cfa %rbp, 16
	movq	-144(%rbp), %rax
	.loc	1 40 10 epilogue_begin          # backtrace.c3:40:10
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp8:
.LBB2_11:
	.cfi_def_cfa %rbp, 16
	.loc	1 42 63 is_stmt 1               # backtrace.c3:42:63
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movq	($ct.String)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	%rcx, -224(%rbp)
	.loc	1 42 78 is_stmt 0               # backtrace.c3:42:78
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	.loc	1 42 96                         # backtrace.c3:42:96
	movq	%rax, -184(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rsi
	.loc	1 42 9                          # backtrace.c3:42:9
	leaq	-232(%rbp), %rdi
	leaq	.L.str.9(%rip), %rdx
	movl	$33, %ecx
	leaq	-224(%rbp), %r8
	movl	$3, %r9d
	callq	std.io.Formatter.printf@PLT
	movq	%rax, -280(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_13
# %bb.12:
	.loc	1 0 9                           # backtrace.c3:0:9
	movq	-280(%rbp), %rax                # 8-byte Reload
	.loc	1 42 9                          # backtrace.c3:42:9
	movq	%rax, -176(%rbp)
	jmp	.LBB2_14
.LBB2_13:
	.loc	1 0 9                           # backtrace.c3:0:9
	movq	-256(%rbp), %rax                # 8-byte Reload
	.loc	1 42 9                          # backtrace.c3:42:9
	movq	-232(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 42 9 epilogue_begin           # backtrace.c3:42:9
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_14:
	.cfi_def_cfa %rbp, 16
	movq	-176(%rbp), %rax
	.loc	1 42 9 epilogue_begin           # backtrace.c3:42:9
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_15:
	.cfi_def_cfa %rbp, 16
	.loc	1 31 29 is_stmt 1               # backtrace.c3:31:29
	leaq	.panic_msg.3(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.6(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$31, (%rsp)
	callq	*(%rax)
.Ltmp9:
.Lfunc_end2:
	.size	std.os.backtrace.Backtrace.to_format, .Lfunc_end2-std.os.backtrace.Backtrace.to_format
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.backtrace.Backtrace.free,"axG",@progbits,std.os.backtrace.Backtrace.free,comdat
	.weak	std.os.backtrace.Backtrace.free # -- Begin function std.os.backtrace.Backtrace.free
	.p2align	4, 0x90
	.type	std.os.backtrace.Backtrace.free,@function
std.os.backtrace.Backtrace.free:        # @std.os.backtrace.Backtrace.free
.Lfunc_begin3:
	.loc	1 44 0                          # backtrace.c3:44:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -136(%rbp)                # 8-byte Spill
.Ltmp10:
	.loc	1 45 1 prologue_end             # backtrace.c3:45:1
	movq	$0, -128(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB3_34
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # backtrace.c3:0:1
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 46 7 is_stmt 1                # backtrace.c3:46:7
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB3_3
# %bb.2:
	.loc	1 46 29 epilogue_begin is_stmt 0 # backtrace.c3:46:29
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 47 18 is_stmt 1               # backtrace.c3:47:18
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc	1 47 34 is_stmt 0               # backtrace.c3:47:34
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.Ltmp11:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -32(%rbp)
	jne	.LBB3_5
# %bb.4:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB3_13
.LBB3_5:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB3_7
# %bb.6:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$75, %esi
	leaq	.file.12(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_7:
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
.Ltmp12:
	.loc	1 45 1 is_stmt 1                # backtrace.c3:45:1
	cmpq	-48(%rbp), %rax
	je	.LBB3_9
# %bb.8:
	.loc	1 0 1 is_stmt 0                 # backtrace.c3:0:1
	movq	-152(%rbp), %rax                # 8-byte Reload
	.loc	1 45 1                          # backtrace.c3:45:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-152(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%rax, -160(%rbp)                # 8-byte Spill
	jmp	.LBB3_10
.LBB3_9:
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
.LBB3_10:
	.loc	1 0 1                           # backtrace.c3:0:1
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	%rax, -168(%rbp)                # 8-byte Spill
	.loc	1 45 1                          # backtrace.c3:45:1
	cmpq	$0, %rax
	jne	.LBB3_12
# %bb.11:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.12(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_12:
	.loc	1 0 1                           # backtrace.c3:0:1
	movq	-168(%rbp), %rax                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	.loc	1 45 1                          # backtrace.c3:45:1
	movq	-24(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB3_13:
	.loc	1 48 18 is_stmt 1               # backtrace.c3:48:18
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc	1 48 34 is_stmt 0               # backtrace.c3:48:34
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
.Ltmp13:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -72(%rbp)
	jne	.LBB3_15
# %bb.14:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB3_23
.LBB3_15:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB3_17
# %bb.16:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$75, %esi
	leaq	.file.12(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_17:
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
.Ltmp14:
	.loc	1 45 1 is_stmt 1                # backtrace.c3:45:1
	cmpq	-88(%rbp), %rax
	je	.LBB3_19
# %bb.18:
	.loc	1 0 1 is_stmt 0                 # backtrace.c3:0:1
	movq	-184(%rbp), %rax                # 8-byte Reload
	.loc	1 45 1                          # backtrace.c3:45:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-184(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, -192(%rbp)                # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)                # 8-byte Spill
.LBB3_20:
	.loc	1 0 1                           # backtrace.c3:0:1
	movq	-192(%rbp), %rax                # 8-byte Reload
	movq	%rax, -200(%rbp)                # 8-byte Spill
	.loc	1 45 1                          # backtrace.c3:45:1
	cmpq	$0, %rax
	jne	.LBB3_22
# %bb.21:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.12(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_22:
	.loc	1 0 1                           # backtrace.c3:0:1
	movq	-200(%rbp), %rax                # 8-byte Reload
	movq	-176(%rbp), %rsi                # 8-byte Reload
	.loc	1 45 1                          # backtrace.c3:45:1
	movq	-64(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB3_23:
	.loc	1 49 18 is_stmt 1               # backtrace.c3:49:18
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	72(%rax), %rax
	movq	%rax, -96(%rbp)
	.loc	1 49 34 is_stmt 0               # backtrace.c3:49:34
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)
.Ltmp15:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -112(%rbp)
	jne	.LBB3_25
# %bb.24:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB3_33
.LBB3_25:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB3_27
# %bb.26:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$75, %esi
	leaq	.file.12(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_27:
	movq	-96(%rbp), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
.Ltmp16:
	.loc	1 45 1 is_stmt 1                # backtrace.c3:45:1
	cmpq	-128(%rbp), %rax
	je	.LBB3_29
# %bb.28:
	.loc	1 0 1 is_stmt 0                 # backtrace.c3:0:1
	movq	-216(%rbp), %rax                # 8-byte Reload
	.loc	1 45 1                          # backtrace.c3:45:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-216(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%rax, -224(%rbp)                # 8-byte Spill
	jmp	.LBB3_30
.LBB3_29:
	movq	-120(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
.LBB3_30:
	.loc	1 0 1                           # backtrace.c3:0:1
	movq	-224(%rbp), %rax                # 8-byte Reload
	movq	%rax, -232(%rbp)                # 8-byte Spill
	.loc	1 45 1                          # backtrace.c3:45:1
	cmpq	$0, %rax
	jne	.LBB3_32
# %bb.31:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.12(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_32:
	.loc	1 0 1                           # backtrace.c3:0:1
	movq	-232(%rbp), %rax                # 8-byte Reload
	movq	-208(%rbp), %rsi                # 8-byte Reload
	.loc	1 45 1                          # backtrace.c3:45:1
	movq	-104(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB3_33:
	.loc	1 45 1 epilogue_begin           # backtrace.c3:45:1
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_34:
	.cfi_def_cfa %rbp, 16
	.loc	1 44 24 is_stmt 1               # backtrace.c3:44:24
	leaq	.panic_msg.3(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.10(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$44, (%rsp)
	callq	*(%rax)
.Ltmp17:
.Lfunc_end3:
	.size	std.os.backtrace.Backtrace.free, .Lfunc_end3-std.os.backtrace.Backtrace.free
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.backtrace.capture_current,"axG",@progbits,std.os.backtrace.capture_current,comdat
	.weak	std.os.backtrace.capture_current # -- Begin function std.os.backtrace.capture_current
	.p2align	4, 0x90
	.type	std.os.backtrace.capture_current,@function
std.os.backtrace.capture_current:       # @std.os.backtrace.capture_current
.Lfunc_begin4:
	.loc	1 73 0                          # backtrace.c3:73:0
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
.Ltmp18:
	.loc	1 75 6 prologue_end             # backtrace.c3:75:6
	cmpq	$0, -8(%rbp)
	jne	.LBB4_4
# %bb.1:
	.loc	1 75 26 is_stmt 0               # backtrace.c3:75:26
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rcx
	movq	%rcx, -376(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setg	%al
	testb	$1, %al
	jne	.LBB4_8
# %bb.2:
	.loc	1 0 26                          # backtrace.c3:0:26
	movq	-376(%rbp), %rax                # 8-byte Reload
	.loc	1 75 26                         # backtrace.c3:75:26
	cmpq	$0, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB4_9
# %bb.3:
	.loc	1 0 26                          # backtrace.c3:0:26
	movq	-384(%rbp), %rax                # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 78 44 is_stmt 1               # backtrace.c3:78:44
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdi
	.loc	1 78 15 is_stmt 0               # backtrace.c3:78:15
	callq	std.os.posix.backtrace@PLT
	movl	%eax, -164(%rbp)
	.loc	1 79 11 is_stmt 1               # backtrace.c3:79:11
	movq	-16(%rbp), %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rcx
	movq	%rcx, -392(%rbp)                # 8-byte Spill
	.loc	1 79 18 is_stmt 0               # backtrace.c3:79:18
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setg	%al
	testb	$1, %al
	jne	.LBB4_10
# %bb.5:
	.loc	1 79 19                         # backtrace.c3:79:19
	movslq	-164(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -416(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setg	%al
	subq	$0, %rcx
	movq	%rcx, -408(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB4_11
# %bb.6:
	.loc	1 0 19                          # backtrace.c3:0:19
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	-392(%rbp), %rax                # 8-byte Reload
	.loc	1 79 11                         # backtrace.c3:79:11
	cmpq	%rcx, %rax
	setl	%al
	subq	$1, %rcx
	movq	%rcx, -424(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB4_12
# %bb.7:
	.loc	1 0 11                          # backtrace.c3:0:11
	movq	-400(%rbp), %rax                # 8-byte Reload
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -360(%rbp)
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_8:
	.cfi_def_cfa %rbp, 16
	movq	-376(%rbp), %rax                # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$0, -32(%rbp)
	movq	%rax, -56(%rbp)
	leaq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	.loc	1 75 26 is_stmt 1               # backtrace.c3:75:26
	leaq	.panic_msg(%rip), %rdi
	movl	$61, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	leaq	-80(%rbp), %rax
	movl	$75, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_9:
	.loc	1 0 26 is_stmt 0                # backtrace.c3:0:26
	movq	-376(%rbp), %rcx                # 8-byte Reload
	movq	$-1, -88(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
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
	.loc	1 75 26                         # backtrace.c3:75:26
	leaq	.panic_msg.1(%rip), %rdi
	movl	$60, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	leaq	-144(%rbp), %rax
	movl	$75, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_10:
	.loc	1 0 26                          # backtrace.c3:0:26
	movq	-392(%rbp), %rax                # 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$0, -184(%rbp)
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	%rax, -200(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$2, -232(%rbp)
	.loc	1 79 11 is_stmt 1               # backtrace.c3:79:11
	leaq	.panic_msg(%rip), %rdi
	movl	$61, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	leaq	-240(%rbp), %rax
	movl	$79, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_11:
	.loc	1 0 11 is_stmt 0                # backtrace.c3:0:11
	movq	-408(%rbp), %rax                # 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-248(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
	.loc	1 79 11                         # backtrace.c3:79:11
	leaq	.panic_msg.2(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	leaq	-288(%rbp), %rax
	movl	$79, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_12:
	.loc	1 0 11                          # backtrace.c3:0:11
	movq	-392(%rbp), %rcx                # 8-byte Reload
	movq	-424(%rbp), %rax                # 8-byte Reload
	movq	%rax, -296(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rcx, -304(%rbp)
	movq	%rax, -328(%rbp)
	leaq	-296(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	movq	%rax, -312(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	$2, -344(%rbp)
	.loc	1 79 11                         # backtrace.c3:79:11
	leaq	.panic_msg.1(%rip), %rdi
	movl	$60, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	leaq	-352(%rbp), %rax
	movl	$79, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp19:
.Lfunc_end4:
	.size	std.os.backtrace.capture_current, .Lfunc_end4-std.os.backtrace.capture_current
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB5_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB5_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB5_1
.Lfunc_end5:
	.size	.dyn_search, .Lfunc_end5-.dyn_search
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .c3_dynamic_register
	.type	.c3_dynamic_register,@function
.c3_dynamic_register:                   # @.c3_dynamic_register
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:
	movq	($ct.std.os.backtrace.Backtrace)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.os.backtrace.Backtrace.to_format)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB6_3
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB6_1
# %bb.2:
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.os.backtrace.Backtrace.to_format)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.os.backtrace.Backtrace.to_format)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB6_3:
	retq
.Lfunc_end6:
	.size	.c3_dynamic_register, .Lfunc_end6-.c3_dynamic_register
	.cfi_endproc
                                        # -- End function
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

	.type	.emptystr,@object               # @.emptystr
	.section	.rodata,"a",@progbits
.emptystr:
	.zero	1
	.size	.emptystr, 1

	.type	$ct.void,@object                # @"$ct.void"
	.section	".data.$ct.void","awG",@progbits,"$ct.void",comdat
	.weak	$ct.void
	.p2align	3, 0x0
$ct.void:
	.byte	0                               # 0x0
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.void, 48

	.type	std.os.backtrace.BACKTRACE_UNKNOWN,@object # @std.os.backtrace.BACKTRACE_UNKNOWN
	.section	.data.rel.ro.std.os.backtrace.BACKTRACE_UNKNOWN,"awG",@progbits,std.os.backtrace.BACKTRACE_UNKNOWN,comdat
	.weak	std.os.backtrace.BACKTRACE_UNKNOWN
	.p2align	3, 0x0
std.os.backtrace.BACKTRACE_UNKNOWN:
	.quad	0                               # 0x0
	.quad	.emptystr
	.quad	0                               # 0x0
	.quad	.emptystr
	.quad	0                               # 0x0
	.quad	.emptystr
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.quad	($ct.void)
	.byte	0                               # 0x0
	.zero	7
	.size	std.os.backtrace.BACKTRACE_UNKNOWN, 88

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

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Index exceeds array length (array had size %d, index was %d)."
	.size	.panic_msg, 62

	.type	.file,@object                   # @.file
.file:
	.asciz	"backtrace.c3"
	.size	.file, 13

	.type	.func,@object                   # @.func
.func:
	.asciz	"capture_current"
	.size	.func, 16

	.type	.panic_msg.1,@object            # @.panic_msg.1
.panic_msg.1:
	.asciz	"End index out of bounds (end index of %d exceeds size of %d)"
	.size	.panic_msg.1, 61

	.type	.panic_msg.2,@object            # @.panic_msg.2
.panic_msg.2:
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.2, 44

	.type	.panic_msg.3,@object            # @.panic_msg.3
.panic_msg.3:
	.asciz	"Reference parameter 'self' was passed a null pointer argument."
	.size	.panic_msg.3, 63

	.type	.func.4,@object                 # @.func.4
.func.4:
	.asciz	"has_file"
	.size	.func.4, 9

	.type	.func.5,@object                 # @.func.5
.func.5:
	.asciz	"is_unknown"
	.size	.func.5, 11

	.type	.func.6,@object                 # @.func.6
.func.6:
	.asciz	"to_format"
	.size	.func.6, 10

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" [inline]"
	.size	.L.str, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s (in %s) (%s:%d)%s"
	.size	.L.str.7, 21

	.type	$ct.String,@object              # @"$ct.String"
	.section	".data.$ct.String","awG",@progbits,"$ct.String",comdat
	.weak	$ct.String
	.p2align	3, 0x0
$ct.String:
	.byte	18                              # 0x12
	.zero	7
	.quad	($ct.sa$char)
	.quad	0
	.quad	16                              # 0x10
	.quad	($ct.sa$char)
	.quad	0                               # 0x0
	.size	$ct.String, 48

	.type	$ct.sa$char,@object             # @"$ct.sa$char"
	.section	".data.$ct.sa$char","awG",@progbits,"$ct.sa$char",comdat
	.weak	$ct.sa$char
	.p2align	3, 0x0
$ct.sa$char:
	.byte	16                              # 0x10
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	16                              # 0x10
	.quad	($ct.char)
	.quad	0                               # 0x0
	.size	$ct.sa$char, 48

	.type	$ct.char,@object                # @"$ct.char"
	.section	".data.$ct.char","awG",@progbits,"$ct.char",comdat
	.weak	$ct.char
	.p2align	3, 0x0
$ct.char:
	.byte	3                               # 0x3
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.char, 48

	.type	$ct.uint,@object                # @"$ct.uint"
	.section	".data.$ct.uint","awG",@progbits,"$ct.uint",comdat
	.weak	$ct.uint
	.p2align	3, 0x0
$ct.uint:
	.byte	3                               # 0x3
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.uint, 48

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"??? (in unknown)%s"
	.size	.L.str.8, 19

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s (in %s) (source unavailable)%s"
	.size	.L.str.9, 34

	.type	.func.10,@object                # @.func.10
	.section	.rodata,"a",@progbits
.func.10:
	.asciz	"free"
	.size	.func.10, 5

	.type	$sel.release,@object            # @"$sel.release"
	.section	".rodata.$sel.release","aG",@progbits,"$sel.release",comdat
	.weak	$sel.release
$sel.release:
	.asciz	"release"
	.size	$sel.release, 8

	.type	.panic_msg.11,@object           # @.panic_msg.11
	.section	.rodata,"a",@progbits
.panic_msg.11:
	.asciz	"@require \"ptr != null\" violated: 'Empty pointers should never be released'."
	.size	.panic_msg.11, 76

	.type	.file.12,@object                # @.file.12
.file.12:
	.asciz	"mem_allocator.c3"
	.size	.file.12, 17

	.type	.panic_msg.13,@object           # @.panic_msg.13
.panic_msg.13:
	.asciz	"No method 'release' could be found on target"
	.size	.panic_msg.13, 45

	.type	$ct.dyn.std.os.backtrace.Backtrace.to_format,@object # @"$ct.dyn.std.os.backtrace.Backtrace.to_format"
	.section	".data.$ct.dyn.std.os.backtrace.Backtrace.to_format","awG",@progbits,"$ct.dyn.std.os.backtrace.Backtrace.to_format",comdat
	.weak	$ct.dyn.std.os.backtrace.Backtrace.to_format
	.p2align	3, 0x0
$ct.dyn.std.os.backtrace.Backtrace.to_format:
	.quad	std.os.backtrace.Backtrace.to_format
	.quad	($sel.to_format)
	.quad	-1
	.size	$ct.dyn.std.os.backtrace.Backtrace.to_format, 24

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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x392 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x1a DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	68                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.os.backtrace.BACKTRACE_UNKNOWN
	.long	.Linfo_string27                 # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x44:0x65 DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	4                               # Abbrev [4] 0x4d:0xd DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	169                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x5a:0xd DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x67:0xd DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x74:0xd DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x81:0xd DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	253                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	56                              # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x8e:0xd DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	260                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	64                              # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x9b:0xd DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	306                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa9:0x9 DW_TAG_typedef
	.long	178                             # DW_AT_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # Abbrev [6] 0xb2:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xb9:0x9 DW_TAG_typedef
	.long	194                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	7                               # Abbrev [7] 0xc2:0x1e DW_TAG_structure_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	8                               # Abbrev [8] 0xc9:0xb DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	224                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0xd4:0xb DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	244                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xe0:0xd DW_TAG_pointer_type
	.long	237                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	6                               # Abbrev [6] 0xed:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xf4:0x9 DW_TAG_typedef
	.long	178                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	6                               # Abbrev [6] 0xfd:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x104:0x1e DW_TAG_structure_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	8                               # Abbrev [8] 0x10b:0xb DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x116:0xb DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	299                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x122:0x9 DW_TAG_pointer_type
	.long	.Linfo_string20                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	6                               # Abbrev [6] 0x12b:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x132:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x139:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	306                             # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x156:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.long	728                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x165:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string31                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	306                             # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x182:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	728                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x191:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string34                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	669                             # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x1ae:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	728                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1bc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string44                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	741                             # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1ca:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	185                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1da:0xc DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x1e6:0xc DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x1f2:0xc DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x1fe:0x64 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string37                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x217:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	728                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x225:0x14 DW_TAG_inlined_subroutine
	.long	474                             # DW_AT_abstract_origin
	.quad	.Ltmp11                         # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	47                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	16                              # Abbrev [16] 0x239:0x14 DW_TAG_inlined_subroutine
	.long	486                             # DW_AT_abstract_origin
	.quad	.Ltmp13                         # DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	48                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	16                              # Abbrev [16] 0x24d:0x14 DW_TAG_inlined_subroutine
	.long	498                             # DW_AT_abstract_origin
	.quad	.Ltmp15                         # DW_AT_low_pc
	.long	.Ltmp16-.Ltmp15                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	49                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x262:0x3b DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string38                 # DW_AT_linkage_name
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	685                             # DW_AT_type
                                        # DW_AT_external
	.byte	12                              # Abbrev [12] 0x27f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	685                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x28d:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334~"
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	906                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x29d:0x9 DW_TAG_typedef
	.long	678                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	6                               # Abbrev [6] 0x2a6:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x2ad:0x1e DW_TAG_structure_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	8                               # Abbrev [8] 0x2b4:0xb DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	715                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2bf:0xb DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	244                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x2cb:0xd DW_TAG_pointer_type
	.long	290                             # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	9                               # Abbrev [9] 0x2d8:0xd DW_TAG_pointer_type
	.long	68                              # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	9                               # Abbrev [9] 0x2e5:0xd DW_TAG_pointer_type
	.long	754                             # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	3                               # Abbrev [3] 0x2f2:0x6b DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	4                               # Abbrev [4] 0x2fb:0xd DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	290                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x308:0xd DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	861                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x315:0x9 DW_TAG_member
	.long	798                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	3                               # Abbrev [3] 0x31e:0x3e DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	4                               # Abbrev [4] 0x327:0xd DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	253                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x334:0xd DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	253                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	4                               # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x341:0xd DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	253                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	4                               # Abbrev [4] 0x34e:0xd DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	669                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x35d:0xb DW_TAG_typedef
	.long	872                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x368:0xd DW_TAG_pointer_type
	.long	885                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	20                              # Abbrev [20] 0x375:0x15 DW_TAG_subroutine_type
	.long	669                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	21                              # Abbrev [21] 0x37a:0x5 DW_TAG_formal_parameter
	.long	290                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x37f:0x5 DW_TAG_formal_parameter
	.long	290                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x384:0x5 DW_TAG_formal_parameter
	.long	237                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x38a:0xb DW_TAG_typedef
	.long	917                             # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x395:0x7 DW_TAG_base_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"backtrace.c3"                  # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/os" # string offset=17
.Linfo_string3:
	.asciz	"BACKTRACE_UNKNOWN"             # string offset=85
.Linfo_string4:
	.asciz	"offset"                        # string offset=103
.Linfo_string5:
	.asciz	"ulong"                         # string offset=110
.Linfo_string6:
	.asciz	"uptr"                          # string offset=116
.Linfo_string7:
	.asciz	"function"                      # string offset=121
.Linfo_string8:
	.asciz	"ptr"                           # string offset=130
.Linfo_string9:
	.asciz	"char"                          # string offset=134
.Linfo_string10:
	.asciz	"char*"                         # string offset=139
.Linfo_string11:
	.asciz	"len"                           # string offset=145
.Linfo_string12:
	.asciz	"usz"                           # string offset=149
.Linfo_string13:
	.asciz	"char[]"                        # string offset=153
.Linfo_string14:
	.asciz	"String"                        # string offset=160
.Linfo_string15:
	.asciz	"object_file"                   # string offset=167
.Linfo_string16:
	.asciz	"file"                          # string offset=179
.Linfo_string17:
	.asciz	"line"                          # string offset=184
.Linfo_string18:
	.asciz	"uint"                          # string offset=189
.Linfo_string19:
	.asciz	"allocator"                     # string offset=194
.Linfo_string20:
	.asciz	"void*"                         # string offset=204
.Linfo_string21:
	.asciz	"type"                          # string offset=210
.Linfo_string22:
	.asciz	"typeid"                        # string offset=215
.Linfo_string23:
	.asciz	"Allocator"                     # string offset=222
.Linfo_string24:
	.asciz	"is_inline"                     # string offset=232
.Linfo_string25:
	.asciz	"bool"                          # string offset=242
.Linfo_string26:
	.asciz	"Backtrace"                     # string offset=247
.Linfo_string27:
	.asciz	"std.os.backtrace.BACKTRACE_UNKNOWN" # string offset=257
.Linfo_string28:
	.asciz	"free"                          # string offset=292
.Linfo_string29:
	.asciz	"std.os.backtrace.Backtrace.has_file" # string offset=297
.Linfo_string30:
	.asciz	"has_file"                      # string offset=333
.Linfo_string31:
	.asciz	"std.os.backtrace.Backtrace.is_unknown" # string offset=342
.Linfo_string32:
	.asciz	"is_unknown"                    # string offset=380
.Linfo_string33:
	.asciz	"std.os.backtrace.Backtrace.to_format" # string offset=391
.Linfo_string34:
	.asciz	"to_format"                     # string offset=428
.Linfo_string35:
	.asciz	"long"                          # string offset=438
.Linfo_string36:
	.asciz	"fault"                         # string offset=443
.Linfo_string37:
	.asciz	"std.os.backtrace.Backtrace.free" # string offset=449
.Linfo_string38:
	.asciz	"std.os.backtrace.capture_current" # string offset=481
.Linfo_string39:
	.asciz	"capture_current"               # string offset=514
.Linfo_string40:
	.asciz	"void**"                        # string offset=530
.Linfo_string41:
	.asciz	"void*[]"                       # string offset=537
.Linfo_string42:
	.asciz	"self"                          # string offset=545
.Linfo_string43:
	.asciz	"Backtrace*"                    # string offset=550
.Linfo_string44:
	.asciz	"formatter"                     # string offset=561
.Linfo_string45:
	.asciz	"data"                          # string offset=571
.Linfo_string46:
	.asciz	"out_fn"                        # string offset=576
.Linfo_string47:
	.asciz	"OutputFn"                      # string offset=583
.Linfo_string48:
	.asciz	"flags"                         # string offset=592
.Linfo_string49:
	.asciz	"width"                         # string offset=598
.Linfo_string50:
	.asciz	"prec"                          # string offset=604
.Linfo_string51:
	.asciz	"first_fault"                   # string offset=609
.Linfo_string52:
	.asciz	"$anon"                         # string offset=621
.Linfo_string53:
	.asciz	"Formatter"                     # string offset=627
.Linfo_string54:
	.asciz	"Formatter*"                    # string offset=637
.Linfo_string55:
	.asciz	"inline_suffix"                 # string offset=648
.Linfo_string56:
	.asciz	"buffer"                        # string offset=662
.Linfo_string57:
	.asciz	"int"                           # string offset=669
.Linfo_string58:
	.asciz	"CInt"                          # string offset=673
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	925                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"BACKTRACE_UNKNOWN"             # External Name
	.long	313                             # DIE offset
	.asciz	"has_file"                      # External Name
	.long	357                             # DIE offset
	.asciz	"is_unknown"                    # External Name
	.long	401                             # DIE offset
	.asciz	"to_format"                     # External Name
	.long	510                             # DIE offset
	.asciz	"free"                          # External Name
	.long	610                             # DIE offset
	.asciz	"capture_current"               # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	925                             # Compilation Unit Length
	.long	68                              # DIE offset
	.asciz	"Backtrace"                     # External Name
	.long	169                             # DIE offset
	.asciz	"uptr"                          # External Name
	.long	178                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	185                             # DIE offset
	.asciz	"String"                        # External Name
	.long	194                             # DIE offset
	.asciz	"char[]"                        # External Name
	.long	224                             # DIE offset
	.asciz	"char*"                         # External Name
	.long	237                             # DIE offset
	.asciz	"char"                          # External Name
	.long	244                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	253                             # DIE offset
	.asciz	"uint"                          # External Name
	.long	260                             # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	290                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	299                             # DIE offset
	.asciz	"typeid"                        # External Name
	.long	306                             # DIE offset
	.asciz	"bool"                          # External Name
	.long	669                             # DIE offset
	.asciz	"fault"                         # External Name
	.long	678                             # DIE offset
	.asciz	"long"                          # External Name
	.long	685                             # DIE offset
	.asciz	"void*[]"                       # External Name
	.long	715                             # DIE offset
	.asciz	"void**"                        # External Name
	.long	728                             # DIE offset
	.asciz	"Backtrace*"                    # External Name
	.long	741                             # DIE offset
	.asciz	"Formatter*"                    # External Name
	.long	754                             # DIE offset
	.asciz	"Formatter"                     # External Name
	.long	872                             # DIE offset
	.asciz	"OutputFn"                      # External Name
	.long	906                             # DIE offset
	.asciz	"CInt"                          # External Name
	.long	917                             # DIE offset
	.asciz	"int"                           # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.os.posix.backtrace
	.weak	std.io.Formatter.printf
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

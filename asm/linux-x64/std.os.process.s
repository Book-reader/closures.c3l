	.text
	.file	"std::os::process"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/os" "subprocess.c3"
	.section	.text.std.os.process.SubProcess.read_stdout,"axG",@progbits,std.os.process.SubProcess.read_stdout,comdat
	.weak	std.os.process.SubProcess.read_stdout # -- Begin function std.os.process.SubProcess.read_stdout
	.p2align	4, 0x90
	.type	std.os.process.SubProcess.read_stdout,@function
std.os.process.SubProcess.read_stdout:  # @std.os.process.SubProcess.read_stdout
.Lfunc_begin0:
	.loc	1 493 0                         # subprocess.c3:493:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	%rsi, -72(%rbp)                 # 8-byte Spill
	movq	%rdx, -64(%rbp)                 # 8-byte Spill
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
.Ltmp0:
	.loc	1 494 1 prologue_end            # subprocess.c3:494:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB0_7
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # subprocess.c3:0:1
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	.loc	1 495 7 is_stmt 1               # subprocess.c3:495:7
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_3
# %bb.2:
	.loc	1 0 7 is_stmt 0                 # subprocess.c3:0:7
	movq	-80(%rbp), %rax                 # 8-byte Reload
	.loc	1 495 32                        # subprocess.c3:495:32
	movq	$0, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 495 32 epilogue_begin         # subprocess.c3:495:32
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 500 31 is_stmt 1              # subprocess.c3:500:31
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	.loc	1 500 10 is_stmt 0              # subprocess.c3:500:10
	leaq	-48(%rbp), %rdi
	callq	std.os.process.read_from_file_posix.20221
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_5
# %bb.4:
	.loc	1 0 10                          # subprocess.c3:0:10
	movq	-88(%rbp), %rax                 # 8-byte Reload
	.loc	1 500 10                        # subprocess.c3:500:10
	movq	%rax, -40(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	.loc	1 0 10                          # subprocess.c3:0:10
	movq	-80(%rbp), %rax                 # 8-byte Reload
	.loc	1 500 10                        # subprocess.c3:500:10
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 500 10 epilogue_begin         # subprocess.c3:500:10
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_6:
	.cfi_def_cfa %rbp, 16
	movq	-40(%rbp), %rax
	.loc	1 500 10 epilogue_begin         # subprocess.c3:500:10
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 493 32 is_stmt 1              # subprocess.c3:493:32
	leaq	.panic_msg.18(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.19(%rip), %r8
	movl	$11, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$493, (%rsp)                    # imm = 0x1ED
	callq	*(%rax)
.Ltmp1:
.Lfunc_end0:
	.size	std.os.process.SubProcess.read_stdout, .Lfunc_end0-std.os.process.SubProcess.read_stdout
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.process.SubProcess.join,"axG",@progbits,std.os.process.SubProcess.join,comdat
	.weak	std.os.process.SubProcess.join  # -- Begin function std.os.process.SubProcess.join
	.p2align	4, 0x90
	.type	std.os.process.SubProcess.join,@function
std.os.process.SubProcess.join:         # @std.os.process.SubProcess.join
.Lfunc_begin1:
	.loc	1 382 0                         # subprocess.c3:382:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movq	%rsi, -48(%rbp)                 # 8-byte Spill
.Ltmp2:
	.loc	1 383 1 prologue_end            # subprocess.c3:383:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB1_11
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # subprocess.c3:0:1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 384 6 is_stmt 1               # subprocess.c3:384:6
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_3
# %bb.2:
.Ltmp3:
	.loc	1 386 16                        # subprocess.c3:386:16
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	.loc	1 386 3 is_stmt 0               # subprocess.c3:386:3
	callq	fclose@PLT
	.loc	1 387 3 is_stmt 1               # subprocess.c3:387:3
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.Ltmp4:
.LBB1_3:
	.loc	1 389 7                         # subprocess.c3:389:7
	movl	$0, -12(%rbp)
	.loc	1 390 6                         # subprocess.c3:390:6
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, 24(%rcx)
	movb	%al, -57(%rbp)                  # 1-byte Spill
	je	.LBB1_5
# %bb.4:
	.loc	1 390 20 is_stmt 0              # subprocess.c3:390:20
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	.loc	1 390 49                        # subprocess.c3:390:49
	movq	-8(%rbp), %rax
	.loc	1 390 70                        # subprocess.c3:390:70
	movl	24(%rax), %edi
	.loc	1 390 34                        # subprocess.c3:390:34
	leaq	-12(%rbp), %rsi
	xorl	%edx, %edx
	callq	waitpid@PLT
	movl	%eax, %ecx
	movl	-64(%rbp), %eax                 # 4-byte Reload
	.loc	1 390 20                        # subprocess.c3:390:20
	cmpl	%ecx, %eax
	setne	%al
	movb	%al, -57(%rbp)                  # 1-byte Spill
.LBB1_5:
	.loc	1 0 20                          # subprocess.c3:0:20
	movb	-57(%rbp), %al                  # 1-byte Reload
	.loc	1 390 20                        # subprocess.c3:390:20
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_7
.LBB1_6:
	.loc	1 390 81                        # subprocess.c3:390:81
	movq	std.os.process.PROCESS_JOIN_FAILED@GOTPCREL(%rip), %rax
	.loc	1 390 81 epilogue_begin         # subprocess.c3:390:81
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 392 2 is_stmt 1               # subprocess.c3:392:2
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	.loc	1 393 2                         # subprocess.c3:393:2
	movq	-8(%rbp), %rax
	movb	$0, 32(%rax)
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.Ltmp5:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/os/posix" "process.c3"
	.loc	2 44 37                         # process.c3:44:37
	movl	-32(%rbp), %eax
	andl	$127, %eax
.Ltmp6:
	.loc	2 46 38                         # process.c3:46:38
	cmpl	$0, %eax
	jne	.LBB1_9
.Ltmp7:
# %bb.8:
	.loc	2 0 38 is_stmt 0                # process.c3:0:38
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
.Ltmp8:
	.loc	2 43 41 is_stmt 1               # process.c3:43:41
	movl	-36(%rbp), %eax
	andl	$65280, %eax                    # imm = 0xFF00
	.loc	2 43 40 is_stmt 0               # process.c3:43:40
	sarl	$8, %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB1_10
.Ltmp9:
.LBB1_9:
	.loc	1 395 86 is_stmt 1              # subprocess.c3:395:86
	movl	$1, %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB1_10
.LBB1_10:
	.loc	1 0 86 is_stmt 0                # subprocess.c3:0:86
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movl	-68(%rbp), %ecx                 # 4-byte Reload
	.loc	1 395 9                         # subprocess.c3:395:9
	movq	-8(%rbp), %rdx
	movl	%ecx, 28(%rdx)
	movl	%ecx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 395 9 epilogue_begin          # subprocess.c3:395:9
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_11:
	.cfi_def_cfa %rbp, 16
	.loc	1 382 26 is_stmt 1              # subprocess.c3:382:26
	leaq	.panic_msg.18(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.20(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$382, (%rsp)                    # imm = 0x17E
	callq	*(%rax)
.Ltmp10:
.Lfunc_end1:
	.size	std.os.process.SubProcess.join, .Lfunc_end1-std.os.process.SubProcess.join
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.process.execute_stdout_to_buffer,"axG",@progbits,std.os.process.execute_stdout_to_buffer,comdat
	.weak	std.os.process.execute_stdout_to_buffer # -- Begin function std.os.process.execute_stdout_to_buffer
	.p2align	4, 0x90
	.type	std.os.process.execute_stdout_to_buffer,@function
std.os.process.execute_stdout_to_buffer: # @std.os.process.execute_stdout_to_buffer
.Lfunc_begin2:
	.loc	1 290 0                         # subprocess.c3:290:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp                      # imm = 0x200
	movq	%rdi, -424(%rbp)                # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -24(%rbp)
	movl	%r9d, -36(%rbp)
.Ltmp11:
	.loc	1 292 39 prologue_end           # subprocess.c3:292:39
	movq	-32(%rbp), %rcx
	movq	%rcx, -416(%rbp)                # 8-byte Spill
	movq	-24(%rbp), %rcx
	movq	%rcx, -408(%rbp)                # 8-byte Spill
	.loc	1 292 53 is_stmt 0              # subprocess.c3:292:53
	movl	-36(%rbp), %ecx
	movl	%ecx, -396(%rbp)                # 4-byte Spill
	.loc	1 292 62                        # subprocess.c3:292:62
	movq	(%rax), %rcx
	movq	%rcx, -392(%rbp)                # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	.loc	1 300 12 is_stmt 1              # subprocess.c3:300:12
	cmpq	$0, %rax
	setne	%cl
	xorb	$-1, %cl
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -369(%rbp)                 # 1-byte Spill
	jne	.LBB2_2
# %bb.1:
	.loc	1 0 12 is_stmt 0                # subprocess.c3:0:12
	movl	-396(%rbp), %eax                # 4-byte Reload
	.loc	1 300 28                        # subprocess.c3:300:28
	shrl	%eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	xorb	$-1, %al
	movb	%al, -369(%rbp)                 # 1-byte Spill
.LBB2_2:
	.loc	1 0 28                          # subprocess.c3:0:28
	movb	-369(%rbp), %al                 # 1-byte Reload
	.loc	1 300 28                        # subprocess.c3:300:28
	testb	$1, %al
	jne	.LBB2_4
# %bb.3:
	.loc	1 292 23 is_stmt 1              # subprocess.c3:292:23
	leaq	.panic_msg(%rip), %rdi
	movl	$65, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func(%rip), %r8
	movl	$24, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$292, (%rsp)                    # imm = 0x124
	callq	*(%rax)
.LBB2_4:
	.loc	1 0 23 is_stmt 0                # subprocess.c3:0:23
	movq	-384(%rbp), %r9                 # 8-byte Reload
	movq	-392(%rbp), %r8                 # 8-byte Reload
	movl	-396(%rbp), %ecx                # 4-byte Reload
	movq	-408(%rbp), %rdx                # 8-byte Reload
	movq	-416(%rbp), %rsi                # 8-byte Reload
	.loc	1 292 23                        # subprocess.c3:292:23
	leaq	-128(%rbp), %rdi
	callq	std.os.process.create@PLT
	movq	%rax, -432(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_6
# %bb.5:
	.loc	1 0 23                          # subprocess.c3:0:23
	movq	-432(%rbp), %rax                # 8-byte Reload
	.loc	1 292 23                        # subprocess.c3:292:23
	movq	%rax, -88(%rbp)
	jmp	.LBB2_7
.LBB2_6:
	jmp	.LBB2_8
.LBB2_7:
	movq	-88(%rbp), %rax
	.loc	1 292 23 epilogue_begin         # subprocess.c3:292:23
	addq	$512, %rsp                      # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_8:
	.cfi_def_cfa %rbp, 16
	vmovdqu	-128(%rbp), %xmm0
	vmovdqu	-112(%rbp), %xmm1
	vmovdqa	%xmm1, -64(%rbp)
	vmovdqa	%xmm0, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc	1 293 2 is_stmt 1               # subprocess.c3:293:2
	leaq	-140(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	std.os.process.SubProcess.join@PLT
	movq	%rax, -440(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_10
# %bb.9:
	.loc	1 0 2 is_stmt 0                 # subprocess.c3:0:2
	movq	-440(%rbp), %rax                # 8-byte Reload
	.loc	1 293 2                         # subprocess.c3:293:2
	movq	%rax, -136(%rbp)
	jmp	.LBB2_11
.LBB2_10:
	jmp	.LBB2_12
.LBB2_11:
	movq	-136(%rbp), %rax
	.loc	1 293 2 epilogue_begin          # subprocess.c3:293:2
	addq	$512, %rsp                      # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_12:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 2                           # subprocess.c3:0:2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	.loc	1 294 12 is_stmt 1              # subprocess.c3:294:12
	leaq	-168(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	std.os.process.SubProcess.read_stdout@PLT
	movq	%rax, -448(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_14
# %bb.13:
	.loc	1 0 12 is_stmt 0                # subprocess.c3:0:12
	movq	-448(%rbp), %rax                # 8-byte Reload
	.loc	1 294 12                        # subprocess.c3:294:12
	movq	%rax, -160(%rbp)
	jmp	.LBB2_15
.LBB2_14:
	jmp	.LBB2_16
.LBB2_15:
	movq	-160(%rbp), %rax
	.loc	1 294 12 epilogue_begin         # subprocess.c3:294:12
	addq	$512, %rsp                      # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_16:
	.cfi_def_cfa %rbp, 16
	movq	-168(%rbp), %rax
	movq	%rax, -152(%rbp)
	.loc	1 295 6 is_stmt 1               # subprocess.c3:295:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-152(%rbp), %rax
	jne	.LBB2_18
# %bb.17:
	.loc	1 0 6 is_stmt 0                 # subprocess.c3:0:6
	movq	-424(%rbp), %rax                # 8-byte Reload
	.loc	1 295 23                        # subprocess.c3:295:23
	leaq	.emptystr(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$0, 8(%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 295 23 epilogue_begin         # subprocess.c3:295:23
	addq	$512, %rsp                      # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_18:
	.cfi_def_cfa %rbp, 16
	.loc	1 296 17 is_stmt 1              # subprocess.c3:296:17
	movq	-16(%rbp), %rax
	movq	%rax, -464(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rcx
	movq	%rcx, -456(%rbp)                # 8-byte Spill
	.loc	1 296 24 is_stmt 0              # subprocess.c3:296:24
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setg	%al
	testb	$1, %al
	jne	.LBB2_22
# %bb.19:
	.loc	1 296 25                        # subprocess.c3:296:25
	movq	-152(%rbp), %rcx
	subq	$1, %rcx
	addq	$0, %rcx
	movq	%rcx, -480(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setg	%al
	subq	$0, %rcx
	movq	%rcx, -472(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_23
# %bb.20:
	.loc	1 0 25                          # subprocess.c3:0:25
	movq	-480(%rbp), %rcx                # 8-byte Reload
	movq	-456(%rbp), %rax                # 8-byte Reload
	.loc	1 296 9                         # subprocess.c3:296:9
	cmpq	%rcx, %rax
	setl	%al
	subq	$1, %rcx
	movq	%rcx, -488(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_24
# %bb.21:
	.loc	1 0 9                           # subprocess.c3:0:9
	movq	-424(%rbp), %rax                # 8-byte Reload
	movq	-464(%rbp), %rcx                # 8-byte Reload
	movq	-480(%rbp), %rdx                # 8-byte Reload
	.loc	1 296 9                         # subprocess.c3:296:9
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 296 9 epilogue_begin          # subprocess.c3:296:9
	addq	$512, %rsp                      # imm = 0x200
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_22:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # subprocess.c3:0:9
	movq	-456(%rbp), %rax                # 8-byte Reload
	movq	%rax, -192(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$0, -200(%rbp)
	movq	%rax, -232(%rbp)
	leaq	-192(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$2, -248(%rbp)
	.loc	1 296 9                         # subprocess.c3:296:9
	leaq	.panic_msg.1(%rip), %rdi
	movl	$61, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func(%rip), %r8
	movl	$24, %r9d
	leaq	-256(%rbp), %rax
	movl	$296, (%rsp)                    # imm = 0x128
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_23:
	.loc	1 0 9                           # subprocess.c3:0:9
	movq	-472(%rbp), %rax                # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -280(%rbp)
	leaq	-264(%rbp), %rax
	movq	%rax, -288(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	$1, -296(%rbp)
	.loc	1 296 9                         # subprocess.c3:296:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func(%rip), %r8
	movl	$24, %r9d
	leaq	-304(%rbp), %rax
	movl	$296, (%rsp)                    # imm = 0x128
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_24:
	.loc	1 0 9                           # subprocess.c3:0:9
	movq	-456(%rbp), %rcx                # 8-byte Reload
	movq	-488(%rbp), %rax                # 8-byte Reload
	movq	%rax, -312(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rcx, -320(%rbp)
	movq	%rax, -344(%rbp)
	leaq	-312(%rbp), %rcx
	movq	%rcx, -352(%rbp)
	movq	%rax, -328(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	$2, -360(%rbp)
	.loc	1 296 9                         # subprocess.c3:296:9
	leaq	.panic_msg.3(%rip), %rdi
	movl	$60, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func(%rip), %r8
	movl	$24, %r9d
	leaq	-368(%rbp), %rax
	movl	$296, (%rsp)                    # imm = 0x128
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp12:
.Lfunc_end2:
	.size	std.os.process.execute_stdout_to_buffer, .Lfunc_end2-std.os.process.execute_stdout_to_buffer
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.os.process.copy_command_line.20163
	.type	std.os.process.copy_command_line.20163,@function
std.os.process.copy_command_line.20163: # @std.os.process.copy_command_line.20163
.Lfunc_begin3:
	.loc	1 266 0 is_stmt 1               # subprocess.c3:266:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp                      # imm = 0x2E0
	movq	$0, -152(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
.Ltmp13:
	.loc	1 264 11 prologue_end           # subprocess.c3:264:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-24(%rbp), %rax
	jb	.LBB3_2
# %bb.1:
	leaq	.panic_msg.4(%rip), %rdi
	movl	$41, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$264, (%rsp)                    # imm = 0x108
	callq	*(%rax)
.Ltmp14:
.LBB3_2:
	.loc	1 0 11 is_stmt 0                # subprocess.c3:0:11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc	1 268 55 is_stmt 1              # subprocess.c3:268:55
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
.Ltmp15:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-96(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -120(%rbp)
.Ltmp16:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -120(%rbp)
	jne	.LBB3_4
# %bb.3:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -128(%rbp)
	jmp	.LBB3_22
.LBB3_4:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-120(%rbp), %rax
	movq	%rax, -544(%rbp)                # 8-byte Spill
	.loc	3 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -529(%rbp)                 # 1-byte Spill
	jne	.LBB3_8
# %bb.5:
	.loc	3 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -136(%rbp)
.Ltmp17:
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	4 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-136(%rbp), %rcx
	movb	%al, -545(%rbp)                 # 1-byte Spill
	je	.LBB3_7
# %bb.6:
	.loc	4 992 20 is_stmt 0              # math.c3:992:20
	movq	-136(%rbp), %rax
	.loc	4 992 25                        # math.c3:992:25
	movq	-136(%rbp), %rcx
	subq	$1, %rcx
	.loc	4 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	4 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -545(%rbp)                 # 1-byte Spill
.LBB3_7:
	.loc	4 0 19                          # math.c3:0:19
	movb	-545(%rbp), %al                 # 1-byte Reload
	movb	%al, -529(%rbp)                 # 1-byte Spill
.LBB3_8:
	movb	-529(%rbp), %al                 # 1-byte Reload
	.loc	4 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_10
.Ltmp18:
# %bb.9:
	.loc	3 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_10:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_12
	jmp	.LBB3_11
.LBB3_11:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$80, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_12:
	.loc	3 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-544(%rbp), %rcx                # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB3_14
# %bb.13:
	leaq	.panic_msg.9(%rip), %rdi
	movl	$59, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_14:
	movq	-104(%rbp), %rax
	movq	%rax, -560(%rbp)                # 8-byte Spill
	cmpq	-152(%rbp), %rax
	je	.LBB3_16
# %bb.15:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-560(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-560(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%rax, -568(%rbp)                # 8-byte Spill
	jmp	.LBB3_17
.LBB3_16:
	movq	-144(%rbp), %rax
	movq	%rax, -568(%rbp)                # 8-byte Spill
.LBB3_17:
	movq	-568(%rbp), %rax                # 8-byte Reload
	movq	%rax, -576(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB3_19
# %bb.18:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.10(%rip), %rdi
	movl	$44, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_19:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-576(%rbp), %rax                # 8-byte Reload
	movq	-544(%rbp), %rdx                # 8-byte Reload
	movq	-112(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -584(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_21
# %bb.20:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-584(%rbp), %rax                # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -72(%rbp)
	jmp	.LBB3_24
.LBB3_21:
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB3_22:
	movq	-128(%rbp), %rax
	movq	%rax, -608(%rbp)                # 8-byte Spill
.Ltmp19:
	.loc	3 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-96(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -600(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -592(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_33
# %bb.23:
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-608(%rbp), %rax                # 8-byte Reload
	movq	-600(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -616(%rbp)                # 8-byte Spill
	.loc	3 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB3_25
.LBB3_24:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
.Ltmp20:
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.11(%rip), %rdi
	movl	$36, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-240(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_25:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-616(%rbp), %rax                # 8-byte Reload
	.loc	3 287 9                         # mem_allocator.c3:287:9
	movq	%rax, -40(%rbp)
.Ltmp21:
	.loc	1 269 20 is_stmt 1              # subprocess.c3:269:20
	movq	-24(%rbp), %rax
	movq	%rax, -624(%rbp)                # 8-byte Spill
	.loc	1 269 11 is_stmt 0              # subprocess.c3:269:11
	movq	$0, -248(%rbp)
.LBB3_26:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-624(%rbp), %rax                # 8-byte Reload
	.loc	1 269 11                        # subprocess.c3:269:11
	cmpq	%rax, -248(%rbp)
	jae	.LBB3_31
# %bb.27:                               #   in Loop: Header=BB3_26 Depth=1
.Ltmp22:
	.loc	1 269 11                        # subprocess.c3:269:11
	movq	-248(%rbp), %rax
	movq	%rax, -256(%rbp)
	.loc	1 269 20                        # subprocess.c3:269:20
	movq	-24(%rbp), %rcx
	movq	%rcx, -648(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
	.loc	1 269 11                        # subprocess.c3:269:11
	movq	-248(%rbp), %rax
	movq	%rax, -632(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB3_34
# %bb.28:                               #   in Loop: Header=BB3_26 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-640(%rbp), %rax                # 8-byte Reload
	movq	-632(%rbp), %rcx                # 8-byte Reload
	.loc	1 269 11                        # subprocess.c3:269:11
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -664(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -656(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_35
# %bb.29:                               #   in Loop: Header=BB3_26 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-664(%rbp), %rax                # 8-byte Reload
	.loc	1 269 20                        # subprocess.c3:269:20
	movq	(%rax), %rcx
	movq	%rcx, -272(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)
.Ltmp23:
	.loc	1 271 27 is_stmt 1              # subprocess.c3:271:27
	movq	-272(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	.loc	1 271 13 is_stmt 0              # subprocess.c3:271:13
	callq	std.core.String.zstr_copy@PLT
	movq	%rax, -688(%rbp)                # 8-byte Spill
	.loc	1 271 3                         # subprocess.c3:271:3
	movq	-40(%rbp), %rax
	.loc	1 271 8                         # subprocess.c3:271:8
	movq	-256(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -672(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_36
# %bb.30:                               #   in Loop: Header=BB3_26 Depth=1
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	-680(%rbp), %rax                # 8-byte Reload
	movq	-688(%rbp), %rcx                # 8-byte Reload
	.loc	1 271 3                         # subprocess.c3:271:3
	movq	%rcx, (%rax)
.Ltmp24:
	.loc	1 269 11 is_stmt 1              # subprocess.c3:269:11
	movq	-248(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB3_26
.Ltmp25:
.LBB3_31:
	.loc	1 273 2                         # subprocess.c3:273:2
	movq	-40(%rbp), %rax
	.loc	1 273 7 is_stmt 0               # subprocess.c3:273:7
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -704(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -696(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_37
# %bb.32:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	-704(%rbp), %rax                # 8-byte Reload
	.loc	1 273 2                         # subprocess.c3:273:2
	movq	$0, (%rax)
	.loc	1 274 9 is_stmt 1               # subprocess.c3:274:9
	movq	-40(%rbp), %rax
	.loc	1 274 9 epilogue_begin is_stmt 0 # subprocess.c3:274:9
	addq	$736, %rsp                      # imm = 0x2E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_33:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # subprocess.c3:0:9
	movq	-592(%rbp), %rax                # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$1, -200(%rbp)
.Ltmp26:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$43, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-208(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp27:
.LBB3_34:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-632(%rbp), %rcx                # 8-byte Reload
	movq	-648(%rbp), %rax                # 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -288(%rbp)
	movq	%rax, -312(%rbp)
	leaq	-280(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$2, -328(%rbp)
.Ltmp28:
	.loc	1 269 11 is_stmt 1              # subprocess.c3:269:11
	leaq	.panic_msg.12(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-336(%rbp), %rax
	movl	$269, (%rsp)                    # imm = 0x10D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_35:
	.loc	1 0 11 is_stmt 0                # subprocess.c3:0:11
	movq	-656(%rbp), %rcx                # 8-byte Reload
	movq	$8, -344(%rbp)
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
	.loc	1 269 20                        # subprocess.c3:269:20
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-400(%rbp), %rax
	movl	$269, (%rsp)                    # imm = 0x10D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_36:
	.loc	1 0 20                          # subprocess.c3:0:20
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
.Ltmp29:
	.loc	1 271 3 is_stmt 1               # subprocess.c3:271:3
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-464(%rbp), %rax
	movl	$271, (%rsp)                    # imm = 0x10F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp30:
.LBB3_37:
	.loc	1 0 3 is_stmt 0                 # subprocess.c3:0:3
	movq	-696(%rbp), %rcx                # 8-byte Reload
	movq	$8, -472(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -480(%rbp)
	movq	%rax, -504(%rbp)
	leaq	-472(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	%rax, -488(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, -496(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	$2, -520(%rbp)
	.loc	1 273 2 is_stmt 1               # subprocess.c3:273:2
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-528(%rbp), %rax
	movl	$273, (%rsp)                    # imm = 0x111
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp31:
.Lfunc_end3:
	.size	std.os.process.copy_command_line.20163, .Lfunc_end3-std.os.process.copy_command_line.20163
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.os.process.copy_env.20170
	.type	std.os.process.copy_env.20170,@function
std.os.process.copy_env.20170:          # @std.os.process.copy_env.20170
.Lfunc_begin4:
	.loc	1 278 0                         # subprocess.c3:278:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp                      # imm = 0x2E0
	movq	$0, -152(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
.Ltmp32:
	.loc	1 280 6 prologue_end            # subprocess.c3:280:6
	cmpq	$0, -24(%rbp)
	jne	.LBB4_2
# %bb.1:
	.loc	1 280 31 is_stmt 0              # subprocess.c3:280:31
	movq	std.os.process.EMPTY_ENVIRONMENT@GOTPCREL(%rip), %rax
	.loc	1 280 31 epilogue_begin         # subprocess.c3:280:31
	addq	$736, %rsp                      # imm = 0x2E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 31                          # subprocess.c3:0:31
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc	1 281 55 is_stmt 1              # subprocess.c3:281:55
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)
.Ltmp33:
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-96(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -120(%rbp)
.Ltmp34:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -120(%rbp)
	jne	.LBB4_4
# %bb.3:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -128(%rbp)
	jmp	.LBB4_22
.LBB4_4:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-120(%rbp), %rax
	movq	%rax, -544(%rbp)                # 8-byte Spill
	.loc	3 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -529(%rbp)                 # 1-byte Spill
	jne	.LBB4_8
# %bb.5:
	.loc	3 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -136(%rbp)
.Ltmp35:
	.loc	4 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-136(%rbp), %rcx
	movb	%al, -545(%rbp)                 # 1-byte Spill
	je	.LBB4_7
# %bb.6:
	.loc	4 992 20 is_stmt 0              # math.c3:992:20
	movq	-136(%rbp), %rax
	.loc	4 992 25                        # math.c3:992:25
	movq	-136(%rbp), %rcx
	subq	$1, %rcx
	.loc	4 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	4 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -545(%rbp)                 # 1-byte Spill
.LBB4_7:
	.loc	4 0 19                          # math.c3:0:19
	movb	-545(%rbp), %al                 # 1-byte Reload
	movb	%al, -529(%rbp)                 # 1-byte Spill
.LBB4_8:
	movb	-529(%rbp), %al                 # 1-byte Reload
	.loc	4 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB4_10
.Ltmp36:
# %bb.9:
	.loc	3 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB4_10:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB4_12
	jmp	.LBB4_11
.LBB4_11:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$80, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB4_12:
	.loc	3 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-544(%rbp), %rcx                # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB4_14
# %bb.13:
	leaq	.panic_msg.9(%rip), %rdi
	movl	$59, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB4_14:
	movq	-104(%rbp), %rax
	movq	%rax, -560(%rbp)                # 8-byte Spill
	cmpq	-152(%rbp), %rax
	je	.LBB4_16
# %bb.15:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-560(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-560(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%rax, -568(%rbp)                # 8-byte Spill
	jmp	.LBB4_17
.LBB4_16:
	movq	-144(%rbp), %rax
	movq	%rax, -568(%rbp)                # 8-byte Spill
.LBB4_17:
	movq	-568(%rbp), %rax                # 8-byte Reload
	movq	%rax, -576(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB4_19
# %bb.18:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.10(%rip), %rdi
	movl	$44, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB4_19:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-576(%rbp), %rax                # 8-byte Reload
	movq	-544(%rbp), %rdx                # 8-byte Reload
	movq	-112(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -584(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_21
# %bb.20:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-584(%rbp), %rax                # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -72(%rbp)
	jmp	.LBB4_24
.LBB4_21:
	movq	-160(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB4_22:
	movq	-128(%rbp), %rax
	movq	%rax, -608(%rbp)                # 8-byte Spill
.Ltmp37:
	.loc	3 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-96(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -600(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -592(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB4_33
# %bb.23:
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-608(%rbp), %rax                # 8-byte Reload
	movq	-600(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -616(%rbp)                # 8-byte Spill
	.loc	3 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB4_25
.LBB4_24:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
.Ltmp38:
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.11(%rip), %rdi
	movl	$36, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-240(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_25:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-616(%rbp), %rax                # 8-byte Reload
	.loc	3 287 9                         # mem_allocator.c3:287:9
	movq	%rax, -40(%rbp)
.Ltmp39:
	.loc	1 282 2 is_stmt 1               # subprocess.c3:282:2
	movq	-40(%rbp), %rax
	.loc	1 282 7 is_stmt 0               # subprocess.c3:282:7
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -624(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_34
# %bb.26:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	-632(%rbp), %rax                # 8-byte Reload
	.loc	1 282 2                         # subprocess.c3:282:2
	movq	$0, (%rax)
.Ltmp40:
	.loc	1 283 20 is_stmt 1              # subprocess.c3:283:20
	movq	-24(%rbp), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
	.loc	1 283 11 is_stmt 0              # subprocess.c3:283:11
	movq	$0, -312(%rbp)
.LBB4_27:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-640(%rbp), %rax                # 8-byte Reload
	.loc	1 283 11                        # subprocess.c3:283:11
	cmpq	%rax, -312(%rbp)
	jae	.LBB4_32
# %bb.28:                               #   in Loop: Header=BB4_27 Depth=1
.Ltmp41:
	.loc	1 283 11                        # subprocess.c3:283:11
	movq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	.loc	1 283 20                        # subprocess.c3:283:20
	movq	-24(%rbp), %rcx
	movq	%rcx, -664(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -656(%rbp)                # 8-byte Spill
	.loc	1 283 11                        # subprocess.c3:283:11
	movq	-312(%rbp), %rax
	movq	%rax, -648(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB4_35
# %bb.29:                               #   in Loop: Header=BB4_27 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-656(%rbp), %rax                # 8-byte Reload
	movq	-648(%rbp), %rcx                # 8-byte Reload
	.loc	1 283 11                        # subprocess.c3:283:11
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -672(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_36
# %bb.30:                               #   in Loop: Header=BB4_27 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-680(%rbp), %rax                # 8-byte Reload
	.loc	1 283 20                        # subprocess.c3:283:20
	movq	(%rax), %rcx
	movq	%rcx, -336(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)
.Ltmp42:
	.loc	1 285 27 is_stmt 1              # subprocess.c3:285:27
	movq	-336(%rbp), %rdi
	movq	-328(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	.loc	1 285 13 is_stmt 0              # subprocess.c3:285:13
	callq	std.core.String.zstr_copy@PLT
	movq	%rax, -704(%rbp)                # 8-byte Spill
	.loc	1 285 3                         # subprocess.c3:285:3
	movq	-40(%rbp), %rax
	.loc	1 285 8                         # subprocess.c3:285:8
	movq	-320(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -696(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -688(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_37
# %bb.31:                               #   in Loop: Header=BB4_27 Depth=1
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	-696(%rbp), %rax                # 8-byte Reload
	movq	-704(%rbp), %rcx                # 8-byte Reload
	.loc	1 285 3                         # subprocess.c3:285:3
	movq	%rcx, (%rax)
.Ltmp43:
	.loc	1 283 11 is_stmt 1              # subprocess.c3:283:11
	movq	-312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB4_27
.Ltmp44:
.LBB4_32:
	.loc	1 287 9                         # subprocess.c3:287:9
	movq	-40(%rbp), %rax
	.loc	1 287 9 epilogue_begin is_stmt 0 # subprocess.c3:287:9
	addq	$736, %rsp                      # imm = 0x2E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_33:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # subprocess.c3:0:9
	movq	-592(%rbp), %rax                # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$1, -200(%rbp)
.Ltmp45:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$43, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-208(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp46:
.LBB4_34:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-624(%rbp), %rcx                # 8-byte Reload
	movq	$8, -248(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -256(%rbp)
	movq	%rax, -280(%rbp)
	leaq	-248(%rbp), %rcx
	movq	%rcx, -288(%rbp)
	movq	%rax, -264(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	$2, -296(%rbp)
	.loc	1 282 2 is_stmt 1               # subprocess.c3:282:2
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-304(%rbp), %rax
	movl	$282, (%rsp)                    # imm = 0x11A
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_35:
	.loc	1 0 2 is_stmt 0                 # subprocess.c3:0:2
	movq	-648(%rbp), %rcx                # 8-byte Reload
	movq	-664(%rbp), %rax                # 8-byte Reload
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
.Ltmp47:
	.loc	1 283 11 is_stmt 1              # subprocess.c3:283:11
	leaq	.panic_msg.12(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-400(%rbp), %rax
	movl	$283, (%rsp)                    # imm = 0x11B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_36:
	.loc	1 0 11 is_stmt 0                # subprocess.c3:0:11
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
	.loc	1 283 20                        # subprocess.c3:283:20
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-464(%rbp), %rax
	movl	$283, (%rsp)                    # imm = 0x11B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_37:
	.loc	1 0 20                          # subprocess.c3:0:20
	movq	-688(%rbp), %rcx                # 8-byte Reload
	movq	$8, -472(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -480(%rbp)
	movq	%rax, -504(%rbp)
	leaq	-472(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	%rax, -488(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, -496(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	$2, -520(%rbp)
.Ltmp48:
	.loc	1 285 3 is_stmt 1               # subprocess.c3:285:3
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-528(%rbp), %rax
	movl	$285, (%rsp)                    # imm = 0x11D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp49:
.Lfunc_end4:
	.size	std.os.process.copy_env.20170, .Lfunc_end4-std.os.process.copy_env.20170
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.process.create,"axG",@progbits,std.os.process.create,comdat
	.weak	std.os.process.create           # -- Begin function std.os.process.create
	.p2align	4, 0x90
	.type	std.os.process.create,@function
std.os.process.create:                  # @std.os.process.create
.Lfunc_begin5:
	.loc	1 302 0                         # subprocess.c3:302:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$4160, %rsp                     # imm = 0x1040
	movq	%rdi, -3712(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -3104(%rbp)
	movq	%rdx, -3096(%rbp)
	movl	%ecx, -3108(%rbp)
	movq	%r8, -3128(%rbp)
	movq	%r9, -3120(%rbp)
.Ltmp50:
	.loc	1 300 12 prologue_end           # subprocess.c3:300:12
	cmpq	$0, -3120(%rbp)
	setne	%cl
	xorb	$-1, %cl
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -3697(%rbp)                # 1-byte Spill
	jne	.LBB5_2
# %bb.1:
	.loc	1 300 28 is_stmt 0              # subprocess.c3:300:28
	movl	-3108(%rbp), %eax
	shrl	%eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	xorb	$-1, %al
	movb	%al, -3697(%rbp)                # 1-byte Spill
.LBB5_2:
	.loc	1 0 28                          # subprocess.c3:0:28
	movb	-3697(%rbp), %al                # 1-byte Reload
	.loc	1 300 28                        # subprocess.c3:300:28
	testb	$1, %al
	jne	.LBB5_5
# %bb.3:
	.loc	1 300 11                        # subprocess.c3:300:11
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -3720(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.4:
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-3720(%rbp), %rax               # 8-byte Reload
	.loc	1 300 11                        # subprocess.c3:300:11
	leaq	.panic_msg(%rip), %rdi
	movl	$65, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.15(%rip), %r8
	movl	$6, %r9d
	movl	$300, (%rsp)                    # imm = 0x12C
	callq	*%rax
.Ltmp51:
.LBB5_5:
	.loc	1 304 10 is_stmt 1              # subprocess.c3:304:10
	movl	$0, -3136(%rbp)
	movl	$0, -3132(%rbp)
	.loc	1 305 10                        # subprocess.c3:305:10
	movl	$0, -3144(%rbp)
	movl	$0, -3140(%rbp)
	.loc	1 306 10                        # subprocess.c3:306:10
	movl	$0, -3152(%rbp)
	movl	$0, -3148(%rbp)
	.loc	1 307 16                        # subprocess.c3:307:16
	movq	$0, -3160(%rbp)
	.loc	1 308 17                        # subprocess.c3:308:17
	movq	$0, -3168(%rbp)
	.loc	1 309 17                        # subprocess.c3:309:17
	movq	$0, -3176(%rbp)
	.loc	1 311 29                        # subprocess.c3:311:29
	leaq	-3256(%rbp), %rdi
	xorl	%esi, %esi
	movl	$80, %edx
	callq	memset@PLT
	.loc	1 312 6                         # subprocess.c3:312:6
	leaq	-3256(%rbp), %rdi
	callq	posix_spawn_file_actions_init@PLT
	cmpl	$0, %eax
	je	.LBB5_8
# %bb.6:
	.loc	1 312 55 is_stmt 0              # subprocess.c3:312:55
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.7:
	movq	std.os.process.FAILED_TO_INITIALIZE_ACTIONS@GOTPCREL(%rip), %rax
	.loc	1 312 55 epilogue_begin         # subprocess.c3:312:55
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_8:
	.cfi_def_cfa %rbp, 16
	.loc	1 316 7 is_stmt 1               # subprocess.c3:316:7
	movl	-3108(%rbp), %eax
	shrl	$5, %eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB5_45
# %bb.9:
.Ltmp52:
	.loc	1 318 7                         # subprocess.c3:318:7
	leaq	-3136(%rbp), %rdi
	callq	pipe@PLT
	cmpl	$0, %eax
	je	.LBB5_12
.Ltmp53:
# %bb.10:
	.loc	1 0 7 is_stmt 0                 # subprocess.c3:0:7
	movq	std.os.process.FAILED_TO_OPEN_STDIN@GOTPCREL(%rip), %rax
	movq	%rax, -3264(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp54:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.11:
	movq	std.os.process.FAILED_TO_OPEN_STDIN@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp55:
.LBB5_12:
	.cfi_def_cfa %rbp, 16
	.loc	1 319 7 is_stmt 1               # subprocess.c3:319:7
	leaq	-3144(%rbp), %rdi
	callq	pipe@PLT
	cmpl	$0, %eax
	je	.LBB5_15
.Ltmp56:
# %bb.13:
	.loc	1 0 7 is_stmt 0                 # subprocess.c3:0:7
	movq	std.os.process.FAILED_TO_OPEN_STDOUT@GOTPCREL(%rip), %rax
	movq	%rax, -3272(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp57:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.14:
	movq	std.os.process.FAILED_TO_OPEN_STDOUT@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp58:
.LBB5_15:
	.cfi_def_cfa %rbp, 16
	.loc	1 320 8 is_stmt 1               # subprocess.c3:320:8
	movl	-3108(%rbp), %eax
	andl	$1, %eax
	movb	%al, %cl
	xorb	$-1, %cl
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %cl
	movb	%al, -3721(%rbp)                # 1-byte Spill
	jne	.LBB5_16
	jmp	.LBB5_17
.LBB5_16:
	.loc	1 320 42 is_stmt 0              # subprocess.c3:320:42
	leaq	-3152(%rbp), %rdi
	callq	pipe@PLT
	cmpl	$0, %eax
	setne	%al
	movb	%al, -3721(%rbp)                # 1-byte Spill
.LBB5_17:
	.loc	1 0 42                          # subprocess.c3:0:42
	movb	-3721(%rbp), %al                # 1-byte Reload
	.loc	1 320 42                        # subprocess.c3:320:42
	testb	$1, %al
	jne	.LBB5_18
	jmp	.LBB5_20
.Ltmp59:
.LBB5_18:
	.loc	1 0 42                          # subprocess.c3:0:42
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	movq	%rax, -3280(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp60:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.19:
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp61:
.LBB5_20:
	.cfi_def_cfa %rbp, 16
	.loc	1 322 60 is_stmt 1              # subprocess.c3:322:60
	movl	-3132(%rbp), %esi
	.loc	1 322 7 is_stmt 0               # subprocess.c3:322:7
	leaq	-3256(%rbp), %rdi
	callq	posix_spawn_file_actions_addclose@PLT
	cmpl	$0, %eax
	je	.LBB5_23
.Ltmp62:
# %bb.21:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	std.os.process.FAILED_TO_OPEN_STDIN@GOTPCREL(%rip), %rax
	movq	%rax, -3288(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp63:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.22:
	movq	std.os.process.FAILED_TO_OPEN_STDIN@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp64:
.LBB5_23:
	.cfi_def_cfa %rbp, 16
	.loc	1 323 63 is_stmt 1              # subprocess.c3:323:63
	movl	-3136(%rbp), %esi
	.loc	1 323 7 is_stmt 0               # subprocess.c3:323:7
	leaq	-3256(%rbp), %rdi
	xorl	%edx, %edx
	callq	posix_spawn_file_actions_adddup2@PLT
	cmpl	$0, %eax
	je	.LBB5_26
.Ltmp65:
# %bb.24:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	std.os.process.FAILED_TO_OPEN_STDIN@GOTPCREL(%rip), %rax
	movq	%rax, -3296(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp66:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.25:
	movq	std.os.process.FAILED_TO_OPEN_STDIN@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp67:
.LBB5_26:
	.cfi_def_cfa %rbp, 16
	.loc	1 324 61 is_stmt 1              # subprocess.c3:324:61
	movl	-3144(%rbp), %esi
	.loc	1 324 7 is_stmt 0               # subprocess.c3:324:7
	leaq	-3256(%rbp), %rdi
	callq	posix_spawn_file_actions_addclose@PLT
	cmpl	$0, %eax
	je	.LBB5_29
.Ltmp68:
# %bb.27:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	std.os.process.FAILED_TO_OPEN_STDOUT@GOTPCREL(%rip), %rax
	movq	%rax, -3304(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp69:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.28:
	movq	std.os.process.FAILED_TO_OPEN_STDOUT@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp70:
.LBB5_29:
	.cfi_def_cfa %rbp, 16
	.loc	1 325 64 is_stmt 1              # subprocess.c3:325:64
	movl	-3140(%rbp), %esi
	.loc	1 325 7 is_stmt 0               # subprocess.c3:325:7
	leaq	-3256(%rbp), %rdi
	movl	$1, %edx
	callq	posix_spawn_file_actions_adddup2@PLT
	cmpl	$0, %eax
	je	.LBB5_32
.Ltmp71:
# %bb.30:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	std.os.process.FAILED_TO_OPEN_STDOUT@GOTPCREL(%rip), %rax
	movq	%rax, -3312(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp72:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.31:
	movq	std.os.process.FAILED_TO_OPEN_STDOUT@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp73:
.LBB5_32:
	.cfi_def_cfa %rbp, 16
	.loc	1 327 7 is_stmt 1               # subprocess.c3:327:7
	movl	-3108(%rbp), %eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	je	.LBB5_37
# %bb.33:
.Ltmp74:
	.loc	1 329 8                         # subprocess.c3:329:8
	leaq	-3256(%rbp), %rdi
	movl	$1, %esi
	movl	$2, %edx
	callq	posix_spawn_file_actions_adddup2@PLT
	cmpl	$0, %eax
	je	.LBB5_36
.Ltmp75:
# %bb.34:
	.loc	1 0 8 is_stmt 0                 # subprocess.c3:0:8
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	movq	%rax, -3320(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp76:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.35:
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_36:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB5_44
.Ltmp77:
.LBB5_37:
	.loc	1 333 62 is_stmt 1              # subprocess.c3:333:62
	movl	-3152(%rbp), %esi
	.loc	1 333 8 is_stmt 0               # subprocess.c3:333:8
	leaq	-3256(%rbp), %rdi
	callq	posix_spawn_file_actions_addclose@PLT
	cmpl	$0, %eax
	je	.LBB5_40
.Ltmp78:
# %bb.38:
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	movq	%rax, -3328(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp79:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.39:
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp80:
.LBB5_40:
	.cfi_def_cfa %rbp, 16
	.loc	1 334 65 is_stmt 1              # subprocess.c3:334:65
	movl	-3148(%rbp), %esi
	.loc	1 334 8 is_stmt 0               # subprocess.c3:334:8
	leaq	-3256(%rbp), %rdi
	movl	$2, %edx
	callq	posix_spawn_file_actions_adddup2@PLT
	cmpl	$0, %eax
	je	.LBB5_43
.Ltmp81:
# %bb.41:
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	movq	%rax, -3336(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp82:
	.loc	1 313 8 is_stmt 1               # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.42:
	movq	std.os.process.FAILED_TO_OPEN_STDERR@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_43:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB5_44
.LBB5_44:
	jmp	.LBB5_45
.Ltmp83:
.LBB5_45:
	.loc	1 338 8 is_stmt 1               # subprocess.c3:338:8
	movl	$0, -3340(%rbp)
	leaq	-2064(%rbp), %rdi
	movq	%rdi, -3784(%rbp)               # 8-byte Spill
	xorl	%esi, %esi
	movl	$2048, %edx                     # imm = 0x800
	movq	%rdx, -3776(%rbp)               # 8-byte Spill
.Ltmp84:
	.file	5 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	5 572 14                        # mem.c3:572:14
	callq	memset@PLT
	movq	-3784(%rbp), %rsi               # 8-byte Reload
	movq	-3776(%rbp), %rdx               # 8-byte Reload
	.loc	5 573 19                        # mem.c3:573:19
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -3376(%rbp)
	vmovdqa	%xmm0, -3392(%rbp)
	movq	$0, -3352(%rbp)
	movq	$0, -3360(%rbp)
	.loc	5 574 26                        # mem.c3:574:26
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rax
	movq	%fs:(%rax), %rcx
	movq	%fs:8(%rax), %r8
	leaq	-3392(%rbp), %rdi
	movq	%rdi, -3768(%rbp)               # 8-byte Spill
	.loc	5 574 2 is_stmt 0               # mem.c3:574:2
	callq	std.core.mem.allocator.OnStackAllocator.init@PLT
	movq	-3768(%rbp), %rax               # 8-byte Reload
.Ltmp85:
	.loc	5 576 8 is_stmt 1               # mem.c3:576:8
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rcx
	movq	%rcx, -3400(%rbp)
	movq	%rax, -3408(%rbp)
.Ltmp86:
	.loc	1 341 53                        # subprocess.c3:341:53
	movq	-3408(%rbp), %rax
	movq	%rax, -3760(%rbp)               # 8-byte Spill
	movq	-3400(%rbp), %rax
	movq	%rax, -3752(%rbp)               # 8-byte Spill
	.loc	1 341 58 is_stmt 0              # subprocess.c3:341:58
	movq	-3104(%rbp), %rax
	movq	%rax, -3744(%rbp)               # 8-byte Spill
	movq	-3096(%rbp), %rcx
	movq	%rcx, -3736(%rbp)               # 8-byte Spill
	.loc	1 341 35                        # subprocess.c3:341:35
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB5_48
# %bb.46:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -3792(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.47:
	.loc	1 0 35                          # subprocess.c3:0:35
	movq	-3792(%rbp), %rax               # 8-byte Reload
	.loc	1 341 35                        # subprocess.c3:341:35
	leaq	.panic_msg.4(%rip), %rdi
	movl	$41, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.15(%rip), %r8
	movl	$6, %r9d
	movl	$341, (%rsp)                    # imm = 0x155
	callq	*%rax
.LBB5_48:
	.loc	1 0 35                          # subprocess.c3:0:35
	movq	-3736(%rbp), %rax               # 8-byte Reload
	movq	-3744(%rbp), %rcx               # 8-byte Reload
	movq	-3752(%rbp), %rdx               # 8-byte Reload
	movq	-3760(%rbp), %rsi               # 8-byte Reload
	movq	%rsi, -3432(%rbp)
	movq	%rdx, -3424(%rbp)
	movq	-3432(%rbp), %rsi
	movq	-3424(%rbp), %rdx
	movq	$0, -2720(%rbp)
	movq	%rsi, -2592(%rbp)
	movq	%rdx, -2584(%rbp)
	movq	%rcx, -2608(%rbp)
	movq	%rax, -2600(%rbp)
.Ltmp87:
	.loc	1 264 11 is_stmt 1              # subprocess.c3:264:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-2600(%rbp), %rax
	jb	.LBB5_50
# %bb.49:
	leaq	.panic_msg.4(%rip), %rdi
	movl	$41, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$264, (%rsp)                    # imm = 0x108
	callq	*(%rax)
.Ltmp88:
.LBB5_50:
	.loc	1 0 11 is_stmt 0                # subprocess.c3:0:11
	movq	-2592(%rbp), %rax
	movq	%rax, -2632(%rbp)
	movq	-2584(%rbp), %rax
	movq	%rax, -2624(%rbp)
	.loc	1 268 55 is_stmt 1              # subprocess.c3:268:55
	movq	-2600(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2640(%rbp)
	movq	-2632(%rbp), %rax
	movq	%rax, -2664(%rbp)
	movq	-2624(%rbp), %rax
	movq	%rax, -2656(%rbp)
	movq	-2640(%rbp), %rax
	movq	%rax, -2672(%rbp)
	movq	-2664(%rbp), %rax
	movq	%rax, -2688(%rbp)
	movq	-2656(%rbp), %rax
	movq	%rax, -2680(%rbp)
.Ltmp89:
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-2672(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -2696(%rbp)
.Ltmp90:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -2696(%rbp)
	jne	.LBB5_52
# %bb.51:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -2704(%rbp)
	jmp	.LBB5_62
.LBB5_52:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-2696(%rbp), %rcx
	movq	%rcx, -3800(%rbp)               # 8-byte Spill
	.loc	3 86 10 is_stmt 0               # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB5_54
# %bb.53:
	leaq	.panic_msg.9(%rip), %rdi
	movl	$59, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_54:
	movq	-2680(%rbp), %rax
	movq	%rax, -3808(%rbp)               # 8-byte Spill
	cmpq	-2720(%rbp), %rax
	je	.LBB5_56
# %bb.55:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3808(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3808(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -2712(%rbp)
	movq	%rcx, -2720(%rbp)
	movq	%rax, -3816(%rbp)               # 8-byte Spill
	jmp	.LBB5_57
.LBB5_56:
	movq	-2712(%rbp), %rax
	movq	%rax, -3816(%rbp)               # 8-byte Spill
.LBB5_57:
	movq	-3816(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3824(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB5_59
# %bb.58:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.10(%rip), %rdi
	movl	$44, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_59:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3824(%rbp), %rax               # 8-byte Reload
	movq	-3800(%rbp), %rdx               # 8-byte Reload
	movq	-2688(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-2728(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3832(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB5_61
# %bb.60:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3832(%rbp), %rax               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -2648(%rbp)
.Ltmp91:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2776(%rbp)
	leaq	-2648(%rbp), %rax
	movq	%rax, -2784(%rbp)
	leaq	-2784(%rbp), %rax
	movq	%rax, -2800(%rbp)
	movq	$1, -2792(%rbp)
.Ltmp92:
	.loc	3 287 9                         # mem_allocator.c3:287:9
	leaq	.panic_msg.11(%rip), %rdi
	movl	$36, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-2800(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_61:
.Ltmp93:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	-2728(%rbp), %rax
	movq	%rax, -2704(%rbp)
.LBB5_62:
	movq	-2704(%rbp), %rax
	movq	%rax, -3848(%rbp)               # 8-byte Spill
.Ltmp94:
	.loc	3 304 67                        # mem_allocator.c3:304:67
	movq	-2672(%rbp), %rax
	movq	%rax, -3840(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB5_70
.Ltmp95:
# %bb.63:
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-3848(%rbp), %rax               # 8-byte Reload
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	movq	%rax, -2616(%rbp)
.Ltmp96:
	.loc	1 269 20                        # subprocess.c3:269:20
	movq	-2600(%rbp), %rax
	movq	%rax, -3856(%rbp)               # 8-byte Spill
	.loc	1 269 11 is_stmt 0              # subprocess.c3:269:11
	movq	$0, -2808(%rbp)
.LBB5_64:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-3856(%rbp), %rax               # 8-byte Reload
	.loc	1 269 11                        # subprocess.c3:269:11
	cmpq	%rax, -2808(%rbp)
	jae	.LBB5_69
# %bb.65:                               #   in Loop: Header=BB5_64 Depth=1
.Ltmp97:
	.loc	1 269 11                        # subprocess.c3:269:11
	movq	-2808(%rbp), %rax
	movq	%rax, -2816(%rbp)
	.loc	1 269 20                        # subprocess.c3:269:20
	movq	-2600(%rbp), %rcx
	movq	%rcx, -3880(%rbp)               # 8-byte Spill
	movq	-2608(%rbp), %rax
	movq	%rax, -3872(%rbp)               # 8-byte Spill
	.loc	1 269 11                        # subprocess.c3:269:11
	movq	-2808(%rbp), %rax
	movq	%rax, -3864(%rbp)               # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB5_71
# %bb.66:                               #   in Loop: Header=BB5_64 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-3872(%rbp), %rax               # 8-byte Reload
	movq	-3864(%rbp), %rcx               # 8-byte Reload
	.loc	1 269 11                        # subprocess.c3:269:11
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -3896(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3888(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_72
# %bb.67:                               #   in Loop: Header=BB5_64 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-3896(%rbp), %rax               # 8-byte Reload
	.loc	1 269 20                        # subprocess.c3:269:20
	movq	(%rax), %rcx
	movq	%rcx, -2832(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -2824(%rbp)
.Ltmp98:
	.loc	1 271 27 is_stmt 1              # subprocess.c3:271:27
	movq	-2832(%rbp), %rdi
	movq	-2824(%rbp), %rsi
	movq	-2592(%rbp), %rdx
	movq	-2584(%rbp), %rcx
	.loc	1 271 13 is_stmt 0              # subprocess.c3:271:13
	callq	std.core.String.zstr_copy@PLT
	movq	%rax, -3920(%rbp)               # 8-byte Spill
	.loc	1 271 3                         # subprocess.c3:271:3
	movq	-2616(%rbp), %rax
	.loc	1 271 8                         # subprocess.c3:271:8
	movq	-2816(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -3912(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3904(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_73
# %bb.68:                               #   in Loop: Header=BB5_64 Depth=1
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	-3912(%rbp), %rax               # 8-byte Reload
	movq	-3920(%rbp), %rcx               # 8-byte Reload
	.loc	1 271 3                         # subprocess.c3:271:3
	movq	%rcx, (%rax)
.Ltmp99:
	.loc	1 269 11 is_stmt 1              # subprocess.c3:269:11
	movq	-2808(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2808(%rbp)
	jmp	.LBB5_64
.Ltmp100:
.LBB5_69:
	.loc	1 273 2                         # subprocess.c3:273:2
	movq	-2616(%rbp), %rax
	.loc	1 273 7 is_stmt 0               # subprocess.c3:273:7
	movq	-2600(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -3936(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3928(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_74
	jmp	.LBB5_75
.LBB5_70:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	-3840(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2736(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -2744(%rbp)
	leaq	-2736(%rbp), %rax
	movq	%rax, -2752(%rbp)
	leaq	-2752(%rbp), %rax
	movq	%rax, -2768(%rbp)
	movq	$1, -2760(%rbp)
.Ltmp101:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$43, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-2768(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp102:
.LBB5_71:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3864(%rbp), %rcx               # 8-byte Reload
	movq	-3880(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2840(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2848(%rbp)
	movq	%rax, -2872(%rbp)
	leaq	-2840(%rbp), %rcx
	movq	%rcx, -2880(%rbp)
	movq	%rax, -2856(%rbp)
	leaq	-2848(%rbp), %rax
	movq	%rax, -2864(%rbp)
	leaq	-2880(%rbp), %rax
	movq	%rax, -2896(%rbp)
	movq	$2, -2888(%rbp)
.Ltmp103:
	.loc	1 269 11 is_stmt 1              # subprocess.c3:269:11
	leaq	.panic_msg.12(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-2896(%rbp), %rax
	movl	$269, (%rsp)                    # imm = 0x10D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_72:
	.loc	1 0 11 is_stmt 0                # subprocess.c3:0:11
	movq	-3888(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2904(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2912(%rbp)
	movq	%rax, -2936(%rbp)
	leaq	-2904(%rbp), %rcx
	movq	%rcx, -2944(%rbp)
	movq	%rax, -2920(%rbp)
	leaq	-2912(%rbp), %rax
	movq	%rax, -2928(%rbp)
	leaq	-2944(%rbp), %rax
	movq	%rax, -2960(%rbp)
	movq	$2, -2952(%rbp)
	.loc	1 269 20                        # subprocess.c3:269:20
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-2960(%rbp), %rax
	movl	$269, (%rsp)                    # imm = 0x10D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_73:
	.loc	1 0 20                          # subprocess.c3:0:20
	movq	-3904(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2968(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2976(%rbp)
	movq	%rax, -3000(%rbp)
	leaq	-2968(%rbp), %rcx
	movq	%rcx, -3008(%rbp)
	movq	%rax, -2984(%rbp)
	leaq	-2976(%rbp), %rax
	movq	%rax, -2992(%rbp)
	leaq	-3008(%rbp), %rax
	movq	%rax, -3024(%rbp)
	movq	$2, -3016(%rbp)
.Ltmp104:
	.loc	1 271 3 is_stmt 1               # subprocess.c3:271:3
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-3024(%rbp), %rax
	movl	$271, (%rsp)                    # imm = 0x10F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp105:
.LBB5_74:
	.loc	1 0 3 is_stmt 0                 # subprocess.c3:0:3
	movq	-3928(%rbp), %rcx               # 8-byte Reload
	movq	$8, -3032(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -3040(%rbp)
	movq	%rax, -3064(%rbp)
	leaq	-3032(%rbp), %rcx
	movq	%rcx, -3072(%rbp)
	movq	%rax, -3048(%rbp)
	leaq	-3040(%rbp), %rax
	movq	%rax, -3056(%rbp)
	leaq	-3072(%rbp), %rax
	movq	%rax, -3088(%rbp)
	movq	$2, -3080(%rbp)
	.loc	1 273 2 is_stmt 1               # subprocess.c3:273:2
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.5(%rip), %r8
	movl	$17, %r9d
	leaq	-3088(%rbp), %rax
	movl	$273, (%rsp)                    # imm = 0x111
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_75:
	.loc	1 0 2 is_stmt 0                 # subprocess.c3:0:2
	movq	-3936(%rbp), %rax               # 8-byte Reload
	.loc	1 273 2                         # subprocess.c3:273:2
	movq	$0, (%rax)
	.loc	1 274 9 is_stmt 1               # subprocess.c3:274:9
	movq	-2616(%rbp), %rax
.Ltmp106:
	.loc	1 341 35                        # subprocess.c3:341:35
	movq	%rax, -3416(%rbp)
	.loc	1 342 31                        # subprocess.c3:342:31
	movl	-3108(%rbp), %eax
	shrl	%eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	je	.LBB5_77
# %bb.76:
	.loc	1 342 61 is_stmt 0              # subprocess.c3:342:61
	movq	environ@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -3944(%rbp)               # 8-byte Spill
	jmp	.LBB5_106
.LBB5_77:
	.loc	1 342 92                        # subprocess.c3:342:92
	movq	-3408(%rbp), %rsi
	movq	-3400(%rbp), %rdx
	movq	-3128(%rbp), %rcx
	movq	-3120(%rbp), %rax
	movq	$0, -2208(%rbp)
	movq	%rsi, -2080(%rbp)
	movq	%rdx, -2072(%rbp)
	movq	%rcx, -2096(%rbp)
	movq	%rax, -2088(%rbp)
.Ltmp107:
	.loc	1 280 6 is_stmt 1               # subprocess.c3:280:6
	cmpq	$0, -2088(%rbp)
	jne	.LBB5_79
# %bb.78:
	.loc	1 280 31 is_stmt 0              # subprocess.c3:280:31
	movq	std.os.process.EMPTY_ENVIRONMENT@GOTPCREL(%rip), %rax
	movq	%rax, -3952(%rbp)               # 8-byte Spill
	jmp	.LBB5_105
.LBB5_79:
	.loc	1 0 31                          # subprocess.c3:0:31
	movq	-2080(%rbp), %rax
	movq	%rax, -2120(%rbp)
	movq	-2072(%rbp), %rax
	movq	%rax, -2112(%rbp)
	.loc	1 281 55 is_stmt 1              # subprocess.c3:281:55
	movq	-2088(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2128(%rbp)
	movq	-2120(%rbp), %rax
	movq	%rax, -2152(%rbp)
	movq	-2112(%rbp), %rax
	movq	%rax, -2144(%rbp)
	movq	-2128(%rbp), %rax
	movq	%rax, -2160(%rbp)
	movq	-2152(%rbp), %rax
	movq	%rax, -2176(%rbp)
	movq	-2144(%rbp), %rax
	movq	%rax, -2168(%rbp)
.Ltmp108:
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-2160(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -2184(%rbp)
.Ltmp109:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -2184(%rbp)
	jne	.LBB5_81
# %bb.80:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -2192(%rbp)
	jmp	.LBB5_91
.LBB5_81:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-2184(%rbp), %rcx
	movq	%rcx, -3960(%rbp)               # 8-byte Spill
	.loc	3 86 10 is_stmt 0               # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB5_83
# %bb.82:
	leaq	.panic_msg.9(%rip), %rdi
	movl	$59, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_83:
	movq	-2168(%rbp), %rax
	movq	%rax, -3968(%rbp)               # 8-byte Spill
	cmpq	-2208(%rbp), %rax
	je	.LBB5_85
# %bb.84:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3968(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3968(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -2200(%rbp)
	movq	%rcx, -2208(%rbp)
	movq	%rax, -3976(%rbp)               # 8-byte Spill
	jmp	.LBB5_86
.LBB5_85:
	movq	-2200(%rbp), %rax
	movq	%rax, -3976(%rbp)               # 8-byte Spill
.LBB5_86:
	movq	-3976(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3984(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB5_88
# %bb.87:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.10(%rip), %rdi
	movl	$44, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_88:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3984(%rbp), %rax               # 8-byte Reload
	movq	-3960(%rbp), %rdx               # 8-byte Reload
	movq	-2176(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-2216(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3992(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB5_90
# %bb.89:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3992(%rbp), %rax               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -2136(%rbp)
.Ltmp110:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2264(%rbp)
	leaq	-2136(%rbp), %rax
	movq	%rax, -2272(%rbp)
	leaq	-2272(%rbp), %rax
	movq	%rax, -2288(%rbp)
	movq	$1, -2280(%rbp)
.Ltmp111:
	.loc	3 287 9                         # mem_allocator.c3:287:9
	leaq	.panic_msg.11(%rip), %rdi
	movl	$36, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-2288(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_90:
.Ltmp112:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	-2216(%rbp), %rax
	movq	%rax, -2192(%rbp)
.LBB5_91:
	movq	-2192(%rbp), %rax
	movq	%rax, -4008(%rbp)               # 8-byte Spill
.Ltmp113:
	.loc	3 304 67                        # mem_allocator.c3:304:67
	movq	-2160(%rbp), %rax
	movq	%rax, -4000(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB5_100
.Ltmp114:
# %bb.92:
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-4008(%rbp), %rax               # 8-byte Reload
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	movq	%rax, -2104(%rbp)
.Ltmp115:
	.loc	1 282 2                         # subprocess.c3:282:2
	movq	-2104(%rbp), %rax
	.loc	1 282 7 is_stmt 0               # subprocess.c3:282:7
	movq	-2088(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -4024(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -4016(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_101
# %bb.93:
	.loc	1 0 7                           # subprocess.c3:0:7
	movq	-4024(%rbp), %rax               # 8-byte Reload
	.loc	1 282 2                         # subprocess.c3:282:2
	movq	$0, (%rax)
.Ltmp116:
	.loc	1 283 20 is_stmt 1              # subprocess.c3:283:20
	movq	-2088(%rbp), %rax
	movq	%rax, -4032(%rbp)               # 8-byte Spill
	.loc	1 283 11 is_stmt 0              # subprocess.c3:283:11
	movq	$0, -2360(%rbp)
.LBB5_94:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-4032(%rbp), %rax               # 8-byte Reload
	.loc	1 283 11                        # subprocess.c3:283:11
	cmpq	%rax, -2360(%rbp)
	jae	.LBB5_99
# %bb.95:                               #   in Loop: Header=BB5_94 Depth=1
.Ltmp117:
	.loc	1 283 11                        # subprocess.c3:283:11
	movq	-2360(%rbp), %rax
	movq	%rax, -2368(%rbp)
	.loc	1 283 20                        # subprocess.c3:283:20
	movq	-2088(%rbp), %rcx
	movq	%rcx, -4056(%rbp)               # 8-byte Spill
	movq	-2096(%rbp), %rax
	movq	%rax, -4048(%rbp)               # 8-byte Spill
	.loc	1 283 11                        # subprocess.c3:283:11
	movq	-2360(%rbp), %rax
	movq	%rax, -4040(%rbp)               # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB5_102
# %bb.96:                               #   in Loop: Header=BB5_94 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-4048(%rbp), %rax               # 8-byte Reload
	movq	-4040(%rbp), %rcx               # 8-byte Reload
	.loc	1 283 11                        # subprocess.c3:283:11
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -4072(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -4064(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_103
# %bb.97:                               #   in Loop: Header=BB5_94 Depth=1
	.loc	1 0 11                          # subprocess.c3:0:11
	movq	-4072(%rbp), %rax               # 8-byte Reload
	.loc	1 283 20                        # subprocess.c3:283:20
	movq	(%rax), %rcx
	movq	%rcx, -2384(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -2376(%rbp)
.Ltmp118:
	.loc	1 285 27 is_stmt 1              # subprocess.c3:285:27
	movq	-2384(%rbp), %rdi
	movq	-2376(%rbp), %rsi
	movq	-2080(%rbp), %rdx
	movq	-2072(%rbp), %rcx
	.loc	1 285 13 is_stmt 0              # subprocess.c3:285:13
	callq	std.core.String.zstr_copy@PLT
	movq	%rax, -4096(%rbp)               # 8-byte Spill
	.loc	1 285 3                         # subprocess.c3:285:3
	movq	-2104(%rbp), %rax
	.loc	1 285 8                         # subprocess.c3:285:8
	movq	-2368(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -4088(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -4080(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_104
# %bb.98:                               #   in Loop: Header=BB5_94 Depth=1
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	-4088(%rbp), %rax               # 8-byte Reload
	movq	-4096(%rbp), %rcx               # 8-byte Reload
	.loc	1 285 3                         # subprocess.c3:285:3
	movq	%rcx, (%rax)
.Ltmp119:
	.loc	1 283 11 is_stmt 1              # subprocess.c3:283:11
	movq	-2360(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2360(%rbp)
	jmp	.LBB5_94
.Ltmp120:
.LBB5_99:
	.loc	1 287 9                         # subprocess.c3:287:9
	movq	-2104(%rbp), %rax
	movq	%rax, -3952(%rbp)               # 8-byte Spill
	jmp	.LBB5_105
.LBB5_100:
	.loc	1 0 9 is_stmt 0                 # subprocess.c3:0:9
	movq	-4000(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2224(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -2232(%rbp)
	leaq	-2224(%rbp), %rax
	movq	%rax, -2240(%rbp)
	leaq	-2240(%rbp), %rax
	movq	%rax, -2256(%rbp)
	movq	$1, -2248(%rbp)
.Ltmp121:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$43, %esi
	leaq	.file.7(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-2256(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp122:
.LBB5_101:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-4016(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2296(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2304(%rbp)
	movq	%rax, -2328(%rbp)
	leaq	-2296(%rbp), %rcx
	movq	%rcx, -2336(%rbp)
	movq	%rax, -2312(%rbp)
	leaq	-2304(%rbp), %rax
	movq	%rax, -2320(%rbp)
	leaq	-2336(%rbp), %rax
	movq	%rax, -2352(%rbp)
	movq	$2, -2344(%rbp)
	.loc	1 282 2 is_stmt 1               # subprocess.c3:282:2
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-2352(%rbp), %rax
	movl	$282, (%rsp)                    # imm = 0x11A
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_102:
	.loc	1 0 2 is_stmt 0                 # subprocess.c3:0:2
	movq	-4040(%rbp), %rcx               # 8-byte Reload
	movq	-4056(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2392(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2400(%rbp)
	movq	%rax, -2424(%rbp)
	leaq	-2392(%rbp), %rcx
	movq	%rcx, -2432(%rbp)
	movq	%rax, -2408(%rbp)
	leaq	-2400(%rbp), %rax
	movq	%rax, -2416(%rbp)
	leaq	-2432(%rbp), %rax
	movq	%rax, -2448(%rbp)
	movq	$2, -2440(%rbp)
.Ltmp123:
	.loc	1 283 11 is_stmt 1              # subprocess.c3:283:11
	leaq	.panic_msg.12(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-2448(%rbp), %rax
	movl	$283, (%rsp)                    # imm = 0x11B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_103:
	.loc	1 0 11 is_stmt 0                # subprocess.c3:0:11
	movq	-4064(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2456(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2464(%rbp)
	movq	%rax, -2488(%rbp)
	leaq	-2456(%rbp), %rcx
	movq	%rcx, -2496(%rbp)
	movq	%rax, -2472(%rbp)
	leaq	-2464(%rbp), %rax
	movq	%rax, -2480(%rbp)
	leaq	-2496(%rbp), %rax
	movq	%rax, -2512(%rbp)
	movq	$2, -2504(%rbp)
	.loc	1 283 20                        # subprocess.c3:283:20
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-2512(%rbp), %rax
	movl	$283, (%rsp)                    # imm = 0x11B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_104:
	.loc	1 0 20                          # subprocess.c3:0:20
	movq	-4080(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2520(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2528(%rbp)
	movq	%rax, -2552(%rbp)
	leaq	-2520(%rbp), %rcx
	movq	%rcx, -2560(%rbp)
	movq	%rax, -2536(%rbp)
	leaq	-2528(%rbp), %rax
	movq	%rax, -2544(%rbp)
	leaq	-2560(%rbp), %rax
	movq	%rax, -2576(%rbp)
	movq	$2, -2568(%rbp)
.Ltmp124:
	.loc	1 285 3 is_stmt 1               # subprocess.c3:285:3
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.14(%rip), %r8
	movl	$8, %r9d
	leaq	-2576(%rbp), %rax
	movl	$285, (%rsp)                    # imm = 0x11D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp125:
.LBB5_105:
	.loc	1 0 3 is_stmt 0                 # subprocess.c3:0:3
	movq	-3952(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3944(%rbp)               # 8-byte Spill
.LBB5_106:
	movq	-3944(%rbp), %rax               # 8-byte Reload
	.loc	1 342 78 is_stmt 1              # subprocess.c3:342:78
	movq	%rax, -3440(%rbp)
	.loc	1 343 7                         # subprocess.c3:343:7
	movl	-3108(%rbp), %eax
	shrl	$4, %eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	je	.LBB5_112
# %bb.107:
.Ltmp126:
	.loc	1 345 30                        # subprocess.c3:345:30
	movq	-3416(%rbp), %rax
	movq	%rax, -4112(%rbp)               # 8-byte Spill
	.loc	1 345 48 is_stmt 0              # subprocess.c3:345:48
	andq	$7, %rax
	movq	%rax, -4104(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_124
# %bb.108:
	.loc	1 0 48                          # subprocess.c3:0:48
	movq	-4112(%rbp), %rax               # 8-byte Reload
	.loc	1 345 87                        # subprocess.c3:345:87
	movq	(%rax), %rsi
	movq	-3416(%rbp), %r8
	movq	-3440(%rbp), %r9
	.loc	1 345 8                         # subprocess.c3:345:8
	leaq	-3340(%rbp), %rdi
	leaq	-3256(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	posix_spawnp@PLT
	cmpl	$0, %eax
	je	.LBB5_111
.Ltmp127:
# %bb.109:
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	std.os.process.FAILED_TO_START_PROCESS@GOTPCREL(%rip), %rax
	movq	%rax, -3512(%rbp)
	leaq	-3392(%rbp), %rdi
.Ltmp128:
	.loc	5 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	leaq	-3256(%rbp), %rdi
.Ltmp129:
	.loc	1 313 8                         # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.110:
	movq	std.os.process.FAILED_TO_START_PROCESS@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_111:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB5_117
.Ltmp130:
.LBB5_112:
	.loc	1 349 30 is_stmt 1              # subprocess.c3:349:30
	movq	-3416(%rbp), %rax
	movq	%rax, -4128(%rbp)               # 8-byte Spill
	.loc	1 349 48 is_stmt 0              # subprocess.c3:349:48
	andq	$7, %rax
	movq	%rax, -4120(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_125
# %bb.113:
	.loc	1 0 48                          # subprocess.c3:0:48
	movq	-4128(%rbp), %rax               # 8-byte Reload
	.loc	1 349 87                        # subprocess.c3:349:87
	movq	(%rax), %rsi
	movq	-3416(%rbp), %r8
	movq	-3440(%rbp), %r9
	.loc	1 349 8                         # subprocess.c3:349:8
	leaq	-3340(%rbp), %rdi
	leaq	-3256(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	posix_spawnp@PLT
	cmpl	$0, %eax
	je	.LBB5_116
.Ltmp131:
# %bb.114:
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	std.os.process.FAILED_TO_START_PROCESS@GOTPCREL(%rip), %rax
	movq	%rax, -3592(%rbp)
	leaq	-3392(%rbp), %rdi
.Ltmp132:
	.loc	5 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	leaq	-3256(%rbp), %rdi
.Ltmp133:
	.loc	1 313 8                         # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.115:
	movq	std.os.process.FAILED_TO_START_PROCESS@GOTPCREL(%rip), %rax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_116:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB5_117
.Ltmp134:
.LBB5_117:
	.loc	5 575 8 is_stmt 1               # mem.c3:575:8
	leaq	-3392(%rbp), %rdi
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
.Ltmp135:
	.loc	1 354 7                         # subprocess.c3:354:7
	movl	-3108(%rbp), %eax
	shrl	$5, %eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB5_122
# %bb.118:
.Ltmp136:
	.loc	1 356 23                        # subprocess.c3:356:23
	movl	-3136(%rbp), %edi
	.loc	1 356 3 is_stmt 0               # subprocess.c3:356:3
	callq	close@PLT
	.loc	1 357 36 is_stmt 1              # subprocess.c3:357:36
	movl	-3132(%rbp), %edi
	.loc	1 357 11 is_stmt 0              # subprocess.c3:357:11
	leaq	.L.str(%rip), %rsi
	callq	fdopen@PLT
	movq	%rax, -3160(%rbp)
	.loc	1 358 24 is_stmt 1              # subprocess.c3:358:24
	movl	-3140(%rbp), %edi
	.loc	1 358 3 is_stmt 0               # subprocess.c3:358:3
	callq	close@PLT
	.loc	1 359 38 is_stmt 1              # subprocess.c3:359:38
	movl	-3144(%rbp), %edi
	.loc	1 359 12 is_stmt 0              # subprocess.c3:359:12
	leaq	.L.str.16(%rip), %rsi
	callq	fdopen@PLT
	movq	%rax, -3168(%rbp)
.Ltmp137:
	.loc	1 363 8 is_stmt 1               # subprocess.c3:363:8
	movl	-3108(%rbp), %eax
	andl	$1, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	je	.LBB5_120
# %bb.119:
.Ltmp138:
	.loc	1 365 14                        # subprocess.c3:365:14
	movq	-3168(%rbp), %rax
	movq	%rax, -3176(%rbp)
	.loc	1 366 5                         # subprocess.c3:366:5
	jmp	.LBB5_121
.Ltmp139:
.LBB5_120:
	.loc	1 368 25                        # subprocess.c3:368:25
	movl	-3148(%rbp), %edi
	.loc	1 368 4 is_stmt 0               # subprocess.c3:368:4
	callq	close@PLT
	.loc	1 369 39 is_stmt 1              # subprocess.c3:369:39
	movl	-3152(%rbp), %edi
	.loc	1 369 13 is_stmt 0              # subprocess.c3:369:13
	leaq	.L.str.17(%rip), %rsi
	callq	fdopen@PLT
	movq	%rax, -3176(%rbp)
.LBB5_121:
	jmp	.LBB5_122
.Ltmp140:
.LBB5_122:
	.loc	1 0 13                          # subprocess.c3:0:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -3632(%rbp)
	vmovdqa	%xmm0, -3648(%rbp)
	movq	$0, -3616(%rbp)
	.loc	1 374 17 is_stmt 1              # subprocess.c3:374:17
	movq	-3160(%rbp), %rax
	movq	%rax, -3648(%rbp)
	.loc	1 375 18                        # subprocess.c3:375:18
	movq	-3168(%rbp), %rax
	movq	%rax, -3640(%rbp)
	.loc	1 376 18                        # subprocess.c3:376:18
	movq	-3176(%rbp), %rax
	movq	%rax, -3632(%rbp)
	.loc	1 377 12                        # subprocess.c3:377:12
	movl	-3340(%rbp), %eax
	movl	%eax, -3624(%rbp)
	.loc	1 378 15                        # subprocess.c3:378:15
	movb	$1, -3616(%rbp)
	vmovdqa	-3648(%rbp), %xmm0
	vmovdqa	-3632(%rbp), %xmm1
	vmovdqa	%xmm1, -3680(%rbp)
	vmovdqa	%xmm0, -3696(%rbp)
	movq	-3616(%rbp), %rax
	movq	%rax, -3664(%rbp)
	leaq	-3256(%rbp), %rdi
.Ltmp141:
	.loc	1 313 8                         # subprocess.c3:313:8
	callq	posix_spawn_file_actions_destroy@PLT
                                        # kill: def $ecx killed $eax
	movq	-3712(%rbp), %rax               # 8-byte Reload
	vmovdqa	-3696(%rbp), %xmm0
	vmovdqa	-3680(%rbp), %xmm1
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm0, (%rax)
	movq	-3664(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_126
# %bb.123:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 313 8 epilogue_begin is_stmt 0 # subprocess.c3:313:8
	addq	$4160, %rsp                     # imm = 0x1040
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp142:
.LBB5_124:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # subprocess.c3:0:8
	movq	-4104(%rbp), %rcx               # 8-byte Reload
	movq	$8, -3448(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -3456(%rbp)
	movq	%rax, -3480(%rbp)
	leaq	-3448(%rbp), %rcx
	movq	%rcx, -3488(%rbp)
	movq	%rax, -3464(%rbp)
	leaq	-3456(%rbp), %rax
	movq	%rax, -3472(%rbp)
	leaq	-3488(%rbp), %rax
	movq	%rax, -3504(%rbp)
	movq	$2, -3496(%rbp)
.Ltmp143:
	.loc	1 345 30 is_stmt 1              # subprocess.c3:345:30
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.15(%rip), %r8
	movl	$6, %r9d
	leaq	-3504(%rbp), %rax
	movl	$345, (%rsp)                    # imm = 0x159
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp144:
.LBB5_125:
	.loc	1 0 30 is_stmt 0                # subprocess.c3:0:30
	movq	-4120(%rbp), %rcx               # 8-byte Reload
	movq	$8, -3520(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -3528(%rbp)
	movq	%rax, -3560(%rbp)
	leaq	-3520(%rbp), %rcx
	movq	%rcx, -3568(%rbp)
	movq	%rax, -3544(%rbp)
	leaq	-3528(%rbp), %rax
	movq	%rax, -3552(%rbp)
	leaq	-3568(%rbp), %rax
	movq	%rax, -3584(%rbp)
	movq	$2, -3576(%rbp)
.Ltmp145:
	.loc	1 349 30 is_stmt 1              # subprocess.c3:349:30
	leaq	.panic_msg.13(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$13, %ecx
	leaq	.func.15(%rip), %r8
	movl	$6, %r9d
	leaq	-3584(%rbp), %rax
	movl	$349, (%rsp)                    # imm = 0x15D
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp146:
.LBB5_126:
	.loc	1 0 0 is_stmt 0                 # subprocess.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp147:
.Lfunc_end5:
	.size	std.os.process.create, .Lfunc_end5-std.os.process.create
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.os.process.read_from_file_posix.20221
	.type	std.os.process.read_from_file_posix.20221,@function
std.os.process.read_from_file_posix.20221: # @std.os.process.read_from_file_posix.20221
.Lfunc_begin6:
	.loc	1 486 0 is_stmt 1               # subprocess.c3:486:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
.Ltmp148:
	.loc	1 488 43 prologue_end           # subprocess.c3:488:43
	movq	-8(%rbp), %rdi
	.loc	1 488 30 is_stmt 0              # subprocess.c3:488:30
	callq	fileno@PLT
	movl	%eax, %edi
	.loc	1 488 50                        # subprocess.c3:488:50
	movq	-16(%rbp), %rsi
	.loc	1 488 58                        # subprocess.c3:488:58
	movq	-24(%rbp), %rdx
	.loc	1 488 19                        # subprocess.c3:488:19
	callq	read@PLT
	movq	%rax, -32(%rbp)
	.loc	1 489 6 is_stmt 1               # subprocess.c3:489:6
	cmpq	$0, -32(%rbp)
	jge	.LBB6_2
# %bb.1:
	.loc	1 489 29 is_stmt 0              # subprocess.c3:489:29
	movq	std.os.process.READ_FAILED@GOTPCREL(%rip), %rax
	.loc	1 489 29 epilogue_begin         # subprocess.c3:489:29
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 29                          # subprocess.c3:0:29
	movq	-48(%rbp), %rax                 # 8-byte Reload
	.loc	1 490 9 is_stmt 1               # subprocess.c3:490:9
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 490 9 epilogue_begin is_stmt 0 # subprocess.c3:490:9
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp149:
.Lfunc_end6:
	.size	std.os.process.read_from_file_posix.20221, .Lfunc_end6-std.os.process.read_from_file_posix.20221
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB7_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB7_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB7_5:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB7_1
.Lfunc_end7:
	.size	.dyn_search, .Lfunc_end7-.dyn_search
	.cfi_endproc
                                        # -- End function
	.type	$ct.std.os.process.SubProcess,@object # @"$ct.std.os.process.SubProcess"
	.section	".data.$ct.std.os.process.SubProcess","awG",@progbits,"$ct.std.os.process.SubProcess",comdat
	.weak	$ct.std.os.process.SubProcess
	.p2align	3, 0x0
$ct.std.os.process.SubProcess:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	40                              # 0x28
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.size	$ct.std.os.process.SubProcess, 48

	.type	$ct.std.os.process.SubProcessOptions,@object # @"$ct.std.os.process.SubProcessOptions"
	.section	".data.$ct.std.os.process.SubProcessOptions","awG",@progbits,"$ct.std.os.process.SubProcessOptions",comdat
	.weak	$ct.std.os.process.SubProcessOptions
	.p2align	3, 0x0
$ct.std.os.process.SubProcessOptions:
	.byte	12                              # 0xc
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	4                               # 0x4
	.quad	($ct.int)
	.quad	0                               # 0x0
	.size	$ct.std.os.process.SubProcessOptions, 48

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

	.type	std.os.process.EMPTY_ENVIRONMENT,@object # @std.os.process.EMPTY_ENVIRONMENT
	.section	.rodata.std.os.process.EMPTY_ENVIRONMENT,"aG",@progbits,std.os.process.EMPTY_ENVIRONMENT,comdat
	.weak	std.os.process.EMPTY_ENVIRONMENT
	.p2align	3, 0x0
std.os.process.EMPTY_ENVIRONMENT:
	.zero	8
	.size	std.os.process.EMPTY_ENVIRONMENT, 8

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"@require \"!environment || !options.inherit_environment\" violated."
	.size	.panic_msg, 66

	.type	.file,@object                   # @.file
.file:
	.asciz	"subprocess.c3"
	.size	.file, 14

	.type	.func,@object                   # @.func
.func:
	.asciz	"execute_stdout_to_buffer"
	.size	.func, 25

	.type	.emptystr,@object               # @.emptystr
.emptystr:
	.zero	1
	.size	.emptystr, 1

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

	.type	.panic_msg.1,@object            # @.panic_msg.1
	.section	.rodata,"a",@progbits
.panic_msg.1:
	.asciz	"Index exceeds array length (array had size %d, index was %d)."
	.size	.panic_msg.1, 62

	.type	.panic_msg.2,@object            # @.panic_msg.2
.panic_msg.2:
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.2, 44

	.type	.panic_msg.3,@object            # @.panic_msg.3
.panic_msg.3:
	.asciz	"End index out of bounds (end index of %d exceeds size of %d)"
	.size	.panic_msg.3, 61

	.type	.panic_msg.4,@object            # @.panic_msg.4
.panic_msg.4:
	.asciz	"@require \"command_line.len > 0\" violated."
	.size	.panic_msg.4, 42

	.type	.func.5,@object                 # @.func.5
.func.5:
	.asciz	"copy_command_line"
	.size	.func.5, 18

	.type	$sel.acquire,@object            # @"$sel.acquire"
	.section	".rodata.$sel.acquire","aG",@progbits,"$sel.acquire",comdat
	.weak	$sel.acquire
$sel.acquire:
	.asciz	"acquire"
	.size	$sel.acquire, 8

	.type	.panic_msg.6,@object            # @.panic_msg.6
	.section	.rodata,"a",@progbits
.panic_msg.6:
	.asciz	"@require \"!alignment || math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.6, 66

	.type	.file.7,@object                 # @.file.7
.file.7:
	.asciz	"mem_allocator.c3"
	.size	.file.7, 17

	.type	.panic_msg.8,@object            # @.panic_msg.8
.panic_msg.8:
	.asciz	"@require \"alignment <= mem::MAX_MEMORY_ALIGNMENT\" violated: 'alignment too big'."
	.size	.panic_msg.8, 81

	.type	.panic_msg.9,@object            # @.panic_msg.9
.panic_msg.9:
	.asciz	"@require \"size > 0\" violated: 'The size must be 1 or more'."
	.size	.panic_msg.9, 60

	.type	.panic_msg.10,@object           # @.panic_msg.10
.panic_msg.10:
	.asciz	"No method 'acquire' could be found on target"
	.size	.panic_msg.10, 45

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

	.type	.panic_msg.11,@object           # @.panic_msg.11
	.section	.rodata,"a",@progbits
.panic_msg.11:
	.asciz	"Unexpected fault '%s' was unwrapped!"
	.size	.panic_msg.11, 37

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

	.type	.panic_msg.12,@object           # @.panic_msg.12
	.section	.rodata,"a",@progbits
.panic_msg.12:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.12, 60

	.type	.panic_msg.13,@object           # @.panic_msg.13
.panic_msg.13:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.13, 95

	.type	.func.14,@object                # @.func.14
.func.14:
	.asciz	"copy_env"
	.size	.func.14, 9

	.type	.func.15,@object                # @.func.15
.func.15:
	.asciz	"create"
	.size	.func.15, 7

	.type	std.os.process.FAILED_TO_INITIALIZE_ACTIONS,@object # @std.os.process.FAILED_TO_INITIALIZE_ACTIONS
	.section	.data.rel.ro.std.os.process.FAILED_TO_INITIALIZE_ACTIONS,"awG",@progbits,std.os.process.FAILED_TO_INITIALIZE_ACTIONS,comdat
	.weak	std.os.process.FAILED_TO_INITIALIZE_ACTIONS
	.p2align	3, 0x0
std.os.process.FAILED_TO_INITIALIZE_ACTIONS:
	.quad	std.os.process.FAILED_TO_INITIALIZE_ACTIONS.nameof
	.quad	37                              # 0x25
	.size	std.os.process.FAILED_TO_INITIALIZE_ACTIONS, 16

	.type	std.os.process.FAILED_TO_INITIALIZE_ACTIONS.nameof,@object # @std.os.process.FAILED_TO_INITIALIZE_ACTIONS.nameof
	.section	.rodata,"a",@progbits
std.os.process.FAILED_TO_INITIALIZE_ACTIONS.nameof:
	.asciz	"process::FAILED_TO_INITIALIZE_ACTIONS"
	.size	std.os.process.FAILED_TO_INITIALIZE_ACTIONS.nameof, 38

	.type	std.os.process.FAILED_TO_OPEN_STDIN,@object # @std.os.process.FAILED_TO_OPEN_STDIN
	.section	.data.rel.ro.std.os.process.FAILED_TO_OPEN_STDIN,"awG",@progbits,std.os.process.FAILED_TO_OPEN_STDIN,comdat
	.weak	std.os.process.FAILED_TO_OPEN_STDIN
	.p2align	3, 0x0
std.os.process.FAILED_TO_OPEN_STDIN:
	.quad	std.os.process.FAILED_TO_OPEN_STDIN.nameof
	.quad	29                              # 0x1d
	.size	std.os.process.FAILED_TO_OPEN_STDIN, 16

	.type	std.os.process.FAILED_TO_OPEN_STDIN.nameof,@object # @std.os.process.FAILED_TO_OPEN_STDIN.nameof
	.section	.rodata,"a",@progbits
std.os.process.FAILED_TO_OPEN_STDIN.nameof:
	.asciz	"process::FAILED_TO_OPEN_STDIN"
	.size	std.os.process.FAILED_TO_OPEN_STDIN.nameof, 30

	.type	std.os.process.FAILED_TO_OPEN_STDOUT,@object # @std.os.process.FAILED_TO_OPEN_STDOUT
	.section	.data.rel.ro.std.os.process.FAILED_TO_OPEN_STDOUT,"awG",@progbits,std.os.process.FAILED_TO_OPEN_STDOUT,comdat
	.weak	std.os.process.FAILED_TO_OPEN_STDOUT
	.p2align	3, 0x0
std.os.process.FAILED_TO_OPEN_STDOUT:
	.quad	std.os.process.FAILED_TO_OPEN_STDOUT.nameof
	.quad	30                              # 0x1e
	.size	std.os.process.FAILED_TO_OPEN_STDOUT, 16

	.type	std.os.process.FAILED_TO_OPEN_STDOUT.nameof,@object # @std.os.process.FAILED_TO_OPEN_STDOUT.nameof
	.section	.rodata,"a",@progbits
std.os.process.FAILED_TO_OPEN_STDOUT.nameof:
	.asciz	"process::FAILED_TO_OPEN_STDOUT"
	.size	std.os.process.FAILED_TO_OPEN_STDOUT.nameof, 31

	.type	std.os.process.FAILED_TO_OPEN_STDERR,@object # @std.os.process.FAILED_TO_OPEN_STDERR
	.section	.data.rel.ro.std.os.process.FAILED_TO_OPEN_STDERR,"awG",@progbits,std.os.process.FAILED_TO_OPEN_STDERR,comdat
	.weak	std.os.process.FAILED_TO_OPEN_STDERR
	.p2align	3, 0x0
std.os.process.FAILED_TO_OPEN_STDERR:
	.quad	std.os.process.FAILED_TO_OPEN_STDERR.nameof
	.quad	30                              # 0x1e
	.size	std.os.process.FAILED_TO_OPEN_STDERR, 16

	.type	std.os.process.FAILED_TO_OPEN_STDERR.nameof,@object # @std.os.process.FAILED_TO_OPEN_STDERR.nameof
	.section	.rodata,"a",@progbits
std.os.process.FAILED_TO_OPEN_STDERR.nameof:
	.asciz	"process::FAILED_TO_OPEN_STDERR"
	.size	std.os.process.FAILED_TO_OPEN_STDERR.nameof, 31

	.type	$ct.std.core.mem.allocator.OnStackAllocator,@object # @"$ct.std.core.mem.allocator.OnStackAllocator"
	.section	".data.$ct.std.core.mem.allocator.OnStackAllocator","awG",@progbits,"$ct.std.core.mem.allocator.OnStackAllocator",comdat
	.weak	$ct.std.core.mem.allocator.OnStackAllocator
	.p2align	3, 0x0
$ct.std.core.mem.allocator.OnStackAllocator:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	48                              # 0x30
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.size	$ct.std.core.mem.allocator.OnStackAllocator, 48

	.type	std.os.process.FAILED_TO_START_PROCESS,@object # @std.os.process.FAILED_TO_START_PROCESS
	.section	.data.rel.ro.std.os.process.FAILED_TO_START_PROCESS,"awG",@progbits,std.os.process.FAILED_TO_START_PROCESS,comdat
	.weak	std.os.process.FAILED_TO_START_PROCESS
	.p2align	3, 0x0
std.os.process.FAILED_TO_START_PROCESS:
	.quad	std.os.process.FAILED_TO_START_PROCESS.nameof
	.quad	32                              # 0x20
	.size	std.os.process.FAILED_TO_START_PROCESS, 16

	.type	std.os.process.FAILED_TO_START_PROCESS.nameof,@object # @std.os.process.FAILED_TO_START_PROCESS.nameof
	.section	.rodata,"a",@progbits
std.os.process.FAILED_TO_START_PROCESS.nameof:
	.asciz	"process::FAILED_TO_START_PROCESS"
	.size	std.os.process.FAILED_TO_START_PROCESS.nameof, 33

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wb"
	.size	.L.str, 3

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"rb"
	.size	.L.str.16, 3

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"rb"
	.size	.L.str.17, 3

	.type	std.os.process.READ_FAILED,@object # @std.os.process.READ_FAILED
	.section	.data.rel.ro.std.os.process.READ_FAILED,"awG",@progbits,std.os.process.READ_FAILED,comdat
	.weak	std.os.process.READ_FAILED
	.p2align	3, 0x0
std.os.process.READ_FAILED:
	.quad	std.os.process.READ_FAILED.nameof
	.quad	20                              # 0x14
	.size	std.os.process.READ_FAILED, 16

	.type	std.os.process.READ_FAILED.nameof,@object # @std.os.process.READ_FAILED.nameof
	.section	.rodata,"a",@progbits
std.os.process.READ_FAILED.nameof:
	.asciz	"process::READ_FAILED"
	.size	std.os.process.READ_FAILED.nameof, 21

	.type	.panic_msg.18,@object           # @.panic_msg.18
.panic_msg.18:
	.asciz	"Reference parameter 'self' was passed a null pointer argument."
	.size	.panic_msg.18, 63

	.type	.func.19,@object                # @.func.19
.func.19:
	.asciz	"read_stdout"
	.size	.func.19, 12

	.type	.func.20,@object                # @.func.20
.func.20:
	.asciz	"join"
	.size	.func.20, 5

	.type	std.os.process.PROCESS_JOIN_FAILED,@object # @std.os.process.PROCESS_JOIN_FAILED
	.section	.data.rel.ro.std.os.process.PROCESS_JOIN_FAILED,"awG",@progbits,std.os.process.PROCESS_JOIN_FAILED,comdat
	.weak	std.os.process.PROCESS_JOIN_FAILED
	.p2align	3, 0x0
std.os.process.PROCESS_JOIN_FAILED:
	.quad	std.os.process.PROCESS_JOIN_FAILED.nameof
	.quad	28                              # 0x1c
	.size	std.os.process.PROCESS_JOIN_FAILED, 16

	.type	std.os.process.PROCESS_JOIN_FAILED.nameof,@object # @std.os.process.PROCESS_JOIN_FAILED.nameof
	.section	.rodata,"a",@progbits
std.os.process.PROCESS_JOIN_FAILED.nameof:
	.asciz	"process::PROCESS_JOIN_FAILED"
	.size	std.os.process.PROCESS_JOIN_FAILED.nameof, 29

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
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	34                              # DW_AT_lower_bound
	.byte	13                              # DW_FORM_sdata
	.byte	55                              # DW_AT_count
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x912 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges20                # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x1b DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	69                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.short	277                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.os.process.EMPTY_ENVIRONMENT
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x45:0xd DW_TAG_array_type
	.long	82                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4a:0x7 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x52:0xb DW_TAG_typedef
	.long	93                              # DW_AT_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5d:0xd DW_TAG_pointer_type
	.long	106                             # DW_AT_type
	.long	.Linfo_string5                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	7                               # Abbrev [7] 0x6a:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x71:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x78:0x4c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string53                 # DW_AT_linkage_name
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	493                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2077                            # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x96:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	493                             # DW_AT_decl_line
	.long	2093                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa5:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	493                             # DW_AT_decl_line
	.long	93                              # DW_AT_type
	.byte	10                              # Abbrev [10] 0xb4:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	493                             # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc4:0xc DW_TAG_subprogram
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0xd0:0xc DW_TAG_subprogram
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0xdc:0xc DW_TAG_subprogram
	.long	.Linfo_string11                 # DW_AT_linkage_name
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0xe8:0x7c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string57                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2077                            # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x106:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	382                             # DW_AT_decl_line
	.long	2093                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x115:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	389                             # DW_AT_decl_line
	.long	2224                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x124:0x2a DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.quad	.Ltmp5                          # DW_AT_low_pc
	.long	.Ltmp7-.Ltmp5                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	395                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x139:0x14 DW_TAG_inlined_subroutine
	.long	196                             # DW_AT_abstract_origin
	.quad	.Ltmp5                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	46                              # DW_AT_call_line
	.byte	38                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x14e:0x15 DW_TAG_inlined_subroutine
	.long	220                             # DW_AT_abstract_origin
	.quad	.Ltmp8                          # DW_AT_low_pc
	.long	.Ltmp9-.Ltmp8                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	395                             # DW_AT_call_line
	.byte	57                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x164:0x7d DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string59                 # DW_AT_linkage_name
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2077                            # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x182:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.long	1051                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x191:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.long	1277                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1a0:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.long	2217                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1af:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.long	1277                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1be:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string81                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	292                             # DW_AT_decl_line
	.long	2106                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x1cf:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350~"
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	294                             # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x1e1:0xd DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x1ee:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x1fb:0xc DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x207:0xd DW_TAG_subprogram
	.long	.Linfo_string15                 # DW_AT_linkage_name
	.long	.Linfo_string15                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	18                              # Abbrev [18] 0x214:0x99 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	1166                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x227:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	1183                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x22f:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	1195                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x237:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	1207                            # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x23f:0x46 DW_TAG_inlined_subroutine
	.long	494                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	268                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x24c:0x38 DW_TAG_inlined_subroutine
	.long	481                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x259:0x2a DW_TAG_inlined_subroutine
	.long	507                             # DW_AT_abstract_origin
	.quad	.Ltmp16                         # DW_AT_low_pc
	.long	.Ltmp19-.Ltmp16                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x26e:0x14 DW_TAG_inlined_subroutine
	.long	519                             # DW_AT_abstract_origin
	.quad	.Ltmp17                         # DW_AT_low_pc
	.long	.Ltmp18-.Ltmp17                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x285:0x27 DW_TAG_lexical_block
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x28a:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210~"
	.long	1221                            # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x293:0x18 DW_TAG_lexical_block
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x298:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200~"
	.long	1235                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x2a1:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360}"
	.long	1248                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x2ad:0xd DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x2ba:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x2c7:0xc DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x2d3:0xd DW_TAG_subprogram
	.long	.Linfo_string15                 # DW_AT_linkage_name
	.long	.Linfo_string15                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	18                              # Abbrev [18] 0x2e0:0x99 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	1329                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x2f3:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	1346                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x2fb:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	1358                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x303:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	1370                            # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x30b:0x46 DW_TAG_inlined_subroutine
	.long	698                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	281                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x318:0x38 DW_TAG_inlined_subroutine
	.long	685                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x325:0x2a DW_TAG_inlined_subroutine
	.long	711                             # DW_AT_abstract_origin
	.quad	.Ltmp34                         # DW_AT_low_pc
	.long	.Ltmp37-.Ltmp34                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	14                              # Abbrev [14] 0x33a:0x14 DW_TAG_inlined_subroutine
	.long	723                             # DW_AT_abstract_origin
	.quad	.Ltmp35                         # DW_AT_low_pc
	.long	.Ltmp36-.Ltmp35                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x351:0x27 DW_TAG_lexical_block
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x356:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310}"
	.long	1384                            # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x35f:0x18 DW_TAG_lexical_block
	.long	.Ldebug_ranges7                 # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x364:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300}"
	.long	1398                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x36d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260}"
	.long	1411                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x379:0x28 DW_TAG_subprogram
	.long	.Linfo_string16                 # DW_AT_linkage_name
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	570                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	24                              # Abbrev [24] 0x386:0xd DW_TAG_variable
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	929                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x393:0xd DW_TAG_variable
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.long	943                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x3a1:0xe DW_TAG_array_type
	.long	106                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3a6:0x8 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.short	2048                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x3af:0x3e DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0x3b8:0xd DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	1005                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x3c5:0xd DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	1051                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x3d2:0xd DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	1081                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x3df:0xd DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1097                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x3ed:0x1e DW_TAG_structure_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	29                              # Abbrev [29] 0x3f4:0xb DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	1035                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x3ff:0xb DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1044                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	30                              # Abbrev [30] 0x40b:0x9 DW_TAG_pointer_type
	.long	.Linfo_string21                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	7                               # Abbrev [7] 0x414:0x7 DW_TAG_base_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	28                              # Abbrev [28] 0x41b:0x1e DW_TAG_structure_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	29                              # Abbrev [29] 0x422:0xb DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	93                              # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x42d:0xb DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	1081                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x439:0x9 DW_TAG_typedef
	.long	1090                            # DW_AT_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	7                               # Abbrev [7] 0x442:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x449:0xd DW_TAG_pointer_type
	.long	1110                            # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	26                              # Abbrev [26] 0x456:0x31 DW_TAG_structure_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0x45f:0xd DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	1159                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x46c:0xd DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	1097                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x479:0xd DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	1035                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x487:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	32                              # Abbrev [32] 0x48e:0x62 DW_TAG_subprogram
	.long	.Linfo_string38                 # DW_AT_linkage_name
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1264                            # DW_AT_type
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x49f:0xc DW_TAG_formal_parameter
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
	.long	1005                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4ab:0xc DW_TAG_formal_parameter
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
	.long	1277                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4b7:0xd DW_TAG_variable
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	268                             # DW_AT_decl_line
	.long	1264                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4c4:0x2b DW_TAG_lexical_block
	.byte	24                              # Abbrev [24] 0x4c5:0xd DW_TAG_variable
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4d2:0x1c DW_TAG_lexical_block
	.byte	24                              # Abbrev [24] 0x4d3:0xd DW_TAG_variable
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x4e0:0xd DW_TAG_variable
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	269                             # DW_AT_decl_line
	.long	1320                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x4f0:0xd DW_TAG_pointer_type
	.long	82                              # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	28                              # Abbrev [28] 0x4fd:0x1e DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	29                              # Abbrev [29] 0x504:0xb DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	1307                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	29                              # Abbrev [29] 0x50f:0xb DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	1081                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x51b:0xd DW_TAG_pointer_type
	.long	1320                            # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	31                              # Abbrev [31] 0x528:0x9 DW_TAG_typedef
	.long	1051                            # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	32                              # Abbrev [32] 0x531:0x62 DW_TAG_subprogram
	.long	.Linfo_string50                 # DW_AT_linkage_name
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1264                            # DW_AT_type
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x542:0xc DW_TAG_formal_parameter
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.long	1005                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x54e:0xc DW_TAG_formal_parameter
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	278                             # DW_AT_decl_line
	.long	1277                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x55a:0xd DW_TAG_variable
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.long	1264                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x567:0x2b DW_TAG_lexical_block
	.byte	24                              # Abbrev [24] 0x568:0xd DW_TAG_variable
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x575:0x1c DW_TAG_lexical_block
	.byte	24                              # Abbrev [24] 0x576:0xd DW_TAG_variable
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x583:0xd DW_TAG_variable
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	283                             # DW_AT_decl_line
	.long	1320                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x593:0x22e DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string61                 # DW_AT_linkage_name
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2077                            # DW_AT_type
                                        # DW_AT_external
	.byte	10                              # Abbrev [10] 0x5b1:0x10 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340g"
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.long	1277                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5c1:0x10 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334g"
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.long	2217                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5d1:0x10 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310g"
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.long	1277                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5e1:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300g"
	.long	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	304                             # DW_AT_decl_line
	.long	2235                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x5f1:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270g"
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	305                             # DW_AT_decl_line
	.long	2235                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x601:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260g"
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.long	2235                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x611:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250g"
	.long	.Linfo_string85                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	307                             # DW_AT_decl_line
	.long	2194                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x622:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240g"
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	2194                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x633:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230g"
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.long	2194                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x644:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310f"
	.long	.Linfo_string88                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.long	2248                            # DW_AT_type
	.byte	12                              # Abbrev [12] 0x655:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\364e"
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	338                             # DW_AT_decl_line
	.long	2206                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x665:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260e"
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	339                             # DW_AT_decl_line
	.long	1005                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0x676:0x20 DW_TAG_inlined_subroutine
	.long	889                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	339                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	20                              # Abbrev [20] 0x683:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360o"
	.long	902                             # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x68c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300e"
	.long	915                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x696:0x12a DW_TAG_lexical_block
	.long	.Ldebug_ranges9                 # DW_AT_ranges
	.byte	16                              # Abbrev [16] 0x69b:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250e"
	.long	.Linfo_string94                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.long	1264                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6ac:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220e"
	.long	.Linfo_string95                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	342                             # DW_AT_decl_line
	.long	1264                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6bd:0x81 DW_TAG_inlined_subroutine
	.long	1166                            # DW_AT_abstract_origin
	.quad	.Ltmp87                         # DW_AT_low_pc
	.long	.Ltmp106-.Ltmp87                # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	341                             # DW_AT_call_line
	.byte	35                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x6d2:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340k"
	.long	1183                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x6db:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320k"
	.long	1195                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x6e4:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310k"
	.long	1207                            # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x6ed:0x29 DW_TAG_inlined_subroutine
	.long	494                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges10                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	268                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x6fa:0x1b DW_TAG_inlined_subroutine
	.long	481                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges11                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x707:0xd DW_TAG_inlined_subroutine
	.long	507                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges12                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x716:0x27 DW_TAG_lexical_block
	.long	.Ldebug_ranges13                # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x71b:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210j"
	.long	1221                            # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x724:0x18 DW_TAG_lexical_block
	.long	.Ldebug_ranges14                # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x729:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200j"
	.long	1235                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x732:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360i"
	.long	1248                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x73e:0x81 DW_TAG_inlined_subroutine
	.long	1329                            # DW_AT_abstract_origin
	.quad	.Ltmp107                        # DW_AT_low_pc
	.long	.Ltmp125-.Ltmp107               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	342                             # DW_AT_call_line
	.byte	78                              # DW_AT_call_column
	.byte	19                              # Abbrev [19] 0x753:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340o"
	.long	1346                            # DW_AT_abstract_origin
	.byte	19                              # Abbrev [19] 0x75c:0x9 DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320o"
	.long	1358                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x765:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310o"
	.long	1370                            # DW_AT_abstract_origin
	.byte	21                              # Abbrev [21] 0x76e:0x29 DW_TAG_inlined_subroutine
	.long	698                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges15                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	281                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	21                              # Abbrev [21] 0x77b:0x1b DW_TAG_inlined_subroutine
	.long	685                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges16                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	35                              # Abbrev [35] 0x788:0xd DW_TAG_inlined_subroutine
	.long	711                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges17                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x797:0x27 DW_TAG_lexical_block
	.long	.Ldebug_ranges18                # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x79c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310m"
	.long	1384                            # DW_AT_abstract_origin
	.byte	22                              # Abbrev [22] 0x7a5:0x18 DW_TAG_lexical_block
	.long	.Ldebug_ranges19                # DW_AT_ranges
	.byte	20                              # Abbrev [20] 0x7aa:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300m"
	.long	1398                            # DW_AT_abstract_origin
	.byte	20                              # Abbrev [20] 0x7b3:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260m"
	.long	1411                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x7c1:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string63                 # DW_AT_linkage_name
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2077                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7df:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string96                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.long	2194                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7ee:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.long	93                              # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7fd:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	486                             # DW_AT_decl_line
	.long	1081                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x80c:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	488                             # DW_AT_decl_line
	.long	2323                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x81d:0x9 DW_TAG_typedef
	.long	2086                            # DW_AT_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	7                               # Abbrev [7] 0x826:0x7 DW_TAG_base_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x82d:0xd DW_TAG_pointer_type
	.long	2106                            # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	26                              # Abbrev [26] 0x83a:0x58 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0x843:0xd DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	2194                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x850:0xd DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	2194                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x85d:0xd DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	2194                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x86a:0xd DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	2206                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x877:0xd DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	2217                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	28                              # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x884:0xd DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1159                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x892:0xc DW_TAG_typedef
	.long	1035                            # DW_AT_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x89e:0xb DW_TAG_typedef
	.long	2217                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x8a9:0x7 DW_TAG_base_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x8b0:0xb DW_TAG_typedef
	.long	2217                            # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x8bb:0xd DW_TAG_array_type
	.long	2217                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x8c0:0x7 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x8c8:0x3e DW_TAG_structure_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	80                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	4                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0x8d1:0xd DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2217                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x8de:0xd DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	2217                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	4                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x8eb:0xd DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1035                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x8f8:0xd DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2310                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x906:0xd DW_TAG_array_type
	.long	2217                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x90b:0x7 DW_TAG_subrange_type
	.long	113                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x913:0x9 DW_TAG_typedef
	.long	2086                            # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp15
	.quad	.Ltmp21
	.quad	.Ltmp26
	.quad	.Ltmp27
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp15
	.quad	.Ltmp20
	.quad	.Ltmp26
	.quad	.Ltmp27
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp21
	.quad	.Ltmp25
	.quad	.Ltmp28
	.quad	.Ltmp30
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22
	.quad	.Ltmp24
	.quad	.Ltmp28
	.quad	.Ltmp30
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp33
	.quad	.Ltmp39
	.quad	.Ltmp45
	.quad	.Ltmp46
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp33
	.quad	.Ltmp38
	.quad	.Ltmp45
	.quad	.Ltmp46
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp40
	.quad	.Ltmp44
	.quad	.Ltmp47
	.quad	.Ltmp49
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp41
	.quad	.Ltmp43
	.quad	.Ltmp47
	.quad	.Ltmp49
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp84
	.quad	.Ltmp86
	.quad	.Ltmp128
	.quad	.Ltmp129
	.quad	.Ltmp132
	.quad	.Ltmp133
	.quad	.Ltmp134
	.quad	.Ltmp135
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp86
	.quad	.Ltmp127
	.quad	.Ltmp130
	.quad	.Ltmp131
	.quad	.Ltmp143
	.quad	.Ltmp146
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp89
	.quad	.Ltmp96
	.quad	.Ltmp101
	.quad	.Ltmp102
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp89
	.quad	.Ltmp92
	.quad	.Ltmp93
	.quad	.Ltmp95
	.quad	.Ltmp101
	.quad	.Ltmp102
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp90
	.quad	.Ltmp91
	.quad	.Ltmp93
	.quad	.Ltmp94
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp96
	.quad	.Ltmp100
	.quad	.Ltmp103
	.quad	.Ltmp105
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp97
	.quad	.Ltmp99
	.quad	.Ltmp103
	.quad	.Ltmp105
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp108
	.quad	.Ltmp115
	.quad	.Ltmp121
	.quad	.Ltmp122
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp108
	.quad	.Ltmp111
	.quad	.Ltmp112
	.quad	.Ltmp114
	.quad	.Ltmp121
	.quad	.Ltmp122
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp109
	.quad	.Ltmp110
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp116
	.quad	.Ltmp120
	.quad	.Ltmp123
	.quad	.Ltmp125
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp117
	.quad	.Ltmp119
	.quad	.Ltmp123
	.quad	.Ltmp125
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end4
	.quad	.Lfunc_begin6
	.quad	.Lfunc_end6
	.quad	.Lfunc_begin5
	.quad	.Lfunc_end5
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"subprocess.c3"                 # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/os" # string offset=18
.Linfo_string3:
	.asciz	"EMPTY_ENVIRONMENT"             # string offset=86
.Linfo_string4:
	.asciz	"char"                          # string offset=104
.Linfo_string5:
	.asciz	"char*"                         # string offset=109
.Linfo_string6:
	.asciz	"ZString"                       # string offset=115
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=123
.Linfo_string8:
	.asciz	"std.os.process.EMPTY_ENVIRONMENT" # string offset=143
.Linfo_string9:
	.asciz	"wTERMSIG"                      # string offset=176
.Linfo_string10:
	.asciz	"wIFEXITED"                     # string offset=185
.Linfo_string11:
	.asciz	"wEXITSTATUS"                   # string offset=195
.Linfo_string12:
	.asciz	"alloc_array_try"               # string offset=207
.Linfo_string13:
	.asciz	"alloc_array"                   # string offset=223
.Linfo_string14:
	.asciz	"malloc_try"                    # string offset=235
.Linfo_string15:
	.asciz	"is_power_of_2"                 # string offset=246
.Linfo_string16:
	.asciz	"@stack_mem"                    # string offset=260
.Linfo_string17:
	.asciz	"buffer"                        # string offset=271
.Linfo_string18:
	.asciz	"allocator"                     # string offset=278
.Linfo_string19:
	.asciz	"backing_allocator"             # string offset=288
.Linfo_string20:
	.asciz	"ptr"                           # string offset=306
.Linfo_string21:
	.asciz	"void*"                         # string offset=310
.Linfo_string22:
	.asciz	"type"                          # string offset=316
.Linfo_string23:
	.asciz	"typeid"                        # string offset=321
.Linfo_string24:
	.asciz	"Allocator"                     # string offset=328
.Linfo_string25:
	.asciz	"data"                          # string offset=338
.Linfo_string26:
	.asciz	"len"                           # string offset=343
.Linfo_string27:
	.asciz	"ulong"                         # string offset=347
.Linfo_string28:
	.asciz	"usz"                           # string offset=353
.Linfo_string29:
	.asciz	"char[]"                        # string offset=357
.Linfo_string30:
	.asciz	"used"                          # string offset=364
.Linfo_string31:
	.asciz	"chunk"                         # string offset=369
.Linfo_string32:
	.asciz	"is_aligned"                    # string offset=375
.Linfo_string33:
	.asciz	"bool"                          # string offset=386
.Linfo_string34:
	.asciz	"prev"                          # string offset=391
.Linfo_string35:
	.asciz	"OnStackAllocatorExtraChunk"    # string offset=396
.Linfo_string36:
	.asciz	"OnStackAllocatorExtraChunk*"   # string offset=423
.Linfo_string37:
	.asciz	"OnStackAllocator"              # string offset=451
.Linfo_string38:
	.asciz	"std.os.process.copy_command_line.20163" # string offset=468
.Linfo_string39:
	.asciz	"copy_command_line"             # string offset=507
.Linfo_string40:
	.asciz	"ZString*"                      # string offset=525
.Linfo_string41:
	.asciz	"mem"                           # string offset=534
.Linfo_string42:
	.asciz	"command_line"                  # string offset=538
.Linfo_string43:
	.asciz	"String"                        # string offset=551
.Linfo_string44:
	.asciz	"String*"                       # string offset=558
.Linfo_string45:
	.asciz	"String[]"                      # string offset=566
.Linfo_string46:
	.asciz	"copy"                          # string offset=575
.Linfo_string47:
	.asciz	".temp"                         # string offset=580
.Linfo_string48:
	.asciz	"i"                             # string offset=586
.Linfo_string49:
	.asciz	"str"                           # string offset=588
.Linfo_string50:
	.asciz	"std.os.process.copy_env.20170" # string offset=592
.Linfo_string51:
	.asciz	"copy_env"                      # string offset=622
.Linfo_string52:
	.asciz	"environment"                   # string offset=631
.Linfo_string53:
	.asciz	"std.os.process.SubProcess.read_stdout" # string offset=643
.Linfo_string54:
	.asciz	"read_stdout"                   # string offset=681
.Linfo_string55:
	.asciz	"long"                          # string offset=693
.Linfo_string56:
	.asciz	"fault"                         # string offset=698
.Linfo_string57:
	.asciz	"std.os.process.SubProcess.join" # string offset=704
.Linfo_string58:
	.asciz	"join"                          # string offset=735
.Linfo_string59:
	.asciz	"std.os.process.execute_stdout_to_buffer" # string offset=740
.Linfo_string60:
	.asciz	"execute_stdout_to_buffer"      # string offset=780
.Linfo_string61:
	.asciz	"std.os.process.create"         # string offset=805
.Linfo_string62:
	.asciz	"create"                        # string offset=827
.Linfo_string63:
	.asciz	"std.os.process.read_from_file_posix.20221" # string offset=834
.Linfo_string64:
	.asciz	"read_from_file_posix"          # string offset=876
.Linfo_string65:
	.asciz	"self"                          # string offset=897
.Linfo_string66:
	.asciz	"stdin_file"                    # string offset=902
.Linfo_string67:
	.asciz	"CFile"                         # string offset=913
.Linfo_string68:
	.asciz	"stdout_file"                   # string offset=919
.Linfo_string69:
	.asciz	"stderr_file"                   # string offset=931
.Linfo_string70:
	.asciz	"child"                         # string offset=943
.Linfo_string71:
	.asciz	"int"                           # string offset=949
.Linfo_string72:
	.asciz	"Pid_t"                         # string offset=953
.Linfo_string73:
	.asciz	"return_status"                 # string offset=959
.Linfo_string74:
	.asciz	"is_alive"                      # string offset=973
.Linfo_string75:
	.asciz	"SubProcess"                    # string offset=982
.Linfo_string76:
	.asciz	"SubProcess*"                   # string offset=993
.Linfo_string77:
	.asciz	"size"                          # string offset=1005
.Linfo_string78:
	.asciz	"status"                        # string offset=1010
.Linfo_string79:
	.asciz	"CInt"                          # string offset=1017
.Linfo_string80:
	.asciz	"options"                       # string offset=1022
.Linfo_string81:
	.asciz	"process"                       # string offset=1030
.Linfo_string82:
	.asciz	"stdinfd"                       # string offset=1038
.Linfo_string83:
	.asciz	"stdoutfd"                      # string offset=1046
.Linfo_string84:
	.asciz	"stderrfd"                      # string offset=1055
.Linfo_string85:
	.asciz	"stdin"                         # string offset=1064
.Linfo_string86:
	.asciz	"stdout"                        # string offset=1070
.Linfo_string87:
	.asciz	"stderr"                        # string offset=1077
.Linfo_string88:
	.asciz	"actions"                       # string offset=1084
.Linfo_string89:
	.asciz	"__allocated"                   # string offset=1092
.Linfo_string90:
	.asciz	"__used"                        # string offset=1104
.Linfo_string91:
	.asciz	"__actions"                     # string offset=1111
.Linfo_string92:
	.asciz	"__pad"                         # string offset=1121
.Linfo_string93:
	.asciz	"Posix_spawn_file_actions_t"    # string offset=1127
.Linfo_string94:
	.asciz	"command_line_copy"             # string offset=1154
.Linfo_string95:
	.asciz	"used_environment"              # string offset=1172
.Linfo_string96:
	.asciz	"file"                          # string offset=1189
.Linfo_string97:
	.asciz	"bytes_read"                    # string offset=1194
.Linfo_string98:
	.asciz	"isz"                           # string offset=1205
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2333                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"EMPTY_ENVIRONMENT"             # External Name
	.long	120                             # DIE offset
	.asciz	"read_stdout"                   # External Name
	.long	196                             # DIE offset
	.asciz	"wTERMSIG"                      # External Name
	.long	208                             # DIE offset
	.asciz	"wIFEXITED"                     # External Name
	.long	220                             # DIE offset
	.asciz	"wEXITSTATUS"                   # External Name
	.long	232                             # DIE offset
	.asciz	"join"                          # External Name
	.long	356                             # DIE offset
	.asciz	"execute_stdout_to_buffer"      # External Name
	.long	685                             # DIE offset
	.asciz	"alloc_array_try"               # External Name
	.long	698                             # DIE offset
	.asciz	"alloc_array"                   # External Name
	.long	711                             # DIE offset
	.asciz	"malloc_try"                    # External Name
	.long	723                             # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	889                             # DIE offset
	.asciz	"@stack_mem"                    # External Name
	.long	1166                            # DIE offset
	.asciz	"copy_command_line"             # External Name
	.long	1329                            # DIE offset
	.asciz	"copy_env"                      # External Name
	.long	1427                            # DIE offset
	.asciz	"create"                        # External Name
	.long	1985                            # DIE offset
	.asciz	"read_from_file_posix"          # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2333                            # Compilation Unit Length
	.long	82                              # DIE offset
	.asciz	"ZString"                       # External Name
	.long	93                              # DIE offset
	.asciz	"char*"                         # External Name
	.long	106                             # DIE offset
	.asciz	"char"                          # External Name
	.long	943                             # DIE offset
	.asciz	"OnStackAllocator"              # External Name
	.long	1005                            # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	1035                            # DIE offset
	.asciz	"void*"                         # External Name
	.long	1044                            # DIE offset
	.asciz	"typeid"                        # External Name
	.long	1051                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	1081                            # DIE offset
	.asciz	"usz"                           # External Name
	.long	1090                            # DIE offset
	.asciz	"ulong"                         # External Name
	.long	1097                            # DIE offset
	.asciz	"OnStackAllocatorExtraChunk*"   # External Name
	.long	1110                            # DIE offset
	.asciz	"OnStackAllocatorExtraChunk"    # External Name
	.long	1159                            # DIE offset
	.asciz	"bool"                          # External Name
	.long	1264                            # DIE offset
	.asciz	"ZString*"                      # External Name
	.long	1277                            # DIE offset
	.asciz	"String[]"                      # External Name
	.long	1307                            # DIE offset
	.asciz	"String*"                       # External Name
	.long	1320                            # DIE offset
	.asciz	"String"                        # External Name
	.long	2077                            # DIE offset
	.asciz	"fault"                         # External Name
	.long	2086                            # DIE offset
	.asciz	"long"                          # External Name
	.long	2093                            # DIE offset
	.asciz	"SubProcess*"                   # External Name
	.long	2106                            # DIE offset
	.asciz	"SubProcess"                    # External Name
	.long	2194                            # DIE offset
	.asciz	"CFile"                         # External Name
	.long	2206                            # DIE offset
	.asciz	"Pid_t"                         # External Name
	.long	2217                            # DIE offset
	.asciz	"int"                           # External Name
	.long	2224                            # DIE offset
	.asciz	"CInt"                          # External Name
	.long	2248                            # DIE offset
	.asciz	"Posix_spawn_file_actions_t"    # External Name
	.long	2323                            # DIE offset
	.asciz	"isz"                           # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.String.zstr_copy
	.weak	std.core.mem.allocator.OnStackAllocator.init
	.weak	std.core.mem.allocator.OnStackAllocator.free
	.weak	std.core.builtin.panic
	.weak	std.core.mem.allocator.thread_allocator
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

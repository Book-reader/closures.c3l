	.text
	.file	"std::io::file"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/io" "file.c3"
	.section	.text.std.io.File.seek,"axG",@progbits,std.io.File.seek,comdat
	.weak	std.io.File.seek                # -- Begin function std.io.File.seek
	.p2align	4, 0x90
	.type	std.io.File.seek,@function
std.io.File.seek:                       # @std.io.File.seek
.Lfunc_begin0:
	.loc	1 64 0                          # file.c3:64:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	%rsi, -72(%rbp)                 # 8-byte Spill
	movq	%rdx, -64(%rbp)                 # 8-byte Spill
	movl	%ecx, -52(%rbp)                 # 4-byte Spill
.Ltmp0:
	.loc	1 65 1 prologue_end             # file.c3:65:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB0_11
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # file.c3:0:1
	movl	-52(%rbp), %eax                 # 4-byte Reload
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movl	%eax, -20(%rbp)
.Ltmp1:
	.loc	1 62 11 is_stmt 1               # file.c3:62:11
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.2:
	leaq	.panic_msg.4(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.3(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$62, (%rsp)
	callq	*(%rax)
.Ltmp2:
.LBB0_3:
	.loc	1 66 19                         # file.c3:66:19
	movq	-8(%rbp), %rax
	.loc	1 66 38 is_stmt 0               # file.c3:66:38
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	.loc	1 66 2                          # file.c3:66:2
	callq	std.io.os.native_fseek@PLT
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_5
# %bb.4:
	.loc	1 0 2                           # file.c3:0:2
	movq	-88(%rbp), %rax                 # 8-byte Reload
	.loc	1 66 2                          # file.c3:66:2
	movq	%rax, -32(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	movq	-32(%rbp), %rax
	.loc	1 66 2 epilogue_begin           # file.c3:66:2
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 67 26 is_stmt 1               # file.c3:67:26
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	.loc	1 67 9 is_stmt 0                # file.c3:67:9
	leaq	-48(%rbp), %rdi
	callq	std.io.os.native_ftell@PLT
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_9
# %bb.8:
	.loc	1 0 9                           # file.c3:0:9
	movq	-96(%rbp), %rax                 # 8-byte Reload
	.loc	1 67 9                          # file.c3:67:9
	movq	%rax, -40(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	.loc	1 0 9                           # file.c3:0:9
	movq	-80(%rbp), %rax                 # 8-byte Reload
	.loc	1 67 9                          # file.c3:67:9
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 67 9 epilogue_begin           # file.c3:67:9
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_10:
	.cfi_def_cfa %rbp, 16
	movq	-40(%rbp), %rax
	.loc	1 67 9 epilogue_begin           # file.c3:67:9
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_11:
	.cfi_def_cfa %rbp, 16
	.loc	1 64 19 is_stmt 1               # file.c3:64:19
	leaq	.panic_msg.2(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.3(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$64, (%rsp)
	callq	*(%rax)
.Ltmp3:
.Lfunc_end0:
	.size	std.io.File.seek, .Lfunc_end0-std.io.File.seek
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.File.write_byte,"axG",@progbits,std.io.File.write_byte,comdat
	.weak	std.io.File.write_byte          # -- Begin function std.io.File.write_byte
	.p2align	4, 0x90
	.type	std.io.File.write_byte,@function
std.io.File.write_byte:                 # @std.io.File.write_byte
.Lfunc_begin1:
	.loc	1 90 0                          # file.c3:90:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movb	%sil, %al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.Ltmp4:
	.loc	1 91 1 prologue_end             # file.c3:91:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB1_7
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # file.c3:0:1
	movb	-25(%rbp), %al                  # 1-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
.Ltmp5:
	.loc	1 88 11 is_stmt 1               # file.c3:88:11
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_3
# %bb.2:
	leaq	.panic_msg.4(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.5(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$88, (%rsp)
	callq	*(%rax)
.Ltmp6:
.LBB1_3:
	.loc	1 92 26                         # file.c3:92:26
	movzbl	-9(%rbp), %edi
	.loc	1 92 29 is_stmt 0               # file.c3:92:29
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	.loc	1 92 9                          # file.c3:92:9
	callq	std.io.os.native_fputc@PLT
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_5
# %bb.4:
	.loc	1 0 9                           # file.c3:0:9
	movq	-48(%rbp), %rax                 # 8-byte Reload
	.loc	1 92 9                          # file.c3:92:9
	movq	%rax, -24(%rbp)
	jmp	.LBB1_6
.LBB1_5:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 92 9 epilogue_begin           # file.c3:92:9
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_6:
	.cfi_def_cfa %rbp, 16
	movq	-24(%rbp), %rax
	.loc	1 92 9 epilogue_begin           # file.c3:92:9
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 90 26 is_stmt 1               # file.c3:90:26
	leaq	.panic_msg.2(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.5(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$90, (%rsp)
	callq	*(%rax)
.Ltmp7:
.Lfunc_end1:
	.size	std.io.File.write_byte, .Lfunc_end1-std.io.File.write_byte
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.File.close,"axG",@progbits,std.io.File.close,comdat
	.weak	std.io.File.close               # -- Begin function std.io.File.close
	.p2align	4, 0x90
	.type	std.io.File.close,@function
std.io.File.close:                      # @std.io.File.close
.Lfunc_begin2:
	.loc	1 98 0                          # file.c3:98:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
.Ltmp8:
	.loc	1 99 1 prologue_end             # file.c3:99:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB2_11
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # file.c3:0:1
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 100 6 is_stmt 1               # file.c3:100:6
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB2_3
# %bb.2:
	.loc	1 100 32 is_stmt 0              # file.c3:100:32
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	.loc	1 100 19                        # file.c3:100:19
	callq	fclose@PLT
	cmpl	$0, %eax
	setne	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_3:
	.loc	1 0 19                          # file.c3:0:19
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	1 100 19                        # file.c3:100:19
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_10
.LBB2_4:
.Ltmp9:
	.loc	1 102 11 is_stmt 1              # file.c3:102:11
	callq	libc.errno@PLT
	movl	%eax, -12(%rbp)
# %bb.5:
	.loc	1 0 11 is_stmt 0                # file.c3:0:11
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	subl	$4, %eax
	je	.LBB2_7
	jmp	.LBB2_12
.LBB2_12:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	$5, %eax
	je	.LBB2_8
	jmp	.LBB2_13
.LBB2_13:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	$9, %eax
	je	.LBB2_6
	jmp	.LBB2_14
.LBB2_14:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	$11, %eax
	je	.LBB2_8
	jmp	.LBB2_15
.LBB2_15:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	$14, %eax
	je	.LBB2_8
	jmp	.LBB2_16
.LBB2_16:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	addl	$-27, %eax
	subl	$2, %eax
	jb	.LBB2_8
	jmp	.LBB2_17
.LBB2_17:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	addl	$-100, %eax
	subl	$2, %eax
	jb	.LBB2_8
	jmp	.LBB2_18
.LBB2_18:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	$104, %eax
	je	.LBB2_6
	jmp	.LBB2_19
.LBB2_19:
	movl	-32(%rbp), %eax                 # 4-byte Reload
	subl	$122, %eax
	je	.LBB2_8
	jmp	.LBB2_9
.LBB2_6:
.Ltmp10:
	.loc	1 105 30 is_stmt 1              # file.c3:105:30
	movq	std.io.FILE_NOT_VALID@GOTPCREL(%rip), %rax
	.loc	1 105 30 epilogue_begin is_stmt 0 # file.c3:105:30
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.LBB2_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 106 30 is_stmt 1              # file.c3:106:30
	movq	std.io.INTERRUPTED@GOTPCREL(%rip), %rax
	.loc	1 106 30 epilogue_begin is_stmt 0 # file.c3:106:30
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.LBB2_8:
	.cfi_def_cfa %rbp, 16
	.loc	1 114 28 is_stmt 1              # file.c3:114:28
	movq	std.io.INCOMPLETE_WRITE@GOTPCREL(%rip), %rax
	.loc	1 114 28 epilogue_begin is_stmt 0 # file.c3:114:28
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.LBB2_9:
	.cfi_def_cfa %rbp, 16
	.loc	1 115 20 is_stmt 1              # file.c3:115:20
	movq	std.io.UNKNOWN_ERROR@GOTPCREL(%rip), %rax
	.loc	1 115 20 epilogue_begin is_stmt 0 # file.c3:115:20
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.LBB2_10:
	.cfi_def_cfa %rbp, 16
	.loc	1 118 2 is_stmt 1               # file.c3:118:2
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 118 2 epilogue_begin is_stmt 0 # file.c3:118:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_11:
	.cfi_def_cfa %rbp, 16
	.loc	1 98 21 is_stmt 1               # file.c3:98:21
	leaq	.panic_msg.2(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.6(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$98, (%rsp)
	callq	*(%rax)
.Ltmp15:
.Lfunc_end2:
	.size	std.io.File.close, .Lfunc_end2-std.io.File.close
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.File.read,"axG",@progbits,std.io.File.read,comdat
	.weak	std.io.File.read                # -- Begin function std.io.File.read
	.p2align	4, 0x90
	.type	std.io.File.read,@function
std.io.File.read:                       # @std.io.File.read
.Lfunc_begin3:
	.loc	1 132 0                         # file.c3:132:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rsi, -64(%rbp)                 # 8-byte Spill
	movq	%rdx, -56(%rbp)                 # 8-byte Spill
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
.Ltmp16:
	.loc	1 133 1 prologue_end            # file.c3:133:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB3_5
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # file.c3:0:1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -16(%rbp)
	.loc	1 134 26 is_stmt 1              # file.c3:134:26
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	.loc	1 134 9 is_stmt 0               # file.c3:134:9
	leaq	-40(%rbp), %rdi
	callq	std.io.os.native_fread@PLT
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_3
# %bb.2:
	.loc	1 0 9                           # file.c3:0:9
	movq	-80(%rbp), %rax                 # 8-byte Reload
	.loc	1 134 9                         # file.c3:134:9
	movq	%rax, -32(%rbp)
	jmp	.LBB3_4
.LBB3_3:
	.loc	1 0 9                           # file.c3:0:9
	movq	-72(%rbp), %rax                 # 8-byte Reload
	.loc	1 134 9                         # file.c3:134:9
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 134 9 epilogue_begin          # file.c3:134:9
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_4:
	.cfi_def_cfa %rbp, 16
	movq	-32(%rbp), %rax
	.loc	1 134 9 epilogue_begin          # file.c3:134:9
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 132 19 is_stmt 1              # file.c3:132:19
	leaq	.panic_msg.2(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$132, (%rsp)
	callq	*(%rax)
.Ltmp17:
.Lfunc_end3:
	.size	std.io.File.read, .Lfunc_end3-std.io.File.read
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.File.write,"axG",@progbits,std.io.File.write,comdat
	.weak	std.io.File.write               # -- Begin function std.io.File.write
	.p2align	4, 0x90
	.type	std.io.File.write,@function
std.io.File.write:                      # @std.io.File.write
.Lfunc_begin4:
	.loc	1 141 0                         # file.c3:141:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rsi, -64(%rbp)                 # 8-byte Spill
	movq	%rdx, -56(%rbp)                 # 8-byte Spill
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
.Ltmp18:
	.loc	1 142 1 prologue_end            # file.c3:142:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB4_7
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # file.c3:0:1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -16(%rbp)
.Ltmp19:
	.loc	1 139 11 is_stmt 1              # file.c3:139:11
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_3
# %bb.2:
	leaq	.panic_msg.9(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.8(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$139, (%rsp)
	callq	*(%rax)
.Ltmp20:
.LBB4_3:
	.loc	1 143 27                        # file.c3:143:27
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	.loc	1 143 9 is_stmt 0               # file.c3:143:9
	leaq	-40(%rbp), %rdi
	callq	std.io.os.native_fwrite@PLT
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_5
# %bb.4:
	.loc	1 0 9                           # file.c3:0:9
	movq	-80(%rbp), %rax                 # 8-byte Reload
	.loc	1 143 9                         # file.c3:143:9
	movq	%rax, -32(%rbp)
	jmp	.LBB4_6
.LBB4_5:
	.loc	1 0 9                           # file.c3:0:9
	movq	-72(%rbp), %rax                 # 8-byte Reload
	.loc	1 143 9                         # file.c3:143:9
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 143 9 epilogue_begin          # file.c3:143:9
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_6:
	.cfi_def_cfa %rbp, 16
	movq	-32(%rbp), %rax
	.loc	1 143 9 epilogue_begin          # file.c3:143:9
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 141 20 is_stmt 1              # file.c3:141:20
	leaq	.panic_msg.2(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.8(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$141, (%rsp)
	callq	*(%rax)
.Ltmp21:
.Lfunc_end4:
	.size	std.io.File.write, .Lfunc_end4-std.io.File.write
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.File.read_byte,"axG",@progbits,std.io.File.read_byte,comdat
	.weak	std.io.File.read_byte           # -- Begin function std.io.File.read_byte
	.p2align	4, 0x90
	.type	std.io.File.read_byte,@function
std.io.File.read_byte:                  # @std.io.File.read_byte
.Lfunc_begin5:
	.loc	1 156 0                         # file.c3:156:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	%rsi, -32(%rbp)                 # 8-byte Spill
.Ltmp22:
	.loc	1 157 1 prologue_end            # file.c3:157:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB5_4
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # file.c3:0:1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	1 158 22 is_stmt 1              # file.c3:158:22
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	.loc	1 158 10 is_stmt 0              # file.c3:158:10
	callq	fgetc@PLT
	movl	%eax, -12(%rbp)
	.loc	1 159 6 is_stmt 1               # file.c3:159:6
	cmpl	$-1, -12(%rbp)
	jne	.LBB5_3
# %bb.2:
	.loc	1 159 22 is_stmt 0              # file.c3:159:22
	movq	std.io.EOF@GOTPCREL(%rip), %rax
	.loc	1 159 22 epilogue_begin         # file.c3:159:22
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 22                          # file.c3:0:22
	movq	-40(%rbp), %rax                 # 8-byte Reload
	.loc	1 160 9 is_stmt 1               # file.c3:160:9
	movl	-12(%rbp), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 160 9 epilogue_begin is_stmt 0 # file.c3:160:9
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 156 25 is_stmt 1              # file.c3:156:25
	leaq	.panic_msg.2(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.10(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$156, (%rsp)
	callq	*(%rax)
.Ltmp23:
.Lfunc_end5:
	.size	std.io.File.read_byte, .Lfunc_end5-std.io.File.read_byte
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.File.flush,"axG",@progbits,std.io.File.flush,comdat
	.weak	std.io.File.flush               # -- Begin function std.io.File.flush
	.p2align	4, 0x90
	.type	std.io.File.flush,@function
std.io.File.flush:                      # @std.io.File.flush
.Lfunc_begin6:
	.loc	1 222 0                         # file.c3:222:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
.Ltmp24:
	.loc	1 223 1 prologue_end            # file.c3:223:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB6_4
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # file.c3:0:1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
.Ltmp25:
	.loc	1 220 11 is_stmt 1              # file.c3:220:11
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_3
# %bb.2:
	leaq	.panic_msg.9(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.11(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$220, (%rsp)
	callq	*(%rax)
.Ltmp26:
.LBB6_3:
	.loc	1 224 15                        # file.c3:224:15
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	.loc	1 224 2 is_stmt 0               # file.c3:224:2
	callq	fflush@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 224 2 epilogue_begin          # file.c3:224:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 222 21 is_stmt 1              # file.c3:222:21
	leaq	.panic_msg.2(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.11(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$222, (%rsp)
	callq	*(%rax)
.Ltmp27:
.Lfunc_end6:
	.size	std.io.File.flush, .Lfunc_end6-std.io.File.flush
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.file.open,"axG",@progbits,std.io.file.open,comdat
	.weak	std.io.file.open                # -- Begin function std.io.file.open
	.p2align	4, 0x90
	.type	std.io.file.open,@function
std.io.file.open:                       # @std.io.file.open
.Lfunc_begin7:
	.loc	1 12 0                          # file.c3:12:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -96(%rbp)                 # 8-byte Spill
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -24(%rbp)
.Ltmp28:
	.loc	1 14 38 prologue_end            # file.c3:14:38
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	.loc	1 14 48 is_stmt 0               # file.c3:14:48
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	.loc	1 14 21                         # file.c3:14:21
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB7_2
# %bb.1:
	leaq	.panic_msg(%rip), %rdi
	movl	$33, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$14, (%rsp)
	callq	*(%rax)
.LBB7_2:
	.loc	1 0 21                          # file.c3:0:21
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	.loc	1 14 21                         # file.c3:14:21
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB7_4
# %bb.3:
	leaq	.panic_msg.1(%rip), %rdi
	movl	$37, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$14, (%rsp)
	callq	*(%rax)
.LBB7_4:
	.loc	1 0 21                          # file.c3:0:21
	movq	-64(%rbp), %r8                  # 8-byte Reload
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movq	-80(%rbp), %rdx                 # 8-byte Reload
	movq	-88(%rbp), %rsi                 # 8-byte Reload
	.loc	1 14 21                         # file.c3:14:21
	leaq	-48(%rbp), %rdi
	callq	std.io.os.native_fopen@PLT
	movq	%rax, -104(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB7_6
# %bb.5:
	.loc	1 0 21                          # file.c3:0:21
	movq	-104(%rbp), %rax                # 8-byte Reload
	.loc	1 14 21                         # file.c3:14:21
	movq	%rax, -40(%rbp)
	jmp	.LBB7_7
.LBB7_6:
	movq	-48(%rbp), %rdi
	.loc	1 14 9                          # file.c3:14:9
	callq	std.io.file.from_handle@PLT
	movq	%rax, %rcx
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp29:
.LBB7_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # file.c3:0:9
	movq	-40(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	std.io.file.open, .Lfunc_end7-std.io.file.open
	.cfi_endproc
                                        # -- End function
	.section	.text.std.io.file.from_handle,"axG",@progbits,std.io.file.from_handle,comdat
	.weak	std.io.file.from_handle         # -- Begin function std.io.file.from_handle
	.p2align	4, 0x90
	.type	std.io.file.from_handle,@function
std.io.file.from_handle:                # @std.io.file.from_handle
.Lfunc_begin8:
	.loc	1 27 0 is_stmt 1                # file.c3:27:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
.Ltmp30:
	.loc	1 29 19 prologue_end            # file.c3:29:19
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	.loc	1 29 19 epilogue_begin is_stmt 0 # file.c3:29:19
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp31:
.Lfunc_end8:
	.size	std.io.file.from_handle, .Lfunc_end8-std.io.file.from_handle
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .c3_dynamic_register
	.type	.c3_dynamic_register,@function
.c3_dynamic_register:                   # @.c3_dynamic_register
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:
	movq	($ct.std.io.File)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.io.File.seek)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB9_3
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB9_1
# %bb.2:
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.io.File.seek)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.io.File.seek)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB9_3:
	movq	($ct.std.io.File)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.io.File.write_byte)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jne	.LBB9_6
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jne	.LBB9_4
# %bb.5:
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.io.File.write_byte)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.io.File.write_byte)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB9_6:
	movq	($ct.std.io.File)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.io.File.close)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	jne	.LBB9_9
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	jne	.LBB9_7
# %bb.8:
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.io.File.close)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.io.File.close)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB9_9:
	movq	($ct.std.io.File)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.io.File.read)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	jne	.LBB9_12
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	jne	.LBB9_10
# %bb.11:
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.io.File.read)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.io.File.read)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB9_12:
	movq	($ct.std.io.File)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.io.File.write)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	jne	.LBB9_15
.LBB9_13:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	jne	.LBB9_13
# %bb.14:
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.io.File.write)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.io.File.write)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB9_15:
	movq	($ct.std.io.File)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.io.File.read_byte)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	jne	.LBB9_18
.LBB9_16:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	jne	.LBB9_16
# %bb.17:
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.io.File.read_byte)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.io.File.read_byte)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB9_18:
	movq	($ct.std.io.File)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.io.File.flush)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jne	.LBB9_21
.LBB9_19:                               # =>This Inner Loop Header: Depth=1
	movq	-104(%rsp), %rax                # 8-byte Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jne	.LBB9_19
# %bb.20:
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	($ct.dyn.std.io.File.flush)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.io.File.flush)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB9_21:
	retq
.Lfunc_end9:
	.size	.c3_dynamic_register, .Lfunc_end9-.c3_dynamic_register
	.cfi_endproc
                                        # -- End function
	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"@require \"mode.len > 0\" violated."
	.size	.panic_msg, 34

	.type	.file,@object                   # @.file
.file:
	.asciz	"file.c3"
	.size	.file, 8

	.type	.func,@object                   # @.func
.func:
	.asciz	"open"
	.size	.func, 5

	.type	.panic_msg.1,@object            # @.panic_msg.1
.panic_msg.1:
	.asciz	"@require \"filename.len > 0\" violated."
	.size	.panic_msg.1, 38

	.type	.panic_msg.2,@object            # @.panic_msg.2
.panic_msg.2:
	.asciz	"Reference parameter 'self' was passed a null pointer argument."
	.size	.panic_msg.2, 63

	.type	.func.3,@object                 # @.func.3
.func.3:
	.asciz	"seek"
	.size	.func.3, 5

	.type	.panic_msg.4,@object            # @.panic_msg.4
.panic_msg.4:
	.asciz	"@require \"self.file != null\" violated."
	.size	.panic_msg.4, 39

	.type	.func.5,@object                 # @.func.5
.func.5:
	.asciz	"write_byte"
	.size	.func.5, 11

	.type	.func.6,@object                 # @.func.6
.func.6:
	.asciz	"close"
	.size	.func.6, 6

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

	.type	.func.7,@object                 # @.func.7
.func.7:
	.asciz	"read"
	.size	.func.7, 5

	.type	.func.8,@object                 # @.func.8
.func.8:
	.asciz	"write"
	.size	.func.8, 6

	.type	.panic_msg.9,@object            # @.panic_msg.9
.panic_msg.9:
	.asciz	"@require \"self.file != null\" violated: 'File must be initialized'."
	.size	.panic_msg.9, 67

	.type	.func.10,@object                # @.func.10
.func.10:
	.asciz	"read_byte"
	.size	.func.10, 10

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

	.type	.func.11,@object                # @.func.11
.func.11:
	.asciz	"flush"
	.size	.func.11, 6

	.type	$ct.dyn.std.io.File.seek,@object # @"$ct.dyn.std.io.File.seek"
	.section	".data.$ct.dyn.std.io.File.seek","awG",@progbits,"$ct.dyn.std.io.File.seek",comdat
	.weak	$ct.dyn.std.io.File.seek
	.p2align	3, 0x0
$ct.dyn.std.io.File.seek:
	.quad	std.io.File.seek
	.quad	($sel.seek)
	.quad	-1
	.size	$ct.dyn.std.io.File.seek, 24

	.type	$sel.seek,@object               # @"$sel.seek"
	.section	".rodata.$sel.seek","aG",@progbits,"$sel.seek",comdat
	.weak	$sel.seek
$sel.seek:
	.asciz	"seek"
	.size	$sel.seek, 5

	.type	$ct.std.io.File,@object         # @"$ct.std.io.File"
	.section	".data.$ct.std.io.File","awG",@progbits,"$ct.std.io.File",comdat
	.weak	$ct.std.io.File
	.p2align	3, 0x0
$ct.std.io.File:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.size	$ct.std.io.File, 48

	.type	$ct.dyn.std.io.File.write_byte,@object # @"$ct.dyn.std.io.File.write_byte"
	.section	".data.$ct.dyn.std.io.File.write_byte","awG",@progbits,"$ct.dyn.std.io.File.write_byte",comdat
	.weak	$ct.dyn.std.io.File.write_byte
	.p2align	3, 0x0
$ct.dyn.std.io.File.write_byte:
	.quad	std.io.File.write_byte
	.quad	($sel.write_byte)
	.quad	-1
	.size	$ct.dyn.std.io.File.write_byte, 24

	.type	$sel.write_byte,@object         # @"$sel.write_byte"
	.section	".rodata.$sel.write_byte","aG",@progbits,"$sel.write_byte",comdat
	.weak	$sel.write_byte
$sel.write_byte:
	.asciz	"write_byte"
	.size	$sel.write_byte, 11

	.type	$ct.dyn.std.io.File.close,@object # @"$ct.dyn.std.io.File.close"
	.section	".data.$ct.dyn.std.io.File.close","awG",@progbits,"$ct.dyn.std.io.File.close",comdat
	.weak	$ct.dyn.std.io.File.close
	.p2align	3, 0x0
$ct.dyn.std.io.File.close:
	.quad	std.io.File.close
	.quad	($sel.close)
	.quad	-1
	.size	$ct.dyn.std.io.File.close, 24

	.type	$sel.close,@object              # @"$sel.close"
	.section	".rodata.$sel.close","aG",@progbits,"$sel.close",comdat
	.weak	$sel.close
$sel.close:
	.asciz	"close"
	.size	$sel.close, 6

	.type	$ct.dyn.std.io.File.read,@object # @"$ct.dyn.std.io.File.read"
	.section	".data.$ct.dyn.std.io.File.read","awG",@progbits,"$ct.dyn.std.io.File.read",comdat
	.weak	$ct.dyn.std.io.File.read
	.p2align	3, 0x0
$ct.dyn.std.io.File.read:
	.quad	std.io.File.read
	.quad	($sel.read)
	.quad	-1
	.size	$ct.dyn.std.io.File.read, 24

	.type	$sel.read,@object               # @"$sel.read"
	.section	".rodata.$sel.read","aG",@progbits,"$sel.read",comdat
	.weak	$sel.read
$sel.read:
	.asciz	"read"
	.size	$sel.read, 5

	.type	$ct.dyn.std.io.File.write,@object # @"$ct.dyn.std.io.File.write"
	.section	".data.$ct.dyn.std.io.File.write","awG",@progbits,"$ct.dyn.std.io.File.write",comdat
	.weak	$ct.dyn.std.io.File.write
	.p2align	3, 0x0
$ct.dyn.std.io.File.write:
	.quad	std.io.File.write
	.quad	($sel.write)
	.quad	-1
	.size	$ct.dyn.std.io.File.write, 24

	.type	$sel.write,@object              # @"$sel.write"
	.section	".rodata.$sel.write","aG",@progbits,"$sel.write",comdat
	.weak	$sel.write
$sel.write:
	.asciz	"write"
	.size	$sel.write, 6

	.type	$ct.dyn.std.io.File.read_byte,@object # @"$ct.dyn.std.io.File.read_byte"
	.section	".data.$ct.dyn.std.io.File.read_byte","awG",@progbits,"$ct.dyn.std.io.File.read_byte",comdat
	.weak	$ct.dyn.std.io.File.read_byte
	.p2align	3, 0x0
$ct.dyn.std.io.File.read_byte:
	.quad	std.io.File.read_byte
	.quad	($sel.read_byte)
	.quad	-1
	.size	$ct.dyn.std.io.File.read_byte, 24

	.type	$sel.read_byte,@object          # @"$sel.read_byte"
	.section	".rodata.$sel.read_byte","aG",@progbits,"$sel.read_byte",comdat
	.weak	$sel.read_byte
$sel.read_byte:
	.asciz	"read_byte"
	.size	$sel.read_byte, 10

	.type	$ct.dyn.std.io.File.flush,@object # @"$ct.dyn.std.io.File.flush"
	.section	".data.$ct.dyn.std.io.File.flush","awG",@progbits,"$ct.dyn.std.io.File.flush",comdat
	.weak	$ct.dyn.std.io.File.flush
	.p2align	3, 0x0
$ct.dyn.std.io.File.flush:
	.quad	std.io.File.flush
	.quad	($sel.flush)
	.quad	-1
	.size	$ct.dyn.std.io.File.flush, 24

	.type	$sel.flush,@object              # @"$sel.flush"
	.section	".rodata.$sel.flush","aG",@progbits,"$sel.flush",comdat
	.weak	$sel.flush
$sel.flush:
	.asciz	"flush"
	.size	$sel.flush, 6

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
	.byte	6                               # Abbreviation Code
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
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
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
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x2d2 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges0                 # DW_AT_ranges
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
	.byte	5                               # Abbrev [5] 0x51:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x6e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	635                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x7c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string34                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	648                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x8a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x99:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xb6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	635                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xc4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	119
	.long	.Linfo_string37                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	657                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xd3:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xf0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.long	635                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xff:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string16                 # DW_AT_linkage_name
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x11c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	635                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x12a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	664                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x139:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x156:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	635                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x164:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	664                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x173:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x190:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.long	635                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x19e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string37                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.long	74                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1ad:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string22                 # DW_AT_linkage_name
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x1ca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.long	635                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1d9:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin7                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_linkage_name
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	575                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x1f6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.long	723                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x204:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.long	723                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x213:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin8                   # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.long	.Linfo_string27                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	591                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x230:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	614                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x23f:0x9 DW_TAG_typedef
	.long	584                             # DW_AT_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	4                               # Abbrev [4] 0x248:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x24f:0x17 DW_TAG_structure_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	4                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	10                              # Abbrev [10] 0x258:0xd DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	614                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x266:0xc DW_TAG_typedef
	.long	626                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x272:0x9 DW_TAG_pointer_type
	.long	.Linfo_string29                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	13                              # Abbrev [13] 0x27b:0xd DW_TAG_pointer_type
	.long	591                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	8                               # Abbrev [8] 0x288:0x9 DW_TAG_typedef
	.long	584                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	4                               # Abbrev [4] 0x291:0x7 DW_TAG_base_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0x298:0x1e DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	15                              # Abbrev [15] 0x29f:0xb DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x2aa:0xb DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x2b6:0xd DW_TAG_pointer_type
	.long	657                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	8                               # Abbrev [8] 0x2c3:0x9 DW_TAG_typedef
	.long	716                             # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	4                               # Abbrev [4] 0x2cc:0x7 DW_TAG_base_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2d3:0x9 DW_TAG_typedef
	.long	664                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
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
	.quad	.Lfunc_begin5
	.quad	.Lfunc_end5
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
	.asciz	"file.c3"                       # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/io" # string offset=12
.Linfo_string3:
	.asciz	"int"                           # string offset=80
.Linfo_string4:
	.asciz	"SET"                           # string offset=84
.Linfo_string5:
	.asciz	"CURSOR"                        # string offset=88
.Linfo_string6:
	.asciz	"END"                           # string offset=95
.Linfo_string7:
	.asciz	"Seek"                          # string offset=99
.Linfo_string8:
	.asciz	"std.io.File.seek"              # string offset=104
.Linfo_string9:
	.asciz	"seek"                          # string offset=121
.Linfo_string10:
	.asciz	"long"                          # string offset=126
.Linfo_string11:
	.asciz	"fault"                         # string offset=131
.Linfo_string12:
	.asciz	"std.io.File.write_byte"        # string offset=137
.Linfo_string13:
	.asciz	"write_byte"                    # string offset=160
.Linfo_string14:
	.asciz	"std.io.File.close"             # string offset=171
.Linfo_string15:
	.asciz	"close"                         # string offset=189
.Linfo_string16:
	.asciz	"std.io.File.read"              # string offset=195
.Linfo_string17:
	.asciz	"read"                          # string offset=212
.Linfo_string18:
	.asciz	"std.io.File.write"             # string offset=217
.Linfo_string19:
	.asciz	"write"                         # string offset=235
.Linfo_string20:
	.asciz	"std.io.File.read_byte"         # string offset=241
.Linfo_string21:
	.asciz	"read_byte"                     # string offset=263
.Linfo_string22:
	.asciz	"std.io.File.flush"             # string offset=273
.Linfo_string23:
	.asciz	"flush"                         # string offset=291
.Linfo_string24:
	.asciz	"std.io.file.open"              # string offset=297
.Linfo_string25:
	.asciz	"open"                          # string offset=314
.Linfo_string26:
	.asciz	"std.io.file.from_handle"       # string offset=319
.Linfo_string27:
	.asciz	"from_handle"                   # string offset=343
.Linfo_string28:
	.asciz	"file"                          # string offset=355
.Linfo_string29:
	.asciz	"void*"                         # string offset=360
.Linfo_string30:
	.asciz	"CFile"                         # string offset=366
.Linfo_string31:
	.asciz	"File"                          # string offset=372
.Linfo_string32:
	.asciz	"self"                          # string offset=377
.Linfo_string33:
	.asciz	"File*"                         # string offset=382
.Linfo_string34:
	.asciz	"offset"                        # string offset=388
.Linfo_string35:
	.asciz	"isz"                           # string offset=395
.Linfo_string36:
	.asciz	"seek_mode"                     # string offset=399
.Linfo_string37:
	.asciz	"c"                             # string offset=409
.Linfo_string38:
	.asciz	"char"                          # string offset=411
.Linfo_string39:
	.asciz	"buffer"                        # string offset=416
.Linfo_string40:
	.asciz	"ptr"                           # string offset=423
.Linfo_string41:
	.asciz	"char*"                         # string offset=427
.Linfo_string42:
	.asciz	"len"                           # string offset=433
.Linfo_string43:
	.asciz	"ulong"                         # string offset=437
.Linfo_string44:
	.asciz	"usz"                           # string offset=443
.Linfo_string45:
	.asciz	"char[]"                        # string offset=447
.Linfo_string46:
	.asciz	"filename"                      # string offset=454
.Linfo_string47:
	.asciz	"String"                        # string offset=463
.Linfo_string48:
	.asciz	"mode"                          # string offset=470
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	733                             # Compilation Unit Length
	.long	55                              # DIE offset
	.asciz	"SET"                           # External Name
	.long	61                              # DIE offset
	.asciz	"CURSOR"                        # External Name
	.long	67                              # DIE offset
	.asciz	"END"                           # External Name
	.long	81                              # DIE offset
	.asciz	"seek"                          # External Name
	.long	153                             # DIE offset
	.asciz	"write_byte"                    # External Name
	.long	211                             # DIE offset
	.asciz	"close"                         # External Name
	.long	255                             # DIE offset
	.asciz	"read"                          # External Name
	.long	313                             # DIE offset
	.asciz	"write"                         # External Name
	.long	371                             # DIE offset
	.asciz	"read_byte"                     # External Name
	.long	429                             # DIE offset
	.asciz	"flush"                         # External Name
	.long	473                             # DIE offset
	.asciz	"open"                          # External Name
	.long	531                             # DIE offset
	.asciz	"from_handle"                   # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	733                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"Seek"                          # External Name
	.long	74                              # DIE offset
	.asciz	"int"                           # External Name
	.long	575                             # DIE offset
	.asciz	"fault"                         # External Name
	.long	584                             # DIE offset
	.asciz	"long"                          # External Name
	.long	591                             # DIE offset
	.asciz	"File"                          # External Name
	.long	614                             # DIE offset
	.asciz	"CFile"                         # External Name
	.long	626                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	635                             # DIE offset
	.asciz	"File*"                         # External Name
	.long	648                             # DIE offset
	.asciz	"isz"                           # External Name
	.long	657                             # DIE offset
	.asciz	"char"                          # External Name
	.long	664                             # DIE offset
	.asciz	"char[]"                        # External Name
	.long	694                             # DIE offset
	.asciz	"char*"                         # External Name
	.long	707                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	716                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	723                             # DIE offset
	.asciz	"String"                        # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.io.os.native_fopen
	.weak	std.io.os.native_fseek
	.weak	std.io.os.native_ftell
	.weak	std.io.os.native_fputc
	.weak	libc.errno
	.weak	std.io.os.native_fread
	.weak	std.io.os.native_fwrite
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

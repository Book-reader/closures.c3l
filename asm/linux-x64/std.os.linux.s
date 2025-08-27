	.text
	.file	"std::os::linux"
	.p2align	4, 0x90                         # -- Begin function std.os.linux.elf_module_image_base.18228
	.type	std.os.linux.elf_module_image_base.18228,@function
std.os.linux.elf_module_image_base.18228: # @std.os.linux.elf_module_image_base.18228
.Lfunc_begin0:
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/os/linux" "linux.c3"
	.loc	1 150 0                         # linux.c3:150:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1440, %rsp                     # imm = 0x5A0
	movq	%rdi, -1056(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rdx
.Ltmp0:
	.loc	1 152 14 prologue_end           # linux.c3:152:14
	leaq	-184(%rbp), %rdi
	leaq	.L.str(%rip), %rcx
	movl	$2, %r8d
	callq	std.io.file.open@PLT
	movq	%rax, -1048(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:
	.loc	1 0 14 is_stmt 0                # linux.c3:0:14
	movq	-1048(%rbp), %rax               # 8-byte Reload
	.loc	1 152 14                        # linux.c3:152:14
	movq	%rax, -176(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	jmp	.LBB0_5
.LBB0_3:
	movq	-176(%rbp), %rax
	movq	%rax, -1064(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.4:
	.loc	1 0 14                          # linux.c3:0:14
	movq	-1064(%rbp), %rax               # 8-byte Reload
	.loc	1 152 14 epilogue_begin         # linux.c3:152:14
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_5:
	.cfi_def_cfa %rbp, 16
	movq	-184(%rbp), %rax
	movq	%rax, -168(%rbp)
	.loc	1 154 10 is_stmt 1              # linux.c3:154:10
	movb	$0, -188(%rbp)
	movb	$0, -187(%rbp)
	movb	$0, -186(%rbp)
	movb	$0, -185(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-188(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$4, -216(%rbp)
.Ltmp1:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/io" "stream.c3"
	.loc	2 84 6                          # stream.c3:84:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-216(%rbp), %rax
	jne	.LBB0_7
# %bb.6:
	.loc	2 84 30 is_stmt 0               # stream.c3:84:30
	movq	$0, -232(%rbp)
	jmp	.LBB0_14
.LBB0_7:
	.loc	2 0 30                          # stream.c3:0:30
	movq	-208(%rbp), %rsi
	movq	-224(%rbp), %rdx
	movq	-216(%rbp), %rcx
	.loc	2 85 10 is_stmt 1               # stream.c3:85:10
	leaq	-256(%rbp), %rdi
	callq	std.io.File.read@PLT
	movq	%rax, -1072(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_9
# %bb.8:
	.loc	2 0 10 is_stmt 0                # stream.c3:0:10
	movq	-1072(%rbp), %rax               # 8-byte Reload
	.loc	2 85 10                         # stream.c3:85:10
	movq	%rax, -248(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	jmp	.LBB0_11
.LBB0_10:
	movq	-248(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB0_15
.LBB0_11:
	movq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	.loc	2 86 6 is_stmt 1                # stream.c3:86:6
	movq	-240(%rbp), %rax
	cmpq	-216(%rbp), %rax
	je	.LBB0_13
# %bb.12:
	.loc	2 86 30 is_stmt 0               # stream.c3:86:30
	movq	std.io.UNEXPECTED_EOF@GOTPCREL(%rip), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB0_15
.LBB0_13:
	.loc	2 87 9 is_stmt 1                # stream.c3:87:9
	movq	-240(%rbp), %rax
	movq	%rax, -232(%rbp)
.LBB0_14:
	jmp	.LBB0_17
.Ltmp2:
.LBB0_15:
	.loc	2 0 9 is_stmt 0                 # stream.c3:0:9
	leaq	-168(%rbp), %rdi
.Ltmp3:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-200(%rbp), %rax
	movq	%rax, -1080(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.16:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1080(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.LBB0_17:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # linux.c3:0:8
	movl	.L.__const(%rip), %eax
	movl	%eax, -260(%rbp)
	.loc	1 156 6 is_stmt 1               # linux.c3:156:6
	leaq	-188(%rbp), %rdi
	leaq	-260(%rbp), %rsi
	movl	$4, %edx
	callq	memcmp@PLT
	cmpl	$0, %eax
	je	.LBB0_20
# %bb.18:
	.loc	1 0 6 is_stmt 0                 # linux.c3:0:6
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -272(%rbp)
	leaq	-168(%rbp), %rdi
.Ltmp5:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.19:
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB0_20:
	.cfi_def_cfa %rbp, 16
	.loc	1 157 15 is_stmt 1              # linux.c3:157:15
	leaq	-289(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	std.io.File.read_byte@PLT
	movq	%rax, -1088(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_22
# %bb.21:
	.loc	1 0 15 is_stmt 0                # linux.c3:0:15
	movq	-1088(%rbp), %rax               # 8-byte Reload
	.loc	1 157 15                        # linux.c3:157:15
	movq	%rax, -288(%rbp)
	jmp	.LBB0_23
.LBB0_22:
	jmp	.LBB0_25
.LBB0_23:
	.loc	1 0 15                          # linux.c3:0:15
	leaq	-168(%rbp), %rdi
.Ltmp7:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-288(%rbp), %rax
	movq	%rax, -1096(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.24:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1096(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_25:
	.cfi_def_cfa %rbp, 16
	movzbl	-289(%rbp), %ecx
.Ltmp8:
	.loc	1 157 15 is_stmt 1              # linux.c3:157:15
	movl	$2, %eax
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movb	%al, -273(%rbp)
	.loc	1 158 26                        # linux.c3:158:26
	leaq	-305(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	std.io.File.read_byte@PLT
	movq	%rax, -1104(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_27
# %bb.26:
	.loc	1 0 26 is_stmt 0                # linux.c3:0:26
	movq	-1104(%rbp), %rax               # 8-byte Reload
	.loc	1 158 26                        # linux.c3:158:26
	movq	%rax, -304(%rbp)
	jmp	.LBB0_28
.LBB0_27:
	jmp	.LBB0_30
.LBB0_28:
	.loc	1 0 26                          # linux.c3:0:26
	leaq	-168(%rbp), %rdi
.Ltmp9:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-304(%rbp), %rax
	movq	%rax, -1112(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.29:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1112(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_30:
	.cfi_def_cfa %rbp, 16
	movzbl	-305(%rbp), %ecx
.Ltmp10:
	.loc	1 158 26 is_stmt 1              # linux.c3:158:26
	movl	$1, %eax
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movb	%al, -290(%rbp)
	.loc	1 160 7                         # linux.c3:160:7
	testb	$1, -290(%rbp)
	jne	.LBB0_33
# %bb.31:
	.loc	1 0 7 is_stmt 0                 # linux.c3:0:7
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -320(%rbp)
	leaq	-168(%rbp), %rdi
.Ltmp11:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.32:
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.LBB0_33:
	.cfi_def_cfa %rbp, 16
	.loc	1 161 2 is_stmt 1               # linux.c3:161:2
	cmpq	$0, -168(%rbp)
	jne	.LBB0_36
# %bb.34:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1120(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.35:
	.loc	1 0 2 is_stmt 0                 # linux.c3:0:2
	movq	-1120(%rbp), %rax               # 8-byte Reload
	.loc	1 161 2                         # linux.c3:161:2
	leaq	.panic_msg(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	movl	$161, (%rsp)
	callq	*%rax
.LBB0_36:
	leaq	-336(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	callq	std.io.File.seek@PLT
	movq	%rax, -1128(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_38
# %bb.37:
	.loc	1 0 2                           # linux.c3:0:2
	movq	-1128(%rbp), %rax               # 8-byte Reload
	.loc	1 161 2                         # linux.c3:161:2
	movq	%rax, -328(%rbp)
	jmp	.LBB0_39
.LBB0_38:
	jmp	.LBB0_41
.LBB0_39:
	.loc	1 0 2                           # linux.c3:0:2
	leaq	-168(%rbp), %rdi
.Ltmp13:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-328(%rbp), %rax
	movq	%rax, -1136(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.40:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1136(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.LBB0_41:
	.cfi_def_cfa %rbp, 16
	.loc	1 162 6 is_stmt 1               # linux.c3:162:6
	testb	$1, -273(%rbp)
	je	.LBB0_93
# %bb.42:
.Ltmp15:
	.loc	1 164 14                        # linux.c3:164:14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -32(%rbp)
	vmovdqa	%xmm0, -48(%rbp)
	vmovdqa	%xmm0, -64(%rbp)
	vmovdqa	%xmm0, -80(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -352(%rbp)
	.loc	1 165 23                        # linux.c3:165:23
	movq	($ct.std.os.linux.Elf64_Ehdr)@GOTPCREL(%rip), %rax
	movq	%rax, -360(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -368(%rbp)
.Ltmp16:
	.loc	2 64 33                         # stream.c3:64:33
	cmpq	$0, -368(%rbp)
	jne	.LBB0_45
# %bb.43:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.44:
	.loc	2 0 33 is_stmt 0                # stream.c3:0:33
	movq	-1144(%rbp), %rax               # 8-byte Reload
	.loc	2 64 33                         # stream.c3:64:33
	leaq	.panic_msg.1(%rip), %rdi
	movl	$37, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	movl	$64, (%rsp)
	callq	*%rax
.Ltmp17:
.LBB0_45:
	.loc	2 0 33                          # stream.c3:0:33
	movq	-352(%rbp), %rax
	movq	%rax, -376(%rbp)
	.loc	2 66 27 is_stmt 1               # stream.c3:66:27
	movq	-368(%rbp), %rax
	movq	%rax, -1168(%rbp)               # 8-byte Spill
	.loc	2 66 40 is_stmt 0               # stream.c3:66:40
	movq	-360(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -1160(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -1152(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_144
# %bb.46:
	.loc	2 0 40                          # stream.c3:0:40
	movq	-1168(%rbp), %rax               # 8-byte Reload
	movq	-1160(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -424(%rbp)
	movq	%rax, -432(%rbp)
.Ltmp18:
	.loc	2 84 6 is_stmt 1                # stream.c3:84:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-424(%rbp), %rax
	jne	.LBB0_48
# %bb.47:
	.loc	2 84 30 is_stmt 0               # stream.c3:84:30
	movq	$0, -440(%rbp)
	jmp	.LBB0_55
.LBB0_48:
	.loc	2 0 30                          # stream.c3:0:30
	movq	-376(%rbp), %rsi
	movq	-432(%rbp), %rdx
	movq	-424(%rbp), %rcx
	.loc	2 85 10 is_stmt 1               # stream.c3:85:10
	leaq	-464(%rbp), %rdi
	callq	std.io.File.read@PLT
	movq	%rax, -1176(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_50
# %bb.49:
	.loc	2 0 10 is_stmt 0                # stream.c3:0:10
	movq	-1176(%rbp), %rax               # 8-byte Reload
	.loc	2 85 10                         # stream.c3:85:10
	movq	%rax, -456(%rbp)
	jmp	.LBB0_51
.LBB0_50:
	jmp	.LBB0_52
.LBB0_51:
	movq	-456(%rbp), %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB0_56
.LBB0_52:
	movq	-464(%rbp), %rax
	movq	%rax, -448(%rbp)
	.loc	2 86 6 is_stmt 1                # stream.c3:86:6
	movq	-448(%rbp), %rax
	cmpq	-424(%rbp), %rax
	je	.LBB0_54
# %bb.53:
	.loc	2 86 30 is_stmt 0               # stream.c3:86:30
	movq	std.io.UNEXPECTED_EOF@GOTPCREL(%rip), %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB0_56
.LBB0_54:
	.loc	2 87 9 is_stmt 1                # stream.c3:87:9
	movq	-448(%rbp), %rax
	movq	%rax, -440(%rbp)
.LBB0_55:
	jmp	.LBB0_58
.Ltmp19:
.LBB0_56:
	.loc	2 0 9 is_stmt 0                 # stream.c3:0:9
	leaq	-168(%rbp), %rdi
.Ltmp20:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-344(%rbp), %rax
	movq	%rax, -1184(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.57:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1184(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.LBB0_58:
	.cfi_def_cfa %rbp, 16
	.loc	1 166 7 is_stmt 1               # linux.c3:166:7
	movzwl	-28(%rbp), %eax
                                        # kill: def $rax killed $eax
	cmpq	$64, %rax
	je	.LBB0_61
.Ltmp22:
# %bb.59:
	.loc	1 0 7 is_stmt 0                 # linux.c3:0:7
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -472(%rbp)
	leaq	-168(%rbp), %rdi
.Ltmp23:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.60:
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp24:
.LBB0_61:
	.cfi_def_cfa %rbp, 16
	.loc	1 167 16 is_stmt 1              # linux.c3:167:16
	movq	$0, -480(%rbp)
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	.loc	1 167 19 is_stmt 0              # linux.c3:167:19
	movq	-480(%rbp), %rcx
	.loc	1 167 23                        # linux.c3:167:23
	movzwl	-24(%rbp), %eax
                                        # kill: def $rax killed $eax
	.loc	1 167 19                        # linux.c3:167:19
	cmpq	%rax, %rcx
	setl	%cl
	cmpq	$0, %rax
	setl	%al
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB0_63
	jmp	.LBB0_91
.LBB0_63:                               #   in Loop: Header=BB0_62 Depth=1
.Ltmp25:
	.loc	1 169 15 is_stmt 1              # linux.c3:169:15
	leaq	-536(%rbp), %rdi
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset@PLT
	.loc	1 170 19                        # linux.c3:170:19
	movq	-48(%rbp), %rax
	.loc	1 170 46 is_stmt 0              # linux.c3:170:46
	movzwl	-26(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 170 41                        # linux.c3:170:41
	imulq	-480(%rbp), %rcx
	.loc	1 170 14                        # linux.c3:170:14
	addq	%rcx, %rax
	movq	%rax, -1192(%rbp)               # 8-byte Spill
	.loc	1 170 4                         # linux.c3:170:4
	cmpq	$0, -168(%rbp)
	jne	.LBB0_66
# %bb.64:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1200(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.65:
	.loc	1 0 4                           # linux.c3:0:4
	movq	-1200(%rbp), %rax               # 8-byte Reload
	.loc	1 170 4                         # linux.c3:170:4
	leaq	.panic_msg(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	movl	$170, (%rsp)
	callq	*%rax
.LBB0_66:                               #   in Loop: Header=BB0_62 Depth=1
	.loc	1 0 4                           # linux.c3:0:4
	movq	-1192(%rbp), %rdx               # 8-byte Reload
	.loc	1 170 4                         # linux.c3:170:4
	leaq	-552(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	xorl	%ecx, %ecx
	callq	std.io.File.seek@PLT
	movq	%rax, -1208(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_68
# %bb.67:
	.loc	1 0 4                           # linux.c3:0:4
	movq	-1208(%rbp), %rax               # 8-byte Reload
	.loc	1 170 4                         # linux.c3:170:4
	movq	%rax, -544(%rbp)
	jmp	.LBB0_69
.LBB0_68:                               #   in Loop: Header=BB0_62 Depth=1
	jmp	.LBB0_71
.Ltmp26:
.LBB0_69:
	.loc	1 0 4                           # linux.c3:0:4
	leaq	-168(%rbp), %rdi
.Ltmp27:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-544(%rbp), %rax
	movq	%rax, -1216(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.70:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1216(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp28:
.LBB0_71:                               #   in Loop: Header=BB0_62 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # linux.c3:0:8
	leaq	-168(%rbp), %rax
	movq	%rax, -568(%rbp)
.Ltmp29:
	.loc	1 171 24 is_stmt 1              # linux.c3:171:24
	movq	($ct.std.os.linux.Elf64_Phdr)@GOTPCREL(%rip), %rax
	movq	%rax, -576(%rbp)
	leaq	-536(%rbp), %rax
	movq	%rax, -584(%rbp)
.Ltmp30:
	.loc	2 64 33                         # stream.c3:64:33
	cmpq	$0, -584(%rbp)
	jne	.LBB0_74
# %bb.72:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1224(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.73:
	.loc	2 0 33 is_stmt 0                # stream.c3:0:33
	movq	-1224(%rbp), %rax               # 8-byte Reload
	.loc	2 64 33                         # stream.c3:64:33
	leaq	.panic_msg.1(%rip), %rdi
	movl	$37, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	movl	$64, (%rsp)
	callq	*%rax
.Ltmp31:
.LBB0_74:                               #   in Loop: Header=BB0_62 Depth=1
	.loc	2 0 33                          # stream.c3:0:33
	movq	-568(%rbp), %rax
	movq	%rax, -592(%rbp)
	.loc	2 66 27 is_stmt 1               # stream.c3:66:27
	movq	-584(%rbp), %rax
	movq	%rax, -1248(%rbp)               # 8-byte Spill
	.loc	2 66 40 is_stmt 0               # stream.c3:66:40
	movq	-576(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -1240(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -1232(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_145
# %bb.75:                               #   in Loop: Header=BB0_62 Depth=1
	.loc	2 0 40                          # stream.c3:0:40
	movq	-1248(%rbp), %rax               # 8-byte Reload
	movq	-1240(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -648(%rbp)
	movq	%rax, -656(%rbp)
.Ltmp32:
	.loc	2 84 6 is_stmt 1                # stream.c3:84:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-648(%rbp), %rax
	jne	.LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_62 Depth=1
	.loc	2 84 30 is_stmt 0               # stream.c3:84:30
	movq	$0, -664(%rbp)
	jmp	.LBB0_84
.LBB0_77:                               #   in Loop: Header=BB0_62 Depth=1
	.loc	2 0 30                          # stream.c3:0:30
	movq	-592(%rbp), %rsi
	movq	-656(%rbp), %rdx
	movq	-648(%rbp), %rcx
	.loc	2 85 10 is_stmt 1               # stream.c3:85:10
	leaq	-688(%rbp), %rdi
	callq	std.io.File.read@PLT
	movq	%rax, -1256(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_79
# %bb.78:
	.loc	2 0 10 is_stmt 0                # stream.c3:0:10
	movq	-1256(%rbp), %rax               # 8-byte Reload
	.loc	2 85 10                         # stream.c3:85:10
	movq	%rax, -680(%rbp)
	jmp	.LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_62 Depth=1
	jmp	.LBB0_81
.LBB0_80:
	movq	-680(%rbp), %rax
	movq	%rax, -560(%rbp)
	jmp	.LBB0_85
.LBB0_81:                               #   in Loop: Header=BB0_62 Depth=1
	movq	-688(%rbp), %rax
	movq	%rax, -672(%rbp)
	.loc	2 86 6 is_stmt 1                # stream.c3:86:6
	movq	-672(%rbp), %rax
	cmpq	-648(%rbp), %rax
	je	.LBB0_83
# %bb.82:
	.loc	2 86 30 is_stmt 0               # stream.c3:86:30
	movq	std.io.UNEXPECTED_EOF@GOTPCREL(%rip), %rax
	movq	%rax, -560(%rbp)
	jmp	.LBB0_85
.LBB0_83:                               #   in Loop: Header=BB0_62 Depth=1
	.loc	2 87 9 is_stmt 1                # stream.c3:87:9
	movq	-672(%rbp), %rax
	movq	%rax, -664(%rbp)
.LBB0_84:                               #   in Loop: Header=BB0_62 Depth=1
	jmp	.LBB0_87
.Ltmp33:
.LBB0_85:
	.loc	2 0 9 is_stmt 0                 # stream.c3:0:9
	leaq	-168(%rbp), %rdi
.Ltmp34:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-560(%rbp), %rax
	movq	%rax, -1264(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.86:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1264(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.LBB0_87:                               #   in Loop: Header=BB0_62 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 172 8 is_stmt 1               # linux.c3:172:8
	movl	$6, %eax
	cmpl	-536(%rbp), %eax
	jne	.LBB0_90
# %bb.88:
	.loc	1 172 58 is_stmt 0              # linux.c3:172:58
	movq	-528(%rbp), %rcx
	.loc	1 172 41                        # linux.c3:172:41
	movq	-520(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, -1272(%rbp)               # 8-byte Spill
	leaq	-168(%rbp), %rdi
.Ltmp36:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-1272(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $rdx killed $rax
	movq	-1056(%rbp), %rax               # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.89:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.LBB0_90:                               #   in Loop: Header=BB0_62 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 167 44 is_stmt 1              # linux.c3:167:44
	movq	-480(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)
	jmp	.LBB0_62
.Ltmp38:
.LBB0_91:
	.loc	1 0 44 is_stmt 0                # linux.c3:0:44
	leaq	-168(%rbp), %rdi
.Ltmp39:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
                                        # kill: def $rcx killed $rax
	movq	-1056(%rbp), %rax               # 8-byte Reload
	movq	$0, (%rax)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.92:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp40:
.LBB0_93:
	.cfi_def_cfa %rbp, 16
	.loc	1 176 13 is_stmt 1              # linux.c3:176:13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -128(%rbp)
	vmovdqa	%xmm0, -144(%rbp)
	movl	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -720(%rbp)
	.loc	1 177 22                        # linux.c3:177:22
	movq	($ct.std.os.linux.Elf32_Ehdr)@GOTPCREL(%rip), %rax
	movq	%rax, -728(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -736(%rbp)
.Ltmp41:
	.loc	2 64 33                         # stream.c3:64:33
	cmpq	$0, -736(%rbp)
	jne	.LBB0_96
# %bb.94:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1280(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.95:
	.loc	2 0 33 is_stmt 0                # stream.c3:0:33
	movq	-1280(%rbp), %rax               # 8-byte Reload
	.loc	2 64 33                         # stream.c3:64:33
	leaq	.panic_msg.1(%rip), %rdi
	movl	$37, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	movl	$64, (%rsp)
	callq	*%rax
.Ltmp42:
.LBB0_96:
	.loc	2 0 33                          # stream.c3:0:33
	movq	-720(%rbp), %rax
	movq	%rax, -744(%rbp)
	.loc	2 66 27 is_stmt 1               # stream.c3:66:27
	movq	-736(%rbp), %rax
	movq	%rax, -1304(%rbp)               # 8-byte Spill
	.loc	2 66 40 is_stmt 0               # stream.c3:66:40
	movq	-728(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -1296(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -1288(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_146
# %bb.97:
	.loc	2 0 40                          # stream.c3:0:40
	movq	-1304(%rbp), %rax               # 8-byte Reload
	movq	-1296(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -792(%rbp)
	movq	%rax, -800(%rbp)
.Ltmp43:
	.loc	2 84 6 is_stmt 1                # stream.c3:84:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-792(%rbp), %rax
	jne	.LBB0_99
# %bb.98:
	.loc	2 84 30 is_stmt 0               # stream.c3:84:30
	movq	$0, -808(%rbp)
	jmp	.LBB0_106
.LBB0_99:
	.loc	2 0 30                          # stream.c3:0:30
	movq	-744(%rbp), %rsi
	movq	-800(%rbp), %rdx
	movq	-792(%rbp), %rcx
	.loc	2 85 10 is_stmt 1               # stream.c3:85:10
	leaq	-832(%rbp), %rdi
	callq	std.io.File.read@PLT
	movq	%rax, -1312(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_101
# %bb.100:
	.loc	2 0 10 is_stmt 0                # stream.c3:0:10
	movq	-1312(%rbp), %rax               # 8-byte Reload
	.loc	2 85 10                         # stream.c3:85:10
	movq	%rax, -824(%rbp)
	jmp	.LBB0_102
.LBB0_101:
	jmp	.LBB0_103
.LBB0_102:
	movq	-824(%rbp), %rax
	movq	%rax, -712(%rbp)
	jmp	.LBB0_107
.LBB0_103:
	movq	-832(%rbp), %rax
	movq	%rax, -816(%rbp)
	.loc	2 86 6 is_stmt 1                # stream.c3:86:6
	movq	-816(%rbp), %rax
	cmpq	-792(%rbp), %rax
	je	.LBB0_105
# %bb.104:
	.loc	2 86 30 is_stmt 0               # stream.c3:86:30
	movq	std.io.UNEXPECTED_EOF@GOTPCREL(%rip), %rax
	movq	%rax, -712(%rbp)
	jmp	.LBB0_107
.LBB0_105:
	.loc	2 87 9 is_stmt 1                # stream.c3:87:9
	movq	-816(%rbp), %rax
	movq	%rax, -808(%rbp)
.LBB0_106:
	jmp	.LBB0_109
.Ltmp44:
.LBB0_107:
	.loc	2 0 9 is_stmt 0                 # stream.c3:0:9
	leaq	-168(%rbp), %rdi
.Ltmp45:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-712(%rbp), %rax
	movq	%rax, -1320(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.108:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1320(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp46:
.LBB0_109:
	.cfi_def_cfa %rbp, 16
	.loc	1 178 6 is_stmt 1               # linux.c3:178:6
	movzwl	-104(%rbp), %eax
                                        # kill: def $rax killed $eax
	cmpq	$52, %rax
	je	.LBB0_112
# %bb.110:
	.loc	1 0 6 is_stmt 0                 # linux.c3:0:6
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -840(%rbp)
	leaq	-168(%rbp), %rdi
.Ltmp47:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.111:
	movq	std.os.backtrace.IMAGE_NOT_FOUND@GOTPCREL(%rip), %rax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp48:
.LBB0_112:
	.cfi_def_cfa %rbp, 16
	.loc	1 179 15 is_stmt 1              # linux.c3:179:15
	movq	$0, -848(%rbp)
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	.loc	1 179 18 is_stmt 0              # linux.c3:179:18
	movq	-848(%rbp), %rcx
	.loc	1 179 22                        # linux.c3:179:22
	movzwl	-100(%rbp), %eax
                                        # kill: def $rax killed $eax
	.loc	1 179 18                        # linux.c3:179:18
	cmpq	%rax, %rcx
	setl	%cl
	cmpq	$0, %rax
	setl	%al
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB0_114
	jmp	.LBB0_142
.LBB0_114:                              #   in Loop: Header=BB0_113 Depth=1
.Ltmp49:
	.loc	1 181 14 is_stmt 1              # linux.c3:181:14
	leaq	-880(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	.loc	1 182 13                        # linux.c3:182:13
	movl	-116(%rbp), %eax
                                        # kill: def $rax killed $eax
	.loc	1 182 40 is_stmt 0              # linux.c3:182:40
	movzwl	-102(%rbp), %ecx
                                        # kill: def $rcx killed $ecx
	.loc	1 182 35                        # linux.c3:182:35
	imulq	-848(%rbp), %rcx
	.loc	1 182 13                        # linux.c3:182:13
	addq	%rcx, %rax
	movq	%rax, -1328(%rbp)               # 8-byte Spill
	.loc	1 182 3                         # linux.c3:182:3
	cmpq	$0, -168(%rbp)
	jne	.LBB0_117
# %bb.115:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1336(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.116:
	.loc	1 0 3                           # linux.c3:0:3
	movq	-1336(%rbp), %rax               # 8-byte Reload
	.loc	1 182 3                         # linux.c3:182:3
	leaq	.panic_msg(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	movl	$182, (%rsp)
	callq	*%rax
.LBB0_117:                              #   in Loop: Header=BB0_113 Depth=1
	.loc	1 0 3                           # linux.c3:0:3
	movq	-1328(%rbp), %rdx               # 8-byte Reload
	.loc	1 182 3                         # linux.c3:182:3
	leaq	-896(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	xorl	%ecx, %ecx
	callq	std.io.File.seek@PLT
	movq	%rax, -1344(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_119
# %bb.118:
	.loc	1 0 3                           # linux.c3:0:3
	movq	-1344(%rbp), %rax               # 8-byte Reload
	.loc	1 182 3                         # linux.c3:182:3
	movq	%rax, -888(%rbp)
	jmp	.LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_113 Depth=1
	jmp	.LBB0_122
.Ltmp50:
.LBB0_120:
	.loc	1 0 3                           # linux.c3:0:3
	leaq	-168(%rbp), %rdi
.Ltmp51:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-888(%rbp), %rax
	movq	%rax, -1352(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.121:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1352(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp52:
.LBB0_122:                              #   in Loop: Header=BB0_113 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # linux.c3:0:8
	leaq	-168(%rbp), %rax
	movq	%rax, -912(%rbp)
.Ltmp53:
	.loc	1 183 23 is_stmt 1              # linux.c3:183:23
	movq	($ct.std.os.linux.Elf32_Phdr)@GOTPCREL(%rip), %rax
	movq	%rax, -920(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, -928(%rbp)
.Ltmp54:
	.loc	2 64 33                         # stream.c3:64:33
	cmpq	$0, -928(%rbp)
	jne	.LBB0_125
# %bb.123:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1360(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.124:
	.loc	2 0 33 is_stmt 0                # stream.c3:0:33
	movq	-1360(%rbp), %rax               # 8-byte Reload
	.loc	2 64 33                         # stream.c3:64:33
	leaq	.panic_msg.1(%rip), %rdi
	movl	$37, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	movl	$64, (%rsp)
	callq	*%rax
.Ltmp55:
.LBB0_125:                              #   in Loop: Header=BB0_113 Depth=1
	.loc	2 0 33                          # stream.c3:0:33
	movq	-912(%rbp), %rax
	movq	%rax, -936(%rbp)
	.loc	2 66 27 is_stmt 1               # stream.c3:66:27
	movq	-928(%rbp), %rax
	movq	%rax, -1384(%rbp)               # 8-byte Spill
	.loc	2 66 40 is_stmt 0               # stream.c3:66:40
	movq	-920(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -1376(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -1368(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_147
# %bb.126:                              #   in Loop: Header=BB0_113 Depth=1
	.loc	2 0 40                          # stream.c3:0:40
	movq	-1384(%rbp), %rax               # 8-byte Reload
	movq	-1376(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -984(%rbp)
	movq	%rax, -992(%rbp)
.Ltmp56:
	.loc	2 84 6 is_stmt 1                # stream.c3:84:6
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-984(%rbp), %rax
	jne	.LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_113 Depth=1
	.loc	2 84 30 is_stmt 0               # stream.c3:84:30
	movq	$0, -1000(%rbp)
	jmp	.LBB0_135
.LBB0_128:                              #   in Loop: Header=BB0_113 Depth=1
	.loc	2 0 30                          # stream.c3:0:30
	movq	-936(%rbp), %rsi
	movq	-992(%rbp), %rdx
	movq	-984(%rbp), %rcx
	.loc	2 85 10 is_stmt 1               # stream.c3:85:10
	leaq	-1024(%rbp), %rdi
	callq	std.io.File.read@PLT
	movq	%rax, -1392(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_130
# %bb.129:
	.loc	2 0 10 is_stmt 0                # stream.c3:0:10
	movq	-1392(%rbp), %rax               # 8-byte Reload
	.loc	2 85 10                         # stream.c3:85:10
	movq	%rax, -1016(%rbp)
	jmp	.LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_113 Depth=1
	jmp	.LBB0_132
.LBB0_131:
	movq	-1016(%rbp), %rax
	movq	%rax, -904(%rbp)
	jmp	.LBB0_136
.LBB0_132:                              #   in Loop: Header=BB0_113 Depth=1
	movq	-1024(%rbp), %rax
	movq	%rax, -1008(%rbp)
	.loc	2 86 6 is_stmt 1                # stream.c3:86:6
	movq	-1008(%rbp), %rax
	cmpq	-984(%rbp), %rax
	je	.LBB0_134
# %bb.133:
	.loc	2 86 30 is_stmt 0               # stream.c3:86:30
	movq	std.io.UNEXPECTED_EOF@GOTPCREL(%rip), %rax
	movq	%rax, -904(%rbp)
	jmp	.LBB0_136
.LBB0_134:                              #   in Loop: Header=BB0_113 Depth=1
	.loc	2 87 9 is_stmt 1                # stream.c3:87:9
	movq	-1008(%rbp), %rax
	movq	%rax, -1000(%rbp)
.LBB0_135:                              #   in Loop: Header=BB0_113 Depth=1
	jmp	.LBB0_138
.Ltmp57:
.LBB0_136:
	.loc	2 0 9 is_stmt 0                 # stream.c3:0:9
	leaq	-168(%rbp), %rdi
.Ltmp58:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-904(%rbp), %rax
	movq	%rax, -1400(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.137:
	.loc	1 0 8 is_stmt 0                 # linux.c3:0:8
	movq	-1400(%rbp), %rax               # 8-byte Reload
	.loc	1 153 8 epilogue_begin          # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp59:
.LBB0_138:                              #   in Loop: Header=BB0_113 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 184 7 is_stmt 1               # linux.c3:184:7
	movl	$6, %eax
	cmpl	-880(%rbp), %eax
	jne	.LBB0_141
# %bb.139:
	.loc	1 184 64 is_stmt 0              # linux.c3:184:64
	movl	-876(%rbp), %ecx
	.loc	1 184 47                        # linux.c3:184:47
	movl	-872(%rbp), %eax
                                        # kill: def $rax killed $eax
                                        # kill: def $rcx killed $ecx
	.loc	1 184 40                        # linux.c3:184:40
	subq	%rcx, %rax
	movq	%rax, -1408(%rbp)               # 8-byte Spill
	leaq	-168(%rbp), %rdi
.Ltmp60:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
	movq	-1408(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $rdx killed $rax
	movq	-1056(%rbp), %rax               # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.140:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp61:
.LBB0_141:                              #   in Loop: Header=BB0_113 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 179 43 is_stmt 1              # linux.c3:179:43
	movq	-848(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -848(%rbp)
	jmp	.LBB0_113
.Ltmp62:
.LBB0_142:
	.loc	1 0 43 is_stmt 0                # linux.c3:0:43
	leaq	-168(%rbp), %rdi
.Ltmp63:
	.loc	1 153 8 is_stmt 1               # linux.c3:153:8
	callq	std.io.File.close@PLT
                                        # kill: def $rcx killed $rax
	movq	-1056(%rbp), %rax               # 8-byte Reload
	movq	$0, (%rax)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_148
# %bb.143:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 153 8 epilogue_begin is_stmt 0 # linux.c3:153:8
	addq	$1440, %rsp                     # imm = 0x5A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp64:
.LBB0_144:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # linux.c3:0:8
	movq	-1152(%rbp), %rax               # 8-byte Reload
	movq	%rax, -384(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -392(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -400(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$1, -408(%rbp)
.Ltmp65:
	.loc	2 66 26 is_stmt 1               # stream.c3:66:26
	leaq	.panic_msg.3(%rip), %rdi
	movl	$43, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	leaq	-416(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp66:
.LBB0_145:
	.loc	2 0 26 is_stmt 0                # stream.c3:0:26
	movq	-1232(%rbp), %rax               # 8-byte Reload
	movq	%rax, -600(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -616(%rbp)
	leaq	-600(%rbp), %rax
	movq	%rax, -624(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, -640(%rbp)
	movq	$1, -632(%rbp)
.Ltmp67:
	.loc	2 66 26                         # stream.c3:66:26
	leaq	.panic_msg.3(%rip), %rdi
	movl	$43, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	leaq	-640(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp68:
.LBB0_146:
	.loc	2 0 26                          # stream.c3:0:26
	movq	-1288(%rbp), %rax               # 8-byte Reload
	movq	%rax, -752(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -760(%rbp)
	leaq	-752(%rbp), %rax
	movq	%rax, -768(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -784(%rbp)
	movq	$1, -776(%rbp)
.Ltmp69:
	.loc	2 66 26                         # stream.c3:66:26
	leaq	.panic_msg.3(%rip), %rdi
	movl	$43, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	leaq	-784(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp70:
.LBB0_147:
	.loc	2 0 26                          # stream.c3:0:26
	movq	-1368(%rbp), %rax               # 8-byte Reload
	movq	%rax, -944(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -952(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, -960(%rbp)
	leaq	-960(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	$1, -968(%rbp)
.Ltmp71:
	.loc	2 66 26                         # stream.c3:66:26
	leaq	.panic_msg.3(%rip), %rdi
	movl	$43, %esi
	leaq	.file.2(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$21, %r9d
	leaq	-976(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp72:
.LBB0_148:
	.loc	1 0 0                           # linux.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp73:
.Lfunc_end0:
	.size	std.os.linux.elf_module_image_base.18228, .Lfunc_end0-std.os.linux.elf_module_image_base.18228
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.os.linux.backtrace_add_from_exec.18240
	.type	std.os.linux.backtrace_add_from_exec.18240,@function
std.os.linux.backtrace_add_from_exec.18240: # @std.os.linux.backtrace_add_from_exec.18240
.Lfunc_begin1:
	.loc	1 189 0 is_stmt 1               # linux.c3:189:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1728, %rsp                     # imm = 0x6C0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1184(%rbp)
	movq	%rsi, -1176(%rbp)
	movq	%rdx, -1192(%rbp)
	movq	%rcx, -1200(%rbp)
.Ltmp74:
	.loc	1 192 62 prologue_end           # linux.c3:192:62
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -1280(%rbp)
	movq	$8, -1272(%rbp)
	.loc	1 192 74 is_stmt 0              # linux.c3:192:74
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -1264(%rbp)
	movq	$2, -1256(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1056(%rbp)
	vmovdqa	%xmm0, -1072(%rbp)
	vmovdqa	%xmm0, -1088(%rbp)
	vmovdqa	%xmm0, -1104(%rbp)
	.loc	1 192 128                       # linux.c3:192:128
	callq	getpid@PLT
	movl	%eax, -1300(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -1288(%rbp)
	leaq	-1300(%rbp), %rax
	movq	%rax, -1296(%rbp)
	.loc	1 192 80                        # linux.c3:192:80
	leaq	.L.str.6(%rip), %rdx
	leaq	-1104(%rbp), %rdi
	movl	$64, %esi
	movl	$12, %ecx
	leaq	-1296(%rbp), %r8
	movl	$1, %r9d
	callq	std.core.string.bformat@PLT
	movq	%rdx, -1312(%rbp)
	movq	%rax, -1320(%rbp)
	vmovdqu	-1320(%rbp), %xmm0
	vmovdqu	%xmm0, -1248(%rbp)
	movq	$0, -1344(%rbp)
	movq	$0, -1352(%rbp)
	.loc	1 192 21                        # linux.c3:192:21
	leaq	-1336(%rbp), %rdi
	leaq	-1040(%rbp), %rsi
	movl	$1024, %edx                     # imm = 0x400
	leaq	-1280(%rbp), %rcx
	movl	$3, %r8d
	xorl	%r9d, %r9d
	leaq	-1352(%rbp), %rax
	movq	(%rax), %r10
	movq	%r10, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	callq	std.os.process.execute_stdout_to_buffer@PLT
	movq	%rax, -1648(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_2
# %bb.1:
	.loc	1 0 21                          # linux.c3:0:21
	movq	-1648(%rbp), %rax               # 8-byte Reload
	.loc	1 192 21                        # linux.c3:192:21
	movq	%rax, -1224(%rbp)
	jmp	.LBB1_3
.LBB1_2:
	jmp	.LBB1_5
.LBB1_3:
	movq	-1224(%rbp), %rax
	movq	%rax, -1656(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_16
# %bb.4:
	.loc	1 0 21                          # linux.c3:0:21
	movq	-1656(%rbp), %rax               # 8-byte Reload
	.loc	1 192 21 epilogue_begin         # linux.c3:192:21
	addq	$1728, %rsp                     # imm = 0x6C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_5:
	.cfi_def_cfa %rbp, 16
	vmovdqu	-1336(%rbp), %xmm0
	vmovdqa	%xmm0, -1216(%rbp)
	.loc	1 193 35 is_stmt 1              # linux.c3:193:35
	movq	-1216(%rbp), %rdi
	movq	-1208(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	movq	-1176(%rbp), %rcx
	.loc	1 193 20 is_stmt 0              # linux.c3:193:20
	callq	std.core.String.copy@PLT
	movq	%rdx, -1384(%rbp)
	movq	%rax, -1392(%rbp)
	vmovdqu	-1392(%rbp), %xmm0
	vmovdqa	%xmm0, -1376(%rbp)
	.loc	1 194 62 is_stmt 1              # linux.c3:194:62
	leaq	.L.str.7(%rip), %rax
	movq	%rax, -1552(%rbp)
	movq	$9, -1544(%rbp)
	.loc	1 194 75 is_stmt 0              # linux.c3:194:75
	leaq	.L.str.8(%rip), %rax
	movq	%rax, -1536(%rbp)
	movq	$2, -1528(%rbp)
	.loc	1 194 81                        # linux.c3:194:81
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -1520(%rbp)
	movq	$2, -1512(%rbp)
	.loc	1 194 87                        # linux.c3:194:87
	leaq	.L.str.10(%rip), %rax
	movq	%rax, -1504(%rbp)
	movq	$2, -1496(%rbp)
	.loc	1 194 93                        # linux.c3:194:93
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -1488(%rbp)
	movq	$2, -1480(%rbp)
	.loc	1 194 99                        # linux.c3:194:99
	leaq	.L.str.12(%rip), %rax
	movq	%rax, -1472(%rbp)
	movq	$2, -1464(%rbp)
	.loc	1 194 105                       # linux.c3:194:105
	vmovdqa	-1216(%rbp), %xmm0
	vmovdqu	%xmm0, -1456(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1120(%rbp)
	vmovdqa	%xmm0, -1136(%rbp)
	vmovdqa	%xmm0, -1152(%rbp)
	vmovdqa	%xmm0, -1168(%rbp)
	.loc	1 194 156                       # linux.c3:194:156
	movq	($ct.p$void)@GOTPCREL(%rip), %rax
	movq	%rax, -1560(%rbp)
	leaq	-1200(%rbp), %rax
	movq	%rax, -1568(%rbp)
	.loc	1 194 116                       # linux.c3:194:116
	leaq	.L.str.13(%rip), %rdx
	leaq	-1168(%rbp), %rdi
	movl	$64, %esi
	movl	$4, %ecx
	leaq	-1568(%rbp), %r8
	movl	$1, %r9d
	callq	std.core.string.bformat@PLT
	movq	%rdx, -1576(%rbp)
	movq	%rax, -1584(%rbp)
	vmovdqu	-1584(%rbp), %xmm0
	vmovdqu	%xmm0, -1440(%rbp)
	movq	$0, -1608(%rbp)
	movq	$0, -1616(%rbp)
	.loc	1 194 21                        # linux.c3:194:21
	leaq	-1600(%rbp), %rdi
	leaq	-1040(%rbp), %rsi
	movl	$1024, %edx                     # imm = 0x400
	leaq	-1552(%rbp), %rcx
	movl	$8, %r8d
	xorl	%r9d, %r9d
	leaq	-1616(%rbp), %rax
	movq	(%rax), %r10
	movq	%r10, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	callq	std.os.process.execute_stdout_to_buffer@PLT
	movq	%rax, -1664(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_7
# %bb.6:
	.loc	1 0 21                          # linux.c3:0:21
	movq	-1664(%rbp), %rax               # 8-byte Reload
	.loc	1 194 21                        # linux.c3:194:21
	movq	%rax, -1416(%rbp)
	jmp	.LBB1_8
.LBB1_7:
	jmp	.LBB1_10
.LBB1_8:
	movq	-1416(%rbp), %rax
	movq	%rax, -1672(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_16
# %bb.9:
	.loc	1 0 21                          # linux.c3:0:21
	movq	-1672(%rbp), %rax               # 8-byte Reload
	.loc	1 194 21 epilogue_begin         # linux.c3:194:21
	addq	$1728, %rsp                     # imm = 0x6C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_10:
	.cfi_def_cfa %rbp, 16
	vmovdqu	-1600(%rbp), %xmm0
	vmovdqa	%xmm0, -1408(%rbp)
	.loc	1 195 77 is_stmt 1              # linux.c3:195:77
	movq	-1184(%rbp), %rdi
	movq	-1176(%rbp), %rsi
	movq	-1192(%rbp), %rdx
	movq	-1200(%rbp), %rcx
	movq	-1408(%rbp), %r8
	movq	-1400(%rbp), %r9
	leaq	.L.str.14(%rip), %rax
	movq	%rax, -1640(%rbp)
	movq	$3, -1632(%rbp)
	.loc	1 195 9 is_stmt 0               # linux.c3:195:9
	leaq	-1376(%rbp), %r10
	leaq	-1640(%rbp), %rax
	movq	(%r10), %r11
	movq	%r11, (%rsp)
	movq	8(%r10), %r10
	movq	%r10, 8(%rsp)
	movq	(%rax), %r10
	movq	%r10, 16(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	std.os.linux.backtrace_add_addr2line.18269
	movq	%rax, -1680(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_12
# %bb.11:
	.loc	1 0 9                           # linux.c3:0:9
	movq	-1680(%rbp), %rax               # 8-byte Reload
	.loc	1 195 9                         # linux.c3:195:9
	movq	%rax, -1624(%rbp)
	jmp	.LBB1_14
.LBB1_12:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_16
# %bb.13:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 195 9 epilogue_begin          # linux.c3:195:9
	addq	$1728, %rsp                     # imm = 0x6C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_14:
	.cfi_def_cfa %rbp, 16
	movq	-1624(%rbp), %rax
	movq	%rax, -1688(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_16
# %bb.15:
	.loc	1 0 9                           # linux.c3:0:9
	movq	-1688(%rbp), %rax               # 8-byte Reload
	.loc	1 195 9 epilogue_begin          # linux.c3:195:9
	addq	$1728, %rsp                     # imm = 0x6C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_16:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 0                           # linux.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp75:
.Lfunc_end1:
	.size	std.os.linux.backtrace_add_from_exec.18240, .Lfunc_end1-std.os.linux.backtrace_add_from_exec.18240
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.os.linux.backtrace_add_from_dlinfo.18248
	.type	std.os.linux.backtrace_add_from_dlinfo.18248,@function
std.os.linux.backtrace_add_from_dlinfo.18248: # @std.os.linux.backtrace_add_from_dlinfo.18248
.Lfunc_begin2:
	.loc	1 198 0 is_stmt 1               # linux.c3:198:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1616, %rsp                     # imm = 0x650
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1120(%rbp)
	movq	%rsi, -1112(%rbp)
	movq	%rdx, -1128(%rbp)
	movq	%rcx, -1136(%rbp)
	movq	%r8, -1144(%rbp)
.Ltmp76:
	.loc	1 202 22 prologue_end           # linux.c3:202:22
	movq	-1136(%rbp), %rax
	movq	%rax, -1528(%rbp)               # 8-byte Spill
	.loc	1 202 35 is_stmt 0              # linux.c3:202:35
	movq	-1144(%rbp), %rax
	.loc	1 202 80                        # linux.c3:202:80
	movq	(%rax), %rdi
	.loc	1 202 35                        # linux.c3:202:35
	movq	8(%rax), %rax
	negq	%rax
	movq	%rax, -1520(%rbp)               # 8-byte Spill
	.loc	1 202 80                        # linux.c3:202:80
	callq	std.core.string.ZString.str_view@PLT
	movq	%rdx, -1168(%rbp)
	movq	%rax, -1176(%rbp)
	movq	-1176(%rbp), %rsi
	movq	-1168(%rbp), %rdx
	.loc	1 202 58                        # linux.c3:202:58
	leaq	-1184(%rbp), %rdi
	callq	std.os.linux.elf_module_image_base.18228
	movq	%rax, -1512(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_2
# %bb.1:
	.loc	1 0 58                          # linux.c3:0:58
	movq	-1512(%rbp), %rax               # 8-byte Reload
	.loc	1 202 58                        # linux.c3:202:58
	movq	%rax, -1160(%rbp)
	jmp	.LBB2_3
.LBB2_2:
	jmp	.LBB2_5
.LBB2_3:
	movq	-1160(%rbp), %rax
	movq	%rax, -1536(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_19
# %bb.4:
	.loc	1 0 58                          # linux.c3:0:58
	movq	-1536(%rbp), %rax               # 8-byte Reload
	.loc	1 202 58 epilogue_begin         # linux.c3:202:58
	addq	$1616, %rsp                     # imm = 0x650
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 58                          # linux.c3:0:58
	movq	-1528(%rbp), %rax               # 8-byte Reload
	movq	-1520(%rbp), %rcx               # 8-byte Reload
	.loc	1 202 22                        # linux.c3:202:22
	addq	-1184(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -1152(%rbp)
	.loc	1 203 22 is_stmt 1              # linux.c3:203:22
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1192(%rbp)
	.loc	1 204 22                        # linux.c3:204:22
	movq	-1144(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_7
# %bb.6:
	.loc	1 204 39 is_stmt 0              # linux.c3:204:39
	movq	-1144(%rbp), %rax
	movq	16(%rax), %rdi
	callq	std.core.string.ZString.str_view@PLT
	movq	%rdx, -1216(%rbp)
	movq	%rax, -1224(%rbp)
	movq	-1224(%rbp), %rcx
	movq	-1216(%rbp), %rax
	movq	%rcx, -1552(%rbp)               # 8-byte Spill
	movq	%rax, -1544(%rbp)               # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:
	.loc	1 0 39                          # linux.c3:0:39
	movl	$3, %eax
	leaq	.L.str.15(%rip), %rcx
	movq	%rcx, -1552(%rbp)               # 8-byte Spill
	movq	%rax, -1544(%rbp)               # 8-byte Spill
	.loc	1 204 67                        # linux.c3:204:67
	jmp	.LBB2_8
.LBB2_8:
	.loc	1 0 67                          # linux.c3:0:67
	movq	-1552(%rbp), %rcx               # 8-byte Reload
	movq	-1544(%rbp), %rax               # 8-byte Reload
	.loc	1 204 67                        # linux.c3:204:67
	movq	%rcx, -1208(%rbp)
	movq	%rax, -1200(%rbp)
	.loc	1 205 63 is_stmt 1              # linux.c3:205:63
	leaq	.L.str.16(%rip), %rax
	movq	%rax, -1392(%rbp)
	movq	$9, -1384(%rbp)
	.loc	1 205 76 is_stmt 0              # linux.c3:205:76
	leaq	.L.str.17(%rip), %rax
	movq	%rax, -1376(%rbp)
	movq	$2, -1368(%rbp)
	.loc	1 205 82                        # linux.c3:205:82
	leaq	.L.str.18(%rip), %rax
	movq	%rax, -1360(%rbp)
	movq	$2, -1352(%rbp)
	.loc	1 205 88                        # linux.c3:205:88
	leaq	.L.str.19(%rip), %rax
	movq	%rax, -1344(%rbp)
	movq	$2, -1336(%rbp)
	.loc	1 205 94                        # linux.c3:205:94
	leaq	.L.str.20(%rip), %rax
	movq	%rax, -1328(%rbp)
	movq	$2, -1320(%rbp)
	.loc	1 205 100                       # linux.c3:205:100
	leaq	.L.str.21(%rip), %rax
	movq	%rax, -1312(%rbp)
	movq	$2, -1304(%rbp)
	.loc	1 205 106                       # linux.c3:205:106
	movq	-1192(%rbp), %rdi
	callq	std.core.string.ZString.str_view@PLT
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1408(%rbp)
	vmovdqu	-1408(%rbp), %xmm0
	vmovdqu	%xmm0, -1296(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1056(%rbp)
	vmovdqa	%xmm0, -1072(%rbp)
	vmovdqa	%xmm0, -1088(%rbp)
	vmovdqa	%xmm0, -1104(%rbp)
	.loc	1 205 167                       # linux.c3:205:167
	movq	-1152(%rbp), %rax
	.loc	1 205 178                       # linux.c3:205:178
	decq	%rax
	movq	%rax, -1432(%rbp)
	.loc	1 205 167                       # linux.c3:205:167
	movq	($ct.p$void)@GOTPCREL(%rip), %rax
	movq	%rax, -1416(%rbp)
	leaq	-1432(%rbp), %rax
	movq	%rax, -1424(%rbp)
	.loc	1 205 127                       # linux.c3:205:127
	leaq	.L.str.22(%rip), %rdx
	leaq	-1104(%rbp), %rdi
	movl	$64, %esi
	movl	$4, %ecx
	leaq	-1424(%rbp), %r8
	movl	$1, %r9d
	callq	std.core.string.bformat@PLT
	movq	%rdx, -1440(%rbp)
	movq	%rax, -1448(%rbp)
	vmovdqu	-1448(%rbp), %xmm0
	vmovdqu	%xmm0, -1280(%rbp)
	movq	$0, -1472(%rbp)
	movq	$0, -1480(%rbp)
	.loc	1 205 22                        # linux.c3:205:22
	leaq	-1464(%rbp), %rdi
	leaq	-1040(%rbp), %rsi
	movl	$1024, %edx                     # imm = 0x400
	leaq	-1392(%rbp), %rcx
	movl	$8, %r8d
	xorl	%r9d, %r9d
	leaq	-1480(%rbp), %rax
	movq	(%rax), %r10
	movq	%r10, (%rsp)
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	callq	std.os.process.execute_stdout_to_buffer@PLT
	movq	%rax, -1560(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_10
# %bb.9:
	.loc	1 0 22                          # linux.c3:0:22
	movq	-1560(%rbp), %rax               # 8-byte Reload
	.loc	1 205 22                        # linux.c3:205:22
	movq	%rax, -1256(%rbp)
	jmp	.LBB2_11
.LBB2_10:
	jmp	.LBB2_13
.LBB2_11:
	movq	-1256(%rbp), %rax
	movq	%rax, -1568(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_19
# %bb.12:
	.loc	1 0 22                          # linux.c3:0:22
	movq	-1568(%rbp), %rax               # 8-byte Reload
	.loc	1 205 22 epilogue_begin         # linux.c3:205:22
	addq	$1616, %rsp                     # imm = 0x650
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_13:
	.cfi_def_cfa %rbp, 16
	vmovdqu	-1464(%rbp), %xmm0
	vmovdqa	%xmm0, -1248(%rbp)
	.loc	1 206 67 is_stmt 1              # linux.c3:206:67
	movq	-1144(%rbp), %rax
	movq	(%rax), %rdi
	callq	std.core.string.ZString.str_view@PLT
	movq	%rdx, -1496(%rbp)
	movq	%rax, -1504(%rbp)
	.loc	1 206 94 is_stmt 0              # linux.c3:206:94
	movq	-1120(%rbp), %rdi
	movq	-1112(%rbp), %rsi
	movq	-1128(%rbp), %rdx
	movq	-1136(%rbp), %rcx
	movq	-1248(%rbp), %r8
	movq	-1240(%rbp), %r9
	.loc	1 206 9                         # linux.c3:206:9
	leaq	-1504(%rbp), %r10
	leaq	-1208(%rbp), %rax
	movq	(%r10), %r11
	movq	%r11, (%rsp)
	movq	8(%r10), %r10
	movq	%r10, 8(%rsp)
	movq	(%rax), %r10
	movq	%r10, 16(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	std.os.linux.backtrace_add_addr2line.18269
	movq	%rax, -1576(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_15
# %bb.14:
	.loc	1 0 9                           # linux.c3:0:9
	movq	-1576(%rbp), %rax               # 8-byte Reload
	.loc	1 206 9                         # linux.c3:206:9
	movq	%rax, -1488(%rbp)
	jmp	.LBB2_17
.LBB2_15:
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_19
# %bb.16:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 206 9 epilogue_begin          # linux.c3:206:9
	addq	$1616, %rsp                     # imm = 0x650
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_17:
	.cfi_def_cfa %rbp, 16
	movq	-1488(%rbp), %rax
	movq	%rax, -1584(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB2_19
# %bb.18:
	.loc	1 0 9                           # linux.c3:0:9
	movq	-1584(%rbp), %rax               # 8-byte Reload
	.loc	1 206 9 epilogue_begin          # linux.c3:206:9
	addq	$1616, %rsp                     # imm = 0x650
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_19:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 0                           # linux.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp77:
.Lfunc_end2:
	.size	std.os.linux.backtrace_add_from_dlinfo.18248, .Lfunc_end2-std.os.linux.backtrace_add_from_dlinfo.18248
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.linux.backtrace_line_parse,"axG",@progbits,std.os.linux.backtrace_line_parse,comdat
	.weak	std.os.linux.backtrace_line_parse # -- Begin function std.os.linux.backtrace_line_parse
	.p2align	4, 0x90
	.type	std.os.linux.backtrace_line_parse,@function
std.os.linux.backtrace_line_parse:      # @std.os.linux.backtrace_line_parse
.Lfunc_begin3:
	.loc	1 209 0 is_stmt 1               # linux.c3:209:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2256, %rsp                     # imm = 0x8D0
	movq	%rdi, -1920(%rbp)               # 8-byte Spill
	movb	%r9b, %al
	leaq	16(%rbp), %rdi
	movq	%rdi, -1912(%rbp)               # 8-byte Spill
	movq	%fs:40, %rdi
	movq	%rdi, -8(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -304(%rbp)
	movq	%r8, -296(%rbp)
	movb	%al, -305(%rbp)
.Ltmp78:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	3 572 14 prologue_end           # mem.c3:572:14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -1904(%rbp)              # 16-byte Spill
	vmovdqa	%xmm0, -32(%rbp)
	vmovdqa	%xmm0, -48(%rbp)
	vmovdqa	%xmm0, -64(%rbp)
	vmovdqa	%xmm0, -80(%rbp)
	vmovdqa	%xmm0, -96(%rbp)
	vmovdqa	%xmm0, -112(%rbp)
	vmovdqa	%xmm0, -128(%rbp)
	vmovdqa	%xmm0, -144(%rbp)
	vmovdqa	%xmm0, -160(%rbp)
	vmovdqa	%xmm0, -176(%rbp)
	vmovdqa	%xmm0, -192(%rbp)
	vmovdqa	%xmm0, -208(%rbp)
	vmovdqa	%xmm0, -224(%rbp)
	vmovdqa	%xmm0, -240(%rbp)
	vmovdqa	%xmm0, -256(%rbp)
	vmovdqa	%xmm0, -272(%rbp)
	.loc	3 573 19                        # mem.c3:573:19
	vmovdqa	%xmm0, -352(%rbp)
	vmovdqa	%xmm0, -368(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -336(%rbp)
	.loc	3 574 26                        # mem.c3:574:26
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rax
	movq	%fs:(%rax), %rcx
	movq	%fs:8(%rax), %r8
	leaq	-368(%rbp), %rdi
	movq	%rdi, -1880(%rbp)               # 8-byte Spill
	leaq	-272(%rbp), %rsi
	movl	$256, %edx                      # imm = 0x100
	.loc	3 574 2 is_stmt 0               # mem.c3:574:2
	callq	std.core.mem.allocator.OnStackAllocator.init@PLT
	movq	-1880(%rbp), %rax               # 8-byte Reload
.Ltmp79:
	.loc	3 576 8 is_stmt 1               # mem.c3:576:8
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rcx
	movq	%rcx, -376(%rbp)
	movq	%rax, -384(%rbp)
.Ltmp80:
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "string.c3"
	.loc	4 216 46                        # string.c3:216:46
	movq	-304(%rbp), %rdi
	movq	-296(%rbp), %rsi
.Ltmp81:
	.loc	1 213 20                        # linux.c3:213:20
	leaq	.L.str.23(%rip), %rdx
	movl	$4, %ecx
	callq	std.core.String.trim@PLT
	movq	%rdx, -408(%rbp)
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -1872(%rbp)               # 8-byte Spill
	movq	-408(%rbp), %rax
	movq	%rax, -1864(%rbp)               # 8-byte Spill
	.loc	1 213 40 is_stmt 0              # linux.c3:213:40
	movq	-384(%rbp), %rax
	movq	%rax, -1856(%rbp)               # 8-byte Spill
	movq	-376(%rbp), %rax
	movq	%rax, -1848(%rbp)               # 8-byte Spill
	.loc	1 213 20                        # linux.c3:213:20
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_3
# %bb.1:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1928(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_56
# %bb.2:
	.loc	1 0 20                          # linux.c3:0:20
	movq	-1928(%rbp), %rax               # 8-byte Reload
	.loc	1 213 20                        # linux.c3:213:20
	leaq	.panic_msg.25(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	movl	$213, (%rsp)
	callq	*%rax
.LBB3_3:
	.loc	1 0 20                          # linux.c3:0:20
	movq	-1864(%rbp), %rsi               # 8-byte Reload
	movq	-1872(%rbp), %rdi               # 8-byte Reload
	movq	-1848(%rbp), %rax               # 8-byte Reload
	movq	-1856(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -432(%rbp)
	movq	%rax, -424(%rbp)
	movq	-432(%rbp), %rdx
	movq	-424(%rbp), %rcx
	.loc	1 213 20                        # linux.c3:213:20
	movq	%rsp, %rax
	movl	$0, 8(%rax)
	movq	$0, (%rax)
	leaq	.L.str.24(%rip), %r8
	movl	$4, %r9d
	callq	std.core.String.split@PLT
	movq	%rdx, -440(%rbp)
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -392(%rbp)
	.loc	1 214 7 is_stmt 1               # linux.c3:214:7
	movl	$2, %eax
	cmpq	-392(%rbp), %rax
	je	.LBB3_6
.Ltmp82:
# %bb.4:
	.loc	1 0 7 is_stmt 0                 # linux.c3:0:7
	movq	std.core.builtin.NOT_FOUND@GOTPCREL(%rip), %rax
	movq	%rax, -456(%rbp)
	leaq	-368(%rbp), %rdi
.Ltmp83:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_56
# %bb.5:
	movq	std.core.builtin.NOT_FOUND@GOTPCREL(%rip), %rax
	.loc	3 575 8 epilogue_begin is_stmt 0 # mem.c3:575:8
	addq	$2256, %rsp                     # imm = 0x8D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp84:
.LBB3_6:
	.cfi_def_cfa %rbp, 16
	.loc	1 216 17 is_stmt 1              # linux.c3:216:17
	movl	$0, -460(%rbp)
	.loc	1 217 19                        # linux.c3:217:19
	leaq	.emptystr(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$0, -472(%rbp)
	.loc	1 218 8                         # linux.c3:218:8
	movq	-392(%rbp), %rcx
	movq	%rcx, -1944(%rbp)               # 8-byte Spill
	movq	-400(%rbp), %rax
	movq	%rax, -1936(%rbp)               # 8-byte Spill
	.loc	1 218 14 is_stmt 0              # linux.c3:218:14
	movl	$1, %eax
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB3_39
# %bb.7:
	.loc	1 0 14                          # linux.c3:0:14
	movq	-1936(%rbp), %rax               # 8-byte Reload
	.loc	1 218 14                        # linux.c3:218:14
	addq	$16, %rax
	movq	%rax, -1960(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -1952(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_40
# %bb.8:
	.loc	1 0 14                          # linux.c3:0:14
	movq	-1960(%rbp), %rax               # 8-byte Reload
	.loc	1 218 26                        # linux.c3:218:26
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	.loc	1 218 8                         # linux.c3:218:8
	leaq	.L.str.29(%rip), %rdx
	movl	$1, %ecx
	callq	std.core.String.contains@PLT
	movb	%al, %cl
	xorb	$-1, %cl
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %cl
	movb	%al, -1961(%rbp)                # 1-byte Spill
	jne	.LBB3_9
	jmp	.LBB3_12
.LBB3_9:
	.loc	1 218 34                        # linux.c3:218:34
	movq	-392(%rbp), %rcx
	movq	%rcx, -1984(%rbp)               # 8-byte Spill
	movq	-400(%rbp), %rax
	movq	%rax, -1976(%rbp)               # 8-byte Spill
	.loc	1 218 40                        # linux.c3:218:40
	movl	$1, %eax
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB3_41
# %bb.10:
	.loc	1 0 40                          # linux.c3:0:40
	movq	-1976(%rbp), %rax               # 8-byte Reload
	.loc	1 218 40                        # linux.c3:218:40
	addq	$16, %rax
	movq	%rax, -2000(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -1992(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_42
# %bb.11:
	.loc	1 0 40                          # linux.c3:0:40
	movq	-2000(%rbp), %rax               # 8-byte Reload
	.loc	1 218 52                        # linux.c3:218:52
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	.loc	1 218 34                        # linux.c3:218:34
	leaq	.L.str.30(%rip), %rdx
	movl	$1, %ecx
	callq	std.core.String.contains@PLT
	movb	%al, -1961(%rbp)                # 1-byte Spill
.LBB3_12:
	.loc	1 0 34                          # linux.c3:0:34
	movb	-1961(%rbp), %al                # 1-byte Reload
	.loc	1 218 34                        # linux.c3:218:34
	testb	$1, %al
	jne	.LBB3_13
	jmp	.LBB3_35
.LBB3_13:
.Ltmp85:
	.loc	1 220 16 is_stmt 1              # linux.c3:220:16
	movq	-392(%rbp), %rcx
	movq	%rcx, -2016(%rbp)               # 8-byte Spill
	movq	-400(%rbp), %rax
	movq	%rax, -2008(%rbp)               # 8-byte Spill
	.loc	1 220 22 is_stmt 0              # linux.c3:220:22
	movl	$1, %eax
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB3_43
# %bb.14:
	.loc	1 0 22                          # linux.c3:0:22
	movq	-2008(%rbp), %rax               # 8-byte Reload
	.loc	1 220 22                        # linux.c3:220:22
	addq	$16, %rax
	movq	%rax, -2032(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2024(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_44
# %bb.15:
	.loc	1 0 22                          # linux.c3:0:22
	movq	-2032(%rbp), %rax               # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	.loc	1 220 16                        # linux.c3:220:16
	leaq	-888(%rbp), %rdi
	movl	$58, %ecx
	callq	std.core.String.rindex_of_char@PLT
	movq	%rax, -2040(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_17
# %bb.16:
	.loc	1 0 16                          # linux.c3:0:16
	movq	-2040(%rbp), %rax               # 8-byte Reload
	.loc	1 220 16                        # linux.c3:220:16
	movq	%rax, -752(%rbp)
	jmp	.LBB3_18
.LBB3_17:
	jmp	.LBB3_20
.Ltmp86:
.LBB3_18:
	.loc	1 0 16                          # linux.c3:0:16
	leaq	-368(%rbp), %rdi
.Ltmp87:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	-752(%rbp), %rax
	movq	%rax, -2048(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_56
# %bb.19:
	.loc	3 0 8 is_stmt 0                 # mem.c3:0:8
	movq	-2048(%rbp), %rax               # 8-byte Reload
	.loc	3 575 8 epilogue_begin          # mem.c3:575:8
	addq	$2256, %rsp                     # imm = 0x8D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_20:
	.cfi_def_cfa %rbp, 16
	movq	-888(%rbp), %rax
	movq	%rax, -744(%rbp)
.Ltmp88:
	.loc	1 221 13 is_stmt 1              # linux.c3:221:13
	movq	-392(%rbp), %rcx
	movq	%rcx, -2064(%rbp)               # 8-byte Spill
	movq	-400(%rbp), %rax
	movq	%rax, -2056(%rbp)               # 8-byte Spill
	.loc	1 221 19 is_stmt 0              # linux.c3:221:19
	movl	$1, %eax
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB3_45
# %bb.21:
	.loc	1 0 19                          # linux.c3:0:19
	movq	-2056(%rbp), %rax               # 8-byte Reload
	.loc	1 221 19                        # linux.c3:221:19
	addq	$16, %rax
	movq	%rax, -2080(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2072(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_46
# %bb.22:
	.loc	1 0 19                          # linux.c3:0:19
	movq	-2080(%rbp), %rax               # 8-byte Reload
	.loc	1 221 13                        # linux.c3:221:13
	movq	(%rax), %rcx
	movq	%rcx, -2096(%rbp)               # 8-byte Spill
	movq	8(%rax), %rcx
	movq	%rcx, -2088(%rbp)               # 8-byte Spill
	.loc	1 221 22                        # linux.c3:221:22
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	testb	$1, %al
	jne	.LBB3_47
# %bb.23:
	.loc	1 221 23                        # linux.c3:221:23
	movq	-744(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -2112(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -2104(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_48
# %bb.24:
	.loc	1 0 23                          # linux.c3:0:23
	movq	-2112(%rbp), %rcx               # 8-byte Reload
	movq	-2088(%rbp), %rax               # 8-byte Reload
	.loc	1 221 13                        # linux.c3:221:13
	cmpq	%rcx, %rax
	setb	%al
	subq	$1, %rcx
	movq	%rcx, -2120(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_49
# %bb.25:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2096(%rbp), %rax               # 8-byte Reload
	movq	-2112(%rbp), %rcx               # 8-byte Reload
	.loc	1 221 13                        # linux.c3:221:13
	movq	%rcx, -472(%rbp)
	movq	%rax, -480(%rbp)
	.loc	1 222 13 is_stmt 1              # linux.c3:222:13
	movq	-392(%rbp), %rcx
	movq	%rcx, -2136(%rbp)               # 8-byte Spill
	movq	-400(%rbp), %rax
	movq	%rax, -2128(%rbp)               # 8-byte Spill
	.loc	1 222 19 is_stmt 0              # linux.c3:222:19
	movl	$1, %eax
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB3_50
# %bb.26:
	.loc	1 0 19                          # linux.c3:0:19
	movq	-2128(%rbp), %rax               # 8-byte Reload
	.loc	1 222 19                        # linux.c3:222:19
	addq	$16, %rax
	movq	%rax, -2152(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2144(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_51
# %bb.27:
	.loc	1 0 19                          # linux.c3:0:19
	movq	-2152(%rbp), %rax               # 8-byte Reload
	.loc	1 222 13                        # linux.c3:222:13
	movq	(%rax), %rcx
	movq	%rcx, -2176(%rbp)               # 8-byte Spill
	movq	8(%rax), %rcx
	movq	%rcx, -2168(%rbp)               # 8-byte Spill
	.loc	1 222 22                        # linux.c3:222:22
	movq	-744(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -2160(%rbp)               # 8-byte Spill
	cmpq	%rcx, %rax
	setg	%al
	testb	$1, %al
	jne	.LBB3_52
# %bb.28:
	.loc	1 0 22                          # linux.c3:0:22
	movq	-2160(%rbp), %rax               # 8-byte Reload
	.loc	1 222 13                        # linux.c3:222:13
	cmpq	$0, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB3_53
# %bb.29:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2160(%rbp), %rax               # 8-byte Reload
	movq	-2176(%rbp), %rsi               # 8-byte Reload
	movq	-2168(%rbp), %rdx               # 8-byte Reload
	.loc	1 222 22                        # linux.c3:222:22
	subq	%rax, %rdx
	addq	%rax, %rsi
	.loc	1 222 13                        # linux.c3:222:13
	leaq	-1460(%rbp), %rdi
	movl	$10, %ecx
	callq	std.core.String.to_uint@PLT
	movq	%rax, -2184(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_31
# %bb.30:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2184(%rbp), %rax               # 8-byte Reload
	.loc	1 222 13                        # linux.c3:222:13
	movq	%rax, -1208(%rbp)
	jmp	.LBB3_32
.LBB3_31:
	jmp	.LBB3_34
.Ltmp89:
.LBB3_32:
	.loc	1 0 13                          # linux.c3:0:13
	leaq	-368(%rbp), %rdi
.Ltmp90:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	-1208(%rbp), %rax
	movq	%rax, -2192(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_56
# %bb.33:
	.loc	3 0 8 is_stmt 0                 # mem.c3:0:8
	movq	-2192(%rbp), %rax               # 8-byte Reload
	.loc	3 575 8 epilogue_begin          # mem.c3:575:8
	addq	$2256, %rsp                     # imm = 0x8D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_34:
	.cfi_def_cfa %rbp, 16
	movl	-1460(%rbp), %eax
	movl	%eax, -460(%rbp)
.Ltmp91:
.LBB3_35:
	.loc	3 0 8                           # mem.c3:0:8
	leaq	-1560(%rbp), %rdi
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset@PLT
	leaq	-1560(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -2216(%rbp)               # 8-byte Spill
.Ltmp92:
	.loc	1 225 19 is_stmt 1              # linux.c3:225:19
	movq	-392(%rbp), %rcx
	movq	%rcx, -2208(%rbp)               # 8-byte Spill
	movq	-400(%rbp), %rax
	movq	%rax, -2200(%rbp)               # 8-byte Spill
	.loc	1 225 25 is_stmt 0              # linux.c3:225:25
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB3_54
# %bb.36:
	.loc	1 0 25                          # linux.c3:0:25
	movq	-2200(%rbp), %rax               # 8-byte Reload
	.loc	1 225 25                        # linux.c3:225:25
	andq	$7, %rax
	movq	%rax, -2224(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_55
# %bb.37:
	.loc	1 0 25                          # linux.c3:0:25
	movq	-2200(%rbp), %rax               # 8-byte Reload
	.loc	1 225 33                        # linux.c3:225:33
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rcx
	.loc	1 225 19                        # linux.c3:225:19
	callq	std.core.String.copy@PLT
	movq	-2216(%rbp), %rcx               # 8-byte Reload
	movq	%rax, %rsi
	movq	-1912(%rbp), %rax               # 8-byte Reload
	movq	%rsi, -2232(%rbp)               # 8-byte Spill
	movq	%rdx, %rsi
	movq	-2232(%rbp), %rdx               # 8-byte Reload
	movq	%rsi, -1704(%rbp)
	movq	%rdx, -1712(%rbp)
	vmovdqu	-1712(%rbp), %xmm0
	vmovdqu	%xmm0, (%rcx)
	.loc	1 226 33 is_stmt 1              # linux.c3:226:33
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rcx
	.loc	1 226 19 is_stmt 0              # linux.c3:226:19
	callq	std.core.String.copy@PLT
	movq	%rdx, -1720(%rbp)
	movq	%rax, -1728(%rbp)
	vmovdqu	-1728(%rbp), %xmm0
	vmovdqu	%xmm0, -1536(%rbp)
	.loc	1 227 31 is_stmt 1              # linux.c3:227:31
	movq	-480(%rbp), %rdi
	movq	-472(%rbp), %rsi
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rcx
	.loc	1 227 19 is_stmt 0              # linux.c3:227:19
	callq	std.core.String.copy@PLT
	movq	%rdx, -1736(%rbp)
	movq	%rax, -1744(%rbp)
	vmovdqu	-1744(%rbp), %xmm0
	vmovdqu	%xmm0, -1520(%rbp)
	.loc	1 228 19 is_stmt 1              # linux.c3:228:19
	movl	-460(%rbp), %eax
	movl	%eax, -1504(%rbp)
	.loc	1 229 19                        # linux.c3:229:19
	vmovdqu	-288(%rbp), %xmm0
	vmovdqu	%xmm0, -1496(%rbp)
	.loc	1 230 19                        # linux.c3:230:19
	movb	-305(%rbp), %al
	movb	%al, -1480(%rbp)
	vmovdqu	-1560(%rbp), %xmm0
	vmovdqu	-1544(%rbp), %xmm1
	vmovdqu	-1528(%rbp), %xmm2
	vmovdqu	-1512(%rbp), %xmm3
	vmovdqa	%xmm3, -1792(%rbp)
	vmovdqa	%xmm2, -1808(%rbp)
	vmovdqa	%xmm1, -1824(%rbp)
	vmovdqa	%xmm0, -1840(%rbp)
	movq	-1480(%rbp), %rax
	movq	%rax, -1760(%rbp)
	movq	-1488(%rbp), %rax
	movq	%rax, -1768(%rbp)
	movq	-1496(%rbp), %rax
	movq	%rax, -1776(%rbp)
	leaq	-368(%rbp), %rdi
.Ltmp93:
	.loc	3 575 8                         # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	-1920(%rbp), %rax               # 8-byte Reload
	vmovdqa	-1840(%rbp), %xmm0
	vmovdqa	-1824(%rbp), %xmm1
	vmovdqa	-1808(%rbp), %xmm2
	vmovdqa	-1792(%rbp), %xmm3
	vmovdqu	%xmm3, 48(%rax)
	vmovdqu	%xmm2, 32(%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm0, (%rax)
	movq	-1760(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movq	-1768(%rbp), %rcx
	movq	%rcx, 72(%rax)
	movq	-1776(%rbp), %rcx
	movq	%rcx, 64(%rax)
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_56
# %bb.38:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 575 8 epilogue_begin is_stmt 0 # mem.c3:575:8
	addq	$2256, %rsp                     # imm = 0x8D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp94:
.LBB3_39:
	.cfi_def_cfa %rbp, 16
	.loc	3 0 8                           # mem.c3:0:8
	movq	-1944(%rbp), %rax               # 8-byte Reload
	movq	%rax, -488(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$1, -496(%rbp)
	movq	%rax, -520(%rbp)
	leaq	-488(%rbp), %rcx
	movq	%rcx, -528(%rbp)
	movq	%rax, -504(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, -512(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$2, -536(%rbp)
.Ltmp95:
	.loc	1 218 14 is_stmt 1              # linux.c3:218:14
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-544(%rbp), %rax
	movl	$218, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_40:
	.loc	1 0 14 is_stmt 0                # linux.c3:0:14
	movq	-1952(%rbp), %rcx               # 8-byte Reload
	movq	$8, -552(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -560(%rbp)
	movq	%rax, -584(%rbp)
	leaq	-552(%rbp), %rcx
	movq	%rcx, -592(%rbp)
	movq	%rax, -568(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, -576(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	$2, -600(%rbp)
	.loc	1 218 8                         # linux.c3:218:8
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-608(%rbp), %rax
	movl	$218, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_41:
	.loc	1 0 8                           # linux.c3:0:8
	movq	-1984(%rbp), %rax               # 8-byte Reload
	movq	%rax, -616(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$1, -624(%rbp)
	movq	%rax, -648(%rbp)
	leaq	-616(%rbp), %rcx
	movq	%rcx, -656(%rbp)
	movq	%rax, -632(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, -640(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, -672(%rbp)
	movq	$2, -664(%rbp)
	.loc	1 218 40                        # linux.c3:218:40
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-672(%rbp), %rax
	movl	$218, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_42:
	.loc	1 0 40                          # linux.c3:0:40
	movq	-1992(%rbp), %rcx               # 8-byte Reload
	movq	$8, -680(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -688(%rbp)
	movq	%rax, -712(%rbp)
	leaq	-680(%rbp), %rcx
	movq	%rcx, -720(%rbp)
	movq	%rax, -696(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, -704(%rbp)
	leaq	-720(%rbp), %rax
	movq	%rax, -736(%rbp)
	movq	$2, -728(%rbp)
	.loc	1 218 34                        # linux.c3:218:34
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-736(%rbp), %rax
	movl	$218, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_43:
	.loc	1 0 34                          # linux.c3:0:34
	movq	-2016(%rbp), %rax               # 8-byte Reload
	movq	%rax, -760(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$1, -768(%rbp)
	movq	%rax, -792(%rbp)
	leaq	-760(%rbp), %rcx
	movq	%rcx, -800(%rbp)
	movq	%rax, -776(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -784(%rbp)
	leaq	-800(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	$2, -808(%rbp)
.Ltmp96:
	.loc	1 220 22 is_stmt 1              # linux.c3:220:22
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-816(%rbp), %rax
	movl	$220, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_44:
	.loc	1 0 22 is_stmt 0                # linux.c3:0:22
	movq	-2024(%rbp), %rcx               # 8-byte Reload
	movq	$8, -824(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -832(%rbp)
	movq	%rax, -856(%rbp)
	leaq	-824(%rbp), %rcx
	movq	%rcx, -864(%rbp)
	movq	%rax, -840(%rbp)
	leaq	-832(%rbp), %rax
	movq	%rax, -848(%rbp)
	leaq	-864(%rbp), %rax
	movq	%rax, -880(%rbp)
	movq	$2, -872(%rbp)
	.loc	1 220 16                        # linux.c3:220:16
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-880(%rbp), %rax
	movl	$220, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_45:
	.loc	1 0 16                          # linux.c3:0:16
	movq	-2064(%rbp), %rax               # 8-byte Reload
	movq	%rax, -896(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$1, -904(%rbp)
	movq	%rax, -936(%rbp)
	leaq	-896(%rbp), %rcx
	movq	%rcx, -944(%rbp)
	movq	%rax, -920(%rbp)
	leaq	-904(%rbp), %rax
	movq	%rax, -928(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, -960(%rbp)
	movq	$2, -952(%rbp)
	.loc	1 221 19 is_stmt 1              # linux.c3:221:19
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-960(%rbp), %rax
	movl	$221, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_46:
	.loc	1 0 19 is_stmt 0                # linux.c3:0:19
	movq	-2072(%rbp), %rcx               # 8-byte Reload
	movq	$8, -968(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -976(%rbp)
	movq	%rax, -1000(%rbp)
	leaq	-968(%rbp), %rcx
	movq	%rcx, -1008(%rbp)
	movq	%rax, -984(%rbp)
	leaq	-976(%rbp), %rax
	movq	%rax, -992(%rbp)
	leaq	-1008(%rbp), %rax
	movq	%rax, -1024(%rbp)
	movq	$2, -1016(%rbp)
	.loc	1 221 13                        # linux.c3:221:13
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1024(%rbp), %rax
	movl	$221, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_47:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2088(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1032(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	$0, -1040(%rbp)
	movq	%rax, -1064(%rbp)
	leaq	-1032(%rbp), %rcx
	movq	%rcx, -1072(%rbp)
	movq	%rax, -1048(%rbp)
	leaq	-1040(%rbp), %rax
	movq	%rax, -1056(%rbp)
	leaq	-1072(%rbp), %rax
	movq	%rax, -1088(%rbp)
	movq	$2, -1080(%rbp)
	.loc	1 221 13                        # linux.c3:221:13
	leaq	.panic_msg.31(%rip), %rdi
	movl	$61, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1088(%rbp), %rax
	movl	$221, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_48:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2104(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1096(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -1112(%rbp)
	leaq	-1096(%rbp), %rax
	movq	%rax, -1120(%rbp)
	leaq	-1120(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	$1, -1128(%rbp)
	.loc	1 221 13                        # linux.c3:221:13
	leaq	.panic_msg.3(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1136(%rbp), %rax
	movl	$221, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_49:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2088(%rbp), %rcx               # 8-byte Reload
	movq	-2120(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1144(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1152(%rbp)
	movq	%rax, -1176(%rbp)
	leaq	-1144(%rbp), %rcx
	movq	%rcx, -1184(%rbp)
	movq	%rax, -1160(%rbp)
	leaq	-1152(%rbp), %rax
	movq	%rax, -1168(%rbp)
	leaq	-1184(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movq	$2, -1192(%rbp)
	.loc	1 221 13                        # linux.c3:221:13
	leaq	.panic_msg.32(%rip), %rdi
	movl	$60, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1200(%rbp), %rax
	movl	$221, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_50:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2136(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1216(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$1, -1224(%rbp)
	movq	%rax, -1256(%rbp)
	leaq	-1216(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	%rax, -1240(%rbp)
	leaq	-1224(%rbp), %rax
	movq	%rax, -1248(%rbp)
	leaq	-1264(%rbp), %rax
	movq	%rax, -1280(%rbp)
	movq	$2, -1272(%rbp)
	.loc	1 222 19 is_stmt 1              # linux.c3:222:19
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1280(%rbp), %rax
	movl	$222, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_51:
	.loc	1 0 19 is_stmt 0                # linux.c3:0:19
	movq	-2144(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1288(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1296(%rbp)
	movq	%rax, -1320(%rbp)
	leaq	-1288(%rbp), %rcx
	movq	%rcx, -1328(%rbp)
	movq	%rax, -1304(%rbp)
	leaq	-1296(%rbp), %rax
	movq	%rax, -1312(%rbp)
	leaq	-1328(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	$2, -1336(%rbp)
	.loc	1 222 13                        # linux.c3:222:13
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1344(%rbp), %rax
	movl	$222, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_52:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2160(%rbp), %rcx               # 8-byte Reload
	movq	-2168(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1352(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rcx, -1360(%rbp)
	movq	%rax, -1384(%rbp)
	leaq	-1352(%rbp), %rcx
	movq	%rcx, -1392(%rbp)
	movq	%rax, -1368(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, -1376(%rbp)
	leaq	-1392(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	$2, -1400(%rbp)
	.loc	1 222 13                        # linux.c3:222:13
	leaq	.panic_msg.31(%rip), %rdi
	movl	$61, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1408(%rbp), %rax
	movl	$222, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_53:
	.loc	1 0 13                          # linux.c3:0:13
	movq	-2160(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1416(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -1432(%rbp)
	leaq	-1416(%rbp), %rax
	movq	%rax, -1440(%rbp)
	leaq	-1440(%rbp), %rax
	movq	%rax, -1456(%rbp)
	movq	$1, -1448(%rbp)
	.loc	1 222 22                        # linux.c3:222:22
	leaq	.panic_msg.33(%rip), %rdi
	movl	$22, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1456(%rbp), %rax
	movl	$222, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp97:
.LBB3_54:
	.loc	1 0 22                          # linux.c3:0:22
	movq	-2208(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1568(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	$0, -1576(%rbp)
	movq	%rax, -1608(%rbp)
	leaq	-1568(%rbp), %rcx
	movq	%rcx, -1616(%rbp)
	movq	%rax, -1592(%rbp)
	leaq	-1576(%rbp), %rax
	movq	%rax, -1600(%rbp)
	leaq	-1616(%rbp), %rax
	movq	%rax, -1632(%rbp)
	movq	$2, -1624(%rbp)
	.loc	1 225 25 is_stmt 1              # linux.c3:225:25
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1632(%rbp), %rax
	movl	$225, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_55:
	.loc	1 0 25 is_stmt 0                # linux.c3:0:25
	movq	-2224(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1640(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1648(%rbp)
	movq	%rax, -1672(%rbp)
	leaq	-1640(%rbp), %rcx
	movq	%rcx, -1680(%rbp)
	movq	%rax, -1656(%rbp)
	leaq	-1648(%rbp), %rax
	movq	%rax, -1664(%rbp)
	leaq	-1680(%rbp), %rax
	movq	%rax, -1696(%rbp)
	movq	$2, -1688(%rbp)
	.loc	1 225 19                        # linux.c3:225:19
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.26(%rip), %r8
	movl	$20, %r9d
	leaq	-1696(%rbp), %rax
	movl	$225, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp98:
.LBB3_56:
	.loc	1 0 0                           # linux.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp99:
.Lfunc_end3:
	.size	std.os.linux.backtrace_line_parse, .Lfunc_end3-std.os.linux.backtrace_line_parse
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.os.linux.backtrace_add_addr2line.18269
	.type	std.os.linux.backtrace_add_addr2line.18269,@function
std.os.linux.backtrace_add_addr2line.18269: # @std.os.linux.backtrace_add_addr2line.18269
.Lfunc_begin4:
	.loc	1 235 0 is_stmt 1               # linux.c3:235:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1952, %rsp                     # imm = 0x7A0
	leaq	32(%rbp), %rax
	movq	%rax, -1784(%rbp)               # 8-byte Spill
	leaq	16(%rbp), %rax
	movq	%rax, -1776(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1056(%rbp)
	movq	%rsi, -1048(%rbp)
	movq	%rdx, -1064(%rbp)
	movq	%rcx, -1072(%rbp)
	movq	%r8, -1088(%rbp)
	movq	%r9, -1080(%rbp)
	leaq	-1040(%rbp), %rdi
	movq	%rdi, -1768(%rbp)               # 8-byte Spill
	xorl	%esi, %esi
	movl	$1024, %edx                     # imm = 0x400
	movq	%rdx, -1760(%rbp)               # 8-byte Spill
.Ltmp100:
	.loc	3 572 14 prologue_end           # mem.c3:572:14
	callq	memset@PLT
	movq	-1768(%rbp), %rsi               # 8-byte Reload
	movq	-1760(%rbp), %rdx               # 8-byte Reload
	.loc	3 573 19                        # mem.c3:573:19
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1120(%rbp)
	vmovdqa	%xmm0, -1136(%rbp)
	movq	$0, -1096(%rbp)
	movq	$0, -1104(%rbp)
	.loc	3 574 26                        # mem.c3:574:26
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rax
	movq	%fs:(%rax), %rcx
	movq	%fs:8(%rax), %r8
	leaq	-1136(%rbp), %rdi
	movq	%rdi, -1752(%rbp)               # 8-byte Spill
	.loc	3 574 2 is_stmt 0               # mem.c3:574:2
	callq	std.core.mem.allocator.OnStackAllocator.init@PLT
	movq	-1752(%rbp), %rax               # 8-byte Reload
.Ltmp101:
	.loc	3 576 8 is_stmt 1               # mem.c3:576:8
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rcx
	movq	%rcx, -1144(%rbp)
	movq	%rax, -1152(%rbp)
.Ltmp102:
	.loc	1 239 27                        # linux.c3:239:27
	movq	-1088(%rbp), %rax
	movq	%rax, -1744(%rbp)               # 8-byte Spill
	movq	-1080(%rbp), %rax
	movq	%rax, -1736(%rbp)               # 8-byte Spill
	.loc	1 239 43 is_stmt 0              # linux.c3:239:43
	movq	-1152(%rbp), %rax
	movq	%rax, -1728(%rbp)               # 8-byte Spill
	movq	-1144(%rbp), %rax
	movq	%rax, -1720(%rbp)               # 8-byte Spill
	.loc	1 239 27                        # linux.c3:239:27
	movb	$1, %al
	testb	$1, %al
	jne	.LBB4_3
# %bb.1:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1792(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_22
# %bb.2:
	.loc	1 0 27                          # linux.c3:0:27
	movq	-1792(%rbp), %rax               # 8-byte Reload
	.loc	1 239 27                        # linux.c3:239:27
	leaq	.panic_msg.25(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.35(%rip), %r8
	movl	$23, %r9d
	movl	$239, (%rsp)
	callq	*%rax
.LBB4_3:
	.loc	1 0 27                          # linux.c3:0:27
	movq	-1736(%rbp), %rsi               # 8-byte Reload
	movq	-1744(%rbp), %rdi               # 8-byte Reload
	movq	-1720(%rbp), %rax               # 8-byte Reload
	movq	-1728(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -1184(%rbp)
	movq	%rax, -1176(%rbp)
	movq	-1184(%rbp), %rdx
	movq	-1176(%rbp), %rcx
	.loc	1 239 27                        # linux.c3:239:27
	movq	%rsp, %rax
	movl	$0, 8(%rax)
	movq	$0, (%rax)
	leaq	.L.str.34(%rip), %r8
	movl	$12, %r9d
	callq	std.core.String.split@PLT
	movq	%rdx, -1192(%rbp)
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -1168(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -1160(%rbp)
	.loc	1 240 14 is_stmt 1              # linux.c3:240:14
	movq	-1160(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -1208(%rbp)
.Ltmp103:
	.loc	1 241 22                        # linux.c3:241:22
	movq	-1160(%rbp), %rax
	movq	%rax, -1800(%rbp)               # 8-byte Spill
	.loc	1 241 12 is_stmt 0              # linux.c3:241:12
	movq	$0, -1216(%rbp)
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 12                          # linux.c3:0:12
	movq	-1800(%rbp), %rax               # 8-byte Reload
	.loc	1 241 12                        # linux.c3:241:12
	cmpq	%rax, -1216(%rbp)
	jae	.LBB4_18
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
.Ltmp104:
	.loc	1 241 12                        # linux.c3:241:12
	movq	-1216(%rbp), %rax
	movq	%rax, -1224(%rbp)
	.loc	1 241 22                        # linux.c3:241:22
	movq	-1160(%rbp), %rcx
	movq	%rcx, -1824(%rbp)               # 8-byte Spill
	movq	-1168(%rbp), %rax
	movq	%rax, -1816(%rbp)               # 8-byte Spill
	.loc	1 241 12                        # linux.c3:241:12
	movq	-1216(%rbp), %rax
	movq	%rax, -1808(%rbp)               # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB4_20
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
	.loc	1 0 12                          # linux.c3:0:12
	movq	-1816(%rbp), %rax               # 8-byte Reload
	movq	-1808(%rbp), %rcx               # 8-byte Reload
	.loc	1 241 12                        # linux.c3:241:12
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -1840(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -1832(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_21
# %bb.7:                                #   in Loop: Header=BB4_4 Depth=1
	.loc	1 0 12                          # linux.c3:0:12
	movq	-1784(%rbp), %rax               # 8-byte Reload
	movq	-1776(%rbp), %r9                # 8-byte Reload
	movq	-1840(%rbp), %rcx               # 8-byte Reload
	.loc	1 241 22                        # linux.c3:241:22
	movq	(%rcx), %rdx
	movq	%rdx, -1240(%rbp)
	movq	8(%rcx), %rcx
	movq	%rcx, -1232(%rbp)
.Ltmp105:
	.loc	1 243 21 is_stmt 1              # linux.c3:243:21
	movq	-1224(%rbp), %rcx
	cmpq	-1208(%rbp), %rcx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1377(%rbp)
	movq	-1056(%rbp), %rsi
	movq	-1048(%rbp), %rdx
	movq	-1240(%rbp), %rcx
	movq	-1232(%rbp), %r8
	.loc	1 244 23                        # linux.c3:244:23
	leaq	-1568(%rbp), %rdi
	movq	(%r9), %r10
	movq	%r10, (%rsp)
	movq	8(%r9), %r9
	movq	%r9, 8(%rsp)
	movq	(%rax), %r9
	movq	%r9, 16(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	movzbl	-1377(%rbp), %r9d
	callq	std.os.linux.backtrace_line_parse@PLT
	movq	%rax, -1848(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_4 Depth=1
	.loc	1 0 23 is_stmt 0                # linux.c3:0:23
	movq	-1848(%rbp), %rax               # 8-byte Reload
	.loc	1 244 23                        # linux.c3:244:23
	movq	%rax, -1480(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                #   in Loop: Header=BB4_4 Depth=1
	vmovdqu	-1568(%rbp), %xmm0
	vmovdqu	-1552(%rbp), %xmm1
	vmovdqu	-1536(%rbp), %xmm2
	vmovdqu	-1520(%rbp), %xmm3
	vmovdqa	%xmm3, -1424(%rbp)
	vmovdqa	%xmm2, -1440(%rbp)
	vmovdqa	%xmm1, -1456(%rbp)
	vmovdqa	%xmm0, -1472(%rbp)
	movq	-1488(%rbp), %rax
	movq	%rax, -1392(%rbp)
	movq	-1496(%rbp), %rax
	movq	%rax, -1400(%rbp)
	movq	-1504(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	$0, -1480(%rbp)
.LBB4_10:                               #   in Loop: Header=BB4_4 Depth=1
	.loc	1 0 23                          # linux.c3:0:23
	jmp	.LBB4_11
.LBB4_11:                               #   in Loop: Header=BB4_4 Depth=1
	.loc	1 245 14 is_stmt 1              # linux.c3:245:14
	movq	-1480(%rbp), %rax
	movq	%rax, -1856(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_4 Depth=1
	.loc	1 0 14 is_stmt 0                # linux.c3:0:14
	movq	-1856(%rbp), %rax               # 8-byte Reload
	.loc	1 245 14                        # linux.c3:245:14
	movq	%rax, -1576(%rbp)
	jmp	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_4 Depth=1
	movq	$0, -1576(%rbp)
.LBB4_14:                               #   in Loop: Header=BB4_4 Depth=1
	cmpq	$0, -1576(%rbp)
	je	.LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_4 Depth=1
	.loc	1 0 14                          # linux.c3:0:14
	movq	-1784(%rbp), %rax               # 8-byte Reload
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1616(%rbp)
	vmovdqa	%xmm0, -1632(%rbp)
	vmovdqa	%xmm0, -1648(%rbp)
	vmovdqa	%xmm0, -1664(%rbp)
	movq	$0, -1584(%rbp)
	movq	$0, -1592(%rbp)
	movq	$0, -1600(%rbp)
.Ltmp106:
	.loc	1 248 36 is_stmt 1              # linux.c3:248:36
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %rcx
	.loc	1 248 21 is_stmt 0              # linux.c3:248:21
	callq	std.core.String.copy@PLT
	movq	%rax, %rcx
	movq	-1776(%rbp), %rax               # 8-byte Reload
	movq	%rdx, -1672(%rbp)
	movq	%rcx, -1680(%rbp)
	vmovdqu	-1680(%rbp), %xmm0
	vmovdqu	%xmm0, -1656(%rbp)
	.loc	1 249 35 is_stmt 1              # linux.c3:249:35
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %rcx
	.loc	1 249 21 is_stmt 0              # linux.c3:249:21
	callq	std.core.String.copy@PLT
	movq	%rdx, -1688(%rbp)
	movq	%rax, -1696(%rbp)
	vmovdqu	-1696(%rbp), %xmm0
	vmovdqu	%xmm0, -1640(%rbp)
	.loc	1 250 21 is_stmt 1              # linux.c3:250:21
	movq	-1072(%rbp), %rax
	movq	%rax, -1664(%rbp)
	.loc	1 251 29                        # linux.c3:251:29
	movq	-1056(%rbp), %rdx
	movq	-1048(%rbp), %rcx
	.loc	1 251 21 is_stmt 0              # linux.c3:251:21
	leaq	.emptystr(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	std.core.String.copy@PLT
	movq	%rdx, -1704(%rbp)
	movq	%rax, -1712(%rbp)
	movq	-1712(%rbp), %rax
	movq	%rax, -1624(%rbp)
	movq	-1704(%rbp), %rax
	movq	%rax, -1616(%rbp)
	.loc	1 252 21 is_stmt 1              # linux.c3:252:21
	movl	$0, -1608(%rbp)
	.loc	1 253 21                        # linux.c3:253:21
	movq	-1056(%rbp), %rax
	movq	%rax, -1600(%rbp)
	movq	-1048(%rbp), %rax
	movq	%rax, -1592(%rbp)
	.loc	1 254 21                        # linux.c3:254:21
	movb	-1377(%rbp), %al
	movb	%al, -1584(%rbp)
	movq	-1064(%rbp), %rdi
	.loc	1 247 5                         # linux.c3:247:5
	vmovdqu	-1664(%rbp), %xmm0
	vmovdqu	-1648(%rbp), %xmm1
	vmovdqu	-1632(%rbp), %xmm2
	vmovdqu	-1616(%rbp), %xmm3
	movq	%rsp, %rax
	vmovdqu	%xmm3, 48(%rax)
	vmovdqu	%xmm2, 32(%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm0, (%rax)
	movq	-1584(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movq	-1592(%rbp), %rcx
	movq	%rcx, 72(%rax)
	movq	-1600(%rbp), %rcx
	movq	%rcx, 64(%rax)
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.push@PLT
	.loc	1 256 5                         # linux.c3:256:5
	jmp	.LBB4_17
.Ltmp107:
.LBB4_16:                               #   in Loop: Header=BB4_4 Depth=1
	.loc	1 258 14                        # linux.c3:258:14
	movq	-1064(%rbp), %rdi
	.loc	1 258 4 is_stmt 0               # linux.c3:258:4
	vmovdqa	-1472(%rbp), %xmm0
	vmovdqa	-1456(%rbp), %xmm1
	vmovdqa	-1440(%rbp), %xmm2
	vmovdqa	-1424(%rbp), %xmm3
	movq	%rsp, %rax
	vmovdqu	%xmm3, 48(%rax)
	vmovdqu	%xmm2, 32(%rax)
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm0, (%rax)
	movq	-1392(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movq	-1400(%rbp), %rcx
	movq	%rcx, 72(%rax)
	movq	-1408(%rbp), %rcx
	movq	%rcx, 64(%rax)
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.push@PLT
.Ltmp108:
.LBB4_17:                               #   in Loop: Header=BB4_4 Depth=1
	.loc	1 241 12 is_stmt 1              # linux.c3:241:12
	movq	-1216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1216(%rbp)
	jmp	.LBB4_4
.Ltmp109:
.LBB4_18:
	.loc	1 0 12 is_stmt 0                # linux.c3:0:12
	leaq	-1136(%rbp), %rdi
.Ltmp110:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_22
# %bb.19:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 575 8 epilogue_begin is_stmt 0 # mem.c3:575:8
	addq	$1952, %rsp                     # imm = 0x7A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp111:
.LBB4_20:
	.cfi_def_cfa %rbp, 16
	.loc	3 0 8                           # mem.c3:0:8
	movq	-1808(%rbp), %rcx               # 8-byte Reload
	movq	-1824(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1248(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1256(%rbp)
	movq	%rax, -1288(%rbp)
	leaq	-1248(%rbp), %rcx
	movq	%rcx, -1296(%rbp)
	movq	%rax, -1272(%rbp)
	leaq	-1256(%rbp), %rax
	movq	%rax, -1280(%rbp)
	leaq	-1296(%rbp), %rax
	movq	%rax, -1312(%rbp)
	movq	$2, -1304(%rbp)
.Ltmp112:
	.loc	1 241 12 is_stmt 1              # linux.c3:241:12
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.35(%rip), %r8
	movl	$23, %r9d
	leaq	-1312(%rbp), %rax
	movl	$241, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_21:
	.loc	1 0 12 is_stmt 0                # linux.c3:0:12
	movq	-1832(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1320(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1328(%rbp)
	movq	%rax, -1352(%rbp)
	leaq	-1320(%rbp), %rcx
	movq	%rcx, -1360(%rbp)
	movq	%rax, -1336(%rbp)
	leaq	-1328(%rbp), %rax
	movq	%rax, -1344(%rbp)
	leaq	-1360(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	$2, -1368(%rbp)
	.loc	1 241 22                        # linux.c3:241:22
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.35(%rip), %r8
	movl	$23, %r9d
	leaq	-1376(%rbp), %rax
	movl	$241, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp113:
.LBB4_22:
	.loc	1 0 0                           # linux.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp114:
.Lfunc_end4:
	.size	std.os.linux.backtrace_add_addr2line.18269, .Lfunc_end4-std.os.linux.backtrace_add_addr2line.18269
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.os.linux.backtrace_add_element.18283
	.type	std.os.linux.backtrace_add_element.18283,@function
std.os.linux.backtrace_add_element.18283: # @std.os.linux.backtrace_add_element.18283
.Lfunc_begin5:
	.loc	1 263 0 is_stmt 1               # linux.c3:263:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.Ltmp115:
	.loc	1 265 6 prologue_end            # linux.c3:265:6
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# %bb.1:
.Ltmp116:
	.loc	1 267 13                        # linux.c3:267:13
	movq	-24(%rbp), %rdi
	.loc	1 267 3 is_stmt 0               # linux.c3:267:3
	movq	std.os.backtrace.BACKTRACE_UNKNOWN@GOTPCREL(%rip), %rcx
	vmovdqu	(%rcx), %xmm0
	vmovdqu	16(%rcx), %xmm1
	vmovdqu	32(%rcx), %xmm2
	vmovdqu	48(%rcx), %xmm3
	movq	%rsp, %rax
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
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.push@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp117:
.LBB5_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 271 16 is_stmt 1              # linux.c3:271:16
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset@PLT
	.loc	1 272 20                        # linux.c3:272:20
	movq	-32(%rbp), %rdi
	.loc	1 272 6 is_stmt 0               # linux.c3:272:6
	leaq	-72(%rbp), %rsi
	callq	dladdr@PLT
	cmpl	$0, %eax
	jne	.LBB5_7
# %bb.3:
.Ltmp118:
	.loc	1 274 51 is_stmt 1              # linux.c3:274:51
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	.loc	1 274 10 is_stmt 0              # linux.c3:274:10
	callq	std.os.linux.backtrace_add_from_exec.18240
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB5_5
# %bb.4:
	.loc	1 0 10                          # linux.c3:0:10
	movq	-96(%rbp), %rax                 # 8-byte Reload
	.loc	1 274 10                        # linux.c3:274:10
	movq	%rax, -80(%rbp)
	jmp	.LBB5_6
.LBB5_5:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 274 10 epilogue_begin         # linux.c3:274:10
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_6:
	.cfi_def_cfa %rbp, 16
	movq	-80(%rbp), %rax
	.loc	1 274 10 epilogue_begin         # linux.c3:274:10
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp119:
.LBB5_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 276 59 is_stmt 1              # linux.c3:276:59
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	.loc	1 276 9 is_stmt 0               # linux.c3:276:9
	leaq	-72(%rbp), %r8
	callq	std.os.linux.backtrace_add_from_dlinfo.18248
	movq	%rax, -104(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB5_9
# %bb.8:
	.loc	1 0 9                           # linux.c3:0:9
	movq	-104(%rbp), %rax                # 8-byte Reload
	.loc	1 276 9                         # linux.c3:276:9
	movq	%rax, -88(%rbp)
	jmp	.LBB5_10
.LBB5_9:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 276 9 epilogue_begin          # linux.c3:276:9
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_10:
	.cfi_def_cfa %rbp, 16
	movq	-88(%rbp), %rax
	.loc	1 276 9 epilogue_begin          # linux.c3:276:9
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp120:
.Lfunc_end5:
	.size	std.os.linux.backtrace_add_element.18283, .Lfunc_end5-std.os.linux.backtrace_add_element.18283
	.cfi_endproc
                                        # -- End function
	.section	.text.std.os.linux.symbolize_backtrace,"axG",@progbits,std.os.linux.symbolize_backtrace,comdat
	.weak	std.os.linux.symbolize_backtrace # -- Begin function std.os.linux.symbolize_backtrace
	.p2align	4, 0x90
	.type	std.os.linux.symbolize_backtrace,@function
std.os.linux.symbolize_backtrace:       # @std.os.linux.symbolize_backtrace
.Lfunc_begin6:
	.loc	1 279 0 is_stmt 1               # linux.c3:279:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$544, %rsp                      # imm = 0x220
	movq	%rdi, -440(%rbp)                # 8-byte Spill
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -24(%rbp)
.Ltmp121:
	.loc	1 281 16 prologue_end           # linux.c3:281:16
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	.loc	1 282 23                        # linux.c3:282:23
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	.loc	1 282 2 is_stmt 0               # linux.c3:282:2
	leaq	-72(%rbp), %rdi
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.init@PLT
.Ltmp122:
	.loc	1 291 18 is_stmt 1              # linux.c3:291:18
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	movq	$0, -80(%rbp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 18 is_stmt 0                # linux.c3:0:18
	movq	-432(%rbp), %rax                # 8-byte Reload
	.loc	1 291 18                        # linux.c3:291:18
	cmpq	%rax, -80(%rbp)
	jae	.LBB6_17
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp123:
	.loc	1 291 18                        # linux.c3:291:18
	movq	-24(%rbp), %rcx
	movq	%rcx, -464(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -448(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB6_18
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 0 18                          # linux.c3:0:18
	movq	-456(%rbp), %rax                # 8-byte Reload
	movq	-448(%rbp), %rcx                # 8-byte Reload
	.loc	1 291 18                        # linux.c3:291:18
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -480(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB6_19
# %bb.4:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 0 18                          # linux.c3:0:18
	movq	-480(%rbp), %rax                # 8-byte Reload
	.loc	1 291 18                        # linux.c3:291:18
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
.Ltmp124:
	.loc	1 293 43 is_stmt 1              # linux.c3:293:43
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-88(%rbp), %rcx
	.loc	1 293 3 is_stmt 0               # linux.c3:293:3
	leaq	-72(%rbp), %rdx
	callq	std.os.linux.backtrace_add_element.18283
	movq	%rax, -488(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB6_6
# %bb.5:
	.loc	1 0 3                           # linux.c3:0:3
	movq	-488(%rbp), %rax                # 8-byte Reload
	.loc	1 293 3                         # linux.c3:293:3
	movq	%rax, -232(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_16
.Ltmp125:
.LBB6_7:
	.loc	1 285 20 is_stmt 1              # linux.c3:285:20
	leaq	-72(%rbp), %rdi
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.len@PLT
	movq	%rax, -496(%rbp)                # 8-byte Spill
	movq	$0, -240(%rbp)
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                # linux.c3:0:20
	movq	-496(%rbp), %rax                # 8-byte Reload
	.loc	1 285 20                        # linux.c3:285:20
	cmpq	%rax, -240(%rbp)
	jae	.LBB6_15
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	.loc	1 0 20                          # linux.c3:0:20
	leaq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -352(%rbp)
.Ltmp126:
	.file	5 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/collections" "list.c3"
	.loc	5 393 26 is_stmt 1              # list.c3:393:26
	cmpq	$0, -344(%rbp)
	jne	.LBB6_11
# %bb.10:
	leaq	.panic_msg.37(%rip), %rdi
	movl	$32, %esi
	leaq	.file.38(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.36(%rip), %r8
	movl	$19, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$393, (%rsp)                    # imm = 0x189
	callq	*(%rax)
.LBB6_11:                               #   in Loop: Header=BB6_8 Depth=1
	.loc	5 391 11                        # list.c3:391:11
	movq	-352(%rbp), %rax
	.loc	5 391 19 is_stmt 0              # list.c3:391:19
	movq	-344(%rbp), %rcx
	.loc	5 285 12 is_stmt 1              # list.c3:285:12
	cmpq	(%rcx), %rax
	jb	.LBB6_13
# %bb.12:
	leaq	.panic_msg.39(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.36(%rip), %r8
	movl	$19, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$285, (%rsp)                    # imm = 0x11D
	callq	*(%rax)
.Ltmp127:
.LBB6_13:                               #   in Loop: Header=BB6_8 Depth=1
	.loc	5 395 9                         # list.c3:395:9
	movq	-344(%rbp), %rax
	movq	32(%rax), %rax
	.loc	5 395 22 is_stmt 0              # list.c3:395:22
	imulq	$88, -352(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -512(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -504(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB6_20
# %bb.14:                               #   in Loop: Header=BB6_8 Depth=1
	.loc	5 0 22                          # list.c3:0:22
	movq	-512(%rbp), %rax                # 8-byte Reload
	.loc	5 395 9                         # list.c3:395:9
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
.Ltmp128:
	.loc	1 287 4 is_stmt 1               # linux.c3:287:4
	leaq	-336(%rbp), %rdi
	callq	std.os.backtrace.Backtrace.free@PLT
.Ltmp129:
	.loc	1 285 20                        # linux.c3:285:20
	movq	-240(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
	jmp	.LBB6_8
.Ltmp130:
.LBB6_15:
	.loc	1 289 3                         # linux.c3:289:3
	leaq	-72(%rbp), %rdi
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.free@PLT
	movq	-232(%rbp), %rax
	.loc	1 289 3 epilogue_begin is_stmt 0 # linux.c3:289:3
	addq	$544, %rsp                      # imm = 0x220
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp131:
.LBB6_16:                               #   in Loop: Header=BB6_1 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	1 291 18 is_stmt 1              # linux.c3:291:18
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB6_1
.Ltmp132:
.LBB6_17:
	.loc	1 0 18 is_stmt 0                # linux.c3:0:18
	movq	-440(%rbp), %rax                # 8-byte Reload
	.loc	1 295 9 is_stmt 1               # linux.c3:295:9
	vmovdqu	-72(%rbp), %xmm0
	vmovdqu	-56(%rbp), %xmm1
	vmovdqu	%xmm1, 16(%rax)
	vmovdqu	%xmm0, (%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 32(%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 295 9 epilogue_begin is_stmt 0 # linux.c3:295:9
	addq	$544, %rsp                      # imm = 0x220
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_18:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # linux.c3:0:9
	movq	-448(%rbp), %rcx                # 8-byte Reload
	movq	-464(%rbp), %rax                # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -104(%rbp)
	movq	%rax, -136(%rbp)
	leaq	-96(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	%rax, -120(%rbp)
	leaq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$2, -152(%rbp)
.Ltmp133:
	.loc	1 291 18 is_stmt 1              # linux.c3:291:18
	leaq	.panic_msg.27(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.36(%rip), %r8
	movl	$19, %r9d
	leaq	-160(%rbp), %rax
	movl	$291, (%rsp)                    # imm = 0x123
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_19:
	.loc	1 0 18 is_stmt 0                # linux.c3:0:18
	movq	-472(%rbp), %rcx                # 8-byte Reload
	movq	$8, -168(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -176(%rbp)
	movq	%rax, -200(%rbp)
	leaq	-168(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movq	%rax, -184(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$2, -216(%rbp)
	.loc	1 291 18                        # linux.c3:291:18
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func.36(%rip), %r8
	movl	$19, %r9d
	leaq	-224(%rbp), %rax
	movl	$291, (%rsp)                    # imm = 0x123
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp134:
.LBB6_20:
	.loc	1 0 18                          # linux.c3:0:18
	movq	-504(%rbp), %rcx                # 8-byte Reload
	movq	$8, -360(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -368(%rbp)
	movq	%rax, -392(%rbp)
	leaq	-360(%rbp), %rcx
	movq	%rcx, -400(%rbp)
	movq	%rax, -376(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	$2, -408(%rbp)
.Ltmp135:
	.loc	5 395 9 is_stmt 1               # list.c3:395:9
	leaq	.panic_msg.28(%rip), %rdi
	movl	$94, %esi
	leaq	.file.38(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.36(%rip), %r8
	movl	$19, %r9d
	leaq	-416(%rbp), %rax
	movl	$395, (%rsp)                    # imm = 0x18B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp136:
.Lfunc_end6:
	.size	std.os.linux.symbolize_backtrace, .Lfunc_end6-std.os.linux.symbolize_backtrace
	.cfi_endproc
                                        # -- End function
	.type	$ct.std.os.linux.Elf32_Ehdr,@object # @"$ct.std.os.linux.Elf32_Ehdr"
	.section	".data.$ct.std.os.linux.Elf32_Ehdr","awG",@progbits,"$ct.std.os.linux.Elf32_Ehdr",comdat
	.weak	$ct.std.os.linux.Elf32_Ehdr
	.p2align	3, 0x0
$ct.std.os.linux.Elf32_Ehdr:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	52                              # 0x34
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.size	$ct.std.os.linux.Elf32_Ehdr, 48

	.type	$ct.std.os.linux.Elf32_Phdr,@object # @"$ct.std.os.linux.Elf32_Phdr"
	.section	".data.$ct.std.os.linux.Elf32_Phdr","awG",@progbits,"$ct.std.os.linux.Elf32_Phdr",comdat
	.weak	$ct.std.os.linux.Elf32_Phdr
	.p2align	3, 0x0
$ct.std.os.linux.Elf32_Phdr:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	32                              # 0x20
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.size	$ct.std.os.linux.Elf32_Phdr, 48

	.type	$ct.std.os.linux.Elf64_Ehdr,@object # @"$ct.std.os.linux.Elf64_Ehdr"
	.section	".data.$ct.std.os.linux.Elf64_Ehdr","awG",@progbits,"$ct.std.os.linux.Elf64_Ehdr",comdat
	.weak	$ct.std.os.linux.Elf64_Ehdr
	.p2align	3, 0x0
$ct.std.os.linux.Elf64_Ehdr:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	64                              # 0x40
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.size	$ct.std.os.linux.Elf64_Ehdr, 48

	.type	$ct.std.os.linux.Elf64_Phdr,@object # @"$ct.std.os.linux.Elf64_Phdr"
	.section	".data.$ct.std.os.linux.Elf64_Phdr","awG",@progbits,"$ct.std.os.linux.Elf64_Phdr",comdat
	.weak	$ct.std.os.linux.Elf64_Phdr
	.p2align	3, 0x0
$ct.std.os.linux.Elf64_Phdr:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	56                              # 0x38
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.size	$ct.std.os.linux.Elf64_Phdr, 48

	.type	$ct.std.os.linux.Linux_Dl_info,@object # @"$ct.std.os.linux.Linux_Dl_info"
	.section	".data.$ct.std.os.linux.Linux_Dl_info","awG",@progbits,"$ct.std.os.linux.Linux_Dl_info",comdat
	.weak	$ct.std.os.linux.Linux_Dl_info
	.p2align	3, 0x0
$ct.std.os.linux.Linux_Dl_info:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	32                              # 0x20
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.size	$ct.std.os.linux.Linux_Dl_info, 48

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	std.io.UNEXPECTED_EOF,@object   # @std.io.UNEXPECTED_EOF
	.section	.data.rel.ro.std.io.UNEXPECTED_EOF,"awG",@progbits,std.io.UNEXPECTED_EOF,comdat
	.weak	std.io.UNEXPECTED_EOF
	.p2align	3, 0x0
std.io.UNEXPECTED_EOF:
	.quad	std.io.UNEXPECTED_EOF.nameof
	.quad	18                              # 0x12
	.size	std.io.UNEXPECTED_EOF, 16

	.type	std.io.UNEXPECTED_EOF.nameof,@object # @std.io.UNEXPECTED_EOF.nameof
	.section	.rodata,"a",@progbits
std.io.UNEXPECTED_EOF.nameof:
	.asciz	"io::UNEXPECTED_EOF"
	.size	std.io.UNEXPECTED_EOF.nameof, 19

	.type	.L.__const,@object              # @.__const
	.section	.rodata.cst4,"aM",@progbits,4
.L.__const:
	.ascii	"\177ELF"
	.size	.L.__const, 4

	.type	std.os.backtrace.IMAGE_NOT_FOUND,@object # @std.os.backtrace.IMAGE_NOT_FOUND
	.section	.data.rel.ro.std.os.backtrace.IMAGE_NOT_FOUND,"awG",@progbits,std.os.backtrace.IMAGE_NOT_FOUND,comdat
	.weak	std.os.backtrace.IMAGE_NOT_FOUND
	.p2align	3, 0x0
std.os.backtrace.IMAGE_NOT_FOUND:
	.quad	std.os.backtrace.IMAGE_NOT_FOUND.nameof
	.quad	26                              # 0x1a
	.size	std.os.backtrace.IMAGE_NOT_FOUND, 16

	.type	std.os.backtrace.IMAGE_NOT_FOUND.nameof,@object # @std.os.backtrace.IMAGE_NOT_FOUND.nameof
	.section	.rodata,"a",@progbits
std.os.backtrace.IMAGE_NOT_FOUND.nameof:
	.asciz	"backtrace::IMAGE_NOT_FOUND"
	.size	std.os.backtrace.IMAGE_NOT_FOUND.nameof, 27

	.type	.panic_msg,@object              # @.panic_msg
.panic_msg:
	.asciz	"@require \"self.file != null\" violated."
	.size	.panic_msg, 39

	.type	.file,@object                   # @.file
.file:
	.asciz	"linux.c3"
	.size	.file, 9

	.type	.func,@object                   # @.func
.func:
	.asciz	"elf_module_image_base"
	.size	.func, 22

	.type	.panic_msg.1,@object            # @.panic_msg.1
.panic_msg.1:
	.asciz	"Passed null to a ref ('&') parameter."
	.size	.panic_msg.1, 38

	.type	.file.2,@object                 # @.file.2
.file.2:
	.asciz	"stream.c3"
	.size	.file.2, 10

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

	.type	.panic_msg.3,@object            # @.panic_msg.3
	.section	.rodata,"a",@progbits
.panic_msg.3:
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.3, 44

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"realpath"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"-e"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"/proc/%d/exe"
	.size	.L.str.6, 13

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

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"addr2line"
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"-p"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"-i"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"-C"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"-f"
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"-e"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"0x%x"
	.size	.L.str.13, 5

	.type	$ct.p$void,@object              # @"$ct.p$void"
	.section	".data.$ct.p$void","awG",@progbits,"$ct.p$void",comdat
	.weak	$ct.p$void
	.p2align	3, 0x0
$ct.p$void:
	.byte	19                              # 0x13
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.void)
	.quad	0                               # 0x0
	.size	$ct.p$void, 48

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

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"???"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"???"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"addr2line"
	.size	.L.str.16, 10

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"-p"
	.size	.L.str.17, 3

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"-i"
	.size	.L.str.18, 3

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"-C"
	.size	.L.str.19, 3

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"-f"
	.size	.L.str.20, 3

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"-e"
	.size	.L.str.21, 3

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"0x%x"
	.size	.L.str.22, 5

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

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"\t\n\r "
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" at "
	.size	.L.str.24, 5

	.type	.panic_msg.25,@object           # @.panic_msg.25
	.section	.rodata,"a",@progbits
.panic_msg.25:
	.asciz	"@require \"delimiter.len > 0\" violated: 'The delimiter must be at least 1 character long'."
	.size	.panic_msg.25, 90

	.type	.func.26,@object                # @.func.26
.func.26:
	.asciz	"backtrace_line_parse"
	.size	.func.26, 21

	.type	std.core.builtin.NOT_FOUND,@object # @std.core.builtin.NOT_FOUND
	.section	.data.rel.ro.std.core.builtin.NOT_FOUND,"awG",@progbits,std.core.builtin.NOT_FOUND,comdat
	.weak	std.core.builtin.NOT_FOUND
	.p2align	3, 0x0
std.core.builtin.NOT_FOUND:
	.quad	std.core.builtin.NOT_FOUND.nameof
	.quad	18                              # 0x12
	.size	std.core.builtin.NOT_FOUND, 16

	.type	std.core.builtin.NOT_FOUND.nameof,@object # @std.core.builtin.NOT_FOUND.nameof
	.section	.rodata,"a",@progbits
std.core.builtin.NOT_FOUND.nameof:
	.asciz	"builtin::NOT_FOUND"
	.size	std.core.builtin.NOT_FOUND.nameof, 19

	.type	.emptystr,@object               # @.emptystr
.emptystr:
	.zero	1
	.size	.emptystr, 1

	.type	.panic_msg.27,@object           # @.panic_msg.27
.panic_msg.27:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.27, 60

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

	.type	.panic_msg.28,@object           # @.panic_msg.28
	.section	.rodata,"a",@progbits
.panic_msg.28:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.28, 95

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"?"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	":"
	.size	.L.str.30, 2

	.type	.panic_msg.31,@object           # @.panic_msg.31
	.section	.rodata,"a",@progbits
.panic_msg.31:
	.asciz	"Index exceeds array length (array had size %d, index was %d)."
	.size	.panic_msg.31, 62

	.type	.panic_msg.32,@object           # @.panic_msg.32
.panic_msg.32:
	.asciz	"End index out of bounds (end index of %d exceeds size of %d)"
	.size	.panic_msg.32, 61

	.type	.panic_msg.33,@object           # @.panic_msg.33
.panic_msg.33:
	.asciz	"Negative indexing (%d)"
	.size	.panic_msg.33, 23

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"(inlined by)"
	.size	.L.str.34, 13

	.type	.func.35,@object                # @.func.35
	.section	.rodata,"a",@progbits
.func.35:
	.asciz	"backtrace_add_addr2line"
	.size	.func.35, 24

	.type	.func.36,@object                # @.func.36
.func.36:
	.asciz	"symbolize_backtrace"
	.size	.func.36, 20

	.type	.panic_msg.37,@object           # @.panic_msg.37
.panic_msg.37:
	.asciz	"Called a method on a null value."
	.size	.panic_msg.37, 33

	.type	.file.38,@object                # @.file.38
.file.38:
	.asciz	"list.c3"
	.size	.file.38, 8

	.type	.panic_msg.39,@object           # @.panic_msg.39
.panic_msg.39:
	.asciz	"@require \"index < self.size\" violated: 'Access out of bounds'."
	.size	.panic_msg.39, 63

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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
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
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xd2a DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges21                # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x19 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x36:0xc DW_TAG_variable
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x43:0x9 DW_TAG_typedef
	.long	76                              # DW_AT_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	5                               # Abbrev [5] 0x4c:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x53:0xc DW_TAG_subprogram
	.long	.Linfo_string7                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x5f:0x19 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x6b:0xc DW_TAG_variable
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x78:0xc DW_TAG_subprogram
	.long	.Linfo_string7                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x84:0x19 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x90:0xc DW_TAG_variable
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x9d:0xc DW_TAG_subprogram
	.long	.Linfo_string7                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xa9:0x19 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0xb5:0xc DW_TAG_variable
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xc2:0xc DW_TAG_subprogram
	.long	.Linfo_string7                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0xce:0x19 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0xda:0xc DW_TAG_variable
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xe7:0x1b0 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string34                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2168                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x104:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x113:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330~"
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	2193                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x123:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\304~"
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	2228                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x132:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\357}"
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.long	1253                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x141:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\336}"
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.long	1253                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x150:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360~"
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	176                             # DW_AT_decl_line
	.long	2638                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x15f:0x1e DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	155                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x173:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220~"
	.long	54                              # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x17d:0x98 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x182:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.long	2241                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x192:0x2b DW_TAG_inlined_subroutine
	.long	83                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	165                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x19e:0x1e DW_TAG_inlined_subroutine
	.long	95                              # DW_AT_abstract_origin
	.quad	.Ltmp18                         # DW_AT_low_pc
	.long	.Ltmp19-.Ltmp18                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x1b2:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300|"
	.long	107                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1bd:0x57 DW_TAG_lexical_block
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x1c2:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240|"
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
	.long	2504                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x1d2:0x41 DW_TAG_lexical_block
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x1d7:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350{"
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	169                             # DW_AT_decl_line
	.long	2513                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1e7:0x2b DW_TAG_inlined_subroutine
	.long	120                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	171                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x1f3:0x1e DW_TAG_inlined_subroutine
	.long	132                             # DW_AT_abstract_origin
	.quad	.Ltmp32                         # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp32                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x207:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340z"
	.long	144                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x215:0x2b DW_TAG_inlined_subroutine
	.long	157                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	177                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x221:0x1e DW_TAG_inlined_subroutine
	.long	169                             # DW_AT_abstract_origin
	.quad	.Ltmp43                         # DW_AT_low_pc
	.long	.Ltmp44-.Ltmp43                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x235:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320y"
	.long	181                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x240:0x56 DW_TAG_lexical_block
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x245:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260y"
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.long	2504                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x255:0x40 DW_TAG_lexical_block
	.long	.Ldebug_ranges7                 # DW_AT_ranges
	.byte	10                              # Abbrev [10] 0x25a:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220y"
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.long	2874                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x269:0x2b DW_TAG_inlined_subroutine
	.long	194                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	183                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x275:0x1e DW_TAG_inlined_subroutine
	.long	206                             # DW_AT_abstract_origin
	.quad	.Ltmp56                         # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp56                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x289:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220x"
	.long	218                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x297:0x8b DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string37                 # DW_AT_linkage_name
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2168                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b4:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340v"
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2c3:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330v"
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	2988                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2d2:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320v"
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.long	1132                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2e1:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360w"
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.long	1557                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2f1:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300v"
	.long	.Linfo_string115                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x301:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240u"
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x311:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200u"
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x322:0xaa DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string39                 # DW_AT_linkage_name
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2168                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x33f:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240w"
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x34e:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230w"
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	2988                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x35d:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220w"
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	1132                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x36c:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210w"
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.long	3208                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x37b:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360w"
	.long	.Linfo_string114                # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.long	1557                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x38b:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200w"
	.long	.Linfo_string126                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.long	1132                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x39b:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330v"
	.long	.Linfo_string127                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.long	3283                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3ab:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310v"
	.long	.Linfo_string128                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	204                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3bb:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240v"
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x3cc:0x28 DW_TAG_subprogram
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.long	.Linfo_string8                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	570                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x3d9:0xd DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	1012                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x3e6:0xd DW_TAG_variable
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.long	1040                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x3f4:0xe DW_TAG_array_type
	.long	1026                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x3f9:0x8 DW_TAG_subrange_type
	.long	1033                            # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x402:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x409:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	20                              # Abbrev [20] 0x410:0x3e DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x419:0xd DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x426:0xd DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	1148                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x433:0xd DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x440:0xd DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x44e:0x1e DW_TAG_structure_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	23                              # Abbrev [23] 0x455:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x460:0xb DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1141                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x46c:0x9 DW_TAG_pointer_type
	.long	.Linfo_string15                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	5                               # Abbrev [5] 0x475:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x47c:0x1e DW_TAG_structure_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	23                              # Abbrev [23] 0x483:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1178                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0x48e:0xb DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x49a:0xd DW_TAG_pointer_type
	.long	1026                            # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	25                              # Abbrev [25] 0x4a7:0xd DW_TAG_pointer_type
	.long	1204                            # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	20                              # Abbrev [20] 0x4b4:0x31 DW_TAG_structure_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x4bd:0xd DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	1253                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x4ca:0xd DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	1191                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x4d7:0xd DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4e5:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x4ec:0xc DW_TAG_subprogram
	.long	.Linfo_string31                 # DW_AT_linkage_name
	.long	.Linfo_string31                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x4f8:0xf5 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string41                 # DW_AT_linkage_name
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2168                            # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x515:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340}"
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x524:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320}"
	.long	.Linfo_string129                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x533:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x541:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.long	.Linfo_string130                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x54f:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\317}"
	.long	.Linfo_string131                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.long	1253                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x55e:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200}"
	.long	.Linfo_string132                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x56e:0x1f DW_TAG_inlined_subroutine
	.long	972                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	211                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x57a:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360}"
	.long	985                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x583:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220}"
	.long	998                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x58d:0x5f DW_TAG_lexical_block
	.long	.Ldebug_ranges10                # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x592:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360|"
	.long	.Linfo_string133                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.long	3294                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5a2:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\264|"
	.long	.Linfo_string105                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.long	2475                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5b1:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240|"
	.long	.Linfo_string136                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5c1:0x14 DW_TAG_inlined_subroutine
	.long	1260                            # DW_AT_abstract_origin
	.quad	.Ltmp80                         # DW_AT_low_pc
	.long	.Ltmp81-.Ltmp80                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	213                             # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x5d5:0x16 DW_TAG_lexical_block
	.long	.Ldebug_ranges11                # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x5da:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230z"
	.long	.Linfo_string137                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x5ed:0x28 DW_TAG_subprogram
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.long	.Linfo_string8                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	570                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	16                              # Abbrev [16] 0x5fa:0xd DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	1557                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x607:0xd DW_TAG_variable
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.long	1040                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x615:0xe DW_TAG_array_type
	.long	1026                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x61a:0x8 DW_TAG_subrange_type
	.long	1033                            # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.short	1024                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x623:0x134 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string43                 # DW_AT_linkage_name
	.long	.Linfo_string44                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2168                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x640:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x64f:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330w"
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	2988                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x65e:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320w"
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	1132                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x66d:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300w"
	.long	.Linfo_string117                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x67c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string116                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x68a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	32
	.long	.Linfo_string130                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x698:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200w"
	.long	.Linfo_string132                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	237                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6a8:0x1f DW_TAG_inlined_subroutine
	.long	1517                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges12                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	237                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x6b4:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360w"
	.long	1530                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x6bd:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220w"
	.long	1543                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6c7:0x8f DW_TAG_lexical_block
	.long	.Ldebug_ranges13                # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x6cc:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360v"
	.long	.Linfo_string138                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.long	3294                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6dc:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310v"
	.long	.Linfo_string139                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	240                             # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x6ec:0x69 DW_TAG_lexical_block
	.long	.Ldebug_ranges14                # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x6f1:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300v"
	.long	.Linfo_string140                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x701:0x53 DW_TAG_lexical_block
	.long	.Ldebug_ranges15                # DW_AT_ranges
	.byte	9                               # Abbrev [9] 0x706:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270v"
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0x716:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250v"
	.long	.Linfo_string141                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.long	2184                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x726:0x2d DW_TAG_lexical_block
	.quad	.Ltmp105                        # DW_AT_low_pc
	.long	.Ltmp108-.Ltmp105               # DW_AT_high_pc
	.byte	10                              # Abbrev [10] 0x733:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\237u"
	.long	.Linfo_string106                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.long	1253                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x742:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300t"
	.long	.Linfo_string142                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	244                             # DW_AT_decl_line
	.long	3098                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x757:0x5d DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string45                 # DW_AT_linkage_name
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2168                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x775:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x784:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.long	2988                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x793:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.long	1132                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x7a2:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string118                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.long	3221                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x7b4:0xd DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	393                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x7c1:0xb7 DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2168                            # DW_AT_type
                                        # DW_AT_external
	.byte	30                              # Abbrev [30] 0x7df:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.long	1102                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x7ee:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string143                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	279                             # DW_AT_decl_line
	.long	3337                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x7fd:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string97                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	281                             # DW_AT_decl_line
	.long	3001                            # DW_AT_type
	.byte	13                              # Abbrev [13] 0x80e:0x2e DW_TAG_lexical_block
	.long	.Ldebug_ranges16                # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0x813:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string140                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	291                             # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x824:0x17 DW_TAG_lexical_block
	.long	.Ldebug_ranges17                # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0x829:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	.Linfo_string113                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	291                             # DW_AT_decl_line
	.long	1132                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x83c:0x3b DW_TAG_lexical_block
	.long	.Ldebug_ranges18                # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0x841:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220~"
	.long	.Linfo_string140                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	13                              # Abbrev [13] 0x852:0x24 DW_TAG_lexical_block
	.long	.Ldebug_ranges19                # DW_AT_ranges
	.byte	31                              # Abbrev [31] 0x857:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260}"
	.long	.Linfo_string142                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.long	3087                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x868:0xd DW_TAG_inlined_subroutine
	.long	1972                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges20                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	285                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x878:0x9 DW_TAG_typedef
	.long	2177                            # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	5                               # Abbrev [5] 0x881:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x888:0x9 DW_TAG_typedef
	.long	1148                            # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	20                              # Abbrev [20] 0x891:0x17 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	4                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x89a:0xd DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	2216                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x8a8:0xc DW_TAG_typedef
	.long	1132                            # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x8b4:0xd DW_TAG_array_type
	.long	1026                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x8b9:0x7 DW_TAG_subrange_type
	.long	1033                            # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x8c1:0xc0 DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	64                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x8ca:0xd DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	2433                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x8d7:0xd DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x8e4:0xd DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	18                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x8f1:0xd DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	2464                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	20                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x8fe:0xd DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	2482                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x90b:0xd DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	2493                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x918:0xd DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	2493                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x925:0xd DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	2464                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	48                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x932:0xd DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	52                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x93f:0xd DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	54                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x94c:0xd DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	56                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x959:0xd DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	58                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x966:0xd DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	60                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x973:0xd DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	2446                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	62                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x981:0xd DW_TAG_array_type
	.long	1026                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x986:0x7 DW_TAG_subrange_type
	.long	1033                            # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x98e:0xb DW_TAG_typedef
	.long	2457                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x999:0x7 DW_TAG_base_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	37                              # Abbrev [37] 0x9a0:0xb DW_TAG_typedef
	.long	2475                            # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x9ab:0x7 DW_TAG_base_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	37                              # Abbrev [37] 0x9b2:0xb DW_TAG_typedef
	.long	76                              # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0x9bd:0xb DW_TAG_typedef
	.long	76                              # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x9c8:0x9 DW_TAG_typedef
	.long	2177                            # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	20                              # Abbrev [20] 0x9d1:0x72 DW_TAG_structure_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x9da:0xd DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	2464                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x9e7:0xd DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	2464                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	4                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x9f4:0xd DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	2493                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa01:0xd DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	2482                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa0e:0xd DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	2482                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa1b:0xd DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	2627                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa28:0xd DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	2627                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa35:0xd DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2627                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	48                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xa43:0xb DW_TAG_typedef
	.long	76                              # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xa4e:0xc0 DW_TAG_structure_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	52                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0xa57:0xd DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	2433                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa64:0xd DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa71:0xd DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	18                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa7e:0xd DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	20                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa8b:0xd DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	2852                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xa98:0xd DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	2863                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	28                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xaa5:0xd DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	2863                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xab2:0xd DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	36                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xabf:0xd DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xacc:0xd DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	42                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xad9:0xd DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	44                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xae6:0xd DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	46                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xaf3:0xd DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	48                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb00:0xd DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	2830                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	2                               # DW_AT_alignment
	.byte	50                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xb0e:0xb DW_TAG_typedef
	.long	2457                            # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0xb19:0xb DW_TAG_typedef
	.long	2475                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0xb24:0xb DW_TAG_typedef
	.long	2475                            # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	37                              # Abbrev [37] 0xb2f:0xb DW_TAG_typedef
	.long	2475                            # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xb3a:0x72 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0xb43:0xd DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb50:0xd DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	2863                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	4                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb5d:0xd DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	2852                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb6a:0xd DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	2852                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	12                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb77:0xd DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb84:0xd DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	20                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb91:0xd DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xb9e:0xd DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2841                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	28                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xbac:0xd DW_TAG_pointer_type
	.long	3001                            # DW_AT_type
	.long	.Linfo_string112                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	37                              # Abbrev [37] 0xbb9:0xb DW_TAG_typedef
	.long	3012                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xbc4:0x3e DW_TAG_structure_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0xbcd:0xd DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xbda:0xd DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xbe7:0xd DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xbf4:0xd DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	3074                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xc02:0xd DW_TAG_pointer_type
	.long	3087                            # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	37                              # Abbrev [37] 0xc0f:0xb DW_TAG_typedef
	.long	3098                            # DW_AT_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xc1a:0x65 DW_TAG_structure_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0xc23:0xd DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	3199                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xc30:0xd DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2184                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xc3d:0xd DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	2184                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xc4a:0xd DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	2184                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xc57:0xd DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2475                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	56                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xc64:0xd DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1102                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	64                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xc71:0xd DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1253                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xc7f:0x9 DW_TAG_typedef
	.long	76                              # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	25                              # Abbrev [25] 0xc88:0xd DW_TAG_pointer_type
	.long	3221                            # DW_AT_type
	.long	.Linfo_string125                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	20                              # Abbrev [20] 0xc95:0x3e DW_TAG_structure_type
	.long	.Linfo_string124                # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0xc9e:0xd DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	3283                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xcab:0xd DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xcb8:0xd DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	3283                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0xcc5:0xd DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	1132                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xcd3:0xb DW_TAG_typedef
	.long	1178                            # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0xcde:0x1e DW_TAG_structure_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	23                              # Abbrev [23] 0xce5:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	3324                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0xcf0:0xb DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xcfc:0xd DW_TAG_pointer_type
	.long	2184                            # DW_AT_type
	.long	.Linfo_string134                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	22                              # Abbrev [22] 0xd09:0x1e DW_TAG_structure_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	23                              # Abbrev [23] 0xd10:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	3367                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	23                              # Abbrev [23] 0xd1b:0xb DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xd27:0xd DW_TAG_pointer_type
	.long	1132                            # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp15
	.quad	.Ltmp19
	.quad	.Ltmp21
	.quad	.Ltmp22
	.quad	.Ltmp24
	.quad	.Ltmp26
	.quad	.Ltmp29
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp36
	.quad	.Ltmp37
	.quad	.Ltmp38
	.quad	.Ltmp65
	.quad	.Ltmp68
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp16
	.quad	.Ltmp19
	.quad	.Ltmp65
	.quad	.Ltmp66
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp24
	.quad	.Ltmp26
	.quad	.Ltmp29
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp36
	.quad	.Ltmp37
	.quad	.Ltmp38
	.quad	.Ltmp67
	.quad	.Ltmp68
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25
	.quad	.Ltmp26
	.quad	.Ltmp29
	.quad	.Ltmp33
	.quad	.Ltmp35
	.quad	.Ltmp36
	.quad	.Ltmp67
	.quad	.Ltmp68
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp30
	.quad	.Ltmp33
	.quad	.Ltmp67
	.quad	.Ltmp68
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp41
	.quad	.Ltmp44
	.quad	.Ltmp69
	.quad	.Ltmp70
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp48
	.quad	.Ltmp50
	.quad	.Ltmp53
	.quad	.Ltmp57
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp61
	.quad	.Ltmp62
	.quad	.Ltmp71
	.quad	.Ltmp72
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp49
	.quad	.Ltmp50
	.quad	.Ltmp53
	.quad	.Ltmp57
	.quad	.Ltmp59
	.quad	.Ltmp60
	.quad	.Ltmp71
	.quad	.Ltmp72
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp54
	.quad	.Ltmp57
	.quad	.Ltmp71
	.quad	.Ltmp72
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp78
	.quad	.Ltmp80
	.quad	.Ltmp83
	.quad	.Ltmp84
	.quad	.Ltmp87
	.quad	.Ltmp88
	.quad	.Ltmp90
	.quad	.Ltmp91
	.quad	.Ltmp93
	.quad	.Ltmp94
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp80
	.quad	.Ltmp82
	.quad	.Ltmp84
	.quad	.Ltmp86
	.quad	.Ltmp88
	.quad	.Ltmp89
	.quad	.Ltmp92
	.quad	.Ltmp93
	.quad	.Ltmp95
	.quad	.Ltmp98
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp85
	.quad	.Ltmp86
	.quad	.Ltmp88
	.quad	.Ltmp89
	.quad	.Ltmp96
	.quad	.Ltmp97
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp100
	.quad	.Ltmp102
	.quad	.Ltmp110
	.quad	.Ltmp111
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp102
	.quad	.Ltmp109
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp103
	.quad	.Ltmp109
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp104
	.quad	.Ltmp108
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp122
	.quad	.Ltmp125
	.quad	.Ltmp131
	.quad	.Ltmp132
	.quad	.Ltmp133
	.quad	.Ltmp134
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp123
	.quad	.Ltmp125
	.quad	.Ltmp133
	.quad	.Ltmp134
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp125
	.quad	.Ltmp130
	.quad	.Ltmp135
	.quad	.Ltmp136
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp126
	.quad	.Ltmp129
	.quad	.Ltmp135
	.quad	.Ltmp136
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp126
	.quad	.Ltmp128
	.quad	.Ltmp135
	.quad	.Ltmp136
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin4
	.quad	.Lfunc_end5
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end3
	.quad	.Lfunc_begin6
	.quad	.Lfunc_end6
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"epoll.c3"                      # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/os/linux" # string offset=13
.Linfo_string3:
	.asciz	"read_all"                      # string offset=87
.Linfo_string4:
	.asciz	"n"                             # string offset=96
.Linfo_string5:
	.asciz	"ulong"                         # string offset=98
.Linfo_string6:
	.asciz	"usz"                           # string offset=104
.Linfo_string7:
	.asciz	"read_any"                      # string offset=108
.Linfo_string8:
	.asciz	"@stack_mem"                    # string offset=117
.Linfo_string9:
	.asciz	"buffer"                        # string offset=128
.Linfo_string10:
	.asciz	"char"                          # string offset=135
.Linfo_string11:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=140
.Linfo_string12:
	.asciz	"allocator"                     # string offset=160
.Linfo_string13:
	.asciz	"backing_allocator"             # string offset=170
.Linfo_string14:
	.asciz	"ptr"                           # string offset=188
.Linfo_string15:
	.asciz	"void*"                         # string offset=192
.Linfo_string16:
	.asciz	"type"                          # string offset=198
.Linfo_string17:
	.asciz	"typeid"                        # string offset=203
.Linfo_string18:
	.asciz	"Allocator"                     # string offset=210
.Linfo_string19:
	.asciz	"data"                          # string offset=220
.Linfo_string20:
	.asciz	"char*"                         # string offset=225
.Linfo_string21:
	.asciz	"len"                           # string offset=231
.Linfo_string22:
	.asciz	"char[]"                        # string offset=235
.Linfo_string23:
	.asciz	"used"                          # string offset=242
.Linfo_string24:
	.asciz	"chunk"                         # string offset=247
.Linfo_string25:
	.asciz	"is_aligned"                    # string offset=253
.Linfo_string26:
	.asciz	"bool"                          # string offset=264
.Linfo_string27:
	.asciz	"prev"                          # string offset=269
.Linfo_string28:
	.asciz	"OnStackAllocatorExtraChunk"    # string offset=274
.Linfo_string29:
	.asciz	"OnStackAllocatorExtraChunk*"   # string offset=301
.Linfo_string30:
	.asciz	"OnStackAllocator"              # string offset=329
.Linfo_string31:
	.asciz	"[DEFAULT INIT]"                # string offset=346
.Linfo_string32:
	.asciz	"@item_at"                      # string offset=361
.Linfo_string33:
	.asciz	"std.os.linux.elf_module_image_base.18228" # string offset=370
.Linfo_string34:
	.asciz	"elf_module_image_base"         # string offset=411
.Linfo_string35:
	.asciz	"long"                          # string offset=433
.Linfo_string36:
	.asciz	"fault"                         # string offset=438
.Linfo_string37:
	.asciz	"std.os.linux.backtrace_add_from_exec.18240" # string offset=444
.Linfo_string38:
	.asciz	"backtrace_add_from_exec"       # string offset=487
.Linfo_string39:
	.asciz	"std.os.linux.backtrace_add_from_dlinfo.18248" # string offset=511
.Linfo_string40:
	.asciz	"backtrace_add_from_dlinfo"     # string offset=556
.Linfo_string41:
	.asciz	"std.os.linux.backtrace_line_parse" # string offset=582
.Linfo_string42:
	.asciz	"backtrace_line_parse"          # string offset=616
.Linfo_string43:
	.asciz	"std.os.linux.backtrace_add_addr2line.18269" # string offset=637
.Linfo_string44:
	.asciz	"backtrace_add_addr2line"       # string offset=680
.Linfo_string45:
	.asciz	"std.os.linux.backtrace_add_element.18283" # string offset=704
.Linfo_string46:
	.asciz	"backtrace_add_element"         # string offset=745
.Linfo_string47:
	.asciz	"std.os.linux.symbolize_backtrace" # string offset=767
.Linfo_string48:
	.asciz	"symbolize_backtrace"           # string offset=800
.Linfo_string49:
	.asciz	"path"                          # string offset=820
.Linfo_string50:
	.asciz	"String"                        # string offset=825
.Linfo_string51:
	.asciz	"file"                          # string offset=832
.Linfo_string52:
	.asciz	"CFile"                         # string offset=837
.Linfo_string53:
	.asciz	"File"                          # string offset=843
.Linfo_string54:
	.asciz	"is_64"                         # string offset=848
.Linfo_string55:
	.asciz	"is_little_endian"              # string offset=854
.Linfo_string56:
	.asciz	"file_header"                   # string offset=871
.Linfo_string57:
	.asciz	"e_ident"                       # string offset=883
.Linfo_string58:
	.asciz	"e_type"                        # string offset=891
.Linfo_string59:
	.asciz	"ushort"                        # string offset=898
.Linfo_string60:
	.asciz	"Elf64_Half"                    # string offset=905
.Linfo_string61:
	.asciz	"e_machine"                     # string offset=916
.Linfo_string62:
	.asciz	"e_version"                     # string offset=926
.Linfo_string63:
	.asciz	"uint"                          # string offset=936
.Linfo_string64:
	.asciz	"Elf64_Word"                    # string offset=941
.Linfo_string65:
	.asciz	"e_entry"                       # string offset=952
.Linfo_string66:
	.asciz	"Elf64_Addr"                    # string offset=960
.Linfo_string67:
	.asciz	"e_phoff"                       # string offset=971
.Linfo_string68:
	.asciz	"Elf64_Off"                     # string offset=979
.Linfo_string69:
	.asciz	"e_shoff"                       # string offset=989
.Linfo_string70:
	.asciz	"e_flags"                       # string offset=997
.Linfo_string71:
	.asciz	"e_ehsize"                      # string offset=1005
.Linfo_string72:
	.asciz	"e_phentsize"                   # string offset=1014
.Linfo_string73:
	.asciz	"e_phnum"                       # string offset=1026
.Linfo_string74:
	.asciz	"e_shentsize"                   # string offset=1034
.Linfo_string75:
	.asciz	"e_shnum"                       # string offset=1046
.Linfo_string76:
	.asciz	"e_shstrndx"                    # string offset=1054
.Linfo_string77:
	.asciz	"Elf64_Ehdr"                    # string offset=1065
.Linfo_string78:
	.asciz	"i"                             # string offset=1076
.Linfo_string79:
	.asciz	"isz"                           # string offset=1078
.Linfo_string80:
	.asciz	"header"                        # string offset=1082
.Linfo_string81:
	.asciz	"p_type"                        # string offset=1089
.Linfo_string82:
	.asciz	"p_flags"                       # string offset=1096
.Linfo_string83:
	.asciz	"p_offset"                      # string offset=1104
.Linfo_string84:
	.asciz	"p_vaddr"                       # string offset=1113
.Linfo_string85:
	.asciz	"p_paddr"                       # string offset=1121
.Linfo_string86:
	.asciz	"p_filesz"                      # string offset=1129
.Linfo_string87:
	.asciz	"Elf64_Xword"                   # string offset=1138
.Linfo_string88:
	.asciz	"p_memsz"                       # string offset=1150
.Linfo_string89:
	.asciz	"p_align"                       # string offset=1158
.Linfo_string90:
	.asciz	"Elf64_Phdr"                    # string offset=1166
.Linfo_string91:
	.asciz	"Elf32_Half"                    # string offset=1177
.Linfo_string92:
	.asciz	"Elf32_Word"                    # string offset=1188
.Linfo_string93:
	.asciz	"Elf32_Addr"                    # string offset=1199
.Linfo_string94:
	.asciz	"Elf32_Off"                     # string offset=1210
.Linfo_string95:
	.asciz	"Elf32_Ehdr"                    # string offset=1220
.Linfo_string96:
	.asciz	"Elf32_Phdr"                    # string offset=1231
.Linfo_string97:
	.asciz	"list"                          # string offset=1242
.Linfo_string98:
	.asciz	"size"                          # string offset=1247
.Linfo_string99:
	.asciz	"capacity"                      # string offset=1252
.Linfo_string100:
	.asciz	"entries"                       # string offset=1261
.Linfo_string101:
	.asciz	"offset"                        # string offset=1269
.Linfo_string102:
	.asciz	"uptr"                          # string offset=1276
.Linfo_string103:
	.asciz	"function"                      # string offset=1281
.Linfo_string104:
	.asciz	"object_file"                   # string offset=1290
.Linfo_string105:
	.asciz	"line"                          # string offset=1302
.Linfo_string106:
	.asciz	"is_inline"                     # string offset=1307
.Linfo_string107:
	.asciz	"Backtrace"                     # string offset=1317
.Linfo_string108:
	.asciz	"Type"                          # string offset=1327
.Linfo_string109:
	.asciz	"Type*"                         # string offset=1332
.Linfo_string110:
	.asciz	"List"                          # string offset=1338
.Linfo_string111:
	.asciz	"BacktraceList"                 # string offset=1343
.Linfo_string112:
	.asciz	"BacktraceList*"                # string offset=1357
.Linfo_string113:
	.asciz	"addr"                          # string offset=1372
.Linfo_string114:
	.asciz	"buf"                           # string offset=1377
.Linfo_string115:
	.asciz	"exec_path"                     # string offset=1381
.Linfo_string116:
	.asciz	"obj_name"                      # string offset=1391
.Linfo_string117:
	.asciz	"addr2line"                     # string offset=1400
.Linfo_string118:
	.asciz	"info"                          # string offset=1410
.Linfo_string119:
	.asciz	"dli_fname"                     # string offset=1415
.Linfo_string120:
	.asciz	"ZString"                       # string offset=1425
.Linfo_string121:
	.asciz	"dli_fbase"                     # string offset=1433
.Linfo_string122:
	.asciz	"dli_sname"                     # string offset=1443
.Linfo_string123:
	.asciz	"dli_saddr"                     # string offset=1453
.Linfo_string124:
	.asciz	"Linux_Dl_info"                 # string offset=1463
.Linfo_string125:
	.asciz	"Linux_Dl_info*"                # string offset=1477
.Linfo_string126:
	.asciz	"obj_addr"                      # string offset=1492
.Linfo_string127:
	.asciz	"obj_path"                      # string offset=1501
.Linfo_string128:
	.asciz	"sname"                         # string offset=1510
.Linfo_string129:
	.asciz	"string"                        # string offset=1516
.Linfo_string130:
	.asciz	"func_name"                     # string offset=1523
.Linfo_string131:
	.asciz	"is_inlined"                    # string offset=1533
.Linfo_string132:
	.asciz	"mem"                           # string offset=1544
.Linfo_string133:
	.asciz	"parts"                         # string offset=1548
.Linfo_string134:
	.asciz	"String*"                       # string offset=1554
.Linfo_string135:
	.asciz	"String[]"                      # string offset=1562
.Linfo_string136:
	.asciz	"source"                        # string offset=1571
.Linfo_string137:
	.asciz	"index"                         # string offset=1578
.Linfo_string138:
	.asciz	"inline_parts"                  # string offset=1584
.Linfo_string139:
	.asciz	"last"                          # string offset=1597
.Linfo_string140:
	.asciz	".temp"                         # string offset=1602
.Linfo_string141:
	.asciz	"part"                          # string offset=1608
.Linfo_string142:
	.asciz	"trace"                         # string offset=1613
.Linfo_string143:
	.asciz	"backtrace"                     # string offset=1619
.Linfo_string144:
	.asciz	"void**"                        # string offset=1629
.Linfo_string145:
	.asciz	"void*[]"                       # string offset=1636
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	3381                            # Compilation Unit Length
	.long	194                             # DIE offset
	.asciz	"read_any"                      # External Name
	.long	206                             # DIE offset
	.asciz	"read_all"                      # External Name
	.long	231                             # DIE offset
	.asciz	"elf_module_image_base"         # External Name
	.long	663                             # DIE offset
	.asciz	"backtrace_add_from_exec"       # External Name
	.long	802                             # DIE offset
	.asciz	"backtrace_add_from_dlinfo"     # External Name
	.long	1260                            # DIE offset
	.asciz	"[DEFAULT INIT]"                # External Name
	.long	1272                            # DIE offset
	.asciz	"backtrace_line_parse"          # External Name
	.long	1517                            # DIE offset
	.asciz	"@stack_mem"                    # External Name
	.long	1571                            # DIE offset
	.asciz	"backtrace_add_addr2line"       # External Name
	.long	1879                            # DIE offset
	.asciz	"backtrace_add_element"         # External Name
	.long	1972                            # DIE offset
	.asciz	"@item_at"                      # External Name
	.long	1985                            # DIE offset
	.asciz	"symbolize_backtrace"           # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	3381                            # Compilation Unit Length
	.long	67                              # DIE offset
	.asciz	"usz"                           # External Name
	.long	76                              # DIE offset
	.asciz	"ulong"                         # External Name
	.long	1026                            # DIE offset
	.asciz	"char"                          # External Name
	.long	1040                            # DIE offset
	.asciz	"OnStackAllocator"              # External Name
	.long	1102                            # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	1132                            # DIE offset
	.asciz	"void*"                         # External Name
	.long	1141                            # DIE offset
	.asciz	"typeid"                        # External Name
	.long	1148                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	1178                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	1191                            # DIE offset
	.asciz	"OnStackAllocatorExtraChunk*"   # External Name
	.long	1204                            # DIE offset
	.asciz	"OnStackAllocatorExtraChunk"    # External Name
	.long	1253                            # DIE offset
	.asciz	"bool"                          # External Name
	.long	2168                            # DIE offset
	.asciz	"fault"                         # External Name
	.long	2177                            # DIE offset
	.asciz	"long"                          # External Name
	.long	2184                            # DIE offset
	.asciz	"String"                        # External Name
	.long	2193                            # DIE offset
	.asciz	"File"                          # External Name
	.long	2216                            # DIE offset
	.asciz	"CFile"                         # External Name
	.long	2241                            # DIE offset
	.asciz	"Elf64_Ehdr"                    # External Name
	.long	2446                            # DIE offset
	.asciz	"Elf64_Half"                    # External Name
	.long	2457                            # DIE offset
	.asciz	"ushort"                        # External Name
	.long	2464                            # DIE offset
	.asciz	"Elf64_Word"                    # External Name
	.long	2475                            # DIE offset
	.asciz	"uint"                          # External Name
	.long	2482                            # DIE offset
	.asciz	"Elf64_Addr"                    # External Name
	.long	2493                            # DIE offset
	.asciz	"Elf64_Off"                     # External Name
	.long	2504                            # DIE offset
	.asciz	"isz"                           # External Name
	.long	2513                            # DIE offset
	.asciz	"Elf64_Phdr"                    # External Name
	.long	2627                            # DIE offset
	.asciz	"Elf64_Xword"                   # External Name
	.long	2638                            # DIE offset
	.asciz	"Elf32_Ehdr"                    # External Name
	.long	2830                            # DIE offset
	.asciz	"Elf32_Half"                    # External Name
	.long	2841                            # DIE offset
	.asciz	"Elf32_Word"                    # External Name
	.long	2852                            # DIE offset
	.asciz	"Elf32_Addr"                    # External Name
	.long	2863                            # DIE offset
	.asciz	"Elf32_Off"                     # External Name
	.long	2874                            # DIE offset
	.asciz	"Elf32_Phdr"                    # External Name
	.long	2988                            # DIE offset
	.asciz	"BacktraceList*"                # External Name
	.long	3001                            # DIE offset
	.asciz	"BacktraceList"                 # External Name
	.long	3012                            # DIE offset
	.asciz	"List"                          # External Name
	.long	3074                            # DIE offset
	.asciz	"Type*"                         # External Name
	.long	3087                            # DIE offset
	.asciz	"Type"                          # External Name
	.long	3098                            # DIE offset
	.asciz	"Backtrace"                     # External Name
	.long	3199                            # DIE offset
	.asciz	"uptr"                          # External Name
	.long	3208                            # DIE offset
	.asciz	"Linux_Dl_info*"                # External Name
	.long	3221                            # DIE offset
	.asciz	"Linux_Dl_info"                 # External Name
	.long	3283                            # DIE offset
	.asciz	"ZString"                       # External Name
	.long	3294                            # DIE offset
	.asciz	"String[]"                      # External Name
	.long	3324                            # DIE offset
	.asciz	"String*"                       # External Name
	.long	3337                            # DIE offset
	.asciz	"void*[]"                       # External Name
	.long	3367                            # DIE offset
	.asciz	"void**"                        # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.io.file.open
	.weak	std.io.File.read
	.weak	std.io.File.close
	.weak	std.io.File.read_byte
	.weak	std.io.File.seek
	.weak	std.core.builtin.panicf
	.weak	std.os.process.execute_stdout_to_buffer
	.weak	std.core.string.bformat
	.weak	std.core.String.copy
	.weak	std.core.string.ZString.str_view
	.weak	std.core.mem.allocator.OnStackAllocator.init
	.weak	std.core.String.split
	.weak	std.core.String.trim
	.weak	std.core.mem.allocator.OnStackAllocator.free
	.weak	std.core.String.contains
	.weak	std.core.String.rindex_of_char
	.weak	std.core.String.to_uint
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.push
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.init
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.len
	.weak	std.os.backtrace.Backtrace.free
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.free
	.weak	std.core.builtin.panic
	.weak	std.core.mem.allocator.thread_allocator
	.weak	std.os.backtrace.BACKTRACE_UNKNOWN
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

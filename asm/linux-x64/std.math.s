	.text
	.file	"std::math"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function std.math._frexp
.LCPI0_0:
	.quad	0x43f0000000000000              # double 1.8446744073709552E+19
	.section	.text.std.math._frexp,"axG",@progbits,std.math._frexp,comdat
	.weak	std.math._frexp
	.p2align	4, 0x90
	.type	std.math._frexp,@function
std.math._frexp:                        # @std.math._frexp
.Lfunc_begin0:
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	1 1063 0                        # math.c3:1063:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp                      # imm = 0x1F0
	vmovsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, -32(%rbp)
.Ltmp0:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "builtin.c3"
	.loc	2 293 20 prologue_end           # builtin.c3:293:20
	leaq	-32(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_19
# %bb.1:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-32(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_20
# %bb.2:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.Ltmp1:
	.loc	1 1066 18 is_stmt 1             # math.c3:1066:18
	movq	-24(%rbp), %rax
	shrq	$52, %rax
	.loc	1 1066 11 is_stmt 0             # math.c3:1066:11
	andq	$2047, %rax                     # imm = 0x7FF
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -100(%rbp)
	movb	$1, -101(%rbp)
# %bb.3:
	.loc	1 0 11                          # math.c3:0:11
	movb	-101(%rbp), %cl
	movb	%cl, -393(%rbp)                 # 1-byte Spill
	andb	$1, %cl
.Ltmp2:
	.loc	1 1069 8 is_stmt 1              # math.c3:1069:8
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	sete	%al
	subb	%cl, %al
	jne	.LBB0_11
	jmp	.LBB0_4
.LBB0_4:
.Ltmp3:
	.loc	1 1070 9                        # math.c3:1070:9
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	vxorps	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jne	.LBB0_8
# %bb.5:
.Ltmp4:
	.loc	1 1072 6                        # math.c3:1072:6
	movq	-16(%rbp), %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_21
# %bb.6:
	.loc	1 0 6 is_stmt 0                 # math.c3:0:6
	movq	-408(%rbp), %rax                # 8-byte Reload
	.loc	1 1072 6                        # math.c3:1072:6
	andq	$3, %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_22
# %bb.7:
	.loc	1 0 6                           # math.c3:0:6
	movq	-408(%rbp), %rax                # 8-byte Reload
	.loc	1 1072 6                        # math.c3:1072:6
	movl	$0, (%rax)
	.loc	1 1073 12 is_stmt 1             # math.c3:1073:12
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	.loc	1 1073 12 epilogue_begin is_stmt 0 # math.c3:1073:12
	addq	$496, %rsp                      # imm = 0x1F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.LBB0_8:
	.cfi_def_cfa %rbp, 16
	.loc	1 1075 15 is_stmt 1             # math.c3:1075:15
	vmovsd	.LCPI0_0(%rip), %xmm0           # xmm0 = [1.8446744073709552E+19,0.0E+0]
	vmulsd	-8(%rbp), %xmm0, %xmm0
	.loc	1 1075 27 is_stmt 0             # math.c3:1075:27
	movq	-16(%rbp), %rdi
	.loc	1 1075 8                        # math.c3:1075:8
	callq	std.math._frexp@PLT
	vmovsd	%xmm0, -8(%rbp)
	.loc	1 1076 5 is_stmt 1              # math.c3:1076:5
	movq	-16(%rbp), %rax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_23
# %bb.9:
	.loc	1 0 5 is_stmt 0                 # math.c3:0:5
	movq	-424(%rbp), %rax                # 8-byte Reload
	.loc	1 1076 5                        # math.c3:1076:5
	andq	$3, %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_24
# %bb.10:
	.loc	1 0 5                           # math.c3:0:5
	movq	-424(%rbp), %rax                # 8-byte Reload
	.loc	1 1076 5                        # math.c3:1076:5
	movl	(%rax), %ecx
	.loc	1 1076 4                        # math.c3:1076:4
	subl	$64, %ecx
	movl	%ecx, (%rax)
	.loc	1 1077 11 is_stmt 1             # math.c3:1077:11
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	.loc	1 1077 11 epilogue_begin is_stmt 0 # math.c3:1077:11
	addq	$496, %rsp                      # imm = 0x1F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB0_11:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 11                          # math.c3:0:11
	movb	-393(%rbp), %cl                 # 1-byte Reload
	.loc	1 1078 8 is_stmt 1              # math.c3:1078:8
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	subl	$2047, %edx                     # imm = 0x7FF
	sete	%dl
	testl	%eax, %eax
	setns	%al
	andb	%dl, %al
	andb	$1, %cl
	subb	%cl, %al
	jne	.LBB0_13
	jmp	.LBB0_12
.LBB0_12:
.Ltmp7:
	.loc	1 1079 11                       # math.c3:1079:11
	vmovsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	.loc	1 1079 11 epilogue_begin is_stmt 0 # math.c3:1079:11
	addq	$496, %rsp                      # imm = 0x1F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_13:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB0_14
.Ltmp8:
.LBB0_14:
	.loc	1 1081 9 is_stmt 1              # math.c3:1081:9
	movl	-100(%rbp), %eax
	subl	$1022, %eax                     # imm = 0x3FE
	movl	%eax, -444(%rbp)                # 4-byte Spill
	.loc	1 1081 5 is_stmt 0              # math.c3:1081:5
	movq	-16(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_25
# %bb.15:
	.loc	1 0 5                           # math.c3:0:5
	movq	-440(%rbp), %rax                # 8-byte Reload
	.loc	1 1081 5                        # math.c3:1081:5
	andq	$3, %rax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_26
# %bb.16:
	.loc	1 0 5                           # math.c3:0:5
	movq	-440(%rbp), %rax                # 8-byte Reload
	movl	-444(%rbp), %ecx                # 4-byte Reload
	.loc	1 1081 5                        # math.c3:1081:5
	movl	%ecx, (%rax)
	.loc	1 1082 4 is_stmt 1              # math.c3:1082:4
	movabsq	$-9218868437227405313, %rax     # imm = 0x800FFFFFFFFFFFFF
	andq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc	1 1083 4                        # math.c3:1083:4
	movabsq	$4602678819172646912, %rax      # imm = 0x3FE0000000000000
	orq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)
.Ltmp9:
	.loc	2 293 20                        # builtin.c3:293:20
	leaq	-312(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_27
# %bb.17:
	.loc	2 293 11 is_stmt 0              # builtin.c3:293:11
	leaq	-312(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -464(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_28
# %bb.18:
	vmovsd	-312(%rbp), %xmm0               # xmm0 = mem[0],zero
	.loc	2 293 11 epilogue_begin         # builtin.c3:293:11
	addq	$496, %rsp                      # imm = 0x1F0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.LBB0_19:
	.cfi_def_cfa %rbp, 16
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg(%rip), %rdi
	movl	$54, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB0_20:
	.loc	2 0 11                          # builtin.c3:0:11
	movq	-392(%rbp), %rcx                # 8-byte Reload
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
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	leaq	-96(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp11:
.LBB0_21:
	.loc	1 1072 6 is_stmt 1              # math.c3:1072:6
	leaq	.panic_msg.2(%rip), %rdi
	movl	$42, %esi
	leaq	.file.3(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$1072, (%rsp)                   # imm = 0x430
	callq	*(%rax)
.LBB0_22:
	.loc	1 0 6 is_stmt 0                 # math.c3:0:6
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	$4, -112(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -120(%rbp)
	movq	%rax, -152(%rbp)
	leaq	-112(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	%rax, -136(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$2, -168(%rbp)
	.loc	1 1072 6                        # math.c3:1072:6
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file.3(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	leaq	-176(%rbp), %rax
	movl	$1072, (%rsp)                   # imm = 0x430
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp12:
.LBB0_23:
	.loc	1 1076 5 is_stmt 1              # math.c3:1076:5
	leaq	.panic_msg.2(%rip), %rdi
	movl	$42, %esi
	leaq	.file.3(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$1076, (%rsp)                   # imm = 0x434
	callq	*(%rax)
.LBB0_24:
	.loc	1 0 5 is_stmt 0                 # math.c3:0:5
	movq	-432(%rbp), %rcx                # 8-byte Reload
	movq	$4, -184(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -192(%rbp)
	movq	%rax, -216(%rbp)
	leaq	-184(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	%rax, -200(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$2, -232(%rbp)
	.loc	1 1076 5                        # math.c3:1076:5
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file.3(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	leaq	-240(%rbp), %rax
	movl	$1076, (%rsp)                   # imm = 0x434
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp13:
.LBB0_25:
	.loc	1 1081 5 is_stmt 1              # math.c3:1081:5
	leaq	.panic_msg.2(%rip), %rdi
	movl	$42, %esi
	leaq	.file.3(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$1081, (%rsp)                   # imm = 0x439
	callq	*(%rax)
.LBB0_26:
	.loc	1 0 5 is_stmt 0                 # math.c3:0:5
	movq	-456(%rbp), %rcx                # 8-byte Reload
	movq	$4, -248(%rbp)
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
	.loc	1 1081 5                        # math.c3:1081:5
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file.3(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	leaq	-304(%rbp), %rax
	movl	$1081, (%rsp)                   # imm = 0x439
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_27:
.Ltmp14:
	.loc	2 293 11 is_stmt 1              # builtin.c3:293:11
	leaq	.panic_msg(%rip), %rdi
	movl	$54, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	callq	*(%rax)
.LBB0_28:
	.loc	2 0 11 is_stmt 0                # builtin.c3:0:11
	movq	-464(%rbp), %rcx                # 8-byte Reload
	movq	$8, -320(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -328(%rbp)
	movq	%rax, -360(%rbp)
	leaq	-320(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	%rax, -344(%rbp)
	leaq	-328(%rbp), %rax
	movq	%rax, -352(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$2, -376(%rbp)
	.loc	2 293 11                        # builtin.c3:293:11
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	leaq	-384(%rbp), %rax
	movl	$293, (%rsp)                    # imm = 0x125
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp15:
.Lfunc_end0:
	.size	std.math._frexp, .Lfunc_end0-std.math._frexp
	.cfi_endproc
                                        # -- End function
	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Dereference of null pointer, '($Type*)&expr' was null."
	.size	.panic_msg, 55

	.type	.file,@object                   # @.file
.file:
	.asciz	"builtin.c3"
	.size	.file, 11

	.type	.func,@object                   # @.func
.func:
	.asciz	"_frexp"
	.size	.func, 7

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

	.type	.panic_msg.1,@object            # @.panic_msg.1
	.section	.rodata,"a",@progbits
.panic_msg.1:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.1, 95

	.type	.panic_msg.2,@object            # @.panic_msg.2
.panic_msg.2:
	.asciz	"Dereference of null pointer, 'e' was null."
	.size	.panic_msg.2, 43

	.type	.file.3,@object                 # @.file.3
.file.3:
	.asciz	"math.c3"
	.size	.file.3, 8

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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0xd3 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0xd DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x37:0xd DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	290                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x44:0x77 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	1063                            # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	187                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x62:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	1063                            # DW_AT_decl_line
	.long	187                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x71:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	1063                            # DW_AT_decl_line
	.long	194                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x80:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	1065                            # DW_AT_decl_line
	.long	214                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x90:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\234\177"
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	1066                            # DW_AT_decl_line
	.long	207                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xa0:0xd DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	1065                            # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0xad:0xd DW_TAG_inlined_subroutine
	.long	55                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	1084                            # DW_AT_call_line
	.byte	11                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xbb:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xc2:0xd DW_TAG_pointer_type
	.long	207                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	8                               # Abbrev [8] 0xcf:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xd6:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"complex.c3"                    # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" # string offset=15
.Linfo_string3:
	.asciz	"bitcast"                       # string offset=85
.Linfo_string4:
	.asciz	"std.math._frexp"               # string offset=93
.Linfo_string5:
	.asciz	"_frexp"                        # string offset=109
.Linfo_string6:
	.asciz	"double"                        # string offset=116
.Linfo_string7:
	.asciz	"x"                             # string offset=123
.Linfo_string8:
	.asciz	"e"                             # string offset=125
.Linfo_string9:
	.asciz	"int"                           # string offset=127
.Linfo_string10:
	.asciz	"int*"                          # string offset=131
.Linfo_string11:
	.asciz	"i"                             # string offset=136
.Linfo_string12:
	.asciz	"ulong"                         # string offset=138
.Linfo_string13:
	.asciz	"ee"                            # string offset=144
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	222                             # Compilation Unit Length
	.long	55                              # DIE offset
	.asciz	"bitcast"                       # External Name
	.long	68                              # DIE offset
	.asciz	"_frexp"                        # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	222                             # Compilation Unit Length
	.long	187                             # DIE offset
	.asciz	"double"                        # External Name
	.long	194                             # DIE offset
	.asciz	"int*"                          # External Name
	.long	207                             # DIE offset
	.asciz	"int"                           # External Name
	.long	214                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

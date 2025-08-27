	.text
	.file	"main"
	.file	1 "/home/user/code/c3/closures.c3l/example" "main.c3"
	.globl	main.add3                       # -- Begin function main.add3
	.p2align	4, 0x90
	.type	main.add3,@function
main.add3:                              # @main.add3
.Lfunc_begin0:
	.loc	1 7 0                           # main.c3:7:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
.Ltmp0:
	.loc	1 9 30 prologue_end             # main.c3:9:30
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	-4(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	.loc	1 9 33 is_stmt 0                # main.c3:9:33
	movq	%rax, -40(%rbp)
	leaq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	.loc	1 9 36                          # main.c3:9:36
	movq	%rax, -24(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc	1 9 2                           # main.c3:9:2
	leaq	-72(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$12, %edx
	leaq	-64(%rbp), %rcx
	movl	$3, %r8d
	callq	std.io.printfn@PLT
	.loc	1 10 9 is_stmt 1                # main.c3:10:9
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	.loc	1 10 9 epilogue_begin is_stmt 0 # main.c3:10:9
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	main.add3, .Lfunc_end0-main.add3
	.cfi_endproc
                                        # -- End function
	.globl	print_something                 # -- Begin function print_something
	.p2align	4, 0x90
	.type	print_something,@function
print_something:                        # @print_something
.Lfunc_begin1:
	.loc	1 19 0 is_stmt 1                # main.c3:19:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
.Ltmp2:
	.loc	1 21 2 prologue_end             # main.c3:21:2
	leaq	-8(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	movl	$20, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%r8, %rcx
	callq	std.io.printfn@PLT
	.loc	1 21 2 epilogue_begin is_stmt 0 # main.c3:21:2
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	print_something, .Lfunc_end1-print_something
	.cfi_endproc
                                        # -- End function
	.globl	main.main                       # -- Begin function main.main
	.p2align	4, 0x90
	.type	main.main,@function
main.main:                              # @main.main
.Lfunc_begin2:
	.loc	1 25 0 is_stmt 1                # main.c3:25:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$3232, %rsp                     # imm = 0xCA0
	movq	$0, -2208(%rbp)
	movq	$0, -1944(%rbp)
	movq	$0, -1352(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
.Ltmp4:
	.loc	1 28 2 prologue_end             # main.c3:28:2
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-24(%rbp), %rdi
	movl	$8, %edx
	movq	%r8, %rcx
	callq	std.io.printfn@PLT
	.loc	1 29 2                          # main.c3:29:2
	movq	code_len__@GOTTPOFF(%rip), %rdx
	movq	%rdx, -2512(%rbp)               # 8-byte Spill
	movq	%fs:0, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	.loc	1 29 13 is_stmt 0               # main.c3:29:13
	movq	$2, %fs:(%rdx)
	.loc	1 31 1 is_stmt 1                # main.c3:31:1
	#APP

	pushq	%rax

	pushq	%rbx


	# First, load the address of "start:" into "code_ptr__"
	movq	code_ptr__@GOTTPOFF(%rip), %rax

	leaq	.start.exec, %rbx

	movq	%rbx, %fs:(%rax)

	# Second, get the length of the assembly in bytes
	leaq	.start.exec, %rax

	leaq	.end, %rbx

	subq	%rax, %rbx


	movq	code_len__@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)

	jmp	.end


.start:
.start.data:
	.quad	0
.start.exec:
	# retq;
	# movq $0xa1a1a1a1a1a1a1, %rax;
	#movq $0, %rax;
	#jmp m16 %rax;
	# pushq .end1;
	# retq;
	# jmps .end1;
	# mov (%rsp), %rax;
	# sub print_something@PLT %rax
	leaq	print_something, %rax

	# movq $0, %rax;
	# callq *%rax;
	# call print_something@PLT;
	# jmp *print_something;
	jmpq	*%rax

	retq

	# jmp .end1;
.end:
	popq	%rbx

	popq	%rax

.end1:
	nop


	#NO_APP
	.loc	1 76 44                         # main.c3:76:44
	movq	code_ptr__@GOTTPOFF(%rip), %rdx
	addq	%rdx, %rcx
	movq	($ct.p$void)@GOTPCREL(%rip), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc	1 76 54 is_stmt 0               # main.c3:76:54
	movq	($ct.ulong)@GOTPCREL(%rip), %rcx
	movq	%rcx, -2504(%rbp)               # 8-byte Spill
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 76 2                          # main.c3:76:2
	leaq	.L.str.4(%rip), %rsi
	leaq	-72(%rbp), %rdi
	movl	$26, %edx
	leaq	-64(%rbp), %rcx
	movl	$2, %r8d
	callq	std.io.printfn@PLT
                                        # kill: def $rcx killed $rax
	movq	-2512(%rbp), %rax               # 8-byte Reload
	.loc	1 88 46 is_stmt 1               # main.c3:88:46
	movq	%fs:(%rax), %rdi
	.loc	1 88 23 is_stmt 0               # main.c3:88:23
	callq	std.core.mem.vm.aligned_alloc_size@PLT
	movq	%rax, %rcx
	movq	-2504(%rbp), %rax               # 8-byte Reload
	movq	%rcx, -80(%rbp)
	.loc	1 89 37 is_stmt 1               # main.c3:89:37
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc	1 89 2 is_stmt 0                # main.c3:89:2
	leaq	-104(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$19, %edx
	leaq	-96(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 90 52 is_stmt 1               # main.c3:90:52
	movl	$6, %edi
	callq	std.core.mem.vm.VirtualMemoryAccess.to_posix@PLT
	movl	%eax, %edx
	.loc	1 90 125 is_stmt 0              # main.c3:90:125
	movq	-80(%rbp), %rsi
	.loc	1 90 18                         # main.c3:90:18
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$34, %ecx
	movl	$4294967295, %r8d               # imm = 0xFFFFFFFF
	movq	%r9, %rdi
	callq	mmap@PLT
	movq	%rax, -112(%rbp)
	.loc	1 91 6 is_stmt 1                # main.c3:91:6
	movq	$-1, %rax
	cmpq	%rax, -112(%rbp)
	jne	.LBB2_2
# %bb.1:
.Ltmp5:
	.loc	1 93 28                         # main.c3:93:28
	callq	libc.errno@PLT
	movl	%eax, -132(%rbp)
	movq	($ct.libc.Errno)@GOTPCREL(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	-132(%rbp), %rax
	movq	%rax, -128(%rbp)
	.loc	1 93 3 is_stmt 0                # main.c3:93:3
	leaq	-144(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$9, %edx
	leaq	-128(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 94 10 is_stmt 1               # main.c3:94:10
	movl	$1, %eax
	.loc	1 94 10 epilogue_begin is_stmt 0 # main.c3:94:10
	addq	$3232, %rsp                     # imm = 0xCA0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB2_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 96 40 is_stmt 1               # main.c3:96:40
	movq	code_ptr__@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -2536(%rbp)               # 8-byte Spill
	.loc	1 96 51 is_stmt 0               # main.c3:96:51
	movq	code_len__@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -2528(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -2520(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_113
# %bb.3:
	.loc	1 0 51                          # main.c3:0:51
	movq	-2536(%rbp), %rax               # 8-byte Reload
	movq	-2528(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -2576(%rbp)               # 8-byte Spill
	movq	%rax, -2568(%rbp)               # 8-byte Spill
	.loc	1 96 10                         # main.c3:96:10
	movq	-112(%rbp), %rax
	movq	%rax, -2560(%rbp)               # 8-byte Spill
	.loc	1 96 20                         # main.c3:96:20
	movq	code_len__@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -2552(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -2544(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_114
# %bb.4:
	.loc	1 0 20                          # main.c3:0:20
	movq	-2576(%rbp), %rcx               # 8-byte Reload
	movq	-2560(%rbp), %rdx               # 8-byte Reload
	movq	-2552(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2592(%rbp)               # 8-byte Spill
	movq	%rdx, -2584(%rbp)               # 8-byte Spill
	.loc	1 96 2                          # main.c3:96:2
	cmpq	%rcx, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_115
# %bb.5:
	.loc	1 0 2                           # main.c3:0:2
	movq	-2576(%rbp), %rdx               # 8-byte Reload
	movq	-2568(%rbp), %rsi               # 8-byte Reload
	movq	-2584(%rbp), %rdi               # 8-byte Reload
	.loc	1 96 2                          # main.c3:96:2
	callq	memmove@PLT
	.loc	1 97 21 is_stmt 1               # main.c3:97:21
	movq	-112(%rbp), %rax
	movq	%rax, -312(%rbp)
	.loc	1 98 36                         # main.c3:98:36
	movq	($ct.p$void)@GOTPCREL(%rip), %rax
	movq	%rax, -344(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -352(%rbp)
	.loc	1 98 45 is_stmt 0               # main.c3:98:45
	movq	($ct.fn$void$$)@GOTPCREL(%rip), %rax
	movq	%rax, -328(%rbp)
	leaq	-312(%rbp), %rax
	movq	%rax, -336(%rbp)
	.loc	1 98 2                          # main.c3:98:2
	leaq	-360(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$18, %edx
	leaq	-352(%rbp), %rcx
	movl	$2, %r8d
	callq	std.io.printfn@PLT
	.loc	1 99 2 is_stmt 1                # main.c3:99:2
	movq	-312(%rbp), %rax
	movq	%rax, -2600(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_116
# %bb.6:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2600(%rbp), %rax               # 8-byte Reload
	.loc	1 99 2                          # main.c3:99:2
	callq	*%rax
	.loc	1 100 25 is_stmt 1              # main.c3:100:25
	movq	-112(%rbp), %rdi
	movq	-80(%rbp), %rsi
	.loc	1 100 2 is_stmt 0               # main.c3:100:2
	callq	munmap@PLT
	.loc	1 102 10 is_stmt 1              # main.c3:102:10
	movl	$1, -364(%rbp)
	movq	main.add3@GOTPCREL(%rip), %rax
	movq	%rax, -384(%rbp)
.Ltmp7:
	.file	2 "/home/user/code/c3/closures.c3l" "closure.c3"
	.loc	2 16 27                         # closure.c3:16:27
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -416(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -432(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -448(%rbp)
.Ltmp8:
	.loc	2 56 9                          # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_8
# %bb.7:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$34, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_8:
	.loc	2 66 4                          # closure.c3:66:4
	movq	-440(%rbp), %rax
	.loc	2 66 9 is_stmt 0                # closure.c3:66:9
	addq	$8, %rax
	movq	%rax, -2616(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2608(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_117
# %bb.9:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2616(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-364(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$2, -516(%rbp)
	movq	-440(%rbp), %rax
	.loc	2 66 9                          # closure.c3:66:9
	addq	$16, %rax
	movq	%rax, -2632(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2624(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_118
# %bb.10:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2632(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-516(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-448(%rbp), %rax
	movq	%rax, -2656(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-440(%rbp), %rax
	movq	%rax, -2648(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -2640(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_119
# %bb.11:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-2648(%rbp), %rax               # 8-byte Reload
	movq	-2656(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-440(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp9:
	.file	3 "/home/user/code/c3/closures.c3l" "generated.c3"
	.loc	3 168 19 is_stmt 1              # generated.c3:168:19
	movq	"closure.@generate_closure_call_func$lambda2"@GOTPCREL(%rip), %rax
	movq	%rax, -664(%rbp)
	.loc	3 184 10                        # generated.c3:184:10
	movq	-664(%rbp), %rax
	movq	%rax, -2664(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_120
# %bb.12:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-2664(%rbp), %rax               # 8-byte Reload
	.loc	3 184 4                         # generated.c3:184:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	3 185 11 is_stmt 1              # generated.c3:185:11
	movq	-664(%rbp), %rax
	movq	%rax, -376(%rbp)
.Ltmp10:
	.loc	1 104 23                        # main.c3:104:23
	movq	-376(%rbp), %rax
	movq	%rax, -2672(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_121
# %bb.13:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-2672(%rbp), %rax               # 8-byte Reload
	movl	$3, %edi
	.loc	1 104 23                        # main.c3:104:23
	callq	*%rax
	movl	%eax, -692(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -680(%rbp)
	leaq	-692(%rbp), %rax
	movq	%rax, -688(%rbp)
	.loc	1 104 2                         # main.c3:104:2
	leaq	-704(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$5, %edx
	leaq	-688(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 105 6 is_stmt 1               # main.c3:105:6
	movl	$5, -364(%rbp)
	.loc	1 106 23                        # main.c3:106:23
	movq	-376(%rbp), %rax
	movq	%rax, -2680(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_122
# %bb.14:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-2680(%rbp), %rax               # 8-byte Reload
	movl	$3, %edi
	.loc	1 106 23                        # main.c3:106:23
	callq	*%rax
	movl	%eax, -724(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -712(%rbp)
	leaq	-724(%rbp), %rax
	movq	%rax, -720(%rbp)
	.loc	1 106 2                         # main.c3:106:2
	leaq	.L.str.16(%rip), %rsi
	leaq	-736(%rbp), %rdi
	movl	$5, %edx
	leaq	-720(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	leaq	main.main$lambda1(%rip), %rax
	movq	%rax, -752(%rbp)
.Ltmp11:
	.loc	2 16 27 is_stmt 1               # closure.c3:16:27
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -784(%rbp)
	movq	$0, -768(%rbp)
	movq	$0, -792(%rbp)
	movq	$0, -800(%rbp)
	leaq	-784(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-752(%rbp), %rax
	movq	%rax, -816(%rbp)
.Ltmp12:
	.loc	2 56 9                          # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_16
# %bb.15:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$34, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_16:
	.loc	2 0 9 is_stmt 0                 # closure.c3:0:9
	leaq	-364(%rbp), %rax
	movq	%rax, -824(%rbp)
	.loc	2 66 4 is_stmt 1                # closure.c3:66:4
	movq	-808(%rbp), %rax
	.loc	2 66 9 is_stmt 0                # closure.c3:66:9
	addq	$8, %rax
	movq	%rax, -2696(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2688(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_123
# %bb.17:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2696(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-824(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-808(%rbp), %rax
	.loc	2 66 9                          # closure.c3:66:9
	addq	$16, %rax
	movq	%rax, -2712(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2704(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_124
# %bb.18:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2712(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-376(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-816(%rbp), %rax
	movq	%rax, -2736(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-808(%rbp), %rax
	movq	%rax, -2728(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -2720(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_125
# %bb.19:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-2728(%rbp), %rax               # 8-byte Reload
	movq	-2736(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-808(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp13:
	.loc	3 83 19 is_stmt 1               # generated.c3:83:19
	movq	"closure.@generate_closure_call_func$lambda4"@GOTPCREL(%rip), %rax
	movq	%rax, -1032(%rbp)
	.loc	3 99 10                         # generated.c3:99:10
	movq	-1032(%rbp), %rax
	movq	%rax, -2744(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_126
# %bb.20:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-2744(%rbp), %rax               # 8-byte Reload
	.loc	3 99 4                          # generated.c3:99:4
	callq	*%rax
	.loc	3 100 11 is_stmt 1              # generated.c3:100:11
	movq	-1032(%rbp), %rax
	movq	%rax, -744(%rbp)
.Ltmp14:
	.loc	1 115 2                         # main.c3:115:2
	movq	-744(%rbp), %rax
	movq	%rax, -2752(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_127
# %bb.21:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2752(%rbp), %rax               # 8-byte Reload
	.loc	1 115 2                         # main.c3:115:2
	callq	*%rax
	.loc	1 116 2 is_stmt 1               # main.c3:116:2
	movq	-744(%rbp), %rax
	movq	%rax, -2760(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_128
# %bb.22:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2760(%rbp), %rax               # 8-byte Reload
	.loc	1 116 2                         # main.c3:116:2
	callq	*%rax
	leaq	main.main$lambda2(%rip), %rax
	movq	%rax, -1040(%rbp)
.Ltmp15:
	.loc	2 16 27 is_stmt 1               # closure.c3:16:27
	movq	$0, -1048(%rbp)
	movq	$0, -1056(%rbp)
	movq	$0, -1064(%rbp)
	leaq	-1048(%rbp), %rax
	movq	%rax, -1072(%rbp)
	movq	-1040(%rbp), %rax
	movq	%rax, -1080(%rbp)
.Ltmp16:
	.loc	2 56 9                          # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_24
# %bb.23:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$34, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_24:
	.loc	2 84 19                         # closure.c3:84:19
	movq	-1080(%rbp), %rax
	movq	%rax, -2784(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-1072(%rbp), %rax
	movq	%rax, -2776(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -2768(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_129
# %bb.25:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-2776(%rbp), %rax               # 8-byte Reload
	movq	-2784(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-1072(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp17:
	.loc	3 58 19 is_stmt 1               # generated.c3:58:19
	movq	"closure.@generate_closure_call_func$lambda6"@GOTPCREL(%rip), %rax
	movq	%rax, -1160(%rbp)
	.loc	3 74 10                         # generated.c3:74:10
	movq	-1160(%rbp), %rax
	movq	%rax, -2792(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_130
# %bb.26:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-2792(%rbp), %rax               # 8-byte Reload
	.loc	3 74 4                          # generated.c3:74:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	3 75 11 is_stmt 1               # generated.c3:75:11
	movq	-1160(%rbp), %rax
	movq	%rax, -376(%rbp)
.Ltmp18:
	.loc	1 124 2                         # main.c3:124:2
	movq	-744(%rbp), %rax
	movq	%rax, -2800(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_131
# %bb.27:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2800(%rbp), %rax               # 8-byte Reload
	.loc	1 124 2                         # main.c3:124:2
	callq	*%rax
	.loc	1 127 39 is_stmt 1              # main.c3:127:39
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -1216(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -1208(%rbp)
	movq	main.add3@GOTPCREL(%rip), %rax
	movq	%rax, -1224(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -1256(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -1248(%rbp)
	movq	$3, -1264(%rbp)
	movq	-1256(%rbp), %rax
	movq	%rax, -1288(%rbp)
	movq	-1248(%rbp), %rax
	movq	%rax, -1280(%rbp)
	movq	-1264(%rbp), %rax
	movq	%rax, -1296(%rbp)
	movq	-1288(%rbp), %rax
	movq	%rax, -1312(%rbp)
	movq	-1280(%rbp), %rax
	movq	%rax, -1304(%rbp)
.Ltmp19:
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	4 304 55                        # mem_allocator.c3:304:55
	movq	-1296(%rbp), %rax
	.loc	4 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -1320(%rbp)
.Ltmp20:
	.loc	4 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -1320(%rbp)
	jne	.LBB2_29
# %bb.28:
	.loc	4 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -1328(%rbp)
	jmp	.LBB2_47
.LBB2_29:
	.loc	4 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-1320(%rbp), %rax
	movq	%rax, -2816(%rbp)               # 8-byte Spill
	.loc	4 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -2801(%rbp)                # 1-byte Spill
	jne	.LBB2_33
# %bb.30:
	.loc	4 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -1336(%rbp)
.Ltmp21:
	.file	5 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-1336(%rbp), %rcx
	movb	%al, -2817(%rbp)                # 1-byte Spill
	je	.LBB2_32
# %bb.31:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-1336(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-1336(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -2817(%rbp)                # 1-byte Spill
.LBB2_32:
	.loc	5 0 19                          # math.c3:0:19
	movb	-2817(%rbp), %al                # 1-byte Reload
	movb	%al, -2801(%rbp)                # 1-byte Spill
.LBB2_33:
	movb	-2801(%rbp), %al                # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_35
.Ltmp22:
# %bb.34:
	.loc	4 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.18(%rip), %rdi
	movl	$65, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_35:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_37
	jmp	.LBB2_36
.LBB2_36:
	leaq	.panic_msg.20(%rip), %rdi
	movl	$80, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_37:
	.loc	4 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-2816(%rbp), %rcx               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB2_39
# %bb.38:
	leaq	.panic_msg.21(%rip), %rdi
	movl	$59, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_39:
	movq	-1304(%rbp), %rax
	movq	%rax, -2832(%rbp)               # 8-byte Spill
	cmpq	-1352(%rbp), %rax
	je	.LBB2_41
# %bb.40:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-2832(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-2832(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -1344(%rbp)
	movq	%rcx, -1352(%rbp)
	movq	%rax, -2840(%rbp)               # 8-byte Spill
	jmp	.LBB2_42
.LBB2_41:
	movq	-1344(%rbp), %rax
	movq	%rax, -2840(%rbp)               # 8-byte Spill
.LBB2_42:
	movq	-2840(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2848(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB2_44
# %bb.43:
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_44:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-2848(%rbp), %rax               # 8-byte Reload
	movq	-2816(%rbp), %rdx               # 8-byte Reload
	movq	-1312(%rbp), %rsi
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	-1360(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -2856(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_46
# %bb.45:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-2856(%rbp), %rax               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -1272(%rbp)
	jmp	.LBB2_49
.LBB2_46:
	movq	-1360(%rbp), %rax
	movq	%rax, -1328(%rbp)
.LBB2_47:
	movq	-1328(%rbp), %rax
	movq	%rax, -2880(%rbp)               # 8-byte Spill
.Ltmp23:
	.loc	4 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-1296(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -2872(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -2864(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_132
# %bb.48:
	.loc	4 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-2880(%rbp), %rax               # 8-byte Reload
	movq	-2872(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -2896(%rbp)               # 8-byte Spill
	movq	%rax, -2888(%rbp)               # 8-byte Spill
	.loc	4 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB2_50
.LBB2_49:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -1416(%rbp)
	leaq	-1272(%rbp), %rax
	movq	%rax, -1424(%rbp)
	leaq	-1424(%rbp), %rax
	movq	%rax, -1440(%rbp)
	movq	$1, -1432(%rbp)
.Ltmp24:
	.loc	4 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.23(%rip), %rdi
	movl	$36, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1440(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_50:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-2896(%rbp), %rax               # 8-byte Reload
	movq	-2888(%rbp), %rcx               # 8-byte Reload
	.loc	4 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -1240(%rbp)
	movq	%rax, -1232(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -1464(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -1456(%rbp)
	movq	-1240(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movq	-1224(%rbp), %rax
	movq	%rax, -1480(%rbp)
.Ltmp25:
	.loc	2 56 9 is_stmt 1                # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_52
# %bb.51:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$34, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_52:
	.loc	2 74 4                          # closure.c3:74:4
	movq	-1472(%rbp), %rax
	.loc	2 74 9 is_stmt 0                # closure.c3:74:9
	addq	$8, %rax
	movq	%rax, -2912(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2904(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_133
# %bb.53:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2912(%rbp), %rax               # 8-byte Reload
	.loc	2 74 4                          # closure.c3:74:4
	leaq	-364(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$4, -1556(%rbp)
	movq	-1472(%rbp), %rax
	.loc	2 74 9                          # closure.c3:74:9
	addq	$16, %rax
	movq	%rax, -2928(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2920(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_134
# %bb.54:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2928(%rbp), %rax               # 8-byte Reload
	.loc	2 74 4                          # closure.c3:74:4
	leaq	-1556(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-1480(%rbp), %rax
	movq	%rax, -2952(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-1472(%rbp), %rax
	movq	%rax, -2944(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -2936(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_135
# %bb.55:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-2944(%rbp), %rax               # 8-byte Reload
	movq	-2952(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-1472(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp26:
	.loc	3 168 19 is_stmt 1              # generated.c3:168:19
	movq	"closure.@generate_closure_call_func$lambda7"@GOTPCREL(%rip), %rax
	movq	%rax, -1704(%rbp)
	.loc	3 184 10                        # generated.c3:184:10
	movq	-1704(%rbp), %rax
	movq	%rax, -2960(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_136
# %bb.56:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-2960(%rbp), %rax               # 8-byte Reload
	.loc	3 184 4                         # generated.c3:184:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	3 185 11 is_stmt 1              # generated.c3:185:11
	movq	-1704(%rbp), %rax
	movq	%rax, -1448(%rbp)
.Ltmp27:
	.loc	2 32 33                         # closure.c3:32:33
	movq	-1448(%rbp), %rax
	movq	%rax, -1744(%rbp)
	.loc	2 32 9 is_stmt 0                # closure.c3:32:9
	movq	-1216(%rbp), %rax
	movq	%rax, -1736(%rbp)
	movq	-1208(%rbp), %rax
	movq	%rax, -1728(%rbp)
	movq	-1240(%rbp), %rax
	movq	%rax, -1720(%rbp)
	movq	$0, -1712(%rbp)
	vmovdqu	-1744(%rbp), %xmm0
	vmovdqu	-1728(%rbp), %xmm1
	vmovdqa	%xmm1, -1184(%rbp)
	vmovdqa	%xmm0, -1200(%rbp)
	movq	-1712(%rbp), %rax
	movq	%rax, -1168(%rbp)
.Ltmp28:
	.loc	1 129 26 is_stmt 1              # main.c3:129:26
	movq	-1200(%rbp), %rax
	movq	%rax, -2968(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_137
# %bb.57:
	.loc	1 0 26 is_stmt 0                # main.c3:0:26
	movq	-2968(%rbp), %rax               # 8-byte Reload
	movl	$6, %edi
	.loc	1 129 26                        # main.c3:129:26
	callq	*%rax
	movl	%eax, -1764(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -1752(%rbp)
	leaq	-1764(%rbp), %rax
	movq	%rax, -1760(%rbp)
	.loc	1 129 2                         # main.c3:129:2
	leaq	-1776(%rbp), %rdi
	leaq	.L.str.24(%rip), %rsi
	movl	$8, %edx
	leaq	-1760(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 131 10 is_stmt 1              # main.c3:131:10
	movl	$5, -1780(%rbp)
	.loc	1 134 49                        # main.c3:134:49
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -1808(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -1800(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rax, -1816(%rbp)
	movq	-1808(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-1800(%rbp), %rax
	movq	%rax, -1840(%rbp)
	movq	$2, -1856(%rbp)
	movq	-1848(%rbp), %rax
	movq	%rax, -1880(%rbp)
	movq	-1840(%rbp), %rax
	movq	%rax, -1872(%rbp)
	movq	-1856(%rbp), %rax
	movq	%rax, -1888(%rbp)
	movq	-1880(%rbp), %rax
	movq	%rax, -1904(%rbp)
	movq	-1872(%rbp), %rax
	movq	%rax, -1896(%rbp)
.Ltmp29:
	.loc	4 304 55                        # mem_allocator.c3:304:55
	movq	-1888(%rbp), %rax
	.loc	4 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -1912(%rbp)
.Ltmp30:
	.loc	4 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -1912(%rbp)
	jne	.LBB2_59
# %bb.58:
	.loc	4 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -1920(%rbp)
	jmp	.LBB2_77
.LBB2_59:
	.loc	4 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-1912(%rbp), %rax
	movq	%rax, -2984(%rbp)               # 8-byte Spill
	.loc	4 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -2969(%rbp)                # 1-byte Spill
	jne	.LBB2_63
# %bb.60:
	.loc	4 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -1928(%rbp)
.Ltmp31:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-1928(%rbp), %rcx
	movb	%al, -2985(%rbp)                # 1-byte Spill
	je	.LBB2_62
# %bb.61:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-1928(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-1928(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -2985(%rbp)                # 1-byte Spill
.LBB2_62:
	.loc	5 0 19                          # math.c3:0:19
	movb	-2985(%rbp), %al                # 1-byte Reload
	movb	%al, -2969(%rbp)                # 1-byte Spill
.LBB2_63:
	movb	-2969(%rbp), %al                # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_65
.Ltmp32:
# %bb.64:
	.loc	4 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.18(%rip), %rdi
	movl	$65, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_65:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_67
	jmp	.LBB2_66
.LBB2_66:
	leaq	.panic_msg.20(%rip), %rdi
	movl	$80, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_67:
	.loc	4 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-2984(%rbp), %rcx               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB2_69
# %bb.68:
	leaq	.panic_msg.21(%rip), %rdi
	movl	$59, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_69:
	movq	-1896(%rbp), %rax
	movq	%rax, -3000(%rbp)               # 8-byte Spill
	cmpq	-1944(%rbp), %rax
	je	.LBB2_71
# %bb.70:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3000(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3000(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -1936(%rbp)
	movq	%rcx, -1944(%rbp)
	movq	%rax, -3008(%rbp)               # 8-byte Spill
	jmp	.LBB2_72
.LBB2_71:
	movq	-1936(%rbp), %rax
	movq	%rax, -3008(%rbp)               # 8-byte Spill
.LBB2_72:
	movq	-3008(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3016(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB2_74
# %bb.73:
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_74:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3016(%rbp), %rax               # 8-byte Reload
	movq	-2984(%rbp), %rdx               # 8-byte Reload
	movq	-1904(%rbp), %rsi
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	-1952(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3024(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_76
# %bb.75:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3024(%rbp), %rax               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -1864(%rbp)
	jmp	.LBB2_79
.LBB2_76:
	movq	-1952(%rbp), %rax
	movq	%rax, -1920(%rbp)
.LBB2_77:
	movq	-1920(%rbp), %rax
	movq	%rax, -3048(%rbp)               # 8-byte Spill
.Ltmp33:
	.loc	4 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-1888(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -3040(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -3032(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_138
# %bb.78:
	.loc	4 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-3048(%rbp), %rax               # 8-byte Reload
	movq	-3040(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -3064(%rbp)               # 8-byte Spill
	movq	%rax, -3056(%rbp)               # 8-byte Spill
	.loc	4 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB2_80
.LBB2_79:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2008(%rbp)
	leaq	-1864(%rbp), %rax
	movq	%rax, -2016(%rbp)
	leaq	-2016(%rbp), %rax
	movq	%rax, -2032(%rbp)
	movq	$1, -2024(%rbp)
.Ltmp34:
	.loc	4 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.23(%rip), %rdi
	movl	$36, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2032(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_80:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3064(%rbp), %rax               # 8-byte Reload
	movq	-3056(%rbp), %rcx               # 8-byte Reload
	.loc	4 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -1832(%rbp)
	movq	%rax, -1824(%rbp)
	movq	-1808(%rbp), %rax
	movq	%rax, -2056(%rbp)
	movq	-1800(%rbp), %rax
	movq	%rax, -2048(%rbp)
	movq	-1832(%rbp), %rax
	movq	%rax, -2064(%rbp)
	movq	-1816(%rbp), %rax
	movq	%rax, -2072(%rbp)
.Ltmp35:
	.loc	2 56 9 is_stmt 1                # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_82
# %bb.81:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$34, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_82:
	.loc	2 0 9 is_stmt 0                 # closure.c3:0:9
	movq	-2056(%rbp), %rax
	movq	%rax, -2088(%rbp)
	movq	-2048(%rbp), %rax
	movq	%rax, -2080(%rbp)
	movl	-1780(%rbp), %eax
	movl	%eax, -2092(%rbp)
.Ltmp36:
	.loc	4 315 23 is_stmt 1              # mem_allocator.c3:315:23
	cmpq	$0, -2088(%rbp)
	jne	.LBB2_84
# %bb.83:
	leaq	.panic_msg.26(%rip), %rdi
	movl	$37, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$315, (%rsp)                    # imm = 0x13B
	callq	*(%rax)
.Ltmp37:
.LBB2_84:
	.loc	4 0 23 is_stmt 0                # mem_allocator.c3:0:23
	movq	-2088(%rbp), %rax
	movq	%rax, -2112(%rbp)
	movq	-2080(%rbp), %rax
	movq	%rax, -2104(%rbp)
	movq	-2112(%rbp), %rax
	movq	%rax, -2136(%rbp)
	movq	-2104(%rbp), %rax
	movq	%rax, -2128(%rbp)
	movq	$4, -2144(%rbp)
	movq	-2136(%rbp), %rax
	movq	%rax, -2168(%rbp)
	movq	-2128(%rbp), %rax
	movq	%rax, -2160(%rbp)
	movq	-2144(%rbp), %rax
	movq	%rax, -2176(%rbp)
.Ltmp38:
	.loc	4 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -2176(%rbp)
	jne	.LBB2_86
# %bb.85:
	.loc	4 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -2184(%rbp)
	jmp	.LBB2_104
.LBB2_86:
	.loc	4 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-2176(%rbp), %rax
	movq	%rax, -3080(%rbp)               # 8-byte Spill
	.loc	4 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -3065(%rbp)                # 1-byte Spill
	jne	.LBB2_90
# %bb.87:
	.loc	4 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -2192(%rbp)
.Ltmp39:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-2192(%rbp), %rcx
	movb	%al, -3081(%rbp)                # 1-byte Spill
	je	.LBB2_89
# %bb.88:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-2192(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-2192(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3081(%rbp)                # 1-byte Spill
.LBB2_89:
	.loc	5 0 19                          # math.c3:0:19
	movb	-3081(%rbp), %al                # 1-byte Reload
	movb	%al, -3065(%rbp)                # 1-byte Spill
.LBB2_90:
	movb	-3065(%rbp), %al                # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_92
.Ltmp40:
# %bb.91:
	.loc	4 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.18(%rip), %rdi
	movl	$65, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_92:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_94
	jmp	.LBB2_93
.LBB2_93:
	leaq	.panic_msg.20(%rip), %rdi
	movl	$80, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_94:
	.loc	4 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3080(%rbp), %rcx               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB2_96
# %bb.95:
	leaq	.panic_msg.21(%rip), %rdi
	movl	$59, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_96:
	movq	-2160(%rbp), %rax
	movq	%rax, -3096(%rbp)               # 8-byte Spill
	cmpq	-2208(%rbp), %rax
	je	.LBB2_98
# %bb.97:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3096(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3096(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -2200(%rbp)
	movq	%rcx, -2208(%rbp)
	movq	%rax, -3104(%rbp)               # 8-byte Spill
	jmp	.LBB2_99
.LBB2_98:
	movq	-2200(%rbp), %rax
	movq	%rax, -3104(%rbp)               # 8-byte Spill
.LBB2_99:
	movq	-3104(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3112(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB2_101
# %bb.100:
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_101:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3112(%rbp), %rax               # 8-byte Reload
	movq	-3080(%rbp), %rdx               # 8-byte Reload
	movq	-2168(%rbp), %rsi
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	-2216(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3120(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_103
# %bb.102:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3120(%rbp), %rax               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -2152(%rbp)
	jmp	.LBB2_105
.LBB2_103:
	movq	-2216(%rbp), %rax
	movq	%rax, -2184(%rbp)
.LBB2_104:
	jmp	.LBB2_106
.LBB2_105:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2232(%rbp)
	leaq	-2152(%rbp), %rax
	movq	%rax, -2240(%rbp)
	leaq	-2240(%rbp), %rax
	movq	%rax, -2256(%rbp)
	movq	$1, -2248(%rbp)
.Ltmp41:
	.loc	4 75 9 is_stmt 1                # mem_allocator.c3:75:9
	leaq	.panic_msg.23(%rip), %rdi
	movl	$36, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2256(%rbp), %rax
	movl	$75, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_106:
	movq	-2184(%rbp), %rax
	movq	%rax, -2120(%rbp)
.Ltmp42:
	.loc	4 178 4                         # mem_allocator.c3:178:4
	movq	-2120(%rbp), %rax
	movq	%rax, -3128(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_139
# %bb.107:
	.loc	4 0 4 is_stmt 0                 # mem_allocator.c3:0:4
	movq	-3128(%rbp), %rax               # 8-byte Reload
	.loc	4 178 4                         # mem_allocator.c3:178:4
	andq	$3, %rax
	movq	%rax, -3136(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_140
# %bb.108:
	.loc	4 0 4                           # mem_allocator.c3:0:4
	movq	-3128(%rbp), %rax               # 8-byte Reload
	.loc	4 178 4                         # mem_allocator.c3:178:4
	movl	-2092(%rbp), %ecx
	movl	%ecx, (%rax)
	.loc	4 179 10 is_stmt 1              # mem_allocator.c3:179:10
	movq	-2120(%rbp), %rax
	movq	%rax, -3160(%rbp)               # 8-byte Spill
.Ltmp43:
	.loc	2 79 4                          # closure.c3:79:4
	movq	-2064(%rbp), %rax
	.loc	2 79 9 is_stmt 0                # closure.c3:79:9
	addq	$8, %rax
	movq	%rax, -3152(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3144(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_141
# %bb.109:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-3152(%rbp), %rax               # 8-byte Reload
	movq	-3160(%rbp), %rcx               # 8-byte Reload
	.loc	2 79 4                          # closure.c3:79:4
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-2072(%rbp), %rax
	movq	%rax, -3184(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-2064(%rbp), %rax
	movq	%rax, -3176(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -3168(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_142
# %bb.110:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-3176(%rbp), %rax               # 8-byte Reload
	movq	-3184(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-2064(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp44:
	.loc	3 38 19 is_stmt 1               # generated.c3:38:19
	movq	"closure.@generate_closure_call_func$lambda9"@GOTPCREL(%rip), %rax
	movq	%rax, -2456(%rbp)
	.loc	3 54 10                         # generated.c3:54:10
	movq	-2456(%rbp), %rax
	movq	%rax, -3192(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_143
# %bb.111:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-3192(%rbp), %rax               # 8-byte Reload
	.loc	3 54 4                          # generated.c3:54:4
	callq	*%rax
	.loc	3 55 11 is_stmt 1               # generated.c3:55:11
	movq	-2456(%rbp), %rax
	movq	%rax, -2040(%rbp)
.Ltmp45:
	.loc	2 46 9                          # closure.c3:46:9
	movq	-2040(%rbp), %rax
	movq	%rax, -2496(%rbp)
	movq	-1808(%rbp), %rax
	movq	%rax, -2488(%rbp)
	movq	-1800(%rbp), %rax
	movq	%rax, -2480(%rbp)
	movq	-1832(%rbp), %rax
	movq	%rax, -2472(%rbp)
	movq	$1, -2464(%rbp)
	movq	-2496(%rbp), %rax
	movq	%rax, -1792(%rbp)
.Ltmp46:
	.loc	1 135 6                         # main.c3:135:6
	movl	$1000, -1780(%rbp)              # imm = 0x3E8
	.loc	1 136 2                         # main.c3:136:2
	movq	-1792(%rbp), %rax
	movq	%rax, -3200(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_144
# %bb.112:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3200(%rbp), %rax               # 8-byte Reload
	.loc	1 136 2                         # main.c3:136:2
	callq	*%rax
.Ltmp47:
	.loc	1 128 8 is_stmt 1               # main.c3:128:8
	leaq	-1200(%rbp), %rdi
	callq	closure_closure_struct$fn$int$int$$.Closure.free@PLT
	xorl	%eax, %eax
	.loc	1 128 8 epilogue_begin is_stmt 0 # main.c3:128:8
	addq	$3232, %rsp                     # imm = 0xCA0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp48:
.LBB2_113:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # main.c3:0:8
	movq	-2520(%rbp), %rax               # 8-byte Reload
	movq	%rax, -152(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	1 96 32 is_stmt 1               # main.c3:96:32
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-192(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_114:
	.loc	1 0 32 is_stmt 0                # main.c3:0:32
	movq	-2544(%rbp), %rax               # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$1, -232(%rbp)
	.loc	1 96 2                          # main.c3:96:2
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-240(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_115:
	.loc	1 0 2                           # main.c3:0:2
	movq	-2576(%rbp), %rcx               # 8-byte Reload
	movq	-2592(%rbp), %rax               # 8-byte Reload
	movq	%rax, -248(%rbp)
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
	.loc	1 96 2                          # main.c3:96:2
	leaq	.panic_msg.7(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-304(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_116:
	.loc	1 99 2 is_stmt 1                # main.c3:99:2
	leaq	.panic_msg.9(%rip), %rdi
	movl	$44, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$99, (%rsp)
	callq	*(%rax)
.LBB2_117:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2608(%rbp), %rcx               # 8-byte Reload
	movq	$8, -456(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -464(%rbp)
	movq	%rax, -488(%rbp)
	leaq	-456(%rbp), %rcx
	movq	%rcx, -496(%rbp)
	movq	%rax, -472(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -480(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	$2, -504(%rbp)
.Ltmp49:
	.loc	2 66 4 is_stmt 1                # closure.c3:66:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-512(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_118:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-2624(%rbp), %rcx               # 8-byte Reload
	movq	$8, -528(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -536(%rbp)
	movq	%rax, -568(%rbp)
	leaq	-528(%rbp), %rcx
	movq	%rcx, -576(%rbp)
	movq	%rax, -552(%rbp)
	leaq	-536(%rbp), %rax
	movq	%rax, -560(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	$2, -584(%rbp)
	.loc	2 66 4                          # closure.c3:66:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-592(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_119:
	.loc	2 0 4                           # closure.c3:0:4
	movq	-2640(%rbp), %rcx               # 8-byte Reload
	movq	$8, -600(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -608(%rbp)
	movq	%rax, -632(%rbp)
	leaq	-600(%rbp), %rcx
	movq	%rcx, -640(%rbp)
	movq	%rax, -616(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -624(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	$2, -648(%rbp)
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-656(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_120:
.Ltmp50:
	.loc	3 184 10                        # generated.c3:184:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$44, %esi
	leaq	.file.13(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$184, (%rsp)
	callq	*(%rax)
.Ltmp51:
.LBB2_121:
	.loc	1 104 23                        # main.c3:104:23
	leaq	.panic_msg.15(%rip), %rdi
	movl	$47, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$104, (%rsp)
	callq	*(%rax)
.LBB2_122:
	.loc	1 106 23                        # main.c3:106:23
	leaq	.panic_msg.15(%rip), %rdi
	movl	$47, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$106, (%rsp)
	callq	*(%rax)
.LBB2_123:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-2688(%rbp), %rcx               # 8-byte Reload
	movq	$8, -832(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -840(%rbp)
	movq	%rax, -872(%rbp)
	leaq	-832(%rbp), %rcx
	movq	%rcx, -880(%rbp)
	movq	%rax, -856(%rbp)
	leaq	-840(%rbp), %rax
	movq	%rax, -864(%rbp)
	leaq	-880(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	$2, -888(%rbp)
.Ltmp52:
	.loc	2 66 4 is_stmt 1                # closure.c3:66:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-896(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_124:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-2704(%rbp), %rcx               # 8-byte Reload
	movq	$8, -904(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -912(%rbp)
	movq	%rax, -936(%rbp)
	leaq	-904(%rbp), %rcx
	movq	%rcx, -944(%rbp)
	movq	%rax, -920(%rbp)
	leaq	-912(%rbp), %rax
	movq	%rax, -928(%rbp)
	leaq	-944(%rbp), %rax
	movq	%rax, -960(%rbp)
	movq	$2, -952(%rbp)
	.loc	2 66 4                          # closure.c3:66:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-960(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_125:
	.loc	2 0 4                           # closure.c3:0:4
	movq	-2720(%rbp), %rcx               # 8-byte Reload
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
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1024(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_126:
.Ltmp53:
	.loc	3 99 10                         # generated.c3:99:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$44, %esi
	leaq	.file.13(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$99, (%rsp)
	callq	*(%rax)
.Ltmp54:
.LBB2_127:
	.loc	1 115 2                         # main.c3:115:2
	leaq	.panic_msg.17(%rip), %rdi
	movl	$57, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$115, (%rsp)
	callq	*(%rax)
.LBB2_128:
	.loc	1 116 2                         # main.c3:116:2
	leaq	.panic_msg.17(%rip), %rdi
	movl	$57, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$116, (%rsp)
	callq	*(%rax)
.LBB2_129:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2768(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1088(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1096(%rbp)
	movq	%rax, -1128(%rbp)
	leaq	-1088(%rbp), %rcx
	movq	%rcx, -1136(%rbp)
	movq	%rax, -1112(%rbp)
	leaq	-1096(%rbp), %rax
	movq	%rax, -1120(%rbp)
	leaq	-1136(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movq	$2, -1144(%rbp)
.Ltmp55:
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1152(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_130:
.Ltmp56:
	.loc	3 74 10                         # generated.c3:74:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$44, %esi
	leaq	.file.13(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$74, (%rsp)
	callq	*(%rax)
.Ltmp57:
.LBB2_131:
	.loc	1 124 2                         # main.c3:124:2
	leaq	.panic_msg.17(%rip), %rdi
	movl	$57, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$124, (%rsp)
	callq	*(%rax)
.LBB2_132:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2864(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1368(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -1384(%rbp)
	leaq	-1368(%rbp), %rax
	movq	%rax, -1392(%rbp)
	leaq	-1392(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	$1, -1400(%rbp)
.Ltmp58:
	.loc	4 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1408(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp59:
.LBB2_133:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-2904(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1488(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1496(%rbp)
	movq	%rax, -1528(%rbp)
	leaq	-1488(%rbp), %rcx
	movq	%rcx, -1536(%rbp)
	movq	%rax, -1512(%rbp)
	leaq	-1496(%rbp), %rax
	movq	%rax, -1520(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, -1552(%rbp)
	movq	$2, -1544(%rbp)
.Ltmp60:
	.loc	2 74 4 is_stmt 1                # closure.c3:74:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1552(%rbp), %rax
	movl	$74, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_134:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-2920(%rbp), %rcx               # 8-byte Reload
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
	.loc	2 74 4                          # closure.c3:74:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1632(%rbp), %rax
	movl	$74, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_135:
	.loc	2 0 4                           # closure.c3:0:4
	movq	-2936(%rbp), %rcx               # 8-byte Reload
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
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1696(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_136:
.Ltmp61:
	.loc	3 184 10                        # generated.c3:184:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$44, %esi
	leaq	.file.13(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$184, (%rsp)
	callq	*(%rax)
.Ltmp62:
.LBB2_137:
	.loc	1 129 26                        # main.c3:129:26
	leaq	.panic_msg.25(%rip), %rdi
	movl	$52, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$129, (%rsp)
	callq	*(%rax)
.LBB2_138:
	.loc	1 0 26 is_stmt 0                # main.c3:0:26
	movq	-3032(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1960(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -1976(%rbp)
	leaq	-1960(%rbp), %rax
	movq	%rax, -1984(%rbp)
	leaq	-1984(%rbp), %rax
	movq	%rax, -2000(%rbp)
	movq	$1, -1992(%rbp)
.Ltmp63:
	.loc	4 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2000(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp64:
.LBB2_139:
	.loc	4 178 4                         # mem_allocator.c3:178:4
	leaq	.panic_msg.27(%rip), %rdi
	movl	$44, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$178, (%rsp)
	callq	*(%rax)
.LBB2_140:
	.loc	4 0 4 is_stmt 0                 # mem_allocator.c3:0:4
	movq	-3136(%rbp), %rcx               # 8-byte Reload
	movq	$4, -2264(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2272(%rbp)
	movq	%rax, -2296(%rbp)
	leaq	-2264(%rbp), %rcx
	movq	%rcx, -2304(%rbp)
	movq	%rax, -2280(%rbp)
	leaq	-2272(%rbp), %rax
	movq	%rax, -2288(%rbp)
	leaq	-2304(%rbp), %rax
	movq	%rax, -2320(%rbp)
	movq	$2, -2312(%rbp)
	.loc	4 178 4                         # mem_allocator.c3:178:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2320(%rbp), %rax
	movl	$178, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp65:
.LBB2_141:
	.loc	4 0 4                           # mem_allocator.c3:0:4
	movq	-3144(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2328(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2336(%rbp)
	movq	%rax, -2360(%rbp)
	leaq	-2328(%rbp), %rcx
	movq	%rcx, -2368(%rbp)
	movq	%rax, -2344(%rbp)
	leaq	-2336(%rbp), %rax
	movq	%rax, -2352(%rbp)
	leaq	-2368(%rbp), %rax
	movq	%rax, -2384(%rbp)
	movq	$2, -2376(%rbp)
	.loc	2 79 4 is_stmt 1                # closure.c3:79:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2384(%rbp), %rax
	movl	$79, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_142:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-3168(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2392(%rbp)
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
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.11(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2448(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_143:
.Ltmp66:
	.loc	3 54 10                         # generated.c3:54:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$44, %esi
	leaq	.file.13(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$54, (%rsp)
	callq	*(%rax)
.Ltmp67:
.LBB2_144:
	.loc	1 136 2                         # main.c3:136:2
	leaq	.panic_msg.28(%rip), %rdi
	movl	$53, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$136, (%rsp)
	callq	*(%rax)
.Ltmp68:
.Lfunc_end2:
	.size	main.main, .Lfunc_end2-main.main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function main.main$lambda1
	.type	main.main$lambda1,@function
main.main$lambda1:                      # @"main.main$lambda1"
.Lfunc_begin3:
	.loc	1 108 0                         # main.c3:108:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp69:
	.loc	1 110 4 prologue_end            # main.c3:110:4
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_4
# %bb.1:
	.loc	1 0 4 is_stmt 0                 # main.c3:0:4
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	1 110 4                         # main.c3:110:4
	andq	$3, %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_5
# %bb.2:
	.loc	1 0 4                           # main.c3:0:4
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	1 110 4                         # main.c3:110:4
	movl	(%rax), %ecx
	.loc	1 110 3                         # main.c3:110:3
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 111 24 is_stmt 1              # main.c3:111:24
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_6
# %bb.3:
	.loc	1 0 24 is_stmt 0                # main.c3:0:24
	movq	-136(%rbp), %rax                # 8-byte Reload
	movl	$1, %edi
	.loc	1 111 24                        # main.c3:111:24
	callq	*%rax
	movl	%eax, -100(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-100(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc	1 111 3                         # main.c3:111:3
	leaq	-112(%rbp), %rdi
	leaq	.L.str.31(%rip), %rsi
	movl	$5, %edx
	leaq	-96(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 112 9 epilogue_begin is_stmt 1 # main.c3:112:9
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 110 4                         # main.c3:110:4
	leaq	.panic_msg.29(%rip), %rdi
	movl	$42, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.30(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$110, (%rsp)
	callq	*(%rax)
.LBB3_5:
	.loc	1 0 4 is_stmt 0                 # main.c3:0:4
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movq	$4, -24(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -32(%rbp)
	movq	%rax, -56(%rbp)
	leaq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	.loc	1 110 4                         # main.c3:110:4
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.30(%rip), %r8
	movl	$17, %r9d
	leaq	-80(%rbp), %rax
	movl	$110, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_6:
	.loc	1 111 24 is_stmt 1              # main.c3:111:24
	leaq	.panic_msg.15(%rip), %rdi
	movl	$47, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.30(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$111, (%rsp)
	callq	*(%rax)
.Ltmp70:
.Lfunc_end3:
	.size	main.main$lambda1, .Lfunc_end3-main.main$lambda1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function main.main$lambda2
	.type	main.main$lambda2,@function
main.main$lambda2:                      # @"main.main$lambda2"
.Lfunc_begin4:
	.loc	1 119 0                         # main.c3:119:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
.Ltmp71:
	.loc	1 121 21 prologue_end           # main.c3:121:21
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc	1 121 3 is_stmt 0               # main.c3:121:3
	leaq	-40(%rbp), %rdi
	leaq	.L.str.32(%rip), %rsi
	movl	$2, %edx
	leaq	-32(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 122 10 is_stmt 1              # main.c3:122:10
	movl	-4(%rbp), %eax
	.loc	1 122 10 epilogue_begin is_stmt 0 # main.c3:122:10
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp72:
.Lfunc_end4:
	.size	main.main$lambda2, .Lfunc_end4-main.main$lambda2
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin5:
	.loc	1 25 0 is_stmt 1                # main.c3:25:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$832, %rsp                      # imm = 0x340
	movq	$0, -208(%rbp)
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
.Ltmp73:
	.file	6 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/private" "main_stub.c3"
	.loc	6 24 43 prologue_end            # main_stub.c3:24:43
	movslq	-60(%rbp), %rax
	movq	%rax, -96(%rbp)
.Ltmp74:
	.file	7 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	7 877 32                        # mem.c3:877:32
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)
.Ltmp75:
	.loc	4 304 55                        # mem_allocator.c3:304:55
	movq	-152(%rbp), %rax
	.loc	4 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$4, %rax
	movq	%rax, -176(%rbp)
.Ltmp76:
	.loc	4 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -176(%rbp)
	jne	.LBB5_2
# %bb.1:
	.loc	4 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -184(%rbp)
	jmp	.LBB5_20
.LBB5_2:
	.loc	4 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-176(%rbp), %rax
	movq	%rax, -624(%rbp)                # 8-byte Spill
	.loc	4 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -609(%rbp)                 # 1-byte Spill
	jne	.LBB5_6
# %bb.3:
	.loc	4 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -192(%rbp)
.Ltmp77:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-192(%rbp), %rcx
	movb	%al, -625(%rbp)                 # 1-byte Spill
	je	.LBB5_5
# %bb.4:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-192(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-192(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -625(%rbp)                 # 1-byte Spill
.LBB5_5:
	.loc	5 0 19                          # math.c3:0:19
	movb	-625(%rbp), %al                 # 1-byte Reload
	movb	%al, -609(%rbp)                 # 1-byte Spill
.LBB5_6:
	movb	-609(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB5_8
.Ltmp78:
# %bb.7:
	.loc	4 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.18(%rip), %rdi
	movl	$65, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_8:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB5_10
	jmp	.LBB5_9
.LBB5_9:
	leaq	.panic_msg.20(%rip), %rdi
	movl	$80, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_10:
	.loc	4 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-624(%rbp), %rcx                # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB5_12
# %bb.11:
	leaq	.panic_msg.21(%rip), %rdi
	movl	$59, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_12:
	movq	-160(%rbp), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
	cmpq	-208(%rbp), %rax
	je	.LBB5_14
# %bb.13:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-640(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-640(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%rax, -648(%rbp)                # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:
	movq	-200(%rbp), %rax
	movq	%rax, -648(%rbp)                # 8-byte Spill
.LBB5_15:
	movq	-648(%rbp), %rax                # 8-byte Reload
	movq	%rax, -656(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB5_17
# %bb.16:
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB5_17:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-656(%rbp), %rax                # 8-byte Reload
	movq	-624(%rbp), %rdx                # 8-byte Reload
	movq	-168(%rbp), %rsi
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -664(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB5_19
# %bb.18:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-664(%rbp), %rax                # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -128(%rbp)
	jmp	.LBB5_22
.LBB5_19:
	movq	-216(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB5_20:
	movq	-184(%rbp), %rax
	movq	%rax, -688(%rbp)                # 8-byte Spill
.Ltmp79:
	.loc	4 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-152(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -680(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -672(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB5_36
# %bb.21:
	.loc	4 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-688(%rbp), %rax                # 8-byte Reload
	movq	-680(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -704(%rbp)                # 8-byte Spill
	movq	%rax, -696(%rbp)                # 8-byte Spill
	.loc	4 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB5_23
.LBB5_22:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
.Ltmp80:
	.loc	4 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.23(%rip), %rdi
	movl	$36, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	leaq	-288(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_23:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	-696(%rbp), %rcx                # 8-byte Reload
	.loc	4 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -88(%rbp)
	movq	%rax, -80(%rbp)
.Ltmp81:
	.loc	6 25 15 is_stmt 1               # main_stub.c3:25:15
	movl	$0, -292(%rbp)
.LBB5_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
	.loc	6 25 18 is_stmt 0               # main_stub.c3:25:18
	movl	-292(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB5_34
# %bb.25:                               #   in Loop: Header=BB5_24 Depth=1
.Ltmp82:
	.loc	6 27 15 is_stmt 1               # main_stub.c3:27:15
	movq	-72(%rbp), %rax
	.loc	6 27 20 is_stmt 0               # main_stub.c3:27:20
	movslq	-292(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -712(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_37
# %bb.26:                               #   in Loop: Header=BB5_24 Depth=1
	.loc	6 0 20                          # main_stub.c3:0:20
	movq	-720(%rbp), %rax                # 8-byte Reload
	.loc	6 27 15                         # main_stub.c3:27:15
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	.loc	6 28 13 is_stmt 1               # main_stub.c3:28:13
	movq	$0, -376(%rbp)
	.loc	6 29 21                         # main_stub.c3:29:21
	movq	-304(%rbp), %rax
	movq	%rax, -728(%rbp)                # 8-byte Spill
	movq	-304(%rbp), %rax
	movq	%rax, -384(%rbp)
.Ltmp83:
	.loc	6 5 12                          # main_stub.c3:5:12
	movq	$0, -392(%rbp)
.LBB5_27:                               #   Parent Loop BB5_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp84:
	.loc	6 6 9                           # main_stub.c3:6:9
	movq	-384(%rbp), %rax
	.loc	6 6 13 is_stmt 0                # main_stub.c3:6:13
	movq	-392(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_27 Depth=2
	.loc	6 6 19                          # main_stub.c3:6:19
	movq	-392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB5_27
.Ltmp85:
.LBB5_29:                               #   in Loop: Header=BB5_24 Depth=1
	.loc	6 7 9 is_stmt 1                 # main_stub.c3:7:9
	movq	-392(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -744(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -736(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB5_38
.Ltmp86:
# %bb.30:                               #   in Loop: Header=BB5_24 Depth=1
	.loc	6 0 9 is_stmt 0                 # main_stub.c3:0:9
	movq	-728(%rbp), %rax                # 8-byte Reload
	movq	-744(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -784(%rbp)                # 8-byte Spill
	movq	%rax, -776(%rbp)                # 8-byte Spill
	.loc	6 29 3 is_stmt 1                # main_stub.c3:29:3
	movq	-80(%rbp), %rax
	movq	%rax, -768(%rbp)                # 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -760(%rbp)                # 8-byte Spill
	.loc	6 29 8 is_stmt 0                # main_stub.c3:29:8
	movslq	-292(%rbp), %rax
	movq	%rax, -752(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB5_39
# %bb.31:                               #   in Loop: Header=BB5_24 Depth=1
	.loc	6 0 8                           # main_stub.c3:0:8
	movq	-752(%rbp), %rax                # 8-byte Reload
	movq	-768(%rbp), %rcx                # 8-byte Reload
	.loc	6 29 8                          # main_stub.c3:29:8
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB5_40
# %bb.32:                               #   in Loop: Header=BB5_24 Depth=1
	.loc	6 0 8                           # main_stub.c3:0:8
	movq	-760(%rbp), %rax                # 8-byte Reload
	movq	-752(%rbp), %rcx                # 8-byte Reload
	.loc	6 29 8                          # main_stub.c3:29:8
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -800(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -792(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB5_41
# %bb.33:                               #   in Loop: Header=BB5_24 Depth=1
	.loc	6 0 8                           # main_stub.c3:0:8
	movq	-800(%rbp), %rax                # 8-byte Reload
	movq	-784(%rbp), %rcx                # 8-byte Reload
	movq	-776(%rbp), %rdx                # 8-byte Reload
	.loc	6 29 3                          # main_stub.c3:29:3
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
.Ltmp87:
	.loc	6 25 28 is_stmt 1               # main_stub.c3:25:28
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB5_24
.Ltmp88:
.LBB5_34:
	.loc	6 31 9                          # main_stub.c3:31:9
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
.Ltmp89:
	.loc	6 47 12                         # main_stub.c3:47:12
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	.loc	6 47 9 is_stmt 0                # main_stub.c3:47:9
	callq	main.main@PLT
	movl	%eax, -36(%rbp)
.Ltmp90:
	.loc	6 46 13 is_stmt 1               # main_stub.c3:46:13
	movq	-56(%rbp), %rdi
	.loc	6 46 8 is_stmt 0                # main_stub.c3:46:8
	callq	std.core.mem.free@PLT
# %bb.35:
	movl	-36(%rbp), %eax
	.loc	6 46 8 epilogue_begin           # main_stub.c3:46:8
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp91:
.LBB5_36:
	.cfi_def_cfa %rbp, 16
	.loc	6 0 8                           # main_stub.c3:0:8
	movq	-672(%rbp), %rax                # 8-byte Reload
	movq	%rax, -224(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$1, -248(%rbp)
.Ltmp92:
	.loc	4 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file.19(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	leaq	-256(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp93:
.LBB5_37:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-712(%rbp), %rcx                # 8-byte Reload
	movq	$8, -312(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
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
.Ltmp94:
	.loc	6 27 15 is_stmt 1               # main_stub.c3:27:15
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.34(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	leaq	-368(%rbp), %rax
	movl	$27, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_38:
	.loc	6 0 15 is_stmt 0                # main_stub.c3:0:15
	movq	-736(%rbp), %rax                # 8-byte Reload
	movq	%rax, -400(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -408(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$1, -424(%rbp)
	.loc	6 29 13 is_stmt 1               # main_stub.c3:29:13
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file.34(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	leaq	-432(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_39:
	.loc	6 0 13 is_stmt 0                # main_stub.c3:0:13
	movq	-752(%rbp), %rax                # 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -456(%rbp)
	leaq	-440(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$1, -472(%rbp)
	.loc	6 29 8                          # main_stub.c3:29:8
	leaq	.panic_msg.35(%rip), %rdi
	movl	$38, %esi
	leaq	.file.34(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	leaq	-480(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_40:
	.loc	6 0 8                           # main_stub.c3:0:8
	movq	-752(%rbp), %rcx                # 8-byte Reload
	movq	-768(%rbp), %rax                # 8-byte Reload
	movq	%rax, -488(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rcx, -496(%rbp)
	movq	%rax, -520(%rbp)
	leaq	-488(%rbp), %rcx
	movq	%rcx, -528(%rbp)
	movq	%rax, -504(%rbp)
	leaq	-496(%rbp), %rax
	movq	%rax, -512(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$2, -536(%rbp)
	.loc	6 29 8                          # main_stub.c3:29:8
	leaq	.panic_msg.36(%rip), %rdi
	movl	$59, %esi
	leaq	.file.34(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	leaq	-544(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB5_41:
	.loc	6 0 8                           # main_stub.c3:0:8
	movq	-792(%rbp), %rcx                # 8-byte Reload
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
	.loc	6 29 3                          # main_stub.c3:29:3
	leaq	.panic_msg.12(%rip), %rdi
	movl	$94, %esi
	leaq	.file.34(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.33(%rip), %r8
	movl	$6, %r9d
	leaq	-608(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp95:
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB6_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB6_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB6_5:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB6_1
.Lfunc_end6:
	.size	.dyn_search, .Lfunc_end6-.dyn_search
	.cfi_endproc
                                        # -- End function
	.type	code_ptr__,@object              # @code_ptr__
	.section	.tbss,"awT",@nobits
	.globl	code_ptr__
	.p2align	3, 0x0
code_ptr__:
	.quad	0
	.size	code_ptr__, 8

	.type	code_len__,@object              # @code_len__
	.globl	code_len__
	.p2align	3, 0x0
code_len__:
	.quad	0                               # 0x0
	.size	code_len__, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s + %s + %s"
	.size	.L.str, 13

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

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Hello from assembly!"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"In main!"
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"code ptr: %s, code len: %s"
	.size	.L.str.4, 27

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

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"allocating %s bytes"
	.size	.L.str.5, 20

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"error: %s"
	.size	.L.str.6, 10

	.type	$ct.libc.Errno,@object          # @"$ct.libc.Errno"
	.section	".data.$ct.libc.Errno","awG",@progbits,"$ct.libc.Errno",comdat
	.weak	$ct.libc.Errno
	.p2align	3, 0x0
$ct.libc.Errno:
	.byte	18                              # 0x12
	.zero	7
	.quad	($ct.int)
	.quad	0
	.quad	4                               # 0x4
	.quad	($ct.int)
	.quad	0                               # 0x0
	.size	$ct.libc.Errno, 48

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
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg, 44

	.type	.file,@object                   # @.file
.file:
	.asciz	"main.c3"
	.size	.file, 8

	.type	.func,@object                   # @.func
.func:
	.asciz	"main"
	.size	.func, 5

	.type	.panic_msg.7,@object            # @.panic_msg.7
.panic_msg.7:
	.asciz	"Slice copy length mismatch (%d != %d)."
	.size	.panic_msg.7, 39

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"fn_data: %p, f: %p"
	.size	.L.str.8, 19

	.type	$ct.fn$void$$,@object           # @"$ct.fn$void$$"
	.section	".data.$ct.fn$void$$","awG",@progbits,"$ct.fn$void$$",comdat
	.weak	$ct.fn$void$$
	.p2align	3, 0x0
$ct.fn$void$$:
	.byte	13                              # 0xd
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.fn$void$$, 48

	.type	.panic_msg.9,@object            # @.panic_msg.9
	.section	.rodata,"a",@progbits
.panic_msg.9:
	.asciz	"Calling null function pointer, 'f' was null."
	.size	.panic_msg.9, 45

	.type	.panic_msg.10,@object           # @.panic_msg.10
.panic_msg.10:
	.asciz	"Assert \"!temp_closure_ptr\" failed."
	.size	.panic_msg.10, 35

	.type	.file.11,@object                # @.file.11
.file.11:
	.asciz	"closure.c3"
	.size	.file.11, 11

	.type	.panic_msg.12,@object           # @.panic_msg.12
.panic_msg.12:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.12, 95

	.type	.file.13,@object                # @.file.13
.file.13:
	.asciz	"generated.c3"
	.size	.file.13, 13

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	" = %s"
	.size	.L.str.14, 6

	.type	.panic_msg.15,@object           # @.panic_msg.15
	.section	.rodata,"a",@progbits
.panic_msg.15:
	.asciz	"Calling null function pointer, 'add1' was null."
	.size	.panic_msg.15, 48

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	" = %s"
	.size	.L.str.16, 6

	.type	.panic_msg.17,@object           # @.panic_msg.17
	.section	.rodata,"a",@progbits
.panic_msg.17:
	.asciz	"Calling null function pointer, 'calc_something' was null."
	.size	.panic_msg.17, 58

	.type	$sel.acquire,@object            # @"$sel.acquire"
	.section	".rodata.$sel.acquire","aG",@progbits,"$sel.acquire",comdat
	.weak	$sel.acquire
$sel.acquire:
	.asciz	"acquire"
	.size	$sel.acquire, 8

	.type	.panic_msg.18,@object           # @.panic_msg.18
	.section	.rodata,"a",@progbits
.panic_msg.18:
	.asciz	"@require \"!alignment || math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.18, 66

	.type	.file.19,@object                # @.file.19
.file.19:
	.asciz	"mem_allocator.c3"
	.size	.file.19, 17

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

	.type	.panic_msg.23,@object           # @.panic_msg.23
	.section	.rodata,"a",@progbits
.panic_msg.23:
	.asciz	"Unexpected fault '%s' was unwrapped!"
	.size	.panic_msg.23, 37

	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"test: %s"
	.size	.L.str.24, 9

	.type	.panic_msg.25,@object           # @.panic_msg.25
	.section	.rodata,"a",@progbits
.panic_msg.25:
	.asciz	"Calling null function pointer, 'test.func' was null."
	.size	.panic_msg.25, 53

	.type	.panic_msg.26,@object           # @.panic_msg.26
.panic_msg.26:
	.asciz	"Passed null to a ref ('&') parameter."
	.size	.panic_msg.26, 38

	.type	.panic_msg.27,@object           # @.panic_msg.27
.panic_msg.27:
	.asciz	"Dereference of null pointer, 'val' was null."
	.size	.panic_msg.27, 45

	.type	.panic_msg.28,@object           # @.panic_msg.28
.panic_msg.28:
	.asciz	"Calling null function pointer, 'other_test' was null."
	.size	.panic_msg.28, 54

	.type	.panic_msg.29,@object           # @.panic_msg.29
.panic_msg.29:
	.asciz	"Dereference of null pointer, 'a' was null."
	.size	.panic_msg.29, 43

	.type	.func.30,@object                # @.func.30
.func.30:
	.asciz	"main.main$lambda1"
	.size	.func.30, 18

	.type	.L.str.31,@object               # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	" = %s"
	.size	.L.str.31, 6

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%s"
	.size	.L.str.32, 3

	.type	.func.33,@object                # @.func.33
	.section	.rodata,"a",@progbits
.func.33:
	.asciz	"_$main"
	.size	.func.33, 7

	.type	.file.34,@object                # @.file.34
.file.34:
	.asciz	"main_stub.c3"
	.size	.file.34, 13

	.type	.panic_msg.35,@object           # @.panic_msg.35
.panic_msg.35:
	.asciz	"Negative array indexing (index was %d)"
	.size	.panic_msg.35, 39

	.type	.panic_msg.36,@object           # @.panic_msg.36
.panic_msg.36:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.36, 60

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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
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
	.byte	9                               # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
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
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
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
	.byte	36                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x992 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1b DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	69                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_ptr__@DTPOFF
	.byte	224
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x45:0x9 DW_TAG_pointer_type
	.long	.Linfo_string4                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	2                               # Abbrev [2] 0x4e:0x1b DW_TAG_variable
	.long	.Linfo_string6                  # DW_AT_name
	.long	105                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_len__@DTPOFF
	.byte	224
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x69:0x9 DW_TAG_typedef
	.long	114                             # DW_AT_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	5                               # Abbrev [5] 0x72:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x79:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string50                 # DW_AT_linkage_name
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	324                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x96:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xa4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xb2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc1:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string52                 # DW_AT_linkage_name
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xda:0x19 DW_TAG_subprogram
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0xe6:0xc DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	243                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xf3:0xd DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0xf8:0x7 DW_TAG_subrange_type
	.long	256                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x100:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	14                              # Abbrev [14] 0x107:0xc DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x113:0x19 DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x11f:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	300                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x12c:0xd DW_TAG_pointer_type
	.long	313                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	16                              # Abbrev [16] 0x139:0xb DW_TAG_subroutine_type
	.long	324                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x13e:0x5 DW_TAG_formal_parameter
	.long	324                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x144:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x14b:0x19 DW_TAG_subprogram
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x157:0xc DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	243                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x164:0xc DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x170:0x19 DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x17c:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	393                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x189:0xd DW_TAG_pointer_type
	.long	406                             # DW_AT_type
	.long	.Linfo_string18                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	18                              # Abbrev [18] 0x196:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x197:0x19 DW_TAG_subprogram
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x1a3:0xc DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1b0:0xd DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1b5:0x7 DW_TAG_subrange_type
	.long	256                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1bd:0xc DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x1c9:0x19 DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x1d5:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	482                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1e2:0xd DW_TAG_pointer_type
	.long	313                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	19                              # Abbrev [19] 0x1ef:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x1fc:0xd DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x209:0x25 DW_TAG_subprogram
	.long	.Linfo_string22                 # DW_AT_linkage_name
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x215:0xc DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x221:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	300                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x22e:0x1e DW_TAG_structure_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x235:0xb DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x240:0xb DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	601                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x24c:0xd DW_TAG_pointer_type
	.long	69                              # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	4                               # Abbrev [4] 0x259:0x9 DW_TAG_typedef
	.long	114                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	14                              # Abbrev [14] 0x262:0xc DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x26e:0xd DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x27b:0xc DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x287:0x19 DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x293:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	300                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x2a0:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x2ad:0xd DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x2ba:0x25 DW_TAG_subprogram
	.long	.Linfo_string30                 # DW_AT_linkage_name
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x2c6:0xc DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	558                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2d2:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	735                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2df:0xd DW_TAG_pointer_type
	.long	748                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	22                              # Abbrev [22] 0x2ec:0x5 DW_TAG_subroutine_type
	.long	753                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x2f1:0xb DW_TAG_typedef
	.long	324                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x2fc:0xc DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x308:0xd DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x315:0xc DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x321:0xd DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x32e:0xc DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x33a:0xc DW_TAG_subprogram
	.long	.Linfo_string34                 # DW_AT_linkage_name
	.long	.Linfo_string34                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x346:0x19 DW_TAG_subprogram
	.long	.Linfo_string35                 # DW_AT_linkage_name
	.long	.Linfo_string35                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x352:0xc DW_TAG_variable
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.long	863                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x35f:0xd DW_TAG_pointer_type
	.long	324                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	19                              # Abbrev [19] 0x36c:0xd DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x379:0x19 DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x385:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	735                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x392:0x2d5 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string53                 # DW_AT_linkage_name
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	324                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x3af:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	1801                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3bd:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	601                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3cd:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	69                              # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3dd:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310}"
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.long	2278                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x3ed:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\224}"
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3fc:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210}"
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.long	2302                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x40c:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230z"
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	393                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x41c:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320v"
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.long	2326                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x42c:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\214r"
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x43b:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200r"
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.long	2436                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x44b:0x39 DW_TAG_inlined_subroutine
	.long	218                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	103                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x457:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340|"
	.long	230                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x460:0x23 DW_TAG_inlined_subroutine
	.long	263                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x46c:0x16 DW_TAG_inlined_subroutine
	.long	275                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x478:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350z"
	.long	287                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x484:0x39 DW_TAG_inlined_subroutine
	.long	331                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	108                             # DW_AT_call_line
	.byte	34                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x490:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360y"
	.long	343                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x499:0x23 DW_TAG_inlined_subroutine
	.long	356                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x4a5:0x16 DW_TAG_inlined_subroutine
	.long	368                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x4b1:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370w"
	.long	380                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4bd:0x39 DW_TAG_inlined_subroutine
	.long	407                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	119                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x4c9:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350w"
	.long	419                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x4d2:0x23 DW_TAG_inlined_subroutine
	.long	445                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x4de:0x16 DW_TAG_inlined_subroutine
	.long	457                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x4ea:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370v"
	.long	469                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4f6:0x87 DW_TAG_inlined_subroutine
	.long	521                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	127                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x502:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250v"
	.long	533                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x50b:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330t"
	.long	545                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x514:0x45 DW_TAG_inlined_subroutine
	.long	508                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges10                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	30                              # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x520:0x38 DW_TAG_inlined_subroutine
	.long	495                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges11                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x52d:0x2a DW_TAG_inlined_subroutine
	.long	610                             # DW_AT_abstract_origin
	.quad	.Ltmp20                         # DW_AT_low_pc
	.long	.Ltmp23-.Ltmp20                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x542:0x14 DW_TAG_inlined_subroutine
	.long	622                             # DW_AT_abstract_origin
	.quad	.Ltmp21                         # DW_AT_low_pc
	.long	.Ltmp22-.Ltmp21                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x559:0x23 DW_TAG_inlined_subroutine
	.long	635                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges12                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	31                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x565:0x16 DW_TAG_inlined_subroutine
	.long	647                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges13                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x571:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330r"
	.long	659                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x57d:0xe9 DW_TAG_inlined_subroutine
	.long	698                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges14                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	134                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x589:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330q"
	.long	710                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x592:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210p"
	.long	722                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x59b:0x45 DW_TAG_inlined_subroutine
	.long	685                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges15                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x5a7:0x38 DW_TAG_inlined_subroutine
	.long	672                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges16                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x5b4:0x2a DW_TAG_inlined_subroutine
	.long	764                             # DW_AT_abstract_origin
	.quad	.Ltmp30                         # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp30                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x5c9:0x14 DW_TAG_inlined_subroutine
	.long	776                             # DW_AT_abstract_origin
	.quad	.Ltmp31                         # DW_AT_low_pc
	.long	.Ltmp32-.Ltmp31                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x5e0:0x85 DW_TAG_inlined_subroutine
	.long	789                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges17                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x5ec:0x62 DW_TAG_inlined_subroutine
	.long	801                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges18                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	79                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x5f8:0x55 DW_TAG_inlined_subroutine
	.long	838                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges19                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x605:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270o"
	.long	850                             # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x60e:0x3e DW_TAG_inlined_subroutine
	.long	826                             # DW_AT_abstract_origin
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp42-.Ltmp38                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	177                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x622:0x29 DW_TAG_inlined_subroutine
	.long	814                             # DW_AT_abstract_origin
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp41-.Ltmp38                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x636:0x14 DW_TAG_inlined_subroutine
	.long	876                             # DW_AT_abstract_origin
	.quad	.Ltmp39                         # DW_AT_low_pc
	.long	.Ltmp40-.Ltmp39                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x64e:0x16 DW_TAG_inlined_subroutine
	.long	889                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges20                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x65a:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350l"
	.long	901                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x667:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string55                 # DW_AT_linkage_name
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x680:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	863                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x68e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	2302                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x69d:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string56                 # DW_AT_linkage_name
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	324                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6ba:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6c9:0x40 DW_TAG_subprogram
	.long	.Linfo_string38                 # DW_AT_linkage_name
	.long	.Linfo_string38                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x6d5:0xc DW_TAG_variable
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	1801                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6e1:0x27 DW_TAG_lexical_block
	.byte	35                              # Abbrev [35] 0x6e2:0xb DW_TAG_variable
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6ed:0x1a DW_TAG_lexical_block
	.byte	10                              # Abbrev [10] 0x6ee:0xc DW_TAG_variable
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	1883                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6fa:0xc DW_TAG_variable
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	601                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x709:0x1e DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x710:0xb DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1831                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x71b:0xb DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	601                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x727:0xd DW_TAG_pointer_type
	.long	1844                            # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	4                               # Abbrev [4] 0x734:0x9 DW_TAG_typedef
	.long	1853                            # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	20                              # Abbrev [20] 0x73d:0x1e DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x744:0xb DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1883                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x74f:0xb DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	601                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x75b:0xd DW_TAG_pointer_type
	.long	1896                            # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	5                               # Abbrev [5] 0x768:0x7 DW_TAG_base_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x76f:0x19 DW_TAG_subprogram
	.long	.Linfo_string48                 # DW_AT_linkage_name
	.long	.Linfo_string48                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x77b:0xc DW_TAG_variable
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	1801                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x788:0xd DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	875                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x795:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x7a2:0xd DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x7af:0xc DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x7bb:0xd DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x7c8:0x19 DW_TAG_subprogram
	.long	.Linfo_string49                 # DW_AT_linkage_name
	.long	.Linfo_string49                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x7d4:0xc DW_TAG_variable
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.long	601                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7e1:0x105 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string54                 # DW_AT_linkage_name
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	324                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x7fe:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	324                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x80c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	2447                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x81a:0xcb DW_TAG_inlined_subroutine
	.long	1903                            # DW_AT_abstract_origin
	.quad	.Ltmp73                         # DW_AT_low_pc
	.long	.Ltmp95-.Ltmp73                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	25                              # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x82e:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	1915                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x836:0xae DW_TAG_inlined_subroutine
	.long	1737                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges21                # DW_AT_ranges
	.byte	6                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x842:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	1749                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x84b:0x53 DW_TAG_inlined_subroutine
	.long	1928                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges22                # DW_AT_ranges
	.byte	6                               # DW_AT_call_file
	.byte	24                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x857:0x46 DW_TAG_inlined_subroutine
	.long	1954                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges23                # DW_AT_ranges
	.byte	7                               # DW_AT_call_file
	.short	877                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x864:0x38 DW_TAG_inlined_subroutine
	.long	1941                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges24                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x871:0x2a DW_TAG_inlined_subroutine
	.long	1967                            # DW_AT_abstract_origin
	.quad	.Ltmp76                         # DW_AT_low_pc
	.long	.Ltmp79-.Ltmp76                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x886:0x14 DW_TAG_inlined_subroutine
	.long	1979                            # DW_AT_abstract_origin
	.quad	.Ltmp77                         # DW_AT_low_pc
	.long	.Ltmp78-.Ltmp77                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x89e:0x45 DW_TAG_lexical_block
	.long	.Ldebug_ranges25                # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x8a3:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334}"
	.long	1762                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x8ac:0x36 DW_TAG_lexical_block
	.long	.Ldebug_ranges26                # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x8b1:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320}"
	.long	1774                            # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x8ba:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210}"
	.long	1786                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x8c3:0x1e DW_TAG_inlined_subroutine
	.long	1992                            # DW_AT_abstract_origin
	.quad	.Ltmp83                         # DW_AT_low_pc
	.long	.Ltmp86-.Ltmp83                 # DW_AT_high_pc
	.byte	6                               # DW_AT_call_file
	.byte	29                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x8d7:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370|"
	.long	2004                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8e6:0xb DW_TAG_typedef
	.long	2289                            # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x8f1:0xd DW_TAG_pointer_type
	.long	406                             # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	23                              # Abbrev [23] 0x8fe:0xb DW_TAG_typedef
	.long	2313                            # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x909:0xd DW_TAG_pointer_type
	.long	313                             # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	37                              # Abbrev [37] 0x916:0x3e DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	38                              # Abbrev [38] 0x91f:0xd DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	2388                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x92c:0xd DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	2399                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x939:0xd DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	588                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x946:0xd DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	601                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x954:0xb DW_TAG_typedef
	.long	2313                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x95f:0x1e DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x966:0xb DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x971:0xb DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	2429                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x97d:0x7 DW_TAG_base_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x984:0xb DW_TAG_typedef
	.long	735                             # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x98f:0xd DW_TAG_pointer_type
	.long	1883                            # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"main.c3"                       # string offset=4
.Linfo_string2:
	.asciz	"/home/user/code/c3/closures.c3l/example" # string offset=12
.Linfo_string3:
	.asciz	"code_ptr"                      # string offset=52
.Linfo_string4:
	.asciz	"void*"                         # string offset=61
.Linfo_string5:
	.asciz	"code_ptr__"                    # string offset=67
.Linfo_string6:
	.asciz	"code_len"                      # string offset=78
.Linfo_string7:
	.asciz	"ulong"                         # string offset=87
.Linfo_string8:
	.asciz	"uptr"                          # string offset=93
.Linfo_string9:
	.asciz	"code_len__"                    # string offset=98
.Linfo_string10:
	.asciz	"@on_stack"                     # string offset=109
.Linfo_string11:
	.asciz	"data"                          # string offset=119
.Linfo_string12:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=124
.Linfo_string13:
	.asciz	"@create_inner"                 # string offset=144
.Linfo_string14:
	.asciz	"@generate_closure_call_func"   # string offset=158
.Linfo_string15:
	.asciz	"f"                             # string offset=186
.Linfo_string16:
	.asciz	"int"                           # string offset=188
.Linfo_string17:
	.asciz	"closure.@generate_closure_call_func$lambda1" # string offset=192
.Linfo_string18:
	.asciz	"closure.@generate_closure_call_func$lambda3" # string offset=236
.Linfo_string19:
	.asciz	"closure.@generate_closure_call_func$lambda5" # string offset=280
.Linfo_string20:
	.asciz	"alloc_array_try"               # string offset=324
.Linfo_string21:
	.asciz	"alloc_array"                   # string offset=340
.Linfo_string22:
	.asciz	"@new"                          # string offset=352
.Linfo_string23:
	.asciz	"ptr"                           # string offset=357
.Linfo_string24:
	.asciz	"void**"                        # string offset=361
.Linfo_string25:
	.asciz	"len"                           # string offset=368
.Linfo_string26:
	.asciz	"usz"                           # string offset=372
.Linfo_string27:
	.asciz	"void*[]"                       # string offset=376
.Linfo_string28:
	.asciz	"malloc_try"                    # string offset=384
.Linfo_string29:
	.asciz	"is_power_of_2"                 # string offset=395
.Linfo_string30:
	.asciz	"@new_copy"                     # string offset=409
.Linfo_string31:
	.asciz	"CInt"                          # string offset=419
.Linfo_string32:
	.asciz	"closure.@generate_closure_call_func$lambda8" # string offset=424
.Linfo_string33:
	.asciz	"clone"                         # string offset=468
.Linfo_string34:
	.asciz	"malloc"                        # string offset=474
.Linfo_string35:
	.asciz	"new"                           # string offset=481
.Linfo_string36:
	.asciz	"val"                           # string offset=485
.Linfo_string37:
	.asciz	"int*"                          # string offset=489
.Linfo_string38:
	.asciz	"args_to_strings"               # string offset=494
.Linfo_string39:
	.asciz	"list"                          # string offset=510
.Linfo_string40:
	.asciz	"char"                          # string offset=515
.Linfo_string41:
	.asciz	"char*"                         # string offset=520
.Linfo_string42:
	.asciz	"char[]"                        # string offset=526
.Linfo_string43:
	.asciz	"String"                        # string offset=533
.Linfo_string44:
	.asciz	"String*"                       # string offset=540
.Linfo_string45:
	.asciz	"String[]"                      # string offset=548
.Linfo_string46:
	.asciz	"i"                             # string offset=557
.Linfo_string47:
	.asciz	"arg"                           # string offset=559
.Linfo_string48:
	.asciz	"@main_to_int_main_args"        # string offset=563
.Linfo_string49:
	.asciz	"_strlen"                       # string offset=586
.Linfo_string50:
	.asciz	"main.add3"                     # string offset=594
.Linfo_string51:
	.asciz	"add3"                          # string offset=604
.Linfo_string52:
	.asciz	"print_something"               # string offset=609
.Linfo_string53:
	.asciz	"main.main"                     # string offset=625
.Linfo_string54:
	.asciz	"main"                          # string offset=635
.Linfo_string55:
	.asciz	"main.main$lambda1"             # string offset=640
.Linfo_string56:
	.asciz	"main.main$lambda2"             # string offset=658
.Linfo_string57:
	.asciz	"_$main"                        # string offset=676
.Linfo_string58:
	.asciz	"a"                             # string offset=683
.Linfo_string59:
	.asciz	"b"                             # string offset=685
.Linfo_string60:
	.asciz	"c"                             # string offset=687
.Linfo_string61:
	.asciz	"args"                          # string offset=689
.Linfo_string62:
	.asciz	"allocated_size"                # string offset=694
.Linfo_string63:
	.asciz	"fn_data"                       # string offset=709
.Linfo_string64:
	.asciz	"VoidFn"                        # string offset=717
.Linfo_string65:
	.asciz	"add1"                          # string offset=724
.Linfo_string66:
	.asciz	"IntFn"                         # string offset=729
.Linfo_string67:
	.asciz	"calc_something"                # string offset=735
.Linfo_string68:
	.asciz	"test"                          # string offset=750
.Linfo_string69:
	.asciz	"func"                          # string offset=755
.Linfo_string70:
	.asciz	"FnType"                        # string offset=760
.Linfo_string71:
	.asciz	"alloc"                         # string offset=767
.Linfo_string72:
	.asciz	"type"                          # string offset=773
.Linfo_string73:
	.asciz	"typeid"                        # string offset=778
.Linfo_string74:
	.asciz	"Allocator"                     # string offset=785
.Linfo_string75:
	.asciz	"copied_count"                  # string offset=795
.Linfo_string76:
	.asciz	"Closure"                       # string offset=808
.Linfo_string77:
	.asciz	"other_test"                    # string offset=816
.Linfo_string78:
	.asciz	".anon"                         # string offset=827
.Linfo_string79:
	.asciz	"char**"                        # string offset=833
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2461                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"code_ptr"                      # External Name
	.long	78                              # DIE offset
	.asciz	"code_len"                      # External Name
	.long	121                             # DIE offset
	.asciz	"add3"                          # External Name
	.long	193                             # DIE offset
	.asciz	"print_something"               # External Name
	.long	407                             # DIE offset
	.asciz	"@on_stack"                     # External Name
	.long	521                             # DIE offset
	.asciz	"@new"                          # External Name
	.long	698                             # DIE offset
	.asciz	"@new_copy"                     # External Name
	.long	789                             # DIE offset
	.asciz	"@create_inner"                 # External Name
	.long	801                             # DIE offset
	.asciz	"clone"                         # External Name
	.long	826                             # DIE offset
	.asciz	"malloc"                        # External Name
	.long	838                             # DIE offset
	.asciz	"new"                           # External Name
	.long	889                             # DIE offset
	.asciz	"@generate_closure_call_func"   # External Name
	.long	914                             # DIE offset
	.asciz	"main"                          # External Name
	.long	1639                            # DIE offset
	.asciz	"main.main$lambda1"             # External Name
	.long	1693                            # DIE offset
	.asciz	"main.main$lambda2"             # External Name
	.long	1737                            # DIE offset
	.asciz	"args_to_strings"               # External Name
	.long	1903                            # DIE offset
	.asciz	"@main_to_int_main_args"        # External Name
	.long	1941                            # DIE offset
	.asciz	"alloc_array_try"               # External Name
	.long	1954                            # DIE offset
	.asciz	"alloc_array"                   # External Name
	.long	1967                            # DIE offset
	.asciz	"malloc_try"                    # External Name
	.long	1979                            # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	1992                            # DIE offset
	.asciz	"_strlen"                       # External Name
	.long	2017                            # DIE offset
	.asciz	"_$main"                        # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2461                            # Compilation Unit Length
	.long	69                              # DIE offset
	.asciz	"void*"                         # External Name
	.long	105                             # DIE offset
	.asciz	"uptr"                          # External Name
	.long	114                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	300                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda1" # External Name
	.long	324                             # DIE offset
	.asciz	"int"                           # External Name
	.long	393                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda3" # External Name
	.long	482                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda5" # External Name
	.long	558                             # DIE offset
	.asciz	"void*[]"                       # External Name
	.long	588                             # DIE offset
	.asciz	"void**"                        # External Name
	.long	601                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	735                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda8" # External Name
	.long	753                             # DIE offset
	.asciz	"CInt"                          # External Name
	.long	863                             # DIE offset
	.asciz	"int*"                          # External Name
	.long	1801                            # DIE offset
	.asciz	"String[]"                      # External Name
	.long	1831                            # DIE offset
	.asciz	"String*"                       # External Name
	.long	1844                            # DIE offset
	.asciz	"String"                        # External Name
	.long	1853                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	1883                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	1896                            # DIE offset
	.asciz	"char"                          # External Name
	.long	2289                            # DIE offset
	.asciz	"VoidFn"                        # External Name
	.long	2313                            # DIE offset
	.asciz	"IntFn"                         # External Name
	.long	2326                            # DIE offset
	.asciz	"Closure"                       # External Name
	.long	2399                            # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	2429                            # DIE offset
	.asciz	"typeid"                        # External Name
	.long	2436                            # DIE offset
	.asciz	"FnType"                        # External Name
	.long	2447                            # DIE offset
	.asciz	"char**"                        # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.io.printfn
	.weak	std.core.mem.vm.aligned_alloc_size
	.weak	std.core.mem.vm.VirtualMemoryAccess.to_posix
	.weak	libc.errno
	.weak	std.core.builtin.panicf
	.weak	closure_closure_struct$fn$int$int$$.Closure.free
	.weak	std.core.mem.free
	.weak	std.core.builtin.panic
	.weak	std.core.mem.allocator.thread_allocator
	.weak	std.core.mem.allocator.current_temp
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

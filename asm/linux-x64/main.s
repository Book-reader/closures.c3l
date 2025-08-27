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
	.loc	1 20 0 is_stmt 1                # main.c3:20:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
.Ltmp2:
	.loc	1 22 2 prologue_end             # main.c3:22:2
	leaq	-8(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$20, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%r8, %rcx
	callq	std.io.printfn@PLT
	.loc	1 22 2 epilogue_begin is_stmt 0 # main.c3:22:2
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
	.loc	1 26 0 is_stmt 1                # main.c3:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$3424, %rsp                     # imm = 0xD60
	movq	$0, -2384(%rbp)
	movq	$0, -2120(%rbp)
	movq	$0, -1528(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
.Ltmp4:
	.loc	1 29 2 prologue_end             # main.c3:29:2
	leaq	.L.str.4(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-24(%rbp), %rdi
	movl	$8, %edx
	movq	%r8, %rcx
	callq	std.io.printfn@PLT
	.loc	1 30 2                          # main.c3:30:2
	movq	code_len@GOTTPOFF(%rip), %rcx
	movq	%rcx, -2688(%rbp)               # 8-byte Spill
	movq	%fs:0, %rax
	movq	%rax, %rdx
	addq	%rcx, %rdx
	.loc	1 30 13 is_stmt 0               # main.c3:30:13
	movq	$2, %fs:(%rcx)
	.loc	1 32 1 is_stmt 1                # main.c3:32:1
	#APP

	pushq	%rax

	pushq	%rbx


	# First, load the address of "start:" into "code_ptr"
	leaq	.start, %rbx

	movq	code_ptr@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)

	# Second, get the length of the assembly in bytes
	leaq	.start, %rax

	leaq	.end, %rbx

	subq	%rax, %rbx

	movq	code_len@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)


	# Finally, store the offset of the data into code_offset and jump to end
	leaq	.start.data, %rax

	leaq	.start.exec, %rbx

	subq	%rax, %rbx

	movq	code_offset@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)


	jmp	.end


.start:
.start.data:
	.quad	0
.start.exec:
	pushq	%rax

	# leaq print_something, %rax;
	# movq .start.data(%rip), %rax;
	# callq *%rax;
	movq	.start.data(%rip), %rax

	callq	*%rax

	popq	%rax

	retq

.end:
	popq	%rbx

	popq	%rax


	#NO_APP
	.loc	1 73 61                         # main.c3:73:61
	movq	code_ptr@GOTTPOFF(%rip), %rsi
	movq	%rax, %rcx
	addq	%rsi, %rcx
	movq	($ct.p$void)@GOTPCREL(%rip), %rsi
	movq	%rsi, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc	1 73 71 is_stmt 0               # main.c3:73:71
	movq	($ct.ulong)@GOTPCREL(%rip), %rcx
	movq	%rcx, -2680(%rbp)               # 8-byte Spill
	movq	%rcx, -56(%rbp)
	movq	%rdx, -64(%rbp)
	.loc	1 73 81                         # main.c3:73:81
	movq	code_offset@GOTTPOFF(%rip), %rdx
	addq	%rdx, %rax
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 73 2                          # main.c3:73:2
	leaq	.L.str.5(%rip), %rsi
	leaq	-88(%rbp), %rdi
	movl	$43, %edx
	leaq	-80(%rbp), %rcx
	movl	$3, %r8d
	callq	std.io.printfn@PLT
                                        # kill: def $rcx killed $rax
	movq	-2688(%rbp), %rax               # 8-byte Reload
	.loc	1 76 46 is_stmt 1               # main.c3:76:46
	movq	%fs:(%rax), %rdi
	.loc	1 76 23 is_stmt 0               # main.c3:76:23
	callq	std.core.mem.vm.aligned_alloc_size@PLT
	movq	%rax, %rcx
	movq	-2680(%rbp), %rax               # 8-byte Reload
	movq	%rcx, -96(%rbp)
	.loc	1 77 37 is_stmt 1               # main.c3:77:37
	movq	%rax, -104(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc	1 77 2 is_stmt 0                # main.c3:77:2
	leaq	-120(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$19, %edx
	leaq	-112(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 78 52 is_stmt 1               # main.c3:78:52
	movl	$6, %edi
	callq	std.core.mem.vm.VirtualMemoryAccess.to_posix@PLT
	movl	%eax, %edx
	.loc	1 78 125 is_stmt 0              # main.c3:78:125
	movq	-96(%rbp), %rsi
	.loc	1 78 18                         # main.c3:78:18
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$34, %ecx
	movl	$4294967295, %r8d               # imm = 0xFFFFFFFF
	movq	%r9, %rdi
	callq	mmap@PLT
	movq	%rax, -128(%rbp)
	.loc	1 79 6 is_stmt 1                # main.c3:79:6
	movq	$-1, %rax
	cmpq	%rax, -128(%rbp)
	jne	.LBB2_2
# %bb.1:
.Ltmp5:
	.loc	1 81 28                         # main.c3:81:28
	callq	libc.errno@PLT
	movl	%eax, -148(%rbp)
	movq	($ct.libc.Errno)@GOTPCREL(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	-148(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc	1 81 3 is_stmt 0                # main.c3:81:3
	leaq	-160(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$9, %edx
	leaq	-144(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 82 10 is_stmt 1               # main.c3:82:10
	movl	$1, %eax
	.loc	1 82 10 epilogue_begin is_stmt 0 # main.c3:82:10
	addq	$3424, %rsp                     # imm = 0xD60
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB2_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 84 31 is_stmt 1               # main.c3:84:31
	movq	code_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -2712(%rbp)               # 8-byte Spill
	.loc	1 84 42 is_stmt 0               # main.c3:84:42
	movq	code_len@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -2704(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -2696(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_115
# %bb.3:
	.loc	1 0 42                          # main.c3:0:42
	movq	-2712(%rbp), %rax               # 8-byte Reload
	movq	-2704(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -2752(%rbp)               # 8-byte Spill
	movq	%rax, -2744(%rbp)               # 8-byte Spill
	.loc	1 84 2                          # main.c3:84:2
	movq	-128(%rbp), %rax
	movq	%rax, -2736(%rbp)               # 8-byte Spill
	.loc	1 84 11                         # main.c3:84:11
	movq	code_len@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -2728(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -2720(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_116
# %bb.4:
	.loc	1 0 11                          # main.c3:0:11
	movq	-2752(%rbp), %rcx               # 8-byte Reload
	movq	-2736(%rbp), %rdx               # 8-byte Reload
	movq	-2728(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2768(%rbp)               # 8-byte Spill
	movq	%rdx, -2760(%rbp)               # 8-byte Spill
	.loc	1 84 2                          # main.c3:84:2
	cmpq	%rcx, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_117
# %bb.5:
	.loc	1 0 2                           # main.c3:0:2
	movq	-2744(%rbp), %rsi               # 8-byte Reload
	movq	-2760(%rbp), %rdi               # 8-byte Reload
	movq	-2752(%rbp), %rdx               # 8-byte Reload
	.loc	1 84 2                          # main.c3:84:2
	shlq	$0, %rdx
	callq	memmove@PLT
	.loc	1 86 10 is_stmt 1               # main.c3:86:10
	movq	-128(%rbp), %rax
	movq	%rax, -2776(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_118
# %bb.6:
	.loc	1 0 10 is_stmt 0                # main.c3:0:10
	movq	-2776(%rbp), %rax               # 8-byte Reload
	.loc	1 86 3                          # main.c3:86:3
	andq	$7, %rax
	movq	%rax, -2784(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_119
# %bb.7:
	.loc	1 0 3                           # main.c3:0:3
	movq	-2776(%rbp), %rax               # 8-byte Reload
	.loc	1 86 3                          # main.c3:86:3
	movq	main.main@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	.loc	1 87 48 is_stmt 1               # main.c3:87:48
	movq	-128(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	$8, -440(%rbp)
	movq	($ct.sa$char)@GOTPCREL(%rip), %rcx
	movq	%rcx, -424(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	print_something@GOTPCREL(%rip), %rax
	movq	%rax, -464(%rbp)
	movq	$8, -456(%rbp)
	.loc	1 87 61 is_stmt 0               # main.c3:87:61
	movq	%rcx, -408(%rbp)
	leaq	-464(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movq	%rax, -472(%rbp)
	.loc	1 87 99                         # main.c3:87:99
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -392(%rbp)
	leaq	-472(%rbp), %rax
	movq	%rax, -400(%rbp)
	.loc	1 87 2                          # main.c3:87:2
	leaq	.L.str.11(%rip), %rsi
	leaq	-480(%rbp), %rdi
	movl	$30, %edx
	leaq	-432(%rbp), %rcx
	movl	$3, %r8d
	callq	std.io.printfn@PLT
	.loc	1 89 29 is_stmt 1               # main.c3:89:29
	movq	-128(%rbp), %rax
	.loc	1 89 37 is_stmt 0               # main.c3:89:37
	movq	code_offset@GOTTPOFF(%rip), %rcx
	movq	%fs:(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -488(%rbp)
	.loc	1 90 36 is_stmt 1               # main.c3:90:36
	movq	($ct.p$char)@GOTPCREL(%rip), %rax
	movq	%rax, -520(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -528(%rbp)
	.loc	1 90 45 is_stmt 0               # main.c3:90:45
	movq	($ct.fn$void$$)@GOTPCREL(%rip), %rax
	movq	%rax, -504(%rbp)
	leaq	-488(%rbp), %rax
	movq	%rax, -512(%rbp)
	.loc	1 90 2                          # main.c3:90:2
	leaq	-536(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	movl	$18, %edx
	leaq	-528(%rbp), %rcx
	movl	$2, %r8d
	callq	std.io.printfn@PLT
	.loc	1 91 2 is_stmt 1                # main.c3:91:2
	movq	-488(%rbp), %rax
	movq	%rax, -2792(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_120
# %bb.8:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2792(%rbp), %rax               # 8-byte Reload
	.loc	1 91 2                          # main.c3:91:2
	callq	*%rax
	.loc	1 92 16 is_stmt 1               # main.c3:92:16
	movq	-128(%rbp), %rdi
	.loc	1 92 25 is_stmt 0               # main.c3:92:25
	movq	-96(%rbp), %rsi
	.loc	1 92 2                          # main.c3:92:2
	callq	munmap@PLT
	.loc	1 94 10 is_stmt 1               # main.c3:94:10
	movl	$1, -540(%rbp)
	movq	main.add3@GOTPCREL(%rip), %rax
	movq	%rax, -560(%rbp)
.Ltmp7:
	.file	2 "/home/user/code/c3/closures.c3l" "closure.c3"
	.loc	2 16 27                         # closure.c3:16:27
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -592(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -600(%rbp)
	movq	$0, -608(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -624(%rbp)
.Ltmp8:
	.loc	2 56 9                          # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_10
# %bb.9:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_10:
	.loc	2 66 4                          # closure.c3:66:4
	movq	-616(%rbp), %rax
	.loc	2 66 9 is_stmt 0                # closure.c3:66:9
	addq	$8, %rax
	movq	%rax, -2808(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2800(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_121
# %bb.11:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2808(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-540(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$2, -692(%rbp)
	movq	-616(%rbp), %rax
	.loc	2 66 9                          # closure.c3:66:9
	addq	$16, %rax
	movq	%rax, -2824(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2816(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_122
# %bb.12:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2824(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-692(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-624(%rbp), %rax
	movq	%rax, -2848(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-616(%rbp), %rax
	movq	%rax, -2840(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -2832(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_123
# %bb.13:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-2840(%rbp), %rax               # 8-byte Reload
	movq	-2848(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-616(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp9:
	.file	3 "/home/user/code/c3/closures.c3l" "generated.c3"
	.loc	3 168 19 is_stmt 1              # generated.c3:168:19
	movq	"closure.@generate_closure_call_func$lambda2"@GOTPCREL(%rip), %rax
	movq	%rax, -840(%rbp)
	.loc	3 184 10                        # generated.c3:184:10
	movq	-840(%rbp), %rax
	movq	%rax, -2856(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_124
# %bb.14:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-2856(%rbp), %rax               # 8-byte Reload
	.loc	3 184 4                         # generated.c3:184:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	3 185 11 is_stmt 1              # generated.c3:185:11
	movq	-840(%rbp), %rax
	movq	%rax, -552(%rbp)
.Ltmp10:
	.loc	1 96 23                         # main.c3:96:23
	movq	-552(%rbp), %rax
	movq	%rax, -2864(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_125
# %bb.15:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-2864(%rbp), %rax               # 8-byte Reload
	movl	$3, %edi
	.loc	1 96 23                         # main.c3:96:23
	callq	*%rax
	movl	%eax, -868(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -856(%rbp)
	leaq	-868(%rbp), %rax
	movq	%rax, -864(%rbp)
	.loc	1 96 2                          # main.c3:96:2
	leaq	-880(%rbp), %rdi
	leaq	.L.str.17(%rip), %rsi
	movl	$5, %edx
	leaq	-864(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 97 6 is_stmt 1                # main.c3:97:6
	movl	$5, -540(%rbp)
	.loc	1 98 23                         # main.c3:98:23
	movq	-552(%rbp), %rax
	movq	%rax, -2872(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_126
# %bb.16:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-2872(%rbp), %rax               # 8-byte Reload
	movl	$3, %edi
	.loc	1 98 23                         # main.c3:98:23
	callq	*%rax
	movl	%eax, -900(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -888(%rbp)
	leaq	-900(%rbp), %rax
	movq	%rax, -896(%rbp)
	.loc	1 98 2                          # main.c3:98:2
	leaq	.L.str.19(%rip), %rsi
	leaq	-912(%rbp), %rdi
	movl	$5, %edx
	leaq	-896(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	leaq	main.main$lambda1(%rip), %rax
	movq	%rax, -928(%rbp)
.Ltmp11:
	.loc	2 16 27 is_stmt 1               # closure.c3:16:27
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -960(%rbp)
	movq	$0, -944(%rbp)
	movq	$0, -968(%rbp)
	movq	$0, -976(%rbp)
	leaq	-960(%rbp), %rax
	movq	%rax, -984(%rbp)
	movq	-928(%rbp), %rax
	movq	%rax, -992(%rbp)
.Ltmp12:
	.loc	2 56 9                          # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# %bb.17:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_18:
	.loc	2 0 9 is_stmt 0                 # closure.c3:0:9
	leaq	-540(%rbp), %rax
	movq	%rax, -1000(%rbp)
	.loc	2 66 4 is_stmt 1                # closure.c3:66:4
	movq	-984(%rbp), %rax
	.loc	2 66 9 is_stmt 0                # closure.c3:66:9
	addq	$8, %rax
	movq	%rax, -2888(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2880(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_127
# %bb.19:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2888(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-1000(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-984(%rbp), %rax
	.loc	2 66 9                          # closure.c3:66:9
	addq	$16, %rax
	movq	%rax, -2904(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -2896(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_128
# %bb.20:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-2904(%rbp), %rax               # 8-byte Reload
	.loc	2 66 4                          # closure.c3:66:4
	leaq	-552(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-992(%rbp), %rax
	movq	%rax, -2928(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-984(%rbp), %rax
	movq	%rax, -2920(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -2912(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_129
# %bb.21:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-2920(%rbp), %rax               # 8-byte Reload
	movq	-2928(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-984(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp13:
	.loc	3 83 19 is_stmt 1               # generated.c3:83:19
	movq	"closure.@generate_closure_call_func$lambda4"@GOTPCREL(%rip), %rax
	movq	%rax, -1208(%rbp)
	.loc	3 99 10                         # generated.c3:99:10
	movq	-1208(%rbp), %rax
	movq	%rax, -2936(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_130
# %bb.22:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-2936(%rbp), %rax               # 8-byte Reload
	.loc	3 99 4                          # generated.c3:99:4
	callq	*%rax
	.loc	3 100 11 is_stmt 1              # generated.c3:100:11
	movq	-1208(%rbp), %rax
	movq	%rax, -920(%rbp)
.Ltmp14:
	.loc	1 107 2                         # main.c3:107:2
	movq	-920(%rbp), %rax
	movq	%rax, -2944(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_131
# %bb.23:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2944(%rbp), %rax               # 8-byte Reload
	.loc	1 107 2                         # main.c3:107:2
	callq	*%rax
	.loc	1 108 2 is_stmt 1               # main.c3:108:2
	movq	-920(%rbp), %rax
	movq	%rax, -2952(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_132
# %bb.24:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2952(%rbp), %rax               # 8-byte Reload
	.loc	1 108 2                         # main.c3:108:2
	callq	*%rax
	leaq	main.main$lambda2(%rip), %rax
	movq	%rax, -1216(%rbp)
.Ltmp15:
	.loc	2 16 27 is_stmt 1               # closure.c3:16:27
	movq	$0, -1224(%rbp)
	movq	$0, -1232(%rbp)
	movq	$0, -1240(%rbp)
	leaq	-1224(%rbp), %rax
	movq	%rax, -1248(%rbp)
	movq	-1216(%rbp), %rax
	movq	%rax, -1256(%rbp)
.Ltmp16:
	.loc	2 56 9                          # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_26
# %bb.25:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_26:
	.loc	2 84 19                         # closure.c3:84:19
	movq	-1256(%rbp), %rax
	movq	%rax, -2976(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-1248(%rbp), %rax
	movq	%rax, -2968(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -2960(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_133
# %bb.27:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-2968(%rbp), %rax               # 8-byte Reload
	movq	-2976(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-1248(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp17:
	.loc	3 58 19 is_stmt 1               # generated.c3:58:19
	movq	"closure.@generate_closure_call_func$lambda6"@GOTPCREL(%rip), %rax
	movq	%rax, -1336(%rbp)
	.loc	3 74 10                         # generated.c3:74:10
	movq	-1336(%rbp), %rax
	movq	%rax, -2984(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_134
# %bb.28:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-2984(%rbp), %rax               # 8-byte Reload
	.loc	3 74 4                          # generated.c3:74:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	3 75 11 is_stmt 1               # generated.c3:75:11
	movq	-1336(%rbp), %rax
	movq	%rax, -552(%rbp)
.Ltmp18:
	.loc	1 116 2                         # main.c3:116:2
	movq	-920(%rbp), %rax
	movq	%rax, -2992(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_135
# %bb.29:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2992(%rbp), %rax               # 8-byte Reload
	.loc	1 116 2                         # main.c3:116:2
	callq	*%rax
	.loc	1 119 39 is_stmt 1              # main.c3:119:39
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -1392(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -1384(%rbp)
	movq	main.add3@GOTPCREL(%rip), %rax
	movq	%rax, -1400(%rbp)
	movq	-1392(%rbp), %rax
	movq	%rax, -1432(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1424(%rbp)
	movq	$3, -1440(%rbp)
	movq	-1432(%rbp), %rax
	movq	%rax, -1464(%rbp)
	movq	-1424(%rbp), %rax
	movq	%rax, -1456(%rbp)
	movq	-1440(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movq	-1464(%rbp), %rax
	movq	%rax, -1488(%rbp)
	movq	-1456(%rbp), %rax
	movq	%rax, -1480(%rbp)
.Ltmp19:
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	4 304 55                        # mem_allocator.c3:304:55
	movq	-1472(%rbp), %rax
	.loc	4 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -1496(%rbp)
.Ltmp20:
	.loc	4 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -1496(%rbp)
	jne	.LBB2_31
# %bb.30:
	.loc	4 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -1504(%rbp)
	jmp	.LBB2_49
.LBB2_31:
	.loc	4 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-1496(%rbp), %rax
	movq	%rax, -3008(%rbp)               # 8-byte Spill
	.loc	4 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -2993(%rbp)                # 1-byte Spill
	jne	.LBB2_35
# %bb.32:
	.loc	4 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -1512(%rbp)
.Ltmp21:
	.file	5 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-1512(%rbp), %rcx
	movb	%al, -3009(%rbp)                # 1-byte Spill
	je	.LBB2_34
# %bb.33:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-1512(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-1512(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3009(%rbp)                # 1-byte Spill
.LBB2_34:
	.loc	5 0 19                          # math.c3:0:19
	movb	-3009(%rbp), %al                # 1-byte Reload
	movb	%al, -2993(%rbp)                # 1-byte Spill
.LBB2_35:
	movb	-2993(%rbp), %al                # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_37
.Ltmp22:
# %bb.36:
	.loc	4 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.21(%rip), %rdi
	movl	$65, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_37:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_39
	jmp	.LBB2_38
.LBB2_38:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$80, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_39:
	.loc	4 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3008(%rbp), %rcx               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB2_41
# %bb.40:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$59, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_41:
	movq	-1480(%rbp), %rax
	movq	%rax, -3024(%rbp)               # 8-byte Spill
	cmpq	-1528(%rbp), %rax
	je	.LBB2_43
# %bb.42:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3024(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3024(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -1520(%rbp)
	movq	%rcx, -1528(%rbp)
	movq	%rax, -3032(%rbp)               # 8-byte Spill
	jmp	.LBB2_44
.LBB2_43:
	movq	-1520(%rbp), %rax
	movq	%rax, -3032(%rbp)               # 8-byte Spill
.LBB2_44:
	movq	-3032(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3040(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB2_46
# %bb.45:
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_46:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3040(%rbp), %rax               # 8-byte Reload
	movq	-3008(%rbp), %rdx               # 8-byte Reload
	movq	-1488(%rbp), %rsi
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	-1536(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3048(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_48
# %bb.47:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3048(%rbp), %rax               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -1448(%rbp)
	jmp	.LBB2_51
.LBB2_48:
	movq	-1536(%rbp), %rax
	movq	%rax, -1504(%rbp)
.LBB2_49:
	movq	-1504(%rbp), %rax
	movq	%rax, -3072(%rbp)               # 8-byte Spill
.Ltmp23:
	.loc	4 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-1472(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -3064(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -3056(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_136
# %bb.50:
	.loc	4 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-3072(%rbp), %rax               # 8-byte Reload
	movq	-3064(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -3088(%rbp)               # 8-byte Spill
	movq	%rax, -3080(%rbp)               # 8-byte Spill
	.loc	4 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB2_52
.LBB2_51:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -1592(%rbp)
	leaq	-1448(%rbp), %rax
	movq	%rax, -1600(%rbp)
	leaq	-1600(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	$1, -1608(%rbp)
.Ltmp24:
	.loc	4 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.26(%rip), %rdi
	movl	$36, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1616(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_52:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3088(%rbp), %rax               # 8-byte Reload
	movq	-3080(%rbp), %rcx               # 8-byte Reload
	.loc	4 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -1416(%rbp)
	movq	%rax, -1408(%rbp)
	movq	-1392(%rbp), %rax
	movq	%rax, -1640(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1632(%rbp)
	movq	-1416(%rbp), %rax
	movq	%rax, -1648(%rbp)
	movq	-1400(%rbp), %rax
	movq	%rax, -1656(%rbp)
.Ltmp25:
	.loc	2 56 9 is_stmt 1                # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_54
# %bb.53:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_54:
	.loc	2 74 4                          # closure.c3:74:4
	movq	-1648(%rbp), %rax
	.loc	2 74 9 is_stmt 0                # closure.c3:74:9
	addq	$8, %rax
	movq	%rax, -3104(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3096(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_137
# %bb.55:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-3104(%rbp), %rax               # 8-byte Reload
	.loc	2 74 4                          # closure.c3:74:4
	leaq	-540(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$4, -1732(%rbp)
	movq	-1648(%rbp), %rax
	.loc	2 74 9                          # closure.c3:74:9
	addq	$16, %rax
	movq	%rax, -3120(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3112(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_138
# %bb.56:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-3120(%rbp), %rax               # 8-byte Reload
	.loc	2 74 4                          # closure.c3:74:4
	leaq	-1732(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-1656(%rbp), %rax
	movq	%rax, -3144(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-1648(%rbp), %rax
	movq	%rax, -3136(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -3128(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_139
# %bb.57:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-3136(%rbp), %rax               # 8-byte Reload
	movq	-3144(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-1648(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp26:
	.loc	3 168 19 is_stmt 1              # generated.c3:168:19
	movq	"closure.@generate_closure_call_func$lambda7"@GOTPCREL(%rip), %rax
	movq	%rax, -1880(%rbp)
	.loc	3 184 10                        # generated.c3:184:10
	movq	-1880(%rbp), %rax
	movq	%rax, -3152(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_140
# %bb.58:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-3152(%rbp), %rax               # 8-byte Reload
	.loc	3 184 4                         # generated.c3:184:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	3 185 11 is_stmt 1              # generated.c3:185:11
	movq	-1880(%rbp), %rax
	movq	%rax, -1624(%rbp)
.Ltmp27:
	.loc	2 32 33                         # closure.c3:32:33
	movq	-1624(%rbp), %rax
	movq	%rax, -1920(%rbp)
	.loc	2 32 9 is_stmt 0                # closure.c3:32:9
	movq	-1392(%rbp), %rax
	movq	%rax, -1912(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1904(%rbp)
	movq	-1416(%rbp), %rax
	movq	%rax, -1896(%rbp)
	movq	$0, -1888(%rbp)
	vmovdqu	-1920(%rbp), %xmm0
	vmovdqu	-1904(%rbp), %xmm1
	vmovdqa	%xmm1, -1360(%rbp)
	vmovdqa	%xmm0, -1376(%rbp)
	movq	-1888(%rbp), %rax
	movq	%rax, -1344(%rbp)
.Ltmp28:
	.loc	1 121 26 is_stmt 1              # main.c3:121:26
	movq	-1376(%rbp), %rax
	movq	%rax, -3160(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_141
# %bb.59:
	.loc	1 0 26 is_stmt 0                # main.c3:0:26
	movq	-3160(%rbp), %rax               # 8-byte Reload
	movl	$6, %edi
	.loc	1 121 26                        # main.c3:121:26
	callq	*%rax
	movl	%eax, -1940(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -1928(%rbp)
	leaq	-1940(%rbp), %rax
	movq	%rax, -1936(%rbp)
	.loc	1 121 2                         # main.c3:121:2
	leaq	-1952(%rbp), %rdi
	leaq	.L.str.27(%rip), %rsi
	movl	$8, %edx
	leaq	-1936(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 123 10 is_stmt 1              # main.c3:123:10
	movl	$5, -1956(%rbp)
	.loc	1 126 49                        # main.c3:126:49
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -1984(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -1976(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1992(%rbp)
	movq	-1984(%rbp), %rax
	movq	%rax, -2024(%rbp)
	movq	-1976(%rbp), %rax
	movq	%rax, -2016(%rbp)
	movq	$2, -2032(%rbp)
	movq	-2024(%rbp), %rax
	movq	%rax, -2056(%rbp)
	movq	-2016(%rbp), %rax
	movq	%rax, -2048(%rbp)
	movq	-2032(%rbp), %rax
	movq	%rax, -2064(%rbp)
	movq	-2056(%rbp), %rax
	movq	%rax, -2080(%rbp)
	movq	-2048(%rbp), %rax
	movq	%rax, -2072(%rbp)
.Ltmp29:
	.loc	4 304 55                        # mem_allocator.c3:304:55
	movq	-2064(%rbp), %rax
	.loc	4 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -2088(%rbp)
.Ltmp30:
	.loc	4 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -2088(%rbp)
	jne	.LBB2_61
# %bb.60:
	.loc	4 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -2096(%rbp)
	jmp	.LBB2_79
.LBB2_61:
	.loc	4 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-2088(%rbp), %rax
	movq	%rax, -3176(%rbp)               # 8-byte Spill
	.loc	4 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -3161(%rbp)                # 1-byte Spill
	jne	.LBB2_65
# %bb.62:
	.loc	4 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -2104(%rbp)
.Ltmp31:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-2104(%rbp), %rcx
	movb	%al, -3177(%rbp)                # 1-byte Spill
	je	.LBB2_64
# %bb.63:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-2104(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-2104(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3177(%rbp)                # 1-byte Spill
.LBB2_64:
	.loc	5 0 19                          # math.c3:0:19
	movb	-3177(%rbp), %al                # 1-byte Reload
	movb	%al, -3161(%rbp)                # 1-byte Spill
.LBB2_65:
	movb	-3161(%rbp), %al                # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_67
.Ltmp32:
# %bb.66:
	.loc	4 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.21(%rip), %rdi
	movl	$65, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_67:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_69
	jmp	.LBB2_68
.LBB2_68:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$80, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_69:
	.loc	4 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3176(%rbp), %rcx               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB2_71
# %bb.70:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$59, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_71:
	movq	-2072(%rbp), %rax
	movq	%rax, -3192(%rbp)               # 8-byte Spill
	cmpq	-2120(%rbp), %rax
	je	.LBB2_73
# %bb.72:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3192(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3192(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -2112(%rbp)
	movq	%rcx, -2120(%rbp)
	movq	%rax, -3200(%rbp)               # 8-byte Spill
	jmp	.LBB2_74
.LBB2_73:
	movq	-2112(%rbp), %rax
	movq	%rax, -3200(%rbp)               # 8-byte Spill
.LBB2_74:
	movq	-3200(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3208(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB2_76
# %bb.75:
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_76:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3208(%rbp), %rax               # 8-byte Reload
	movq	-3176(%rbp), %rdx               # 8-byte Reload
	movq	-2080(%rbp), %rsi
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	-2128(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3216(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_78
# %bb.77:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3216(%rbp), %rax               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -2040(%rbp)
	jmp	.LBB2_81
.LBB2_78:
	movq	-2128(%rbp), %rax
	movq	%rax, -2096(%rbp)
.LBB2_79:
	movq	-2096(%rbp), %rax
	movq	%rax, -3240(%rbp)               # 8-byte Spill
.Ltmp33:
	.loc	4 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-2064(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -3232(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -3224(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB2_142
# %bb.80:
	.loc	4 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-3240(%rbp), %rax               # 8-byte Reload
	movq	-3232(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -3256(%rbp)               # 8-byte Spill
	movq	%rax, -3248(%rbp)               # 8-byte Spill
	.loc	4 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB2_82
.LBB2_81:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2184(%rbp)
	leaq	-2040(%rbp), %rax
	movq	%rax, -2192(%rbp)
	leaq	-2192(%rbp), %rax
	movq	%rax, -2208(%rbp)
	movq	$1, -2200(%rbp)
.Ltmp34:
	.loc	4 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.26(%rip), %rdi
	movl	$36, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2208(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_82:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3256(%rbp), %rax               # 8-byte Reload
	movq	-3248(%rbp), %rcx               # 8-byte Reload
	.loc	4 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -2008(%rbp)
	movq	%rax, -2000(%rbp)
	movq	-1984(%rbp), %rax
	movq	%rax, -2232(%rbp)
	movq	-1976(%rbp), %rax
	movq	%rax, -2224(%rbp)
	movq	-2008(%rbp), %rax
	movq	%rax, -2240(%rbp)
	movq	-1992(%rbp), %rax
	movq	%rax, -2248(%rbp)
.Ltmp35:
	.loc	2 56 9 is_stmt 1                # closure.c3:56:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_84
# %bb.83:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$56, (%rsp)
	callq	*(%rax)
.LBB2_84:
	.loc	2 0 9 is_stmt 0                 # closure.c3:0:9
	movq	-2232(%rbp), %rax
	movq	%rax, -2264(%rbp)
	movq	-2224(%rbp), %rax
	movq	%rax, -2256(%rbp)
	movl	-1956(%rbp), %eax
	movl	%eax, -2268(%rbp)
.Ltmp36:
	.loc	4 315 23 is_stmt 1              # mem_allocator.c3:315:23
	cmpq	$0, -2264(%rbp)
	jne	.LBB2_86
# %bb.85:
	leaq	.panic_msg.29(%rip), %rdi
	movl	$37, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$315, (%rsp)                    # imm = 0x13B
	callq	*(%rax)
.Ltmp37:
.LBB2_86:
	.loc	4 0 23 is_stmt 0                # mem_allocator.c3:0:23
	movq	-2264(%rbp), %rax
	movq	%rax, -2288(%rbp)
	movq	-2256(%rbp), %rax
	movq	%rax, -2280(%rbp)
	movq	-2288(%rbp), %rax
	movq	%rax, -2312(%rbp)
	movq	-2280(%rbp), %rax
	movq	%rax, -2304(%rbp)
	movq	$4, -2320(%rbp)
	movq	-2312(%rbp), %rax
	movq	%rax, -2344(%rbp)
	movq	-2304(%rbp), %rax
	movq	%rax, -2336(%rbp)
	movq	-2320(%rbp), %rax
	movq	%rax, -2352(%rbp)
.Ltmp38:
	.loc	4 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -2352(%rbp)
	jne	.LBB2_88
# %bb.87:
	.loc	4 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -2360(%rbp)
	jmp	.LBB2_106
.LBB2_88:
	.loc	4 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-2352(%rbp), %rax
	movq	%rax, -3272(%rbp)               # 8-byte Spill
	.loc	4 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -3257(%rbp)                # 1-byte Spill
	jne	.LBB2_92
# %bb.89:
	.loc	4 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -2368(%rbp)
.Ltmp39:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-2368(%rbp), %rcx
	movb	%al, -3273(%rbp)                # 1-byte Spill
	je	.LBB2_91
# %bb.90:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-2368(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-2368(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3273(%rbp)                # 1-byte Spill
.LBB2_91:
	.loc	5 0 19                          # math.c3:0:19
	movb	-3273(%rbp), %al                # 1-byte Reload
	movb	%al, -3257(%rbp)                # 1-byte Spill
.LBB2_92:
	movb	-3257(%rbp), %al                # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_94
.Ltmp40:
# %bb.93:
	.loc	4 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.21(%rip), %rdi
	movl	$65, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_94:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_96
	jmp	.LBB2_95
.LBB2_95:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$80, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_96:
	.loc	4 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3272(%rbp), %rcx               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB2_98
# %bb.97:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$59, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_98:
	movq	-2336(%rbp), %rax
	movq	%rax, -3288(%rbp)               # 8-byte Spill
	cmpq	-2384(%rbp), %rax
	je	.LBB2_100
# %bb.99:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3288(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3288(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -2376(%rbp)
	movq	%rcx, -2384(%rbp)
	movq	%rax, -3296(%rbp)               # 8-byte Spill
	jmp	.LBB2_101
.LBB2_100:
	movq	-2376(%rbp), %rax
	movq	%rax, -3296(%rbp)               # 8-byte Spill
.LBB2_101:
	movq	-3296(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3304(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB2_103
# %bb.102:
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_103:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3304(%rbp), %rax               # 8-byte Reload
	movq	-3272(%rbp), %rdx               # 8-byte Reload
	movq	-2344(%rbp), %rsi
	.loc	4 86 10                         # mem_allocator.c3:86:10
	leaq	-2392(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3312(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_105
# %bb.104:
	.loc	4 0 10                          # mem_allocator.c3:0:10
	movq	-3312(%rbp), %rax               # 8-byte Reload
	.loc	4 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -2328(%rbp)
	jmp	.LBB2_107
.LBB2_105:
	movq	-2392(%rbp), %rax
	movq	%rax, -2360(%rbp)
.LBB2_106:
	jmp	.LBB2_108
.LBB2_107:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2408(%rbp)
	leaq	-2328(%rbp), %rax
	movq	%rax, -2416(%rbp)
	leaq	-2416(%rbp), %rax
	movq	%rax, -2432(%rbp)
	movq	$1, -2424(%rbp)
.Ltmp41:
	.loc	4 75 9 is_stmt 1                # mem_allocator.c3:75:9
	leaq	.panic_msg.26(%rip), %rdi
	movl	$36, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2432(%rbp), %rax
	movl	$75, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_108:
	movq	-2360(%rbp), %rax
	movq	%rax, -2296(%rbp)
.Ltmp42:
	.loc	4 178 4                         # mem_allocator.c3:178:4
	movq	-2296(%rbp), %rax
	movq	%rax, -3320(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_143
# %bb.109:
	.loc	4 0 4 is_stmt 0                 # mem_allocator.c3:0:4
	movq	-3320(%rbp), %rax               # 8-byte Reload
	.loc	4 178 4                         # mem_allocator.c3:178:4
	andq	$3, %rax
	movq	%rax, -3328(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_144
# %bb.110:
	.loc	4 0 4                           # mem_allocator.c3:0:4
	movq	-3320(%rbp), %rax               # 8-byte Reload
	.loc	4 178 4                         # mem_allocator.c3:178:4
	movl	-2268(%rbp), %ecx
	movl	%ecx, (%rax)
	.loc	4 179 10 is_stmt 1              # mem_allocator.c3:179:10
	movq	-2296(%rbp), %rax
	movq	%rax, -3352(%rbp)               # 8-byte Spill
.Ltmp43:
	.loc	2 79 4                          # closure.c3:79:4
	movq	-2240(%rbp), %rax
	.loc	2 79 9 is_stmt 0                # closure.c3:79:9
	addq	$8, %rax
	movq	%rax, -3344(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3336(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_145
# %bb.111:
	.loc	2 0 9                           # closure.c3:0:9
	movq	-3344(%rbp), %rax               # 8-byte Reload
	movq	-3352(%rbp), %rcx               # 8-byte Reload
	.loc	2 79 4                          # closure.c3:79:4
	movq	%rcx, (%rax)
	.loc	2 84 19 is_stmt 1               # closure.c3:84:19
	movq	-2248(%rbp), %rax
	movq	%rax, -3376(%rbp)               # 8-byte Spill
	.loc	2 84 2 is_stmt 0                # closure.c3:84:2
	movq	-2240(%rbp), %rax
	movq	%rax, -3368(%rbp)               # 8-byte Spill
	.loc	2 84 7                          # closure.c3:84:7
	andq	$7, %rax
	movq	%rax, -3360(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_146
# %bb.112:
	.loc	2 0 7                           # closure.c3:0:7
	movq	-3368(%rbp), %rax               # 8-byte Reload
	movq	-3376(%rbp), %rcx               # 8-byte Reload
	.loc	2 84 2                          # closure.c3:84:2
	movq	%rcx, (%rax)
	.loc	2 86 2 is_stmt 1                # closure.c3:86:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 86 21 is_stmt 0               # closure.c3:86:21
	movq	-2240(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp44:
	.loc	3 38 19 is_stmt 1               # generated.c3:38:19
	movq	"closure.@generate_closure_call_func$lambda9"@GOTPCREL(%rip), %rax
	movq	%rax, -2632(%rbp)
	.loc	3 54 10                         # generated.c3:54:10
	movq	-2632(%rbp), %rax
	movq	%rax, -3384(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_147
# %bb.113:
	.loc	3 0 10 is_stmt 0                # generated.c3:0:10
	movq	-3384(%rbp), %rax               # 8-byte Reload
	.loc	3 54 4                          # generated.c3:54:4
	callq	*%rax
	.loc	3 55 11 is_stmt 1               # generated.c3:55:11
	movq	-2632(%rbp), %rax
	movq	%rax, -2216(%rbp)
.Ltmp45:
	.loc	2 46 9                          # closure.c3:46:9
	movq	-2216(%rbp), %rax
	movq	%rax, -2672(%rbp)
	movq	-1984(%rbp), %rax
	movq	%rax, -2664(%rbp)
	movq	-1976(%rbp), %rax
	movq	%rax, -2656(%rbp)
	movq	-2008(%rbp), %rax
	movq	%rax, -2648(%rbp)
	movq	$1, -2640(%rbp)
	movq	-2672(%rbp), %rax
	movq	%rax, -1968(%rbp)
.Ltmp46:
	.loc	1 127 6                         # main.c3:127:6
	movl	$1000, -1956(%rbp)              # imm = 0x3E8
	.loc	1 128 2                         # main.c3:128:2
	movq	-1968(%rbp), %rax
	movq	%rax, -3392(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_148
# %bb.114:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3392(%rbp), %rax               # 8-byte Reload
	.loc	1 128 2                         # main.c3:128:2
	callq	*%rax
.Ltmp47:
	.loc	1 120 8 is_stmt 1               # main.c3:120:8
	leaq	-1376(%rbp), %rdi
	callq	closure_closure_struct$fn$int$int$$.Closure.free@PLT
	xorl	%eax, %eax
	.loc	1 120 8 epilogue_begin is_stmt 0 # main.c3:120:8
	addq	$3424, %rsp                     # imm = 0xD60
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp48:
.LBB2_115:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # main.c3:0:8
	movq	-2696(%rbp), %rax               # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -184(%rbp)
	leaq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$1, -200(%rbp)
	.loc	1 84 23 is_stmt 1               # main.c3:84:23
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-208(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_116:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-2720(%rbp), %rax               # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	-216(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$1, -248(%rbp)
	.loc	1 84 2                          # main.c3:84:2
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-256(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_117:
	.loc	1 0 2                           # main.c3:0:2
	movq	-2752(%rbp), %rcx               # 8-byte Reload
	movq	-2768(%rbp), %rax               # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -272(%rbp)
	movq	%rax, -296(%rbp)
	leaq	-264(%rbp), %rcx
	movq	%rcx, -304(%rbp)
	movq	%rax, -280(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$2, -312(%rbp)
	.loc	1 84 2                          # main.c3:84:2
	leaq	.panic_msg.8(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-320(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_118:
	.loc	1 86 3 is_stmt 1                # main.c3:86:3
	leaq	.panic_msg.9(%rip), %rdi
	movl	$55, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB2_119:
	.loc	1 0 3 is_stmt 0                 # main.c3:0:3
	movq	-2784(%rbp), %rcx               # 8-byte Reload
	movq	$8, -328(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -336(%rbp)
	movq	%rax, -360(%rbp)
	leaq	-328(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	%rax, -344(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -352(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	$2, -376(%rbp)
	.loc	1 86 3                          # main.c3:86:3
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-384(%rbp), %rax
	movl	$86, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_120:
	.loc	1 91 2 is_stmt 1                # main.c3:91:2
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$91, (%rsp)
	callq	*(%rax)
.LBB2_121:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2800(%rbp), %rcx               # 8-byte Reload
	movq	$8, -632(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -640(%rbp)
	movq	%rax, -664(%rbp)
	leaq	-632(%rbp), %rcx
	movq	%rcx, -672(%rbp)
	movq	%rax, -648(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, -656(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, -688(%rbp)
	movq	$2, -680(%rbp)
.Ltmp49:
	.loc	2 66 4 is_stmt 1                # closure.c3:66:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-688(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_122:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-2816(%rbp), %rcx               # 8-byte Reload
	movq	$8, -704(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -712(%rbp)
	movq	%rax, -744(%rbp)
	leaq	-704(%rbp), %rcx
	movq	%rcx, -752(%rbp)
	movq	%rax, -728(%rbp)
	leaq	-712(%rbp), %rax
	movq	%rax, -736(%rbp)
	leaq	-752(%rbp), %rax
	movq	%rax, -768(%rbp)
	movq	$2, -760(%rbp)
	.loc	2 66 4                          # closure.c3:66:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-768(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_123:
	.loc	2 0 4                           # closure.c3:0:4
	movq	-2832(%rbp), %rcx               # 8-byte Reload
	movq	$8, -776(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -784(%rbp)
	movq	%rax, -808(%rbp)
	leaq	-776(%rbp), %rcx
	movq	%rcx, -816(%rbp)
	movq	%rax, -792(%rbp)
	leaq	-784(%rbp), %rax
	movq	%rax, -800(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, -832(%rbp)
	movq	$2, -824(%rbp)
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-832(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_124:
.Ltmp50:
	.loc	3 184 10                        # generated.c3:184:10
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$184, (%rsp)
	callq	*(%rax)
.Ltmp51:
.LBB2_125:
	.loc	1 96 23                         # main.c3:96:23
	leaq	.panic_msg.18(%rip), %rdi
	movl	$47, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$96, (%rsp)
	callq	*(%rax)
.LBB2_126:
	.loc	1 98 23                         # main.c3:98:23
	leaq	.panic_msg.18(%rip), %rdi
	movl	$47, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$98, (%rsp)
	callq	*(%rax)
.LBB2_127:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-2880(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1008(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1016(%rbp)
	movq	%rax, -1048(%rbp)
	leaq	-1008(%rbp), %rcx
	movq	%rcx, -1056(%rbp)
	movq	%rax, -1032(%rbp)
	leaq	-1016(%rbp), %rax
	movq	%rax, -1040(%rbp)
	leaq	-1056(%rbp), %rax
	movq	%rax, -1072(%rbp)
	movq	$2, -1064(%rbp)
.Ltmp52:
	.loc	2 66 4 is_stmt 1                # closure.c3:66:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1072(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_128:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-2896(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1080(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1088(%rbp)
	movq	%rax, -1112(%rbp)
	leaq	-1080(%rbp), %rcx
	movq	%rcx, -1120(%rbp)
	movq	%rax, -1096(%rbp)
	leaq	-1088(%rbp), %rax
	movq	%rax, -1104(%rbp)
	leaq	-1120(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	$2, -1128(%rbp)
	.loc	2 66 4                          # closure.c3:66:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1136(%rbp), %rax
	movl	$66, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_129:
	.loc	2 0 4                           # closure.c3:0:4
	movq	-2912(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1144(%rbp)
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
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1200(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_130:
.Ltmp53:
	.loc	3 99 10                         # generated.c3:99:10
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$99, (%rsp)
	callq	*(%rax)
.Ltmp54:
.LBB2_131:
	.loc	1 107 2                         # main.c3:107:2
	leaq	.panic_msg.20(%rip), %rdi
	movl	$57, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$107, (%rsp)
	callq	*(%rax)
.LBB2_132:
	.loc	1 108 2                         # main.c3:108:2
	leaq	.panic_msg.20(%rip), %rdi
	movl	$57, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$108, (%rsp)
	callq	*(%rax)
.LBB2_133:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-2960(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1264(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1272(%rbp)
	movq	%rax, -1304(%rbp)
	leaq	-1264(%rbp), %rcx
	movq	%rcx, -1312(%rbp)
	movq	%rax, -1288(%rbp)
	leaq	-1272(%rbp), %rax
	movq	%rax, -1296(%rbp)
	leaq	-1312(%rbp), %rax
	movq	%rax, -1328(%rbp)
	movq	$2, -1320(%rbp)
.Ltmp55:
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1328(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_134:
.Ltmp56:
	.loc	3 74 10                         # generated.c3:74:10
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$74, (%rsp)
	callq	*(%rax)
.Ltmp57:
.LBB2_135:
	.loc	1 116 2                         # main.c3:116:2
	leaq	.panic_msg.20(%rip), %rdi
	movl	$57, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$116, (%rsp)
	callq	*(%rax)
.LBB2_136:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3056(%rbp), %rax               # 8-byte Reload
	movq	%rax, -1544(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -1560(%rbp)
	leaq	-1544(%rbp), %rax
	movq	%rax, -1568(%rbp)
	leaq	-1568(%rbp), %rax
	movq	%rax, -1584(%rbp)
	movq	$1, -1576(%rbp)
.Ltmp58:
	.loc	4 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1584(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp59:
.LBB2_137:
	.loc	4 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3096(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1664(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1672(%rbp)
	movq	%rax, -1704(%rbp)
	leaq	-1664(%rbp), %rcx
	movq	%rcx, -1712(%rbp)
	movq	%rax, -1688(%rbp)
	leaq	-1672(%rbp), %rax
	movq	%rax, -1696(%rbp)
	leaq	-1712(%rbp), %rax
	movq	%rax, -1728(%rbp)
	movq	$2, -1720(%rbp)
.Ltmp60:
	.loc	2 74 4 is_stmt 1                # closure.c3:74:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1728(%rbp), %rax
	movl	$74, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_138:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-3112(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1744(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1752(%rbp)
	movq	%rax, -1784(%rbp)
	leaq	-1744(%rbp), %rcx
	movq	%rcx, -1792(%rbp)
	movq	%rax, -1768(%rbp)
	leaq	-1752(%rbp), %rax
	movq	%rax, -1776(%rbp)
	leaq	-1792(%rbp), %rax
	movq	%rax, -1808(%rbp)
	movq	$2, -1800(%rbp)
	.loc	2 74 4                          # closure.c3:74:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1808(%rbp), %rax
	movl	$74, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_139:
	.loc	2 0 4                           # closure.c3:0:4
	movq	-3128(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1816(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1824(%rbp)
	movq	%rax, -1848(%rbp)
	leaq	-1816(%rbp), %rcx
	movq	%rcx, -1856(%rbp)
	movq	%rax, -1832(%rbp)
	leaq	-1824(%rbp), %rax
	movq	%rax, -1840(%rbp)
	leaq	-1856(%rbp), %rax
	movq	%rax, -1872(%rbp)
	movq	$2, -1864(%rbp)
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-1872(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_140:
.Ltmp61:
	.loc	3 184 10                        # generated.c3:184:10
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$184, (%rsp)
	callq	*(%rax)
.Ltmp62:
.LBB2_141:
	.loc	1 121 26                        # main.c3:121:26
	leaq	.panic_msg.28(%rip), %rdi
	movl	$52, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$121, (%rsp)
	callq	*(%rax)
.LBB2_142:
	.loc	1 0 26 is_stmt 0                # main.c3:0:26
	movq	-3224(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2136(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -2152(%rbp)
	leaq	-2136(%rbp), %rax
	movq	%rax, -2160(%rbp)
	leaq	-2160(%rbp), %rax
	movq	%rax, -2176(%rbp)
	movq	$1, -2168(%rbp)
.Ltmp63:
	.loc	4 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg(%rip), %rdi
	movl	$43, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2176(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp64:
.LBB2_143:
	.loc	4 178 4                         # mem_allocator.c3:178:4
	leaq	.panic_msg.30(%rip), %rdi
	movl	$44, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$178, (%rsp)
	callq	*(%rax)
.LBB2_144:
	.loc	4 0 4 is_stmt 0                 # mem_allocator.c3:0:4
	movq	-3328(%rbp), %rcx               # 8-byte Reload
	movq	$4, -2440(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2448(%rbp)
	movq	%rax, -2472(%rbp)
	leaq	-2440(%rbp), %rcx
	movq	%rcx, -2480(%rbp)
	movq	%rax, -2456(%rbp)
	leaq	-2448(%rbp), %rax
	movq	%rax, -2464(%rbp)
	leaq	-2480(%rbp), %rax
	movq	%rax, -2496(%rbp)
	movq	$2, -2488(%rbp)
	.loc	4 178 4                         # mem_allocator.c3:178:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2496(%rbp), %rax
	movl	$178, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp65:
.LBB2_145:
	.loc	4 0 4                           # mem_allocator.c3:0:4
	movq	-3336(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2504(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2512(%rbp)
	movq	%rax, -2536(%rbp)
	leaq	-2504(%rbp), %rcx
	movq	%rcx, -2544(%rbp)
	movq	%rax, -2520(%rbp)
	leaq	-2512(%rbp), %rax
	movq	%rax, -2528(%rbp)
	leaq	-2544(%rbp), %rax
	movq	%rax, -2560(%rbp)
	movq	$2, -2552(%rbp)
	.loc	2 79 4 is_stmt 1                # closure.c3:79:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2560(%rbp), %rax
	movl	$79, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_146:
	.loc	2 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-3360(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2568(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2576(%rbp)
	movq	%rax, -2600(%rbp)
	leaq	-2568(%rbp), %rcx
	movq	%rcx, -2608(%rbp)
	movq	%rax, -2584(%rbp)
	leaq	-2576(%rbp), %rax
	movq	%rax, -2592(%rbp)
	leaq	-2608(%rbp), %rax
	movq	%rax, -2624(%rbp)
	movq	$2, -2616(%rbp)
	.loc	2 84 2 is_stmt 1                # closure.c3:84:2
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-2624(%rbp), %rax
	movl	$84, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_147:
.Ltmp66:
	.loc	3 54 10                         # generated.c3:54:10
	leaq	.panic_msg.13(%rip), %rdi
	movl	$44, %esi
	leaq	.file.16(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$54, (%rsp)
	callq	*(%rax)
.Ltmp67:
.LBB2_148:
	.loc	1 128 2                         # main.c3:128:2
	leaq	.panic_msg.31(%rip), %rdi
	movl	$53, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$128, (%rsp)
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
	.loc	1 100 0                         # main.c3:100:0
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
	.loc	1 102 4 prologue_end            # main.c3:102:4
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_4
# %bb.1:
	.loc	1 0 4 is_stmt 0                 # main.c3:0:4
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	1 102 4                         # main.c3:102:4
	andq	$3, %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_5
# %bb.2:
	.loc	1 0 4                           # main.c3:0:4
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	1 102 4                         # main.c3:102:4
	movl	(%rax), %ecx
	.loc	1 102 3                         # main.c3:102:3
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 103 24 is_stmt 1              # main.c3:103:24
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
	.loc	1 103 24                        # main.c3:103:24
	callq	*%rax
	movl	%eax, -100(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-100(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc	1 103 3                         # main.c3:103:3
	leaq	-112(%rbp), %rdi
	leaq	.L.str.34(%rip), %rsi
	movl	$5, %edx
	leaq	-96(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 104 9 epilogue_begin is_stmt 1 # main.c3:104:9
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 102 4                         # main.c3:102:4
	leaq	.panic_msg.32(%rip), %rdi
	movl	$42, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.33(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$102, (%rsp)
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
	.loc	1 102 4                         # main.c3:102:4
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.33(%rip), %r8
	movl	$17, %r9d
	leaq	-80(%rbp), %rax
	movl	$102, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_6:
	.loc	1 103 24 is_stmt 1              # main.c3:103:24
	leaq	.panic_msg.18(%rip), %rdi
	movl	$47, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.33(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$103, (%rsp)
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
	.loc	1 111 0                         # main.c3:111:0
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
	.loc	1 113 21 prologue_end           # main.c3:113:21
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc	1 113 3 is_stmt 0               # main.c3:113:3
	leaq	-40(%rbp), %rdi
	leaq	.L.str.35(%rip), %rsi
	movl	$2, %edx
	leaq	-32(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 114 10 is_stmt 1              # main.c3:114:10
	movl	-4(%rbp), %eax
	.loc	1 114 10 epilogue_begin is_stmt 0 # main.c3:114:10
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
	.loc	1 26 0 is_stmt 1                # main.c3:26:0
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
	leaq	.panic_msg.21(%rip), %rdi
	movl	$65, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.23(%rip), %rdi
	movl	$80, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.24(%rip), %rdi
	movl	$59, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.26(%rip), %rdi
	movl	$36, %esi
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.file.22(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.37(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.file.37(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.38(%rip), %rdi
	movl	$38, %esi
	leaq	.file.37(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.39(%rip), %rdi
	movl	$59, %esi
	leaq	.file.37(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.36(%rip), %r8
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
	leaq	.panic_msg.10(%rip), %rdi
	movl	$94, %esi
	leaq	.file.37(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.36(%rip), %r8
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
	.type	code_ptr,@object                # @code_ptr
	.section	.tbss,"awT",@nobits
	.globl	code_ptr
	.p2align	3, 0x0
code_ptr:
	.quad	0
	.size	code_ptr, 8

	.type	code_len,@object                # @code_len
	.globl	code_len
	.p2align	3, 0x0
code_len:
	.quad	0                               # 0x0
	.size	code_len, 8

	.type	code_offset,@object             # @code_offset
	.globl	code_offset
	.p2align	3, 0x0
code_offset:
	.quad	0                               # 0x0
	.size	code_offset, 8

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

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Hello from assembly!"
	.size	.L.str.3, 21

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"In main!"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"code ptr: %s, code len: %s, code_offset: %s"
	.size	.L.str.5, 44

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

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"allocating %s bytes"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"error: %s"
	.size	.L.str.7, 10

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

	.type	.panic_msg.8,@object            # @.panic_msg.8
.panic_msg.8:
	.asciz	"Slice copy length mismatch (%d != %d)."
	.size	.panic_msg.8, 39

	.type	.panic_msg.9,@object            # @.panic_msg.9
.panic_msg.9:
	.asciz	"Dereference of null pointer, '(uptr*)fn_data' was null."
	.size	.panic_msg.9, 56

	.type	.panic_msg.10,@object           # @.panic_msg.10
.panic_msg.10:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.10, 95

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"pointer: %s, actual: %s, %.16x"
	.size	.L.str.11, 31

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

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"fn_data: %p, f: %p"
	.size	.L.str.12, 19

	.type	$ct.p$char,@object              # @"$ct.p$char"
	.section	".data.$ct.p$char","awG",@progbits,"$ct.p$char",comdat
	.weak	$ct.p$char
	.p2align	3, 0x0
$ct.p$char:
	.byte	19                              # 0x13
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.char)
	.quad	0                               # 0x0
	.size	$ct.p$char, 48

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

	.type	.panic_msg.13,@object           # @.panic_msg.13
	.section	.rodata,"a",@progbits
.panic_msg.13:
	.asciz	"Calling null function pointer, 'f' was null."
	.size	.panic_msg.13, 45

	.type	.panic_msg.14,@object           # @.panic_msg.14
.panic_msg.14:
	.asciz	"Assert \"!temp_closure_ptr\" failed."
	.size	.panic_msg.14, 35

	.type	.file.15,@object                # @.file.15
.file.15:
	.asciz	"closure.c3"
	.size	.file.15, 11

	.type	.file.16,@object                # @.file.16
.file.16:
	.asciz	"generated.c3"
	.size	.file.16, 13

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	" = %s"
	.size	.L.str.17, 6

	.type	.panic_msg.18,@object           # @.panic_msg.18
	.section	.rodata,"a",@progbits
.panic_msg.18:
	.asciz	"Calling null function pointer, 'add1' was null."
	.size	.panic_msg.18, 48

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	" = %s"
	.size	.L.str.19, 6

	.type	.panic_msg.20,@object           # @.panic_msg.20
	.section	.rodata,"a",@progbits
.panic_msg.20:
	.asciz	"Calling null function pointer, 'calc_something' was null."
	.size	.panic_msg.20, 58

	.type	$sel.acquire,@object            # @"$sel.acquire"
	.section	".rodata.$sel.acquire","aG",@progbits,"$sel.acquire",comdat
	.weak	$sel.acquire
$sel.acquire:
	.asciz	"acquire"
	.size	$sel.acquire, 8

	.type	.panic_msg.21,@object           # @.panic_msg.21
	.section	.rodata,"a",@progbits
.panic_msg.21:
	.asciz	"@require \"!alignment || math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.21, 66

	.type	.file.22,@object                # @.file.22
.file.22:
	.asciz	"mem_allocator.c3"
	.size	.file.22, 17

	.type	.panic_msg.23,@object           # @.panic_msg.23
.panic_msg.23:
	.asciz	"@require \"alignment <= mem::MAX_MEMORY_ALIGNMENT\" violated: 'alignment too big'."
	.size	.panic_msg.23, 81

	.type	.panic_msg.24,@object           # @.panic_msg.24
.panic_msg.24:
	.asciz	"@require \"size > 0\" violated: 'The size must be 1 or more'."
	.size	.panic_msg.24, 60

	.type	.panic_msg.25,@object           # @.panic_msg.25
.panic_msg.25:
	.asciz	"No method 'acquire' could be found on target"
	.size	.panic_msg.25, 45

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

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"test: %s"
	.size	.L.str.27, 9

	.type	.panic_msg.28,@object           # @.panic_msg.28
	.section	.rodata,"a",@progbits
.panic_msg.28:
	.asciz	"Calling null function pointer, 'test.func' was null."
	.size	.panic_msg.28, 53

	.type	.panic_msg.29,@object           # @.panic_msg.29
.panic_msg.29:
	.asciz	"Passed null to a ref ('&') parameter."
	.size	.panic_msg.29, 38

	.type	.panic_msg.30,@object           # @.panic_msg.30
.panic_msg.30:
	.asciz	"Dereference of null pointer, 'val' was null."
	.size	.panic_msg.30, 45

	.type	.panic_msg.31,@object           # @.panic_msg.31
.panic_msg.31:
	.asciz	"Calling null function pointer, 'other_test' was null."
	.size	.panic_msg.31, 54

	.type	.panic_msg.32,@object           # @.panic_msg.32
.panic_msg.32:
	.asciz	"Dereference of null pointer, 'a' was null."
	.size	.panic_msg.32, 43

	.type	.func.33,@object                # @.func.33
.func.33:
	.asciz	"main.main$lambda1"
	.size	.func.33, 18

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	" = %s"
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"%s"
	.size	.L.str.35, 3

	.type	.func.36,@object                # @.func.36
	.section	.rodata,"a",@progbits
.func.36:
	.asciz	"_$main"
	.size	.func.36, 7

	.type	.file.37,@object                # @.file.37
.file.37:
	.asciz	"main_stub.c3"
	.size	.file.37, 13

	.type	.panic_msg.38,@object           # @.panic_msg.38
.panic_msg.38:
	.asciz	"Negative array indexing (index was %d)"
	.size	.panic_msg.38, 39

	.type	.panic_msg.39,@object           # @.panic_msg.39
.panic_msg.39:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.39, 60

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
	.byte	1                               # Abbrev [1] 0xb:0x9ad DW_TAG_compile_unit
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
	.quad	code_ptr@DTPOFF
	.byte	224
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x45:0x9 DW_TAG_pointer_type
	.long	.Linfo_string4                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	2                               # Abbrev [2] 0x4e:0x1b DW_TAG_variable
	.long	.Linfo_string5                  # DW_AT_name
	.long	105                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_len@DTPOFF
	.byte	224
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x69:0x9 DW_TAG_typedef
	.long	114                             # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	5                               # Abbrev [5] 0x72:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x79:0x1b DW_TAG_variable
	.long	.Linfo_string8                  # DW_AT_name
	.long	105                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_offset@DTPOFF
	.byte	224
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.byte	6                               # Abbrev [6] 0x94:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string49                 # DW_AT_linkage_name
	.long	.Linfo_string50                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	351                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xb1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xbf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xcd:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xdc:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string51                 # DW_AT_linkage_name
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xf5:0x19 DW_TAG_subprogram
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x101:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	270                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x10e:0xd DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x113:0x7 DW_TAG_subrange_type
	.long	283                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x11b:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	14                              # Abbrev [14] 0x122:0xc DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x12e:0x19 DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x13a:0xc DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	327                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x147:0xd DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	16                              # Abbrev [16] 0x154:0xb DW_TAG_subroutine_type
	.long	351                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x159:0x5 DW_TAG_formal_parameter
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x15f:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x166:0x19 DW_TAG_subprogram
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x172:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	270                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x17f:0xc DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x18b:0x19 DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x197:0xc DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	420                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1a4:0xd DW_TAG_pointer_type
	.long	433                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	18                              # Abbrev [18] 0x1b1:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	9                               # Abbrev [9] 0x1b2:0x19 DW_TAG_subprogram
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x1be:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	459                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1cb:0xd DW_TAG_array_type
	.long	69                              # DW_AT_type
	.byte	12                              # Abbrev [12] 0x1d0:0x7 DW_TAG_subrange_type
	.long	283                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1d8:0xc DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x1e4:0x19 DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x1f0:0xc DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	509                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1fd:0xd DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.long	.Linfo_string18                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	19                              # Abbrev [19] 0x20a:0xd DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x217:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x224:0x25 DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x230:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	585                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x23c:0xc DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	327                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x249:0x1e DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x250:0xb DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x25b:0xb DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x267:0xd DW_TAG_pointer_type
	.long	69                              # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	4                               # Abbrev [4] 0x274:0x9 DW_TAG_typedef
	.long	114                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	14                              # Abbrev [14] 0x27d:0xc DW_TAG_subprogram
	.long	.Linfo_string27                 # DW_AT_linkage_name
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x289:0xd DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x296:0xc DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x2a2:0x19 DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x2ae:0xc DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	327                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x2bb:0xd DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x2c8:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x2d5:0x25 DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x2e1:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	585                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ed:0xc DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	762                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2fa:0xd DW_TAG_pointer_type
	.long	775                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	22                              # Abbrev [22] 0x307:0x5 DW_TAG_subroutine_type
	.long	780                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	23                              # Abbrev [23] 0x30c:0xb DW_TAG_typedef
	.long	351                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x317:0xc DW_TAG_subprogram
	.long	.Linfo_string27                 # DW_AT_linkage_name
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x323:0xd DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x330:0xc DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x33c:0xd DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x349:0xc DW_TAG_subprogram
	.long	.Linfo_string27                 # DW_AT_linkage_name
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x355:0xc DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x361:0x19 DW_TAG_subprogram
	.long	.Linfo_string34                 # DW_AT_linkage_name
	.long	.Linfo_string34                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x36d:0xc DW_TAG_variable
	.long	.Linfo_string35                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.long	890                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x37a:0xd DW_TAG_pointer_type
	.long	351                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	19                              # Abbrev [19] 0x387:0xd DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x394:0x19 DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x3a0:0xc DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	762                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3ad:0x2d5 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string52                 # DW_AT_linkage_name
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	351                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x3ca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	1828                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3d8:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	628                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3e8:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	1910                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x3f8:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230|"
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	2305                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x408:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\344{"
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x417:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330{"
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	2329                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x427:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350x"
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	420                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x437:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240u"
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	2353                            # DW_AT_type
	.byte	25                              # Abbrev [25] 0x447:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334p"
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x456:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320p"
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	2463                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x466:0x39 DW_TAG_inlined_subroutine
	.long	245                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	95                              # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x472:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260{"
	.long	257                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x47b:0x23 DW_TAG_inlined_subroutine
	.long	290                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x487:0x16 DW_TAG_inlined_subroutine
	.long	302                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x493:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270y"
	.long	314                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x49f:0x39 DW_TAG_inlined_subroutine
	.long	358                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	100                             # DW_AT_call_line
	.byte	34                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x4ab:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300x"
	.long	370                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x4b4:0x23 DW_TAG_inlined_subroutine
	.long	383                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x4c0:0x16 DW_TAG_inlined_subroutine
	.long	395                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x4cc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310v"
	.long	407                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x4d8:0x39 DW_TAG_inlined_subroutine
	.long	434                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	111                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x4e4:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270v"
	.long	446                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x4ed:0x23 DW_TAG_inlined_subroutine
	.long	472                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	17                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x4f9:0x16 DW_TAG_inlined_subroutine
	.long	484                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x505:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310u"
	.long	496                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x511:0x87 DW_TAG_inlined_subroutine
	.long	548                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	119                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x51d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370t"
	.long	560                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x526:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250s"
	.long	572                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x52f:0x45 DW_TAG_inlined_subroutine
	.long	535                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges10                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	30                              # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x53b:0x38 DW_TAG_inlined_subroutine
	.long	522                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges11                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x548:0x2a DW_TAG_inlined_subroutine
	.long	637                             # DW_AT_abstract_origin
	.quad	.Ltmp20                         # DW_AT_low_pc
	.long	.Ltmp23-.Ltmp20                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x55d:0x14 DW_TAG_inlined_subroutine
	.long	649                             # DW_AT_abstract_origin
	.quad	.Ltmp21                         # DW_AT_low_pc
	.long	.Ltmp22-.Ltmp21                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x574:0x23 DW_TAG_inlined_subroutine
	.long	662                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges12                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	31                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x580:0x16 DW_TAG_inlined_subroutine
	.long	674                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges13                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x58c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250q"
	.long	686                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x598:0xe9 DW_TAG_inlined_subroutine
	.long	725                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges14                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	126                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x5a4:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250p"
	.long	737                             # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x5ad:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330n"
	.long	749                             # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x5b6:0x45 DW_TAG_inlined_subroutine
	.long	712                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges15                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x5c2:0x38 DW_TAG_inlined_subroutine
	.long	699                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges16                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x5cf:0x2a DW_TAG_inlined_subroutine
	.long	791                             # DW_AT_abstract_origin
	.quad	.Ltmp30                         # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp30                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x5e4:0x14 DW_TAG_inlined_subroutine
	.long	803                             # DW_AT_abstract_origin
	.quad	.Ltmp31                         # DW_AT_low_pc
	.long	.Ltmp32-.Ltmp31                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x5fb:0x85 DW_TAG_inlined_subroutine
	.long	816                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges17                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	26                              # Abbrev [26] 0x607:0x62 DW_TAG_inlined_subroutine
	.long	828                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges18                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	79                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x613:0x55 DW_TAG_inlined_subroutine
	.long	865                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges19                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x620:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210n"
	.long	877                             # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x629:0x3e DW_TAG_inlined_subroutine
	.long	853                             # DW_AT_abstract_origin
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp42-.Ltmp38                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	177                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x63d:0x29 DW_TAG_inlined_subroutine
	.long	841                             # DW_AT_abstract_origin
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp41-.Ltmp38                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x651:0x14 DW_TAG_inlined_subroutine
	.long	903                             # DW_AT_abstract_origin
	.quad	.Ltmp39                         # DW_AT_low_pc
	.long	.Ltmp40-.Ltmp39                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x669:0x16 DW_TAG_inlined_subroutine
	.long	916                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges20                # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	88                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x675:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270k"
	.long	928                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x682:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string54                 # DW_AT_linkage_name
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x69b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	890                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6a9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	2329                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x6b8:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string55                 # DW_AT_linkage_name
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	351                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6d5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x6e4:0x40 DW_TAG_subprogram
	.long	.Linfo_string37                 # DW_AT_linkage_name
	.long	.Linfo_string37                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x6f0:0xc DW_TAG_variable
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	1828                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x6fc:0x27 DW_TAG_lexical_block
	.byte	35                              # Abbrev [35] 0x6fd:0xb DW_TAG_variable
	.long	.Linfo_string45                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x708:0x1a DW_TAG_lexical_block
	.byte	10                              # Abbrev [10] 0x709:0xc DW_TAG_variable
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	1910                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x715:0xc DW_TAG_variable
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	628                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x724:0x1e DW_TAG_structure_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x72b:0xb DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1858                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x736:0xb DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x742:0xd DW_TAG_pointer_type
	.long	1871                            # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	4                               # Abbrev [4] 0x74f:0x9 DW_TAG_typedef
	.long	1880                            # DW_AT_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	20                              # Abbrev [20] 0x758:0x1e DW_TAG_structure_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x75f:0xb DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	1910                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x76a:0xb DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x776:0xd DW_TAG_pointer_type
	.long	1923                            # DW_AT_type
	.long	.Linfo_string40                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	5                               # Abbrev [5] 0x783:0x7 DW_TAG_base_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x78a:0x19 DW_TAG_subprogram
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.long	.Linfo_string47                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x796:0xc DW_TAG_variable
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	1828                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x7a3:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.short	875                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x7b0:0xd DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x7bd:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x7ca:0xc DW_TAG_subprogram
	.long	.Linfo_string27                 # DW_AT_linkage_name
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	19                              # Abbrev [19] 0x7d6:0xd DW_TAG_subprogram
	.long	.Linfo_string28                 # DW_AT_linkage_name
	.long	.Linfo_string28                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	9                               # Abbrev [9] 0x7e3:0x19 DW_TAG_subprogram
	.long	.Linfo_string48                 # DW_AT_linkage_name
	.long	.Linfo_string48                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x7ef:0xc DW_TAG_variable
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.long	628                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7fc:0x105 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string53                 # DW_AT_linkage_name
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	351                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x819:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	351                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x827:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.long	2474                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x835:0xcb DW_TAG_inlined_subroutine
	.long	1930                            # DW_AT_abstract_origin
	.quad	.Ltmp73                         # DW_AT_low_pc
	.long	.Ltmp95-.Ltmp73                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	26                              # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x849:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	1942                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x851:0xae DW_TAG_inlined_subroutine
	.long	1764                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges21                # DW_AT_ranges
	.byte	6                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x85d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	1776                            # DW_AT_abstract_origin
	.byte	26                              # Abbrev [26] 0x866:0x53 DW_TAG_inlined_subroutine
	.long	1955                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges22                # DW_AT_ranges
	.byte	6                               # DW_AT_call_file
	.byte	24                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x872:0x46 DW_TAG_inlined_subroutine
	.long	1981                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges23                # DW_AT_ranges
	.byte	7                               # DW_AT_call_file
	.short	877                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x87f:0x38 DW_TAG_inlined_subroutine
	.long	1968                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges24                # DW_AT_ranges
	.byte	4                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x88c:0x2a DW_TAG_inlined_subroutine
	.long	1994                            # DW_AT_abstract_origin
	.quad	.Ltmp76                         # DW_AT_low_pc
	.long	.Ltmp79-.Ltmp76                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x8a1:0x14 DW_TAG_inlined_subroutine
	.long	2006                            # DW_AT_abstract_origin
	.quad	.Ltmp77                         # DW_AT_low_pc
	.long	.Ltmp78-.Ltmp77                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x8b9:0x45 DW_TAG_lexical_block
	.long	.Ldebug_ranges25                # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x8be:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334}"
	.long	1789                            # DW_AT_abstract_origin
	.byte	36                              # Abbrev [36] 0x8c7:0x36 DW_TAG_lexical_block
	.long	.Ldebug_ranges26                # DW_AT_ranges
	.byte	27                              # Abbrev [27] 0x8cc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320}"
	.long	1801                            # DW_AT_abstract_origin
	.byte	27                              # Abbrev [27] 0x8d5:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210}"
	.long	1813                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0x8de:0x1e DW_TAG_inlined_subroutine
	.long	2019                            # DW_AT_abstract_origin
	.quad	.Ltmp83                         # DW_AT_low_pc
	.long	.Ltmp86-.Ltmp83                 # DW_AT_high_pc
	.byte	6                               # DW_AT_call_file
	.byte	29                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	27                              # Abbrev [27] 0x8f2:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370|"
	.long	2031                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x901:0xb DW_TAG_typedef
	.long	2316                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x90c:0xd DW_TAG_pointer_type
	.long	433                             # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	23                              # Abbrev [23] 0x919:0xb DW_TAG_typedef
	.long	2340                            # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x924:0xd DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	37                              # Abbrev [37] 0x931:0x3e DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	38                              # Abbrev [38] 0x93a:0xd DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	2415                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x947:0xd DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	2426                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x954:0xd DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	615                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x961:0xd DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	628                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x96f:0xb DW_TAG_typedef
	.long	2340                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x97a:0x1e DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x981:0xb DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x98c:0xb DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	2456                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x998:0x7 DW_TAG_base_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x99f:0xb DW_TAG_typedef
	.long	762                             # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x9aa:0xd DW_TAG_pointer_type
	.long	1910                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
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
	.asciz	"code_len"                      # string offset=67
.Linfo_string6:
	.asciz	"ulong"                         # string offset=76
.Linfo_string7:
	.asciz	"uptr"                          # string offset=82
.Linfo_string8:
	.asciz	"code_offset"                   # string offset=87
.Linfo_string9:
	.asciz	"@on_stack"                     # string offset=99
.Linfo_string10:
	.asciz	"data"                          # string offset=109
.Linfo_string11:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=114
.Linfo_string12:
	.asciz	"@create_inner"                 # string offset=134
.Linfo_string13:
	.asciz	"@generate_closure_call_func"   # string offset=148
.Linfo_string14:
	.asciz	"f"                             # string offset=176
.Linfo_string15:
	.asciz	"int"                           # string offset=178
.Linfo_string16:
	.asciz	"closure.@generate_closure_call_func$lambda1" # string offset=182
.Linfo_string17:
	.asciz	"closure.@generate_closure_call_func$lambda3" # string offset=226
.Linfo_string18:
	.asciz	"closure.@generate_closure_call_func$lambda5" # string offset=270
.Linfo_string19:
	.asciz	"alloc_array_try"               # string offset=314
.Linfo_string20:
	.asciz	"alloc_array"                   # string offset=330
.Linfo_string21:
	.asciz	"@new"                          # string offset=342
.Linfo_string22:
	.asciz	"ptr"                           # string offset=347
.Linfo_string23:
	.asciz	"void**"                        # string offset=351
.Linfo_string24:
	.asciz	"len"                           # string offset=358
.Linfo_string25:
	.asciz	"usz"                           # string offset=362
.Linfo_string26:
	.asciz	"void*[]"                       # string offset=366
.Linfo_string27:
	.asciz	"malloc_try"                    # string offset=374
.Linfo_string28:
	.asciz	"is_power_of_2"                 # string offset=385
.Linfo_string29:
	.asciz	"@new_copy"                     # string offset=399
.Linfo_string30:
	.asciz	"CInt"                          # string offset=409
.Linfo_string31:
	.asciz	"closure.@generate_closure_call_func$lambda8" # string offset=414
.Linfo_string32:
	.asciz	"clone"                         # string offset=458
.Linfo_string33:
	.asciz	"malloc"                        # string offset=464
.Linfo_string34:
	.asciz	"new"                           # string offset=471
.Linfo_string35:
	.asciz	"val"                           # string offset=475
.Linfo_string36:
	.asciz	"int*"                          # string offset=479
.Linfo_string37:
	.asciz	"args_to_strings"               # string offset=484
.Linfo_string38:
	.asciz	"list"                          # string offset=500
.Linfo_string39:
	.asciz	"char"                          # string offset=505
.Linfo_string40:
	.asciz	"char*"                         # string offset=510
.Linfo_string41:
	.asciz	"char[]"                        # string offset=516
.Linfo_string42:
	.asciz	"String"                        # string offset=523
.Linfo_string43:
	.asciz	"String*"                       # string offset=530
.Linfo_string44:
	.asciz	"String[]"                      # string offset=538
.Linfo_string45:
	.asciz	"i"                             # string offset=547
.Linfo_string46:
	.asciz	"arg"                           # string offset=549
.Linfo_string47:
	.asciz	"@main_to_int_main_args"        # string offset=553
.Linfo_string48:
	.asciz	"_strlen"                       # string offset=576
.Linfo_string49:
	.asciz	"main.add3"                     # string offset=584
.Linfo_string50:
	.asciz	"add3"                          # string offset=594
.Linfo_string51:
	.asciz	"print_something"               # string offset=599
.Linfo_string52:
	.asciz	"main.main"                     # string offset=615
.Linfo_string53:
	.asciz	"main"                          # string offset=625
.Linfo_string54:
	.asciz	"main.main$lambda1"             # string offset=630
.Linfo_string55:
	.asciz	"main.main$lambda2"             # string offset=648
.Linfo_string56:
	.asciz	"_$main"                        # string offset=666
.Linfo_string57:
	.asciz	"a"                             # string offset=673
.Linfo_string58:
	.asciz	"b"                             # string offset=675
.Linfo_string59:
	.asciz	"c"                             # string offset=677
.Linfo_string60:
	.asciz	"args"                          # string offset=679
.Linfo_string61:
	.asciz	"allocated_size"                # string offset=684
.Linfo_string62:
	.asciz	"fn_data"                       # string offset=699
.Linfo_string63:
	.asciz	"VoidFn"                        # string offset=707
.Linfo_string64:
	.asciz	"add1"                          # string offset=714
.Linfo_string65:
	.asciz	"IntFn"                         # string offset=719
.Linfo_string66:
	.asciz	"calc_something"                # string offset=725
.Linfo_string67:
	.asciz	"test"                          # string offset=740
.Linfo_string68:
	.asciz	"func"                          # string offset=745
.Linfo_string69:
	.asciz	"FnType"                        # string offset=750
.Linfo_string70:
	.asciz	"alloc"                         # string offset=757
.Linfo_string71:
	.asciz	"type"                          # string offset=763
.Linfo_string72:
	.asciz	"typeid"                        # string offset=768
.Linfo_string73:
	.asciz	"Allocator"                     # string offset=775
.Linfo_string74:
	.asciz	"copied_count"                  # string offset=785
.Linfo_string75:
	.asciz	"Closure"                       # string offset=798
.Linfo_string76:
	.asciz	"other_test"                    # string offset=806
.Linfo_string77:
	.asciz	".anon"                         # string offset=817
.Linfo_string78:
	.asciz	"char**"                        # string offset=823
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2488                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"code_ptr"                      # External Name
	.long	78                              # DIE offset
	.asciz	"code_len"                      # External Name
	.long	121                             # DIE offset
	.asciz	"code_offset"                   # External Name
	.long	148                             # DIE offset
	.asciz	"add3"                          # External Name
	.long	220                             # DIE offset
	.asciz	"print_something"               # External Name
	.long	434                             # DIE offset
	.asciz	"@on_stack"                     # External Name
	.long	548                             # DIE offset
	.asciz	"@new"                          # External Name
	.long	725                             # DIE offset
	.asciz	"@new_copy"                     # External Name
	.long	816                             # DIE offset
	.asciz	"@create_inner"                 # External Name
	.long	828                             # DIE offset
	.asciz	"clone"                         # External Name
	.long	853                             # DIE offset
	.asciz	"malloc"                        # External Name
	.long	865                             # DIE offset
	.asciz	"new"                           # External Name
	.long	916                             # DIE offset
	.asciz	"@generate_closure_call_func"   # External Name
	.long	941                             # DIE offset
	.asciz	"main"                          # External Name
	.long	1666                            # DIE offset
	.asciz	"main.main$lambda1"             # External Name
	.long	1720                            # DIE offset
	.asciz	"main.main$lambda2"             # External Name
	.long	1764                            # DIE offset
	.asciz	"args_to_strings"               # External Name
	.long	1930                            # DIE offset
	.asciz	"@main_to_int_main_args"        # External Name
	.long	1968                            # DIE offset
	.asciz	"alloc_array_try"               # External Name
	.long	1981                            # DIE offset
	.asciz	"alloc_array"                   # External Name
	.long	1994                            # DIE offset
	.asciz	"malloc_try"                    # External Name
	.long	2006                            # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	2019                            # DIE offset
	.asciz	"_strlen"                       # External Name
	.long	2044                            # DIE offset
	.asciz	"_$main"                        # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2488                            # Compilation Unit Length
	.long	69                              # DIE offset
	.asciz	"void*"                         # External Name
	.long	105                             # DIE offset
	.asciz	"uptr"                          # External Name
	.long	114                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	327                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda1" # External Name
	.long	351                             # DIE offset
	.asciz	"int"                           # External Name
	.long	420                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda3" # External Name
	.long	509                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda5" # External Name
	.long	585                             # DIE offset
	.asciz	"void*[]"                       # External Name
	.long	615                             # DIE offset
	.asciz	"void**"                        # External Name
	.long	628                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	762                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda8" # External Name
	.long	780                             # DIE offset
	.asciz	"CInt"                          # External Name
	.long	890                             # DIE offset
	.asciz	"int*"                          # External Name
	.long	1828                            # DIE offset
	.asciz	"String[]"                      # External Name
	.long	1858                            # DIE offset
	.asciz	"String*"                       # External Name
	.long	1871                            # DIE offset
	.asciz	"String"                        # External Name
	.long	1880                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	1910                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	1923                            # DIE offset
	.asciz	"char"                          # External Name
	.long	2316                            # DIE offset
	.asciz	"VoidFn"                        # External Name
	.long	2340                            # DIE offset
	.asciz	"IntFn"                         # External Name
	.long	2353                            # DIE offset
	.asciz	"Closure"                       # External Name
	.long	2426                            # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	2456                            # DIE offset
	.asciz	"typeid"                        # External Name
	.long	2463                            # DIE offset
	.asciz	"FnType"                        # External Name
	.long	2474                            # DIE offset
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

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
	.loc	1 16 0 is_stmt 1                # main.c3:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$3, -16(%rbp)
.Ltmp2:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/io" "io.c3"
	.loc	2 241 16 prologue_end           # io.c3:241:16
	callq	std.io.stdout@PLT
	movq	%rax, -32(%rbp)
	vmovdqu	-24(%rbp), %xmm0
	vmovdqa	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	vmovdqa	-48(%rbp), %xmm0
	vmovdqa	%xmm0, -96(%rbp)
.Ltmp3:
	.loc	2 159 24                        # io.c3:159:24
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-96(%rbp), %rcx
	movq	%rcx, -168(%rbp)                # 8-byte Spill
	movq	-88(%rbp), %rcx
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB1_2
# %bb.1:
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$159, (%rsp)
	callq	*(%rax)
.LBB1_2:
	.loc	2 0 24                          # io.c3:0:24
	movq	-160(%rbp), %rcx                # 8-byte Reload
	movq	-168(%rbp), %rdx                # 8-byte Reload
	movq	-176(%rbp), %rsi                # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	-104(%rbp), %rdi
	callq	std.io.File.write@PLT
	movq	%rax, -184(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_4
# %bb.3:
	.loc	2 0 24                          # io.c3:0:24
	movq	-184(%rbp), %rax                # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	movq	%rax, -64(%rbp)
	jmp	.LBB1_5
.LBB1_4:
	jmp	.LBB1_6
.LBB1_5:
	jmp	.LBB1_19
.LBB1_6:
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
.Ltmp4:
	.loc	2 216 2 is_stmt 1               # io.c3:216:2
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)                # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB1_8
# %bb.7:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$216, (%rsp)
	callq	*(%rax)
.LBB1_8:
	.loc	2 0 2 is_stmt 0                 # io.c3:0:2
	movq	-192(%rbp), %rdi                # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movl	$10, %esi
	callq	std.io.File.write_byte@PLT
	movq	%rax, -200(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_10
# %bb.9:
	.loc	2 0 2                           # io.c3:0:2
	movq	-200(%rbp), %rax                # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movq	%rax, -112(%rbp)
	jmp	.LBB1_11
.LBB1_10:
	jmp	.LBB1_12
.LBB1_11:
	jmp	.LBB1_19
.LBB1_12:
	.loc	2 221 4 is_stmt 1               # io.c3:221:4
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)                # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB1_14
# %bb.13:
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$221, (%rsp)
	callq	*(%rax)
.LBB1_14:
	.loc	2 0 4 is_stmt 0                 # io.c3:0:4
	movq	-208(%rbp), %rdi                # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	callq	std.io.File.flush@PLT
	movq	%rax, -216(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_16
# %bb.15:
	.loc	2 0 4                           # io.c3:0:4
	movq	-216(%rbp), %rax                # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	movq	%rax, -120(%rbp)
	jmp	.LBB1_17
.LBB1_16:
	jmp	.LBB1_18
.LBB1_17:
	jmp	.LBB1_19
.Ltmp5:
.LBB1_18:
.LBB1_19:
	.loc	1 19 41 is_stmt 1               # main.c3:19:41
	movq	($ct.p$void)@GOTPCREL(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)
	.loc	1 19 2 is_stmt 0                # main.c3:19:2
	leaq	-152(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$23, %edx
	leaq	-144(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 19 2 epilogue_begin           # main.c3:19:2
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end1:
	.size	print_something, .Lfunc_end1-print_something
	.cfi_endproc
                                        # -- End function
	.globl	main.print_something_else       # -- Begin function main.print_something_else
	.p2align	4, 0x90
	.type	main.print_something_else,@function
main.print_something_else:              # @main.print_something_else
.Lfunc_begin2:
	.loc	1 22 0 is_stmt 1                # main.c3:22:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp7:
	.loc	1 24 34 prologue_end            # main.c3:24:34
	movq	($ct.p$void)@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc	1 24 2 is_stmt 0                # main.c3:24:2
	leaq	-40(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$16, %edx
	leaq	-32(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 24 2 epilogue_begin           # main.c3:24:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp8:
.Lfunc_end2:
	.size	main.print_something_else, .Lfunc_end2-main.print_something_else
	.cfi_endproc
                                        # -- End function
	.globl	main.main                       # -- Begin function main.main
	.p2align	4, 0x90
	.type	main.main,@function
main.main:                              # @main.main
.Lfunc_begin3:
	.loc	1 27 0 is_stmt 1                # main.c3:27:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$4096, %rsp                     # imm = 0x1000
	movq	$0, -2848(%rbp)
	movq	$0, -2584(%rbp)
	movq	$0, -1992(%rbp)
	movq	$0, -240(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
.Ltmp9:
	.loc	1 29 2 prologue_end             # main.c3:29:2
	callq	closure.closures.init@PLT
	movq	%rax, -3144(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_2
# %bb.1:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3144(%rbp), %rax               # 8-byte Reload
	.loc	1 29 2                          # main.c3:29:2
	movq	%rax, -24(%rbp)
	jmp	.LBB3_3
.LBB3_2:
	jmp	.LBB3_4
.LBB3_3:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$1, -56(%rbp)
	leaq	.panic_msg.5(%rip), %rdi
	movl	$36, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-64(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_4:
	.loc	1 32 8 is_stmt 1                # main.c3:32:8
	movq	$0, -72(%rbp)
.Ltmp10:
	.loc	1 33 15                         # main.c3:33:15
	movl	$0, -76(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 33 18 is_stmt 0               # main.c3:33:18
	cmpl	$10, -76(%rbp)
	jge	.LBB3_45
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
.Ltmp11:
	.loc	1 35 31 is_stmt 1               # main.c3:35:31
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	main.add3@GOTPCREL(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	$3, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
.Ltmp12:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-184(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -208(%rbp)
.Ltmp13:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -208(%rbp)
	jne	.LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -216(%rbp)
	jmp	.LBB3_26
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-208(%rbp), %rax
	movq	%rax, -3160(%rbp)               # 8-byte Spill
	.loc	3 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -3145(%rbp)                # 1-byte Spill
	jne	.LBB3_12
# %bb.9:                                #   in Loop: Header=BB3_5 Depth=1
	.loc	3 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -224(%rbp)
.Ltmp14:
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	4 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-224(%rbp), %rcx
	movb	%al, -3161(%rbp)                # 1-byte Spill
	je	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	4 992 20 is_stmt 0              # math.c3:992:20
	movq	-224(%rbp), %rax
	.loc	4 992 25                        # math.c3:992:25
	movq	-224(%rbp), %rcx
	subq	$1, %rcx
	.loc	4 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	4 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3161(%rbp)                # 1-byte Spill
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	4 0 19                          # math.c3:0:19
	movb	-3161(%rbp), %al                # 1-byte Reload
	movb	%al, -3145(%rbp)                # 1-byte Spill
.LBB3_12:                               #   in Loop: Header=BB3_5 Depth=1
	movb	-3145(%rbp), %al                # 1-byte Reload
	.loc	4 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_14
.Ltmp15:
# %bb.13:
	.loc	3 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.8(%rip), %rdi
	movl	$65, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_14:                               #   in Loop: Header=BB3_5 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_16
	jmp	.LBB3_15
.LBB3_15:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$80, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_16:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	3 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3160(%rbp), %rcx               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB3_18
# %bb.17:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$59, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_18:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, -3176(%rbp)               # 8-byte Spill
	cmpq	-240(%rbp), %rax
	je	.LBB3_20
# %bb.19:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3176(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3176(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%rax, -3184(%rbp)               # 8-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -3184(%rbp)               # 8-byte Spill
.LBB3_21:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-3184(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3192(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB3_23
# %bb.22:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.12(%rip), %rdi
	movl	$44, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_23:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3192(%rbp), %rax               # 8-byte Reload
	movq	-3160(%rbp), %rdx               # 8-byte Reload
	movq	-200(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-248(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3200(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_25
# %bb.24:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3200(%rbp), %rax               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -160(%rbp)
	jmp	.LBB3_28
.LBB3_25:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-248(%rbp), %rax
	movq	%rax, -216(%rbp)
.LBB3_26:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -3224(%rbp)               # 8-byte Spill
.Ltmp16:
	.loc	3 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-184(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -3216(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -3208(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_152
# %bb.27:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-3224(%rbp), %rax               # 8-byte Reload
	movq	-3216(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -3232(%rbp)               # 8-byte Spill
	.loc	3 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB3_29
.LBB3_28:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -296(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$1, -312(%rbp)
.Ltmp17:
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.5(%rip), %rdi
	movl	$36, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-320(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_29:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3232(%rbp), %rax               # 8-byte Reload
	.loc	3 287 9                         # mem_allocator.c3:287:9
	movq	%rax, -128(%rbp)
.Ltmp18:
	.file	5 "/home/user/code/c3/closures.c3l" "closure.c3"
	.loc	5 125 3 is_stmt 1               # closure.c3:125:3
	movq	-128(%rbp), %rax
	.loc	5 125 11 is_stmt 0              # closure.c3:125:11
	addq	$8, %rax
	movq	%rax, -3248(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3240(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_153
# %bb.30:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 11                          # closure.c3:0:11
	movq	-3248(%rbp), %rax               # 8-byte Reload
	.loc	5 125 3                         # closure.c3:125:3
	leaq	-76(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$2, -388(%rbp)
	movq	-128(%rbp), %rax
	.loc	5 125 11                        # closure.c3:125:11
	addq	$16, %rax
	movq	%rax, -3264(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3256(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_154
# %bb.31:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 11                          # closure.c3:0:11
	movq	-3264(%rbp), %rax               # 8-byte Reload
	.loc	5 125 3                         # closure.c3:125:3
	leaq	-388(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	5 127 22 is_stmt 1              # closure.c3:127:22
	movq	-112(%rbp), %rax
	movq	%rax, -3288(%rbp)               # 8-byte Spill
	.loc	5 127 2 is_stmt 0               # closure.c3:127:2
	movq	-128(%rbp), %rax
	movq	%rax, -3280(%rbp)               # 8-byte Spill
	.loc	5 127 10                        # closure.c3:127:10
	andq	$7, %rax
	movq	%rax, -3272(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_155
# %bb.32:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 10                          # closure.c3:0:10
	movq	-3280(%rbp), %rax               # 8-byte Reload
	movq	-3288(%rbp), %rcx               # 8-byte Reload
	.loc	5 127 2                         # closure.c3:127:2
	movq	%rcx, (%rax)
.Ltmp19:
	.file	6 "/home/user/code/c3/closures.c3l" "generated.c3"
	.loc	6 1451 18 is_stmt 1             # generated.c3:1451:18
	movq	"closure.@generate_closure$lambda2"@GOTPCREL(%rip), %rax
	movq	%rax, -544(%rbp)
	.loc	6 1842 8                        # generated.c3:1842:8
	movq	-544(%rbp), %rax
	movq	%rax, -536(%rbp)
.Ltmp20:
	.loc	5 138 23                        # closure.c3:138:23
	movq	closure.closures.closure_count@GOTTPOFF(%rip), %rax
	movq	%fs:(%rax), %rax
	.loc	5 138 39 is_stmt 0              # closure.c3:138:39
	movq	code_len@GOTTPOFF(%rip), %rcx
	movq	%fs:(%rcx), %rcx
	.loc	5 138 23                        # closure.c3:138:23
	imulq	%rcx, %rax
	movq	%rax, -552(%rbp)
	.loc	5 139 32 is_stmt 1              # closure.c3:139:32
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rax, -3336(%rbp)               # 8-byte Spill
	movq	%rax, -584(%rbp)
	leaq	-552(%rbp), %rax
	movq	%rax, -3328(%rbp)               # 8-byte Spill
	movq	%rax, -592(%rbp)
	.loc	5 139 47 is_stmt 0              # closure.c3:139:47
	movq	-552(%rbp), %rax
	movq	%rax, %rdx
	addq	$7, %rdx
	testq	%rax, %rax
	movq	%rax, %rcx
	cmovsq	%rdx, %rcx
	andq	$-8, %rcx
	subq	%rcx, %rax
	movq	%rax, -600(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -3320(%rbp)               # 8-byte Spill
	movq	%rax, -568(%rbp)
	leaq	-600(%rbp), %rax
	movq	%rax, -576(%rbp)
	.loc	5 139 2                         # closure.c3:139:2
	leaq	.L.str.16(%rip), %rsi
	leaq	-608(%rbp), %rdi
	movl	$14, %edx
	leaq	-592(%rbp), %rcx
	movl	$2, %r8d
	callq	std.io.printfn@PLT
	movq	-3336(%rbp), %rdx               # 8-byte Reload
	movq	-3328(%rbp), %rcx               # 8-byte Reload
                                        # kill: def $rsi killed $rax
	movq	-3320(%rbp), %rax               # 8-byte Reload
	.loc	5 140 2 is_stmt 1               # closure.c3:140:2
	movq	-552(%rbp), %rsi
	andq	$-8, %rsi
	addq	$8, %rsi
	movq	%rsi, -552(%rbp)
	.loc	5 142 31                        # closure.c3:142:31
	movq	%rdx, -632(%rbp)
	movq	%rcx, -640(%rbp)
	.loc	5 142 46 is_stmt 0              # closure.c3:142:46
	movq	-552(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$7, %rsi
	testq	%rcx, %rcx
	movq	%rcx, %rdx
	cmovsq	%rsi, %rdx
	andq	$-8, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -648(%rbp)
	movq	%rax, -616(%rbp)
	leaq	-648(%rbp), %rax
	movq	%rax, -624(%rbp)
	.loc	5 142 2                         # closure.c3:142:2
	leaq	-656(%rbp), %rdi
	leaq	.L.str.17(%rip), %rsi
	movl	$13, %edx
	leaq	-640(%rbp), %rcx
	movl	$2, %r8d
	callq	std.io.printfn@PLT
	.loc	5 143 50 is_stmt 1              # closure.c3:143:50
	movq	code_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -3312(%rbp)               # 8-byte Spill
	.loc	5 143 61 is_stmt 0              # closure.c3:143:61
	movq	code_len@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -3304(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -3296(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_156
# %bb.33:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 61                          # closure.c3:0:61
	movq	-3312(%rbp), %rax               # 8-byte Reload
	movq	-3304(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -3384(%rbp)               # 8-byte Spill
	movq	%rax, -3376(%rbp)               # 8-byte Spill
	.loc	5 143 2                         # closure.c3:143:2
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -3368(%rbp)               # 8-byte Spill
	.loc	5 143 16                        # closure.c3:143:16
	movq	-552(%rbp), %rdx
	movq	%rdx, -3360(%rbp)               # 8-byte Spill
	.loc	5 143 30                        # closure.c3:143:30
	movq	code_len@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	%rdx, %rcx
	addq	(%rax), %rcx
	movq	%rcx, -3352(%rbp)               # 8-byte Spill
	cmpq	%rcx, %rdx
	seta	%al
	subq	%rdx, %rcx
	movq	%rcx, -3344(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_157
# %bb.34:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 30                          # closure.c3:0:30
	movq	-3384(%rbp), %rcx               # 8-byte Reload
	movq	-3360(%rbp), %rsi               # 8-byte Reload
	movq	-3368(%rbp), %rdx               # 8-byte Reload
	movq	-3352(%rbp), %rax               # 8-byte Reload
	.loc	5 143 2                         # closure.c3:143:2
	subq	%rsi, %rax
	movq	%rax, -3400(%rbp)               # 8-byte Spill
	addq	%rsi, %rdx
	movq	%rdx, -3392(%rbp)               # 8-byte Spill
	cmpq	%rcx, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_158
# %bb.35:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 2                           # closure.c3:0:2
	movq	-3376(%rbp), %rsi               # 8-byte Reload
	movq	-3392(%rbp), %rdi               # 8-byte Reload
	movq	-3384(%rbp), %rdx               # 8-byte Reload
	.loc	5 143 2                         # closure.c3:143:2
	shlq	$0, %rdx
	callq	memmove@PLT
	.loc	5 145 63 is_stmt 1              # closure.c3:145:63
	movq	-536(%rbp), %rax
	movq	%rax, -3416(%rbp)               # 8-byte Spill
	.loc	5 145 12 is_stmt 0              # closure.c3:145:12
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc	5 145 26                        # closure.c3:145:26
	movq	-552(%rbp), %rcx
	.loc	5 145 42                        # closure.c3:145:42
	movq	code_func_offset@GOTTPOFF(%rip), %rsi
	movq	%fs:0, %rdx
	addq	%rsi, %rdx
	.loc	5 145 26                        # closure.c3:145:26
	addq	(%rdx), %rcx
	addq	%rcx, %rax
	movq	%rax, -3408(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_159
# %bb.36:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 26                          # closure.c3:0:26
	movq	-3408(%rbp), %rax               # 8-byte Reload
	.loc	5 145 3                         # closure.c3:145:3
	andq	$7, %rax
	movq	%rax, -3424(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_160
# %bb.37:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 3                           # closure.c3:0:3
	movq	-3408(%rbp), %rax               # 8-byte Reload
	movq	-3416(%rbp), %rcx               # 8-byte Reload
	.loc	5 145 3                         # closure.c3:145:3
	movq	%rcx, (%rax)
	.loc	5 146 62 is_stmt 1              # closure.c3:146:62
	movq	-128(%rbp), %rax
	movq	%rax, -3440(%rbp)               # 8-byte Spill
	.loc	5 146 12 is_stmt 0              # closure.c3:146:12
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc	5 146 26                        # closure.c3:146:26
	movq	-552(%rbp), %rcx
	.loc	5 146 42                        # closure.c3:146:42
	movq	code_arg_offset@GOTTPOFF(%rip), %rsi
	movq	%fs:0, %rdx
	addq	%rsi, %rdx
	.loc	5 146 26                        # closure.c3:146:26
	addq	(%rdx), %rcx
	addq	%rcx, %rax
	movq	%rax, -3432(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_161
# %bb.38:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 26                          # closure.c3:0:26
	movq	-3432(%rbp), %rax               # 8-byte Reload
	.loc	5 146 3                         # closure.c3:146:3
	andq	$7, %rax
	movq	%rax, -3448(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_162
# %bb.39:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	5 0 3                           # closure.c3:0:3
	movq	-3432(%rbp), %rax               # 8-byte Reload
	movq	-3440(%rbp), %rcx               # 8-byte Reload
	.loc	5 146 3                         # closure.c3:146:3
	movq	%rcx, (%rax)
	.loc	5 147 45 is_stmt 1              # closure.c3:147:45
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	.loc	5 147 59 is_stmt 0              # closure.c3:147:59
	movq	-552(%rbp), %rcx
	.loc	5 147 75                        # closure.c3:147:75
	movq	code_offset@GOTTPOFF(%rip), %rsi
	movq	%fs:0, %rdx
	addq	%rsi, %rdx
	.loc	5 147 59                        # closure.c3:147:59
	addq	(%rdx), %rcx
	addq	%rcx, %rax
	movq	%rax, -952(%rbp)
	.loc	5 148 9 is_stmt 1               # closure.c3:148:9
	movq	-952(%rbp), %rax
	movq	%rax, -120(%rbp)
.Ltmp21:
	.loc	5 115 8                         # closure.c3:115:8
	movq	closure.closures.closure_count@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
# %bb.40:                               #   in Loop: Header=BB3_5 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -88(%rbp)
.Ltmp22:
	.loc	1 36 7                          # main.c3:36:7
	cmpl	$0, -76(%rbp)
	jne	.LBB3_42
# %bb.41:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	1 36 19 is_stmt 0               # main.c3:36:19
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB3_42:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	1 37 38 is_stmt 1               # main.c3:37:38
	movq	-72(%rbp), %rax
	movq	%rax, -3456(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_163
# %bb.43:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	1 0 38 is_stmt 0                # main.c3:0:38
	movq	-3456(%rbp), %rax               # 8-byte Reload
	movl	$1, %edi
	.loc	1 37 38                         # main.c3:37:38
	callq	*%rax
	movl	%eax, -996(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -984(%rbp)
	leaq	-996(%rbp), %rax
	movq	%rax, -992(%rbp)
	.loc	1 37 44                         # main.c3:37:44
	movq	-88(%rbp), %rax
	movq	%rax, -3464(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_164
# %bb.44:                               #   in Loop: Header=BB3_5 Depth=1
	.loc	1 0 44                          # main.c3:0:44
	movq	-3464(%rbp), %rax               # 8-byte Reload
	movl	$1, %edi
	.loc	1 37 44                         # main.c3:37:44
	callq	*%rax
	movl	%eax, -1000(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -968(%rbp)
	leaq	-1000(%rbp), %rax
	movq	%rax, -976(%rbp)
	.loc	1 37 3                          # main.c3:37:3
	leaq	-1008(%rbp), %rdi
	leaq	.L.str.21(%rip), %rsi
	movl	$19, %edx
	leaq	-992(%rbp), %rcx
	movl	$2, %r8d
	callq	std.io.printfn@PLT
.Ltmp23:
	.loc	1 33 26 is_stmt 1               # main.c3:33:26
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_5
.Ltmp24:
.LBB3_45:
	.loc	1 45 10                         # main.c3:45:10
	movl	$1, -1012(%rbp)
	movq	main.add3@GOTPCREL(%rip), %rax
	movq	%rax, -1032(%rbp)
.Ltmp25:
	.loc	5 166 27                        # closure.c3:166:27
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1056(%rbp)
	movq	$0, -1040(%rbp)
	movq	$0, -1064(%rbp)
	movq	$0, -1072(%rbp)
	leaq	-1056(%rbp), %rax
	movq	%rax, -1080(%rbp)
	movq	-1032(%rbp), %rax
	movq	%rax, -1088(%rbp)
.Ltmp26:
	.loc	5 206 9                         # closure.c3:206:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB3_47
# %bb.46:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB3_47:
	.loc	5 216 4                         # closure.c3:216:4
	movq	-1080(%rbp), %rax
	.loc	5 216 9 is_stmt 0               # closure.c3:216:9
	addq	$8, %rax
	movq	%rax, -3480(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3472(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_165
# %bb.48:
	.loc	5 0 9                           # closure.c3:0:9
	movq	-3480(%rbp), %rax               # 8-byte Reload
	.loc	5 216 4                         # closure.c3:216:4
	leaq	-1012(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$2, -1156(%rbp)
	movq	-1080(%rbp), %rax
	.loc	5 216 9                         # closure.c3:216:9
	addq	$16, %rax
	movq	%rax, -3496(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3488(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_166
# %bb.49:
	.loc	5 0 9                           # closure.c3:0:9
	movq	-3496(%rbp), %rax               # 8-byte Reload
	.loc	5 216 4                         # closure.c3:216:4
	leaq	-1156(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	5 234 19 is_stmt 1              # closure.c3:234:19
	movq	-1088(%rbp), %rax
	movq	%rax, -3520(%rbp)               # 8-byte Spill
	.loc	5 234 2 is_stmt 0               # closure.c3:234:2
	movq	-1080(%rbp), %rax
	movq	%rax, -3512(%rbp)               # 8-byte Spill
	.loc	5 234 7                         # closure.c3:234:7
	andq	$7, %rax
	movq	%rax, -3504(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_167
# %bb.50:
	.loc	5 0 7                           # closure.c3:0:7
	movq	-3512(%rbp), %rax               # 8-byte Reload
	movq	-3520(%rbp), %rcx               # 8-byte Reload
	.loc	5 234 2                         # closure.c3:234:2
	movq	%rcx, (%rax)
	.loc	5 236 2 is_stmt 1               # closure.c3:236:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	5 236 21 is_stmt 0              # closure.c3:236:21
	movq	-1080(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp27:
	.loc	6 168 19 is_stmt 1              # generated.c3:168:19
	movq	"closure.@generate_closure_call_func$lambda4"@GOTPCREL(%rip), %rax
	movq	%rax, -1304(%rbp)
	.loc	6 184 10                        # generated.c3:184:10
	movq	-1304(%rbp), %rax
	movq	%rax, -3528(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_168
# %bb.51:
	.loc	6 0 10 is_stmt 0                # generated.c3:0:10
	movq	-3528(%rbp), %rax               # 8-byte Reload
	.loc	6 184 4                         # generated.c3:184:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	6 185 11 is_stmt 1              # generated.c3:185:11
	movq	-1304(%rbp), %rax
	movq	%rax, -1024(%rbp)
.Ltmp28:
	.loc	1 47 23                         # main.c3:47:23
	movq	-1024(%rbp), %rax
	movq	%rax, -3536(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_169
# %bb.52:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-3536(%rbp), %rax               # 8-byte Reload
	movl	$3, %edi
	.loc	1 47 23                         # main.c3:47:23
	callq	*%rax
	movl	%eax, -1332(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -1320(%rbp)
	leaq	-1332(%rbp), %rax
	movq	%rax, -1328(%rbp)
	.loc	1 47 2                          # main.c3:47:2
	leaq	-1344(%rbp), %rdi
	leaq	.L.str.26(%rip), %rsi
	movl	$5, %edx
	leaq	-1328(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 48 6 is_stmt 1                # main.c3:48:6
	movl	$5, -1012(%rbp)
	.loc	1 49 23                         # main.c3:49:23
	movq	-1024(%rbp), %rax
	movq	%rax, -3544(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_170
# %bb.53:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-3544(%rbp), %rax               # 8-byte Reload
	movl	$3, %edi
	.loc	1 49 23                         # main.c3:49:23
	callq	*%rax
	movl	%eax, -1364(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -1352(%rbp)
	leaq	-1364(%rbp), %rax
	movq	%rax, -1360(%rbp)
	.loc	1 49 2                          # main.c3:49:2
	leaq	.L.str.28(%rip), %rsi
	leaq	-1376(%rbp), %rdi
	movl	$5, %edx
	leaq	-1360(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	leaq	main.main$lambda1(%rip), %rax
	movq	%rax, -1392(%rbp)
.Ltmp29:
	.loc	5 166 27 is_stmt 1              # closure.c3:166:27
	vxorps	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -1424(%rbp)
	movq	$0, -1408(%rbp)
	movq	$0, -1432(%rbp)
	movq	$0, -1440(%rbp)
	leaq	-1424(%rbp), %rax
	movq	%rax, -1448(%rbp)
	movq	-1392(%rbp), %rax
	movq	%rax, -1456(%rbp)
.Ltmp30:
	.loc	5 206 9                         # closure.c3:206:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB3_55
# %bb.54:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB3_55:
	.loc	5 0 9 is_stmt 0                 # closure.c3:0:9
	leaq	-1012(%rbp), %rax
	movq	%rax, -1464(%rbp)
	.loc	5 216 4 is_stmt 1               # closure.c3:216:4
	movq	-1448(%rbp), %rax
	.loc	5 216 9 is_stmt 0               # closure.c3:216:9
	addq	$8, %rax
	movq	%rax, -3560(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3552(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_171
# %bb.56:
	.loc	5 0 9                           # closure.c3:0:9
	movq	-3560(%rbp), %rax               # 8-byte Reload
	.loc	5 216 4                         # closure.c3:216:4
	leaq	-1464(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-1448(%rbp), %rax
	.loc	5 216 9                         # closure.c3:216:9
	addq	$16, %rax
	movq	%rax, -3576(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3568(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_172
# %bb.57:
	.loc	5 0 9                           # closure.c3:0:9
	movq	-3576(%rbp), %rax               # 8-byte Reload
	.loc	5 216 4                         # closure.c3:216:4
	leaq	-1024(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	5 234 19 is_stmt 1              # closure.c3:234:19
	movq	-1456(%rbp), %rax
	movq	%rax, -3600(%rbp)               # 8-byte Spill
	.loc	5 234 2 is_stmt 0               # closure.c3:234:2
	movq	-1448(%rbp), %rax
	movq	%rax, -3592(%rbp)               # 8-byte Spill
	.loc	5 234 7                         # closure.c3:234:7
	andq	$7, %rax
	movq	%rax, -3584(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_173
# %bb.58:
	.loc	5 0 7                           # closure.c3:0:7
	movq	-3592(%rbp), %rax               # 8-byte Reload
	movq	-3600(%rbp), %rcx               # 8-byte Reload
	.loc	5 234 2                         # closure.c3:234:2
	movq	%rcx, (%rax)
	.loc	5 236 2 is_stmt 1               # closure.c3:236:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	5 236 21 is_stmt 0              # closure.c3:236:21
	movq	-1448(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp31:
	.loc	6 83 19 is_stmt 1               # generated.c3:83:19
	movq	"closure.@generate_closure_call_func$lambda6"@GOTPCREL(%rip), %rax
	movq	%rax, -1672(%rbp)
	.loc	6 99 10                         # generated.c3:99:10
	movq	-1672(%rbp), %rax
	movq	%rax, -3608(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_174
# %bb.59:
	.loc	6 0 10 is_stmt 0                # generated.c3:0:10
	movq	-3608(%rbp), %rax               # 8-byte Reload
	.loc	6 99 4                          # generated.c3:99:4
	callq	*%rax
	.loc	6 100 11 is_stmt 1              # generated.c3:100:11
	movq	-1672(%rbp), %rax
	movq	%rax, -1384(%rbp)
.Ltmp32:
	.loc	1 58 2                          # main.c3:58:2
	movq	-1384(%rbp), %rax
	movq	%rax, -3616(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_175
# %bb.60:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3616(%rbp), %rax               # 8-byte Reload
	.loc	1 58 2                          # main.c3:58:2
	callq	*%rax
	.loc	1 59 2 is_stmt 1                # main.c3:59:2
	movq	-1384(%rbp), %rax
	movq	%rax, -3624(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_176
# %bb.61:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3624(%rbp), %rax               # 8-byte Reload
	.loc	1 59 2                          # main.c3:59:2
	callq	*%rax
	leaq	main.main$lambda2(%rip), %rax
	movq	%rax, -1680(%rbp)
.Ltmp33:
	.loc	5 166 27 is_stmt 1              # closure.c3:166:27
	movq	$0, -1688(%rbp)
	movq	$0, -1696(%rbp)
	movq	$0, -1704(%rbp)
	leaq	-1688(%rbp), %rax
	movq	%rax, -1712(%rbp)
	movq	-1680(%rbp), %rax
	movq	%rax, -1720(%rbp)
.Ltmp34:
	.loc	5 206 9                         # closure.c3:206:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB3_63
# %bb.62:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB3_63:
	.loc	5 234 19                        # closure.c3:234:19
	movq	-1720(%rbp), %rax
	movq	%rax, -3648(%rbp)               # 8-byte Spill
	.loc	5 234 2 is_stmt 0               # closure.c3:234:2
	movq	-1712(%rbp), %rax
	movq	%rax, -3640(%rbp)               # 8-byte Spill
	.loc	5 234 7                         # closure.c3:234:7
	andq	$7, %rax
	movq	%rax, -3632(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_177
# %bb.64:
	.loc	5 0 7                           # closure.c3:0:7
	movq	-3640(%rbp), %rax               # 8-byte Reload
	movq	-3648(%rbp), %rcx               # 8-byte Reload
	.loc	5 234 2                         # closure.c3:234:2
	movq	%rcx, (%rax)
	.loc	5 236 2 is_stmt 1               # closure.c3:236:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	5 236 21 is_stmt 0              # closure.c3:236:21
	movq	-1712(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp35:
	.loc	6 58 19 is_stmt 1               # generated.c3:58:19
	movq	"closure.@generate_closure_call_func$lambda8"@GOTPCREL(%rip), %rax
	movq	%rax, -1800(%rbp)
	.loc	6 74 10                         # generated.c3:74:10
	movq	-1800(%rbp), %rax
	movq	%rax, -3656(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_178
# %bb.65:
	.loc	6 0 10 is_stmt 0                # generated.c3:0:10
	movq	-3656(%rbp), %rax               # 8-byte Reload
	.loc	6 74 4                          # generated.c3:74:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	6 75 11 is_stmt 1               # generated.c3:75:11
	movq	-1800(%rbp), %rax
	movq	%rax, -1024(%rbp)
.Ltmp36:
	.loc	1 67 2                          # main.c3:67:2
	movq	-1384(%rbp), %rax
	movq	%rax, -3664(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_179
# %bb.66:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3664(%rbp), %rax               # 8-byte Reload
	.loc	1 67 2                          # main.c3:67:2
	callq	*%rax
	.loc	1 70 39 is_stmt 1               # main.c3:70:39
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -1856(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -1848(%rbp)
	movq	main.add3@GOTPCREL(%rip), %rax
	movq	%rax, -1864(%rbp)
	movq	-1856(%rbp), %rax
	movq	%rax, -1896(%rbp)
	movq	-1848(%rbp), %rax
	movq	%rax, -1888(%rbp)
	movq	$3, -1904(%rbp)
	movq	-1896(%rbp), %rax
	movq	%rax, -1928(%rbp)
	movq	-1888(%rbp), %rax
	movq	%rax, -1920(%rbp)
	movq	-1904(%rbp), %rax
	movq	%rax, -1936(%rbp)
	movq	-1928(%rbp), %rax
	movq	%rax, -1952(%rbp)
	movq	-1920(%rbp), %rax
	movq	%rax, -1944(%rbp)
.Ltmp37:
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-1936(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -1960(%rbp)
.Ltmp38:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -1960(%rbp)
	jne	.LBB3_68
# %bb.67:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -1968(%rbp)
	jmp	.LBB3_86
.LBB3_68:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-1960(%rbp), %rax
	movq	%rax, -3680(%rbp)               # 8-byte Spill
	.loc	3 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -3665(%rbp)                # 1-byte Spill
	jne	.LBB3_72
# %bb.69:
	.loc	3 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -1976(%rbp)
.Ltmp39:
	.loc	4 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-1976(%rbp), %rcx
	movb	%al, -3681(%rbp)                # 1-byte Spill
	je	.LBB3_71
# %bb.70:
	.loc	4 992 20 is_stmt 0              # math.c3:992:20
	movq	-1976(%rbp), %rax
	.loc	4 992 25                        # math.c3:992:25
	movq	-1976(%rbp), %rcx
	subq	$1, %rcx
	.loc	4 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	4 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3681(%rbp)                # 1-byte Spill
.LBB3_71:
	.loc	4 0 19                          # math.c3:0:19
	movb	-3681(%rbp), %al                # 1-byte Reload
	movb	%al, -3665(%rbp)                # 1-byte Spill
.LBB3_72:
	movb	-3665(%rbp), %al                # 1-byte Reload
	.loc	4 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_74
.Ltmp40:
# %bb.73:
	.loc	3 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.8(%rip), %rdi
	movl	$65, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_74:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_76
	jmp	.LBB3_75
.LBB3_75:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$80, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_76:
	.loc	3 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3680(%rbp), %rcx               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB3_78
# %bb.77:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$59, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_78:
	movq	-1944(%rbp), %rax
	movq	%rax, -3696(%rbp)               # 8-byte Spill
	cmpq	-1992(%rbp), %rax
	je	.LBB3_80
# %bb.79:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3696(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3696(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -1984(%rbp)
	movq	%rcx, -1992(%rbp)
	movq	%rax, -3704(%rbp)               # 8-byte Spill
	jmp	.LBB3_81
.LBB3_80:
	movq	-1984(%rbp), %rax
	movq	%rax, -3704(%rbp)               # 8-byte Spill
.LBB3_81:
	movq	-3704(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3712(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB3_83
# %bb.82:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.12(%rip), %rdi
	movl	$44, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_83:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3712(%rbp), %rax               # 8-byte Reload
	movq	-3680(%rbp), %rdx               # 8-byte Reload
	movq	-1952(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-2000(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3720(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_85
# %bb.84:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3720(%rbp), %rax               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -1912(%rbp)
	jmp	.LBB3_88
.LBB3_85:
	movq	-2000(%rbp), %rax
	movq	%rax, -1968(%rbp)
.LBB3_86:
	movq	-1968(%rbp), %rax
	movq	%rax, -3744(%rbp)               # 8-byte Spill
.Ltmp41:
	.loc	3 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-1936(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -3736(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -3728(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_180
# %bb.87:
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-3744(%rbp), %rax               # 8-byte Reload
	movq	-3736(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -3760(%rbp)               # 8-byte Spill
	movq	%rax, -3752(%rbp)               # 8-byte Spill
	.loc	3 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB3_89
.LBB3_88:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2056(%rbp)
	leaq	-1912(%rbp), %rax
	movq	%rax, -2064(%rbp)
	leaq	-2064(%rbp), %rax
	movq	%rax, -2080(%rbp)
	movq	$1, -2072(%rbp)
.Ltmp42:
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.5(%rip), %rdi
	movl	$36, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2080(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_89:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3760(%rbp), %rax               # 8-byte Reload
	movq	-3752(%rbp), %rcx               # 8-byte Reload
	.loc	3 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -1880(%rbp)
	movq	%rax, -1872(%rbp)
	movq	-1856(%rbp), %rax
	movq	%rax, -2104(%rbp)
	movq	-1848(%rbp), %rax
	movq	%rax, -2096(%rbp)
	movq	-1880(%rbp), %rax
	movq	%rax, -2112(%rbp)
	movq	-1864(%rbp), %rax
	movq	%rax, -2120(%rbp)
.Ltmp43:
	.loc	5 206 9 is_stmt 1               # closure.c3:206:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB3_91
# %bb.90:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB3_91:
	.loc	5 224 4                         # closure.c3:224:4
	movq	-2112(%rbp), %rax
	.loc	5 224 9 is_stmt 0               # closure.c3:224:9
	addq	$8, %rax
	movq	%rax, -3776(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3768(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_181
# %bb.92:
	.loc	5 0 9                           # closure.c3:0:9
	movq	-3776(%rbp), %rax               # 8-byte Reload
	.loc	5 224 4                         # closure.c3:224:4
	leaq	-1012(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$4, -2196(%rbp)
	movq	-2112(%rbp), %rax
	.loc	5 224 9                         # closure.c3:224:9
	addq	$16, %rax
	movq	%rax, -3792(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -3784(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_182
# %bb.93:
	.loc	5 0 9                           # closure.c3:0:9
	movq	-3792(%rbp), %rax               # 8-byte Reload
	.loc	5 224 4                         # closure.c3:224:4
	leaq	-2196(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	5 234 19 is_stmt 1              # closure.c3:234:19
	movq	-2120(%rbp), %rax
	movq	%rax, -3816(%rbp)               # 8-byte Spill
	.loc	5 234 2 is_stmt 0               # closure.c3:234:2
	movq	-2112(%rbp), %rax
	movq	%rax, -3808(%rbp)               # 8-byte Spill
	.loc	5 234 7                         # closure.c3:234:7
	andq	$7, %rax
	movq	%rax, -3800(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_183
# %bb.94:
	.loc	5 0 7                           # closure.c3:0:7
	movq	-3808(%rbp), %rax               # 8-byte Reload
	movq	-3816(%rbp), %rcx               # 8-byte Reload
	.loc	5 234 2                         # closure.c3:234:2
	movq	%rcx, (%rax)
	.loc	5 236 2 is_stmt 1               # closure.c3:236:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	5 236 21 is_stmt 0              # closure.c3:236:21
	movq	-2112(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp44:
	.loc	6 168 19 is_stmt 1              # generated.c3:168:19
	movq	"closure.@generate_closure_call_func$lambda9"@GOTPCREL(%rip), %rax
	movq	%rax, -2344(%rbp)
	.loc	6 184 10                        # generated.c3:184:10
	movq	-2344(%rbp), %rax
	movq	%rax, -3824(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_184
# %bb.95:
	.loc	6 0 10 is_stmt 0                # generated.c3:0:10
	movq	-3824(%rbp), %rax               # 8-byte Reload
	.loc	6 184 4                         # generated.c3:184:4
	xorl	%edi, %edi
	callq	*%rax
	.loc	6 185 11 is_stmt 1              # generated.c3:185:11
	movq	-2344(%rbp), %rax
	movq	%rax, -2088(%rbp)
.Ltmp45:
	.loc	5 182 33                        # closure.c3:182:33
	movq	-2088(%rbp), %rax
	movq	%rax, -2384(%rbp)
	.loc	5 182 9 is_stmt 0               # closure.c3:182:9
	movq	-1856(%rbp), %rax
	movq	%rax, -2376(%rbp)
	movq	-1848(%rbp), %rax
	movq	%rax, -2368(%rbp)
	movq	-1880(%rbp), %rax
	movq	%rax, -2360(%rbp)
	movq	$0, -2352(%rbp)
	vmovdqu	-2384(%rbp), %xmm0
	vmovdqu	-2368(%rbp), %xmm1
	vmovdqa	%xmm1, -1824(%rbp)
	vmovdqa	%xmm0, -1840(%rbp)
	movq	-2352(%rbp), %rax
	movq	%rax, -1808(%rbp)
.Ltmp46:
	.loc	1 72 26 is_stmt 1               # main.c3:72:26
	movq	-1840(%rbp), %rax
	movq	%rax, -3832(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_185
# %bb.96:
	.loc	1 0 26 is_stmt 0                # main.c3:0:26
	movq	-3832(%rbp), %rax               # 8-byte Reload
	movl	$6, %edi
	.loc	1 72 26                         # main.c3:72:26
	callq	*%rax
	movl	%eax, -2404(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -2392(%rbp)
	leaq	-2404(%rbp), %rax
	movq	%rax, -2400(%rbp)
	.loc	1 72 2                          # main.c3:72:2
	leaq	-2416(%rbp), %rdi
	leaq	.L.str.30(%rip), %rsi
	movl	$8, %edx
	leaq	-2400(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 74 10 is_stmt 1               # main.c3:74:10
	movl	$5, -2420(%rbp)
	.loc	1 77 49                         # main.c3:77:49
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -2448(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -2440(%rbp)
	movq	-1840(%rbp), %rax
	movq	%rax, -2456(%rbp)
	movq	-2448(%rbp), %rax
	movq	%rax, -2488(%rbp)
	movq	-2440(%rbp), %rax
	movq	%rax, -2480(%rbp)
	movq	$2, -2496(%rbp)
	movq	-2488(%rbp), %rax
	movq	%rax, -2520(%rbp)
	movq	-2480(%rbp), %rax
	movq	%rax, -2512(%rbp)
	movq	-2496(%rbp), %rax
	movq	%rax, -2528(%rbp)
	movq	-2520(%rbp), %rax
	movq	%rax, -2544(%rbp)
	movq	-2512(%rbp), %rax
	movq	%rax, -2536(%rbp)
.Ltmp47:
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-2528(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$3, %rax
	movq	%rax, -2552(%rbp)
.Ltmp48:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -2552(%rbp)
	jne	.LBB3_98
# %bb.97:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -2560(%rbp)
	jmp	.LBB3_116
.LBB3_98:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-2552(%rbp), %rax
	movq	%rax, -3848(%rbp)               # 8-byte Spill
	.loc	3 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -3833(%rbp)                # 1-byte Spill
	jne	.LBB3_102
# %bb.99:
	.loc	3 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -2568(%rbp)
.Ltmp49:
	.loc	4 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-2568(%rbp), %rcx
	movb	%al, -3849(%rbp)                # 1-byte Spill
	je	.LBB3_101
# %bb.100:
	.loc	4 992 20 is_stmt 0              # math.c3:992:20
	movq	-2568(%rbp), %rax
	.loc	4 992 25                        # math.c3:992:25
	movq	-2568(%rbp), %rcx
	subq	$1, %rcx
	.loc	4 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	4 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3849(%rbp)                # 1-byte Spill
.LBB3_101:
	.loc	4 0 19                          # math.c3:0:19
	movb	-3849(%rbp), %al                # 1-byte Reload
	movb	%al, -3833(%rbp)                # 1-byte Spill
.LBB3_102:
	movb	-3833(%rbp), %al                # 1-byte Reload
	.loc	4 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_104
.Ltmp50:
# %bb.103:
	.loc	3 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.8(%rip), %rdi
	movl	$65, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_104:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_106
	jmp	.LBB3_105
.LBB3_105:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$80, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_106:
	.loc	3 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3848(%rbp), %rcx               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB3_108
# %bb.107:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$59, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_108:
	movq	-2536(%rbp), %rax
	movq	%rax, -3864(%rbp)               # 8-byte Spill
	cmpq	-2584(%rbp), %rax
	je	.LBB3_110
# %bb.109:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3864(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3864(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -2576(%rbp)
	movq	%rcx, -2584(%rbp)
	movq	%rax, -3872(%rbp)               # 8-byte Spill
	jmp	.LBB3_111
.LBB3_110:
	movq	-2576(%rbp), %rax
	movq	%rax, -3872(%rbp)               # 8-byte Spill
.LBB3_111:
	movq	-3872(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3880(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB3_113
# %bb.112:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.12(%rip), %rdi
	movl	$44, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_113:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3880(%rbp), %rax               # 8-byte Reload
	movq	-3848(%rbp), %rdx               # 8-byte Reload
	movq	-2544(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-2592(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3888(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_115
# %bb.114:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3888(%rbp), %rax               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -2504(%rbp)
	jmp	.LBB3_118
.LBB3_115:
	movq	-2592(%rbp), %rax
	movq	%rax, -2560(%rbp)
.LBB3_116:
	movq	-2560(%rbp), %rax
	movq	%rax, -3912(%rbp)               # 8-byte Spill
.Ltmp51:
	.loc	3 304 67 is_stmt 1              # mem_allocator.c3:304:67
	movq	-2528(%rbp), %rcx
	addq	$0, %rcx
	movq	%rcx, -3904(%rbp)               # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -3896(%rbp)               # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_186
# %bb.117:
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-3912(%rbp), %rax               # 8-byte Reload
	movq	-3904(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -3928(%rbp)               # 8-byte Spill
	movq	%rax, -3920(%rbp)               # 8-byte Spill
	.loc	3 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB3_119
.LBB3_118:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2648(%rbp)
	leaq	-2504(%rbp), %rax
	movq	%rax, -2656(%rbp)
	leaq	-2656(%rbp), %rax
	movq	%rax, -2672(%rbp)
	movq	$1, -2664(%rbp)
.Ltmp52:
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.5(%rip), %rdi
	movl	$36, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2672(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_119:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3928(%rbp), %rax               # 8-byte Reload
	movq	-3920(%rbp), %rcx               # 8-byte Reload
	.loc	3 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -2472(%rbp)
	movq	%rax, -2464(%rbp)
	movq	-2448(%rbp), %rax
	movq	%rax, -2696(%rbp)
	movq	-2440(%rbp), %rax
	movq	%rax, -2688(%rbp)
	movq	-2472(%rbp), %rax
	movq	%rax, -2704(%rbp)
	movq	-2456(%rbp), %rax
	movq	%rax, -2712(%rbp)
.Ltmp53:
	.loc	5 206 9 is_stmt 1               # closure.c3:206:9
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB3_121
# %bb.120:
	leaq	.panic_msg.24(%rip), %rdi
	movl	$34, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB3_121:
	.loc	5 0 9 is_stmt 0                 # closure.c3:0:9
	movq	-2696(%rbp), %rax
	movq	%rax, -2728(%rbp)
	movq	-2688(%rbp), %rax
	movq	%rax, -2720(%rbp)
	movl	-2420(%rbp), %eax
	movl	%eax, -2732(%rbp)
.Ltmp54:
	.loc	3 315 23 is_stmt 1              # mem_allocator.c3:315:23
	cmpq	$0, -2728(%rbp)
	jne	.LBB3_123
# %bb.122:
	leaq	.panic_msg.32(%rip), %rdi
	movl	$37, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$315, (%rsp)                    # imm = 0x13B
	callq	*(%rax)
.Ltmp55:
.LBB3_123:
	.loc	3 0 23 is_stmt 0                # mem_allocator.c3:0:23
	movq	-2728(%rbp), %rax
	movq	%rax, -2752(%rbp)
	movq	-2720(%rbp), %rax
	movq	%rax, -2744(%rbp)
	movq	-2752(%rbp), %rax
	movq	%rax, -2776(%rbp)
	movq	-2744(%rbp), %rax
	movq	%rax, -2768(%rbp)
	movq	$4, -2784(%rbp)
	movq	-2776(%rbp), %rax
	movq	%rax, -2808(%rbp)
	movq	-2768(%rbp), %rax
	movq	%rax, -2800(%rbp)
	movq	-2784(%rbp), %rax
	movq	%rax, -2816(%rbp)
.Ltmp56:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -2816(%rbp)
	jne	.LBB3_125
# %bb.124:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -2824(%rbp)
	jmp	.LBB3_143
.LBB3_125:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-2816(%rbp), %rax
	movq	%rax, -3944(%rbp)               # 8-byte Spill
	.loc	3 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -3929(%rbp)                # 1-byte Spill
	jne	.LBB3_129
# %bb.126:
	.loc	3 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -2832(%rbp)
.Ltmp57:
	.loc	4 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-2832(%rbp), %rcx
	movb	%al, -3945(%rbp)                # 1-byte Spill
	je	.LBB3_128
# %bb.127:
	.loc	4 992 20 is_stmt 0              # math.c3:992:20
	movq	-2832(%rbp), %rax
	.loc	4 992 25                        # math.c3:992:25
	movq	-2832(%rbp), %rcx
	subq	$1, %rcx
	.loc	4 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	4 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -3945(%rbp)                # 1-byte Spill
.LBB3_128:
	.loc	4 0 19                          # math.c3:0:19
	movb	-3945(%rbp), %al                # 1-byte Reload
	movb	%al, -3929(%rbp)                # 1-byte Spill
.LBB3_129:
	movb	-3929(%rbp), %al                # 1-byte Reload
	.loc	4 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_131
.Ltmp58:
# %bb.130:
	.loc	3 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.8(%rip), %rdi
	movl	$65, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_131:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB3_133
	jmp	.LBB3_132
.LBB3_132:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$80, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_133:
	.loc	3 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-3944(%rbp), %rcx               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB3_135
# %bb.134:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$59, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_135:
	movq	-2800(%rbp), %rax
	movq	%rax, -3960(%rbp)               # 8-byte Spill
	cmpq	-2848(%rbp), %rax
	je	.LBB3_137
# %bb.136:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3960(%rbp), %rax               # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-3960(%rbp), %rcx               # 8-byte Reload
	movq	%rax, -2840(%rbp)
	movq	%rcx, -2848(%rbp)
	movq	%rax, -3968(%rbp)               # 8-byte Spill
	jmp	.LBB3_138
.LBB3_137:
	movq	-2840(%rbp), %rax
	movq	%rax, -3968(%rbp)               # 8-byte Spill
.LBB3_138:
	movq	-3968(%rbp), %rax               # 8-byte Reload
	movq	%rax, -3976(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB3_140
# %bb.139:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.12(%rip), %rdi
	movl	$44, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB3_140:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3976(%rbp), %rax               # 8-byte Reload
	movq	-3944(%rbp), %rdx               # 8-byte Reload
	movq	-2808(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-2856(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -3984(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_142
# %bb.141:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-3984(%rbp), %rax               # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -2792(%rbp)
	jmp	.LBB3_144
.LBB3_142:
	movq	-2856(%rbp), %rax
	movq	%rax, -2824(%rbp)
.LBB3_143:
	jmp	.LBB3_145
.LBB3_144:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -2872(%rbp)
	leaq	-2792(%rbp), %rax
	movq	%rax, -2880(%rbp)
	leaq	-2880(%rbp), %rax
	movq	%rax, -2896(%rbp)
	movq	$1, -2888(%rbp)
.Ltmp59:
	.loc	3 75 9 is_stmt 1                # mem_allocator.c3:75:9
	leaq	.panic_msg.5(%rip), %rdi
	movl	$36, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2896(%rbp), %rax
	movl	$75, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_145:
	movq	-2824(%rbp), %rax
	movq	%rax, -2760(%rbp)
.Ltmp60:
	.loc	3 178 4                         # mem_allocator.c3:178:4
	movq	-2760(%rbp), %rax
	movq	%rax, -3992(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_187
# %bb.146:
	.loc	3 0 4 is_stmt 0                 # mem_allocator.c3:0:4
	movq	-3992(%rbp), %rax               # 8-byte Reload
	.loc	3 178 4                         # mem_allocator.c3:178:4
	andq	$3, %rax
	movq	%rax, -4000(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_188
# %bb.147:
	.loc	3 0 4                           # mem_allocator.c3:0:4
	movq	-3992(%rbp), %rax               # 8-byte Reload
	.loc	3 178 4                         # mem_allocator.c3:178:4
	movl	-2732(%rbp), %ecx
	movl	%ecx, (%rax)
	.loc	3 179 10 is_stmt 1              # mem_allocator.c3:179:10
	movq	-2760(%rbp), %rax
	movq	%rax, -4024(%rbp)               # 8-byte Spill
.Ltmp61:
	.loc	5 229 4                         # closure.c3:229:4
	movq	-2704(%rbp), %rax
	.loc	5 229 9 is_stmt 0               # closure.c3:229:9
	addq	$8, %rax
	movq	%rax, -4016(%rbp)               # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -4008(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_189
# %bb.148:
	.loc	5 0 9                           # closure.c3:0:9
	movq	-4016(%rbp), %rax               # 8-byte Reload
	movq	-4024(%rbp), %rcx               # 8-byte Reload
	.loc	5 229 4                         # closure.c3:229:4
	movq	%rcx, (%rax)
	.loc	5 234 19 is_stmt 1              # closure.c3:234:19
	movq	-2712(%rbp), %rax
	movq	%rax, -4048(%rbp)               # 8-byte Spill
	.loc	5 234 2 is_stmt 0               # closure.c3:234:2
	movq	-2704(%rbp), %rax
	movq	%rax, -4040(%rbp)               # 8-byte Spill
	.loc	5 234 7                         # closure.c3:234:7
	andq	$7, %rax
	movq	%rax, -4032(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_190
# %bb.149:
	.loc	5 0 7                           # closure.c3:0:7
	movq	-4040(%rbp), %rax               # 8-byte Reload
	movq	-4048(%rbp), %rcx               # 8-byte Reload
	.loc	5 234 2                         # closure.c3:234:2
	movq	%rcx, (%rax)
	.loc	5 236 2 is_stmt 1               # closure.c3:236:2
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	5 236 21 is_stmt 0              # closure.c3:236:21
	movq	-2704(%rbp), %rcx
	movq	%rcx, (%rax)
.Ltmp62:
	.loc	6 38 19 is_stmt 1               # generated.c3:38:19
	movq	"closure.@generate_closure_call_func$lambda11"@GOTPCREL(%rip), %rax
	movq	%rax, -3096(%rbp)
	.loc	6 54 10                         # generated.c3:54:10
	movq	-3096(%rbp), %rax
	movq	%rax, -4056(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_191
# %bb.150:
	.loc	6 0 10 is_stmt 0                # generated.c3:0:10
	movq	-4056(%rbp), %rax               # 8-byte Reload
	.loc	6 54 4                          # generated.c3:54:4
	callq	*%rax
	.loc	6 55 11 is_stmt 1               # generated.c3:55:11
	movq	-3096(%rbp), %rax
	movq	%rax, -2680(%rbp)
.Ltmp63:
	.loc	5 196 9                         # closure.c3:196:9
	movq	-2680(%rbp), %rax
	movq	%rax, -3136(%rbp)
	movq	-2448(%rbp), %rax
	movq	%rax, -3128(%rbp)
	movq	-2440(%rbp), %rax
	movq	%rax, -3120(%rbp)
	movq	-2472(%rbp), %rax
	movq	%rax, -3112(%rbp)
	movq	$1, -3104(%rbp)
	movq	-3136(%rbp), %rax
	movq	%rax, -2432(%rbp)
.Ltmp64:
	.loc	1 78 6                          # main.c3:78:6
	movl	$1000, -2420(%rbp)              # imm = 0x3E8
	.loc	1 79 2                          # main.c3:79:2
	movq	-2432(%rbp), %rax
	movq	%rax, -4064(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_192
# %bb.151:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-4064(%rbp), %rax               # 8-byte Reload
	.loc	1 79 2                          # main.c3:79:2
	callq	*%rax
.Ltmp65:
	.loc	1 71 8 is_stmt 1                # main.c3:71:8
	leaq	-1840(%rbp), %rdi
	callq	closure_closure_struct$fn$int$int$$.Closure.free@PLT
.Ltmp66:
	.loc	1 30 8                          # main.c3:30:8
	callq	closure.closures.deinit@PLT
	xorl	%eax, %eax
	.loc	1 30 8 epilogue_begin is_stmt 0 # main.c3:30:8
	addq	$4096, %rsp                     # imm = 0x1000
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp67:
.LBB3_152:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 8                           # main.c3:0:8
	movq	-3208(%rbp), %rax               # 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
.Ltmp68:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.13(%rip), %rdi
	movl	$43, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-288(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp69:
.LBB3_153:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3240(%rbp), %rcx               # 8-byte Reload
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
	.loc	5 125 3 is_stmt 1               # closure.c3:125:3
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-384(%rbp), %rax
	movl	$125, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_154:
	.loc	5 0 3 is_stmt 0                 # closure.c3:0:3
	movq	-3256(%rbp), %rcx               # 8-byte Reload
	movq	$8, -400(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -408(%rbp)
	movq	%rax, -440(%rbp)
	leaq	-400(%rbp), %rcx
	movq	%rcx, -448(%rbp)
	movq	%rax, -424(%rbp)
	leaq	-408(%rbp), %rax
	movq	%rax, -432(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	$2, -456(%rbp)
	.loc	5 125 3                         # closure.c3:125:3
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-464(%rbp), %rax
	movl	$125, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_155:
	.loc	5 0 3                           # closure.c3:0:3
	movq	-3272(%rbp), %rcx               # 8-byte Reload
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
	.loc	5 127 2 is_stmt 1               # closure.c3:127:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-528(%rbp), %rax
	movl	$127, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_156:
	.loc	5 0 2 is_stmt 0                 # closure.c3:0:2
	movq	-3296(%rbp), %rax               # 8-byte Reload
	movq	%rax, -664(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -680(%rbp)
	leaq	-664(%rbp), %rax
	movq	%rax, -688(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, -704(%rbp)
	movq	$1, -696(%rbp)
	.loc	5 143 42 is_stmt 1              # closure.c3:143:42
	leaq	.panic_msg.13(%rip), %rdi
	movl	$43, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-704(%rbp), %rax
	movl	$143, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_157:
	.loc	5 0 42 is_stmt 0                # closure.c3:0:42
	movq	-3344(%rbp), %rax               # 8-byte Reload
	movq	%rax, -712(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -728(%rbp)
	leaq	-712(%rbp), %rax
	movq	%rax, -736(%rbp)
	leaq	-736(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	$1, -744(%rbp)
	.loc	5 143 2                         # closure.c3:143:2
	leaq	.panic_msg.13(%rip), %rdi
	movl	$43, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-752(%rbp), %rax
	movl	$143, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_158:
	.loc	5 0 2                           # closure.c3:0:2
	movq	-3384(%rbp), %rcx               # 8-byte Reload
	movq	-3400(%rbp), %rax               # 8-byte Reload
	movq	%rax, -760(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -768(%rbp)
	movq	%rax, -792(%rbp)
	leaq	-760(%rbp), %rcx
	movq	%rcx, -800(%rbp)
	movq	%rax, -776(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -784(%rbp)
	leaq	-800(%rbp), %rax
	movq	%rax, -816(%rbp)
	movq	$2, -808(%rbp)
	.loc	5 143 2                         # closure.c3:143:2
	leaq	.panic_msg.18(%rip), %rdi
	movl	$38, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-816(%rbp), %rax
	movl	$143, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_159:
	.loc	5 145 3 is_stmt 1               # closure.c3:145:3
	leaq	.panic_msg.19(%rip), %rdi
	movl	$98, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$145, (%rsp)
	callq	*(%rax)
.LBB3_160:
	.loc	5 0 3 is_stmt 0                 # closure.c3:0:3
	movq	-3424(%rbp), %rcx               # 8-byte Reload
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
	.loc	5 145 3                         # closure.c3:145:3
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-880(%rbp), %rax
	movl	$145, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_161:
	.loc	5 146 3 is_stmt 1               # closure.c3:146:3
	leaq	.panic_msg.20(%rip), %rdi
	movl	$97, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$146, (%rsp)
	callq	*(%rax)
.LBB3_162:
	.loc	5 0 3 is_stmt 0                 # closure.c3:0:3
	movq	-3448(%rbp), %rcx               # 8-byte Reload
	movq	$8, -888(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -896(%rbp)
	movq	%rax, -920(%rbp)
	leaq	-888(%rbp), %rcx
	movq	%rcx, -928(%rbp)
	movq	%rax, -904(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, -912(%rbp)
	leaq	-928(%rbp), %rax
	movq	%rax, -944(%rbp)
	movq	$2, -936(%rbp)
	.loc	5 146 3                         # closure.c3:146:3
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-944(%rbp), %rax
	movl	$146, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp70:
.LBB3_163:
	.loc	1 37 38 is_stmt 1               # main.c3:37:38
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$37, (%rsp)
	callq	*(%rax)
.LBB3_164:
	.loc	1 37 44 is_stmt 0               # main.c3:37:44
	leaq	.panic_msg.23(%rip), %rdi
	movl	$45, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$37, (%rsp)
	callq	*(%rax)
.Ltmp71:
.LBB3_165:
	.loc	1 0 44                          # main.c3:0:44
	movq	-3472(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1096(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1104(%rbp)
	movq	%rax, -1128(%rbp)
	leaq	-1096(%rbp), %rcx
	movq	%rcx, -1136(%rbp)
	movq	%rax, -1112(%rbp)
	leaq	-1104(%rbp), %rax
	movq	%rax, -1120(%rbp)
	leaq	-1136(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movq	$2, -1144(%rbp)
.Ltmp72:
	.loc	5 216 4 is_stmt 1               # closure.c3:216:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-1152(%rbp), %rax
	movl	$216, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_166:
	.loc	5 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-3488(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1168(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1176(%rbp)
	movq	%rax, -1208(%rbp)
	leaq	-1168(%rbp), %rcx
	movq	%rcx, -1216(%rbp)
	movq	%rax, -1192(%rbp)
	leaq	-1176(%rbp), %rax
	movq	%rax, -1200(%rbp)
	leaq	-1216(%rbp), %rax
	movq	%rax, -1232(%rbp)
	movq	$2, -1224(%rbp)
	.loc	5 216 4                         # closure.c3:216:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-1232(%rbp), %rax
	movl	$216, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_167:
	.loc	5 0 4                           # closure.c3:0:4
	movq	-3504(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1240(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1248(%rbp)
	movq	%rax, -1272(%rbp)
	leaq	-1240(%rbp), %rcx
	movq	%rcx, -1280(%rbp)
	movq	%rax, -1256(%rbp)
	leaq	-1248(%rbp), %rax
	movq	%rax, -1264(%rbp)
	leaq	-1280(%rbp), %rax
	movq	%rax, -1296(%rbp)
	movq	$2, -1288(%rbp)
	.loc	5 234 2 is_stmt 1               # closure.c3:234:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-1296(%rbp), %rax
	movl	$234, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_168:
.Ltmp73:
	.loc	6 184 10                        # generated.c3:184:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.25(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$184, (%rsp)
	callq	*(%rax)
.Ltmp74:
.LBB3_169:
	.loc	1 47 23                         # main.c3:47:23
	leaq	.panic_msg.27(%rip), %rdi
	movl	$47, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$47, (%rsp)
	callq	*(%rax)
.LBB3_170:
	.loc	1 49 23                         # main.c3:49:23
	leaq	.panic_msg.27(%rip), %rdi
	movl	$47, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$49, (%rsp)
	callq	*(%rax)
.LBB3_171:
	.loc	1 0 23 is_stmt 0                # main.c3:0:23
	movq	-3552(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1472(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1480(%rbp)
	movq	%rax, -1512(%rbp)
	leaq	-1472(%rbp), %rcx
	movq	%rcx, -1520(%rbp)
	movq	%rax, -1496(%rbp)
	leaq	-1480(%rbp), %rax
	movq	%rax, -1504(%rbp)
	leaq	-1520(%rbp), %rax
	movq	%rax, -1536(%rbp)
	movq	$2, -1528(%rbp)
.Ltmp75:
	.loc	5 216 4 is_stmt 1               # closure.c3:216:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-1536(%rbp), %rax
	movl	$216, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_172:
	.loc	5 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-3568(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1544(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1552(%rbp)
	movq	%rax, -1576(%rbp)
	leaq	-1544(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	%rax, -1560(%rbp)
	leaq	-1552(%rbp), %rax
	movq	%rax, -1568(%rbp)
	leaq	-1584(%rbp), %rax
	movq	%rax, -1600(%rbp)
	movq	$2, -1592(%rbp)
	.loc	5 216 4                         # closure.c3:216:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-1600(%rbp), %rax
	movl	$216, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_173:
	.loc	5 0 4                           # closure.c3:0:4
	movq	-3584(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1608(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1616(%rbp)
	movq	%rax, -1640(%rbp)
	leaq	-1608(%rbp), %rcx
	movq	%rcx, -1648(%rbp)
	movq	%rax, -1624(%rbp)
	leaq	-1616(%rbp), %rax
	movq	%rax, -1632(%rbp)
	leaq	-1648(%rbp), %rax
	movq	%rax, -1664(%rbp)
	movq	$2, -1656(%rbp)
	.loc	5 234 2 is_stmt 1               # closure.c3:234:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-1664(%rbp), %rax
	movl	$234, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_174:
.Ltmp76:
	.loc	6 99 10                         # generated.c3:99:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.25(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$99, (%rsp)
	callq	*(%rax)
.Ltmp77:
.LBB3_175:
	.loc	1 58 2                          # main.c3:58:2
	leaq	.panic_msg.29(%rip), %rdi
	movl	$57, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$58, (%rsp)
	callq	*(%rax)
.LBB3_176:
	.loc	1 59 2                          # main.c3:59:2
	leaq	.panic_msg.29(%rip), %rdi
	movl	$57, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$59, (%rsp)
	callq	*(%rax)
.LBB3_177:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3632(%rbp), %rcx               # 8-byte Reload
	movq	$8, -1728(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -1736(%rbp)
	movq	%rax, -1768(%rbp)
	leaq	-1728(%rbp), %rcx
	movq	%rcx, -1776(%rbp)
	movq	%rax, -1752(%rbp)
	leaq	-1736(%rbp), %rax
	movq	%rax, -1760(%rbp)
	leaq	-1776(%rbp), %rax
	movq	%rax, -1792(%rbp)
	movq	$2, -1784(%rbp)
.Ltmp78:
	.loc	5 234 2 is_stmt 1               # closure.c3:234:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-1792(%rbp), %rax
	movl	$234, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_178:
.Ltmp79:
	.loc	6 74 10                         # generated.c3:74:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.25(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$74, (%rsp)
	callq	*(%rax)
.Ltmp80:
.LBB3_179:
	.loc	1 67 2                          # main.c3:67:2
	leaq	.panic_msg.29(%rip), %rdi
	movl	$57, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$67, (%rsp)
	callq	*(%rax)
.LBB3_180:
	.loc	1 0 2 is_stmt 0                 # main.c3:0:2
	movq	-3728(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2008(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -2024(%rbp)
	leaq	-2008(%rbp), %rax
	movq	%rax, -2032(%rbp)
	leaq	-2032(%rbp), %rax
	movq	%rax, -2048(%rbp)
	movq	$1, -2040(%rbp)
.Ltmp81:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.13(%rip), %rdi
	movl	$43, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2048(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp82:
.LBB3_181:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-3768(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2128(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2136(%rbp)
	movq	%rax, -2168(%rbp)
	leaq	-2128(%rbp), %rcx
	movq	%rcx, -2176(%rbp)
	movq	%rax, -2152(%rbp)
	leaq	-2136(%rbp), %rax
	movq	%rax, -2160(%rbp)
	leaq	-2176(%rbp), %rax
	movq	%rax, -2192(%rbp)
	movq	$2, -2184(%rbp)
.Ltmp83:
	.loc	5 224 4 is_stmt 1               # closure.c3:224:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2192(%rbp), %rax
	movl	$224, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_182:
	.loc	5 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-3784(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2208(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2216(%rbp)
	movq	%rax, -2248(%rbp)
	leaq	-2208(%rbp), %rcx
	movq	%rcx, -2256(%rbp)
	movq	%rax, -2232(%rbp)
	leaq	-2216(%rbp), %rax
	movq	%rax, -2240(%rbp)
	leaq	-2256(%rbp), %rax
	movq	%rax, -2272(%rbp)
	movq	$2, -2264(%rbp)
	.loc	5 224 4                         # closure.c3:224:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2272(%rbp), %rax
	movl	$224, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_183:
	.loc	5 0 4                           # closure.c3:0:4
	movq	-3800(%rbp), %rcx               # 8-byte Reload
	movq	$8, -2280(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -2288(%rbp)
	movq	%rax, -2312(%rbp)
	leaq	-2280(%rbp), %rcx
	movq	%rcx, -2320(%rbp)
	movq	%rax, -2296(%rbp)
	leaq	-2288(%rbp), %rax
	movq	%rax, -2304(%rbp)
	leaq	-2320(%rbp), %rax
	movq	%rax, -2336(%rbp)
	movq	$2, -2328(%rbp)
	.loc	5 234 2 is_stmt 1               # closure.c3:234:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2336(%rbp), %rax
	movl	$234, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_184:
.Ltmp84:
	.loc	6 184 10                        # generated.c3:184:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.25(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$184, (%rsp)
	callq	*(%rax)
.Ltmp85:
.LBB3_185:
	.loc	1 72 26                         # main.c3:72:26
	leaq	.panic_msg.31(%rip), %rdi
	movl	$52, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$72, (%rsp)
	callq	*(%rax)
.LBB3_186:
	.loc	1 0 26 is_stmt 0                # main.c3:0:26
	movq	-3896(%rbp), %rax               # 8-byte Reload
	movq	%rax, -2600(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -2616(%rbp)
	leaq	-2600(%rbp), %rax
	movq	%rax, -2624(%rbp)
	leaq	-2624(%rbp), %rax
	movq	%rax, -2640(%rbp)
	movq	$1, -2632(%rbp)
.Ltmp86:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.13(%rip), %rdi
	movl	$43, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2640(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp87:
.LBB3_187:
	.loc	3 178 4                         # mem_allocator.c3:178:4
	leaq	.panic_msg.33(%rip), %rdi
	movl	$44, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$178, (%rsp)
	callq	*(%rax)
.LBB3_188:
	.loc	3 0 4 is_stmt 0                 # mem_allocator.c3:0:4
	movq	-4000(%rbp), %rcx               # 8-byte Reload
	movq	$4, -2904(%rbp)
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
	.loc	3 178 4                         # mem_allocator.c3:178:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-2960(%rbp), %rax
	movl	$178, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp88:
.LBB3_189:
	.loc	3 0 4                           # mem_allocator.c3:0:4
	movq	-4008(%rbp), %rcx               # 8-byte Reload
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
	.loc	5 229 4 is_stmt 1               # closure.c3:229:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-3024(%rbp), %rax
	movl	$229, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_190:
	.loc	5 0 4 is_stmt 0                 # closure.c3:0:4
	movq	-4032(%rbp), %rcx               # 8-byte Reload
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
	.loc	5 234 2 is_stmt 1               # closure.c3:234:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.15(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	leaq	-3088(%rbp), %rax
	movl	$234, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_191:
.Ltmp89:
	.loc	6 54 10                         # generated.c3:54:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$44, %esi
	leaq	.file.25(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$54, (%rsp)
	callq	*(%rax)
.Ltmp90:
.LBB3_192:
	.loc	1 79 2                          # main.c3:79:2
	leaq	.panic_msg.34(%rip), %rdi
	movl	$53, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.7(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$79, (%rsp)
	callq	*(%rax)
.Ltmp91:
.Lfunc_end3:
	.size	main.main, .Lfunc_end3-main.main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function main.main$lambda1
	.type	main.main$lambda1,@function
main.main$lambda1:                      # @"main.main$lambda1"
.Lfunc_begin4:
	.loc	1 51 0                          # main.c3:51:0
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
.Ltmp92:
	.loc	1 53 4 prologue_end             # main.c3:53:4
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_4
# %bb.1:
	.loc	1 0 4 is_stmt 0                 # main.c3:0:4
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	1 53 4                          # main.c3:53:4
	andq	$3, %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_5
# %bb.2:
	.loc	1 0 4                           # main.c3:0:4
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	1 53 4                          # main.c3:53:4
	movl	(%rax), %ecx
	.loc	1 53 3                          # main.c3:53:3
	addl	$1, %ecx
	movl	%ecx, (%rax)
	.loc	1 54 24 is_stmt 1               # main.c3:54:24
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_6
# %bb.3:
	.loc	1 0 24 is_stmt 0                # main.c3:0:24
	movq	-136(%rbp), %rax                # 8-byte Reload
	movl	$1, %edi
	.loc	1 54 24                         # main.c3:54:24
	callq	*%rax
	movl	%eax, -100(%rbp)
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-100(%rbp), %rax
	movq	%rax, -96(%rbp)
	.loc	1 54 3                          # main.c3:54:3
	leaq	-112(%rbp), %rdi
	leaq	.L.str.37(%rip), %rsi
	movl	$5, %edx
	leaq	-96(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 55 9 epilogue_begin is_stmt 1 # main.c3:55:9
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 53 4                          # main.c3:53:4
	leaq	.panic_msg.35(%rip), %rdi
	movl	$42, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.36(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$53, (%rsp)
	callq	*(%rax)
.LBB4_5:
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
	.loc	1 53 4                          # main.c3:53:4
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.36(%rip), %r8
	movl	$17, %r9d
	leaq	-80(%rbp), %rax
	movl	$53, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_6:
	.loc	1 54 24 is_stmt 1               # main.c3:54:24
	leaq	.panic_msg.27(%rip), %rdi
	movl	$47, %esi
	leaq	.file.6(%rip), %rdx
	movl	$7, %ecx
	leaq	.func.36(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$54, (%rsp)
	callq	*(%rax)
.Ltmp93:
.Lfunc_end4:
	.size	main.main$lambda1, .Lfunc_end4-main.main$lambda1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function main.main$lambda2
	.type	main.main$lambda2,@function
main.main$lambda2:                      # @"main.main$lambda2"
.Lfunc_begin5:
	.loc	1 62 0                          # main.c3:62:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
.Ltmp94:
	.loc	1 64 21 prologue_end            # main.c3:64:21
	movq	($ct.int)@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc	1 64 3 is_stmt 0                # main.c3:64:3
	leaq	-40(%rbp), %rdi
	leaq	.L.str.38(%rip), %rsi
	movl	$2, %edx
	leaq	-32(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 65 10 is_stmt 1               # main.c3:65:10
	movl	-4(%rbp), %eax
	.loc	1 65 10 epilogue_begin is_stmt 0 # main.c3:65:10
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp95:
.Lfunc_end5:
	.size	main.main$lambda2, .Lfunc_end5-main.main$lambda2
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin6:
	.loc	1 27 0 is_stmt 1                # main.c3:27:0
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
.Ltmp96:
	.file	7 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/private" "main_stub.c3"
	.loc	7 24 43 prologue_end            # main_stub.c3:24:43
	movslq	-60(%rbp), %rax
	movq	%rax, -96(%rbp)
.Ltmp97:
	.file	8 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	8 877 32                        # mem.c3:877:32
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
.Ltmp98:
	.loc	3 304 55                        # mem_allocator.c3:304:55
	movq	-152(%rbp), %rax
	.loc	3 304 40 is_stmt 0              # mem_allocator.c3:304:40
	shlq	$4, %rax
	movq	%rax, -176(%rbp)
.Ltmp99:
	.loc	3 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -176(%rbp)
	jne	.LBB6_2
# %bb.1:
	.loc	3 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -184(%rbp)
	jmp	.LBB6_20
.LBB6_2:
	.loc	3 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-176(%rbp), %rax
	movq	%rax, -624(%rbp)                # 8-byte Spill
	.loc	3 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -609(%rbp)                 # 1-byte Spill
	jne	.LBB6_6
# %bb.3:
	.loc	3 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -192(%rbp)
.Ltmp100:
	.loc	4 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-192(%rbp), %rcx
	movb	%al, -625(%rbp)                 # 1-byte Spill
	je	.LBB6_5
# %bb.4:
	.loc	4 992 20 is_stmt 0              # math.c3:992:20
	movq	-192(%rbp), %rax
	.loc	4 992 25                        # math.c3:992:25
	movq	-192(%rbp), %rcx
	subq	$1, %rcx
	.loc	4 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	4 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -625(%rbp)                 # 1-byte Spill
.LBB6_5:
	.loc	4 0 19                          # math.c3:0:19
	movb	-625(%rbp), %al                 # 1-byte Reload
	movb	%al, -609(%rbp)                 # 1-byte Spill
.LBB6_6:
	movb	-609(%rbp), %al                 # 1-byte Reload
	.loc	4 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB6_8
.Ltmp101:
# %bb.7:
	.loc	3 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.8(%rip), %rdi
	movl	$65, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB6_8:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB6_10
	jmp	.LBB6_9
.LBB6_9:
	leaq	.panic_msg.10(%rip), %rdi
	movl	$80, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB6_10:
	.loc	3 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-624(%rbp), %rcx                # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB6_12
# %bb.11:
	leaq	.panic_msg.11(%rip), %rdi
	movl	$59, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB6_12:
	movq	-160(%rbp), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
	cmpq	-208(%rbp), %rax
	je	.LBB6_14
# %bb.13:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-640(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-640(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%rax, -648(%rbp)                # 8-byte Spill
	jmp	.LBB6_15
.LBB6_14:
	movq	-200(%rbp), %rax
	movq	%rax, -648(%rbp)                # 8-byte Spill
.LBB6_15:
	movq	-648(%rbp), %rax                # 8-byte Reload
	movq	%rax, -656(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB6_17
# %bb.16:
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.12(%rip), %rdi
	movl	$44, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB6_17:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-656(%rbp), %rax                # 8-byte Reload
	movq	-624(%rbp), %rdx                # 8-byte Reload
	movq	-168(%rbp), %rsi
	.loc	3 86 10                         # mem_allocator.c3:86:10
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -664(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB6_19
# %bb.18:
	.loc	3 0 10                          # mem_allocator.c3:0:10
	movq	-664(%rbp), %rax                # 8-byte Reload
	.loc	3 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -128(%rbp)
	jmp	.LBB6_22
.LBB6_19:
	movq	-216(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB6_20:
	movq	-184(%rbp), %rax
	movq	%rax, -688(%rbp)                # 8-byte Spill
.Ltmp102:
	.loc	3 304 67 is_stmt 1              # mem_allocator.c3:304:67
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
	jne	.LBB6_36
# %bb.21:
	.loc	3 0 67 is_stmt 0                # mem_allocator.c3:0:67
	movq	-688(%rbp), %rax                # 8-byte Reload
	movq	-680(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -704(%rbp)                # 8-byte Spill
	movq	%rax, -696(%rbp)                # 8-byte Spill
	.loc	3 304 9                         # mem_allocator.c3:304:9
	jmp	.LBB6_23
.LBB6_22:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -264(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$1, -280(%rbp)
.Ltmp103:
	.loc	3 287 9 is_stmt 1               # mem_allocator.c3:287:9
	leaq	.panic_msg.5(%rip), %rdi
	movl	$36, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	leaq	-288(%rbp), %rax
	movl	$287, (%rsp)                    # imm = 0x11F
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_23:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-704(%rbp), %rax                # 8-byte Reload
	movq	-696(%rbp), %rcx                # 8-byte Reload
	.loc	3 287 9                         # mem_allocator.c3:287:9
	movq	%rcx, -88(%rbp)
	movq	%rax, -80(%rbp)
.Ltmp104:
	.loc	7 25 15 is_stmt 1               # main_stub.c3:25:15
	movl	$0, -292(%rbp)
.LBB6_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
	.loc	7 25 18 is_stmt 0               # main_stub.c3:25:18
	movl	-292(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_34
# %bb.25:                               #   in Loop: Header=BB6_24 Depth=1
.Ltmp105:
	.loc	7 27 15 is_stmt 1               # main_stub.c3:27:15
	movq	-72(%rbp), %rax
	.loc	7 27 20 is_stmt 0               # main_stub.c3:27:20
	movslq	-292(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -712(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB6_37
# %bb.26:                               #   in Loop: Header=BB6_24 Depth=1
	.loc	7 0 20                          # main_stub.c3:0:20
	movq	-720(%rbp), %rax                # 8-byte Reload
	.loc	7 27 15                         # main_stub.c3:27:15
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	.loc	7 28 13 is_stmt 1               # main_stub.c3:28:13
	movq	$0, -376(%rbp)
	.loc	7 29 21                         # main_stub.c3:29:21
	movq	-304(%rbp), %rax
	movq	%rax, -728(%rbp)                # 8-byte Spill
	movq	-304(%rbp), %rax
	movq	%rax, -384(%rbp)
.Ltmp106:
	.loc	7 5 12                          # main_stub.c3:5:12
	movq	$0, -392(%rbp)
.LBB6_27:                               #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp107:
	.loc	7 6 9                           # main_stub.c3:6:9
	movq	-384(%rbp), %rax
	.loc	7 6 13 is_stmt 0                # main_stub.c3:6:13
	movq	-392(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB6_29
# %bb.28:                               #   in Loop: Header=BB6_27 Depth=2
	.loc	7 6 19                          # main_stub.c3:6:19
	movq	-392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB6_27
.Ltmp108:
.LBB6_29:                               #   in Loop: Header=BB6_24 Depth=1
	.loc	7 7 9 is_stmt 1                 # main_stub.c3:7:9
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
	jne	.LBB6_38
.Ltmp109:
# %bb.30:                               #   in Loop: Header=BB6_24 Depth=1
	.loc	7 0 9 is_stmt 0                 # main_stub.c3:0:9
	movq	-728(%rbp), %rax                # 8-byte Reload
	movq	-744(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -784(%rbp)                # 8-byte Spill
	movq	%rax, -776(%rbp)                # 8-byte Spill
	.loc	7 29 3 is_stmt 1                # main_stub.c3:29:3
	movq	-80(%rbp), %rax
	movq	%rax, -768(%rbp)                # 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -760(%rbp)                # 8-byte Spill
	.loc	7 29 8 is_stmt 0                # main_stub.c3:29:8
	movslq	-292(%rbp), %rax
	movq	%rax, -752(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB6_39
# %bb.31:                               #   in Loop: Header=BB6_24 Depth=1
	.loc	7 0 8                           # main_stub.c3:0:8
	movq	-752(%rbp), %rax                # 8-byte Reload
	movq	-768(%rbp), %rcx                # 8-byte Reload
	.loc	7 29 8                          # main_stub.c3:29:8
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB6_40
# %bb.32:                               #   in Loop: Header=BB6_24 Depth=1
	.loc	7 0 8                           # main_stub.c3:0:8
	movq	-760(%rbp), %rax                # 8-byte Reload
	movq	-752(%rbp), %rcx                # 8-byte Reload
	.loc	7 29 8                          # main_stub.c3:29:8
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -800(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -792(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB6_41
# %bb.33:                               #   in Loop: Header=BB6_24 Depth=1
	.loc	7 0 8                           # main_stub.c3:0:8
	movq	-800(%rbp), %rax                # 8-byte Reload
	movq	-784(%rbp), %rcx                # 8-byte Reload
	movq	-776(%rbp), %rdx                # 8-byte Reload
	.loc	7 29 3                          # main_stub.c3:29:3
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
.Ltmp110:
	.loc	7 25 28 is_stmt 1               # main_stub.c3:25:28
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB6_24
.Ltmp111:
.LBB6_34:
	.loc	7 31 9                          # main_stub.c3:31:9
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
.Ltmp112:
	.loc	7 47 12                         # main_stub.c3:47:12
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	.loc	7 47 9 is_stmt 0                # main_stub.c3:47:9
	callq	main.main@PLT
	movl	%eax, -36(%rbp)
.Ltmp113:
	.loc	7 46 13 is_stmt 1               # main_stub.c3:46:13
	movq	-56(%rbp), %rdi
	.loc	7 46 8 is_stmt 0                # main_stub.c3:46:8
	callq	std.core.mem.free@PLT
# %bb.35:
	movl	-36(%rbp), %eax
	.loc	7 46 8 epilogue_begin           # main_stub.c3:46:8
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp114:
.LBB6_36:
	.cfi_def_cfa %rbp, 16
	.loc	7 0 8                           # main_stub.c3:0:8
	movq	-672(%rbp), %rax                # 8-byte Reload
	movq	%rax, -224(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$1, -248(%rbp)
.Ltmp115:
	.loc	3 304 9 is_stmt 1               # mem_allocator.c3:304:9
	leaq	.panic_msg.13(%rip), %rdi
	movl	$43, %esi
	leaq	.file.9(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	leaq	-256(%rbp), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp116:
.LBB6_37:
	.loc	3 0 9 is_stmt 0                 # mem_allocator.c3:0:9
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
.Ltmp117:
	.loc	7 27 15 is_stmt 1               # main_stub.c3:27:15
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.40(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	leaq	-368(%rbp), %rax
	movl	$27, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_38:
	.loc	7 0 15 is_stmt 0                # main_stub.c3:0:15
	movq	-736(%rbp), %rax                # 8-byte Reload
	movq	%rax, -400(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -408(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	$1, -424(%rbp)
	.loc	7 29 13 is_stmt 1               # main_stub.c3:29:13
	leaq	.panic_msg.13(%rip), %rdi
	movl	$43, %esi
	leaq	.file.40(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	leaq	-432(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_39:
	.loc	7 0 13 is_stmt 0                # main_stub.c3:0:13
	movq	-752(%rbp), %rax                # 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -456(%rbp)
	leaq	-440(%rbp), %rax
	movq	%rax, -464(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	$1, -472(%rbp)
	.loc	7 29 8                          # main_stub.c3:29:8
	leaq	.panic_msg.41(%rip), %rdi
	movl	$38, %esi
	leaq	.file.40(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	leaq	-480(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_40:
	.loc	7 0 8                           # main_stub.c3:0:8
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
	.loc	7 29 8                          # main_stub.c3:29:8
	leaq	.panic_msg.42(%rip), %rdi
	movl	$59, %esi
	leaq	.file.40(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	leaq	-544(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB6_41:
	.loc	7 0 8                           # main_stub.c3:0:8
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
	.loc	7 29 3                          # main_stub.c3:29:3
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.40(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.39(%rip), %r8
	movl	$6, %r9d
	leaq	-608(%rbp), %rax
	movl	$29, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp118:
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
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

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"abc"
	.size	.L.str.1, 4

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"@require \"self.file != null\" violated: 'File must be initialized'."
	.size	.panic_msg, 67

	.type	.file,@object                   # @.file
.file:
	.asciz	"io.c3"
	.size	.file, 6

	.type	.func,@object                   # @.func
.func:
	.asciz	"print_something"
	.size	.func, 16

	.type	.panic_msg.2,@object            # @.panic_msg.2
.panic_msg.2:
	.asciz	"@require \"self.file != null\" violated."
	.size	.panic_msg.2, 39

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Hello from assembly: %p"
	.size	.L.str.3, 24

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

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Hello Again!: %p"
	.size	.L.str.4, 17

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

	.type	.panic_msg.5,@object            # @.panic_msg.5
	.section	.rodata,"a",@progbits
.panic_msg.5:
	.asciz	"Unexpected fault '%s' was unwrapped!"
	.size	.panic_msg.5, 37

	.type	.file.6,@object                 # @.file.6
.file.6:
	.asciz	"main.c3"
	.size	.file.6, 8

	.type	.func.7,@object                 # @.func.7
.func.7:
	.asciz	"main"
	.size	.func.7, 5

	.type	main.OFFSET,@object             # @main.OFFSET
	.p2align	2, 0x0
main.OFFSET:
	.long	1                               # 0x1
	.size	main.OFFSET, 4

	.type	$sel.acquire,@object            # @"$sel.acquire"
	.section	".rodata.$sel.acquire","aG",@progbits,"$sel.acquire",comdat
	.weak	$sel.acquire
$sel.acquire:
	.asciz	"acquire"
	.size	$sel.acquire, 8

	.type	.panic_msg.8,@object            # @.panic_msg.8
	.section	.rodata,"a",@progbits
.panic_msg.8:
	.asciz	"@require \"!alignment || math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.8, 66

	.type	.file.9,@object                 # @.file.9
.file.9:
	.asciz	"mem_allocator.c3"
	.size	.file.9, 17

	.type	.panic_msg.10,@object           # @.panic_msg.10
.panic_msg.10:
	.asciz	"@require \"alignment <= mem::MAX_MEMORY_ALIGNMENT\" violated: 'alignment too big'."
	.size	.panic_msg.10, 81

	.type	.panic_msg.11,@object           # @.panic_msg.11
.panic_msg.11:
	.asciz	"@require \"size > 0\" violated: 'The size must be 1 or more'."
	.size	.panic_msg.11, 60

	.type	.panic_msg.12,@object           # @.panic_msg.12
.panic_msg.12:
	.asciz	"No method 'acquire' could be found on target"
	.size	.panic_msg.12, 45

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

	.type	.panic_msg.13,@object           # @.panic_msg.13
	.section	.rodata,"a",@progbits
.panic_msg.13:
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.13, 44

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

	.type	.panic_msg.14,@object           # @.panic_msg.14
	.section	.rodata,"a",@progbits
.panic_msg.14:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.14, 95

	.type	.file.15,@object                # @.file.15
.file.15:
	.asciz	"closure.c3"
	.size	.file.15, 11

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"before: %s, %s"
	.size	.L.str.16, 15

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"after: %s, %s"
	.size	.L.str.17, 14

	.type	.panic_msg.18,@object           # @.panic_msg.18
	.section	.rodata,"a",@progbits
.panic_msg.18:
	.asciz	"Slice copy length mismatch (%d != %d)."
	.size	.panic_msg.18, 39

	.type	.panic_msg.19,@object           # @.panic_msg.19
.panic_msg.19:
	.asciz	"Dereference of null pointer, '(uptr*)(&closures_data[closure_start + code_func_offset])' was null."
	.size	.panic_msg.19, 99

	.type	.panic_msg.20,@object           # @.panic_msg.20
.panic_msg.20:
	.asciz	"Dereference of null pointer, '(uptr*)(&closures_data[closure_start + code_arg_offset])' was null."
	.size	.panic_msg.20, 98

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"f(1): %s, f1(1): %s"
	.size	.L.str.21, 20

	.type	.panic_msg.22,@object           # @.panic_msg.22
	.section	.rodata,"a",@progbits
.panic_msg.22:
	.asciz	"Calling null function pointer, 'f' was null."
	.size	.panic_msg.22, 45

	.type	.panic_msg.23,@object           # @.panic_msg.23
.panic_msg.23:
	.asciz	"Calling null function pointer, 'f1' was null."
	.size	.panic_msg.23, 46

	.type	.panic_msg.24,@object           # @.panic_msg.24
.panic_msg.24:
	.asciz	"Assert \"!temp_closure_ptr\" failed."
	.size	.panic_msg.24, 35

	.type	.file.25,@object                # @.file.25
.file.25:
	.asciz	"generated.c3"
	.size	.file.25, 13

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	" = %s"
	.size	.L.str.26, 6

	.type	.panic_msg.27,@object           # @.panic_msg.27
	.section	.rodata,"a",@progbits
.panic_msg.27:
	.asciz	"Calling null function pointer, 'add1' was null."
	.size	.panic_msg.27, 48

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	" = %s"
	.size	.L.str.28, 6

	.type	.panic_msg.29,@object           # @.panic_msg.29
	.section	.rodata,"a",@progbits
.panic_msg.29:
	.asciz	"Calling null function pointer, 'calc_something' was null."
	.size	.panic_msg.29, 58

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"test: %s"
	.size	.L.str.30, 9

	.type	.panic_msg.31,@object           # @.panic_msg.31
	.section	.rodata,"a",@progbits
.panic_msg.31:
	.asciz	"Calling null function pointer, 'test.func' was null."
	.size	.panic_msg.31, 53

	.type	.panic_msg.32,@object           # @.panic_msg.32
.panic_msg.32:
	.asciz	"Passed null to a ref ('&') parameter."
	.size	.panic_msg.32, 38

	.type	.panic_msg.33,@object           # @.panic_msg.33
.panic_msg.33:
	.asciz	"Dereference of null pointer, 'val' was null."
	.size	.panic_msg.33, 45

	.type	.panic_msg.34,@object           # @.panic_msg.34
.panic_msg.34:
	.asciz	"Calling null function pointer, 'other_test' was null."
	.size	.panic_msg.34, 54

	.type	.panic_msg.35,@object           # @.panic_msg.35
.panic_msg.35:
	.asciz	"Dereference of null pointer, 'a' was null."
	.size	.panic_msg.35, 43

	.type	.func.36,@object                # @.func.36
.func.36:
	.asciz	"main.main$lambda1"
	.size	.func.36, 18

	.type	.L.str.37,@object               # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	" = %s"
	.size	.L.str.37, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%s"
	.size	.L.str.38, 3

	.type	.func.39,@object                # @.func.39
	.section	.rodata,"a",@progbits
.func.39:
	.asciz	"_$main"
	.size	.func.39, 7

	.type	.file.40,@object                # @.file.40
.file.40:
	.asciz	"main_stub.c3"
	.size	.file.40, 13

	.type	.panic_msg.41,@object           # @.panic_msg.41
.panic_msg.41:
	.asciz	"Negative array indexing (index was %d)"
	.size	.panic_msg.41, 39

	.type	.panic_msg.42,@object           # @.panic_msg.42
.panic_msg.42:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.42, 60

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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
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
	.byte	30                              # Abbreviation Code
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
	.byte	31                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
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
	.byte	11                              # DW_FORM_data1
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xb5f DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x19 DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	67                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	main.OFFSET
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x43:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x4a:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string59                 # DW_AT_linkage_name
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                              # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x67:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x75:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x83:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x92:0xc DW_TAG_subprogram
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	239                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x9e:0xc DW_TAG_subprogram
	.long	.Linfo_string7                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0xaa:0x19 DW_TAG_subprogram
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.long	.Linfo_string8                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0xb6:0xc DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	195                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc3:0x9 DW_TAG_typedef
	.long	204                             # DW_AT_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	3                               # Abbrev [3] 0xcc:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xd3:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string61                 # DW_AT_linkage_name
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0xec:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	461                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xfa:0x46 DW_TAG_inlined_subroutine
	.long	146                             # DW_AT_abstract_origin
	.quad	.Ltmp2                          # DW_AT_low_pc
	.long	.Ltmp5-.Ltmp2                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	18                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x10e:0x31 DW_TAG_inlined_subroutine
	.long	170                             # DW_AT_abstract_origin
	.quad	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp5-.Ltmp3                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	241                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x122:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	182                             # DW_AT_abstract_origin
	.byte	13                              # Abbrev [13] 0x12a:0x14 DW_TAG_inlined_subroutine
	.long	158                             # DW_AT_abstract_origin
	.quad	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	215                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x141:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string62                 # DW_AT_linkage_name
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x15a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	461                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x169:0xd DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x176:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x183:0x3d DW_TAG_subprogram
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x18f:0xc DW_TAG_variable
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x19b:0xc DW_TAG_variable
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	470                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a7:0xc DW_TAG_variable
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	510                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1b3:0xc DW_TAG_variable
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	519                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x1c0:0xd DW_TAG_pointer_type
	.long	461                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	16                              # Abbrev [16] 0x1cd:0x9 DW_TAG_pointer_type
	.long	.Linfo_string16                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	15                              # Abbrev [15] 0x1d6:0xd DW_TAG_pointer_type
	.long	483                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	17                              # Abbrev [17] 0x1e3:0x10 DW_TAG_subroutine_type
	.long	499                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x1e8:0x5 DW_TAG_formal_parameter
	.long	448                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x1ed:0x5 DW_TAG_formal_parameter
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x1f3:0xb DW_TAG_typedef
	.long	67                              # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1fe:0x9 DW_TAG_typedef
	.long	204                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	15                              # Abbrev [15] 0x207:0xd DW_TAG_pointer_type
	.long	532                             # DW_AT_type
	.long	.Linfo_string24                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	17                              # Abbrev [17] 0x214:0xb DW_TAG_subroutine_type
	.long	67                              # DW_AT_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x219:0x5 DW_TAG_formal_parameter
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x21f:0xc DW_TAG_subprogram
	.long	.Linfo_string25                 # DW_AT_linkage_name
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x22b:0xd DW_TAG_subprogram
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	20                              # Abbrev [20] 0x238:0x1b DW_TAG_subprogram
	.long	.Linfo_string27                 # DW_AT_linkage_name
	.long	.Linfo_string27                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	1386                            # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x245:0xd DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	1451                            # DW_AT_decl_line
	.long	470                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x253:0x19 DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x25f:0xc DW_TAG_variable
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	620                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x26c:0xd DW_TAG_array_type
	.long	461                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x271:0x7 DW_TAG_subrange_type
	.long	633                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x279:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	6                               # Abbrev [6] 0x280:0xc DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x28c:0x19 DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x298:0xc DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	677                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2a5:0xd DW_TAG_pointer_type
	.long	532                             # DW_AT_type
	.long	.Linfo_string34                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	7                               # Abbrev [7] 0x2b2:0x19 DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x2be:0xc DW_TAG_variable
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	620                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x2cb:0xc DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x2d7:0x19 DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x2e3:0xc DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	752                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x2f0:0xd DW_TAG_pointer_type
	.long	765                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	25                              # Abbrev [25] 0x2fd:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x2fe:0x19 DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string29                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x30a:0xc DW_TAG_variable
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	791                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x317:0xd DW_TAG_array_type
	.long	461                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x31c:0x7 DW_TAG_subrange_type
	.long	633                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x324:0xc DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x330:0x19 DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x33c:0xc DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	841                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x349:0xd DW_TAG_pointer_type
	.long	532                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	14                              # Abbrev [14] 0x356:0xd DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x363:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x370:0x25 DW_TAG_subprogram
	.long	.Linfo_string37                 # DW_AT_linkage_name
	.long	.Linfo_string37                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x37c:0xc DW_TAG_variable
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.long	917                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x388:0xc DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.long	677                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x395:0x1e DW_TAG_structure_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0x39c:0xb DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	448                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x3a7:0xb DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	195                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x3b3:0xc DW_TAG_subprogram
	.long	.Linfo_string25                 # DW_AT_linkage_name
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x3bf:0xd DW_TAG_subprogram
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x3cc:0xc DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x3d8:0x19 DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x3e4:0xc DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	677                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x3f1:0xd DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x3fe:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x40b:0x25 DW_TAG_subprogram
	.long	.Linfo_string40                 # DW_AT_linkage_name
	.long	.Linfo_string40                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x417:0xc DW_TAG_variable
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	917                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x423:0xc DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	1072                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x430:0xd DW_TAG_pointer_type
	.long	1085                            # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	28                              # Abbrev [28] 0x43d:0x5 DW_TAG_subroutine_type
	.long	499                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	6                               # Abbrev [6] 0x442:0xc DW_TAG_subprogram
	.long	.Linfo_string25                 # DW_AT_linkage_name
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x44e:0xd DW_TAG_subprogram
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x45b:0xc DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x467:0xd DW_TAG_subprogram
	.long	.Linfo_string42                 # DW_AT_linkage_name
	.long	.Linfo_string42                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	315                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x474:0xc DW_TAG_subprogram
	.long	.Linfo_string25                 # DW_AT_linkage_name
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x480:0xc DW_TAG_subprogram
	.long	.Linfo_string43                 # DW_AT_linkage_name
	.long	.Linfo_string43                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x48c:0x19 DW_TAG_subprogram
	.long	.Linfo_string44                 # DW_AT_linkage_name
	.long	.Linfo_string44                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x498:0xc DW_TAG_variable
	.long	.Linfo_string45                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.long	1189                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x4a5:0xd DW_TAG_pointer_type
	.long	67                              # DW_AT_type
	.long	.Linfo_string46                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	14                              # Abbrev [14] 0x4b2:0xd DW_TAG_subprogram
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x4bf:0x19 DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	2                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x4cb:0xc DW_TAG_variable
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	1072                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4d8:0x374 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string64                 # DW_AT_linkage_name
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                              # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x4f5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	2286                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x503:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string28                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	2763                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x513:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\214x"
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	29                              # Abbrev [29] 0x522:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200x"
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	2763                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x532:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230u"
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	752                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x542:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320q"
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	2787                            # DW_AT_type
	.byte	30                              # Abbrev [30] 0x552:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\214m"
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	29                              # Abbrev [29] 0x561:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200m"
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	2897                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x571:0xbf DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	30                              # Abbrev [30] 0x576:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\264\177"
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	31                              # Abbrev [31] 0x585:0xaa DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	29                              # Abbrev [29] 0x58a:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	2763                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x59a:0x94 DW_TAG_inlined_subroutine
	.long	387                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	35                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x5a6:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	399                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x5af:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350{"
	.long	411                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x5b8:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330{"
	.long	423                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x5c1:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310x"
	.long	435                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x5ca:0x45 DW_TAG_inlined_subroutine
	.long	374                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	119                             # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x5d6:0x38 DW_TAG_inlined_subroutine
	.long	361                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x5e3:0x2a DW_TAG_inlined_subroutine
	.long	543                             # DW_AT_abstract_origin
	.quad	.Ltmp13                         # DW_AT_low_pc
	.long	.Ltmp16-.Ltmp13                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x5f8:0x14 DW_TAG_inlined_subroutine
	.long	555                             # DW_AT_abstract_origin
	.quad	.Ltmp14                         # DW_AT_low_pc
	.long	.Ltmp15-.Ltmp14                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x60f:0x1e DW_TAG_inlined_subroutine
	.long	568                             # DW_AT_abstract_origin
	.quad	.Ltmp19                         # DW_AT_low_pc
	.long	.Ltmp20-.Ltmp19                 # DW_AT_high_pc
	.byte	5                               # DW_AT_call_file
	.byte	135                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x623:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340{"
	.long	581                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x630:0x39 DW_TAG_inlined_subroutine
	.long	595                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	46                              # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x63c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.long	607                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x645:0x23 DW_TAG_inlined_subroutine
	.long	640                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	167                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x651:0x16 DW_TAG_inlined_subroutine
	.long	652                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	238                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x65d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350u"
	.long	664                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x669:0x39 DW_TAG_inlined_subroutine
	.long	690                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	51                              # DW_AT_call_line
	.byte	34                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x675:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360t"
	.long	702                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x67e:0x23 DW_TAG_inlined_subroutine
	.long	715                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	167                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x68a:0x16 DW_TAG_inlined_subroutine
	.long	727                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges10                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	238                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x696:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370r"
	.long	739                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x6a2:0x39 DW_TAG_inlined_subroutine
	.long	766                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges11                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x6ae:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350r"
	.long	778                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6b7:0x23 DW_TAG_inlined_subroutine
	.long	804                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges12                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	167                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x6c3:0x16 DW_TAG_inlined_subroutine
	.long	816                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges13                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	238                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x6cf:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370q"
	.long	828                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x6db:0x87 DW_TAG_inlined_subroutine
	.long	880                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges14                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	70                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x6e7:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250q"
	.long	892                             # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x6f0:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330o"
	.long	904                             # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x6f9:0x45 DW_TAG_inlined_subroutine
	.long	867                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges15                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	180                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x705:0x38 DW_TAG_inlined_subroutine
	.long	854                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges16                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x712:0x2a DW_TAG_inlined_subroutine
	.long	947                             # DW_AT_abstract_origin
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp41-.Ltmp38                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x727:0x14 DW_TAG_inlined_subroutine
	.long	959                             # DW_AT_abstract_origin
	.quad	.Ltmp39                         # DW_AT_low_pc
	.long	.Ltmp40-.Ltmp39                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x73e:0x23 DW_TAG_inlined_subroutine
	.long	972                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges17                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	181                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x74a:0x16 DW_TAG_inlined_subroutine
	.long	984                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges18                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	238                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x756:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330m"
	.long	996                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x762:0xe9 DW_TAG_inlined_subroutine
	.long	1035                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges19                # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	77                              # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x76e:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330l"
	.long	1047                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x777:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210k"
	.long	1059                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0x780:0x45 DW_TAG_inlined_subroutine
	.long	1022                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges20                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	194                             # DW_AT_call_line
	.byte	13                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x78c:0x38 DW_TAG_inlined_subroutine
	.long	1009                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges21                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0x799:0x2a DW_TAG_inlined_subroutine
	.long	1090                            # DW_AT_abstract_origin
	.quad	.Ltmp48                         # DW_AT_low_pc
	.long	.Ltmp51-.Ltmp48                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x7ae:0x14 DW_TAG_inlined_subroutine
	.long	1102                            # DW_AT_abstract_origin
	.quad	.Ltmp49                         # DW_AT_low_pc
	.long	.Ltmp50-.Ltmp49                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x7c5:0x85 DW_TAG_inlined_subroutine
	.long	1115                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges22                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	195                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x7d1:0x62 DW_TAG_inlined_subroutine
	.long	1127                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges23                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	229                             # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0x7dd:0x55 DW_TAG_inlined_subroutine
	.long	1164                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges24                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x7ea:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270j"
	.long	1176                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x7f3:0x3e DW_TAG_inlined_subroutine
	.long	1152                            # DW_AT_abstract_origin
	.quad	.Ltmp56                         # DW_AT_low_pc
	.long	.Ltmp60-.Ltmp56                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	177                             # DW_AT_call_line
	.byte	16                              # DW_AT_call_column
	.byte	11                              # Abbrev [11] 0x807:0x29 DW_TAG_inlined_subroutine
	.long	1140                            # DW_AT_abstract_origin
	.quad	.Ltmp56                         # DW_AT_low_pc
	.long	.Ltmp59-.Ltmp56                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	75                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0x81b:0x14 DW_TAG_inlined_subroutine
	.long	1202                            # DW_AT_abstract_origin
	.quad	.Ltmp57                         # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp57                 # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x833:0x16 DW_TAG_inlined_subroutine
	.long	1215                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges25                # DW_AT_ranges
	.byte	5                               # DW_AT_call_file
	.byte	238                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0x83f:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350g"
	.long	1227                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x84c:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string66                 # DW_AT_linkage_name
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	5                               # Abbrev [5] 0x865:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	1189                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x873:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	2763                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x882:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string67                 # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x89f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x8ae:0x40 DW_TAG_subprogram
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.long	.Linfo_string47                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x8ba:0xc DW_TAG_variable
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	2286                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x8c6:0x27 DW_TAG_lexical_block
	.byte	38                              # Abbrev [38] 0x8c7:0xb DW_TAG_variable
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	37                              # Abbrev [37] 0x8d2:0x1a DW_TAG_lexical_block
	.byte	8                               # Abbrev [8] 0x8d3:0xc DW_TAG_variable
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	2368                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x8df:0xc DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	195                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	26                              # Abbrev [26] 0x8ee:0x1e DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0x8f5:0xb DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	2316                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x900:0xb DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	195                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x90c:0xd DW_TAG_pointer_type
	.long	2329                            # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	9                               # Abbrev [9] 0x919:0x9 DW_TAG_typedef
	.long	2338                            # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	26                              # Abbrev [26] 0x922:0x1e DW_TAG_structure_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0x929:0xb DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	2368                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0x934:0xb DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	195                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x940:0xd DW_TAG_pointer_type
	.long	2381                            # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	3                               # Abbrev [3] 0x94d:0x7 DW_TAG_base_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x954:0x19 DW_TAG_subprogram
	.long	.Linfo_string57                 # DW_AT_linkage_name
	.long	.Linfo_string57                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x960:0xc DW_TAG_variable
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	2286                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x96d:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.short	875                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x97a:0xd DW_TAG_subprogram
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	302                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x987:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x994:0xc DW_TAG_subprogram
	.long	.Linfo_string25                 # DW_AT_linkage_name
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x9a0:0xd DW_TAG_subprogram
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x9ad:0x19 DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	3                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0x9b9:0xc DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.long	195                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x9c6:0x105 DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                              # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x9e3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string88                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	67                              # DW_AT_type
	.byte	5                               # Abbrev [5] 0x9f1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string88                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	2908                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x9ff:0xcb DW_TAG_inlined_subroutine
	.long	2388                            # DW_AT_abstract_origin
	.quad	.Ltmp96                         # DW_AT_low_pc
	.long	.Ltmp118-.Ltmp96                # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	27                              # DW_AT_call_line
	.byte	8                               # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0xa13:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	2400                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xa1b:0xae DW_TAG_inlined_subroutine
	.long	2222                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges26                # DW_AT_ranges
	.byte	7                               # DW_AT_call_file
	.byte	45                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0xa27:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	2234                            # DW_AT_abstract_origin
	.byte	32                              # Abbrev [32] 0xa30:0x53 DW_TAG_inlined_subroutine
	.long	2413                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges27                # DW_AT_ranges
	.byte	7                               # DW_AT_call_file
	.byte	24                              # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0xa3c:0x46 DW_TAG_inlined_subroutine
	.long	2439                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges28                # DW_AT_ranges
	.byte	8                               # DW_AT_call_file
	.short	877                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	33                              # Abbrev [33] 0xa49:0x38 DW_TAG_inlined_subroutine
	.long	2426                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges29                # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	287                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	34                              # Abbrev [34] 0xa56:0x2a DW_TAG_inlined_subroutine
	.long	2452                            # DW_AT_abstract_origin
	.quad	.Ltmp99                         # DW_AT_low_pc
	.long	.Ltmp102-.Ltmp99                # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	13                              # Abbrev [13] 0xa6b:0x14 DW_TAG_inlined_subroutine
	.long	2464                            # DW_AT_abstract_origin
	.quad	.Ltmp100                        # DW_AT_low_pc
	.long	.Ltmp101-.Ltmp100               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0xa83:0x45 DW_TAG_lexical_block
	.long	.Ldebug_ranges30                # DW_AT_ranges
	.byte	12                              # Abbrev [12] 0xa88:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334}"
	.long	2247                            # DW_AT_abstract_origin
	.byte	31                              # Abbrev [31] 0xa91:0x36 DW_TAG_lexical_block
	.long	.Ldebug_ranges31                # DW_AT_ranges
	.byte	12                              # Abbrev [12] 0xa96:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320}"
	.long	2259                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0xa9f:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210}"
	.long	2271                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0xaa8:0x1e DW_TAG_inlined_subroutine
	.long	2477                            # DW_AT_abstract_origin
	.quad	.Ltmp106                        # DW_AT_low_pc
	.long	.Ltmp109-.Ltmp106               # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	29                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	12                              # Abbrev [12] 0xabc:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370|"
	.long	2489                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xacb:0xb DW_TAG_typedef
	.long	2774                            # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xad6:0xd DW_TAG_pointer_type
	.long	532                             # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	39                              # Abbrev [39] 0xae3:0x3e DW_TAG_structure_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # Abbrev [40] 0xaec:0xd DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	2849                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0xaf9:0xd DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	2860                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0xb06:0xd DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	448                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0xb13:0xd DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	195                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xb21:0xb DW_TAG_typedef
	.long	2774                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	26                              # Abbrev [26] 0xb2c:0x1e DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	27                              # Abbrev [27] 0xb33:0xb DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	461                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	27                              # Abbrev [27] 0xb3e:0xb DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	2890                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xb4a:0x7 DW_TAG_base_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xb51:0xb DW_TAG_typedef
	.long	1072                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	196                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xb5c:0xd DW_TAG_pointer_type
	.long	2368                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
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
	.asciz	"OFFSET"                        # string offset=52
.Linfo_string4:
	.asciz	"int"                           # string offset=59
.Linfo_string5:
	.asciz	"main.OFFSET"                   # string offset=63
.Linfo_string6:
	.asciz	"printn"                        # string offset=75
.Linfo_string7:
	.asciz	"fprint"                        # string offset=82
.Linfo_string8:
	.asciz	"fprintn"                       # string offset=89
.Linfo_string9:
	.asciz	"len"                           # string offset=97
.Linfo_string10:
	.asciz	"ulong"                         # string offset=101
.Linfo_string11:
	.asciz	"usz"                           # string offset=107
.Linfo_string12:
	.asciz	"alloc_array_try"               # string offset=111
.Linfo_string13:
	.asciz	"alloc_array"                   # string offset=127
.Linfo_string14:
	.asciz	"create"                        # string offset=139
.Linfo_string15:
	.asciz	"cl_data"                       # string offset=146
.Linfo_string16:
	.asciz	"void*"                         # string offset=154
.Linfo_string17:
	.asciz	"void**"                        # string offset=160
.Linfo_string18:
	.asciz	"cl_func"                       # string offset=167
.Linfo_string19:
	.asciz	"CInt"                          # string offset=175
.Linfo_string20:
	.asciz	"closure.@generate_closure$lambda1" # string offset=180
.Linfo_string21:
	.asciz	"closure_start"                 # string offset=214
.Linfo_string22:
	.asciz	"uptr"                          # string offset=228
.Linfo_string23:
	.asciz	"y"                             # string offset=233
.Linfo_string24:
	.asciz	"closure::closures.create$lambda1" # string offset=235
.Linfo_string25:
	.asciz	"malloc_try"                    # string offset=268
.Linfo_string26:
	.asciz	"is_power_of_2"                 # string offset=279
.Linfo_string27:
	.asciz	"@generate_closure"             # string offset=293
.Linfo_string28:
	.asciz	"f"                             # string offset=311
.Linfo_string29:
	.asciz	"@on_stack"                     # string offset=313
.Linfo_string30:
	.asciz	"data"                          # string offset=323
.Linfo_string31:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=328
.Linfo_string32:
	.asciz	"@create_inner"                 # string offset=348
.Linfo_string33:
	.asciz	"@generate_closure_call_func"   # string offset=362
.Linfo_string34:
	.asciz	"closure.@generate_closure_call_func$lambda3" # string offset=390
.Linfo_string35:
	.asciz	"closure.@generate_closure_call_func$lambda5" # string offset=434
.Linfo_string36:
	.asciz	"closure.@generate_closure_call_func$lambda7" # string offset=478
.Linfo_string37:
	.asciz	"@new"                          # string offset=522
.Linfo_string38:
	.asciz	"ptr"                           # string offset=527
.Linfo_string39:
	.asciz	"void*[]"                       # string offset=531
.Linfo_string40:
	.asciz	"@new_copy"                     # string offset=539
.Linfo_string41:
	.asciz	"closure.@generate_closure_call_func$lambda10" # string offset=549
.Linfo_string42:
	.asciz	"clone"                         # string offset=594
.Linfo_string43:
	.asciz	"malloc"                        # string offset=600
.Linfo_string44:
	.asciz	"new"                           # string offset=607
.Linfo_string45:
	.asciz	"val"                           # string offset=611
.Linfo_string46:
	.asciz	"int*"                          # string offset=615
.Linfo_string47:
	.asciz	"args_to_strings"               # string offset=620
.Linfo_string48:
	.asciz	"list"                          # string offset=636
.Linfo_string49:
	.asciz	"char"                          # string offset=641
.Linfo_string50:
	.asciz	"char*"                         # string offset=646
.Linfo_string51:
	.asciz	"char[]"                        # string offset=652
.Linfo_string52:
	.asciz	"String"                        # string offset=659
.Linfo_string53:
	.asciz	"String*"                       # string offset=666
.Linfo_string54:
	.asciz	"String[]"                      # string offset=674
.Linfo_string55:
	.asciz	"i"                             # string offset=683
.Linfo_string56:
	.asciz	"arg"                           # string offset=685
.Linfo_string57:
	.asciz	"@main_to_int_main_args"        # string offset=689
.Linfo_string58:
	.asciz	"_strlen"                       # string offset=712
.Linfo_string59:
	.asciz	"main.add3"                     # string offset=720
.Linfo_string60:
	.asciz	"add3"                          # string offset=730
.Linfo_string61:
	.asciz	"print_something"               # string offset=735
.Linfo_string62:
	.asciz	"main.print_something_else"     # string offset=751
.Linfo_string63:
	.asciz	"print_something_else"          # string offset=777
.Linfo_string64:
	.asciz	"main.main"                     # string offset=798
.Linfo_string65:
	.asciz	"main"                          # string offset=808
.Linfo_string66:
	.asciz	"main.main$lambda1"             # string offset=813
.Linfo_string67:
	.asciz	"main.main$lambda2"             # string offset=831
.Linfo_string68:
	.asciz	"_$main"                        # string offset=849
.Linfo_string69:
	.asciz	"a"                             # string offset=856
.Linfo_string70:
	.asciz	"b"                             # string offset=858
.Linfo_string71:
	.asciz	"c"                             # string offset=860
.Linfo_string72:
	.asciz	"dat"                           # string offset=862
.Linfo_string73:
	.asciz	"args"                          # string offset=866
.Linfo_string74:
	.asciz	"IntFn"                         # string offset=871
.Linfo_string75:
	.asciz	"f1"                            # string offset=877
.Linfo_string76:
	.asciz	"add1"                          # string offset=880
.Linfo_string77:
	.asciz	"calc_something"                # string offset=885
.Linfo_string78:
	.asciz	"test"                          # string offset=900
.Linfo_string79:
	.asciz	"func"                          # string offset=905
.Linfo_string80:
	.asciz	"FnType"                        # string offset=910
.Linfo_string81:
	.asciz	"alloc"                         # string offset=917
.Linfo_string82:
	.asciz	"type"                          # string offset=923
.Linfo_string83:
	.asciz	"typeid"                        # string offset=928
.Linfo_string84:
	.asciz	"Allocator"                     # string offset=935
.Linfo_string85:
	.asciz	"copied_count"                  # string offset=945
.Linfo_string86:
	.asciz	"Closure"                       # string offset=958
.Linfo_string87:
	.asciz	"other_test"                    # string offset=966
.Linfo_string88:
	.asciz	".anon"                         # string offset=977
.Linfo_string89:
	.asciz	"char**"                        # string offset=983
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2922                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"OFFSET"                        # External Name
	.long	74                              # DIE offset
	.asciz	"add3"                          # External Name
	.long	146                             # DIE offset
	.asciz	"printn"                        # External Name
	.long	158                             # DIE offset
	.asciz	"fprint"                        # External Name
	.long	170                             # DIE offset
	.asciz	"fprintn"                       # External Name
	.long	211                             # DIE offset
	.asciz	"print_something"               # External Name
	.long	321                             # DIE offset
	.asciz	"print_something_else"          # External Name
	.long	387                             # DIE offset
	.asciz	"create"                        # External Name
	.long	568                             # DIE offset
	.asciz	"@generate_closure"             # External Name
	.long	766                             # DIE offset
	.asciz	"@on_stack"                     # External Name
	.long	880                             # DIE offset
	.asciz	"@new"                          # External Name
	.long	1035                            # DIE offset
	.asciz	"@new_copy"                     # External Name
	.long	1115                            # DIE offset
	.asciz	"@create_inner"                 # External Name
	.long	1127                            # DIE offset
	.asciz	"clone"                         # External Name
	.long	1152                            # DIE offset
	.asciz	"malloc"                        # External Name
	.long	1164                            # DIE offset
	.asciz	"new"                           # External Name
	.long	1215                            # DIE offset
	.asciz	"@generate_closure_call_func"   # External Name
	.long	1240                            # DIE offset
	.asciz	"main"                          # External Name
	.long	2124                            # DIE offset
	.asciz	"main.main$lambda1"             # External Name
	.long	2178                            # DIE offset
	.asciz	"main.main$lambda2"             # External Name
	.long	2222                            # DIE offset
	.asciz	"args_to_strings"               # External Name
	.long	2388                            # DIE offset
	.asciz	"@main_to_int_main_args"        # External Name
	.long	2426                            # DIE offset
	.asciz	"alloc_array_try"               # External Name
	.long	2439                            # DIE offset
	.asciz	"alloc_array"                   # External Name
	.long	2452                            # DIE offset
	.asciz	"malloc_try"                    # External Name
	.long	2464                            # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	2477                            # DIE offset
	.asciz	"_strlen"                       # External Name
	.long	2502                            # DIE offset
	.asciz	"_$main"                        # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2922                            # Compilation Unit Length
	.long	67                              # DIE offset
	.asciz	"int"                           # External Name
	.long	195                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	204                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	448                             # DIE offset
	.asciz	"void**"                        # External Name
	.long	461                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	470                             # DIE offset
	.asciz	"closure.@generate_closure$lambda1" # External Name
	.long	499                             # DIE offset
	.asciz	"CInt"                          # External Name
	.long	510                             # DIE offset
	.asciz	"uptr"                          # External Name
	.long	519                             # DIE offset
	.asciz	"closure::closures.create$lambda1" # External Name
	.long	677                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda3" # External Name
	.long	752                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda5" # External Name
	.long	841                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda7" # External Name
	.long	917                             # DIE offset
	.asciz	"void*[]"                       # External Name
	.long	1072                            # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda10" # External Name
	.long	1189                            # DIE offset
	.asciz	"int*"                          # External Name
	.long	2286                            # DIE offset
	.asciz	"String[]"                      # External Name
	.long	2316                            # DIE offset
	.asciz	"String*"                       # External Name
	.long	2329                            # DIE offset
	.asciz	"String"                        # External Name
	.long	2338                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	2368                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	2381                            # DIE offset
	.asciz	"char"                          # External Name
	.long	2774                            # DIE offset
	.asciz	"IntFn"                         # External Name
	.long	2787                            # DIE offset
	.asciz	"Closure"                       # External Name
	.long	2860                            # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	2890                            # DIE offset
	.asciz	"typeid"                        # External Name
	.long	2897                            # DIE offset
	.asciz	"FnType"                        # External Name
	.long	2908                            # DIE offset
	.asciz	"char**"                        # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.io.printfn
	.weak	std.io.stdout
	.weak	std.io.File.write
	.weak	std.io.File.write_byte
	.weak	std.io.File.flush
	.weak	std.core.builtin.panicf
	.weak	closure_closure_struct$fn$int$int$$.Closure.free
	.weak	std.core.mem.free
	.weak	std.core.builtin.panic
	.weak	std.core.mem.allocator.current_temp
	.weak	std.core.mem.allocator.thread_allocator
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

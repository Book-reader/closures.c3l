	.text
	.file	"std::core::mem::allocator"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/allocators" "libc_allocator.c3"
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/allocators" "temp_allocator.c3"
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/allocators" "arena_allocator.c3"
	.section	.text.std.core.mem.allocator.ArenaAllocator.init,"axG",@progbits,std.core.mem.allocator.ArenaAllocator.init,comdat
	.weak	std.core.mem.allocator.ArenaAllocator.init # -- Begin function std.core.mem.allocator.ArenaAllocator.init
	.p2align	4, 0x90
	.type	std.core.mem.allocator.ArenaAllocator.init,@function
std.core.mem.allocator.ArenaAllocator.init: # @std.core.mem.allocator.ArenaAllocator.init
.Lfunc_begin0:
	.loc	4 22 0                          # arena_allocator.c3:22:0
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
.Ltmp0:
	.loc	4 23 1 prologue_end             # arena_allocator.c3:23:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:
	.loc	4 0 1 is_stmt 0                 # arena_allocator.c3:0:1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -16(%rbp)
	.loc	4 24 2 is_stmt 1                # arena_allocator.c3:24:2
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.loc	4 25 2                          # arena_allocator.c3:25:2
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc	4 26 9                          # arena_allocator.c3:26:9
	movq	-8(%rbp), %rax
	.loc	4 26 9 epilogue_begin is_stmt 0 # arena_allocator.c3:26:9
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_2:
	.cfi_def_cfa %rbp, 16
	.loc	4 22 40 is_stmt 1               # arena_allocator.c3:22:40
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$22, (%rsp)
	callq	*(%rax)
.Ltmp1:
.Lfunc_end0:
	.size	std.core.mem.allocator.ArenaAllocator.init, .Lfunc_end0-std.core.mem.allocator.ArenaAllocator.init
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.ArenaAllocator.release,"axG",@progbits,std.core.mem.allocator.ArenaAllocator.release,comdat
	.weak	std.core.mem.allocator.ArenaAllocator.release # -- Begin function std.core.mem.allocator.ArenaAllocator.release
	.p2align	4, 0x90
	.type	std.core.mem.allocator.ArenaAllocator.release,@function
std.core.mem.allocator.ArenaAllocator.release: # @std.core.mem.allocator.ArenaAllocator.release
.Lfunc_begin1:
	.loc	4 69 0                          # arena_allocator.c3:69:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rsi, -120(%rbp)                # 8-byte Spill
	movq	%rdi, -112(%rbp)                # 8-byte Spill
	movb	%dl, %al
	movb	%al, -97(%rbp)                  # 1-byte Spill
.Ltmp2:
	.loc	4 70 1 prologue_end             # arena_allocator.c3:70:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB1_9
# %bb.1:
	.loc	4 0 1 is_stmt 0                 # arena_allocator.c3:0:1
	movb	-97(%rbp), %al                  # 1-byte Reload
	movq	-120(%rbp), %rcx                # 8-byte Reload
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)
.Ltmp3:
	.loc	4 67 11 is_stmt 1               # arena_allocator.c3:67:11
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# %bb.2:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$32, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$67, (%rsp)
	callq	*(%rax)
.Ltmp4:
.LBB1_3:
	.loc	4 71 9                          # arena_allocator.c3:71:9
	movq	-16(%rbp), %rax
	.loc	4 71 28 is_stmt 0               # arena_allocator.c3:71:28
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	.loc	4 71 9                          # arena_allocator.c3:71:9
	cmpq	%rcx, %rax
	jae	.LBB1_5
# %bb.4:
	leaq	.panic_msg.3(%rip), %rdi
	movl	$46, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$71, (%rsp)
	callq	*(%rax)
.LBB1_5:
	.loc	4 72 33 is_stmt 1               # arena_allocator.c3:72:33
	movq	-16(%rbp), %rax
	.loc	4 72 39 is_stmt 0               # arena_allocator.c3:72:39
	addq	$-8, %rax
	movq	%rax, -32(%rbp)
	.loc	4 74 6 is_stmt 1                # arena_allocator.c3:74:6
	movq	-16(%rbp), %rax
	.loc	4 74 12 is_stmt 0               # arena_allocator.c3:74:12
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	.loc	4 74 28                         # arena_allocator.c3:74:28
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -144(%rbp)                # 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	.loc	4 74 38                         # arena_allocator.c3:74:38
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB1_10
# %bb.6:
	.loc	4 0 38                          # arena_allocator.c3:0:38
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	-128(%rbp), %rdx                # 8-byte Reload
	movq	-136(%rbp), %rcx                # 8-byte Reload
	.loc	4 74 38                         # arena_allocator.c3:74:38
	addq	%rdx, %rcx
	.loc	4 74 6                          # arena_allocator.c3:74:6
	cmpq	%rcx, %rax
	jne	.LBB1_8
# %bb.7:
.Ltmp5:
	.loc	4 76 3 is_stmt 1                # arena_allocator.c3:76:3
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	.loc	4 76 16 is_stmt 0               # arena_allocator.c3:76:16
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	.loc	4 76 3                          # arena_allocator.c3:76:3
	subq	%rdx, %rcx
	movq	%rcx, 16(%rax)
.LBB1_8:
	.loc	4 76 3 epilogue_begin           # arena_allocator.c3:76:3
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB1_9:
	.cfi_def_cfa %rbp, 16
	.loc	4 69 32 is_stmt 1               # arena_allocator.c3:69:32
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$69, (%rsp)
	callq	*(%rax)
.LBB1_10:
	.loc	4 0 32 is_stmt 0                # arena_allocator.c3:0:32
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	%rax, -40(%rbp)
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
	.loc	4 74 38 is_stmt 1               # arena_allocator.c3:74:38
	leaq	.panic_msg.4(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	leaq	-96(%rbp), %rax
	movl	$74, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp7:
.Lfunc_end1:
	.size	std.core.mem.allocator.ArenaAllocator.release, .Lfunc_end1-std.core.mem.allocator.ArenaAllocator.release
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.ArenaAllocator.acquire,"axG",@progbits,std.core.mem.allocator.ArenaAllocator.acquire,comdat
	.weak	std.core.mem.allocator.ArenaAllocator.acquire # -- Begin function std.core.mem.allocator.ArenaAllocator.acquire
	.p2align	4, 0x90
	.type	std.core.mem.allocator.ArenaAllocator.acquire,@function
std.core.mem.allocator.ArenaAllocator.acquire: # @std.core.mem.allocator.ArenaAllocator.acquire
.Lfunc_begin2:
	.loc	4 89 0                          # arena_allocator.c3:89:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -184(%rbp)                # 8-byte Spill
	movq	%rsi, -176(%rbp)                # 8-byte Spill
	movq	%rdx, -168(%rbp)                # 8-byte Spill
	movl	%ecx, -156(%rbp)                # 4-byte Spill
	movq	%r8, -152(%rbp)                 # 8-byte Spill
.Ltmp8:
	.loc	4 90 1 prologue_end             # arena_allocator.c3:90:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB2_25
# %bb.1:
	.loc	4 0 1 is_stmt 0                 # arena_allocator.c3:0:1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movl	-156(%rbp), %ecx                # 4-byte Reload
	movq	-168(%rbp), %rdx                # 8-byte Reload
	movq	-176(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%rax, -40(%rbp)
.Ltmp9:
	.loc	4 84 11 is_stmt 1               # arena_allocator.c3:84:11
	movb	$1, %al
	cmpq	$0, -40(%rbp)
	movb	%al, -185(%rbp)                 # 1-byte Spill
	je	.LBB2_5
# %bb.2:
	.loc	4 0 11 is_stmt 0                # arena_allocator.c3:0:11
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.Ltmp10:
	.file	5 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-48(%rbp), %rcx
	movb	%al, -186(%rbp)                 # 1-byte Spill
	je	.LBB2_4
# %bb.3:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-48(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-48(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -186(%rbp)                 # 1-byte Spill
.LBB2_4:
	.loc	5 0 19                          # math.c3:0:19
	movb	-186(%rbp), %al                 # 1-byte Reload
	movb	%al, -185(%rbp)                 # 1-byte Spill
.LBB2_5:
	movb	-185(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_7
.Ltmp11:
# %bb.6:
	.loc	4 84 11 is_stmt 1               # arena_allocator.c3:84:11
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$84, (%rsp)
	callq	*(%rax)
.LBB2_7:
	.loc	4 85 11                         # arena_allocator.c3:85:11
	cmpq	$268435456, -40(%rbp)           # imm = 0x10000000
	jbe	.LBB2_9
# %bb.8:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$85, (%rsp)
	callq	*(%rax)
.LBB2_9:
	.loc	4 86 11                         # arena_allocator.c3:86:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-24(%rbp), %rax
	jb	.LBB2_11
# %bb.10:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.Ltmp12:
.LBB2_11:
	.loc	4 91 39                         # arena_allocator.c3:91:39
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.Ltmp13:
	.loc	2 70 9                          # mem_allocator.c3:70:9
	movl	$16, %eax
	cmpq	-8(%rbp), %rax
	jbe	.LBB2_13
# %bb.12:
	.loc	2 70 50 is_stmt 0               # mem_allocator.c3:70:50
	movl	$16, %eax
	movq	%rax, -200(%rbp)                # 8-byte Spill
	jmp	.LBB2_14
.LBB2_13:
	.loc	2 70 79                         # mem_allocator.c3:70:79
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
.Ltmp14:
.LBB2_14:
	.loc	2 0 79                          # mem_allocator.c3:0:79
	movq	-200(%rbp), %rax                # 8-byte Reload
	.loc	4 91 14 is_stmt 1               # arena_allocator.c3:91:14
	movq	%rax, -40(%rbp)
	.loc	4 92 18                         # arena_allocator.c3:92:18
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc	4 93 6                          # arena_allocator.c3:93:6
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB2_16
# %bb.15:
	.loc	4 93 31 is_stmt 0               # arena_allocator.c3:93:31
	movq	std.core.mem.INVALID_ALLOC_SIZE@GOTPCREL(%rip), %rax
	.loc	4 93 31 epilogue_begin          # arena_allocator.c3:93:31
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_16:
	.cfi_def_cfa %rbp, 16
	.loc	4 94 20 is_stmt 1               # arena_allocator.c3:94:20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc	4 95 38                         # arena_allocator.c3:95:38
	movq	-64(%rbp), %rax
	.loc	4 95 50 is_stmt 0               # arena_allocator.c3:95:50
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	.loc	4 95 38                         # arena_allocator.c3:95:38
	addq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
.Ltmp15:
	.file	6 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	6 313 37 is_stmt 1              # mem.c3:313:37
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	.loc	6 313 48 is_stmt 0              # mem.c3:313:48
	movq	-96(%rbp), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	%rax, -104(%rbp)
.Ltmp16:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-104(%rbp), %rcx
	movb	%al, -201(%rbp)                 # 1-byte Spill
	je	.LBB2_18
# %bb.17:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-104(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-104(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -201(%rbp)                 # 1-byte Spill
.LBB2_18:
	.loc	5 0 19                          # math.c3:0:19
	movb	-201(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_20
.Ltmp17:
# %bb.19:
	.loc	6 313 22 is_stmt 1              # mem.c3:313:22
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$313, (%rsp)                    # imm = 0x139
	callq	*(%rax)
.LBB2_20:
	.loc	6 0 22 is_stmt 0                # mem.c3:0:22
	movq	-216(%rbp), %rsi                # 8-byte Reload
	movq	-224(%rbp), %rdi                # 8-byte Reload
	.loc	6 313 9                         # mem.c3:313:9
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, -80(%rbp)
.Ltmp18:
	.loc	4 97 18 is_stmt 1               # arena_allocator.c3:97:18
	movq	-80(%rbp), %rax
	.loc	4 97 24 is_stmt 0               # arena_allocator.c3:97:24
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	.loc	4 97 12                         # arena_allocator.c3:97:12
	subq	%rcx, %rax
	sarq	$0, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc	4 98 6 is_stmt 1                # arena_allocator.c3:98:6
	movq	-112(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB2_22
# %bb.21:
	.loc	4 98 30 is_stmt 0               # arena_allocator.c3:98:30
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	.loc	4 98 30 epilogue_begin          # arena_allocator.c3:98:30
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_22:
	.cfi_def_cfa %rbp, 16
	.loc	4 99 2 is_stmt 1                # arena_allocator.c3:99:2
	movq	-16(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.loc	4 100 33                        # arena_allocator.c3:100:33
	movq	-80(%rbp), %rax
	.loc	4 100 39 is_stmt 0              # arena_allocator.c3:100:39
	addq	$-8, %rax
	movq	%rax, -120(%rbp)
	.loc	4 101 2 is_stmt 1               # arena_allocator.c3:101:2
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	4 102 6                         # arena_allocator.c3:102:6
	cmpl	$1, -28(%rbp)
	jne	.LBB2_24
# %bb.23:
	.loc	4 0 6 is_stmt 0                 # arena_allocator.c3:0:6
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
.Ltmp19:
	.loc	6 336 11 is_stmt 1              # mem.c3:336:11
	movq	-128(%rbp), %rdi
	.loc	6 336 25 is_stmt 0              # mem.c3:336:25
	movq	-136(%rbp), %rdx
	.loc	6 336 30                        # mem.c3:336:30
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp20:
.LBB2_24:
	.loc	6 0 30                          # mem.c3:0:30
	movq	-184(%rbp), %rax                # 8-byte Reload
	.loc	4 103 9 is_stmt 1               # arena_allocator.c3:103:9
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	4 103 9 epilogue_begin is_stmt 0 # arena_allocator.c3:103:9
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_25:
	.cfi_def_cfa %rbp, 16
	.loc	4 89 34 is_stmt 1               # arena_allocator.c3:89:34
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$89, (%rsp)
	callq	*(%rax)
.Ltmp21:
.Lfunc_end2:
	.size	std.core.mem.allocator.ArenaAllocator.acquire, .Lfunc_end2-std.core.mem.allocator.ArenaAllocator.acquire
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.ArenaAllocator.resize,"axG",@progbits,std.core.mem.allocator.ArenaAllocator.resize,comdat
	.weak	std.core.mem.allocator.ArenaAllocator.resize # -- Begin function std.core.mem.allocator.ArenaAllocator.resize
	.p2align	4, 0x90
	.type	std.core.mem.allocator.ArenaAllocator.resize,@function
std.core.mem.allocator.ArenaAllocator.resize: # @std.core.mem.allocator.ArenaAllocator.resize
.Lfunc_begin3:
	.loc	4 115 0                         # arena_allocator.c3:115:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp                      # imm = 0x1B0
	movq	%rdi, -288(%rbp)                # 8-byte Spill
	movq	%rsi, -280(%rbp)                # 8-byte Spill
	movq	%rdx, -272(%rbp)                # 8-byte Spill
	movq	%rcx, -264(%rbp)                # 8-byte Spill
	movq	%r8, -256(%rbp)                 # 8-byte Spill
.Ltmp22:
	.loc	4 116 1 prologue_end            # arena_allocator.c3:116:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB3_61
# %bb.1:
	.loc	4 0 1 is_stmt 0                 # arena_allocator.c3:0:1
	movq	-256(%rbp), %rax                # 8-byte Reload
	movq	-264(%rbp), %rcx                # 8-byte Reload
	movq	-272(%rbp), %rdx                # 8-byte Reload
	movq	-280(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, -40(%rbp)
.Ltmp23:
	.loc	4 109 11 is_stmt 1              # arena_allocator.c3:109:11
	movb	$1, %al
	cmpq	$0, -40(%rbp)
	movb	%al, -289(%rbp)                 # 1-byte Spill
	je	.LBB3_5
# %bb.2:
	.loc	4 0 11 is_stmt 0                # arena_allocator.c3:0:11
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.Ltmp24:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-48(%rbp), %rcx
	movb	%al, -290(%rbp)                 # 1-byte Spill
	je	.LBB3_4
# %bb.3:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-48(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-48(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -290(%rbp)                 # 1-byte Spill
.LBB3_4:
	.loc	5 0 19                          # math.c3:0:19
	movb	-290(%rbp), %al                 # 1-byte Reload
	movb	%al, -289(%rbp)                 # 1-byte Spill
.LBB3_5:
	movb	-289(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_7
.Ltmp25:
# %bb.6:
	.loc	4 109 11 is_stmt 1              # arena_allocator.c3:109:11
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$109, (%rsp)
	callq	*(%rax)
.LBB3_7:
	.loc	4 110 11                        # arena_allocator.c3:110:11
	cmpq	$268435456, -40(%rbp)           # imm = 0x10000000
	jbe	.LBB3_9
# %bb.8:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$110, (%rsp)
	callq	*(%rax)
.LBB3_9:
	.loc	4 111 11                        # arena_allocator.c3:111:11
	cmpq	$0, -24(%rbp)
	jne	.LBB3_11
# %bb.10:
	leaq	.panic_msg.12(%rip), %rdi
	movl	$40, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$111, (%rsp)
	callq	*(%rax)
.LBB3_11:
	.loc	4 112 11                        # arena_allocator.c3:112:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-32(%rbp), %rax
	jb	.LBB3_13
# %bb.12:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$112, (%rsp)
	callq	*(%rax)
.Ltmp26:
.LBB3_13:
	.loc	4 117 39                        # arena_allocator.c3:117:39
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.Ltmp27:
	.loc	2 70 9                          # mem_allocator.c3:70:9
	movl	$16, %eax
	cmpq	-8(%rbp), %rax
	jbe	.LBB3_15
# %bb.14:
	.loc	2 70 50 is_stmt 0               # mem_allocator.c3:70:50
	movl	$16, %eax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	jmp	.LBB3_16
.LBB3_15:
	.loc	2 70 79                         # mem_allocator.c3:70:79
	movq	-8(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
.Ltmp28:
.LBB3_16:
	.loc	2 0 79                          # mem_allocator.c3:0:79
	movq	-304(%rbp), %rax                # 8-byte Reload
	.loc	4 117 14 is_stmt 1              # arena_allocator.c3:117:14
	movq	%rax, -40(%rbp)
	.loc	4 118 9                         # arena_allocator.c3:118:9
	movq	-24(%rbp), %rax
	.loc	4 118 24 is_stmt 0              # arena_allocator.c3:118:24
	movq	-16(%rbp), %rcx
	.loc	4 118 9                         # arena_allocator.c3:118:9
	cmpq	(%rcx), %rax
	jae	.LBB3_18
# %bb.17:
	leaq	.panic_msg.3(%rip), %rdi
	movl	$46, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$118, (%rsp)
	callq	*(%rax)
.LBB3_18:
	.loc	4 119 18 is_stmt 1              # arena_allocator.c3:119:18
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc	4 120 6                         # arena_allocator.c3:120:6
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB3_20
# %bb.19:
	.loc	4 120 31 is_stmt 0              # arena_allocator.c3:120:31
	movq	std.core.mem.INVALID_ALLOC_SIZE@GOTPCREL(%rip), %rax
	.loc	4 120 31 epilogue_begin         # arena_allocator.c3:120:31
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_20:
	.cfi_def_cfa %rbp, 16
	.loc	4 121 33 is_stmt 1              # arena_allocator.c3:121:33
	movq	-24(%rbp), %rax
	.loc	4 121 47 is_stmt 0              # arena_allocator.c3:121:47
	addq	$-8, %rax
	movq	%rax, -64(%rbp)
	.loc	4 122 17 is_stmt 1              # arena_allocator.c3:122:17
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	.loc	4 124 7                         # arena_allocator.c3:124:7
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -328(%rbp)                # 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	.loc	4 124 17 is_stmt 0              # arena_allocator.c3:124:17
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB3_62
# %bb.21:
	.loc	4 0 17                          # arena_allocator.c3:0:17
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
	.loc	4 124 17                        # arena_allocator.c3:124:17
	addq	%rax, %rcx
	.loc	4 124 31                        # arena_allocator.c3:124:31
	movq	-24(%rbp), %rdx
	.loc	4 124 45                        # arena_allocator.c3:124:45
	addq	-72(%rbp), %rdx
	.loc	4 124 6                         # arena_allocator.c3:124:6
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -329(%rbp)                 # 1-byte Spill
	jne	.LBB3_27
# %bb.22:
	.loc	4 124 77                        # arena_allocator.c3:124:77
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	.loc	4 124 90                        # arena_allocator.c3:124:90
	movq	-40(%rbp), %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	movq	%rax, -152(%rbp)
.Ltmp29:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-152(%rbp), %rcx
	movb	%al, -330(%rbp)                 # 1-byte Spill
	je	.LBB3_24
# %bb.23:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-152(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-152(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -330(%rbp)                 # 1-byte Spill
.LBB3_24:
	.loc	5 0 19                          # math.c3:0:19
	movb	-330(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_26
.Ltmp30:
# %bb.25:
	.loc	4 124 57 is_stmt 1              # arena_allocator.c3:124:57
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$124, (%rsp)
	callq	*(%rax)
.LBB3_26:
	.loc	4 0 57 is_stmt 0                # arena_allocator.c3:0:57
	movq	-344(%rbp), %rsi                # 8-byte Reload
	movq	-352(%rbp), %rdi                # 8-byte Reload
	.loc	4 124 57                        # arena_allocator.c3:124:57
	callq	std.core.mem.ptr_is_aligned@PLT
	movb	%al, -329(%rbp)                 # 1-byte Spill
.LBB3_27:
	.loc	4 0 57                          # arena_allocator.c3:0:57
	movb	-329(%rbp), %al                 # 1-byte Reload
	.loc	4 124 57                        # arena_allocator.c3:124:57
	testb	$1, %al
	jne	.LBB3_28
	jmp	.LBB3_34
.LBB3_28:
.Ltmp31:
	.loc	4 126 7 is_stmt 1               # arena_allocator.c3:126:7
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.LBB3_30
# %bb.29:
.Ltmp32:
	.loc	4 128 4                         # arena_allocator.c3:128:4
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	.loc	4 128 17 is_stmt 0              # arena_allocator.c3:128:17
	movq	-72(%rbp), %rdx
	subq	-32(%rbp), %rdx
	.loc	4 128 4                         # arena_allocator.c3:128:4
	subq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB3_33
.Ltmp33:
.LBB3_30:
	.loc	4 132 19 is_stmt 1              # arena_allocator.c3:132:19
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	-32(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)
	.loc	4 133 8                         # arena_allocator.c3:133:8
	movq	-160(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB3_32
# %bb.31:
	.loc	4 133 37 is_stmt 0              # arena_allocator.c3:133:37
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	.loc	4 133 37 epilogue_begin         # arena_allocator.c3:133:37
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_32:
	.cfi_def_cfa %rbp, 16
	.loc	4 134 4 is_stmt 1               # arena_allocator.c3:134:4
	movq	-16(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rcx, 16(%rax)
.Ltmp34:
.LBB3_33:
	.loc	4 0 4 is_stmt 0                 # arena_allocator.c3:0:4
	movq	-288(%rbp), %rax                # 8-byte Reload
	.loc	4 136 3 is_stmt 1               # arena_allocator.c3:136:3
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rcx)
	.loc	4 137 10                        # arena_allocator.c3:137:10
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	4 137 10 epilogue_begin is_stmt 0 # arena_allocator.c3:137:10
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.LBB3_34:
	.cfi_def_cfa %rbp, 16
	.loc	4 140 14 is_stmt 1              # arena_allocator.c3:140:14
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	.loc	4 140 27 is_stmt 0              # arena_allocator.c3:140:27
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	.loc	4 140 42                        # arena_allocator.c3:140:42
	movq	-40(%rbp), %rcx
	movq	%rcx, -368(%rbp)                # 8-byte Spill
	.loc	4 84 11 is_stmt 1               # arena_allocator.c3:84:11
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -353(%rbp)                 # 1-byte Spill
	je	.LBB3_38
# %bb.35:
	.loc	4 0 11 is_stmt 0                # arena_allocator.c3:0:11
	movq	-368(%rbp), %rax                # 8-byte Reload
	movq	%rax, -192(%rbp)
.Ltmp36:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-192(%rbp), %rcx
	movb	%al, -385(%rbp)                 # 1-byte Spill
	je	.LBB3_37
# %bb.36:
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
	movb	%al, -385(%rbp)                 # 1-byte Spill
.LBB3_37:
	.loc	5 0 19                          # math.c3:0:19
	movb	-385(%rbp), %al                 # 1-byte Reload
	movb	%al, -353(%rbp)                 # 1-byte Spill
.LBB3_38:
	movb	-353(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB3_40
.Ltmp37:
# %bb.39:
	.loc	4 140 14 is_stmt 1              # arena_allocator.c3:140:14
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$140, (%rsp)
	callq	*(%rax)
.LBB3_40:
	.loc	4 0 14 is_stmt 0                # arena_allocator.c3:0:14
	movq	-368(%rbp), %rax                # 8-byte Reload
	.loc	4 140 14                        # arena_allocator.c3:140:14
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB3_42
# %bb.41:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$140, (%rsp)
	callq	*(%rax)
.LBB3_42:
	.loc	4 0 14                          # arena_allocator.c3:0:14
	movq	-376(%rbp), %rcx                # 8-byte Reload
	.loc	4 140 14                        # arena_allocator.c3:140:14
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB3_44
# %bb.43:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$140, (%rsp)
	callq	*(%rax)
.LBB3_44:
	.loc	4 0 14                          # arena_allocator.c3:0:14
	movq	-368(%rbp), %r8                 # 8-byte Reload
	movq	-376(%rbp), %rdx                # 8-byte Reload
	movq	-384(%rbp), %rsi                # 8-byte Reload
	.loc	4 140 14                        # arena_allocator.c3:140:14
	leaq	-200(%rbp), %rdi
	xorl	%ecx, %ecx
	callq	std.core.mem.allocator.ArenaAllocator.acquire@PLT
	movq	%rax, -400(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_46
# %bb.45:
	.loc	4 0 14                          # arena_allocator.c3:0:14
	movq	-400(%rbp), %rax                # 8-byte Reload
	.loc	4 140 14                        # arena_allocator.c3:140:14
	movq	%rax, -184(%rbp)
	jmp	.LBB3_47
.LBB3_46:
	jmp	.LBB3_48
.LBB3_47:
	movq	-184(%rbp), %rax
	.loc	4 140 14 epilogue_begin         # arena_allocator.c3:140:14
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_48:
	.cfi_def_cfa %rbp, 16
	movq	-200(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)
.Ltmp38:
	.loc	5 393 16 is_stmt 1              # math.c3:393:16
	movq	-224(%rbp), %rcx
	.loc	5 393 19 is_stmt 0              # math.c3:393:19
	movq	-232(%rbp), %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	cmovbq	%rcx, %rax
	movq	%rax, -240(%rbp)
.Ltmp39:
	.loc	6 357 23 is_stmt 1              # mem.c3:357:23
	cmpq	$0, -208(%rbp)
	jne	.LBB3_50
# %bb.49:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$37, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %r9d
	leaq	.func.11(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB3_50:
	.loc	6 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -216(%rbp)
	movb	%al, -401(%rbp)                 # 1-byte Spill
	jne	.LBB3_52
# %bb.51:
	.loc	6 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-240(%rbp), %rax
	sete	%al
	movb	%al, -401(%rbp)                 # 1-byte Spill
.LBB3_52:
	.loc	6 0 26                          # mem.c3:0:26
	movb	-401(%rbp), %al                 # 1-byte Reload
	.loc	6 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB3_54
# %bb.53:
	.loc	6 141 2 is_stmt 1               # mem.c3:141:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$141, (%rsp)
	callq	*(%rax)
.LBB3_54:
	.loc	6 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-240(%rbp), %rcx
	movb	%al, -402(%rbp)                 # 1-byte Spill
	je	.LBB3_56
# %bb.55:
	.loc	6 355 23 is_stmt 0              # mem.c3:355:23
	movq	-208(%rbp), %rax
	.loc	6 355 29                        # mem.c3:355:29
	addq	-240(%rbp), %rax
	.loc	6 355 23                        # mem.c3:355:23
	cmpq	-216(%rbp), %rax
	setbe	%al
	movb	%al, -402(%rbp)                 # 1-byte Spill
.LBB3_56:
	.loc	6 0 23                          # mem.c3:0:23
	movb	-402(%rbp), %cl                 # 1-byte Reload
	.loc	6 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -403(%rbp)                 # 1-byte Spill
	jne	.LBB3_58
# %bb.57:
	.loc	6 355 43                        # mem.c3:355:43
	movq	-216(%rbp), %rax
	.loc	6 355 49                        # mem.c3:355:49
	addq	-240(%rbp), %rax
	.loc	6 355 43                        # mem.c3:355:43
	cmpq	-208(%rbp), %rax
	setbe	%al
	movb	%al, -403(%rbp)                 # 1-byte Spill
.LBB3_58:
	.loc	6 0 43                          # mem.c3:0:43
	movb	-403(%rbp), %al                 # 1-byte Reload
	.loc	6 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB3_60
# %bb.59:
	.loc	6 141 2 is_stmt 1               # mem.c3:141:2
	leaq	.panic_msg.15(%rip), %rdi
	movl	$95, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$141, (%rsp)
	callq	*(%rax)
.Ltmp40:
.LBB3_60:
	.loc	6 359 11                        # mem.c3:359:11
	movq	-208(%rbp), %rdi
	.loc	6 359 16 is_stmt 0              # mem.c3:359:16
	movq	-216(%rbp), %rsi
	.loc	6 359 21                        # mem.c3:359:21
	movq	-240(%rbp), %rdx
	.loc	6 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
	movq	-288(%rbp), %rax                # 8-byte Reload
.Ltmp41:
	.loc	4 142 9 is_stmt 1               # arena_allocator.c3:142:9
	movq	-176(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	4 142 9 epilogue_begin is_stmt 0 # arena_allocator.c3:142:9
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_61:
	.cfi_def_cfa %rbp, 16
	.loc	4 115 33 is_stmt 1              # arena_allocator.c3:115:33
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$115, (%rsp)
	callq	*(%rax)
.LBB3_62:
	.loc	4 0 33 is_stmt 0                # arena_allocator.c3:0:33
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	-328(%rbp), %rax                # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -88(%rbp)
	movq	%rax, -120(%rbp)
	leaq	-80(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$2, -136(%rbp)
	.loc	4 124 17 is_stmt 1              # arena_allocator.c3:124:17
	leaq	.panic_msg.4(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$18, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	leaq	-144(%rbp), %rax
	movl	$124, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp42:
.Lfunc_end3:
	.size	std.core.mem.allocator.ArenaAllocator.resize, .Lfunc_end3-std.core.mem.allocator.ArenaAllocator.resize
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.LibcAllocator.acquire,"axG",@progbits,std.core.mem.allocator.LibcAllocator.acquire,comdat
	.weak	std.core.mem.allocator.LibcAllocator.acquire # -- Begin function std.core.mem.allocator.LibcAllocator.acquire
	.p2align	4, 0x90
	.type	std.core.mem.allocator.LibcAllocator.acquire,@function
std.core.mem.allocator.LibcAllocator.acquire: # @std.core.mem.allocator.LibcAllocator.acquire
.Lfunc_begin4:
	.loc	1 19 0                          # libc_allocator.c3:19:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -128(%rbp)                # 8-byte Spill
	movq	%rsi, -120(%rbp)                # 8-byte Spill
	movq	%rdx, -112(%rbp)                # 8-byte Spill
	movl	%ecx, -100(%rbp)                # 4-byte Spill
	movq	%r8, -96(%rbp)                  # 8-byte Spill
.Ltmp43:
	.loc	1 20 1 prologue_end             # libc_allocator.c3:20:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB4_19
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # libc_allocator.c3:0:1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	movl	-100(%rbp), %ecx                # 4-byte Reload
	movq	-112(%rbp), %rdx                # 8-byte Reload
	movq	-120(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 21 6 is_stmt 1                # libc_allocator.c3:21:6
	cmpl	$1, -20(%rbp)
	jne	.LBB4_11
# %bb.2:
.Ltmp44:
	.loc	1 24 7                          # libc_allocator.c3:24:7
	movl	$16, %eax
	cmpq	-32(%rbp), %rax
	jae	.LBB4_6
# %bb.3:
.Ltmp45:
	.loc	1 26 48                         # libc_allocator.c3:26:48
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	.loc	1 26 8 is_stmt 0                # libc_allocator.c3:26:8
	leaq	-40(%rbp), %rdi
	callq	posix_memalign@PLT
	cmpl	$0, %eax
	je	.LBB4_5
# %bb.4:
	.loc	1 26 63                         # libc_allocator.c3:26:63
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	.loc	1 26 63 epilogue_begin          # libc_allocator.c3:26:63
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 63                          # libc_allocator.c3:0:63
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.Ltmp46:
	.loc	6 336 11 is_stmt 1              # mem.c3:336:11
	movq	-48(%rbp), %rdi
	.loc	6 336 25 is_stmt 0              # mem.c3:336:25
	movq	-56(%rbp), %rdx
	.loc	6 336 30                        # mem.c3:336:30
	xorl	%esi, %esi
	callq	memset@PLT
	movq	-128(%rbp), %rax                # 8-byte Reload
.Ltmp47:
	.loc	1 28 11 is_stmt 1               # libc_allocator.c3:28:11
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 28 11 epilogue_begin is_stmt 0 # libc_allocator.c3:28:11
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp48:
.LBB4_6:
	.cfi_def_cfa %rbp, 16
	.loc	1 30 26 is_stmt 1               # libc_allocator.c3:30:26
	movq	-16(%rbp), %rsi
	.loc	1 30 10 is_stmt 0               # libc_allocator.c3:30:10
	movl	$1, %edi
	callq	calloc@PLT
	movq	%rax, -136(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB4_8
# %bb.7:
	jmp	.LBB4_9
.LBB4_8:
	.loc	1 30 36                         # libc_allocator.c3:30:36
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB4_10
.LBB4_9:
	.loc	1 0 36                          # libc_allocator.c3:0:36
	movq	-128(%rbp), %rax                # 8-byte Reload
	movq	-136(%rbp), %rcx                # 8-byte Reload
	.loc	1 30 36                         # libc_allocator.c3:30:36
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 30 36 epilogue_begin          # libc_allocator.c3:30:36
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_10:
	.cfi_def_cfa %rbp, 16
	movq	-72(%rbp), %rax
	.loc	1 30 36 epilogue_begin          # libc_allocator.c3:30:36
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp49:
.LBB4_11:
	.cfi_def_cfa %rbp, 16
	.loc	1 35 7 is_stmt 1                # libc_allocator.c3:35:7
	movl	$16, %eax
	cmpq	-32(%rbp), %rax
	jae	.LBB4_15
# %bb.12:
.Ltmp50:
	.loc	1 37 48                         # libc_allocator.c3:37:48
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	.loc	1 37 8 is_stmt 0                # libc_allocator.c3:37:8
	leaq	-80(%rbp), %rdi
	callq	posix_memalign@PLT
	cmpl	$0, %eax
	je	.LBB4_14
# %bb.13:
	.loc	1 37 63                         # libc_allocator.c3:37:63
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	.loc	1 37 63 epilogue_begin          # libc_allocator.c3:37:63
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_14:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB4_18
.Ltmp51:
.LBB4_15:
	.loc	1 41 30 is_stmt 1               # libc_allocator.c3:41:30
	movq	-16(%rbp), %rdi
	.loc	1 41 17 is_stmt 0               # libc_allocator.c3:41:17
	callq	malloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, %rax
	jne	.LBB4_17
# %bb.16:
	.loc	1 41 46                         # libc_allocator.c3:41:46
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	.loc	1 41 46 epilogue_begin          # libc_allocator.c3:41:46
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_17:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB4_18
.Ltmp52:
.LBB4_18:
	.loc	1 0 46                          # libc_allocator.c3:0:46
	movq	-128(%rbp), %rax                # 8-byte Reload
	.loc	1 46 10 is_stmt 1               # libc_allocator.c3:46:10
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 46 10 epilogue_begin is_stmt 0 # libc_allocator.c3:46:10
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp53:
.LBB4_19:
	.cfi_def_cfa %rbp, 16
	.loc	1 19 33 is_stmt 1               # libc_allocator.c3:19:33
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.16(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$19, (%rsp)
	callq	*(%rax)
.Ltmp54:
.Lfunc_end4:
	.size	std.core.mem.allocator.LibcAllocator.acquire, .Lfunc_end4-std.core.mem.allocator.LibcAllocator.acquire
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.LibcAllocator.resize,"axG",@progbits,std.core.mem.allocator.LibcAllocator.resize,comdat
	.weak	std.core.mem.allocator.LibcAllocator.resize # -- Begin function std.core.mem.allocator.LibcAllocator.resize
	.p2align	4, 0x90
	.type	std.core.mem.allocator.LibcAllocator.resize,@function
std.core.mem.allocator.LibcAllocator.resize: # @std.core.mem.allocator.LibcAllocator.resize
.Lfunc_begin5:
	.loc	1 50 0                          # libc_allocator.c3:50:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)                # 8-byte Spill
	movq	%rsi, -128(%rbp)                # 8-byte Spill
	movq	%rdx, -120(%rbp)                # 8-byte Spill
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	movq	%r8, -104(%rbp)                 # 8-byte Spill
.Ltmp55:
	.loc	1 51 1 prologue_end             # libc_allocator.c3:51:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB5_25
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # libc_allocator.c3:0:1
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	-128(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	1 52 6 is_stmt 1                # libc_allocator.c3:52:6
	movl	$16, %eax
	cmpq	-32(%rbp), %rax
	jb	.LBB5_7
# %bb.2:
	.loc	1 52 77 is_stmt 0               # libc_allocator.c3:52:77
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	.loc	1 52 54                         # libc_allocator.c3:52:54
	callq	realloc@PLT
	movq	%rax, -144(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB5_4
# %bb.3:
	jmp	.LBB5_5
.LBB5_4:
	.loc	1 52 91                         # libc_allocator.c3:52:91
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_6
.LBB5_5:
	.loc	1 0 91                          # libc_allocator.c3:0:91
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	-144(%rbp), %rcx                # 8-byte Reload
	.loc	1 52 91                         # libc_allocator.c3:52:91
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 52 91 epilogue_begin          # libc_allocator.c3:52:91
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_6:
	.cfi_def_cfa %rbp, 16
	movq	-40(%rbp), %rax
	.loc	1 52 91 epilogue_begin          # libc_allocator.c3:52:91
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 53 8 is_stmt 1                # libc_allocator.c3:53:8
	movq	$0, -48(%rbp)
	.loc	1 54 49                         # libc_allocator.c3:54:49
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	.loc	1 54 6 is_stmt 0                # libc_allocator.c3:54:6
	leaq	-48(%rbp), %rdi
	callq	posix_memalign@PLT
	cmpl	$0, %eax
	je	.LBB5_9
# %bb.8:
	.loc	1 54 68                         # libc_allocator.c3:54:68
	movq	std.core.mem.OUT_OF_MEMORY@GOTPCREL(%rip), %rax
	.loc	1 54 68 epilogue_begin          # libc_allocator.c3:54:68
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_9:
	.cfi_def_cfa %rbp, 16
	.loc	1 60 51 is_stmt 1               # libc_allocator.c3:60:51
	movq	-16(%rbp), %rdi
	.loc	1 60 25 is_stmt 0               # libc_allocator.c3:60:25
	callq	malloc_usable_size@PLT
	movq	%rax, -56(%rbp)
	.loc	1 65 18 is_stmt 1               # libc_allocator.c3:65:18
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB5_11
# %bb.10:
	.loc	1 65 48 is_stmt 0               # libc_allocator.c3:65:48
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	jmp	.LBB5_12
.LBB5_11:
	.loc	1 65 60                         # libc_allocator.c3:65:60
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
.LBB5_12:
	.loc	1 0 60                          # libc_allocator.c3:0:60
	movq	-152(%rbp), %rax                # 8-byte Reload
	.loc	1 65 60                         # libc_allocator.c3:65:60
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
.Ltmp56:
	.loc	6 357 23 is_stmt 1              # mem.c3:357:23
	cmpq	$0, -72(%rbp)
	jne	.LBB5_14
# %bb.13:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$37, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %r9d
	leaq	.func.11(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB5_14:
	.loc	6 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -80(%rbp)
	movb	%al, -153(%rbp)                 # 1-byte Spill
	jne	.LBB5_16
# %bb.15:
	.loc	6 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-88(%rbp), %rax
	sete	%al
	movb	%al, -153(%rbp)                 # 1-byte Spill
.LBB5_16:
	.loc	6 0 26                          # mem.c3:0:26
	movb	-153(%rbp), %al                 # 1-byte Reload
	.loc	6 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB5_18
# %bb.17:
	.loc	6 66 2 is_stmt 1                # mem.c3:66:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.16(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$66, (%rsp)
	callq	*(%rax)
.LBB5_18:
	.loc	6 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-88(%rbp), %rcx
	movb	%al, -154(%rbp)                 # 1-byte Spill
	je	.LBB5_20
# %bb.19:
	.loc	6 355 23 is_stmt 0              # mem.c3:355:23
	movq	-72(%rbp), %rax
	.loc	6 355 29                        # mem.c3:355:29
	addq	-88(%rbp), %rax
	.loc	6 355 23                        # mem.c3:355:23
	cmpq	-80(%rbp), %rax
	setbe	%al
	movb	%al, -154(%rbp)                 # 1-byte Spill
.LBB5_20:
	.loc	6 0 23                          # mem.c3:0:23
	movb	-154(%rbp), %cl                 # 1-byte Reload
	.loc	6 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -155(%rbp)                 # 1-byte Spill
	jne	.LBB5_22
# %bb.21:
	.loc	6 355 43                        # mem.c3:355:43
	movq	-80(%rbp), %rax
	.loc	6 355 49                        # mem.c3:355:49
	addq	-88(%rbp), %rax
	.loc	6 355 43                        # mem.c3:355:43
	cmpq	-72(%rbp), %rax
	setbe	%al
	movb	%al, -155(%rbp)                 # 1-byte Spill
.LBB5_22:
	.loc	6 0 43                          # mem.c3:0:43
	movb	-155(%rbp), %al                 # 1-byte Reload
	.loc	6 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB5_24
# %bb.23:
	.loc	6 66 2 is_stmt 1                # mem.c3:66:2
	leaq	.panic_msg.15(%rip), %rdi
	movl	$95, %esi
	leaq	.file.16(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$66, (%rsp)
	callq	*(%rax)
.Ltmp57:
.LBB5_24:
	.loc	6 359 11                        # mem.c3:359:11
	movq	-72(%rbp), %rdi
	.loc	6 359 16 is_stmt 0              # mem.c3:359:16
	movq	-80(%rbp), %rsi
	.loc	6 359 21                        # mem.c3:359:21
	movq	-88(%rbp), %rdx
	.loc	6 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
.Ltmp58:
	.loc	1 67 13 is_stmt 1               # libc_allocator.c3:67:13
	movq	-16(%rbp), %rdi
	.loc	1 67 2 is_stmt 0                # libc_allocator.c3:67:2
	callq	free@PLT
                                        # kill: def $rcx killed $rax
	movq	-136(%rbp), %rax                # 8-byte Reload
	.loc	1 68 9 is_stmt 1                # libc_allocator.c3:68:9
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 68 9 epilogue_begin is_stmt 0 # libc_allocator.c3:68:9
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_25:
	.cfi_def_cfa %rbp, 16
	.loc	1 50 32 is_stmt 1               # libc_allocator.c3:50:32
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.16(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$50, (%rsp)
	callq	*(%rax)
.Ltmp59:
.Lfunc_end5:
	.size	std.core.mem.allocator.LibcAllocator.resize, .Lfunc_end5-std.core.mem.allocator.LibcAllocator.resize
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.LibcAllocator.release,"axG",@progbits,std.core.mem.allocator.LibcAllocator.release,comdat
	.weak	std.core.mem.allocator.LibcAllocator.release # -- Begin function std.core.mem.allocator.LibcAllocator.release
	.p2align	4, 0x90
	.type	std.core.mem.allocator.LibcAllocator.release,@function
std.core.mem.allocator.LibcAllocator.release: # @std.core.mem.allocator.LibcAllocator.release
.Lfunc_begin6:
	.loc	1 71 0                          # libc_allocator.c3:71:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movb	%dl, %al
	movb	%al, -18(%rbp)                  # 1-byte Spill
.Ltmp60:
	.loc	1 72 1 prologue_end             # libc_allocator.c3:72:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB6_2
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # libc_allocator.c3:0:1
	movb	-18(%rbp), %al                  # 1-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)
	.loc	1 73 13 is_stmt 1               # libc_allocator.c3:73:13
	movq	-16(%rbp), %rdi
	.loc	1 73 2 is_stmt 0                # libc_allocator.c3:73:2
	callq	free@PLT
	.loc	1 73 2 epilogue_begin           # libc_allocator.c3:73:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 71 31 is_stmt 1               # libc_allocator.c3:71:31
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.16(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$71, (%rsp)
	callq	*(%rax)
.Ltmp61:
.Lfunc_end6:
	.size	std.core.mem.allocator.LibcAllocator.release, .Lfunc_end6-std.core.mem.allocator.LibcAllocator.release
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.OnStackAllocator.init,"axG",@progbits,std.core.mem.allocator.OnStackAllocator.init,comdat
	.weak	std.core.mem.allocator.OnStackAllocator.init # -- Begin function std.core.mem.allocator.OnStackAllocator.init
	.p2align	4, 0x90
	.type	std.core.mem.allocator.OnStackAllocator.init,@function
std.core.mem.allocator.OnStackAllocator.init: # @std.core.mem.allocator.OnStackAllocator.init
.Lfunc_begin7:
	.file	7 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/allocators" "on_stack_allocator.c3"
	.loc	7 32 0                          # on_stack_allocator.c3:32:0
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
	movq	%r8, -48(%rbp)                  # 8-byte Spill
.Ltmp62:
	.loc	7 33 1 prologue_end             # on_stack_allocator.c3:33:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB7_2
# %bb.1:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	%rdi, -8(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -32(%rbp)
	.loc	7 34 2 is_stmt 1                # on_stack_allocator.c3:34:2
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.loc	7 35 2                          # on_stack_allocator.c3:35:2
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.loc	7 36 2                          # on_stack_allocator.c3:36:2
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc	7 36 2 epilogue_begin is_stmt 0 # on_stack_allocator.c3:36:2
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_2:
	.cfi_def_cfa %rbp, 16
	.loc	7 32 31 is_stmt 1               # on_stack_allocator.c3:32:31
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$32, (%rsp)
	callq	*(%rax)
.Ltmp63:
.Lfunc_end7:
	.size	std.core.mem.allocator.OnStackAllocator.init, .Lfunc_end7-std.core.mem.allocator.OnStackAllocator.init
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.OnStackAllocator.free,"axG",@progbits,std.core.mem.allocator.OnStackAllocator.free,comdat
	.weak	std.core.mem.allocator.OnStackAllocator.free # -- Begin function std.core.mem.allocator.OnStackAllocator.free
	.p2align	4, 0x90
	.type	std.core.mem.allocator.OnStackAllocator.free,@function
std.core.mem.allocator.OnStackAllocator.free: # @std.core.mem.allocator.OnStackAllocator.free
.Lfunc_begin8:
	.loc	7 39 0                          # on_stack_allocator.c3:39:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp                      # imm = 0x100
	movq	%rdi, -152(%rbp)                # 8-byte Spill
.Ltmp64:
	.loc	7 40 1 prologue_end             # on_stack_allocator.c3:40:1
	movq	$0, -144(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB8_38
# %bb.1:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	7 41 38 is_stmt 1               # on_stack_allocator.c3:41:38
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
.Ltmp65:
	.loc	7 42 9                          # on_stack_allocator.c3:42:9
	cmpq	$0, -16(%rbp)
	je	.LBB8_37
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
.Ltmp66:
	.loc	7 44 7                          # on_stack_allocator.c3:44:7
	movq	-16(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB8_15
# %bb.4:                                #   in Loop: Header=BB8_2 Depth=1
.Ltmp67:
	.loc	7 46 28                         # on_stack_allocator.c3:46:28
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	7 46 52 is_stmt 0               # on_stack_allocator.c3:46:52
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.Ltmp68:
	.loc	2 160 6 is_stmt 1               # mem_allocator.c3:160:6
	cmpq	$0, -40(%rbp)
	jne	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_2 Depth=1
	.loc	2 160 18 is_stmt 0              # mem_allocator.c3:160:18
	jmp	.LBB8_14
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	.loc	2 164 20 is_stmt 1              # mem_allocator.c3:164:20
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	.loc	2 164 2 is_stmt 0               # mem_allocator.c3:164:2
	cmpq	$0, %rax
	jne	.LBB8_8
# %bb.7:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$164, (%rsp)
	callq	*(%rax)
.LBB8_8:                                #   in Loop: Header=BB8_2 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
.Ltmp69:
	.loc	7 40 1 is_stmt 1                # on_stack_allocator.c3:40:1
	cmpq	-56(%rbp), %rax
	je	.LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-168(%rbp), %rax                # 8-byte Reload
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-168(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -176(%rbp)                # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               #   in Loop: Header=BB8_2 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
.LBB8_11:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-176(%rbp), %rax                # 8-byte Reload
	movq	%rax, -184(%rbp)                # 8-byte Spill
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	cmpq	$0, %rax
	jne	.LBB8_13
# %bb.12:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$164, (%rsp)
	callq	*(%rax)
.LBB8_13:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-184(%rbp), %rax                # 8-byte Reload
	movq	-160(%rbp), %rsi                # 8-byte Reload
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	movq	-32(%rbp), %rdi
	movl	$1, %edx
	callq	*%rax
.LBB8_14:                               #   in Loop: Header=BB8_2 Depth=1
	jmp	.LBB8_26
.LBB8_15:                               #   in Loop: Header=BB8_2 Depth=1
.Ltmp70:
	.loc	7 50 20 is_stmt 1               # on_stack_allocator.c3:50:20
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc	7 50 44 is_stmt 0               # on_stack_allocator.c3:50:44
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.Ltmp71:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -80(%rbp)
	jne	.LBB8_17
# %bb.16:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB8_25
.LBB8_17:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB8_19
# %bb.18:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB8_19:                               #   in Loop: Header=BB8_2 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
.Ltmp72:
	.loc	7 40 1 is_stmt 1                # on_stack_allocator.c3:40:1
	cmpq	-96(%rbp), %rax
	je	.LBB8_21
# %bb.20:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-200(%rbp), %rax                # 8-byte Reload
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-200(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%rax, -208(%rbp)                # 8-byte Spill
	jmp	.LBB8_22
.LBB8_21:                               #   in Loop: Header=BB8_2 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)                # 8-byte Spill
.LBB8_22:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-208(%rbp), %rax                # 8-byte Reload
	movq	%rax, -216(%rbp)                # 8-byte Spill
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	cmpq	$0, %rax
	jne	.LBB8_24
# %bb.23:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB8_24:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-216(%rbp), %rax                # 8-byte Reload
	movq	-192(%rbp), %rsi                # 8-byte Reload
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	movq	-72(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB8_25:                               #   in Loop: Header=BB8_2 Depth=1
	jmp	.LBB8_26
.LBB8_26:                               #   in Loop: Header=BB8_2 Depth=1
.Ltmp73:
	.loc	7 52 15 is_stmt 1               # on_stack_allocator.c3:52:15
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	.loc	7 53 11                         # on_stack_allocator.c3:53:11
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc	7 54 19                         # on_stack_allocator.c3:54:19
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
.Ltmp74:
	.loc	2 119 6                         # mem_allocator.c3:119:6
	cmpq	$0, -128(%rbp)
	jne	.LBB8_28
# %bb.27:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB8_36
.LBB8_28:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-128(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB8_30
# %bb.29:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB8_30:                               #   in Loop: Header=BB8_2 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -232(%rbp)                # 8-byte Spill
.Ltmp75:
	.loc	7 40 1 is_stmt 1                # on_stack_allocator.c3:40:1
	cmpq	-144(%rbp), %rax
	je	.LBB8_32
# %bb.31:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-232(%rbp), %rax                # 8-byte Reload
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-232(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%rax, -240(%rbp)                # 8-byte Spill
	jmp	.LBB8_33
.LBB8_32:                               #   in Loop: Header=BB8_2 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -240(%rbp)                # 8-byte Spill
.LBB8_33:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-240(%rbp), %rax                # 8-byte Reload
	movq	%rax, -248(%rbp)                # 8-byte Spill
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	cmpq	$0, %rax
	jne	.LBB8_35
# %bb.34:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB8_35:                               #   in Loop: Header=BB8_2 Depth=1
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-248(%rbp), %rax                # 8-byte Reload
	movq	-224(%rbp), %rsi                # 8-byte Reload
	.loc	7 40 1                          # on_stack_allocator.c3:40:1
	movq	-120(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB8_36:                               #   in Loop: Header=BB8_2 Depth=1
	jmp	.LBB8_2
.LBB8_37:
	.loc	7 56 2 is_stmt 1                # on_stack_allocator.c3:56:2
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	.loc	7 57 2                          # on_stack_allocator.c3:57:2
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	.loc	7 57 2 epilogue_begin is_stmt 0 # on_stack_allocator.c3:57:2
	addq	$256, %rsp                      # imm = 0x100
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_38:
	.cfi_def_cfa %rbp, 16
	.loc	7 39 31 is_stmt 1               # on_stack_allocator.c3:39:31
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$39, (%rsp)
	callq	*(%rax)
.Ltmp76:
.Lfunc_end8:
	.size	std.core.mem.allocator.OnStackAllocator.free, .Lfunc_end8-std.core.mem.allocator.OnStackAllocator.free
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.OnStackAllocator.release,"axG",@progbits,std.core.mem.allocator.OnStackAllocator.release,comdat
	.weak	std.core.mem.allocator.OnStackAllocator.release # -- Begin function std.core.mem.allocator.OnStackAllocator.release
	.p2align	4, 0x90
	.type	std.core.mem.allocator.OnStackAllocator.release,@function
std.core.mem.allocator.OnStackAllocator.release: # @std.core.mem.allocator.OnStackAllocator.release
.Lfunc_begin9:
	.loc	7 69 0                          # on_stack_allocator.c3:69:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rsi, -64(%rbp)                 # 8-byte Spill
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movb	%dl, %al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.Ltmp77:
	.loc	7 70 1 prologue_end             # on_stack_allocator.c3:70:1
	movq	$0, -40(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB9_13
# %bb.1:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movb	-41(%rbp), %al                  # 1-byte Reload
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)
.Ltmp78:
	.loc	7 67 11 is_stmt 1               # on_stack_allocator.c3:67:11
	cmpq	$0, -16(%rbp)
	jne	.LBB9_3
# %bb.2:
	leaq	.panic_msg.12(%rip), %rdi
	movl	$40, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$67, (%rsp)
	callq	*(%rax)
.Ltmp79:
.LBB9_3:
	.loc	7 71 36                         # on_stack_allocator.c3:71:36
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	.loc	7 71 6 is_stmt 0                # on_stack_allocator.c3:71:6
	callq	std.core.mem.allocator.allocation_in_stack_mem.4311
	testb	$1, %al
	je	.LBB9_5
# %bb.4:
	.loc	7 71 56 epilogue_begin          # on_stack_allocator.c3:71:56
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_5:
	.cfi_def_cfa %rbp, 16
	.loc	7 72 40 is_stmt 1               # on_stack_allocator.c3:72:40
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	.loc	7 72 2 is_stmt 0                # on_stack_allocator.c3:72:2
	callq	std.core.mem.allocator.on_stack_allocator_remove_chunk.4314
	.loc	7 73 2 is_stmt 1                # on_stack_allocator.c3:73:2
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	.loc	7 73 33 is_stmt 0               # on_stack_allocator.c3:73:33
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	.loc	7 73 46                         # on_stack_allocator.c3:73:46
	movb	-17(%rbp), %cl
	movb	%cl, -65(%rbp)                  # 1-byte Spill
	.loc	7 73 2                          # on_stack_allocator.c3:73:2
	cmpq	$0, %rax
	jne	.LBB9_7
# %bb.6:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$73, (%rsp)
	callq	*(%rax)
.LBB9_7:
	.loc	7 0 2                           # on_stack_allocator.c3:0:2
	movq	-88(%rbp), %rax                 # 8-byte Reload
	.loc	7 73 2                          # on_stack_allocator.c3:73:2
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	.loc	7 70 1 is_stmt 1                # on_stack_allocator.c3:70:1
	cmpq	-40(%rbp), %rax
	je	.LBB9_9
# %bb.8:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-96(%rbp), %rax                 # 8-byte Reload
	.loc	7 70 1                          # on_stack_allocator.c3:70:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-96(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB9_10
.LBB9_9:
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
.LBB9_10:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rax, -112(%rbp)                # 8-byte Spill
	.loc	7 70 1                          # on_stack_allocator.c3:70:1
	cmpq	$0, %rax
	jne	.LBB9_12
# %bb.11:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$73, (%rsp)
	callq	*(%rax)
.LBB9_12:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movb	-65(%rbp), %cl                  # 1-byte Reload
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	.loc	7 70 1                          # on_stack_allocator.c3:70:1
	movq	(%rdx), %rdi
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	*%rax
	.loc	7 70 1 epilogue_begin           # on_stack_allocator.c3:70:1
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_13:
	.cfi_def_cfa %rbp, 16
	.loc	7 69 34 is_stmt 1               # on_stack_allocator.c3:69:34
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$69, (%rsp)
	callq	*(%rax)
.Ltmp80:
.Lfunc_end9:
	.size	std.core.mem.allocator.OnStackAllocator.release, .Lfunc_end9-std.core.mem.allocator.OnStackAllocator.release
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.OnStackAllocator.resize,"axG",@progbits,std.core.mem.allocator.OnStackAllocator.resize,comdat
	.weak	std.core.mem.allocator.OnStackAllocator.resize # -- Begin function std.core.mem.allocator.OnStackAllocator.resize
	.p2align	4, 0x90
	.type	std.core.mem.allocator.OnStackAllocator.resize,@function
std.core.mem.allocator.OnStackAllocator.resize: # @std.core.mem.allocator.OnStackAllocator.resize
.Lfunc_begin10:
	.loc	7 115 0                         # on_stack_allocator.c3:115:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp                      # imm = 0x160
	movq	%rdi, -216(%rbp)                # 8-byte Spill
	movq	%rsi, -208(%rbp)                # 8-byte Spill
	movq	%rdx, -200(%rbp)                # 8-byte Spill
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	movq	%r8, -184(%rbp)                 # 8-byte Spill
.Ltmp81:
	.loc	7 116 1 prologue_end            # on_stack_allocator.c3:116:1
	movq	$0, -80(%rbp)
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB10_53
# %bb.1:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-184(%rbp), %rax                # 8-byte Reload
	movq	-192(%rbp), %rcx                # 8-byte Reload
	movq	-200(%rbp), %rdx                # 8-byte Reload
	movq	-208(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp82:
	.loc	7 111 11 is_stmt 1              # on_stack_allocator.c3:111:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-24(%rbp), %rax
	jb	.LBB10_3
# %bb.2:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$111, (%rsp)
	callq	*(%rax)
.LBB10_3:
	.loc	7 112 11                        # on_stack_allocator.c3:112:11
	cmpq	$0, -16(%rbp)
	jne	.LBB10_5
# %bb.4:
	leaq	.panic_msg.12(%rip), %rdi
	movl	$40, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$112, (%rsp)
	callq	*(%rax)
.LBB10_5:
	.loc	7 113 11                        # on_stack_allocator.c3:113:11
	cmpq	$268435456, -32(%rbp)           # imm = 0x10000000
	jbe	.LBB10_7
# %bb.6:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.Ltmp83:
.LBB10_7:
	.loc	7 117 37                        # on_stack_allocator.c3:117:37
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	.loc	7 117 7 is_stmt 0               # on_stack_allocator.c3:117:7
	callq	std.core.mem.allocator.allocation_in_stack_mem.4311
	testb	$1, %al
	jne	.LBB10_32
# %bb.8:
.Ltmp84:
	.loc	7 119 75 is_stmt 1              # on_stack_allocator.c3:119:75
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	.loc	7 119 39 is_stmt 0              # on_stack_allocator.c3:119:39
	callq	std.core.mem.allocator.on_stack_allocator_find_chunk.4319
	movq	%rax, -40(%rbp)
	.loc	7 120 10 is_stmt 1              # on_stack_allocator.c3:120:10
	cmpq	$0, -40(%rbp)
	jne	.LBB10_10
# %bb.9:
	leaq	.panic_msg.29(%rip), %rdi
	movl	$55, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$120, (%rsp)
	callq	*(%rax)
.LBB10_10:
	.loc	7 121 23                        # on_stack_allocator.c3:121:23
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)                # 8-byte Spill
	.loc	7 121 53 is_stmt 0              # on_stack_allocator.c3:121:53
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	.loc	7 121 66                        # on_stack_allocator.c3:121:66
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)                # 8-byte Spill
	.loc	7 121 72                        # on_stack_allocator.c3:121:72
	movq	-32(%rbp), %rcx
	movq	%rcx, -232(%rbp)                # 8-byte Spill
	.loc	7 48 12 is_stmt 1               # on_stack_allocator.c3:48:12
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -217(%rbp)                 # 1-byte Spill
	je	.LBB10_14
# %bb.11:
	.loc	7 0 12 is_stmt 0                # on_stack_allocator.c3:0:12
	movq	-232(%rbp), %rax                # 8-byte Reload
	movq	%rax, -64(%rbp)
.Ltmp85:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-64(%rbp), %rcx
	movb	%al, -257(%rbp)                 # 1-byte Spill
	je	.LBB10_13
# %bb.12:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-64(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-64(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -257(%rbp)                 # 1-byte Spill
.LBB10_13:
	.loc	5 0 19                          # math.c3:0:19
	movb	-257(%rbp), %al                 # 1-byte Reload
	movb	%al, -217(%rbp)                 # 1-byte Spill
.LBB10_14:
	movb	-217(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB10_16
.Ltmp86:
# %bb.15:
	.loc	7 121 23 is_stmt 1              # on_stack_allocator.c3:121:23
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$121, (%rsp)
	callq	*(%rax)
.LBB10_16:
	.loc	7 0 23 is_stmt 0                # on_stack_allocator.c3:0:23
	movq	-232(%rbp), %rax                # 8-byte Reload
	.loc	7 121 23                        # on_stack_allocator.c3:121:23
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB10_18
# %bb.17:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$121, (%rsp)
	callq	*(%rax)
.LBB10_18:
	.loc	7 0 23                          # on_stack_allocator.c3:0:23
	movq	-248(%rbp), %rax                # 8-byte Reload
	.loc	7 121 23                        # on_stack_allocator.c3:121:23
	cmpq	$0, %rax
	jne	.LBB10_20
# %bb.19:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$32, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$121, (%rsp)
	callq	*(%rax)
.LBB10_20:
	.loc	7 0 23                          # on_stack_allocator.c3:0:23
	movq	-240(%rbp), %rcx                # 8-byte Reload
	.loc	7 121 23                        # on_stack_allocator.c3:121:23
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB10_22
# %bb.21:
	leaq	.panic_msg.30(%rip), %rdi
	movl	$33, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$121, (%rsp)
	callq	*(%rax)
.LBB10_22:
	.loc	7 0 23                          # on_stack_allocator.c3:0:23
	movq	-256(%rbp), %rax                # 8-byte Reload
	.loc	7 121 23                        # on_stack_allocator.c3:121:23
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
.Ltmp87:
	.loc	7 116 1 is_stmt 1               # on_stack_allocator.c3:116:1
	cmpq	-80(%rbp), %rax
	je	.LBB10_24
# %bb.23:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-272(%rbp), %rax                # 8-byte Reload
	.loc	7 116 1                         # on_stack_allocator.c3:116:1
	movq	16(%rax), %rdi
	movq	($sel.resize)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-272(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, -280(%rbp)                # 8-byte Spill
	jmp	.LBB10_25
.LBB10_24:
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)                # 8-byte Spill
.LBB10_25:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	%rax, -288(%rbp)                # 8-byte Spill
	.loc	7 116 1                         # on_stack_allocator.c3:116:1
	cmpq	$0, %rax
	jne	.LBB10_27
# %bb.26:
	leaq	.panic_msg.31(%rip), %rdi
	movl	$43, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$121, (%rsp)
	callq	*(%rax)
.LBB10_27:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	-232(%rbp), %r8                 # 8-byte Reload
	movq	-240(%rbp), %rcx                # 8-byte Reload
	movq	-248(%rbp), %rdx                # 8-byte Reload
	movq	-256(%rbp), %rsi                # 8-byte Reload
	movq	(%rsi), %rsi
.Ltmp88:
	.loc	7 121 23 is_stmt 1              # on_stack_allocator.c3:121:23
	leaq	-88(%rbp), %rdi
	callq	*%rax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_29
# %bb.28:
	.loc	7 0 23 is_stmt 0                # on_stack_allocator.c3:0:23
	movq	-296(%rbp), %rax                # 8-byte Reload
	.loc	7 121 23                        # on_stack_allocator.c3:121:23
	movq	%rax, -56(%rbp)
	jmp	.LBB10_30
.LBB10_29:
	jmp	.LBB10_31
.LBB10_30:
	movq	-56(%rbp), %rax
	.loc	7 121 23 epilogue_begin         # on_stack_allocator.c3:121:23
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_31:
	.cfi_def_cfa %rbp, 16
	.loc	7 0 23                          # on_stack_allocator.c3:0:23
	movq	-216(%rbp), %rax                # 8-byte Reload
	.loc	7 121 10                        # on_stack_allocator.c3:121:10
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, 16(%rdx)
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	7 121 10 epilogue_begin         # on_stack_allocator.c3:121:10
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp89:
.LBB10_32:
	.cfi_def_cfa %rbp, 16
	.loc	7 124 35 is_stmt 1              # on_stack_allocator.c3:124:35
	movq	-16(%rbp), %rax
	.loc	7 124 49 is_stmt 0              # on_stack_allocator.c3:124:49
	addq	$-8, %rax
	movq	%rax, -96(%rbp)
	.loc	7 125 17 is_stmt 1              # on_stack_allocator.c3:125:17
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	.loc	7 126 14                        # on_stack_allocator.c3:126:14
	movq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	.loc	7 126 27 is_stmt 0              # on_stack_allocator.c3:126:27
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	.loc	7 126 42                        # on_stack_allocator.c3:126:42
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	.loc	7 126 14                        # on_stack_allocator.c3:126:14
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB10_34
# %bb.33:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$126, (%rsp)
	callq	*(%rax)
.LBB10_34:
	.loc	7 0 14                          # on_stack_allocator.c3:0:14
	movq	-312(%rbp), %rcx                # 8-byte Reload
	.loc	7 126 14                        # on_stack_allocator.c3:126:14
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB10_36
# %bb.35:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$126, (%rsp)
	callq	*(%rax)
.LBB10_36:
	.loc	7 0 14                          # on_stack_allocator.c3:0:14
	movq	-304(%rbp), %r8                 # 8-byte Reload
	movq	-312(%rbp), %rdx                # 8-byte Reload
	movq	-320(%rbp), %rsi                # 8-byte Reload
	.loc	7 126 14                        # on_stack_allocator.c3:126:14
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	callq	std.core.mem.allocator.OnStackAllocator.acquire@PLT
	movq	%rax, -328(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_38
# %bb.37:
	.loc	7 0 14                          # on_stack_allocator.c3:0:14
	movq	-328(%rbp), %rax                # 8-byte Reload
	.loc	7 126 14                        # on_stack_allocator.c3:126:14
	movq	%rax, -120(%rbp)
	jmp	.LBB10_39
.LBB10_38:
	jmp	.LBB10_40
.LBB10_39:
	movq	-120(%rbp), %rax
	.loc	7 126 14 epilogue_begin         # on_stack_allocator.c3:126:14
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_40:
	.cfi_def_cfa %rbp, 16
	movq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)
.Ltmp90:
	.loc	5 393 16 is_stmt 1              # math.c3:393:16
	movq	-152(%rbp), %rcx
	.loc	5 393 19 is_stmt 0              # math.c3:393:19
	movq	-160(%rbp), %rax
	movq	%rcx, %rdx
	subq	%rax, %rdx
	cmovbq	%rcx, %rax
	movq	%rax, -168(%rbp)
.Ltmp91:
	.loc	6 357 23 is_stmt 1              # mem.c3:357:23
	cmpq	$0, -136(%rbp)
	jne	.LBB10_42
# %bb.41:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$37, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %r9d
	leaq	.func.11(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB10_42:
	.loc	6 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -144(%rbp)
	movb	%al, -329(%rbp)                 # 1-byte Spill
	jne	.LBB10_44
# %bb.43:
	.loc	6 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-168(%rbp), %rax
	sete	%al
	movb	%al, -329(%rbp)                 # 1-byte Spill
.LBB10_44:
	.loc	6 0 26                          # mem.c3:0:26
	movb	-329(%rbp), %al                 # 1-byte Reload
	.loc	6 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB10_46
# %bb.45:
	.loc	6 127 2 is_stmt 1               # mem.c3:127:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$127, (%rsp)
	callq	*(%rax)
.LBB10_46:
	.loc	6 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-168(%rbp), %rcx
	movb	%al, -330(%rbp)                 # 1-byte Spill
	je	.LBB10_48
# %bb.47:
	.loc	6 355 23 is_stmt 0              # mem.c3:355:23
	movq	-136(%rbp), %rax
	.loc	6 355 29                        # mem.c3:355:29
	addq	-168(%rbp), %rax
	.loc	6 355 23                        # mem.c3:355:23
	cmpq	-144(%rbp), %rax
	setbe	%al
	movb	%al, -330(%rbp)                 # 1-byte Spill
.LBB10_48:
	.loc	6 0 23                          # mem.c3:0:23
	movb	-330(%rbp), %cl                 # 1-byte Reload
	.loc	6 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -331(%rbp)                 # 1-byte Spill
	jne	.LBB10_50
# %bb.49:
	.loc	6 355 43                        # mem.c3:355:43
	movq	-144(%rbp), %rax
	.loc	6 355 49                        # mem.c3:355:49
	addq	-168(%rbp), %rax
	.loc	6 355 43                        # mem.c3:355:43
	cmpq	-136(%rbp), %rax
	setbe	%al
	movb	%al, -331(%rbp)                 # 1-byte Spill
.LBB10_50:
	.loc	6 0 43                          # mem.c3:0:43
	movb	-331(%rbp), %al                 # 1-byte Reload
	.loc	6 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB10_52
# %bb.51:
	.loc	6 127 2 is_stmt 1               # mem.c3:127:2
	leaq	.panic_msg.15(%rip), %rdi
	movl	$95, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$127, (%rsp)
	callq	*(%rax)
.Ltmp92:
.LBB10_52:
	.loc	6 359 11                        # mem.c3:359:11
	movq	-136(%rbp), %rdi
	.loc	6 359 16 is_stmt 0              # mem.c3:359:16
	movq	-144(%rbp), %rsi
	.loc	6 359 21                        # mem.c3:359:21
	movq	-168(%rbp), %rdx
	.loc	6 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
	movq	-216(%rbp), %rax                # 8-byte Reload
.Ltmp93:
	.loc	7 128 9 is_stmt 1               # on_stack_allocator.c3:128:9
	movq	-112(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	7 128 9 epilogue_begin is_stmt 0 # on_stack_allocator.c3:128:9
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_53:
	.cfi_def_cfa %rbp, 16
	.loc	7 115 35 is_stmt 1              # on_stack_allocator.c3:115:35
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$115, (%rsp)
	callq	*(%rax)
.Ltmp94:
.Lfunc_end10:
	.size	std.core.mem.allocator.OnStackAllocator.resize, .Lfunc_end10-std.core.mem.allocator.OnStackAllocator.resize
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.OnStackAllocator.acquire,"axG",@progbits,std.core.mem.allocator.OnStackAllocator.acquire,comdat
	.weak	std.core.mem.allocator.OnStackAllocator.acquire # -- Begin function std.core.mem.allocator.OnStackAllocator.acquire
	.p2align	4, 0x90
	.type	std.core.mem.allocator.OnStackAllocator.acquire,@function
std.core.mem.allocator.OnStackAllocator.acquire: # @std.core.mem.allocator.OnStackAllocator.acquire
.Lfunc_begin11:
	.loc	7 135 0                         # on_stack_allocator.c3:135:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$720, %rsp                      # imm = 0x2D0
	movq	%rdi, -464(%rbp)                # 8-byte Spill
	movq	%rsi, -456(%rbp)                # 8-byte Spill
	movq	%rdx, -448(%rbp)                # 8-byte Spill
	movl	%ecx, -436(%rbp)                # 4-byte Spill
	movq	%r8, -432(%rbp)                 # 8-byte Spill
.Ltmp95:
	.loc	7 136 1 prologue_end            # on_stack_allocator.c3:136:1
	movq	$0, -408(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -216(%rbp)
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB11_71
# %bb.1:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-432(%rbp), %rax                # 8-byte Reload
	movl	-436(%rbp), %ecx                # 4-byte Reload
	movq	-448(%rbp), %rdx                # 8-byte Reload
	movq	-456(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%rax, -40(%rbp)
.Ltmp96:
	.loc	7 132 11 is_stmt 1              # on_stack_allocator.c3:132:11
	cmpq	$268435456, -40(%rbp)           # imm = 0x10000000
	jbe	.LBB11_3
# %bb.2:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$132, (%rsp)
	callq	*(%rax)
.LBB11_3:
	.loc	7 133 11                        # on_stack_allocator.c3:133:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-24(%rbp), %rax
	jb	.LBB11_5
# %bb.4:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$133, (%rsp)
	callq	*(%rax)
.Ltmp97:
.LBB11_5:
	.loc	7 137 17                        # on_stack_allocator.c3:137:17
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-40(%rbp), %rax
	setb	%al
	andb	$1, %al
	movb	%al, -41(%rbp)
	.loc	7 138 39                        # on_stack_allocator.c3:138:39
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.Ltmp98:
	.loc	2 70 9                          # mem_allocator.c3:70:9
	movl	$16, %eax
	cmpq	-8(%rbp), %rax
	jbe	.LBB11_7
# %bb.6:
	.loc	2 70 50 is_stmt 0               # mem_allocator.c3:70:50
	movl	$16, %eax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:
	.loc	2 70 79                         # mem_allocator.c3:70:79
	movq	-8(%rbp), %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
.Ltmp99:
.LBB11_8:
	.loc	2 0 79                          # mem_allocator.c3:0:79
	movq	-472(%rbp), %rax                # 8-byte Reload
	.loc	7 138 14 is_stmt 1              # on_stack_allocator.c3:138:14
	movq	%rax, -40(%rbp)
	.loc	7 139 18                        # on_stack_allocator.c3:139:18
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc	7 140 20                        # on_stack_allocator.c3:140:20
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc	7 141 38                        # on_stack_allocator.c3:141:38
	movq	-64(%rbp), %rax
	.loc	7 141 50 is_stmt 0              # on_stack_allocator.c3:141:50
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	.loc	7 141 38                        # on_stack_allocator.c3:141:38
	addq	$8, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
.Ltmp100:
	.loc	6 313 37 is_stmt 1              # mem.c3:313:37
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)                # 8-byte Spill
	.loc	6 313 48 is_stmt 0              # mem.c3:313:48
	movq	-96(%rbp), %rax
	movq	%rax, -488(%rbp)                # 8-byte Spill
	movq	%rax, -104(%rbp)
.Ltmp101:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-104(%rbp), %rcx
	movb	%al, -473(%rbp)                 # 1-byte Spill
	je	.LBB11_10
# %bb.9:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-104(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-104(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -473(%rbp)                 # 1-byte Spill
.LBB11_10:
	.loc	5 0 19                          # math.c3:0:19
	movb	-473(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB11_12
.Ltmp102:
# %bb.11:
	.loc	6 313 22 is_stmt 1              # mem.c3:313:22
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$313, (%rsp)                    # imm = 0x139
	callq	*(%rax)
.LBB11_12:
	.loc	6 0 22 is_stmt 0                # mem.c3:0:22
	movq	-488(%rbp), %rsi                # 8-byte Reload
	movq	-496(%rbp), %rdi                # 8-byte Reload
	.loc	6 313 9                         # mem.c3:313:9
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, -80(%rbp)
.Ltmp103:
	.loc	7 143 18 is_stmt 1              # on_stack_allocator.c3:143:18
	movq	-80(%rbp), %rax
	.loc	7 143 24 is_stmt 0              # on_stack_allocator.c3:143:24
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	.loc	7 143 12                        # on_stack_allocator.c3:143:12
	subq	%rcx, %rax
	sarq	$0, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	.loc	7 144 32 is_stmt 1              # on_stack_allocator.c3:144:32
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	.loc	7 146 6                         # on_stack_allocator.c3:146:6
	movq	-112(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB11_70
# %bb.13:
	.loc	7 0 6 is_stmt 0                 # on_stack_allocator.c3:0:6
	movq	-128(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	$24, -184(%rbp)
.Ltmp104:
	.loc	2 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -184(%rbp)
	jne	.LBB11_15
# %bb.14:
	.loc	2 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -192(%rbp)
	jmp	.LBB11_33
.LBB11_15:
	.loc	2 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-184(%rbp), %rax
	movq	%rax, -512(%rbp)                # 8-byte Spill
	.loc	2 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -497(%rbp)                 # 1-byte Spill
	jne	.LBB11_19
# %bb.16:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -200(%rbp)
.Ltmp105:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-200(%rbp), %rcx
	movb	%al, -513(%rbp)                 # 1-byte Spill
	je	.LBB11_18
# %bb.17:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-200(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-200(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -513(%rbp)                 # 1-byte Spill
.LBB11_18:
	.loc	5 0 19                          # math.c3:0:19
	movb	-513(%rbp), %al                 # 1-byte Reload
	movb	%al, -497(%rbp)                 # 1-byte Spill
.LBB11_19:
	movb	-497(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB11_21
.Ltmp106:
# %bb.20:
	.loc	2 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB11_21:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB11_23
	jmp	.LBB11_22
.LBB11_22:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB11_23:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-512(%rbp), %rcx                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB11_25
# %bb.24:
	leaq	.panic_msg.32(%rip), %rdi
	movl	$59, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB11_25:
	movq	-168(%rbp), %rax
	movq	%rax, -528(%rbp)                # 8-byte Spill
.Ltmp107:
	.loc	7 136 1 is_stmt 1               # on_stack_allocator.c3:136:1
	cmpq	-216(%rbp), %rax
	je	.LBB11_27
# %bb.26:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-528(%rbp), %rax                # 8-byte Reload
	.loc	7 136 1                         # on_stack_allocator.c3:136:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-528(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%rax, -536(%rbp)                # 8-byte Spill
	jmp	.LBB11_28
.LBB11_27:
	movq	-208(%rbp), %rax
	movq	%rax, -536(%rbp)                # 8-byte Spill
.LBB11_28:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-536(%rbp), %rax                # 8-byte Reload
	movq	%rax, -544(%rbp)                # 8-byte Spill
	.loc	7 136 1                         # on_stack_allocator.c3:136:1
	cmpq	$0, %rax
	jne	.LBB11_30
# %bb.29:
	leaq	.panic_msg.33(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB11_30:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-544(%rbp), %rax                # 8-byte Reload
	movq	-512(%rbp), %rdx                # 8-byte Reload
	movq	-176(%rbp), %rsi
.Ltmp108:
	.loc	2 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	-224(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -552(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB11_32
# %bb.31:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-552(%rbp), %rax                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -144(%rbp)
	jmp	.LBB11_34
.LBB11_32:
	movq	-224(%rbp), %rax
	movq	%rax, -192(%rbp)
.LBB11_33:
	movq	-192(%rbp), %rax
	movq	%rax, -560(%rbp)                # 8-byte Spill
	jmp	.LBB11_35
.LBB11_34:
	movq	-144(%rbp), %rax
	.loc	2 86 10 epilogue_begin          # mem_allocator.c3:86:10
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_35:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 10                          # mem_allocator.c3:0:10
	movq	-560(%rbp), %rax                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -136(%rbp)
	leaq	-248(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
.Ltmp109:
	.loc	7 151 22 is_stmt 1              # on_stack_allocator.c3:151:22
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -240(%rbp)
	.loc	7 151 48 is_stmt 0              # on_stack_allocator.c3:151:48
	movb	-41(%rbp), %al
	movb	%al, -248(%rbp)
	.loc	7 151 4                         # on_stack_allocator.c3:151:4
	movq	-136(%rbp), %rax
	movq	%rax, -568(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB11_72
# %bb.36:
	.loc	7 0 4                           # on_stack_allocator.c3:0:4
	movq	-568(%rbp), %rax                # 8-byte Reload
	.loc	7 151 4                         # on_stack_allocator.c3:151:4
	andq	$7, %rax
	movq	%rax, -576(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB11_73
# %bb.37:
	.loc	7 0 4                           # on_stack_allocator.c3:0:4
	movq	-568(%rbp), %rax                # 8-byte Reload
	.loc	7 151 4                         # on_stack_allocator.c3:151:4
	movq	-248(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-240(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-232(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.loc	7 152 49 is_stmt 1              # on_stack_allocator.c3:152:49
	movq	-24(%rbp), %rax
	movq	%rax, -592(%rbp)                # 8-byte Spill
	.loc	7 152 55 is_stmt 0              # on_stack_allocator.c3:152:55
	movl	-28(%rbp), %eax
	movl	%eax, -580(%rbp)                # 4-byte Spill
	.loc	7 152 66                        # on_stack_allocator.c3:152:66
	testb	$1, -41(%rbp)
	je	.LBB11_39
# %bb.38:
	.loc	7 152 76                        # on_stack_allocator.c3:152:76
	movq	-40(%rbp), %rax
	movq	%rax, -600(%rbp)                # 8-byte Spill
	jmp	.LBB11_40
.LBB11_39:
	.loc	7 152 88                        # on_stack_allocator.c3:152:88
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -600(%rbp)                # 8-byte Spill
	jmp	.LBB11_40
.LBB11_40:
	.loc	7 0 88                          # on_stack_allocator.c3:0:88
	movq	-600(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -616(%rbp)                # 8-byte Spill
	.loc	7 38 12 is_stmt 1               # on_stack_allocator.c3:38:12
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -601(%rbp)                 # 1-byte Spill
	je	.LBB11_44
# %bb.41:
	.loc	7 0 12 is_stmt 0                # on_stack_allocator.c3:0:12
	movq	-616(%rbp), %rax                # 8-byte Reload
	movq	%rax, -344(%rbp)
.Ltmp110:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-344(%rbp), %rcx
	movb	%al, -617(%rbp)                 # 1-byte Spill
	je	.LBB11_43
# %bb.42:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-344(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-344(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -617(%rbp)                 # 1-byte Spill
.LBB11_43:
	.loc	5 0 19                          # math.c3:0:19
	movb	-617(%rbp), %al                 # 1-byte Reload
	movb	%al, -601(%rbp)                 # 1-byte Spill
.LBB11_44:
	movb	-601(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB11_46
.Ltmp111:
# %bb.45:
	.loc	7 152 23 is_stmt 1              # on_stack_allocator.c3:152:23
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$152, (%rsp)
	callq	*(%rax)
.LBB11_46:
	.loc	7 0 23 is_stmt 0                # on_stack_allocator.c3:0:23
	movq	-616(%rbp), %rax                # 8-byte Reload
	.loc	7 152 23                        # on_stack_allocator.c3:152:23
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB11_48
# %bb.47:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$152, (%rsp)
	callq	*(%rax)
.LBB11_48:
	.loc	7 0 23                          # on_stack_allocator.c3:0:23
	movq	-592(%rbp), %rcx                # 8-byte Reload
	.loc	7 152 23                        # on_stack_allocator.c3:152:23
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB11_50
# %bb.49:
	leaq	.panic_msg.32(%rip), %rdi
	movl	$59, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$152, (%rsp)
	callq	*(%rax)
.LBB11_50:
	movq	-120(%rbp), %rax
	movq	%rax, -632(%rbp)                # 8-byte Spill
.Ltmp112:
	.loc	7 136 1 is_stmt 1               # on_stack_allocator.c3:136:1
	cmpq	-360(%rbp), %rax
	je	.LBB11_52
# %bb.51:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-632(%rbp), %rax                # 8-byte Reload
	.loc	7 136 1                         # on_stack_allocator.c3:136:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-632(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -352(%rbp)
	movq	%rcx, -360(%rbp)
	movq	%rax, -640(%rbp)                # 8-byte Spill
	jmp	.LBB11_53
.LBB11_52:
	movq	-352(%rbp), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
.LBB11_53:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-640(%rbp), %rax                # 8-byte Reload
	movq	%rax, -648(%rbp)                # 8-byte Spill
	.loc	7 136 1                         # on_stack_allocator.c3:136:1
	cmpq	$0, %rax
	jne	.LBB11_55
# %bb.54:
	leaq	.panic_msg.33(%rip), %rdi
	movl	$44, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$152, (%rsp)
	callq	*(%rax)
.LBB11_55:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-648(%rbp), %rax                # 8-byte Reload
	movq	-616(%rbp), %r8                 # 8-byte Reload
	movl	-580(%rbp), %ecx                # 4-byte Reload
	movq	-592(%rbp), %rdx                # 8-byte Reload
	movq	-128(%rbp), %rsi
.Ltmp113:
	.loc	7 152 23 is_stmt 1              # on_stack_allocator.c3:152:23
	leaq	-368(%rbp), %rdi
	callq	*%rax
	movq	%rax, -656(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB11_57
# %bb.56:
	.loc	7 0 23 is_stmt 0                # on_stack_allocator.c3:0:23
	movq	-656(%rbp), %rax                # 8-byte Reload
	.loc	7 152 23                        # on_stack_allocator.c3:152:23
	movq	%rax, -336(%rbp)
	jmp	.LBB11_58
.LBB11_57:
	jmp	.LBB11_69
.LBB11_58:
	.loc	7 0 23                          # on_stack_allocator.c3:0:23
	movq	-128(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -376(%rbp)
.Ltmp114:
	.loc	7 149 50 is_stmt 1              # on_stack_allocator.c3:149:50
	movq	-136(%rbp), %rax
	movq	%rax, -392(%rbp)
.Ltmp115:
	.loc	2 119 6                         # mem_allocator.c3:119:6
	cmpq	$0, -392(%rbp)
	jne	.LBB11_60
# %bb.59:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB11_68
.LBB11_60:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-392(%rbp), %rax
	movq	%rax, -664(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB11_62
# %bb.61:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB11_62:
	movq	-376(%rbp), %rax
	movq	%rax, -672(%rbp)                # 8-byte Spill
.Ltmp116:
	.loc	7 136 1 is_stmt 1               # on_stack_allocator.c3:136:1
	cmpq	-408(%rbp), %rax
	je	.LBB11_64
# %bb.63:
	.loc	7 0 1 is_stmt 0                 # on_stack_allocator.c3:0:1
	movq	-672(%rbp), %rax                # 8-byte Reload
	.loc	7 136 1                         # on_stack_allocator.c3:136:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-672(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -400(%rbp)
	movq	%rcx, -408(%rbp)
	movq	%rax, -680(%rbp)                # 8-byte Spill
	jmp	.LBB11_65
.LBB11_64:
	movq	-400(%rbp), %rax
	movq	%rax, -680(%rbp)                # 8-byte Spill
.LBB11_65:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-680(%rbp), %rax                # 8-byte Reload
	movq	%rax, -688(%rbp)                # 8-byte Spill
	.loc	7 136 1                         # on_stack_allocator.c3:136:1
	cmpq	$0, %rax
	jne	.LBB11_67
# %bb.66:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB11_67:
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-688(%rbp), %rax                # 8-byte Reload
	movq	-664(%rbp), %rsi                # 8-byte Reload
	.loc	7 136 1                         # on_stack_allocator.c3:136:1
	movq	-384(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB11_68:
	movq	-336(%rbp), %rax
	.loc	7 136 1 epilogue_begin          # on_stack_allocator.c3:136:1
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_69:
	.cfi_def_cfa %rbp, 16
	.loc	7 0 1                           # on_stack_allocator.c3:0:1
	movq	-464(%rbp), %rax                # 8-byte Reload
.Ltmp117:
	.loc	7 152 10 is_stmt 1              # on_stack_allocator.c3:152:10
	movq	-136(%rbp), %rdx
	movq	-368(%rbp), %rcx
	movq	%rcx, 16(%rdx)
.Ltmp118:
	.loc	7 150 13                        # on_stack_allocator.c3:150:13
	movq	-16(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	%rsi, 40(%rdx)
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	7 150 13 epilogue_begin is_stmt 0 # on_stack_allocator.c3:150:13
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp119:
.LBB11_70:
	.cfi_def_cfa %rbp, 16
	.loc	7 0 13                          # on_stack_allocator.c3:0:13
	movq	-464(%rbp), %rax                # 8-byte Reload
	.loc	7 154 2 is_stmt 1               # on_stack_allocator.c3:154:2
	movq	-16(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rdx, 32(%rcx)
	.loc	7 155 35                        # on_stack_allocator.c3:155:35
	movq	-80(%rbp), %rcx
	.loc	7 155 41 is_stmt 0              # on_stack_allocator.c3:155:41
	addq	$-8, %rcx
	movq	%rcx, -416(%rbp)
	.loc	7 156 2 is_stmt 1               # on_stack_allocator.c3:156:2
	movq	-416(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rcx)
	.loc	7 157 9                         # on_stack_allocator.c3:157:9
	movq	-80(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	7 157 9 epilogue_begin is_stmt 0 # on_stack_allocator.c3:157:9
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_71:
	.cfi_def_cfa %rbp, 16
	.loc	7 135 36 is_stmt 1              # on_stack_allocator.c3:135:36
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$135, (%rsp)
	callq	*(%rax)
.LBB11_72:
.Ltmp120:
	.loc	7 151 4                         # on_stack_allocator.c3:151:4
	leaq	.panic_msg.34(%rip), %rdi
	movl	$46, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$151, (%rsp)
	callq	*(%rax)
.LBB11_73:
	.loc	7 0 4 is_stmt 0                 # on_stack_allocator.c3:0:4
	movq	-576(%rbp), %rcx                # 8-byte Reload
	movq	$8, -256(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -264(%rbp)
	movq	%rax, -296(%rbp)
	leaq	-256(%rbp), %rcx
	movq	%rcx, -304(%rbp)
	movq	%rax, -280(%rbp)
	leaq	-264(%rbp), %rax
	movq	%rax, -288(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$2, -312(%rbp)
	.loc	7 151 4                         # on_stack_allocator.c3:151:4
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	leaq	-320(%rbp), %rax
	movl	$151, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp121:
.Lfunc_end11:
	.size	std.core.mem.allocator.OnStackAllocator.acquire, .Lfunc_end11-std.core.mem.allocator.OnStackAllocator.acquire
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.allocation_in_stack_mem.4311
	.type	std.core.mem.allocator.allocation_in_stack_mem.4311,@function
std.core.mem.allocator.allocation_in_stack_mem.4311: # @std.core.mem.allocator.allocation_in_stack_mem.4311
.Lfunc_begin12:
	.loc	7 76 0 is_stmt 1                # on_stack_allocator.c3:76:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp122:
	.loc	7 78 9 prologue_end             # on_stack_allocator.c3:78:9
	movq	-16(%rbp), %rcx
	.loc	7 78 16 is_stmt 0               # on_stack_allocator.c3:78:16
	movq	-8(%rbp), %rdx
	.loc	7 78 9                          # on_stack_allocator.c3:78:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	16(%rdx), %rcx
	movb	%al, -129(%rbp)                 # 1-byte Spill
	jb	.LBB12_4
# %bb.1:
	.loc	7 78 30                         # on_stack_allocator.c3:78:30
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	.loc	7 78 38                         # on_stack_allocator.c3:78:38
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	16(%rcx), %rcx
	movq	%rcx, -152(%rbp)                # 8-byte Spill
	.loc	7 78 46                         # on_stack_allocator.c3:78:46
	subq	$1, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setl	%al
	testb	$1, %al
	jne	.LBB12_5
# %bb.2:
	.loc	7 0 46                          # on_stack_allocator.c3:0:46
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	-160(%rbp), %rcx                # 8-byte Reload
	.loc	7 78 46                         # on_stack_allocator.c3:78:46
	cmpq	%rcx, %rax
	setge	%al
	testb	$1, %al
	jne	.LBB12_6
# %bb.3:
	.loc	7 0 46                          # on_stack_allocator.c3:0:46
	movq	-168(%rbp), %rax                # 8-byte Reload
	movq	-144(%rbp), %rdx                # 8-byte Reload
	movq	-152(%rbp), %rcx                # 8-byte Reload
	.loc	7 78 46                         # on_stack_allocator.c3:78:46
	addq	%rdx, %rcx
	.loc	7 78 30                         # on_stack_allocator.c3:78:30
	cmpq	%rcx, %rax
	setbe	%al
	movb	%al, -129(%rbp)                 # 1-byte Spill
.LBB12_4:
	.loc	7 0 30                          # on_stack_allocator.c3:0:30
	movb	-129(%rbp), %al                 # 1-byte Reload
	.loc	7 78 30                         # on_stack_allocator.c3:78:30
	andb	$1, %al
	.loc	7 78 30 epilogue_begin          # on_stack_allocator.c3:78:30
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_5:
	.cfi_def_cfa %rbp, 16
	.loc	7 0 30                          # on_stack_allocator.c3:0:30
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$1, -56(%rbp)
	.loc	7 78 46                         # on_stack_allocator.c3:78:46
	leaq	.panic_msg.17(%rip), %rdi
	movl	$38, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.19(%rip), %r8
	movl	$23, %r9d
	leaq	-64(%rbp), %rax
	movl	$78, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB12_6:
	.loc	7 0 46                          # on_stack_allocator.c3:0:46
	movq	-144(%rbp), %rcx                # 8-byte Reload
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rcx, -80(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-72(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$2, -120(%rbp)
	.loc	7 78 46                         # on_stack_allocator.c3:78:46
	leaq	.panic_msg.4(%rip), %rdi
	movl	$59, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.19(%rip), %r8
	movl	$23, %r9d
	leaq	-128(%rbp), %rax
	movl	$78, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp123:
.Lfunc_end12:
	.size	std.core.mem.allocator.allocation_in_stack_mem.4311, .Lfunc_end12-std.core.mem.allocator.allocation_in_stack_mem.4311
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.on_stack_allocator_remove_chunk.4314
	.type	std.core.mem.allocator.on_stack_allocator_remove_chunk.4314,@function
std.core.mem.allocator.on_stack_allocator_remove_chunk.4314: # @std.core.mem.allocator.on_stack_allocator_remove_chunk.4314
.Lfunc_begin13:
	.loc	7 81 0 is_stmt 1                # on_stack_allocator.c3:81:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp                      # imm = 0x150
	movq	$0, -136(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp124:
	.loc	7 83 38 prologue_end            # on_stack_allocator.c3:83:38
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	7 84 39                         # on_stack_allocator.c3:84:39
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
.Ltmp125:
	.loc	7 85 9                          # on_stack_allocator.c3:85:9
	cmpq	$0, -24(%rbp)
	je	.LBB13_19
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
.Ltmp126:
	.loc	7 87 7                          # on_stack_allocator.c3:87:7
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB13_16
# %bb.3:
.Ltmp127:
	.loc	7 89 12                         # on_stack_allocator.c3:89:12
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -256(%rbp)                # 8-byte Spill
	.loc	7 89 5 is_stmt 0                # on_stack_allocator.c3:89:5
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB13_20
# %bb.4:
	.loc	7 0 5                           # on_stack_allocator.c3:0:5
	movq	-248(%rbp), %rax                # 8-byte Reload
	.loc	7 89 5                          # on_stack_allocator.c3:89:5
	andq	$7, %rax
	movq	%rax, -264(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB13_21
# %bb.5:
	.loc	7 0 5                           # on_stack_allocator.c3:0:5
	movq	-248(%rbp), %rax                # 8-byte Reload
	movq	-256(%rbp), %rcx                # 8-byte Reload
	.loc	7 89 5                          # on_stack_allocator.c3:89:5
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	.loc	7 90 20 is_stmt 1               # on_stack_allocator.c3:90:20
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	.loc	7 90 41 is_stmt 0               # on_stack_allocator.c3:90:41
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
.Ltmp128:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -120(%rbp)
	jne	.LBB13_7
# %bb.6:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB13_15
.LBB13_7:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-120(%rbp), %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB13_9
# %bb.8:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.21(%rip), %r8
	movl	$31, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB13_9:
	movq	-104(%rbp), %rax
	movq	%rax, -280(%rbp)                # 8-byte Spill
	cmpq	-136(%rbp), %rax
	je	.LBB13_11
# %bb.10:
	.loc	2 0 2                           # mem_allocator.c3:0:2
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-280(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%rax, -288(%rbp)                # 8-byte Spill
	jmp	.LBB13_12
.LBB13_11:
	movq	-128(%rbp), %rax
	movq	%rax, -288(%rbp)                # 8-byte Spill
.LBB13_12:
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	%rax, -296(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB13_14
# %bb.13:
	.loc	2 123 2                         # mem_allocator.c3:123:2
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.21(%rip), %r8
	movl	$31, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB13_14:
	.loc	2 0 2                           # mem_allocator.c3:0:2
	movq	-296(%rbp), %rax                # 8-byte Reload
	movq	-272(%rbp), %rsi                # 8-byte Reload
	.loc	2 123 2                         # mem_allocator.c3:123:2
	movq	-112(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.Ltmp129:
.LBB13_15:
	.loc	7 91 10 epilogue_begin is_stmt 1 # on_stack_allocator.c3:91:10
	addq	$336, %rsp                      # imm = 0x150
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp130:
.LBB13_16:                              #   in Loop: Header=BB13_1 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	7 93 11                         # on_stack_allocator.c3:93:11
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	.loc	7 94 12                         # on_stack_allocator.c3:94:12
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB13_22
# %bb.17:                               #   in Loop: Header=BB13_1 Depth=1
	.loc	7 0 12 is_stmt 0                # on_stack_allocator.c3:0:12
	movq	-304(%rbp), %rax                # 8-byte Reload
	.loc	7 94 12                         # on_stack_allocator.c3:94:12
	andq	$7, %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB13_23
# %bb.18:                               #   in Loop: Header=BB13_1 Depth=1
	.loc	7 0 12                          # on_stack_allocator.c3:0:12
	movq	-304(%rbp), %rax                # 8-byte Reload
	.loc	7 94 12                         # on_stack_allocator.c3:94:12
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_1
.Ltmp131:
.LBB13_19:
	.loc	7 0 12                          # on_stack_allocator.c3:0:12
	leaq	.L.str(%rip), %rax
	movq	%rax, -224(%rbp)
	movq	$13, -216(%rbp)
.Ltmp132:
	.file	8 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "builtin.c3"
	.loc	8 244 33 is_stmt 1              # builtin.c3:244:33
	movq	-224(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	.loc	8 244 2 is_stmt 0               # builtin.c3:244:2
	leaq	.L.str.26(%rip), %rdx
	movl	$21, %ecx
	leaq	.L.str.27(%rip), %r8
	movl	$31, %r9d
	leaq	-240(%rbp), %rax
	movl	$96, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp133:
.LBB13_20:
	.loc	7 89 5 is_stmt 1                # on_stack_allocator.c3:89:5
	leaq	.panic_msg.20(%rip), %rdi
	movl	$45, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.21(%rip), %r8
	movl	$31, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$89, (%rsp)
	callq	*(%rax)
.LBB13_21:
	.loc	7 0 5 is_stmt 0                 # on_stack_allocator.c3:0:5
	movq	-264(%rbp), %rcx                # 8-byte Reload
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
	.loc	7 89 5                          # on_stack_allocator.c3:89:5
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.21(%rip), %r8
	movl	$31, %r9d
	leaq	-96(%rbp), %rax
	movl	$89, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp134:
.LBB13_22:
	.loc	7 94 12 is_stmt 1               # on_stack_allocator.c3:94:12
	leaq	.panic_msg.20(%rip), %rdi
	movl	$45, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.21(%rip), %r8
	movl	$31, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$94, (%rsp)
	callq	*(%rax)
.LBB13_23:
	.loc	7 0 12 is_stmt 0                # on_stack_allocator.c3:0:12
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	$8, -144(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -152(%rbp)
	movq	%rax, -184(%rbp)
	leaq	-144(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	%rax, -168(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$2, -200(%rbp)
	.loc	7 94 12                         # on_stack_allocator.c3:94:12
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.18(%rip), %rdx
	movl	$21, %ecx
	leaq	.func.21(%rip), %r8
	movl	$31, %r9d
	leaq	-208(%rbp), %rax
	movl	$94, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp135:
.Lfunc_end13:
	.size	std.core.mem.allocator.on_stack_allocator_remove_chunk.4314, .Lfunc_end13-std.core.mem.allocator.on_stack_allocator_remove_chunk.4314
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.on_stack_allocator_find_chunk.4319
	.type	std.core.mem.allocator.on_stack_allocator_find_chunk.4319,@function
std.core.mem.allocator.on_stack_allocator_find_chunk.4319: # @std.core.mem.allocator.on_stack_allocator_find_chunk.4319
.Lfunc_begin14:
	.loc	7 99 0 is_stmt 1                # on_stack_allocator.c3:99:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp136:
	.loc	7 101 38 prologue_end           # on_stack_allocator.c3:101:38
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
.Ltmp137:
	.loc	7 102 9                         # on_stack_allocator.c3:102:9
	cmpq	$0, -24(%rbp)
	je	.LBB14_5
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
.Ltmp138:
	.loc	7 104 7                         # on_stack_allocator.c3:104:7
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB14_4
# %bb.3:
	.loc	7 104 33 is_stmt 0              # on_stack_allocator.c3:104:33
	movq	-24(%rbp), %rax
	.loc	7 104 33 epilogue_begin         # on_stack_allocator.c3:104:33
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_4:                               #   in Loop: Header=BB14_1 Depth=1
	.cfi_def_cfa %rbp, 16
	.loc	7 105 11 is_stmt 1              # on_stack_allocator.c3:105:11
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_1
.Ltmp139:
.LBB14_5:
	.loc	7 107 9                         # on_stack_allocator.c3:107:9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	7 107 9 epilogue_begin is_stmt 0 # on_stack_allocator.c3:107:9
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp140:
.Lfunc_end14:
	.size	std.core.mem.allocator.on_stack_allocator_find_chunk.4319, .Lfunc_end14-std.core.mem.allocator.on_stack_allocator_find_chunk.4319
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.TempAllocator.derive_allocator,"axG",@progbits,std.core.mem.allocator.TempAllocator.derive_allocator,comdat
	.weak	std.core.mem.allocator.TempAllocator.derive_allocator # -- Begin function std.core.mem.allocator.TempAllocator.derive_allocator
	.p2align	4, 0x90
	.type	std.core.mem.allocator.TempAllocator.derive_allocator,@function
std.core.mem.allocator.TempAllocator.derive_allocator: # @std.core.mem.allocator.TempAllocator.derive_allocator
.Lfunc_begin15:
	.loc	3 89 0 is_stmt 1                # temp_allocator.c3:89:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -144(%rbp)                # 8-byte Spill
	movq	%rsi, -136(%rbp)                # 8-byte Spill
	movq	%rdx, -128(%rbp)                # 8-byte Spill
.Ltmp141:
	.loc	3 90 1 prologue_end             # temp_allocator.c3:90:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB15_24
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-128(%rbp), %rax                # 8-byte Reload
	movq	-136(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
.Ltmp142:
	.loc	3 87 12 is_stmt 1               # temp_allocator.c3:87:12
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_3
# %bb.2:
	.loc	3 87 11 is_stmt 0               # temp_allocator.c3:87:11
	leaq	.panic_msg.42(%rip), %rdi
	movl	$34, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.41(%rip), %r8
	movl	$16, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$87, (%rsp)
	callq	*(%rax)
.Ltmp143:
.LBB15_3:
	.loc	3 91 6 is_stmt 1                # temp_allocator.c3:91:6
	cmpq	$0, -16(%rbp)
	jne	.LBB15_5
# %bb.4:
	.loc	3 91 26 is_stmt 0               # temp_allocator.c3:91:26
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB15_5:
	.loc	3 92 18 is_stmt 1               # temp_allocator.c3:92:18
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	.loc	3 92 34 is_stmt 0               # temp_allocator.c3:92:34
	movq	-8(%rbp), %rcx
	.loc	3 92 18                         # temp_allocator.c3:92:18
	subq	64(%rcx), %rax
	movq	%rax, -24(%rbp)
	.loc	3 95 6 is_stmt 1                # temp_allocator.c3:95:6
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	addq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB15_19
# %bb.6:
.Ltmp144:
	.loc	3 97 44                         # temp_allocator.c3:97:44
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	.loc	3 97 68 is_stmt 0               # temp_allocator.c3:97:68
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	movq	%rcx, -176(%rbp)                # 8-byte Spill
	.loc	3 97 87                         # temp_allocator.c3:97:87
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	.loc	3 97 106                        # temp_allocator.c3:97:106
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	.loc	3 97 121                        # temp_allocator.c3:97:121
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	.loc	3 97 25                         # temp_allocator.c3:97:25
	movl	$64, %eax
	cmpq	%rcx, %rax
	jbe	.LBB15_8
# %bb.7:
	leaq	.panic_msg.35(%rip), %rdi
	movl	$31, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.41(%rip), %r8
	movl	$16, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$97, (%rsp)
	callq	*(%rax)
.LBB15_8:
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-152(%rbp), %rcx                # 8-byte Reload
	.loc	3 97 25                         # temp_allocator.c3:97:25
	movl	$64, %eax
	cmpq	%rcx, %rax
	jbe	.LBB15_10
# %bb.9:
	leaq	.panic_msg.38(%rip), %rdi
	movl	$39, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.41(%rip), %r8
	movl	$16, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$97, (%rsp)
	callq	*(%rax)
.LBB15_10:
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-184(%rbp), %rax                # 8-byte Reload
	.loc	3 97 25                         # temp_allocator.c3:97:25
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rcx
	cmpq	%rcx, %rax
	jne	.LBB15_12
# %bb.11:
	leaq	.panic_msg.39(%rip), %rdi
	movl	$145, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.41(%rip), %r8
	movl	$16, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$97, (%rsp)
	callq	*(%rax)
.LBB15_12:
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-160(%rbp), %rcx                # 8-byte Reload
	.loc	3 97 25                         # temp_allocator.c3:97:25
	movl	$152, %eax
	cmpq	%rcx, %rax
	jb	.LBB15_14
# %bb.13:
	leaq	.panic_msg.40(%rip), %rdi
	movl	$114, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.41(%rip), %r8
	movl	$16, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$97, (%rsp)
	callq	*(%rax)
.LBB15_14:
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	-160(%rbp), %r9                 # 8-byte Reload
	movq	-168(%rbp), %r8                 # 8-byte Reload
	movq	-176(%rbp), %rcx                # 8-byte Reload
	movq	-184(%rbp), %rdx                # 8-byte Reload
	movq	-192(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	.loc	3 97 25                         # temp_allocator.c3:97:25
	leaq	-64(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	std.core.mem.allocator.new_temp_allocator@PLT
	movq	%rax, -200(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB15_16
# %bb.15:
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-200(%rbp), %rax                # 8-byte Reload
	.loc	3 97 25                         # temp_allocator.c3:97:25
	movq	%rax, -56(%rbp)
	jmp	.LBB15_17
.LBB15_16:
	jmp	.LBB15_18
.LBB15_17:
	movq	-56(%rbp), %rax
	.loc	3 97 25 epilogue_begin          # temp_allocator.c3:97:25
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_18:
	.cfi_def_cfa %rbp, 16
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-144(%rbp), %rax                # 8-byte Reload
	.loc	3 97 10                         # temp_allocator.c3:97:10
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, 24(%rdx)
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 97 10 epilogue_begin          # temp_allocator.c3:97:10
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp145:
.LBB15_19:
	.cfi_def_cfa %rbp, 16
	.loc	3 99 34 is_stmt 1               # temp_allocator.c3:99:34
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	$16, -96(%rbp)
.Ltmp146:
	.loc	5 992 9                         # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-96(%rbp), %rcx
	movb	%al, -201(%rbp)                 # 1-byte Spill
	je	.LBB15_21
# %bb.20:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-96(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-96(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -201(%rbp)                 # 1-byte Spill
.LBB15_21:
	.loc	5 0 19                          # math.c3:0:19
	movb	-201(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB15_23
.Ltmp147:
# %bb.22:
	.loc	3 99 14 is_stmt 1               # temp_allocator.c3:99:14
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.41(%rip), %r8
	movl	$16, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$99, (%rsp)
	callq	*(%rax)
.LBB15_23:
	.loc	3 0 14 is_stmt 0                # temp_allocator.c3:0:14
	movq	-216(%rbp), %rdi                # 8-byte Reload
	.loc	3 99 14                         # temp_allocator.c3:99:14
	movl	$16, %esi
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, %rcx
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	%rcx, -88(%rbp)
	.loc	3 100 15 is_stmt 1              # temp_allocator.c3:100:15
	movq	-8(%rbp), %rcx
	addq	$88, %rcx
	.loc	3 100 25 is_stmt 0              # temp_allocator.c3:100:25
	addq	-88(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	.loc	3 101 40 is_stmt 1              # temp_allocator.c3:101:40
	movq	-104(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	.loc	3 105 2                         # temp_allocator.c3:105:2
	movq	-112(%rbp), %rcx
	movq	$0, 16(%rcx)
	.loc	3 106 30                        # temp_allocator.c3:106:30
	movq	-8(%rbp), %rdx
	.loc	3 106 5 is_stmt 0               # temp_allocator.c3:106:5
	movq	-112(%rbp), %rcx
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	.loc	3 107 5 is_stmt 1               # temp_allocator.c3:107:5
	movq	-112(%rbp), %rcx
	movq	$0, 64(%rcx)
	.loc	3 108 21                        # temp_allocator.c3:108:21
	movq	-8(%rbp), %rdx
	.loc	3 108 5 is_stmt 0               # temp_allocator.c3:108:5
	movq	-112(%rbp), %rcx
	movq	56(%rdx), %rdx
	movq	%rdx, 56(%rcx)
	.loc	3 109 25 is_stmt 1              # temp_allocator.c3:109:25
	movq	-8(%rbp), %rdx
	.loc	3 109 5 is_stmt 0               # temp_allocator.c3:109:5
	movq	-112(%rbp), %rcx
	movq	40(%rdx), %rdx
	movq	%rdx, 40(%rcx)
	.loc	3 110 25 is_stmt 1              # temp_allocator.c3:110:25
	movq	-8(%rbp), %rdx
	.loc	3 110 5 is_stmt 0               # temp_allocator.c3:110:5
	movq	-112(%rbp), %rcx
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rcx)
	.loc	3 111 5 is_stmt 1               # temp_allocator.c3:111:5
	movq	-112(%rbp), %rcx
	movb	$0, 32(%rcx)
	.loc	3 112 5                         # temp_allocator.c3:112:5
	movq	-112(%rbp), %rcx
	movq	$0, 24(%rcx)
	.loc	3 113 46                        # temp_allocator.c3:113:46
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rdx
	subq	-88(%rbp), %rdx
	subq	$88, %rdx
	.loc	3 113 30 is_stmt 0              # temp_allocator.c3:113:30
	movq	-112(%rbp), %rcx
	movq	%rdx, 72(%rcx)
	.loc	3 113 5                         # temp_allocator.c3:113:5
	movq	-112(%rbp), %rcx
	movq	%rdx, 80(%rcx)
	.loc	3 114 5 is_stmt 1               # temp_allocator.c3:114:5
	movq	-8(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rdx, 72(%rcx)
	.loc	3 115 2                         # temp_allocator.c3:115:2
	movq	-8(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rdx, 24(%rcx)
	.loc	3 116 12                        # temp_allocator.c3:116:12
	movq	-112(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 116 12 epilogue_begin is_stmt 0 # temp_allocator.c3:116:12
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_24:
	.cfi_def_cfa %rbp, 16
	.loc	3 89 51 is_stmt 1               # temp_allocator.c3:89:51
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.41(%rip), %r8
	movl	$16, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$89, (%rsp)
	callq	*(%rax)
.Ltmp148:
.Lfunc_end15:
	.size	std.core.mem.allocator.TempAllocator.derive_allocator, .Lfunc_end15-std.core.mem.allocator.TempAllocator.derive_allocator
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.TempAllocator.reset,"axG",@progbits,std.core.mem.allocator.TempAllocator.reset,comdat
	.weak	std.core.mem.allocator.TempAllocator.reset # -- Begin function std.core.mem.allocator.TempAllocator.reset
	.p2align	4, 0x90
	.type	std.core.mem.allocator.TempAllocator.reset,@function
std.core.mem.allocator.TempAllocator.reset: # @std.core.mem.allocator.TempAllocator.reset
.Lfunc_begin16:
	.loc	3 122 0                         # temp_allocator.c3:122:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
.Ltmp149:
	.loc	3 123 1 prologue_end            # temp_allocator.c3:123:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB16_7
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
	.loc	3 124 25 is_stmt 1              # temp_allocator.c3:124:25
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc	3 125 6                         # temp_allocator.c3:125:6
	cmpq	$0, -16(%rbp)
	jne	.LBB16_3
# %bb.2:
	.loc	3 125 20 epilogue_begin is_stmt 0 # temp_allocator.c3:125:20
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_3:
	.cfi_def_cfa %rbp, 16
	.loc	3 126 2 is_stmt 1               # temp_allocator.c3:126:2
	jmp	.LBB16_4
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
.Ltmp150:
	.loc	3 126 9 is_stmt 0               # temp_allocator.c3:126:9
	cmpq	$0, -16(%rbp)
	je	.LBB16_6
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
.Ltmp151:
	.loc	3 128 24 is_stmt 1              # temp_allocator.c3:128:24
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc	3 129 11                        # temp_allocator.c3:129:11
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc	3 130 3                         # temp_allocator.c3:130:3
	movq	-24(%rbp), %rdi
	callq	std.core.mem.allocator.TempAllocator.destroy
	jmp	.LBB16_4
.Ltmp152:
.LBB16_6:
	.loc	3 132 18                        # temp_allocator.c3:132:18
	movq	-8(%rbp), %rcx
	.loc	3 132 2 is_stmt 0               # temp_allocator.c3:132:2
	movq	-8(%rbp), %rax
	movq	80(%rcx), %rcx
	movq	%rcx, 72(%rax)
	.loc	3 136 2 is_stmt 1               # temp_allocator.c3:136:2
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	.loc	3 136 2 epilogue_begin is_stmt 0 # temp_allocator.c3:136:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_7:
	.cfi_def_cfa %rbp, 16
	.loc	3 122 29 is_stmt 1              # temp_allocator.c3:122:29
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.43(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$122, (%rsp)
	callq	*(%rax)
.Ltmp153:
.Lfunc_end16:
	.size	std.core.mem.allocator.TempAllocator.reset, .Lfunc_end16-std.core.mem.allocator.TempAllocator.reset
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.TempAllocator.free,"axG",@progbits,std.core.mem.allocator.TempAllocator.free,comdat
	.weak	std.core.mem.allocator.TempAllocator.free # -- Begin function std.core.mem.allocator.TempAllocator.free
	.p2align	4, 0x90
	.type	std.core.mem.allocator.TempAllocator.free,@function
std.core.mem.allocator.TempAllocator.free: # @std.core.mem.allocator.TempAllocator.free
.Lfunc_begin17:
	.loc	3 142 0                         # temp_allocator.c3:142:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)                 # 8-byte Spill
.Ltmp154:
	.loc	3 143 1 prologue_end            # temp_allocator.c3:143:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB17_4
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rbp)
.Ltmp155:
	.loc	3 140 11 is_stmt 1              # temp_allocator.c3:140:11
	movq	-8(%rbp), %rax
	testb	$1, 32(%rax)
	jne	.LBB17_3
# %bb.2:
	leaq	.panic_msg.44(%rip), %rdi
	movl	$82, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$140, (%rsp)
	callq	*(%rax)
.Ltmp156:
.LBB17_3:
	.loc	3 144 2                         # temp_allocator.c3:144:2
	movq	-8(%rbp), %rdi
	callq	std.core.mem.allocator.TempAllocator.reset@PLT
	.loc	3 145 2                         # temp_allocator.c3:145:2
	movq	-8(%rbp), %rdi
	callq	std.core.mem.allocator.TempAllocator.destroy
	.loc	3 145 2 epilogue_begin is_stmt 0 # temp_allocator.c3:145:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB17_4:
	.cfi_def_cfa %rbp, 16
	.loc	3 142 28 is_stmt 1              # temp_allocator.c3:142:28
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.28(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$142, (%rsp)
	callq	*(%rax)
.Ltmp157:
.Lfunc_end17:
	.size	std.core.mem.allocator.TempAllocator.free, .Lfunc_end17-std.core.mem.allocator.TempAllocator.free
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.TempAllocator.destroy
	.type	std.core.mem.allocator.TempAllocator.destroy,@function
std.core.mem.allocator.TempAllocator.destroy: # @std.core.mem.allocator.TempAllocator.destroy
.Lfunc_begin18:
	.loc	3 148 0                         # temp_allocator.c3:148:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp                      # imm = 0x170
	movq	%rdi, -200(%rbp)                # 8-byte Spill
.Ltmp158:
	.loc	3 149 1 prologue_end            # temp_allocator.c3:149:1
	movq	$0, -152(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB18_36
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-200(%rbp), %rax                # 8-byte Reload
	movq	%rax, -56(%rbp)
	.loc	3 150 33 is_stmt 1              # temp_allocator.c3:150:33
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
.Ltmp159:
	.loc	3 151 9                         # temp_allocator.c3:151:9
	cmpq	$0, -64(%rbp)
	je	.LBB18_19
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
.Ltmp160:
	.loc	3 153 32                        # temp_allocator.c3:153:32
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	.loc	3 154 15                        # temp_allocator.c3:154:15
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	.loc	3 155 19                        # temp_allocator.c3:155:19
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rcx
	movq	%rcx, -208(%rbp)                # 8-byte Spill
.Ltmp161:
	.loc	3 183 1                         # temp_allocator.c3:183:1
	movq	$0, -48(%rbp)
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB18_13
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-208(%rbp), %rax                # 8-byte Reload
	movq	-216(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	.loc	3 184 14 is_stmt 1              # temp_allocator.c3:184:14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	3 185 9                         # temp_allocator.c3:185:9
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)                # 8-byte Spill
	.loc	3 185 40 is_stmt 0              # temp_allocator.c3:185:40
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.Ltmp162:
	.loc	3 64 41 is_stmt 1               # temp_allocator.c3:64:41
	cmpq	$0, -32(%rbp)
	jne	.LBB18_6
# %bb.5:
	leaq	.panic_msg.50(%rip), %rdi
	movl	$32, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$64, (%rsp)
	callq	*(%rax)
.Ltmp163:
.LBB18_6:                               #   in Loop: Header=BB18_2 Depth=1
	.loc	3 0 41 is_stmt 0                # temp_allocator.c3:0:41
	movq	-224(%rbp), %rax                # 8-byte Reload
	.loc	3 64 51                         # temp_allocator.c3:64:51
	movq	-32(%rbp), %rdx
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	andq	16(%rdx), %rcx
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	cmpq	%rdx, %rcx
	sete	%cl
	movb	%cl, -233(%rbp)                 # 1-byte Spill
.Ltmp164:
	.loc	3 185 9 is_stmt 1               # temp_allocator.c3:185:9
	cmpq	$0, %rax
	jne	.LBB18_8
# %bb.7:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$185, (%rsp)
	callq	*(%rax)
.LBB18_8:                               #   in Loop: Header=BB18_2 Depth=1
	.loc	3 0 9 is_stmt 0                 # temp_allocator.c3:0:9
	movq	-232(%rbp), %rax                # 8-byte Reload
	.loc	3 185 9                         # temp_allocator.c3:185:9
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	.loc	3 183 1 is_stmt 1               # temp_allocator.c3:183:1
	cmpq	-48(%rbp), %rax
	je	.LBB18_10
# %bb.9:                                #   in Loop: Header=BB18_2 Depth=1
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-248(%rbp), %rax                # 8-byte Reload
	.loc	3 183 1                         # temp_allocator.c3:183:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-248(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%rax, -256(%rbp)                # 8-byte Spill
	jmp	.LBB18_11
.LBB18_10:                              #   in Loop: Header=BB18_2 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)                # 8-byte Spill
.LBB18_11:                              #   in Loop: Header=BB18_2 Depth=1
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-256(%rbp), %rax                # 8-byte Reload
	movq	%rax, -264(%rbp)                # 8-byte Spill
	.loc	3 183 1                         # temp_allocator.c3:183:1
	cmpq	$0, %rax
	jne	.LBB18_14
# %bb.12:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$185, (%rsp)
	callq	*(%rax)
.LBB18_13:
	.loc	3 182 35 is_stmt 1              # temp_allocator.c3:182:35
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.LBB18_14:                              #   in Loop: Header=BB18_2 Depth=1
	.loc	3 0 35 is_stmt 0                # temp_allocator.c3:0:35
	movq	-264(%rbp), %rax                # 8-byte Reload
	movq	-224(%rbp), %rsi                # 8-byte Reload
	movb	-233(%rbp), %cl                 # 1-byte Reload
	movq	-232(%rbp), %rdx                # 8-byte Reload
	.loc	3 183 1 is_stmt 1               # temp_allocator.c3:183:1
	movq	(%rdx), %rdi
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	*%rax
.Ltmp165:
	.loc	3 155 3                         # temp_allocator.c3:155:3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB18_16
# %bb.15:
	movq	$0, -80(%rbp)
	jmp	.LBB18_17
.LBB18_16:                              #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_18
.LBB18_17:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$1, -104(%rbp)
	leaq	.panic_msg.46(%rip), %rdi
	movl	$36, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.45(%rip), %r8
	movl	$7, %r9d
	leaq	-112(%rbp), %rax
	movl	$155, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB18_18:                              #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_2
.Ltmp166:
.LBB18_19:
	.loc	3 157 6                         # temp_allocator.c3:157:6
	movq	-56(%rbp), %rax
	testb	$1, 32(%rax)
	je	.LBB18_31
# %bb.20:
.Ltmp167:
	.loc	3 159 19                        # temp_allocator.c3:159:19
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	.loc	3 159 43 is_stmt 0              # temp_allocator.c3:159:43
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
.Ltmp168:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -136(%rbp)
	jne	.LBB18_22
# %bb.21:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB18_30
.LBB18_22:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-136(%rbp), %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB18_24
# %bb.23:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.45(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB18_24:
	movq	-120(%rbp), %rax
	movq	%rax, -280(%rbp)                # 8-byte Spill
.Ltmp169:
	.loc	3 149 1 is_stmt 1               # temp_allocator.c3:149:1
	cmpq	-152(%rbp), %rax
	je	.LBB18_26
# %bb.25:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-280(%rbp), %rax                # 8-byte Reload
	.loc	3 149 1                         # temp_allocator.c3:149:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-280(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%rax, -288(%rbp)                # 8-byte Spill
	jmp	.LBB18_27
.LBB18_26:
	movq	-144(%rbp), %rax
	movq	%rax, -288(%rbp)                # 8-byte Spill
.LBB18_27:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	%rax, -296(%rbp)                # 8-byte Spill
	.loc	3 149 1                         # temp_allocator.c3:149:1
	cmpq	$0, %rax
	jne	.LBB18_29
# %bb.28:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.45(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB18_29:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-296(%rbp), %rax                # 8-byte Reload
	movq	-272(%rbp), %rsi                # 8-byte Reload
	.loc	3 149 1                         # temp_allocator.c3:149:1
	movq	-128(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB18_30:
.Ltmp170:
	.loc	3 160 9 epilogue_begin is_stmt 1 # temp_allocator.c3:160:9
	addq	$368, %rsp                      # imm = 0x170
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp171:
.LBB18_31:
	.cfi_def_cfa %rbp, 16
	.loc	3 164 7                         # temp_allocator.c3:164:7
	movq	-56(%rbp), %rax
	addq	$88, %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	.loc	3 164 21 is_stmt 0              # temp_allocator.c3:164:21
	movq	-56(%rbp), %rax
	movq	64(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -312(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	setg	%al
	subq	$0, %rcx
	movq	%rcx, -304(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB18_37
# %bb.32:
	.loc	3 164 7                         # temp_allocator.c3:164:7
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	jmp	.LBB18_33
.LBB18_33:                              # =>This Inner Loop Header: Depth=1
	.loc	3 0 7                           # temp_allocator.c3:0:7
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	-328(%rbp), %rax                # 8-byte Reload
	movq	%rax, -336(%rbp)                # 8-byte Spill
	.loc	3 164 7                         # temp_allocator.c3:164:7
	cmpq	%rcx, %rax
	jge	.LBB18_35
# %bb.34:                               #   in Loop: Header=BB18_33 Depth=1
	.loc	3 0 7                           # temp_allocator.c3:0:7
	movq	-336(%rbp), %rax                # 8-byte Reload
	movq	-320(%rbp), %rcx                # 8-byte Reload
	.loc	3 164 7                         # temp_allocator.c3:164:7
	movb	$-86, (%rcx,%rax)
	addq	$1, %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	jmp	.LBB18_33
.LBB18_35:
	.loc	3 164 7 epilogue_begin          # temp_allocator.c3:164:7
	addq	$368, %rsp                      # imm = 0x170
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_36:
	.cfi_def_cfa %rbp, 16
	.loc	3 148 31 is_stmt 1              # temp_allocator.c3:148:31
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.45(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$148, (%rsp)
	callq	*(%rax)
.LBB18_37:
	.loc	3 0 31 is_stmt 0                # temp_allocator.c3:0:31
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$1, -184(%rbp)
	.loc	3 164 7 is_stmt 1               # temp_allocator.c3:164:7
	leaq	.panic_msg.47(%rip), %rdi
	movl	$43, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.45(%rip), %r8
	movl	$7, %r9d
	leaq	-192(%rbp), %rax
	movl	$164, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp172:
.Lfunc_end18:
	.size	std.core.mem.allocator.TempAllocator.destroy, .Lfunc_end18-std.core.mem.allocator.TempAllocator.destroy
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.TempAllocator.release,"axG",@progbits,std.core.mem.allocator.TempAllocator.release,comdat
	.weak	std.core.mem.allocator.TempAllocator.release # -- Begin function std.core.mem.allocator.TempAllocator.release
	.p2align	4, 0x90
	.type	std.core.mem.allocator.TempAllocator.release,@function
std.core.mem.allocator.TempAllocator.release: # @std.core.mem.allocator.TempAllocator.release
.Lfunc_begin19:
	.loc	3 171 0                         # temp_allocator.c3:171:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rsi, -136(%rbp)                # 8-byte Spill
	movq	%rdi, -128(%rbp)                # 8-byte Spill
	movb	%dl, %al
	movb	%al, -113(%rbp)                 # 1-byte Spill
.Ltmp173:
	.loc	3 172 1 prologue_end            # temp_allocator.c3:172:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB19_6
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movb	-113(%rbp), %al                 # 1-byte Reload
	movq	-136(%rbp), %rcx                # 8-byte Reload
	movq	-128(%rbp), %rdx                # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)
	.loc	3 173 25 is_stmt 1              # temp_allocator.c3:173:25
	movq	-16(%rbp), %rax
	.loc	3 173 39 is_stmt 0              # temp_allocator.c3:173:39
	addq	$-8, %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB19_7
# %bb.2:
	.loc	3 0 39                          # temp_allocator.c3:0:39
	movq	-144(%rbp), %rax                # 8-byte Reload
	.loc	3 173 18                        # temp_allocator.c3:173:18
	andq	$7, %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB19_8
# %bb.3:
	.loc	3 0 18                          # temp_allocator.c3:0:18
	movq	-144(%rbp), %rax                # 8-byte Reload
	.loc	3 173 18                        # temp_allocator.c3:173:18
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc	3 174 6 is_stmt 1               # temp_allocator.c3:174:6
	movq	-16(%rbp), %rax
	.loc	3 174 20 is_stmt 0              # temp_allocator.c3:174:20
	addq	-32(%rbp), %rax
	.loc	3 174 33                        # temp_allocator.c3:174:33
	movq	-8(%rbp), %rcx
	addq	$88, %rcx
	.loc	3 174 43                        # temp_allocator.c3:174:43
	movq	-8(%rbp), %rdx
	addq	64(%rdx), %rcx
	.loc	3 174 6                         # temp_allocator.c3:174:6
	cmpq	%rcx, %rax
	jne	.LBB19_5
# %bb.4:
.Ltmp174:
	.loc	3 176 3 is_stmt 1               # temp_allocator.c3:176:3
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	subq	-32(%rbp), %rcx
	movq	%rcx, 64(%rax)
	.loc	3 177 31                        # temp_allocator.c3:177:31
	movq	-8(%rbp), %rax
	addq	$88, %rax
	.loc	3 177 41 is_stmt 0              # temp_allocator.c3:177:41
	movq	-8(%rbp), %rcx
	addq	64(%rcx), %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB19_5:
.Ltmp175:
	.file	9 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/sanitizer" "asan.c3"
	.loc	9 34 2 epilogue_begin is_stmt 1 # asan.c3:34:2
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp176:
.LBB19_6:
	.cfi_def_cfa %rbp, 16
	.loc	3 171 31                        # temp_allocator.c3:171:31
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$171, (%rsp)
	callq	*(%rax)
.LBB19_7:
	.loc	3 173 18                        # temp_allocator.c3:173:18
	leaq	.panic_msg.48(%rip), %rdi
	movl	$82, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$173, (%rsp)
	callq	*(%rax)
.LBB19_8:
	.loc	3 0 18 is_stmt 0                # temp_allocator.c3:0:18
	movq	-152(%rbp), %rcx                # 8-byte Reload
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
	.loc	3 173 18                        # temp_allocator.c3:173:18
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	leaq	-96(%rbp), %rax
	movl	$173, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp177:
.Lfunc_end19:
	.size	std.core.mem.allocator.TempAllocator.release, .Lfunc_end19-std.core.mem.allocator.TempAllocator.release
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.TempAllocator._free_page
	.type	std.core.mem.allocator.TempAllocator._free_page,@function
std.core.mem.allocator.TempAllocator._free_page: # @std.core.mem.allocator.TempAllocator._free_page
.Lfunc_begin20:
	.loc	3 182 0 is_stmt 1               # temp_allocator.c3:182:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	movq	%rsi, -64(%rbp)                 # 8-byte Spill
.Ltmp178:
	.loc	3 183 1 prologue_end            # temp_allocator.c3:183:1
	movq	$0, -56(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB20_11
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	%rax, -16(%rbp)
	.loc	3 184 14 is_stmt 1              # temp_allocator.c3:184:14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	3 185 9                         # temp_allocator.c3:185:9
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	.loc	3 185 40 is_stmt 0              # temp_allocator.c3:185:40
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.Ltmp179:
	.loc	3 64 41 is_stmt 1               # temp_allocator.c3:64:41
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# %bb.2:
	leaq	.panic_msg.50(%rip), %rdi
	movl	$32, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$64, (%rsp)
	callq	*(%rax)
.Ltmp180:
.LBB20_3:
	.loc	3 0 41 is_stmt 0                # temp_allocator.c3:0:41
	movq	-80(%rbp), %rax                 # 8-byte Reload
	.loc	3 64 51                         # temp_allocator.c3:64:51
	movq	-40(%rbp), %rdx
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	andq	16(%rdx), %rcx
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	cmpq	%rdx, %rcx
	sete	%cl
	movb	%cl, -89(%rbp)                  # 1-byte Spill
.Ltmp181:
	.loc	3 185 9 is_stmt 1               # temp_allocator.c3:185:9
	cmpq	$0, %rax
	jne	.LBB20_5
# %bb.4:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$185, (%rsp)
	callq	*(%rax)
.LBB20_5:
	.loc	3 0 9 is_stmt 0                 # temp_allocator.c3:0:9
	movq	-88(%rbp), %rax                 # 8-byte Reload
	.loc	3 185 9                         # temp_allocator.c3:185:9
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	.loc	3 183 1 is_stmt 1               # temp_allocator.c3:183:1
	cmpq	-56(%rbp), %rax
	je	.LBB20_7
# %bb.6:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-104(%rbp), %rax                # 8-byte Reload
	.loc	3 183 1                         # temp_allocator.c3:183:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-104(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
.LBB20_8:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-112(%rbp), %rax                # 8-byte Reload
	movq	%rax, -120(%rbp)                # 8-byte Spill
	.loc	3 183 1                         # temp_allocator.c3:183:1
	cmpq	$0, %rax
	jne	.LBB20_10
# %bb.9:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$185, (%rsp)
	callq	*(%rax)
.LBB20_10:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movb	-89(%rbp), %cl                  # 1-byte Reload
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	.loc	3 183 1                         # temp_allocator.c3:183:1
	movq	(%rdx), %rdi
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	*%rax
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 183 1 epilogue_begin          # temp_allocator.c3:183:1
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB20_11:
	.cfi_def_cfa %rbp, 16
	.loc	3 182 35 is_stmt 1              # temp_allocator.c3:182:35
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.49(%rip), %r8
	movl	$10, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.Ltmp182:
.Lfunc_end20:
	.size	std.core.mem.allocator.TempAllocator._free_page, .Lfunc_end20-std.core.mem.allocator.TempAllocator._free_page
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.TempAllocator._realloc_page
	.type	std.core.mem.allocator.TempAllocator._realloc_page,@function
std.core.mem.allocator.TempAllocator._realloc_page: # @std.core.mem.allocator.TempAllocator._realloc_page
.Lfunc_begin21:
	.loc	3 188 0                         # temp_allocator.c3:188:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp                      # imm = 0x230
	movq	%rdi, -384(%rbp)                # 8-byte Spill
	movq	%rsi, -376(%rbp)                # 8-byte Spill
	movq	%rdx, -368(%rbp)                # 8-byte Spill
	movq	%rcx, -360(%rbp)                # 8-byte Spill
	movq	%r8, -352(%rbp)                 # 8-byte Spill
.Ltmp183:
	.loc	3 189 1 prologue_end            # temp_allocator.c3:189:1
	movq	$0, -336(%rbp)
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB21_50
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-352(%rbp), %rax                # 8-byte Reload
	movq	-360(%rbp), %rcx                # 8-byte Reload
	movq	-368(%rbp), %rdx                # 8-byte Reload
	movq	-376(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	3 191 23 is_stmt 1              # temp_allocator.c3:191:23
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc	3 194 41                        # temp_allocator.c3:194:41
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
.LBB21_2:                               # =>This Inner Loop Header: Depth=1
.Ltmp184:
	.loc	3 196 10                        # temp_allocator.c3:196:10
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB21_51
# %bb.3:                                #   in Loop: Header=BB21_2 Depth=1
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-392(%rbp), %rax                # 8-byte Reload
	.loc	3 196 10                        # temp_allocator.c3:196:10
	andq	$7, %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB21_52
# %bb.4:                                #   in Loop: Header=BB21_2 Depth=1
	.loc	3 0 10                          # temp_allocator.c3:0:10
	movq	-392(%rbp), %rax                # 8-byte Reload
	.loc	3 196 10                        # temp_allocator.c3:196:10
	movq	(%rax), %rax
	.loc	3 196 9                         # temp_allocator.c3:196:9
	cmpq	-16(%rbp), %rax
	je	.LBB21_8
# %bb.5:                                #   in Loop: Header=BB21_2 Depth=1
.Ltmp185:
	.loc	3 198 25 is_stmt 1              # temp_allocator.c3:198:25
	movq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB21_53
# %bb.6:                                #   in Loop: Header=BB21_2 Depth=1
	.loc	3 0 25 is_stmt 0                # temp_allocator.c3:0:25
	movq	-408(%rbp), %rax                # 8-byte Reload
	.loc	3 198 25                        # temp_allocator.c3:198:25
	andq	$7, %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB21_54
# %bb.7:                                #   in Loop: Header=BB21_2 Depth=1
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-408(%rbp), %rax                # 8-byte Reload
	.loc	3 198 25                        # temp_allocator.c3:198:25
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB21_2
.Ltmp186:
.LBB21_8:
	.loc	3 200 21 is_stmt 1              # temp_allocator.c3:200:21
	movq	-16(%rbp), %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	.loc	3 200 3 is_stmt 0               # temp_allocator.c3:200:3
	movq	-48(%rbp), %rax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB21_55
# %bb.9:
	.loc	3 0 3                           # temp_allocator.c3:0:3
	movq	-424(%rbp), %rax                # 8-byte Reload
	.loc	3 200 3                         # temp_allocator.c3:200:3
	andq	$7, %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB21_56
# %bb.10:
	.loc	3 0 3                           # temp_allocator.c3:0:3
	movq	-424(%rbp), %rax                # 8-byte Reload
	movq	-432(%rbp), %rcx                # 8-byte Reload
	.loc	3 200 3                         # temp_allocator.c3:200:3
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)
.Ltmp187:
	.loc	3 63 38 is_stmt 1               # temp_allocator.c3:63:38
	cmpq	$0, -256(%rbp)
	jne	.LBB21_12
# %bb.11:
	leaq	.panic_msg.50(%rip), %rdi
	movl	$32, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$63, (%rsp)
	callq	*(%rax)
.Ltmp188:
.LBB21_12:
	.loc	3 63 48 is_stmt 0               # temp_allocator.c3:63:48
	movq	-256(%rbp), %rcx
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	andq	16(%rcx), %rax
	movq	%rax, -248(%rbp)
.Ltmp189:
	.loc	3 203 15 is_stmt 1              # temp_allocator.c3:203:15
	movq	-8(%rbp), %rax
	movq	%rax, -464(%rbp)                # 8-byte Spill
	.loc	3 203 28 is_stmt 0              # temp_allocator.c3:203:28
	movq	-24(%rbp), %rcx
	movq	%rcx, -456(%rbp)                # 8-byte Spill
	.loc	3 203 43                        # temp_allocator.c3:203:43
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)                # 8-byte Spill
	.loc	3 203 15                        # temp_allocator.c3:203:15
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB21_14
# %bb.13:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$203, (%rsp)
	callq	*(%rax)
.LBB21_14:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-448(%rbp), %rcx                # 8-byte Reload
	.loc	3 257 11 is_stmt 1              # temp_allocator.c3:257:11
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -465(%rbp)                 # 1-byte Spill
	je	.LBB21_18
# %bb.15:
	.loc	3 0 11 is_stmt 0                # temp_allocator.c3:0:11
	movq	-448(%rbp), %rax                # 8-byte Reload
	movq	%rax, -280(%rbp)
.Ltmp190:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-280(%rbp), %rcx
	movb	%al, -466(%rbp)                 # 1-byte Spill
	je	.LBB21_17
# %bb.16:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-280(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-280(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -466(%rbp)                 # 1-byte Spill
.LBB21_17:
	.loc	5 0 19                          # math.c3:0:19
	movb	-466(%rbp), %al                 # 1-byte Reload
	movb	%al, -465(%rbp)                 # 1-byte Spill
.LBB21_18:
	movb	-465(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB21_20
.Ltmp191:
# %bb.19:
	.loc	3 203 15 is_stmt 1              # temp_allocator.c3:203:15
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$203, (%rsp)
	callq	*(%rax)
.LBB21_20:
	.loc	3 0 15 is_stmt 0                # temp_allocator.c3:0:15
	movq	-448(%rbp), %rax                # 8-byte Reload
	.loc	3 203 15                        # temp_allocator.c3:203:15
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB21_22
# %bb.21:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$203, (%rsp)
	callq	*(%rax)
.LBB21_22:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-448(%rbp), %r8                 # 8-byte Reload
	movq	-456(%rbp), %rdx                # 8-byte Reload
	movq	-464(%rbp), %rsi                # 8-byte Reload
	.loc	3 203 15                        # temp_allocator.c3:203:15
	leaq	-288(%rbp), %rdi
	xorl	%ecx, %ecx
	callq	std.core.mem.allocator.TempAllocator.acquire@PLT
	movq	%rax, -480(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB21_24
# %bb.23:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-480(%rbp), %rax                # 8-byte Reload
	.loc	3 203 15                        # temp_allocator.c3:203:15
	movq	%rax, -272(%rbp)
	jmp	.LBB21_25
.LBB21_24:
	jmp	.LBB21_26
.LBB21_25:
	movq	-272(%rbp), %rax
	.loc	3 203 15 epilogue_begin         # temp_allocator.c3:203:15
	addq	$560, %rsp                      # imm = 0x230
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_26:
	.cfi_def_cfa %rbp, 16
	movq	-288(%rbp), %rax
	movq	%rax, -264(%rbp)
	.loc	3 204 6 is_stmt 1               # temp_allocator.c3:204:6
	movq	-248(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB21_28
# %bb.27:
	.loc	3 204 36 is_stmt 0              # temp_allocator.c3:204:36
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB21_28:
	.loc	3 0 36                          # temp_allocator.c3:0:36
	movq	-264(%rbp), %rax
	movq	%rax, -296(%rbp)
	.loc	3 205 19 is_stmt 1              # temp_allocator.c3:205:19
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -304(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -312(%rbp)
.Ltmp192:
	.loc	6 357 23                        # mem.c3:357:23
	cmpq	$0, -296(%rbp)
	jne	.LBB21_30
# %bb.29:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$37, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB21_30:
	.loc	6 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -304(%rbp)
	movb	%al, -481(%rbp)                 # 1-byte Spill
	jne	.LBB21_32
# %bb.31:
	.loc	6 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-312(%rbp), %rax
	sete	%al
	movb	%al, -481(%rbp)                 # 1-byte Spill
.LBB21_32:
	.loc	6 0 26                          # mem.c3:0:26
	movb	-481(%rbp), %al                 # 1-byte Reload
	.loc	6 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB21_34
# %bb.33:
	.loc	6 205 2 is_stmt 1               # mem.c3:205:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$205, (%rsp)
	callq	*(%rax)
.LBB21_34:
	.loc	6 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-312(%rbp), %rcx
	movb	%al, -482(%rbp)                 # 1-byte Spill
	je	.LBB21_36
# %bb.35:
	.loc	6 355 23 is_stmt 0              # mem.c3:355:23
	movq	-296(%rbp), %rax
	.loc	6 355 29                        # mem.c3:355:29
	addq	-312(%rbp), %rax
	.loc	6 355 23                        # mem.c3:355:23
	cmpq	-304(%rbp), %rax
	setbe	%al
	movb	%al, -482(%rbp)                 # 1-byte Spill
.LBB21_36:
	.loc	6 0 23                          # mem.c3:0:23
	movb	-482(%rbp), %cl                 # 1-byte Reload
	.loc	6 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -483(%rbp)                 # 1-byte Spill
	jne	.LBB21_38
# %bb.37:
	.loc	6 355 43                        # mem.c3:355:43
	movq	-304(%rbp), %rax
	.loc	6 355 49                        # mem.c3:355:49
	addq	-312(%rbp), %rax
	.loc	6 355 43                        # mem.c3:355:43
	cmpq	-296(%rbp), %rax
	setbe	%al
	movb	%al, -483(%rbp)                 # 1-byte Spill
.LBB21_38:
	.loc	6 0 43                          # mem.c3:0:43
	movb	-483(%rbp), %al                 # 1-byte Reload
	.loc	6 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB21_40
# %bb.39:
	.loc	6 205 2 is_stmt 1               # mem.c3:205:2
	leaq	.panic_msg.15(%rip), %rdi
	movl	$95, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$205, (%rsp)
	callq	*(%rax)
.Ltmp193:
.LBB21_40:
	.loc	6 359 11                        # mem.c3:359:11
	movq	-296(%rbp), %rdi
	.loc	6 359 16 is_stmt 0              # mem.c3:359:16
	movq	-304(%rbp), %rsi
	.loc	6 359 21                        # mem.c3:359:21
	movq	-312(%rbp), %rdx
	.loc	6 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
.Ltmp194:
	.loc	3 206 2 is_stmt 1               # temp_allocator.c3:206:2
	movq	-8(%rbp), %rax
	movq	%rax, -504(%rbp)                # 8-byte Spill
	.loc	3 206 33 is_stmt 0              # temp_allocator.c3:206:33
	movq	-40(%rbp), %rax
	movq	%rax, -496(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)
.Ltmp195:
	.loc	3 64 41 is_stmt 1               # temp_allocator.c3:64:41
	cmpq	$0, -320(%rbp)
	jne	.LBB21_42
# %bb.41:
	leaq	.panic_msg.50(%rip), %rdi
	movl	$32, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$64, (%rsp)
	callq	*(%rax)
.Ltmp196:
.LBB21_42:
	.loc	3 0 41 is_stmt 0                # temp_allocator.c3:0:41
	movq	-496(%rbp), %rax                # 8-byte Reload
	.loc	3 64 51                         # temp_allocator.c3:64:51
	movq	-320(%rbp), %rdx
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	andq	16(%rdx), %rcx
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	cmpq	%rdx, %rcx
	sete	%cl
	movb	%cl, -505(%rbp)                 # 1-byte Spill
.Ltmp197:
	.loc	3 206 2 is_stmt 1               # temp_allocator.c3:206:2
	cmpq	$0, %rax
	jne	.LBB21_44
# %bb.43:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB21_44:
	.loc	3 0 2 is_stmt 0                 # temp_allocator.c3:0:2
	movq	-504(%rbp), %rax                # 8-byte Reload
	.loc	3 206 2                         # temp_allocator.c3:206:2
	movq	8(%rax), %rax
	movq	%rax, -520(%rbp)                # 8-byte Spill
	.loc	3 189 1 is_stmt 1               # temp_allocator.c3:189:1
	cmpq	-336(%rbp), %rax
	je	.LBB21_46
# %bb.45:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-520(%rbp), %rax                # 8-byte Reload
	.loc	3 189 1                         # temp_allocator.c3:189:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-520(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%rax, -528(%rbp)                # 8-byte Spill
	jmp	.LBB21_47
.LBB21_46:
	movq	-328(%rbp), %rax
	movq	%rax, -528(%rbp)                # 8-byte Spill
.LBB21_47:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-528(%rbp), %rax                # 8-byte Reload
	movq	%rax, -536(%rbp)                # 8-byte Spill
	.loc	3 189 1                         # temp_allocator.c3:189:1
	cmpq	$0, %rax
	jne	.LBB21_49
# %bb.48:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB21_49:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-536(%rbp), %rax                # 8-byte Reload
	movq	-496(%rbp), %rsi                # 8-byte Reload
	movb	-505(%rbp), %cl                 # 1-byte Reload
	movq	-504(%rbp), %rdx                # 8-byte Reload
	.loc	3 189 1                         # temp_allocator.c3:189:1
	movq	(%rdx), %rdi
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	*%rax
	movq	-384(%rbp), %rax                # 8-byte Reload
	.loc	3 207 9 is_stmt 1               # temp_allocator.c3:207:9
	movq	-264(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 207 9 epilogue_begin is_stmt 0 # temp_allocator.c3:207:9
	addq	$560, %rsp                      # imm = 0x230
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_50:
	.cfi_def_cfa %rbp, 16
	.loc	3 188 39 is_stmt 1              # temp_allocator.c3:188:39
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$188, (%rsp)
	callq	*(%rax)
.LBB21_51:
.Ltmp198:
	.loc	3 196 10                        # temp_allocator.c3:196:10
	leaq	.panic_msg.52(%rip), %rdi
	movl	$56, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$196, (%rsp)
	callq	*(%rax)
.LBB21_52:
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-400(%rbp), %rcx                # 8-byte Reload
	movq	$8, -56(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -64(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	3 196 10                        # temp_allocator.c3:196:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	leaq	-112(%rbp), %rax
	movl	$196, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB21_53:
.Ltmp199:
	.loc	3 198 25 is_stmt 1              # temp_allocator.c3:198:25
	leaq	.panic_msg.52(%rip), %rdi
	movl	$56, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$198, (%rsp)
	callq	*(%rax)
.LBB21_54:
	.loc	3 0 25 is_stmt 0                # temp_allocator.c3:0:25
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	$8, -120(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -128(%rbp)
	movq	%rax, -152(%rbp)
	leaq	-120(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	%rax, -136(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$2, -168(%rbp)
	.loc	3 198 25                        # temp_allocator.c3:198:25
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	leaq	-176(%rbp), %rax
	movl	$198, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp200:
.LBB21_55:
	.loc	3 200 3 is_stmt 1               # temp_allocator.c3:200:3
	leaq	.panic_msg.52(%rip), %rdi
	movl	$56, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$200, (%rsp)
	callq	*(%rax)
.LBB21_56:
	.loc	3 0 3 is_stmt 0                 # temp_allocator.c3:0:3
	movq	-440(%rbp), %rcx                # 8-byte Reload
	movq	$8, -184(%rbp)
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
	.loc	3 200 3                         # temp_allocator.c3:200:3
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	leaq	-240(%rbp), %rax
	movl	$200, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp201:
.Lfunc_end21:
	.size	std.core.mem.allocator.TempAllocator._realloc_page, .Lfunc_end21-std.core.mem.allocator.TempAllocator._realloc_page
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.TempAllocator.resize,"axG",@progbits,std.core.mem.allocator.TempAllocator.resize,comdat
	.weak	std.core.mem.allocator.TempAllocator.resize # -- Begin function std.core.mem.allocator.TempAllocator.resize
	.p2align	4, 0x90
	.type	std.core.mem.allocator.TempAllocator.resize,@function
std.core.mem.allocator.TempAllocator.resize: # @std.core.mem.allocator.TempAllocator.resize
.Lfunc_begin22:
	.loc	3 210 0 is_stmt 1               # temp_allocator.c3:210:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$832, %rsp                      # imm = 0x340
	movq	%rdi, -544(%rbp)                # 8-byte Spill
	movq	%rsi, -536(%rbp)                # 8-byte Spill
	movq	%rdx, -528(%rbp)                # 8-byte Spill
	movq	%rcx, -520(%rbp)                # 8-byte Spill
	movq	%r8, -512(%rbp)                 # 8-byte Spill
.Ltmp202:
	.loc	3 211 1 prologue_end            # temp_allocator.c3:211:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB22_101
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-512(%rbp), %rax                # 8-byte Reload
	movq	-520(%rbp), %rcx                # 8-byte Reload
	movq	-528(%rbp), %rdx                # 8-byte Reload
	movq	-536(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -344(%rbp)
	movq	%rdx, -352(%rbp)
	movq	%rcx, -360(%rbp)
	movq	%rax, -368(%rbp)
	.loc	3 212 30 is_stmt 1              # temp_allocator.c3:212:30
	movq	-352(%rbp), %rax
	.loc	3 212 40 is_stmt 0              # temp_allocator.c3:212:40
	addq	$-8, %rax
	movq	%rax, -376(%rbp)
	.loc	3 213 6 is_stmt 1               # temp_allocator.c3:213:6
	movq	-376(%rbp), %rax
	cmpq	$-1, (%rax)
	jne	.LBB22_63
# %bb.2:
.Ltmp203:
	.loc	3 215 10                        # temp_allocator.c3:215:10
	movq	-344(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB22_4
# %bb.3:
	leaq	.panic_msg.53(%rip), %rdi
	movl	$27, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$215, (%rsp)
	callq	*(%rax)
.LBB22_4:
	.loc	3 217 29                        # temp_allocator.c3:217:29
	movq	-352(%rbp), %rax
	.loc	3 217 39 is_stmt 0              # temp_allocator.c3:217:39
	addq	$-32, %rax
	movq	%rax, -384(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -576(%rbp)                # 8-byte Spill
	movq	-384(%rbp), %rcx
	movq	%rcx, -568(%rbp)                # 8-byte Spill
	movq	-360(%rbp), %rcx
	movq	%rcx, -560(%rbp)                # 8-byte Spill
	movq	-368(%rbp), %rcx
	movq	%rcx, -552(%rbp)                # 8-byte Spill
.Ltmp204:
	.loc	3 189 1 is_stmt 1               # temp_allocator.c3:189:1
	movq	$0, -336(%rbp)
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB22_52
# %bb.5:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-552(%rbp), %rax                # 8-byte Reload
	movq	-560(%rbp), %rcx                # 8-byte Reload
	movq	-568(%rbp), %rdx                # 8-byte Reload
	movq	-576(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	3 191 23 is_stmt 1              # temp_allocator.c3:191:23
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc	3 194 41                        # temp_allocator.c3:194:41
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
.LBB22_6:                               # =>This Inner Loop Header: Depth=1
.Ltmp205:
	.loc	3 196 10                        # temp_allocator.c3:196:10
	movq	-48(%rbp), %rax
	movq	%rax, -584(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB22_53
# %bb.7:                                #   in Loop: Header=BB22_6 Depth=1
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-584(%rbp), %rax                # 8-byte Reload
	.loc	3 196 10                        # temp_allocator.c3:196:10
	andq	$7, %rax
	movq	%rax, -592(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB22_54
# %bb.8:                                #   in Loop: Header=BB22_6 Depth=1
	.loc	3 0 10                          # temp_allocator.c3:0:10
	movq	-584(%rbp), %rax                # 8-byte Reload
	.loc	3 196 10                        # temp_allocator.c3:196:10
	movq	(%rax), %rax
	.loc	3 196 9                         # temp_allocator.c3:196:9
	cmpq	-16(%rbp), %rax
	je	.LBB22_12
# %bb.9:                                #   in Loop: Header=BB22_6 Depth=1
.Ltmp206:
	.loc	3 198 25 is_stmt 1              # temp_allocator.c3:198:25
	movq	-48(%rbp), %rax
	movq	%rax, -600(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB22_55
# %bb.10:                               #   in Loop: Header=BB22_6 Depth=1
	.loc	3 0 25 is_stmt 0                # temp_allocator.c3:0:25
	movq	-600(%rbp), %rax                # 8-byte Reload
	.loc	3 198 25                        # temp_allocator.c3:198:25
	andq	$7, %rax
	movq	%rax, -608(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB22_56
# %bb.11:                               #   in Loop: Header=BB22_6 Depth=1
	.loc	3 0 25                          # temp_allocator.c3:0:25
	movq	-600(%rbp), %rax                # 8-byte Reload
	.loc	3 198 25                        # temp_allocator.c3:198:25
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB22_6
.Ltmp207:
.LBB22_12:
	.loc	3 200 21 is_stmt 1              # temp_allocator.c3:200:21
	movq	-16(%rbp), %rax
	movq	%rax, -624(%rbp)                # 8-byte Spill
	.loc	3 200 3 is_stmt 0               # temp_allocator.c3:200:3
	movq	-48(%rbp), %rax
	movq	%rax, -616(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB22_57
# %bb.13:
	.loc	3 0 3                           # temp_allocator.c3:0:3
	movq	-616(%rbp), %rax                # 8-byte Reload
	.loc	3 200 3                         # temp_allocator.c3:200:3
	andq	$7, %rax
	movq	%rax, -632(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB22_58
# %bb.14:
	.loc	3 0 3                           # temp_allocator.c3:0:3
	movq	-616(%rbp), %rax                # 8-byte Reload
	movq	-624(%rbp), %rcx                # 8-byte Reload
	.loc	3 200 3                         # temp_allocator.c3:200:3
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)
.Ltmp208:
	.loc	3 63 38 is_stmt 1               # temp_allocator.c3:63:38
	cmpq	$0, -256(%rbp)
	jne	.LBB22_16
# %bb.15:
	leaq	.panic_msg.50(%rip), %rdi
	movl	$32, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$63, (%rsp)
	callq	*(%rax)
.Ltmp209:
.LBB22_16:
	.loc	3 63 48 is_stmt 0               # temp_allocator.c3:63:48
	movq	-256(%rbp), %rcx
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	andq	16(%rcx), %rax
	movq	%rax, -248(%rbp)
.Ltmp210:
	.loc	3 203 15 is_stmt 1              # temp_allocator.c3:203:15
	movq	-8(%rbp), %rax
	movq	%rax, -656(%rbp)                # 8-byte Spill
	.loc	3 203 28 is_stmt 0              # temp_allocator.c3:203:28
	movq	-24(%rbp), %rcx
	movq	%rcx, -648(%rbp)                # 8-byte Spill
	.loc	3 203 43                        # temp_allocator.c3:203:43
	movq	-32(%rbp), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
	.loc	3 203 15                        # temp_allocator.c3:203:15
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB22_18
# %bb.17:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$203, (%rsp)
	callq	*(%rax)
.LBB22_18:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-640(%rbp), %rcx                # 8-byte Reload
	.loc	3 257 11 is_stmt 1              # temp_allocator.c3:257:11
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -657(%rbp)                 # 1-byte Spill
	je	.LBB22_22
# %bb.19:
	.loc	3 0 11 is_stmt 0                # temp_allocator.c3:0:11
	movq	-640(%rbp), %rax                # 8-byte Reload
	movq	%rax, -280(%rbp)
.Ltmp211:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-280(%rbp), %rcx
	movb	%al, -658(%rbp)                 # 1-byte Spill
	je	.LBB22_21
# %bb.20:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-280(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-280(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -658(%rbp)                 # 1-byte Spill
.LBB22_21:
	.loc	5 0 19                          # math.c3:0:19
	movb	-658(%rbp), %al                 # 1-byte Reload
	movb	%al, -657(%rbp)                 # 1-byte Spill
.LBB22_22:
	movb	-657(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB22_24
.Ltmp212:
# %bb.23:
	.loc	3 203 15 is_stmt 1              # temp_allocator.c3:203:15
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$203, (%rsp)
	callq	*(%rax)
.LBB22_24:
	.loc	3 0 15 is_stmt 0                # temp_allocator.c3:0:15
	movq	-640(%rbp), %rax                # 8-byte Reload
	.loc	3 203 15                        # temp_allocator.c3:203:15
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB22_26
# %bb.25:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$203, (%rsp)
	callq	*(%rax)
.LBB22_26:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-640(%rbp), %r8                 # 8-byte Reload
	movq	-648(%rbp), %rdx                # 8-byte Reload
	movq	-656(%rbp), %rsi                # 8-byte Reload
	.loc	3 203 15                        # temp_allocator.c3:203:15
	leaq	-288(%rbp), %rdi
	xorl	%ecx, %ecx
	callq	std.core.mem.allocator.TempAllocator.acquire@PLT
	movq	%rax, -672(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB22_28
# %bb.27:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-672(%rbp), %rax                # 8-byte Reload
	.loc	3 203 15                        # temp_allocator.c3:203:15
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -680(%rbp)                # 8-byte Spill
	jmp	.LBB22_59
.LBB22_28:
	movq	-288(%rbp), %rax
	movq	%rax, -264(%rbp)
	.loc	3 204 6 is_stmt 1               # temp_allocator.c3:204:6
	movq	-248(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB22_30
# %bb.29:
	.loc	3 204 36 is_stmt 0              # temp_allocator.c3:204:36
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB22_30:
	.loc	3 0 36                          # temp_allocator.c3:0:36
	movq	-264(%rbp), %rax
	movq	%rax, -296(%rbp)
	.loc	3 205 19 is_stmt 1              # temp_allocator.c3:205:19
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -304(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -312(%rbp)
.Ltmp213:
	.loc	6 357 23                        # mem.c3:357:23
	cmpq	$0, -296(%rbp)
	jne	.LBB22_32
# %bb.31:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$37, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB22_32:
	.loc	6 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -304(%rbp)
	movb	%al, -681(%rbp)                 # 1-byte Spill
	jne	.LBB22_34
# %bb.33:
	.loc	6 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-312(%rbp), %rax
	sete	%al
	movb	%al, -681(%rbp)                 # 1-byte Spill
.LBB22_34:
	.loc	6 0 26                          # mem.c3:0:26
	movb	-681(%rbp), %al                 # 1-byte Reload
	.loc	6 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB22_36
# %bb.35:
	.loc	6 205 2 is_stmt 1               # mem.c3:205:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$205, (%rsp)
	callq	*(%rax)
.LBB22_36:
	.loc	6 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-312(%rbp), %rcx
	movb	%al, -682(%rbp)                 # 1-byte Spill
	je	.LBB22_38
# %bb.37:
	.loc	6 355 23 is_stmt 0              # mem.c3:355:23
	movq	-296(%rbp), %rax
	.loc	6 355 29                        # mem.c3:355:29
	addq	-312(%rbp), %rax
	.loc	6 355 23                        # mem.c3:355:23
	cmpq	-304(%rbp), %rax
	setbe	%al
	movb	%al, -682(%rbp)                 # 1-byte Spill
.LBB22_38:
	.loc	6 0 23                          # mem.c3:0:23
	movb	-682(%rbp), %cl                 # 1-byte Reload
	.loc	6 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -683(%rbp)                 # 1-byte Spill
	jne	.LBB22_40
# %bb.39:
	.loc	6 355 43                        # mem.c3:355:43
	movq	-304(%rbp), %rax
	.loc	6 355 49                        # mem.c3:355:49
	addq	-312(%rbp), %rax
	.loc	6 355 43                        # mem.c3:355:43
	cmpq	-296(%rbp), %rax
	setbe	%al
	movb	%al, -683(%rbp)                 # 1-byte Spill
.LBB22_40:
	.loc	6 0 43                          # mem.c3:0:43
	movb	-683(%rbp), %al                 # 1-byte Reload
	.loc	6 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB22_42
# %bb.41:
	.loc	6 205 2 is_stmt 1               # mem.c3:205:2
	leaq	.panic_msg.15(%rip), %rdi
	movl	$95, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$205, (%rsp)
	callq	*(%rax)
.Ltmp214:
.LBB22_42:
	.loc	6 359 11                        # mem.c3:359:11
	movq	-296(%rbp), %rdi
	.loc	6 359 16 is_stmt 0              # mem.c3:359:16
	movq	-304(%rbp), %rsi
	.loc	6 359 21                        # mem.c3:359:21
	movq	-312(%rbp), %rdx
	.loc	6 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
.Ltmp215:
	.loc	3 206 2 is_stmt 1               # temp_allocator.c3:206:2
	movq	-8(%rbp), %rax
	movq	%rax, -704(%rbp)                # 8-byte Spill
	.loc	3 206 33 is_stmt 0              # temp_allocator.c3:206:33
	movq	-40(%rbp), %rax
	movq	%rax, -696(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)
.Ltmp216:
	.loc	3 64 41 is_stmt 1               # temp_allocator.c3:64:41
	cmpq	$0, -320(%rbp)
	jne	.LBB22_44
# %bb.43:
	leaq	.panic_msg.50(%rip), %rdi
	movl	$32, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$64, (%rsp)
	callq	*(%rax)
.Ltmp217:
.LBB22_44:
	.loc	3 0 41 is_stmt 0                # temp_allocator.c3:0:41
	movq	-696(%rbp), %rax                # 8-byte Reload
	.loc	3 64 51                         # temp_allocator.c3:64:51
	movq	-320(%rbp), %rdx
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	andq	16(%rdx), %rcx
	movabsq	$-9223372036854775808, %rdx     # imm = 0x8000000000000000
	cmpq	%rdx, %rcx
	sete	%cl
	movb	%cl, -705(%rbp)                 # 1-byte Spill
.Ltmp218:
	.loc	3 206 2 is_stmt 1               # temp_allocator.c3:206:2
	cmpq	$0, %rax
	jne	.LBB22_46
# %bb.45:
	leaq	.panic_msg.23(%rip), %rdi
	movl	$75, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB22_46:
	.loc	3 0 2 is_stmt 0                 # temp_allocator.c3:0:2
	movq	-704(%rbp), %rax                # 8-byte Reload
	.loc	3 206 2                         # temp_allocator.c3:206:2
	movq	8(%rax), %rax
	movq	%rax, -720(%rbp)                # 8-byte Spill
	.loc	3 189 1 is_stmt 1               # temp_allocator.c3:189:1
	cmpq	-336(%rbp), %rax
	je	.LBB22_48
# %bb.47:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-720(%rbp), %rax                # 8-byte Reload
	.loc	3 189 1                         # temp_allocator.c3:189:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-720(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%rax, -728(%rbp)                # 8-byte Spill
	jmp	.LBB22_49
.LBB22_48:
	movq	-328(%rbp), %rax
	movq	%rax, -728(%rbp)                # 8-byte Spill
.LBB22_49:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-728(%rbp), %rax                # 8-byte Reload
	movq	%rax, -736(%rbp)                # 8-byte Spill
	.loc	3 189 1                         # temp_allocator.c3:189:1
	cmpq	$0, %rax
	jne	.LBB22_51
# %bb.50:
	leaq	.panic_msg.25(%rip), %rdi
	movl	$44, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$206, (%rsp)
	callq	*(%rax)
.LBB22_51:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-736(%rbp), %rax                # 8-byte Reload
	movq	-696(%rbp), %rsi                # 8-byte Reload
	movb	-705(%rbp), %cl                 # 1-byte Reload
	movq	-704(%rbp), %rdx                # 8-byte Reload
	.loc	3 189 1                         # temp_allocator.c3:189:1
	movq	(%rdx), %rdi
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	*%rax
	.loc	3 207 9 is_stmt 1               # temp_allocator.c3:207:9
	movq	-264(%rbp), %rax
	movq	%rax, -400(%rbp)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -680(%rbp)                # 8-byte Spill
	jmp	.LBB22_59
.LBB22_52:
	.loc	3 188 39                        # temp_allocator.c3:188:39
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$188, (%rsp)
	callq	*(%rax)
.LBB22_53:
.Ltmp219:
	.loc	3 196 10                        # temp_allocator.c3:196:10
	leaq	.panic_msg.52(%rip), %rdi
	movl	$56, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$196, (%rsp)
	callq	*(%rax)
.LBB22_54:
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-592(%rbp), %rcx                # 8-byte Reload
	movq	$8, -56(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -64(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-56(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	3 196 10                        # temp_allocator.c3:196:10
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	leaq	-112(%rbp), %rax
	movl	$196, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB22_55:
.Ltmp220:
	.loc	3 198 25 is_stmt 1              # temp_allocator.c3:198:25
	leaq	.panic_msg.52(%rip), %rdi
	movl	$56, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$198, (%rsp)
	callq	*(%rax)
.LBB22_56:
	.loc	3 0 25 is_stmt 0                # temp_allocator.c3:0:25
	movq	-608(%rbp), %rcx                # 8-byte Reload
	movq	$8, -120(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -128(%rbp)
	movq	%rax, -152(%rbp)
	leaq	-120(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	%rax, -136(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$2, -168(%rbp)
	.loc	3 198 25                        # temp_allocator.c3:198:25
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	leaq	-176(%rbp), %rax
	movl	$198, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp221:
.LBB22_57:
	.loc	3 200 3 is_stmt 1               # temp_allocator.c3:200:3
	leaq	.panic_msg.52(%rip), %rdi
	movl	$56, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$200, (%rsp)
	callq	*(%rax)
.LBB22_58:
	.loc	3 0 3 is_stmt 0                 # temp_allocator.c3:0:3
	movq	-632(%rbp), %rcx                # 8-byte Reload
	movq	$8, -184(%rbp)
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
	.loc	3 200 3                         # temp_allocator.c3:200:3
	leaq	.panic_msg.22(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.51(%rip), %r8
	movl	$13, %r9d
	leaq	-240(%rbp), %rax
	movl	$200, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp222:
.LBB22_59:
	.loc	3 0 3                           # temp_allocator.c3:0:3
	movq	-680(%rbp), %rax                # 8-byte Reload
	movq	%rax, -744(%rbp)                # 8-byte Spill
	.loc	3 218 10 is_stmt 1              # temp_allocator.c3:218:10
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB22_61
# %bb.60:
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-744(%rbp), %rax                # 8-byte Reload
	.loc	3 218 10                        # temp_allocator.c3:218:10
	movq	%rax, -392(%rbp)
	jmp	.LBB22_62
.LBB22_61:
	.loc	3 0 10                          # temp_allocator.c3:0:10
	movq	-544(%rbp), %rax                # 8-byte Reload
	.loc	3 218 10                        # temp_allocator.c3:218:10
	movq	-400(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 218 10 epilogue_begin         # temp_allocator.c3:218:10
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_62:
	.cfi_def_cfa %rbp, 16
	movq	-392(%rbp), %rax
	.loc	3 218 10 epilogue_begin         # temp_allocator.c3:218:10
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp223:
.LBB22_63:
	.cfi_def_cfa %rbp, 16
	.loc	3 220 41 is_stmt 1              # temp_allocator.c3:220:41
	movq	-352(%rbp), %rax
	.loc	3 220 28 is_stmt 0              # temp_allocator.c3:220:28
	movq	-376(%rbp), %rcx
	addq	(%rcx), %rax
	.loc	3 220 53                        # temp_allocator.c3:220:53
	movq	-344(%rbp), %rcx
	addq	$88, %rcx
	.loc	3 220 63                        # temp_allocator.c3:220:63
	movq	-344(%rbp), %rdx
	addq	64(%rdx), %rcx
	.loc	3 220 28                        # temp_allocator.c3:220:28
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movb	%al, -401(%rbp)
	.loc	3 221 6 is_stmt 1               # temp_allocator.c3:221:6
	testb	$1, -401(%rbp)
	je	.LBB22_69
# %bb.64:
.Ltmp224:
	.loc	3 223 14                        # temp_allocator.c3:223:14
	movq	-360(%rbp), %rax
	.loc	3 223 21 is_stmt 0              # temp_allocator.c3:223:21
	movq	-376(%rbp), %rcx
	.loc	3 223 14                        # temp_allocator.c3:223:14
	subq	(%rcx), %rax
	movq	%rax, -416(%rbp)
	.loc	3 224 7 is_stmt 1               # temp_allocator.c3:224:7
	cmpq	$0, -416(%rbp)
	jne	.LBB22_66
# %bb.65:
	.loc	3 0 7 is_stmt 0                 # temp_allocator.c3:0:7
	movq	-544(%rbp), %rax                # 8-byte Reload
	.loc	3 224 25                        # temp_allocator.c3:224:25
	movq	-352(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 224 25 epilogue_begin         # temp_allocator.c3:224:25
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_66:
	.cfi_def_cfa %rbp, 16
	.loc	3 225 7 is_stmt 1               # temp_allocator.c3:225:7
	movq	-344(%rbp), %rax
	movq	72(%rax), %rax
	.loc	3 225 23 is_stmt 0              # temp_allocator.c3:225:23
	movq	-344(%rbp), %rcx
	.loc	3 225 7                         # temp_allocator.c3:225:7
	subq	64(%rcx), %rax
	cmpq	%rax, -416(%rbp)
	setl	%cl
	cmpq	$0, %rax
	setl	%al
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB22_67
	jmp	.LBB22_68
.LBB22_67:
	.loc	3 0 7                           # temp_allocator.c3:0:7
	movq	-544(%rbp), %rax                # 8-byte Reload
.Ltmp225:
	.loc	3 227 4 is_stmt 1               # temp_allocator.c3:227:4
	movq	-376(%rbp), %rcx
	movq	(%rcx), %rdx
	addq	-416(%rbp), %rdx
	movq	%rdx, (%rcx)
	.loc	3 228 4                         # temp_allocator.c3:228:4
	movq	-344(%rbp), %rcx
	movq	64(%rcx), %rdx
	addq	-416(%rbp), %rdx
	movq	%rdx, 64(%rcx)
	.loc	3 239 11                        # temp_allocator.c3:239:11
	movq	-352(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 239 11 epilogue_begin is_stmt 0 # temp_allocator.c3:239:11
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_68:
	.cfi_def_cfa %rbp, 16
	jmp	.LBB22_69
.Ltmp226:
.LBB22_69:
	.loc	3 242 15 is_stmt 1              # temp_allocator.c3:242:15
	movq	-344(%rbp), %rax
	movq	%rax, -768(%rbp)                # 8-byte Spill
	.loc	3 242 28 is_stmt 0              # temp_allocator.c3:242:28
	movq	-360(%rbp), %rcx
	movq	%rcx, -760(%rbp)                # 8-byte Spill
	.loc	3 242 43                        # temp_allocator.c3:242:43
	movq	-368(%rbp), %rax
	movq	%rax, -752(%rbp)                # 8-byte Spill
	.loc	3 242 15                        # temp_allocator.c3:242:15
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB22_71
# %bb.70:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$242, (%rsp)
	callq	*(%rax)
.LBB22_71:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-752(%rbp), %rcx                # 8-byte Reload
	.loc	3 257 11 is_stmt 1              # temp_allocator.c3:257:11
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -769(%rbp)                 # 1-byte Spill
	je	.LBB22_75
# %bb.72:
	.loc	3 0 11 is_stmt 0                # temp_allocator.c3:0:11
	movq	-752(%rbp), %rax                # 8-byte Reload
	movq	%rax, -456(%rbp)
.Ltmp227:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-456(%rbp), %rcx
	movb	%al, -770(%rbp)                 # 1-byte Spill
	je	.LBB22_74
# %bb.73:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-456(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-456(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -770(%rbp)                 # 1-byte Spill
.LBB22_74:
	.loc	5 0 19                          # math.c3:0:19
	movb	-770(%rbp), %al                 # 1-byte Reload
	movb	%al, -769(%rbp)                 # 1-byte Spill
.LBB22_75:
	movb	-769(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB22_77
.Ltmp228:
# %bb.76:
	.loc	3 242 15 is_stmt 1              # temp_allocator.c3:242:15
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$242, (%rsp)
	callq	*(%rax)
.LBB22_77:
	.loc	3 0 15 is_stmt 0                # temp_allocator.c3:0:15
	movq	-752(%rbp), %rax                # 8-byte Reload
	.loc	3 242 15                        # temp_allocator.c3:242:15
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB22_79
# %bb.78:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$242, (%rsp)
	callq	*(%rax)
.LBB22_79:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-752(%rbp), %r8                 # 8-byte Reload
	movq	-760(%rbp), %rdx                # 8-byte Reload
	movq	-768(%rbp), %rsi                # 8-byte Reload
	.loc	3 242 15                        # temp_allocator.c3:242:15
	leaq	-464(%rbp), %rdi
	xorl	%ecx, %ecx
	callq	std.core.mem.allocator.TempAllocator.acquire@PLT
	movq	%rax, -784(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB22_81
# %bb.80:
	.loc	3 0 15                          # temp_allocator.c3:0:15
	movq	-784(%rbp), %rax                # 8-byte Reload
	.loc	3 242 15                        # temp_allocator.c3:242:15
	movq	%rax, -448(%rbp)
	jmp	.LBB22_82
.LBB22_81:
	jmp	.LBB22_83
.LBB22_82:
	movq	-448(%rbp), %rax
	.loc	3 242 15 epilogue_begin         # temp_allocator.c3:242:15
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_83:
	.cfi_def_cfa %rbp, 16
	movq	-464(%rbp), %rax
	movq	%rax, -440(%rbp)
	.loc	3 243 20 is_stmt 1              # temp_allocator.c3:243:20
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-360(%rbp), %rax
	jbe	.LBB22_85
# %bb.84:
	.loc	3 243 40 is_stmt 0              # temp_allocator.c3:243:40
	movq	-360(%rbp), %rax
	movq	%rax, -792(%rbp)                # 8-byte Spill
	jmp	.LBB22_86
.LBB22_85:
	.loc	3 243 47                        # temp_allocator.c3:243:47
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -792(%rbp)                # 8-byte Spill
.LBB22_86:
	.loc	3 0 47                          # temp_allocator.c3:0:47
	movq	-792(%rbp), %rax                # 8-byte Reload
	.loc	3 243 47                        # temp_allocator.c3:243:47
	movq	%rax, -472(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-472(%rbp), %rax
	movq	%rax, -496(%rbp)
.Ltmp229:
	.loc	6 357 23 is_stmt 1              # mem.c3:357:23
	cmpq	$0, -480(%rbp)
	jne	.LBB22_88
# %bb.87:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$37, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %r9d
	leaq	.func.11(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB22_88:
	.loc	6 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -488(%rbp)
	movb	%al, -793(%rbp)                 # 1-byte Spill
	jne	.LBB22_90
# %bb.89:
	.loc	6 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-496(%rbp), %rax
	sete	%al
	movb	%al, -793(%rbp)                 # 1-byte Spill
.LBB22_90:
	.loc	6 0 26                          # mem.c3:0:26
	movb	-793(%rbp), %al                 # 1-byte Reload
	.loc	6 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB22_92
# %bb.91:
	.loc	6 244 2 is_stmt 1               # mem.c3:244:2
	leaq	.panic_msg.14(%rip), %rdi
	movl	$94, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$244, (%rsp)
	callq	*(%rax)
.LBB22_92:
	.loc	6 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-496(%rbp), %rcx
	movb	%al, -794(%rbp)                 # 1-byte Spill
	je	.LBB22_94
# %bb.93:
	.loc	6 355 23 is_stmt 0              # mem.c3:355:23
	movq	-480(%rbp), %rax
	.loc	6 355 29                        # mem.c3:355:29
	addq	-496(%rbp), %rax
	.loc	6 355 23                        # mem.c3:355:23
	cmpq	-488(%rbp), %rax
	setbe	%al
	movb	%al, -794(%rbp)                 # 1-byte Spill
.LBB22_94:
	.loc	6 0 23                          # mem.c3:0:23
	movb	-794(%rbp), %cl                 # 1-byte Reload
	.loc	6 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -795(%rbp)                 # 1-byte Spill
	jne	.LBB22_96
# %bb.95:
	.loc	6 355 43                        # mem.c3:355:43
	movq	-488(%rbp), %rax
	.loc	6 355 49                        # mem.c3:355:49
	addq	-496(%rbp), %rax
	.loc	6 355 43                        # mem.c3:355:43
	cmpq	-480(%rbp), %rax
	setbe	%al
	movb	%al, -795(%rbp)                 # 1-byte Spill
.LBB22_96:
	.loc	6 0 43                          # mem.c3:0:43
	movb	-795(%rbp), %al                 # 1-byte Reload
	.loc	6 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB22_98
# %bb.97:
	.loc	6 244 2 is_stmt 1               # mem.c3:244:2
	leaq	.panic_msg.15(%rip), %rdi
	movl	$95, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$244, (%rsp)
	callq	*(%rax)
.Ltmp230:
.LBB22_98:
	.loc	6 359 11                        # mem.c3:359:11
	movq	-480(%rbp), %rdi
	.loc	6 359 16 is_stmt 0              # mem.c3:359:16
	movq	-488(%rbp), %rsi
	.loc	6 359 21                        # mem.c3:359:21
	movq	-496(%rbp), %rdx
	.loc	6 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
.Ltmp231:
	.loc	3 245 6 is_stmt 1               # temp_allocator.c3:245:6
	testb	$1, -401(%rbp)
	je	.LBB22_100
# %bb.99:
.Ltmp232:
	.loc	3 247 15                        # temp_allocator.c3:247:15
	movq	-376(%rbp), %rcx
	.loc	3 247 36 is_stmt 0              # temp_allocator.c3:247:36
	movq	-344(%rbp), %rax
	addq	$88, %rax
	.loc	3 247 15                        # temp_allocator.c3:247:15
	subq	%rax, %rcx
	.loc	3 247 3                         # temp_allocator.c3:247:3
	movq	-344(%rbp), %rax
	movq	%rcx, 64(%rax)
.Ltmp233:
.LBB22_100:
	.loc	3 0 3                           # temp_allocator.c3:0:3
	movq	-544(%rbp), %rax                # 8-byte Reload
	.loc	3 252 9 is_stmt 1               # temp_allocator.c3:252:9
	movq	-440(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 252 9 epilogue_begin is_stmt 0 # temp_allocator.c3:252:9
	addq	$832, %rsp                      # imm = 0x340
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_101:
	.cfi_def_cfa %rbp, 16
	.loc	3 210 32 is_stmt 1              # temp_allocator.c3:210:32
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$210, (%rsp)
	callq	*(%rax)
.Ltmp234:
.Lfunc_end22:
	.size	std.core.mem.allocator.TempAllocator.resize, .Lfunc_end22-std.core.mem.allocator.TempAllocator.resize
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.TempAllocator.acquire,"axG",@progbits,std.core.mem.allocator.TempAllocator.acquire,comdat
	.weak	std.core.mem.allocator.TempAllocator.acquire # -- Begin function std.core.mem.allocator.TempAllocator.acquire
	.p2align	4, 0x90
	.type	std.core.mem.allocator.TempAllocator.acquire,@function
std.core.mem.allocator.TempAllocator.acquire: # @std.core.mem.allocator.TempAllocator.acquire
.Lfunc_begin23:
	.loc	3 260 0                         # temp_allocator.c3:260:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$864, %rsp                      # imm = 0x360
	movq	%rdi, -520(%rbp)                # 8-byte Spill
	movq	%rsi, -512(%rbp)                # 8-byte Spill
	movq	%rdx, -504(%rbp)                # 8-byte Spill
	movl	%ecx, -492(%rbp)                # 4-byte Spill
	movq	%r8, -488(%rbp)                 # 8-byte Spill
.Ltmp235:
	.loc	3 261 1 prologue_end            # temp_allocator.c3:261:1
	movq	$0, -448(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -280(%rbp)
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB23_120
# %bb.1:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-488(%rbp), %rax                # 8-byte Reload
	movl	-492(%rbp), %ecx                # 4-byte Reload
	movq	-504(%rbp), %rdx                # 8-byte Reload
	movq	-512(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%rax, -40(%rbp)
.Ltmp236:
	.loc	3 256 11 is_stmt 1              # temp_allocator.c3:256:11
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-24(%rbp), %rax
	jb	.LBB23_3
# %bb.2:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$256, (%rsp)                    # imm = 0x100
	callq	*(%rax)
.LBB23_3:
	.loc	3 257 11                        # temp_allocator.c3:257:11
	movb	$1, %al
	cmpq	$0, -40(%rbp)
	movb	%al, -521(%rbp)                 # 1-byte Spill
	je	.LBB23_7
# %bb.4:
	.loc	3 0 11 is_stmt 0                # temp_allocator.c3:0:11
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.Ltmp237:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-48(%rbp), %rcx
	movb	%al, -522(%rbp)                 # 1-byte Spill
	je	.LBB23_6
# %bb.5:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-48(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-48(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -522(%rbp)                 # 1-byte Spill
.LBB23_6:
	.loc	5 0 19                          # math.c3:0:19
	movb	-522(%rbp), %al                 # 1-byte Reload
	movb	%al, -521(%rbp)                 # 1-byte Spill
.LBB23_7:
	movb	-521(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_9
.Ltmp238:
# %bb.8:
	.loc	3 257 11 is_stmt 1              # temp_allocator.c3:257:11
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$257, (%rsp)                    # imm = 0x101
	callq	*(%rax)
.LBB23_9:
	.loc	3 258 11                        # temp_allocator.c3:258:11
	cmpq	$268435456, -40(%rbp)           # imm = 0x10000000
	jbe	.LBB23_11
# %bb.10:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$258, (%rsp)                    # imm = 0x102
	callq	*(%rax)
.Ltmp239:
.LBB23_11:
	.loc	3 262 39                        # temp_allocator.c3:262:39
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.Ltmp240:
	.loc	2 70 9                          # mem_allocator.c3:70:9
	movl	$16, %eax
	cmpq	-8(%rbp), %rax
	jbe	.LBB23_13
# %bb.12:
	.loc	2 70 50 is_stmt 0               # mem_allocator.c3:70:50
	movl	$16, %eax
	movq	%rax, -536(%rbp)                # 8-byte Spill
	jmp	.LBB23_14
.LBB23_13:
	.loc	2 70 79                         # mem_allocator.c3:70:79
	movq	-8(%rbp), %rax
	movq	%rax, -536(%rbp)                # 8-byte Spill
.Ltmp241:
.LBB23_14:
	.loc	2 0 79                          # mem_allocator.c3:0:79
	movq	-536(%rbp), %rax                # 8-byte Reload
	.loc	3 262 14 is_stmt 1              # temp_allocator.c3:262:14
	movq	%rax, -40(%rbp)
	.loc	3 263 21                        # temp_allocator.c3:263:21
	movq	-16(%rbp), %rax
	addq	$88, %rax
	movq	%rax, -56(%rbp)
	.loc	3 264 23                        # temp_allocator.c3:264:23
	movq	-56(%rbp), %rax
	.loc	3 264 35 is_stmt 0              # temp_allocator.c3:264:35
	movq	-16(%rbp), %rcx
	addq	64(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$8, -88(%rbp)
.Ltmp242:
	.loc	6 313 37 is_stmt 1              # mem.c3:313:37
	movq	-80(%rbp), %rax
	movq	%rax, -560(%rbp)                # 8-byte Spill
	.loc	6 313 48 is_stmt 0              # mem.c3:313:48
	movq	-88(%rbp), %rax
	movq	%rax, -552(%rbp)                # 8-byte Spill
	movq	%rax, -96(%rbp)
.Ltmp243:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-96(%rbp), %rcx
	movb	%al, -537(%rbp)                 # 1-byte Spill
	je	.LBB23_16
# %bb.15:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-96(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-96(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -537(%rbp)                 # 1-byte Spill
.LBB23_16:
	.loc	5 0 19                          # math.c3:0:19
	movb	-537(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_18
.Ltmp244:
# %bb.17:
	.loc	6 313 22 is_stmt 1              # mem.c3:313:22
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$313, (%rsp)                    # imm = 0x139
	callq	*(%rax)
.LBB23_18:
	.loc	6 0 22 is_stmt 0                # mem.c3:0:22
	movq	-552(%rbp), %rsi                # 8-byte Reload
	movq	-560(%rbp), %rdi                # 8-byte Reload
	.loc	6 313 9                         # mem.c3:313:9
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, -72(%rbp)
.Ltmp245:
	.loc	3 266 14 is_stmt 1              # temp_allocator.c3:266:14
	movq	-72(%rbp), %rax
	.loc	3 266 37 is_stmt 0              # temp_allocator.c3:266:37
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	.loc	3 267 6 is_stmt 1               # temp_allocator.c3:267:6
	cmpq	$8, -40(%rbp)
	jbe	.LBB23_24
# %bb.19:
	.loc	3 0 6 is_stmt 0                 # temp_allocator.c3:0:6
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
.Ltmp246:
	.loc	6 313 37 is_stmt 1              # mem.c3:313:37
	movq	-112(%rbp), %rax
	movq	%rax, -584(%rbp)                # 8-byte Spill
	.loc	6 313 48 is_stmt 0              # mem.c3:313:48
	movq	-120(%rbp), %rax
	movq	%rax, -576(%rbp)                # 8-byte Spill
	movq	%rax, -128(%rbp)
.Ltmp247:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-128(%rbp), %rcx
	movb	%al, -561(%rbp)                 # 1-byte Spill
	je	.LBB23_21
# %bb.20:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-128(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-128(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -561(%rbp)                 # 1-byte Spill
.LBB23_21:
	.loc	5 0 19                          # math.c3:0:19
	movb	-561(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_23
.Ltmp248:
# %bb.22:
	.loc	6 313 22 is_stmt 1              # mem.c3:313:22
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.10(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$313, (%rsp)                    # imm = 0x139
	callq	*(%rax)
.LBB23_23:
	.loc	6 0 22 is_stmt 0                # mem.c3:0:22
	movq	-576(%rbp), %rsi                # 8-byte Reload
	movq	-584(%rbp), %rdi                # 8-byte Reload
	.loc	6 313 9                         # mem.c3:313:9
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, -104(%rbp)
.Ltmp249:
.LBB23_24:
	.loc	3 271 24 is_stmt 1              # temp_allocator.c3:271:24
	movq	-104(%rbp), %rax
	.loc	3 271 30 is_stmt 0              # temp_allocator.c3:271:30
	movq	-56(%rbp), %rcx
	.loc	3 271 18                        # temp_allocator.c3:271:18
	subq	%rcx, %rax
	sarq	$0, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	.loc	3 274 6 is_stmt 1               # temp_allocator.c3:274:6
	movq	-136(%rbp), %rax
	.loc	3 274 19 is_stmt 0              # temp_allocator.c3:274:19
	movq	-16(%rbp), %rcx
	.loc	3 274 6                         # temp_allocator.c3:274:6
	cmpq	72(%rcx), %rax
	ja	.LBB23_28
# %bb.25:
	.loc	3 0 6                           # temp_allocator.c3:0:6
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
.Ltmp250:
	.loc	3 276 46 is_stmt 1              # temp_allocator.c3:276:46
	movq	-136(%rbp), %rax
	.loc	3 276 58 is_stmt 0              # temp_allocator.c3:276:58
	movq	-16(%rbp), %rcx
	.loc	3 276 46                        # temp_allocator.c3:276:46
	subq	64(%rcx), %rax
	movq	%rax, -152(%rbp)
	.loc	3 277 37 is_stmt 1              # temp_allocator.c3:277:37
	movq	-104(%rbp), %rax
	.loc	3 277 43 is_stmt 0              # temp_allocator.c3:277:43
	addq	$-8, %rax
	movq	%rax, -160(%rbp)
	.loc	3 278 3 is_stmt 1               # temp_allocator.c3:278:3
	movq	-160(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	3 279 3                         # temp_allocator.c3:279:3
	movq	-16(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rcx, 64(%rax)
	.loc	3 280 7                         # temp_allocator.c3:280:7
	cmpl	$1, -28(%rbp)
	jne	.LBB23_27
# %bb.26:
	.loc	3 0 7 is_stmt 0                 # temp_allocator.c3:0:7
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)
.Ltmp251:
	.loc	6 336 11 is_stmt 1              # mem.c3:336:11
	movq	-168(%rbp), %rdi
	.loc	6 336 25 is_stmt 0              # mem.c3:336:25
	movq	-176(%rbp), %rdx
	.loc	6 336 30                        # mem.c3:336:30
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp252:
.LBB23_27:
	.loc	6 0 30                          # mem.c3:0:30
	movq	-520(%rbp), %rax                # 8-byte Reload
	.loc	3 281 10 is_stmt 1              # temp_allocator.c3:281:10
	movq	-104(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 281 10 epilogue_begin is_stmt 0 # temp_allocator.c3:281:10
	addq	$864, %rsp                      # imm = 0x360
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp253:
.LBB23_28:
	.cfi_def_cfa %rbp, 16
	.loc	3 285 21 is_stmt 1              # temp_allocator.c3:285:21
	movq	$0, -192(%rbp)
	.loc	3 288 6                         # temp_allocator.c3:288:6
	movl	$16, %eax
	cmpq	-40(%rbp), %rax
	jae	.LBB23_85
# %bb.29:
.Ltmp254:
	.loc	3 291 73                        # temp_allocator.c3:291:73
	movq	-24(%rbp), %rax
	.loc	3 291 46 is_stmt 0              # temp_allocator.c3:291:46
	addq	$32, %rax
	movq	%rax, -608(%rbp)                # 8-byte Spill
	.loc	3 291 79                        # temp_allocator.c3:291:79
	movq	-40(%rbp), %rax
	movq	%rax, -600(%rbp)                # 8-byte Spill
	movq	%rax, -208(%rbp)
.Ltmp255:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-208(%rbp), %rcx
	movb	%al, -585(%rbp)                 # 1-byte Spill
	je	.LBB23_31
# %bb.30:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-208(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-208(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -585(%rbp)                 # 1-byte Spill
.LBB23_31:
	.loc	5 0 19                          # math.c3:0:19
	movb	-585(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_33
.Ltmp256:
# %bb.32:
	.loc	3 291 26 is_stmt 1              # temp_allocator.c3:291:26
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$291, (%rsp)                    # imm = 0x123
	callq	*(%rax)
.LBB23_33:
	.loc	3 0 26 is_stmt 0                # temp_allocator.c3:0:26
	movq	-600(%rbp), %rsi                # 8-byte Reload
	movq	-608(%rbp), %rdi                # 8-byte Reload
	.loc	3 291 26                        # temp_allocator.c3:291:26
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, -200(%rbp)
	.loc	3 292 7 is_stmt 1               # temp_allocator.c3:292:7
	cmpl	$1, -28(%rbp)
	jne	.LBB23_57
# %bb.34:
.Ltmp257:
	.loc	3 294 36                        # temp_allocator.c3:294:36
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -232(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)
.Ltmp258:
	.loc	2 140 6                         # mem_allocator.c3:140:6
	cmpq	$0, -240(%rbp)
	jne	.LBB23_36
# %bb.35:
	.loc	2 140 20 is_stmt 0              # mem_allocator.c3:140:20
	movq	$0, -256(%rbp)
	jmp	.LBB23_54
.LBB23_36:
	.loc	2 141 27 is_stmt 1              # mem_allocator.c3:141:27
	movq	-240(%rbp), %rax
	movq	%rax, -632(%rbp)                # 8-byte Spill
	.loc	2 141 39 is_stmt 0              # mem_allocator.c3:141:39
	movq	-248(%rbp), %rcx
	movq	%rcx, -624(%rbp)                # 8-byte Spill
	.loc	2 38 12 is_stmt 1               # mem_allocator.c3:38:12
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -609(%rbp)                 # 1-byte Spill
	je	.LBB23_40
# %bb.37:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	-624(%rbp), %rax                # 8-byte Reload
	movq	%rax, -264(%rbp)
.Ltmp259:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-264(%rbp), %rcx
	movb	%al, -633(%rbp)                 # 1-byte Spill
	je	.LBB23_39
# %bb.38:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-264(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-264(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -633(%rbp)                 # 1-byte Spill
.LBB23_39:
	.loc	5 0 19                          # math.c3:0:19
	movb	-633(%rbp), %al                 # 1-byte Reload
	movb	%al, -609(%rbp)                 # 1-byte Spill
.LBB23_40:
	movb	-609(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_42
.Ltmp260:
# %bb.41:
	.loc	2 141 9 is_stmt 1               # mem_allocator.c3:141:9
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$141, (%rsp)
	callq	*(%rax)
.LBB23_42:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-624(%rbp), %rax                # 8-byte Reload
	.loc	2 141 9                         # mem_allocator.c3:141:9
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB23_44
# %bb.43:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$141, (%rsp)
	callq	*(%rax)
.LBB23_44:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-632(%rbp), %rcx                # 8-byte Reload
	.loc	2 141 9                         # mem_allocator.c3:141:9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB23_46
# %bb.45:
	leaq	.panic_msg.32(%rip), %rdi
	movl	$59, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$141, (%rsp)
	callq	*(%rax)
.LBB23_46:
	movq	-224(%rbp), %rax
	movq	%rax, -648(%rbp)                # 8-byte Spill
.Ltmp261:
	.loc	3 261 1 is_stmt 1               # temp_allocator.c3:261:1
	cmpq	-280(%rbp), %rax
	je	.LBB23_48
# %bb.47:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-648(%rbp), %rax                # 8-byte Reload
	.loc	3 261 1                         # temp_allocator.c3:261:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-648(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -272(%rbp)
	movq	%rcx, -280(%rbp)
	movq	%rax, -656(%rbp)                # 8-byte Spill
	jmp	.LBB23_49
.LBB23_48:
	movq	-272(%rbp), %rax
	movq	%rax, -656(%rbp)                # 8-byte Spill
.LBB23_49:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-656(%rbp), %rax                # 8-byte Reload
	movq	%rax, -664(%rbp)                # 8-byte Spill
	.loc	3 261 1                         # temp_allocator.c3:261:1
	cmpq	$0, %rax
	jne	.LBB23_51
# %bb.50:
	leaq	.panic_msg.33(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$141, (%rsp)
	callq	*(%rax)
.LBB23_51:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-664(%rbp), %rax                # 8-byte Reload
	movq	-624(%rbp), %r8                 # 8-byte Reload
	movq	-632(%rbp), %rdx                # 8-byte Reload
	movq	-232(%rbp), %rsi
.Ltmp262:
	.loc	2 141 9 is_stmt 1               # mem_allocator.c3:141:9
	leaq	-288(%rbp), %rdi
	movl	$1, %ecx
	callq	*%rax
	movq	%rax, -672(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB23_53
# %bb.52:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-672(%rbp), %rax                # 8-byte Reload
	.loc	2 141 9                         # mem_allocator.c3:141:9
	movq	%rax, -216(%rbp)
	jmp	.LBB23_55
.LBB23_53:
	movq	-288(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB23_54:
	jmp	.LBB23_56
.LBB23_55:
	movq	-216(%rbp), %rax
	.loc	2 141 9 epilogue_begin          # mem_allocator.c3:141:9
	addq	$864, %rsp                      # imm = 0x360
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_56:
	.cfi_def_cfa %rbp, 16
	movq	-256(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB23_80
.Ltmp263:
.LBB23_57:
	.loc	3 298 36 is_stmt 1              # temp_allocator.c3:298:36
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -312(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)
.Ltmp264:
	.loc	2 128 6                         # mem_allocator.c3:128:6
	cmpq	$0, -320(%rbp)
	jne	.LBB23_59
# %bb.58:
	.loc	2 128 20 is_stmt 0              # mem_allocator.c3:128:20
	movq	$0, -336(%rbp)
	jmp	.LBB23_77
.LBB23_59:
	.loc	2 134 28 is_stmt 1              # mem_allocator.c3:134:28
	movq	-320(%rbp), %rax
	movq	%rax, -696(%rbp)                # 8-byte Spill
	.loc	2 134 43 is_stmt 0              # mem_allocator.c3:134:43
	movq	-328(%rbp), %rcx
	movq	%rcx, -688(%rbp)                # 8-byte Spill
	.loc	2 38 12 is_stmt 1               # mem_allocator.c3:38:12
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -673(%rbp)                 # 1-byte Spill
	je	.LBB23_63
# %bb.60:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	-688(%rbp), %rax                # 8-byte Reload
	movq	%rax, -344(%rbp)
.Ltmp265:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-344(%rbp), %rcx
	movb	%al, -697(%rbp)                 # 1-byte Spill
	je	.LBB23_62
# %bb.61:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-344(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-344(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -697(%rbp)                 # 1-byte Spill
.LBB23_62:
	.loc	5 0 19                          # math.c3:0:19
	movb	-697(%rbp), %al                 # 1-byte Reload
	movb	%al, -673(%rbp)                 # 1-byte Spill
.LBB23_63:
	movb	-673(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_65
.Ltmp266:
# %bb.64:
	.loc	2 134 10 is_stmt 1              # mem_allocator.c3:134:10
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$134, (%rsp)
	callq	*(%rax)
.LBB23_65:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-688(%rbp), %rax                # 8-byte Reload
	.loc	2 134 10                        # mem_allocator.c3:134:10
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB23_67
# %bb.66:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$134, (%rsp)
	callq	*(%rax)
.LBB23_67:
	.loc	2 0 10                          # mem_allocator.c3:0:10
	movq	-696(%rbp), %rcx                # 8-byte Reload
	.loc	2 134 10                        # mem_allocator.c3:134:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB23_69
# %bb.68:
	leaq	.panic_msg.32(%rip), %rdi
	movl	$59, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$134, (%rsp)
	callq	*(%rax)
.LBB23_69:
	movq	-304(%rbp), %rax
	movq	%rax, -712(%rbp)                # 8-byte Spill
.Ltmp267:
	.loc	3 261 1 is_stmt 1               # temp_allocator.c3:261:1
	cmpq	-360(%rbp), %rax
	je	.LBB23_71
# %bb.70:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-712(%rbp), %rax                # 8-byte Reload
	.loc	3 261 1                         # temp_allocator.c3:261:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-712(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -352(%rbp)
	movq	%rcx, -360(%rbp)
	movq	%rax, -720(%rbp)                # 8-byte Spill
	jmp	.LBB23_72
.LBB23_71:
	movq	-352(%rbp), %rax
	movq	%rax, -720(%rbp)                # 8-byte Spill
.LBB23_72:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-720(%rbp), %rax                # 8-byte Reload
	movq	%rax, -728(%rbp)                # 8-byte Spill
	.loc	3 261 1                         # temp_allocator.c3:261:1
	cmpq	$0, %rax
	jne	.LBB23_74
# %bb.73:
	leaq	.panic_msg.33(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$134, (%rsp)
	callq	*(%rax)
.LBB23_74:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-728(%rbp), %rax                # 8-byte Reload
	movq	-688(%rbp), %r8                 # 8-byte Reload
	movq	-696(%rbp), %rdx                # 8-byte Reload
	movq	-312(%rbp), %rsi
.Ltmp268:
	.loc	2 134 10 is_stmt 1              # mem_allocator.c3:134:10
	leaq	-368(%rbp), %rdi
	xorl	%ecx, %ecx
	callq	*%rax
	movq	%rax, -736(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB23_76
# %bb.75:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-736(%rbp), %rax                # 8-byte Reload
	.loc	2 134 10                        # mem_allocator.c3:134:10
	movq	%rax, -296(%rbp)
	jmp	.LBB23_78
.LBB23_76:
	movq	-368(%rbp), %rax
	movq	%rax, -336(%rbp)
.LBB23_77:
	jmp	.LBB23_79
.LBB23_78:
	movq	-296(%rbp), %rax
	.loc	2 134 10 epilogue_begin         # mem_allocator.c3:134:10
	addq	$864, %rsp                      # imm = 0x360
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_79:
	.cfi_def_cfa %rbp, 16
	movq	-336(%rbp), %rax
	movq	%rax, -104(%rbp)
.Ltmp269:
.LBB23_80:
	.loc	3 300 17 is_stmt 1              # temp_allocator.c3:300:17
	movq	-104(%rbp), %rax
	movq	%rax, -376(%rbp)
	.loc	3 301 3                         # temp_allocator.c3:301:3
	movq	-104(%rbp), %rax
	movq	%rax, -760(%rbp)                # 8-byte Spill
	.loc	3 301 56 is_stmt 0              # temp_allocator.c3:301:56
	movq	-40(%rbp), %rax
	movq	%rax, -752(%rbp)                # 8-byte Spill
	movq	%rax, -384(%rbp)
.Ltmp270:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-384(%rbp), %rcx
	movb	%al, -737(%rbp)                 # 1-byte Spill
	je	.LBB23_82
# %bb.81:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-384(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-384(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -737(%rbp)                 # 1-byte Spill
.LBB23_82:
	.loc	5 0 19                          # math.c3:0:19
	movb	-737(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_84
.Ltmp271:
# %bb.83:
	.loc	3 301 10 is_stmt 1              # temp_allocator.c3:301:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$301, (%rsp)                    # imm = 0x12D
	callq	*(%rax)
.LBB23_84:
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-752(%rbp), %rsi                # 8-byte Reload
	.loc	3 301 10                        # temp_allocator.c3:301:10
	movl	$32, %edi
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, %rcx
	movq	-760(%rbp), %rax                # 8-byte Reload
	.loc	3 301 3                         # temp_allocator.c3:301:3
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	.loc	3 302 30 is_stmt 1              # temp_allocator.c3:302:30
	movq	-104(%rbp), %rax
	.loc	3 302 36 is_stmt 0              # temp_allocator.c3:302:36
	addq	$-32, %rax
	movq	%rax, -192(%rbp)
	.loc	3 303 3 is_stmt 1               # temp_allocator.c3:303:3
	movq	-192(%rbp), %rax
	movq	-376(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.loc	3 304 15                        # temp_allocator.c3:304:15
	movabsq	$-9223372036854775808, %rcx     # imm = 0x8000000000000000
	orq	-24(%rbp), %rcx
	.loc	3 304 3 is_stmt 0               # temp_allocator.c3:304:3
	movq	-192(%rbp), %rax
	movq	%rcx, 16(%rax)
	jmp	.LBB23_119
.Ltmp272:
.LBB23_85:
	.loc	3 0 3                           # temp_allocator.c3:0:3
	movq	$16, -400(%rbp)
.Ltmp273:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-400(%rbp), %rcx
	movb	%al, -761(%rbp)                 # 1-byte Spill
	je	.LBB23_87
# %bb.86:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-400(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-400(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -761(%rbp)                 # 1-byte Spill
.LBB23_87:
	.loc	5 0 19                          # math.c3:0:19
	movb	-761(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_89
.Ltmp274:
# %bb.88:
	.loc	3 309 28 is_stmt 1              # temp_allocator.c3:309:28
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$309, (%rsp)                    # imm = 0x135
	callq	*(%rax)
.LBB23_89:
	movl	$32, %edi
	movl	$16, %esi
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, -392(%rbp)
	.loc	3 310 26                        # temp_allocator.c3:310:26
	movq	-392(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)
	.loc	3 311 17                        # temp_allocator.c3:311:17
	movq	-16(%rbp), %rax
	movq	%rax, -784(%rbp)                # 8-byte Spill
	.loc	3 311 48 is_stmt 0              # temp_allocator.c3:311:48
	movq	-408(%rbp), %rax
	movq	%rax, -776(%rbp)                # 8-byte Spill
	.loc	3 311 66                        # temp_allocator.c3:311:66
	movl	-28(%rbp), %eax
	movl	%eax, -768(%rbp)                # 4-byte Spill
	.loc	3 38 12 is_stmt 1               # temp_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -762(%rbp)                 # 1-byte Spill
	jne	.LBB23_93
# %bb.90:
	.loc	3 0 12 is_stmt 0                # temp_allocator.c3:0:12
	movq	$0, -432(%rbp)
.Ltmp275:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-432(%rbp), %rcx
	movb	%al, -785(%rbp)                 # 1-byte Spill
	je	.LBB23_92
# %bb.91:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-432(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-432(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -785(%rbp)                 # 1-byte Spill
.LBB23_92:
	.loc	5 0 19                          # math.c3:0:19
	movb	-785(%rbp), %al                 # 1-byte Reload
	movb	%al, -762(%rbp)                 # 1-byte Spill
.LBB23_93:
	movb	-762(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_95
.Ltmp276:
# %bb.94:
	.loc	3 311 17 is_stmt 1              # temp_allocator.c3:311:17
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$311, (%rsp)                    # imm = 0x137
	callq	*(%rax)
.LBB23_95:
	.loc	3 0 17 is_stmt 0                # temp_allocator.c3:0:17
	movq	-776(%rbp), %rcx                # 8-byte Reload
	.loc	3 311 17                        # temp_allocator.c3:311:17
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB23_97
# %bb.96:
	leaq	.panic_msg.32(%rip), %rdi
	movl	$59, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$311, (%rsp)                    # imm = 0x137
	callq	*(%rax)
.LBB23_97:
	.loc	3 0 17                          # temp_allocator.c3:0:17
	movq	-784(%rbp), %rax                # 8-byte Reload
	.loc	3 311 17                        # temp_allocator.c3:311:17
	movq	8(%rax), %rax
	movq	%rax, -800(%rbp)                # 8-byte Spill
.Ltmp277:
	.loc	3 261 1 is_stmt 1               # temp_allocator.c3:261:1
	cmpq	-448(%rbp), %rax
	je	.LBB23_99
# %bb.98:
	.loc	3 0 1 is_stmt 0                 # temp_allocator.c3:0:1
	movq	-800(%rbp), %rax                # 8-byte Reload
	.loc	3 261 1                         # temp_allocator.c3:261:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-800(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	%rcx, -448(%rbp)
	movq	%rax, -808(%rbp)                # 8-byte Spill
	jmp	.LBB23_100
.LBB23_99:
	movq	-440(%rbp), %rax
	movq	%rax, -808(%rbp)                # 8-byte Spill
.LBB23_100:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-808(%rbp), %rax                # 8-byte Reload
	movq	%rax, -816(%rbp)                # 8-byte Spill
	.loc	3 261 1                         # temp_allocator.c3:261:1
	cmpq	$0, %rax
	jne	.LBB23_102
# %bb.101:
	leaq	.panic_msg.33(%rip), %rdi
	movl	$44, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$311, (%rsp)                    # imm = 0x137
	callq	*(%rax)
.LBB23_102:
	.loc	3 0 1                           # temp_allocator.c3:0:1
	movq	-816(%rbp), %rax                # 8-byte Reload
	movl	-768(%rbp), %ecx                # 4-byte Reload
	movq	-776(%rbp), %rdx                # 8-byte Reload
	movq	-784(%rbp), %rsi                # 8-byte Reload
	movq	(%rsi), %rsi
.Ltmp278:
	.loc	3 311 17 is_stmt 1              # temp_allocator.c3:311:17
	leaq	-456(%rbp), %rdi
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -824(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB23_104
# %bb.103:
	.loc	3 0 17 is_stmt 0                # temp_allocator.c3:0:17
	movq	-824(%rbp), %rax                # 8-byte Reload
	.loc	3 311 17                        # temp_allocator.c3:311:17
	movq	%rax, -424(%rbp)
	jmp	.LBB23_105
.LBB23_104:
	jmp	.LBB23_106
.LBB23_105:
	movq	-424(%rbp), %rax
	.loc	3 311 17 epilogue_begin         # temp_allocator.c3:311:17
	addq	$864, %rsp                      # imm = 0x360
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_106:
	.cfi_def_cfa %rbp, 16
	movq	-456(%rbp), %rax
	movq	%rax, -416(%rbp)
	.loc	3 314 10 is_stmt 1              # temp_allocator.c3:314:10
	movq	-416(%rbp), %rax
	.loc	3 314 18 is_stmt 0              # temp_allocator.c3:314:18
	movq	-392(%rbp), %rcx
	.loc	3 314 10                        # temp_allocator.c3:314:10
	subq	$32, %rcx
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	.loc	3 315 30 is_stmt 1              # temp_allocator.c3:315:30
	movq	-192(%rbp), %rax
	movq	%rax, -840(%rbp)                # 8-byte Spill
	movq	$8, -464(%rbp)
.Ltmp279:
	.loc	5 992 9                         # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-464(%rbp), %rcx
	movb	%al, -825(%rbp)                 # 1-byte Spill
	je	.LBB23_108
# %bb.107:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-464(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-464(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -825(%rbp)                 # 1-byte Spill
.LBB23_108:
	.loc	5 0 19                          # math.c3:0:19
	movb	-825(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_110
.Ltmp280:
# %bb.109:
	.loc	3 315 10 is_stmt 1              # temp_allocator.c3:315:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$315, (%rsp)                    # imm = 0x13B
	callq	*(%rax)
.LBB23_110:
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-840(%rbp), %rdi                # 8-byte Reload
	.loc	3 315 10                        # temp_allocator.c3:315:10
	movl	$8, %esi
	callq	std.core.mem.ptr_is_aligned@PLT
	testb	$1, %al
	jne	.LBB23_112
# %bb.111:
	leaq	.panic_msg.54(%rip), %rdi
	movl	$65, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$315, (%rsp)                    # imm = 0x13B
	callq	*(%rax)
.LBB23_112:
	.loc	3 316 31 is_stmt 1              # temp_allocator.c3:316:31
	movq	-192(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -856(%rbp)                # 8-byte Spill
	movq	$16, -472(%rbp)
.Ltmp281:
	.loc	5 992 9                         # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-472(%rbp), %rcx
	movb	%al, -841(%rbp)                 # 1-byte Spill
	je	.LBB23_114
# %bb.113:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-472(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-472(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -841(%rbp)                 # 1-byte Spill
.LBB23_114:
	.loc	5 0 19                          # math.c3:0:19
	movb	-841(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB23_116
.Ltmp282:
# %bb.115:
	.loc	3 316 10 is_stmt 1              # temp_allocator.c3:316:10
	leaq	.panic_msg.9(%rip), %rdi
	movl	$51, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$316, (%rsp)                    # imm = 0x13C
	callq	*(%rax)
.LBB23_116:
	.loc	3 0 10 is_stmt 0                # temp_allocator.c3:0:10
	movq	-856(%rbp), %rdi                # 8-byte Reload
	.loc	3 316 10                        # temp_allocator.c3:316:10
	movl	$16, %esi
	callq	std.core.mem.ptr_is_aligned@PLT
	testb	$1, %al
	jne	.LBB23_118
# %bb.117:
	leaq	.panic_msg.55(%rip), %rdi
	movl	$79, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$316, (%rsp)                    # imm = 0x13C
	callq	*(%rax)
.LBB23_118:
	.loc	3 317 3 is_stmt 1               # temp_allocator.c3:317:3
	movq	-192(%rbp), %rax
	movq	-416(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.loc	3 318 3                         # temp_allocator.c3:318:3
	movq	-192(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
.Ltmp283:
.LBB23_119:
	.loc	3 0 3 is_stmt 0                 # temp_allocator.c3:0:3
	movq	-520(%rbp), %rax                # 8-byte Reload
	.loc	3 322 2 is_stmt 1               # temp_allocator.c3:322:2
	movq	-192(%rbp), %rcx
	movq	$-1, 24(%rcx)
	.loc	3 324 19                        # temp_allocator.c3:324:19
	movq	-16(%rbp), %rdx
	.loc	3 324 2 is_stmt 0               # temp_allocator.c3:324:2
	movq	-192(%rbp), %rcx
	movq	16(%rdx), %rdx
	movq	%rdx, (%rcx)
	.loc	3 325 2 is_stmt 1               # temp_allocator.c3:325:2
	movq	-16(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	.loc	3 326 10                        # temp_allocator.c3:326:10
	movq	-192(%rbp), %rcx
	addq	$32, %rcx
	.loc	3 326 20 is_stmt 0              # temp_allocator.c3:326:20
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 326 20 epilogue_begin         # temp_allocator.c3:326:20
	addq	$864, %rsp                      # imm = 0x360
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_120:
	.cfi_def_cfa %rbp, 16
	.loc	3 260 33 is_stmt 1              # temp_allocator.c3:260:33
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$260, (%rsp)                    # imm = 0x104
	callq	*(%rax)
.Ltmp284:
.Lfunc_end23:
	.size	std.core.mem.allocator.TempAllocator.acquire, .Lfunc_end23-std.core.mem.allocator.TempAllocator.acquire
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.new_temp_allocator,"axG",@progbits,std.core.mem.allocator.new_temp_allocator,comdat
	.weak	std.core.mem.allocator.new_temp_allocator # -- Begin function std.core.mem.allocator.new_temp_allocator
	.p2align	4, 0x90
	.type	std.core.mem.allocator.new_temp_allocator,@function
std.core.mem.allocator.new_temp_allocator: # @std.core.mem.allocator.new_temp_allocator
.Lfunc_begin24:
	.loc	3 72 0                          # temp_allocator.c3:72:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -160(%rbp)                # 8-byte Spill
	movq	16(%rbp), %rax
	movq	$0, -136(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.Ltmp285:
	.loc	3 67 11 prologue_end            # temp_allocator.c3:67:11
	movl	$64, %eax
	cmpq	-24(%rbp), %rax
	jbe	.LBB24_2
# %bb.1:
	leaq	.panic_msg.35(%rip), %rdi
	movl	$31, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$67, (%rsp)
	callq	*(%rax)
.LBB24_2:
	.loc	3 68 11                         # temp_allocator.c3:68:11
	movl	$64, %eax
	cmpq	16(%rbp), %rax
	jbe	.LBB24_4
# %bb.3:
	leaq	.panic_msg.38(%rip), %rdi
	movl	$39, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$68, (%rsp)
	callq	*(%rax)
.LBB24_4:
	.loc	3 69 11                         # temp_allocator.c3:69:11
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.LBB24_6
# %bb.5:
	leaq	.panic_msg.39(%rip), %rdi
	movl	$145, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$69, (%rsp)
	callq	*(%rax)
.LBB24_6:
	.loc	3 70 11                         # temp_allocator.c3:70:11
	movl	$152, %eax
	cmpq	-40(%rbp), %rax
	jb	.LBB24_8
# %bb.7:
	leaq	.panic_msg.40(%rip), %rdi
	movl	$114, %esi
	leaq	.file.36(%rip), %rdx
	movl	$17, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$70, (%rsp)
	callq	*(%rax)
.Ltmp286:
.LBB24_8:
	.loc	3 0 11 is_stmt 0                # temp_allocator.c3:0:11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
.Ltmp287:
	.loc	2 254 54 is_stmt 1              # mem_allocator.c3:254:54
	movq	-80(%rbp), %rax
	.loc	2 254 39 is_stmt 0              # mem_allocator.c3:254:39
	addq	$88, %rax
	movq	%rax, -104(%rbp)
.Ltmp288:
	.loc	2 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -104(%rbp)
	jne	.LBB24_10
# %bb.9:
	.loc	2 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -112(%rbp)
	jmp	.LBB24_28
.LBB24_10:
	.loc	2 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	.loc	2 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -161(%rbp)                 # 1-byte Spill
	jne	.LBB24_14
# %bb.11:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -120(%rbp)
.Ltmp289:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-120(%rbp), %rcx
	movb	%al, -177(%rbp)                 # 1-byte Spill
	je	.LBB24_13
# %bb.12:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-120(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-120(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -177(%rbp)                 # 1-byte Spill
.LBB24_13:
	.loc	5 0 19                          # math.c3:0:19
	movb	-177(%rbp), %al                 # 1-byte Reload
	movb	%al, -161(%rbp)                 # 1-byte Spill
.LBB24_14:
	movb	-161(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB24_16
.Ltmp290:
# %bb.15:
	.loc	2 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB24_16:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB24_18
	jmp	.LBB24_17
.LBB24_17:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB24_18:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-176(%rbp), %rcx                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB24_20
# %bb.19:
	leaq	.panic_msg.32(%rip), %rdi
	movl	$59, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB24_20:
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)                # 8-byte Spill
	cmpq	-136(%rbp), %rax
	je	.LBB24_22
# %bb.21:
	.loc	2 0 10                          # mem_allocator.c3:0:10
	movq	-192(%rbp), %rax                # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-192(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	%rax, -200(%rbp)                # 8-byte Spill
	jmp	.LBB24_23
.LBB24_22:
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
.LBB24_23:
	movq	-200(%rbp), %rax                # 8-byte Reload
	movq	%rax, -208(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB24_25
# %bb.24:
	.loc	2 86 10                         # mem_allocator.c3:86:10
	leaq	.panic_msg.33(%rip), %rdi
	movl	$44, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.37(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB24_25:
	.loc	2 0 10                          # mem_allocator.c3:0:10
	movq	-208(%rbp), %rax                # 8-byte Reload
	movq	-176(%rbp), %rdx                # 8-byte Reload
	movq	-96(%rbp), %rsi
	.loc	2 86 10                         # mem_allocator.c3:86:10
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB24_27
# %bb.26:
	.loc	2 0 10                          # mem_allocator.c3:0:10
	movq	-216(%rbp), %rax                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -56(%rbp)
	jmp	.LBB24_29
.LBB24_27:
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB24_28:
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	jmp	.LBB24_30
.LBB24_29:
	movq	-56(%rbp), %rax
	.loc	2 86 10 epilogue_begin          # mem_allocator.c3:86:10
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_30:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 10                          # mem_allocator.c3:0:10
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	-224(%rbp), %rcx                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	movq	%rcx, -48(%rbp)
.Ltmp291:
	.loc	3 75 2 is_stmt 1                # temp_allocator.c3:75:2
	movq	-48(%rbp), %rcx
	movq	$0, 16(%rcx)
	.loc	3 76 2                          # temp_allocator.c3:76:2
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	.loc	3 77 2                          # temp_allocator.c3:77:2
	movq	-48(%rbp), %rcx
	movq	$0, 64(%rcx)
	.loc	3 78 2                          # temp_allocator.c3:78:2
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, 56(%rcx)
	.loc	3 79 2                          # temp_allocator.c3:79:2
	movq	-48(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	%rdx, 48(%rcx)
	.loc	3 80 2                          # temp_allocator.c3:80:2
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rcx)
	.loc	3 81 2                          # temp_allocator.c3:81:2
	movq	-48(%rbp), %rcx
	movb	$1, 32(%rcx)
	.loc	3 82 2                          # temp_allocator.c3:82:2
	movq	-48(%rbp), %rcx
	movq	$0, 24(%rcx)
	.loc	3 83 27                         # temp_allocator.c3:83:27
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rcx)
	.loc	3 83 2 is_stmt 0                # temp_allocator.c3:83:2
	movq	-48(%rbp), %rcx
	movq	%rdx, 80(%rcx)
	.loc	3 84 9 is_stmt 1                # temp_allocator.c3:84:9
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	3 84 9 epilogue_begin is_stmt 0 # temp_allocator.c3:84:9
	addq	$240, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp292:
.Lfunc_end24:
	.size	std.core.mem.allocator.new_temp_allocator, .Lfunc_end24-std.core.mem.allocator.new_temp_allocator
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.LazyTempAllocator.acquire,"axG",@progbits,std.core.mem.allocator.LazyTempAllocator.acquire,comdat
	.weak	std.core.mem.allocator.LazyTempAllocator.acquire # -- Begin function std.core.mem.allocator.LazyTempAllocator.acquire
	.p2align	4, 0x90
	.type	std.core.mem.allocator.LazyTempAllocator.acquire,@function
std.core.mem.allocator.LazyTempAllocator.acquire: # @std.core.mem.allocator.LazyTempAllocator.acquire
.Lfunc_begin25:
	.loc	2 538 0 is_stmt 1               # mem_allocator.c3:538:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -112(%rbp)                # 8-byte Spill
	movq	%rsi, -104(%rbp)                # 8-byte Spill
	movq	%rdx, -96(%rbp)                 # 8-byte Spill
	movl	%ecx, -84(%rbp)                 # 4-byte Spill
	movq	%r8, -80(%rbp)                  # 8-byte Spill
.Ltmp293:
	.loc	2 539 1 prologue_end            # mem_allocator.c3:539:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB25_19
# %bb.1:
	.loc	2 0 1 is_stmt 0                 # mem_allocator.c3:0:1
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	-84(%rbp), %ecx                 # 4-byte Reload
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%rax, -32(%rbp)
	.loc	2 540 6 is_stmt 1               # mem_allocator.c3:540:6
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB25_5
# %bb.2:
	.loc	2 487 11                        # mem_allocator.c3:487:11
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB25_4
# %bb.3:
	.loc	2 540 17                        # mem_allocator.c3:540:17
	leaq	.panic_msg.64(%rip), %rdi
	movl	$86, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$540, (%rsp)                    # imm = 0x21C
	callq	*(%rax)
.LBB25_4:
	callq	std.core.mem.allocator.create_temp_allocator_on_demand
	movq	%rdx, -40(%rbp)
	movq	%rax, -48(%rbp)
.LBB25_5:
	.loc	2 541 9                         # mem_allocator.c3:541:9
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	2 541 26 is_stmt 0              # mem_allocator.c3:541:26
	movq	-16(%rbp), %rcx
	movq	%rcx, -136(%rbp)                # 8-byte Spill
	.loc	2 541 33                        # mem_allocator.c3:541:33
	movl	-20(%rbp), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	.loc	2 541 44                        # mem_allocator.c3:541:44
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	.loc	2 541 9                         # mem_allocator.c3:541:9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB25_7
# %bb.6:
	leaq	.panic_msg.8(%rip), %rdi
	movl	$29, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$541, (%rsp)                    # imm = 0x21D
	callq	*(%rax)
.LBB25_7:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-120(%rbp), %rcx                # 8-byte Reload
	.loc	2 257 11 is_stmt 1              # mem_allocator.c3:257:11
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -145(%rbp)                 # 1-byte Spill
	je	.LBB25_11
# %bb.8:
	.loc	2 0 11 is_stmt 0                # mem_allocator.c3:0:11
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	%rax, -64(%rbp)
.Ltmp294:
	.loc	5 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-64(%rbp), %rcx
	movb	%al, -146(%rbp)                 # 1-byte Spill
	je	.LBB25_10
# %bb.9:
	.loc	5 992 20 is_stmt 0              # math.c3:992:20
	movq	-64(%rbp), %rax
	.loc	5 992 25                        # math.c3:992:25
	movq	-64(%rbp), %rcx
	subq	$1, %rcx
	.loc	5 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	5 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -146(%rbp)                 # 1-byte Spill
.LBB25_10:
	.loc	5 0 19                          # math.c3:0:19
	movb	-146(%rbp), %al                 # 1-byte Reload
	movb	%al, -145(%rbp)                 # 1-byte Spill
.LBB25_11:
	movb	-145(%rbp), %al                 # 1-byte Reload
	.loc	5 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB25_13
.Ltmp295:
# %bb.12:
	.loc	2 541 9 is_stmt 1               # mem_allocator.c3:541:9
	leaq	.panic_msg.6(%rip), %rdi
	movl	$65, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$541, (%rsp)                    # imm = 0x21D
	callq	*(%rax)
.LBB25_13:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	2 541 9                         # mem_allocator.c3:541:9
	cmpq	$268435456, %rax                # imm = 0x10000000
	jbe	.LBB25_15
# %bb.14:
	leaq	.panic_msg.7(%rip), %rdi
	movl	$80, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$541, (%rsp)                    # imm = 0x21D
	callq	*(%rax)
.LBB25_15:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-120(%rbp), %r8                 # 8-byte Reload
	movl	-124(%rbp), %ecx                # 4-byte Reload
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	.loc	2 541 9                         # mem_allocator.c3:541:9
	leaq	-72(%rbp), %rdi
	callq	std.core.mem.allocator.TempAllocator.acquire@PLT
	movq	%rax, -160(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB25_17
# %bb.16:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-160(%rbp), %rax                # 8-byte Reload
	.loc	2 541 9                         # mem_allocator.c3:541:9
	movq	%rax, -56(%rbp)
	jmp	.LBB25_18
.LBB25_17:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-112(%rbp), %rax                # 8-byte Reload
	.loc	2 541 9                         # mem_allocator.c3:541:9
	movq	-72(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	2 541 9 epilogue_begin          # mem_allocator.c3:541:9
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB25_18:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rax
	.loc	2 541 9 epilogue_begin          # mem_allocator.c3:541:9
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB25_19:
	.cfi_def_cfa %rbp, 16
	.loc	2 538 37 is_stmt 1              # mem_allocator.c3:538:37
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.5(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$538, (%rsp)                    # imm = 0x21A
	callq	*(%rax)
.Ltmp296:
.Lfunc_end25:
	.size	std.core.mem.allocator.LazyTempAllocator.acquire, .Lfunc_end25-std.core.mem.allocator.LazyTempAllocator.acquire
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.LazyTempAllocator.resize,"axG",@progbits,std.core.mem.allocator.LazyTempAllocator.resize,comdat
	.weak	std.core.mem.allocator.LazyTempAllocator.resize # -- Begin function std.core.mem.allocator.LazyTempAllocator.resize
	.p2align	4, 0x90
	.type	std.core.mem.allocator.LazyTempAllocator.resize,@function
std.core.mem.allocator.LazyTempAllocator.resize: # @std.core.mem.allocator.LazyTempAllocator.resize
.Lfunc_begin26:
	.loc	2 544 0                         # mem_allocator.c3:544:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -104(%rbp)                # 8-byte Spill
	movq	%rsi, -96(%rbp)                 # 8-byte Spill
	movq	%rdx, -88(%rbp)                 # 8-byte Spill
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	movq	%r8, -72(%rbp)                  # 8-byte Spill
.Ltmp297:
	.loc	2 545 1 prologue_end            # mem_allocator.c3:545:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB26_9
# %bb.1:
	.loc	2 0 1 is_stmt 0                 # mem_allocator.c3:0:1
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movq	-88(%rbp), %rdx                 # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	.loc	2 546 6 is_stmt 1               # mem_allocator.c3:546:6
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB26_5
# %bb.2:
	.loc	2 487 11                        # mem_allocator.c3:487:11
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB26_4
# %bb.3:
	.loc	2 546 17                        # mem_allocator.c3:546:17
	leaq	.panic_msg.64(%rip), %rdi
	movl	$86, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$546, (%rsp)                    # imm = 0x222
	callq	*(%rax)
.LBB26_4:
	callq	std.core.mem.allocator.create_temp_allocator_on_demand
	movq	%rdx, -40(%rbp)
	movq	%rax, -48(%rbp)
.LBB26_5:
	.loc	2 547 9                         # mem_allocator.c3:547:9
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	leaq	-64(%rbp), %rdi
	callq	std.core.mem.allocator.TempAllocator.resize@PLT
	movq	%rax, -112(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB26_7
# %bb.6:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-112(%rbp), %rax                # 8-byte Reload
	.loc	2 547 9                         # mem_allocator.c3:547:9
	movq	%rax, -56(%rbp)
	jmp	.LBB26_8
.LBB26_7:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-104(%rbp), %rax                # 8-byte Reload
	.loc	2 547 9                         # mem_allocator.c3:547:9
	movq	-64(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	2 547 9 epilogue_begin          # mem_allocator.c3:547:9
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB26_8:
	.cfi_def_cfa %rbp, 16
	movq	-56(%rbp), %rax
	.loc	2 547 9 epilogue_begin          # mem_allocator.c3:547:9
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB26_9:
	.cfi_def_cfa %rbp, 16
	.loc	2 544 36 is_stmt 1              # mem_allocator.c3:544:36
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.11(%rip), %r8
	movl	$6, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$544, (%rsp)                    # imm = 0x220
	callq	*(%rax)
.Ltmp298:
.Lfunc_end26:
	.size	std.core.mem.allocator.LazyTempAllocator.resize, .Lfunc_end26-std.core.mem.allocator.LazyTempAllocator.resize
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.LazyTempAllocator.release,"axG",@progbits,std.core.mem.allocator.LazyTempAllocator.release,comdat
	.weak	std.core.mem.allocator.LazyTempAllocator.release # -- Begin function std.core.mem.allocator.LazyTempAllocator.release
	.p2align	4, 0x90
	.type	std.core.mem.allocator.LazyTempAllocator.release,@function
std.core.mem.allocator.LazyTempAllocator.release: # @std.core.mem.allocator.LazyTempAllocator.release
.Lfunc_begin27:
	.loc	2 550 0                         # mem_allocator.c3:550:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rsi, -40(%rbp)                 # 8-byte Spill
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movb	%dl, %al
	movb	%al, -18(%rbp)                  # 1-byte Spill
.Ltmp299:
	.loc	2 551 1 prologue_end            # mem_allocator.c3:551:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB27_2
# %bb.1:
	.loc	2 0 1 is_stmt 0                 # mem_allocator.c3:0:1
	movb	-18(%rbp), %al                  # 1-byte Reload
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-32(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB27_2:
	.cfi_def_cfa %rbp, 16
	.loc	2 550 35 is_stmt 1              # mem_allocator.c3:550:35
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.1(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$550, (%rsp)                    # imm = 0x226
	callq	*(%rax)
.Ltmp300:
.Lfunc_end27:
	.size	std.core.mem.allocator.LazyTempAllocator.release, .Lfunc_end27-std.core.mem.allocator.LazyTempAllocator.release
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.alignment_for_allocation,"axG",@progbits,std.core.mem.allocator.alignment_for_allocation,comdat
	.weak	std.core.mem.allocator.alignment_for_allocation # -- Begin function std.core.mem.allocator.alignment_for_allocation
	.p2align	4, 0x90
	.type	std.core.mem.allocator.alignment_for_allocation,@function
std.core.mem.allocator.alignment_for_allocation: # @std.core.mem.allocator.alignment_for_allocation
.Lfunc_begin28:
	.loc	2 68 0                          # mem_allocator.c3:68:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp301:
	.loc	2 70 9 prologue_end             # mem_allocator.c3:70:9
	movl	$16, %eax
	cmpq	-8(%rbp), %rax
	jbe	.LBB28_2
# %bb.1:
	.loc	2 70 50 is_stmt 0               # mem_allocator.c3:70:50
	movl	$16, %eax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jmp	.LBB28_3
.LBB28_2:
	.loc	2 70 79                         # mem_allocator.c3:70:79
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
.LBB28_3:
	.loc	2 0 79                          # mem_allocator.c3:0:79
	movq	-16(%rbp), %rax                 # 8-byte Reload
	.loc	2 70 79 epilogue_begin          # mem_allocator.c3:70:79
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp302:
.Lfunc_end28:
	.size	std.core.mem.allocator.alignment_for_allocation, .Lfunc_end28-std.core.mem.allocator.alignment_for_allocation
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.push_pool,"axG",@progbits,std.core.mem.allocator.push_pool,comdat
	.weak	std.core.mem.allocator.push_pool # -- Begin function std.core.mem.allocator.push_pool
	.p2align	4, 0x90
	.type	std.core.mem.allocator.push_pool,@function
std.core.mem.allocator.push_pool:       # @std.core.mem.allocator.push_pool
.Lfunc_begin29:
	.loc	2 431 0 is_stmt 1               # mem_allocator.c3:431:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp303:
	.loc	2 433 18 prologue_end           # mem_allocator.c3:433:18
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB29_2
# %bb.1:
	.loc	2 433 29 is_stmt 0              # mem_allocator.c3:433:29
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rax
	movq	%fs:(%rax), %rcx
	movq	%fs:8(%rax), %rax
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB29_5
.LBB29_2:
	.loc	2 487 11 is_stmt 1              # mem_allocator.c3:487:11
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB29_4
# %bb.3:
	.loc	2 433 44                        # mem_allocator.c3:433:44
	leaq	.panic_msg.64(%rip), %rdi
	movl	$86, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.65(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$433, (%rsp)                    # imm = 0x1B1
	callq	*(%rax)
.LBB29_4:
	callq	std.core.mem.allocator.create_temp_allocator_on_demand
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB29_5
.LBB29_5:
	.loc	2 0 44 is_stmt 0                # mem_allocator.c3:0:44
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rcx, -24(%rbp)
	movq	%rax, -16(%rbp)
	.loc	2 434 2 is_stmt 1               # mem_allocator.c3:434:2
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	.loc	2 434 18 is_stmt 0              # mem_allocator.c3:434:18
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	.loc	2 434 56                        # mem_allocator.c3:434:56
	movq	-8(%rbp), %rcx
	movq	%rcx, -120(%rbp)                # 8-byte Spill
	.loc	2 87 12 is_stmt 1               # mem_allocator.c3:87:12
	cmpq	$0, 24(%rax)
	je	.LBB29_7
# %bb.6:
	.loc	2 434 17                        # mem_allocator.c3:434:17
	leaq	.panic_msg.42(%rip), %rdi
	movl	$34, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.65(%rip), %r8
	movl	$9, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$434, (%rsp)                    # imm = 0x1B2
	callq	*(%rax)
.LBB29_7:
	.loc	2 0 17 is_stmt 0                # mem_allocator.c3:0:17
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movq	-128(%rbp), %rsi                # 8-byte Reload
	.loc	2 434 17                        # mem_allocator.c3:434:17
	leaq	-56(%rbp), %rdi
	callq	std.core.mem.allocator.TempAllocator.derive_allocator@PLT
	movq	%rax, -144(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB29_9
# %bb.8:
	.loc	2 0 17                          # mem_allocator.c3:0:17
	movq	-144(%rbp), %rax                # 8-byte Reload
	.loc	2 434 17                        # mem_allocator.c3:434:17
	movq	%rax, -48(%rbp)
	jmp	.LBB29_10
.LBB29_9:
	jmp	.LBB29_11
.LBB29_10:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$1, -88(%rbp)
	leaq	.panic_msg.46(%rip), %rdi
	movl	$36, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.65(%rip), %r8
	movl	$9, %r9d
	leaq	-96(%rbp), %rax
	movl	$434, (%rsp)                    # imm = 0x1B2
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB29_11:
	.loc	2 0 17                          # mem_allocator.c3:0:17
	movq	-136(%rbp), %rax                # 8-byte Reload
	.loc	2 434 17                        # mem_allocator.c3:434:17
	movq	-56(%rbp), %rcx
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	%rcx, (%rax)
	.loc	2 435 20 is_stmt 1              # mem_allocator.c3:435:20
	movq	-24(%rbp), %rax
	.loc	2 435 20 epilogue_begin is_stmt 0 # mem_allocator.c3:435:20
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp304:
.Lfunc_end29:
	.size	std.core.mem.allocator.push_pool, .Lfunc_end29-std.core.mem.allocator.push_pool
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.pop_pool,"axG",@progbits,std.core.mem.allocator.pop_pool,comdat
	.weak	std.core.mem.allocator.pop_pool # -- Begin function std.core.mem.allocator.pop_pool
	.p2align	4, 0x90
	.type	std.core.mem.allocator.pop_pool,@function
std.core.mem.allocator.pop_pool:        # @std.core.mem.allocator.pop_pool
.Lfunc_begin30:
	.loc	2 438 0 is_stmt 1               # mem_allocator.c3:438:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp305:
	.loc	2 440 24 prologue_end           # mem_allocator.c3:440:24
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc	2 441 2                         # mem_allocator.c3:441:2
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rax
	.loc	2 441 17 is_stmt 0              # mem_allocator.c3:441:17
	movq	-16(%rbp), %rcx
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rdx
	movq	%rdx, %fs:8(%rax)
	movq	%rcx, %fs:(%rax)
	.loc	2 442 2 is_stmt 1               # mem_allocator.c3:442:2
	movq	-16(%rbp), %rdi
	callq	std.core.mem.allocator.TempAllocator.reset@PLT
	.loc	2 442 2 epilogue_begin is_stmt 0 # mem_allocator.c3:442:2
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp306:
.Lfunc_end30:
	.size	std.core.mem.allocator.pop_pool, .Lfunc_end30-std.core.mem.allocator.pop_pool
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.create_temp_allocator_on_demand
	.type	std.core.mem.allocator.create_temp_allocator_on_demand,@function
std.core.mem.allocator.create_temp_allocator_on_demand: # @std.core.mem.allocator.create_temp_allocator_on_demand
.Lfunc_begin31:
	.loc	2 489 0 is_stmt 1               # mem_allocator.c3:489:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
.Ltmp307:
	.loc	2 487 11 prologue_end           # mem_allocator.c3:487:11
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB31_2
# %bb.1:
	leaq	.panic_msg.64(%rip), %rdi
	movl	$86, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.66(%rip), %r8
	movl	$31, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$487, (%rsp)                    # imm = 0x1E7
	callq	*(%rax)
.Ltmp308:
.LBB31_2:
	.loc	2 491 7                         # mem_allocator.c3:491:7
	movq	std.core.mem.allocator.auto_create_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	testb	$1, (%rax)
	jne	.LBB31_4
# %bb.3:
.Ltmp309:
	.loc	2 493 6                         # mem_allocator.c3:493:6
	movq	std.core.mem.allocator.auto_create_temp@GOTTPOFF(%rip), %rax
	.loc	2 493 25 is_stmt 0              # mem_allocator.c3:493:25
	movb	$1, %fs:(%rax)
	leaq	.L.str.67(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$128, -8(%rbp)
.Ltmp310:
	.loc	8 186 33 is_stmt 1              # builtin.c3:186:33
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	.loc	8 186 2 is_stmt 0               # builtin.c3:186:2
	leaq	.L.str.68(%rip), %rdx
	movl	$16, %ecx
	leaq	.L.str.69(%rip), %r8
	movl	$31, %r9d
	leaq	-32(%rbp), %rax
	movl	$494, (%rsp)                    # imm = 0x1EE
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
	.loc	8 187 2 is_stmt 1               # builtin.c3:187:2
	ud2
.Ltmp311:
.LBB31_4:
	.loc	2 496 31                        # mem_allocator.c3:496:31
	movq	std.core.mem.allocator.temp_base_allocator+8(%rip), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	std.core.mem.allocator.temp_base_allocator(%rip), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	.loc	2 496 75 is_stmt 0              # mem_allocator.c3:496:75
	movq	std.core.mem.allocator.temp_allocator_reserve_size@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	.loc	2 496 104                       # mem_allocator.c3:496:104
	movq	std.core.mem.allocator.temp_allocator_min_size@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	.loc	2 496 129                       # mem_allocator.c3:496:129
	movq	std.core.mem.allocator.temp_allocator_realloc_size@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	.loc	2 500 11 is_stmt 1              # mem_allocator.c3:500:11
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# %bb.5:
	.loc	2 496 9                         # mem_allocator.c3:496:9
	leaq	.panic_msg.64(%rip), %rdi
	movl	$86, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.66(%rip), %r8
	movl	$31, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$496, (%rsp)                    # imm = 0x1F0
	callq	*(%rax)
.LBB31_6:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-72(%rbp), %r9                  # 8-byte Reload
	movq	-80(%rbp), %r8                  # 8-byte Reload
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	-96(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	$262144, %edx                   # imm = 0x40000
	.loc	2 496 9                         # mem_allocator.c3:496:9
	callq	std.core.mem.allocator.create_temp_allocator
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp312:
.Lfunc_end31:
	.size	std.core.mem.allocator.create_temp_allocator_on_demand, .Lfunc_end31-std.core.mem.allocator.create_temp_allocator_on_demand
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.create_temp_allocator
	.type	std.core.mem.allocator.create_temp_allocator,@function
std.core.mem.allocator.create_temp_allocator: # @std.core.mem.allocator.create_temp_allocator
.Lfunc_begin32:
	.loc	2 502 0 is_stmt 1               # mem_allocator.c3:502:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
.Ltmp313:
	.loc	2 500 11 prologue_end           # mem_allocator.c3:500:11
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB32_2
# %bb.1:
	leaq	.panic_msg.64(%rip), %rdi
	movl	$86, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.70(%rip), %r8
	movl	$21, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$500, (%rsp)                    # imm = 0x1F4
	callq	*(%rax)
.Ltmp314:
.LBB32_2:
	.loc	2 504 9                         # mem_allocator.c3:504:9
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rdx
	movq	%fs:0, %rax
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)                # 8-byte Spill
	.loc	2 504 24 is_stmt 0              # mem_allocator.c3:504:24
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	.loc	2 504 65                        # mem_allocator.c3:504:65
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	.loc	2 504 76                        # mem_allocator.c3:504:76
	movq	-24(%rbp), %rcx
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	.loc	2 504 82                        # mem_allocator.c3:504:82
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	.loc	2 504 91                        # mem_allocator.c3:504:91
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	2 504 101                       # mem_allocator.c3:504:101
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	.loc	2 504 35                        # mem_allocator.c3:504:35
	movl	$64, %eax
	cmpq	%rcx, %rax
	jbe	.LBB32_4
# %bb.3:
	leaq	.panic_msg.35(%rip), %rdi
	movl	$31, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.70(%rip), %r8
	movl	$21, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$504, (%rsp)                    # imm = 0x1F8
	callq	*(%rax)
.LBB32_4:
	.loc	2 0 35                          # mem_allocator.c3:0:35
	movq	-136(%rbp), %rcx                # 8-byte Reload
	.loc	2 504 35                        # mem_allocator.c3:504:35
	movl	$64, %eax
	cmpq	%rcx, %rax
	jbe	.LBB32_6
# %bb.5:
	leaq	.panic_msg.38(%rip), %rdi
	movl	$39, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.70(%rip), %r8
	movl	$21, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$504, (%rsp)                    # imm = 0x1F8
	callq	*(%rax)
.LBB32_6:
	.loc	2 0 35                          # mem_allocator.c3:0:35
	movq	-168(%rbp), %rax                # 8-byte Reload
	.loc	2 504 35                        # mem_allocator.c3:504:35
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rcx
	cmpq	%rcx, %rax
	jne	.LBB32_8
# %bb.7:
	leaq	.panic_msg.39(%rip), %rdi
	movl	$145, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.70(%rip), %r8
	movl	$21, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$504, (%rsp)                    # imm = 0x1F8
	callq	*(%rax)
.LBB32_8:
	.loc	2 0 35                          # mem_allocator.c3:0:35
	movq	-144(%rbp), %rcx                # 8-byte Reload
	.loc	2 504 35                        # mem_allocator.c3:504:35
	movl	$152, %eax
	cmpq	%rcx, %rax
	jb	.LBB32_10
# %bb.9:
	leaq	.panic_msg.40(%rip), %rdi
	movl	$114, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.70(%rip), %r8
	movl	$21, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$504, (%rsp)                    # imm = 0x1F8
	callq	*(%rax)
.LBB32_10:
	.loc	2 0 35                          # mem_allocator.c3:0:35
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	-144(%rbp), %r9                 # 8-byte Reload
	movq	-152(%rbp), %r8                 # 8-byte Reload
	movq	-160(%rbp), %rcx                # 8-byte Reload
	movq	-168(%rbp), %rdx                # 8-byte Reload
	movq	-176(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	.loc	2 504 35                        # mem_allocator.c3:504:35
	leaq	-64(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	std.core.mem.allocator.new_temp_allocator@PLT
	movq	%rax, -200(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB32_12
# %bb.11:
	.loc	2 0 35                          # mem_allocator.c3:0:35
	movq	-200(%rbp), %rax                # 8-byte Reload
	.loc	2 504 35                        # mem_allocator.c3:504:35
	movq	%rax, -56(%rbp)
	jmp	.LBB32_13
.LBB32_12:
	jmp	.LBB32_14
.LBB32_13:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$1, -104(%rbp)
	leaq	.panic_msg.46(%rip), %rdi
	movl	$36, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.70(%rip), %r8
	movl	$21, %r9d
	leaq	-112(%rbp), %rax
	movl	$504, (%rsp)                    # imm = 0x1F8
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB32_14:
	.loc	2 0 35                          # mem_allocator.c3:0:35
	movq	-192(%rbp), %rdx                # 8-byte Reload
	movq	-184(%rbp), %rcx                # 8-byte Reload
	.loc	2 504 35                        # mem_allocator.c3:504:35
	movq	-64(%rbp), %rax
	movq	%rax, (%rcx)
	.loc	2 504 24                        # mem_allocator.c3:504:24
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rcx
	movq	%rcx, 8(%rdx)
	movq	%rax, (%rdx)
	movq	%rcx, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp315:
.Lfunc_end32:
	.size	std.core.mem.allocator.create_temp_allocator, .Lfunc_end32-std.core.mem.allocator.create_temp_allocator
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.allocator.destroy_temp_allocators,"axG",@progbits,std.core.mem.allocator.destroy_temp_allocators,comdat
	.weak	std.core.mem.allocator.destroy_temp_allocators # -- Begin function std.core.mem.allocator.destroy_temp_allocators
	.p2align	4, 0x90
	.type	std.core.mem.allocator.destroy_temp_allocators,@function
std.core.mem.allocator.destroy_temp_allocators: # @std.core.mem.allocator.destroy_temp_allocators
.Lfunc_begin33:
	.loc	2 527 0 is_stmt 1               # mem_allocator.c3:527:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
.Ltmp316:
	.loc	2 529 6 prologue_end            # mem_allocator.c3:529:6
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB33_2
# %bb.1:
	.loc	2 529 23 epilogue_begin is_stmt 0 # mem_allocator.c3:529:23
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB33_2:
	.cfi_def_cfa %rbp, 16
	.loc	2 530 2 is_stmt 1               # mem_allocator.c3:530:2
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	.loc	2 140 11                        # mem_allocator.c3:140:11
	testb	$1, 32(%rax)
	jne	.LBB33_4
# %bb.3:
	.loc	2 530 2                         # mem_allocator.c3:530:2
	leaq	.panic_msg.44(%rip), %rdi
	movl	$82, %esi
	leaq	.file.24(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.71(%rip), %r8
	movl	$23, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$530, (%rsp)                    # imm = 0x212
	callq	*(%rax)
.LBB33_4:
	.loc	2 0 2 is_stmt 0                 # mem_allocator.c3:0:2
	movq	-8(%rbp), %rdi                  # 8-byte Reload
	.loc	2 530 2                         # mem_allocator.c3:530:2
	callq	std.core.mem.allocator.TempAllocator.free@PLT
	.loc	2 531 2 is_stmt 1               # mem_allocator.c3:531:2
	movq	std.core.mem.allocator.top_temp@GOTTPOFF(%rip), %rax
	.loc	2 531 13 is_stmt 0              # mem_allocator.c3:531:13
	movq	$0, %fs:(%rax)
	.loc	2 532 2 is_stmt 1               # mem_allocator.c3:532:2
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rax
	.loc	2 532 17 is_stmt 0              # mem_allocator.c3:532:17
	movq	($ct.std.core.mem.allocator.LazyTempAllocator)@GOTPCREL(%rip), %rcx
	movq	%rcx, %fs:8(%rax)
	leaq	std.core.mem.allocator.LAZY_TEMP(%rip), %rcx
	movq	%rcx, %fs:(%rax)
	.loc	2 532 17 epilogue_begin         # mem_allocator.c3:532:17
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp317:
.Lfunc_end33:
	.size	std.core.mem.allocator.destroy_temp_allocators, .Lfunc_end33-std.core.mem.allocator.destroy_temp_allocators
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572
	.type	std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572,@function
std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572: # @std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572
.Lfunc_begin34:
	.loc	2 514 0 is_stmt 1               # mem_allocator.c3:514:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp318:
	.loc	2 516 2 prologue_end            # mem_allocator.c3:516:2
	movq	std.core.mem.allocator.auto_create_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 516 21 is_stmt 0              # mem_allocator.c3:516:21
	movb	$1, (%rax)
	.loc	2 516 21 epilogue_begin         # mem_allocator.c3:516:21
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp319:
.Lfunc_end34:
	.size	std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572, .Lfunc_end34-std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.core.mem.allocator.destroy_temp_allocators_after_exit.6573
	.type	std.core.mem.allocator.destroy_temp_allocators_after_exit.6573,@function
std.core.mem.allocator.destroy_temp_allocators_after_exit.6573: # @std.core.mem.allocator.destroy_temp_allocators_after_exit.6573
.Lfunc_begin35:
	.loc	2 519 0 is_stmt 1               # mem_allocator.c3:519:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp320:
	.loc	2 521 2 prologue_end            # mem_allocator.c3:521:2
	callq	std.core.mem.allocator.destroy_temp_allocators@PLT
	.loc	2 521 2 epilogue_begin is_stmt 0 # mem_allocator.c3:521:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp321:
.Lfunc_end35:
	.size	std.core.mem.allocator.destroy_temp_allocators_after_exit.6573, .Lfunc_end35-std.core.mem.allocator.destroy_temp_allocators_after_exit.6573
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin36:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB36_1
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB36_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB36_3:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB36_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB36_5:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB36_1
.Lfunc_end36:
	.size	.dyn_search, .Lfunc_end36-.dyn_search
	.cfi_endproc
                                        # -- End function
	.section	.text..__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573,"axG",@progbits,.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573,comdat
	.weak	.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573 # -- Begin function .__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573
	.p2align	4, 0x90
	.type	.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573,@function
.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573: # @.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573
.Lfunc_begin37:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	std.core.mem.allocator.destroy_temp_allocators_after_exit.6573(%rip), %rdi
	callq	atexit@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573, .Lfunc_end37-.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .c3_dynamic_register
	.type	.c3_dynamic_register,@function
.c3_dynamic_register:                   # @.c3_dynamic_register
.Lfunc_begin38:
	.cfi_startproc
# %bb.0:
	subq	$112, %rsp
	.cfi_def_cfa_offset 120
	movq	($ct.std.core.mem.allocator.ArenaAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.release)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jne	.LBB38_3
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jne	.LBB38_1
# %bb.2:
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.release)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.release)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_3:
	movq	($ct.std.core.mem.allocator.ArenaAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jne	.LBB38_6
.LBB38_4:                               # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jne	.LBB38_4
# %bb.5:
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_6:
	movq	($ct.std.core.mem.allocator.ArenaAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.resize)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jne	.LBB38_9
.LBB38_7:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jne	.LBB38_7
# %bb.8:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.resize)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.ArenaAllocator.resize)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_9:
	movq	($ct.std.core.mem.allocator.LibcAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.acquire)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jne	.LBB38_12
.LBB38_10:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jne	.LBB38_10
# %bb.11:
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.acquire)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.acquire)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_12:
	movq	($ct.std.core.mem.allocator.LibcAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.resize)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jne	.LBB38_15
.LBB38_13:                              # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jne	.LBB38_13
# %bb.14:
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.resize)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.resize)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_15:
	movq	($ct.std.core.mem.allocator.LibcAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.release)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jne	.LBB38_18
.LBB38_16:                              # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jne	.LBB38_16
# %bb.17:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.release)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.LibcAllocator.release)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_18:
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.release)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jne	.LBB38_21
.LBB38_19:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jne	.LBB38_19
# %bb.20:
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.release)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.release)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_21:
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.resize)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB38_24
.LBB38_22:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB38_22
# %bb.23:
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.resize)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.resize)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_24:
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jne	.LBB38_27
.LBB38_25:                              # =>This Inner Loop Header: Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jne	.LBB38_25
# %bb.26:
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_27:
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.release)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	jne	.LBB38_30
.LBB38_28:                              # =>This Inner Loop Header: Depth=1
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	jne	.LBB38_28
# %bb.29:
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.release)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.release)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_30:
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.resize)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	jne	.LBB38_33
.LBB38_31:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	jne	.LBB38_31
# %bb.32:
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.resize)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.resize)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_33:
	movq	($ct.std.core.mem.allocator.TempAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.acquire)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	jne	.LBB38_36
.LBB38_34:                              # =>This Inner Loop Header: Depth=1
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	jne	.LBB38_34
# %bb.35:
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.acquire)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.TempAllocator.acquire)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_36:
	movq	($ct.std.core.mem.allocator.LazyTempAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	jne	.LBB38_39
.LBB38_37:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	jne	.LBB38_37
# %bb.38:
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_39:
	movq	($ct.std.core.mem.allocator.LazyTempAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jne	.LBB38_42
.LBB38_40:                              # =>This Inner Loop Header: Depth=1
	movq	-104(%rsp), %rax                # 8-byte Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jne	.LBB38_40
# %bb.41:
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_42:
	movq	($ct.std.core.mem.allocator.LazyTempAllocator)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.release)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -120(%rsp)                # 8-byte Spill
	jne	.LBB38_45
.LBB38_43:                              # =>This Inner Loop Header: Depth=1
	movq	-120(%rsp), %rax                # 8-byte Reload
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -120(%rsp)                # 8-byte Spill
	jne	.LBB38_43
# %bb.44:
	movq	-128(%rsp), %rax                # 8-byte Reload
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.release)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.mem.allocator.LazyTempAllocator.release)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB38_45:
	addq	$112, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	.c3_dynamic_register, .Lfunc_end38-.c3_dynamic_register
	.cfi_endproc
                                        # -- End function
	.type	$ct.std.core.mem.allocator.ArenaAllocator,@object # @"$ct.std.core.mem.allocator.ArenaAllocator"
	.section	".data.$ct.std.core.mem.allocator.ArenaAllocator","awG",@progbits,"$ct.std.core.mem.allocator.ArenaAllocator",comdat
	.weak	$ct.std.core.mem.allocator.ArenaAllocator
	.p2align	3, 0x0
$ct.std.core.mem.allocator.ArenaAllocator:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	24                              # 0x18
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.size	$ct.std.core.mem.allocator.ArenaAllocator, 48

	.type	$ct.std.core.mem.allocator.ArenaAllocatorHeader.4013,@object # @"$ct.std.core.mem.allocator.ArenaAllocatorHeader.4013"
	.section	".data.$ct.std.core.mem.allocator.ArenaAllocatorHeader.4013","awG",@progbits,"$ct.std.core.mem.allocator.ArenaAllocatorHeader.4013",comdat
	.weak	$ct.std.core.mem.allocator.ArenaAllocatorHeader.4013
	.p2align	3, 0x0
$ct.std.core.mem.allocator.ArenaAllocatorHeader.4013:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.size	$ct.std.core.mem.allocator.ArenaAllocatorHeader.4013, 48

	.type	$ct.std.core.mem.allocator.LibcAllocator,@object # @"$ct.std.core.mem.allocator.LibcAllocator"
	.section	".data.$ct.std.core.mem.allocator.LibcAllocator","awG",@progbits,"$ct.std.core.mem.allocator.LibcAllocator",comdat
	.weak	$ct.std.core.mem.allocator.LibcAllocator
	.p2align	3, 0x0
$ct.std.core.mem.allocator.LibcAllocator:
	.byte	18                              # 0x12
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.ulong)
	.quad	0                               # 0x0
	.size	$ct.std.core.mem.allocator.LibcAllocator, 48

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

	.type	$ct.std.core.mem.allocator.OnStackAllocatorExtraChunk.4292,@object # @"$ct.std.core.mem.allocator.OnStackAllocatorExtraChunk.4292"
	.section	".data.$ct.std.core.mem.allocator.OnStackAllocatorExtraChunk.4292","awG",@progbits,"$ct.std.core.mem.allocator.OnStackAllocatorExtraChunk.4292",comdat
	.weak	$ct.std.core.mem.allocator.OnStackAllocatorExtraChunk.4292
	.p2align	3, 0x0
$ct.std.core.mem.allocator.OnStackAllocatorExtraChunk.4292:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	24                              # 0x18
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.size	$ct.std.core.mem.allocator.OnStackAllocatorExtraChunk.4292, 48

	.type	$ct.std.core.mem.allocator.OnStackAllocatorHeader,@object # @"$ct.std.core.mem.allocator.OnStackAllocatorHeader"
	.section	".data.$ct.std.core.mem.allocator.OnStackAllocatorHeader","awG",@progbits,"$ct.std.core.mem.allocator.OnStackAllocatorHeader",comdat
	.weak	$ct.std.core.mem.allocator.OnStackAllocatorHeader
	.p2align	3, 0x0
$ct.std.core.mem.allocator.OnStackAllocatorHeader:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.size	$ct.std.core.mem.allocator.OnStackAllocatorHeader, 48

	.type	$ct.std.core.mem.allocator.TempAllocator,@object # @"$ct.std.core.mem.allocator.TempAllocator"
	.section	".data.$ct.std.core.mem.allocator.TempAllocator","awG",@progbits,"$ct.std.core.mem.allocator.TempAllocator",comdat
	.weak	$ct.std.core.mem.allocator.TempAllocator
	.p2align	3, 0x0
$ct.std.core.mem.allocator.TempAllocator:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.size	$ct.std.core.mem.allocator.TempAllocator, 48

	.type	$ct.std.core.mem.allocator.TempAllocatorChunk.4360,@object # @"$ct.std.core.mem.allocator.TempAllocatorChunk.4360"
	.section	".data.$ct.std.core.mem.allocator.TempAllocatorChunk.4360","awG",@progbits,"$ct.std.core.mem.allocator.TempAllocatorChunk.4360",comdat
	.weak	$ct.std.core.mem.allocator.TempAllocatorChunk.4360
	.p2align	3, 0x0
$ct.std.core.mem.allocator.TempAllocatorChunk.4360:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.size	$ct.std.core.mem.allocator.TempAllocatorChunk.4360, 48

	.type	$ct.std.core.mem.allocator.TempAllocatorPage,@object # @"$ct.std.core.mem.allocator.TempAllocatorPage"
	.section	".data.$ct.std.core.mem.allocator.TempAllocatorPage","awG",@progbits,"$ct.std.core.mem.allocator.TempAllocatorPage",comdat
	.weak	$ct.std.core.mem.allocator.TempAllocatorPage
	.p2align	3, 0x0
$ct.std.core.mem.allocator.TempAllocatorPage:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	32                              # 0x20
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.size	$ct.std.core.mem.allocator.TempAllocatorPage, 48

	.type	$ct.std.core.mem.allocator.PoolState,@object # @"$ct.std.core.mem.allocator.PoolState"
	.section	".data.$ct.std.core.mem.allocator.PoolState","awG",@progbits,"$ct.std.core.mem.allocator.PoolState",comdat
	.weak	$ct.std.core.mem.allocator.PoolState
	.p2align	3, 0x0
$ct.std.core.mem.allocator.PoolState:
	.byte	18                              # 0x12
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.p$std.core.mem.allocator.TempAllocator)
	.quad	0                               # 0x0
	.size	$ct.std.core.mem.allocator.PoolState, 48

	.type	$ct.p$std.core.mem.allocator.TempAllocator,@object # @"$ct.p$std.core.mem.allocator.TempAllocator"
	.section	".data.$ct.p$std.core.mem.allocator.TempAllocator","awG",@progbits,"$ct.p$std.core.mem.allocator.TempAllocator",comdat
	.weak	$ct.p$std.core.mem.allocator.TempAllocator
	.p2align	3, 0x0
$ct.p$std.core.mem.allocator.TempAllocator:
	.byte	19                              # 0x13
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.std.core.mem.allocator.TempAllocator)
	.quad	0                               # 0x0
	.size	$ct.p$std.core.mem.allocator.TempAllocator, 48

	.type	$ct.std.core.mem.allocator.LazyTempAllocator,@object # @"$ct.std.core.mem.allocator.LazyTempAllocator"
	.section	".data.$ct.std.core.mem.allocator.LazyTempAllocator","awG",@progbits,"$ct.std.core.mem.allocator.LazyTempAllocator",comdat
	.weak	$ct.std.core.mem.allocator.LazyTempAllocator
	.p2align	3, 0x0
$ct.std.core.mem.allocator.LazyTempAllocator:
	.byte	18                              # 0x12
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.ulong)
	.quad	0                               # 0x0
	.size	$ct.std.core.mem.allocator.LazyTempAllocator, 48

	.type	.enum.NO_ZERO,@object           # @.enum.NO_ZERO
	.section	.rodata,"a",@progbits
.enum.NO_ZERO:
	.asciz	"NO_ZERO"
	.size	.enum.NO_ZERO, 8

	.type	.enum.ZERO,@object              # @.enum.ZERO
.enum.ZERO:
	.asciz	"ZERO"
	.size	.enum.ZERO, 5

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

	.type	$ct.std.core.mem.allocator.AllocInitType,@object # @"$ct.std.core.mem.allocator.AllocInitType"
	.section	".data.$ct.std.core.mem.allocator.AllocInitType","awG",@progbits,"$ct.std.core.mem.allocator.AllocInitType",comdat
	.weak	$ct.std.core.mem.allocator.AllocInitType
	.p2align	3, 0x0
$ct.std.core.mem.allocator.AllocInitType:
	.byte	8                               # 0x8
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	4                               # 0x4
	.quad	($ct.int)
	.quad	2                               # 0x2
	.quad	.enum.NO_ZERO
	.quad	7                               # 0x7
	.quad	.enum.ZERO
	.quad	4                               # 0x4
	.size	$ct.std.core.mem.allocator.AllocInitType, 80

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Reference parameter 'self' was passed a null pointer argument."
	.size	.panic_msg, 63

	.type	.file,@object                   # @.file
.file:
	.asciz	"arena_allocator.c3"
	.size	.file, 19

	.type	.func,@object                   # @.func
.func:
	.asciz	"init"
	.size	.func, 5

	.type	.func.1,@object                 # @.func.1
.func.1:
	.asciz	"release"
	.size	.func.1, 8

	.type	.panic_msg.2,@object            # @.panic_msg.2
.panic_msg.2:
	.asciz	"@require \"ptr != null\" violated."
	.size	.panic_msg.2, 33

	.type	.panic_msg.3,@object            # @.panic_msg.3
.panic_msg.3:
	.asciz	"Pointer originates from a different allocator."
	.size	.panic_msg.3, 47

	.type	.panic_msg.4,@object            # @.panic_msg.4
.panic_msg.4:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.4, 60

	.type	.func.5,@object                 # @.func.5
.func.5:
	.asciz	"acquire"
	.size	.func.5, 8

	.type	.panic_msg.6,@object            # @.panic_msg.6
.panic_msg.6:
	.asciz	"@require \"!alignment || math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.6, 66

	.type	.panic_msg.7,@object            # @.panic_msg.7
.panic_msg.7:
	.asciz	"@require \"alignment <= mem::MAX_MEMORY_ALIGNMENT\" violated: 'alignment too big'."
	.size	.panic_msg.7, 81

	.type	.panic_msg.8,@object            # @.panic_msg.8
.panic_msg.8:
	.asciz	"@require \"size > 0\" violated."
	.size	.panic_msg.8, 30

	.type	std.core.mem.INVALID_ALLOC_SIZE,@object # @std.core.mem.INVALID_ALLOC_SIZE
	.section	.data.rel.ro.std.core.mem.INVALID_ALLOC_SIZE,"awG",@progbits,std.core.mem.INVALID_ALLOC_SIZE,comdat
	.weak	std.core.mem.INVALID_ALLOC_SIZE
	.p2align	3, 0x0
std.core.mem.INVALID_ALLOC_SIZE:
	.quad	std.core.mem.INVALID_ALLOC_SIZE.nameof
	.quad	23                              # 0x17
	.size	std.core.mem.INVALID_ALLOC_SIZE, 16

	.type	std.core.mem.INVALID_ALLOC_SIZE.nameof,@object # @std.core.mem.INVALID_ALLOC_SIZE.nameof
	.section	.rodata,"a",@progbits
std.core.mem.INVALID_ALLOC_SIZE.nameof:
	.asciz	"mem::INVALID_ALLOC_SIZE"
	.size	std.core.mem.INVALID_ALLOC_SIZE.nameof, 24

	.type	.panic_msg.9,@object            # @.panic_msg.9
.panic_msg.9:
	.asciz	"@require \"math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.9, 52

	.type	.file.10,@object                # @.file.10
.file.10:
	.asciz	"mem.c3"
	.size	.file.10, 7

	.type	std.core.mem.OUT_OF_MEMORY,@object # @std.core.mem.OUT_OF_MEMORY
	.section	.data.rel.ro.std.core.mem.OUT_OF_MEMORY,"awG",@progbits,std.core.mem.OUT_OF_MEMORY,comdat
	.weak	std.core.mem.OUT_OF_MEMORY
	.p2align	3, 0x0
std.core.mem.OUT_OF_MEMORY:
	.quad	std.core.mem.OUT_OF_MEMORY.nameof
	.quad	18                              # 0x12
	.size	std.core.mem.OUT_OF_MEMORY, 16

	.type	std.core.mem.OUT_OF_MEMORY.nameof,@object # @std.core.mem.OUT_OF_MEMORY.nameof
	.section	.rodata,"a",@progbits
std.core.mem.OUT_OF_MEMORY.nameof:
	.asciz	"mem::OUT_OF_MEMORY"
	.size	std.core.mem.OUT_OF_MEMORY.nameof, 19

	.type	.func.11,@object                # @.func.11
.func.11:
	.asciz	"resize"
	.size	.func.11, 7

	.type	.panic_msg.12,@object           # @.panic_msg.12
.panic_msg.12:
	.asciz	"@require \"old_pointer != null\" violated."
	.size	.panic_msg.12, 41

	.type	.panic_msg.13,@object           # @.panic_msg.13
.panic_msg.13:
	.asciz	"Passed null to a ref ('&') parameter."
	.size	.panic_msg.13, 38

	.type	.panic_msg.14,@object           # @.panic_msg.14
.panic_msg.14:
	.asciz	"@require \"src != null || len == 0\" violated: 'Copying a null with non-zero length is invalid'."
	.size	.panic_msg.14, 95

	.type	.panic_msg.15,@object           # @.panic_msg.15
.panic_msg.15:
	.asciz	"@require \"len == 0 || dst + len <= src || src + len <= dst\" violated: 'Ranges may not overlap'."
	.size	.panic_msg.15, 96

	.type	std.core.mem.allocator.LIBC_ALLOCATOR,@object # @std.core.mem.allocator.LIBC_ALLOCATOR
	.section	.rodata.std.core.mem.allocator.LIBC_ALLOCATOR,"aG",@progbits,std.core.mem.allocator.LIBC_ALLOCATOR,comdat
	.weak	std.core.mem.allocator.LIBC_ALLOCATOR
	.p2align	3, 0x0
std.core.mem.allocator.LIBC_ALLOCATOR:
	.quad	0                               # 0x0
	.size	std.core.mem.allocator.LIBC_ALLOCATOR, 8

	.type	.file.16,@object                # @.file.16
	.section	.rodata,"a",@progbits
.file.16:
	.asciz	"libc_allocator.c3"
	.size	.file.16, 18

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

	.type	.panic_msg.17,@object           # @.panic_msg.17
	.section	.rodata,"a",@progbits
.panic_msg.17:
	.asciz	"Negative array indexing (index was %d)"
	.size	.panic_msg.17, 39

	.type	.file.18,@object                # @.file.18
.file.18:
	.asciz	"on_stack_allocator.c3"
	.size	.file.18, 22

	.type	.func.19,@object                # @.func.19
.func.19:
	.asciz	"allocation_in_stack_mem"
	.size	.func.19, 24

	.type	.panic_msg.20,@object           # @.panic_msg.20
.panic_msg.20:
	.asciz	"Dereference of null pointer, 'addr' was null."
	.size	.panic_msg.20, 46

	.type	.func.21,@object                # @.func.21
.func.21:
	.asciz	"on_stack_allocator_remove_chunk"
	.size	.func.21, 32

	.type	.panic_msg.22,@object           # @.panic_msg.22
.panic_msg.22:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.22, 95

	.type	$sel.release,@object            # @"$sel.release"
	.section	".rodata.$sel.release","aG",@progbits,"$sel.release",comdat
	.weak	$sel.release
$sel.release:
	.asciz	"release"
	.size	$sel.release, 8

	.type	.panic_msg.23,@object           # @.panic_msg.23
	.section	.rodata,"a",@progbits
.panic_msg.23:
	.asciz	"@require \"ptr != null\" violated: 'Empty pointers should never be released'."
	.size	.panic_msg.23, 76

	.type	.file.24,@object                # @.file.24
.file.24:
	.asciz	"mem_allocator.c3"
	.size	.file.24, 17

	.type	.panic_msg.25,@object           # @.panic_msg.25
.panic_msg.25:
	.asciz	"No method 'release' could be found on target"
	.size	.panic_msg.25, 45

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Missing chunk"
	.size	.L.str, 14

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"on_stack_allocator.c3"
	.size	.L.str.26, 22

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"on_stack_allocator_remove_chunk"
	.size	.L.str.27, 32

	.type	.func.28,@object                # @.func.28
	.section	.rodata,"a",@progbits
.func.28:
	.asciz	"free"
	.size	.func.28, 5

	.type	.panic_msg.29,@object           # @.panic_msg.29
.panic_msg.29:
	.asciz	"Tried to realloc pointer not belonging to the allocator"
	.size	.panic_msg.29, 56

	.type	$sel.resize,@object             # @"$sel.resize"
	.section	".rodata.$sel.resize","aG",@progbits,"$sel.resize",comdat
	.weak	$sel.resize
$sel.resize:
	.asciz	"resize"
	.size	$sel.resize, 7

	.type	.panic_msg.30,@object           # @.panic_msg.30
	.section	.rodata,"a",@progbits
.panic_msg.30:
	.asciz	"@require \"new_size > 0\" violated."
	.size	.panic_msg.30, 34

	.type	.panic_msg.31,@object           # @.panic_msg.31
.panic_msg.31:
	.asciz	"No method 'resize' could be found on target"
	.size	.panic_msg.31, 44

	.type	$sel.acquire,@object            # @"$sel.acquire"
	.section	".rodata.$sel.acquire","aG",@progbits,"$sel.acquire",comdat
	.weak	$sel.acquire
$sel.acquire:
	.asciz	"acquire"
	.size	$sel.acquire, 8

	.type	.panic_msg.32,@object           # @.panic_msg.32
	.section	.rodata,"a",@progbits
.panic_msg.32:
	.asciz	"@require \"size > 0\" violated: 'The size must be 1 or more'."
	.size	.panic_msg.32, 60

	.type	.panic_msg.33,@object           # @.panic_msg.33
.panic_msg.33:
	.asciz	"No method 'acquire' could be found on target"
	.size	.panic_msg.33, 45

	.type	.panic_msg.34,@object           # @.panic_msg.34
.panic_msg.34:
	.asciz	"Dereference of null pointer, 'chunk' was null."
	.size	.panic_msg.34, 47

	.type	.panic_msg.35,@object           # @.panic_msg.35
.panic_msg.35:
	.asciz	"@require \"size >= 64\" violated."
	.size	.panic_msg.35, 32

	.type	.file.36,@object                # @.file.36
.file.36:
	.asciz	"temp_allocator.c3"
	.size	.file.36, 18

	.type	.func.37,@object                # @.func.37
.func.37:
	.asciz	"new_temp_allocator"
	.size	.func.37, 19

	.type	.panic_msg.38,@object           # @.panic_msg.38
.panic_msg.38:
	.asciz	"@require \"realloc_size >= 64\" violated."
	.size	.panic_msg.38, 40

	.type	.panic_msg.39,@object           # @.panic_msg.39
.panic_msg.39:
	.asciz	"@require \"allocator.type != TempAllocator.typeid\" violated: 'You may not create a temp allocator with a TempAllocator as the backing allocator.'."
	.size	.panic_msg.39, 146

	.type	.panic_msg.40,@object           # @.panic_msg.40
.panic_msg.40:
	.asciz	"@require \"min_size > TempAllocator.sizeof + 64\" violated: 'Min size must meaningfully hold the data + some bytes'."
	.size	.panic_msg.40, 115

	.type	.func.41,@object                # @.func.41
.func.41:
	.asciz	"derive_allocator"
	.size	.func.41, 17

	.type	.panic_msg.42,@object           # @.panic_msg.42
.panic_msg.42:
	.asciz	"@require \"!self.derived\" violated."
	.size	.panic_msg.42, 35

	.type	.func.43,@object                # @.func.43
.func.43:
	.asciz	"reset"
	.size	.func.43, 6

	.type	.panic_msg.44,@object           # @.panic_msg.44
.panic_msg.44:
	.asciz	"@require \"self.allocated\" violated: 'Only a top level allocator should be freed.'."
	.size	.panic_msg.44, 83

	.type	.func.45,@object                # @.func.45
.func.45:
	.asciz	"destroy"
	.size	.func.45, 8

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

	.type	.panic_msg.46,@object           # @.panic_msg.46
	.section	.rodata,"a",@progbits
.panic_msg.46:
	.asciz	"Unexpected fault '%s' was unwrapped!"
	.size	.panic_msg.46, 37

	.type	.panic_msg.47,@object           # @.panic_msg.47
.panic_msg.47:
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.47, 44

	.type	.panic_msg.48,@object           # @.panic_msg.48
.panic_msg.48:
	.asciz	"Dereference of null pointer, '(usz*)(old_pointer - DEFAULT_SIZE_PREFIX)' was null."
	.size	.panic_msg.48, 83

	.type	.func.49,@object                # @.func.49
.func.49:
	.asciz	"_free_page"
	.size	.func.49, 11

	.type	.panic_msg.50,@object           # @.panic_msg.50
.panic_msg.50:
	.asciz	"Called a method on a null value."
	.size	.panic_msg.50, 33

	.type	.func.51,@object                # @.func.51
.func.51:
	.asciz	"_realloc_page"
	.size	.func.51, 14

	.type	.panic_msg.52,@object           # @.panic_msg.52
.panic_msg.52:
	.asciz	"Dereference of null pointer, 'pointer_to_prev' was null."
	.size	.panic_msg.52, 57

	.type	.panic_msg.53,@object           # @.panic_msg.53
.panic_msg.53:
	.asciz	"Realloc of non temp pointer"
	.size	.panic_msg.53, 28

	.type	.panic_msg.54,@object           # @.panic_msg.54
.panic_msg.54:
	.asciz	"Assert \"mem::ptr_is_aligned(page, TempAllocator.alignof)\" failed."
	.size	.panic_msg.54, 66

	.type	.panic_msg.55,@object           # @.panic_msg.55
.panic_msg.55:
	.asciz	"Assert \"mem::ptr_is_aligned(&page.data[0], mem::DEFAULT_MEM_ALIGNMENT)\" failed."
	.size	.panic_msg.55, 80

	.type	std.core.mem.allocator.thread_allocator,@object # @std.core.mem.allocator.thread_allocator
	.section	.tdata.std.core.mem.allocator.thread_allocator,"awTG",@progbits,std.core.mem.allocator.thread_allocator,comdat
	.weak	std.core.mem.allocator.thread_allocator
	.p2align	3, 0x0
std.core.mem.allocator.thread_allocator:
	.quad	std.core.mem.allocator.LIBC_ALLOCATOR
	.quad	($ct.std.core.mem.allocator.LibcAllocator)
	.size	std.core.mem.allocator.thread_allocator, 16

	.type	std.core.mem.allocator.temp_base_allocator,@object # @std.core.mem.allocator.temp_base_allocator
	.data
	.p2align	3, 0x0
std.core.mem.allocator.temp_base_allocator:
	.quad	std.core.mem.allocator.LIBC_ALLOCATOR
	.quad	($ct.std.core.mem.allocator.LibcAllocator)
	.size	std.core.mem.allocator.temp_base_allocator, 16

	.type	std.core.mem.allocator.LAZY_TEMP,@object # @std.core.mem.allocator.LAZY_TEMP
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
std.core.mem.allocator.LAZY_TEMP:
	.quad	0                               # 0x0
	.size	std.core.mem.allocator.LAZY_TEMP, 8

	.type	std.core.mem.allocator.current_temp,@object # @std.core.mem.allocator.current_temp
	.section	.tdata.std.core.mem.allocator.current_temp,"awTG",@progbits,std.core.mem.allocator.current_temp,comdat
	.weak	std.core.mem.allocator.current_temp
	.p2align	3, 0x0
std.core.mem.allocator.current_temp:
	.quad	std.core.mem.allocator.LAZY_TEMP
	.quad	($ct.std.core.mem.allocator.LazyTempAllocator)
	.size	std.core.mem.allocator.current_temp, 16

	.type	std.core.mem.allocator.top_temp,@object # @std.core.mem.allocator.top_temp
	.section	.tbss.std.core.mem.allocator.top_temp,"awTG",@nobits,std.core.mem.allocator.top_temp,comdat
	.weak	std.core.mem.allocator.top_temp
	.p2align	3, 0x0
std.core.mem.allocator.top_temp:
	.quad	0
	.size	std.core.mem.allocator.top_temp, 8

	.type	std.core.mem.allocator.auto_create_temp,@object # @std.core.mem.allocator.auto_create_temp
	.section	.tbss.std.core.mem.allocator.auto_create_temp,"awTG",@nobits,std.core.mem.allocator.auto_create_temp,comdat
	.weak	std.core.mem.allocator.auto_create_temp
std.core.mem.allocator.auto_create_temp:
	.byte	0                               # 0x0
	.size	std.core.mem.allocator.auto_create_temp, 1

	.type	std.core.mem.allocator.temp_allocator_min_size,@object # @std.core.mem.allocator.temp_allocator_min_size
	.section	.data.std.core.mem.allocator.temp_allocator_min_size,"awG",@progbits,std.core.mem.allocator.temp_allocator_min_size,comdat
	.weak	std.core.mem.allocator.temp_allocator_min_size
	.p2align	3, 0x0
std.core.mem.allocator.temp_allocator_min_size:
	.quad	16384                           # 0x4000
	.size	std.core.mem.allocator.temp_allocator_min_size, 8

	.type	std.core.mem.allocator.temp_allocator_reserve_size,@object # @std.core.mem.allocator.temp_allocator_reserve_size
	.section	.data.std.core.mem.allocator.temp_allocator_reserve_size,"awG",@progbits,std.core.mem.allocator.temp_allocator_reserve_size,comdat
	.weak	std.core.mem.allocator.temp_allocator_reserve_size
	.p2align	3, 0x0
std.core.mem.allocator.temp_allocator_reserve_size:
	.quad	1024                            # 0x400
	.size	std.core.mem.allocator.temp_allocator_reserve_size, 8

	.type	std.core.mem.allocator.temp_allocator_realloc_size,@object # @std.core.mem.allocator.temp_allocator_realloc_size
	.section	.data.std.core.mem.allocator.temp_allocator_realloc_size,"awG",@progbits,std.core.mem.allocator.temp_allocator_realloc_size,comdat
	.weak	std.core.mem.allocator.temp_allocator_realloc_size
	.p2align	3, 0x0
std.core.mem.allocator.temp_allocator_realloc_size:
	.quad	65536                           # 0x10000
	.size	std.core.mem.allocator.temp_allocator_realloc_size, 8

	.type	.panic_msg.64,@object           # @.panic_msg.64
	.section	.rodata,"a",@progbits
.panic_msg.64:
	.asciz	"@require \"!top_temp\" violated: 'This should never be called when temp already exists'."
	.size	.panic_msg.64, 87

	.type	.func.65,@object                # @.func.65
.func.65:
	.asciz	"push_pool"
	.size	.func.65, 10

	.type	.func.66,@object                # @.func.66
.func.66:
	.asciz	"create_temp_allocator_on_demand"
	.size	.func.66, 32

	.type	.L.str.67,@object               # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"Use '@pool_init()' to enable the temp allocator on a new thread. A temp allocator is only implicitly created on the main thread."
	.size	.L.str.67, 129

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"mem_allocator.c3"
	.size	.L.str.68, 17

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"create_temp_allocator_on_demand"
	.size	.L.str.69, 32

	.type	.func.70,@object                # @.func.70
	.section	.rodata,"a",@progbits
.func.70:
	.asciz	"create_temp_allocator"
	.size	.func.70, 22

	.type	.func.71,@object                # @.func.71
.func.71:
	.asciz	"destroy_temp_allocators"
	.size	.func.71, 24

	.type	$ct.dyn.std.core.mem.allocator.ArenaAllocator.release,@object # @"$ct.dyn.std.core.mem.allocator.ArenaAllocator.release"
	.section	".data.$ct.dyn.std.core.mem.allocator.ArenaAllocator.release","awG",@progbits,"$ct.dyn.std.core.mem.allocator.ArenaAllocator.release",comdat
	.weak	$ct.dyn.std.core.mem.allocator.ArenaAllocator.release
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.ArenaAllocator.release:
	.quad	std.core.mem.allocator.ArenaAllocator.release
	.quad	($sel.release)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.ArenaAllocator.release, 24

	.type	$ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire,@object # @"$ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire"
	.section	".data.$ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire","awG",@progbits,"$ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire",comdat
	.weak	$ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire:
	.quad	std.core.mem.allocator.ArenaAllocator.acquire
	.quad	($sel.acquire)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.ArenaAllocator.acquire, 24

	.type	$ct.dyn.std.core.mem.allocator.ArenaAllocator.resize,@object # @"$ct.dyn.std.core.mem.allocator.ArenaAllocator.resize"
	.section	".data.$ct.dyn.std.core.mem.allocator.ArenaAllocator.resize","awG",@progbits,"$ct.dyn.std.core.mem.allocator.ArenaAllocator.resize",comdat
	.weak	$ct.dyn.std.core.mem.allocator.ArenaAllocator.resize
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.ArenaAllocator.resize:
	.quad	std.core.mem.allocator.ArenaAllocator.resize
	.quad	($sel.resize)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.ArenaAllocator.resize, 24

	.type	$ct.dyn.std.core.mem.allocator.LibcAllocator.acquire,@object # @"$ct.dyn.std.core.mem.allocator.LibcAllocator.acquire"
	.section	".data.$ct.dyn.std.core.mem.allocator.LibcAllocator.acquire","awG",@progbits,"$ct.dyn.std.core.mem.allocator.LibcAllocator.acquire",comdat
	.weak	$ct.dyn.std.core.mem.allocator.LibcAllocator.acquire
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.LibcAllocator.acquire:
	.quad	std.core.mem.allocator.LibcAllocator.acquire
	.quad	($sel.acquire)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.LibcAllocator.acquire, 24

	.type	$ct.dyn.std.core.mem.allocator.LibcAllocator.resize,@object # @"$ct.dyn.std.core.mem.allocator.LibcAllocator.resize"
	.section	".data.$ct.dyn.std.core.mem.allocator.LibcAllocator.resize","awG",@progbits,"$ct.dyn.std.core.mem.allocator.LibcAllocator.resize",comdat
	.weak	$ct.dyn.std.core.mem.allocator.LibcAllocator.resize
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.LibcAllocator.resize:
	.quad	std.core.mem.allocator.LibcAllocator.resize
	.quad	($sel.resize)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.LibcAllocator.resize, 24

	.type	$ct.dyn.std.core.mem.allocator.LibcAllocator.release,@object # @"$ct.dyn.std.core.mem.allocator.LibcAllocator.release"
	.section	".data.$ct.dyn.std.core.mem.allocator.LibcAllocator.release","awG",@progbits,"$ct.dyn.std.core.mem.allocator.LibcAllocator.release",comdat
	.weak	$ct.dyn.std.core.mem.allocator.LibcAllocator.release
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.LibcAllocator.release:
	.quad	std.core.mem.allocator.LibcAllocator.release
	.quad	($sel.release)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.LibcAllocator.release, 24

	.type	$ct.dyn.std.core.mem.allocator.OnStackAllocator.release,@object # @"$ct.dyn.std.core.mem.allocator.OnStackAllocator.release"
	.section	".data.$ct.dyn.std.core.mem.allocator.OnStackAllocator.release","awG",@progbits,"$ct.dyn.std.core.mem.allocator.OnStackAllocator.release",comdat
	.weak	$ct.dyn.std.core.mem.allocator.OnStackAllocator.release
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.OnStackAllocator.release:
	.quad	std.core.mem.allocator.OnStackAllocator.release
	.quad	($sel.release)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.OnStackAllocator.release, 24

	.type	$ct.dyn.std.core.mem.allocator.OnStackAllocator.resize,@object # @"$ct.dyn.std.core.mem.allocator.OnStackAllocator.resize"
	.section	".data.$ct.dyn.std.core.mem.allocator.OnStackAllocator.resize","awG",@progbits,"$ct.dyn.std.core.mem.allocator.OnStackAllocator.resize",comdat
	.weak	$ct.dyn.std.core.mem.allocator.OnStackAllocator.resize
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.OnStackAllocator.resize:
	.quad	std.core.mem.allocator.OnStackAllocator.resize
	.quad	($sel.resize)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.OnStackAllocator.resize, 24

	.type	$ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire,@object # @"$ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire"
	.section	".data.$ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire","awG",@progbits,"$ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire",comdat
	.weak	$ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire:
	.quad	std.core.mem.allocator.OnStackAllocator.acquire
	.quad	($sel.acquire)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.OnStackAllocator.acquire, 24

	.type	$ct.dyn.std.core.mem.allocator.TempAllocator.release,@object # @"$ct.dyn.std.core.mem.allocator.TempAllocator.release"
	.section	".data.$ct.dyn.std.core.mem.allocator.TempAllocator.release","awG",@progbits,"$ct.dyn.std.core.mem.allocator.TempAllocator.release",comdat
	.weak	$ct.dyn.std.core.mem.allocator.TempAllocator.release
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.TempAllocator.release:
	.quad	std.core.mem.allocator.TempAllocator.release
	.quad	($sel.release)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.TempAllocator.release, 24

	.type	$ct.dyn.std.core.mem.allocator.TempAllocator.resize,@object # @"$ct.dyn.std.core.mem.allocator.TempAllocator.resize"
	.section	".data.$ct.dyn.std.core.mem.allocator.TempAllocator.resize","awG",@progbits,"$ct.dyn.std.core.mem.allocator.TempAllocator.resize",comdat
	.weak	$ct.dyn.std.core.mem.allocator.TempAllocator.resize
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.TempAllocator.resize:
	.quad	std.core.mem.allocator.TempAllocator.resize
	.quad	($sel.resize)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.TempAllocator.resize, 24

	.type	$ct.dyn.std.core.mem.allocator.TempAllocator.acquire,@object # @"$ct.dyn.std.core.mem.allocator.TempAllocator.acquire"
	.section	".data.$ct.dyn.std.core.mem.allocator.TempAllocator.acquire","awG",@progbits,"$ct.dyn.std.core.mem.allocator.TempAllocator.acquire",comdat
	.weak	$ct.dyn.std.core.mem.allocator.TempAllocator.acquire
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.TempAllocator.acquire:
	.quad	std.core.mem.allocator.TempAllocator.acquire
	.quad	($sel.acquire)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.TempAllocator.acquire, 24

	.type	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire,@object # @"$ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire"
	.section	".data.$ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire","awG",@progbits,"$ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire",comdat
	.weak	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire:
	.quad	std.core.mem.allocator.LazyTempAllocator.acquire
	.quad	($sel.acquire)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.acquire, 24

	.type	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize,@object # @"$ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize"
	.section	".data.$ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize","awG",@progbits,"$ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize",comdat
	.weak	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize:
	.quad	std.core.mem.allocator.LazyTempAllocator.resize
	.quad	($sel.resize)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.resize, 24

	.type	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.release,@object # @"$ct.dyn.std.core.mem.allocator.LazyTempAllocator.release"
	.section	".data.$ct.dyn.std.core.mem.allocator.LazyTempAllocator.release","awG",@progbits,"$ct.dyn.std.core.mem.allocator.LazyTempAllocator.release",comdat
	.weak	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.release
	.p2align	3, 0x0
$ct.dyn.std.core.mem.allocator.LazyTempAllocator.release:
	.quad	std.core.mem.allocator.LazyTempAllocator.release
	.quad	($sel.release)
	.quad	-1
	.size	$ct.dyn.std.core.mem.allocator.LazyTempAllocator.release, 24

	.section	.init_array.1,"aw",@init_array
	.p2align	3, 0x0
	.quad	std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572
	.quad	.c3_dynamic_register
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	.__c3_atexit_std.core.mem.allocator.destroy_temp_allocators_after_exit.6573
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	1                               # DW_CHILDREN_yes
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
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
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
	.byte	11                              # DW_FORM_data1
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
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	37                              # Abbreviation Code
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
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
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
	.byte	44                              # Abbreviation Code
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
	.byte	45                              # Abbreviation Code
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
	.byte	46                              # Abbreviation Code
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
	.byte	47                              # Abbreviation Code
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
	.byte	48                              # Abbreviation Code
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
	.byte	49                              # Abbreviation Code
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
	.byte	50                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
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
	.byte	1                               # Abbrev [1] 0xb:0x1b9c DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges9                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x1a DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	68                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.mem.allocator.LIBC_ALLOCATOR
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x44:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x4f:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x56:0x1c DW_TAG_variable
	.long	.Linfo_string7                  # DW_AT_name
	.long	114                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.short	417                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	std.core.mem.allocator.thread_allocator@DTPOFF
	.byte	224
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.byte	6                               # Abbrev [6] 0x72:0x1e DW_TAG_structure_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	7                               # Abbrev [7] 0x79:0xb DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	144                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x84:0xb DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	153                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x90:0x9 DW_TAG_pointer_type
	.long	.Linfo_string9                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	4                               # Abbrev [4] 0x99:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa0:0x1b DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.long	114                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	418                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.mem.allocator.temp_base_allocator
	.long	.Linfo_string15                 # DW_AT_linkage_name
	.byte	9                               # Abbrev [9] 0xbb:0x1b DW_TAG_variable
	.long	.Linfo_string16                 # DW_AT_name
	.long	214                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	422                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.mem.allocator.LAZY_TEMP
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.byte	10                              # Abbrev [10] 0xd6:0xc DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	536                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0xe2:0x1c DW_TAG_variable
	.long	.Linfo_string19                 # DW_AT_name
	.long	114                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.short	423                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	std.core.mem.allocator.current_temp@DTPOFF
	.byte	224
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0xfe:0x1c DW_TAG_variable
	.long	.Linfo_string21                 # DW_AT_name
	.long	282                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.short	424                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	std.core.mem.allocator.top_temp@DTPOFF
	.byte	224
	.long	.Linfo_string45                 # DW_AT_linkage_name
	.byte	11                              # Abbrev [11] 0x11a:0xd DW_TAG_pointer_type
	.long	295                             # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x127:0x99 DW_TAG_structure_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x130:0xd DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	114                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x13d:0xd DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	448                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x14a:0xd DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	282                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x157:0xd DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	572                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x164:0xd DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x171:0xd DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x17e:0xd DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x18b:0xd DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x198:0xd DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a5:0xd DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b2:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	545                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	88                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1c0:0xd DW_TAG_pointer_type
	.long	461                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x1cd:0x4b DW_TAG_structure_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x1d6:0xd DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	448                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1e3:0xd DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	144                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1f0:0xd DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1fd:0xd DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x20a:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	545                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x218:0x9 DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	15                              # Abbrev [15] 0x221:0xd DW_TAG_array_type
	.long	558                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x226:0x7 DW_TAG_subrange_type
	.long	565                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	0                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x22e:0x7 DW_TAG_base_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0x235:0x7 DW_TAG_base_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	4                               # Abbrev [4] 0x23c:0x7 DW_TAG_base_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x243:0x1b DW_TAG_variable
	.long	.Linfo_string46                 # DW_AT_name
	.long	572                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.short	425                             # DW_AT_decl_line
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	std.core.mem.allocator.auto_create_temp@DTPOFF
	.byte	224
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x25e:0x1b DW_TAG_variable
	.long	.Linfo_string48                 # DW_AT_name
	.long	536                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.short	427                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.mem.allocator.temp_allocator_min_size
	.long	.Linfo_string49                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x279:0x1b DW_TAG_variable
	.long	.Linfo_string50                 # DW_AT_name
	.long	536                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.short	428                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.mem.allocator.temp_allocator_reserve_size
	.long	.Linfo_string51                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x294:0x1b DW_TAG_variable
	.long	.Linfo_string52                 # DW_AT_name
	.long	536                             # DW_AT_type
                                        # DW_AT_external
	.byte	2                               # DW_AT_decl_file
	.short	429                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.mem.allocator.temp_allocator_realloc_size
	.long	.Linfo_string53                 # DW_AT_linkage_name
	.byte	19                              # Abbrev [19] 0x2af:0x1a DW_TAG_enumeration_type
	.long	713                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	20                              # Abbrev [20] 0x2bc:0x6 DW_TAG_enumerator
	.long	.Linfo_string55                 # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	20                              # Abbrev [20] 0x2c2:0x6 DW_TAG_enumerator
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x2c9:0x7 DW_TAG_base_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	21                              # Abbrev [21] 0x2d0:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string91                 # DW_AT_linkage_name
	.long	.Linfo_string92                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6642                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x2ed:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	6642                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x2fb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string29                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	6691                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x30a:0x53 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string98                 # DW_AT_linkage_name
	.long	.Linfo_string99                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x323:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	6642                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x331:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x33f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string151                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x34d:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string152                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	6808                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x35d:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	26                              # Abbrev [26] 0x36a:0x1c DW_TAG_subprogram
	.long	.Linfo_string59                 # DW_AT_linkage_name
	.long	.Linfo_string60                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	536                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x37a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string61                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x386:0xd DW_TAG_subprogram
	.long	.Linfo_string62                 # DW_AT_linkage_name
	.long	.Linfo_string62                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x393:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x3a0:0xd DW_TAG_subprogram
	.long	.Linfo_string63                 # DW_AT_linkage_name
	.long	.Linfo_string63                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x3ad:0x123 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string100                # DW_AT_linkage_name
	.long	.Linfo_string101                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x3ca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string75                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	6642                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3d8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3e6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string155                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	687                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x3f4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string61                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x402:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string156                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x411:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string157                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x420:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string158                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x430:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	96                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x440:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	.Linfo_string159                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x450:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210\177"
	.long	.Linfo_string152                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	6808                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x460:0x14 DW_TAG_inlined_subroutine
	.long	861                             # DW_AT_abstract_origin
	.quad	.Ltmp10                         # DW_AT_low_pc
	.long	.Ltmp11-.Ltmp10                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	84                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x474:0x1d DW_TAG_inlined_subroutine
	.long	874                             # DW_AT_abstract_origin
	.quad	.Ltmp13                         # DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	91                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x488:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	890                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x491:0x2a DW_TAG_inlined_subroutine
	.long	902                             # DW_AT_abstract_origin
	.quad	.Ltmp15                         # DW_AT_low_pc
	.long	.Ltmp18-.Ltmp15                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	96                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x4a5:0x15 DW_TAG_inlined_subroutine
	.long	915                             # DW_AT_abstract_origin
	.quad	.Ltmp16                         # DW_AT_low_pc
	.long	.Ltmp17-.Ltmp16                 # DW_AT_high_pc
	.byte	6                               # DW_AT_call_file
	.short	313                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x4bb:0x14 DW_TAG_inlined_subroutine
	.long	928                             # DW_AT_abstract_origin
	.quad	.Ltmp19                         # DW_AT_low_pc
	.long	.Ltmp20-.Ltmp19                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	102                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x4d0:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x4dd:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x4ea:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x4f7:0xd DW_TAG_subprogram
	.long	.Linfo_string64                 # DW_AT_linkage_name
	.long	.Linfo_string64                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x504:0xd DW_TAG_subprogram
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string65                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x511:0x133 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string102                # DW_AT_linkage_name
	.long	.Linfo_string103                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x52e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string75                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	6642                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x53c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string160                # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x54a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string26                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x558:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string61                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x566:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string156                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x575:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string152                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	6808                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x584:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string161                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x594:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320~"
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x5a4:0x14 DW_TAG_inlined_subroutine
	.long	1232                            # DW_AT_abstract_origin
	.quad	.Ltmp24                         # DW_AT_low_pc
	.long	.Ltmp25-.Ltmp24                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	109                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x5b8:0x1d DW_TAG_inlined_subroutine
	.long	874                             # DW_AT_abstract_origin
	.quad	.Ltmp27                         # DW_AT_low_pc
	.long	.Ltmp28-.Ltmp27                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	117                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x5cc:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	890                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x5d5:0x14 DW_TAG_inlined_subroutine
	.long	1245                            # DW_AT_abstract_origin
	.quad	.Ltmp29                         # DW_AT_low_pc
	.long	.Ltmp30-.Ltmp29                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	124                             # DW_AT_call_line
	.byte	57                              # DW_AT_call_column
	.byte	32                              # Abbrev [32] 0x5e9:0x1e DW_TAG_lexical_block
	.quad	.Ltmp33                         # DW_AT_low_pc
	.long	.Ltmp34-.Ltmp33                 # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x5f6:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	.Linfo_string162                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	4                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x607:0x14 DW_TAG_inlined_subroutine
	.long	1258                            # DW_AT_abstract_origin
	.quad	.Ltmp36                         # DW_AT_low_pc
	.long	.Ltmp37-.Ltmp36                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	84                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x61b:0x14 DW_TAG_inlined_subroutine
	.long	1271                            # DW_AT_abstract_origin
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp39-.Ltmp38                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	141                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x62f:0x14 DW_TAG_inlined_subroutine
	.long	1284                            # DW_AT_abstract_origin
	.quad	.Ltmp39                         # DW_AT_low_pc
	.long	.Ltmp41-.Ltmp39                 # DW_AT_high_pc
	.byte	4                               # DW_AT_call_file
	.byte	141                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x644:0xd DW_TAG_subprogram
	.long	.Linfo_string63                 # DW_AT_linkage_name
	.long	.Linfo_string63                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x651:0xa5 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string104                # DW_AT_linkage_name
	.long	.Linfo_string101                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x66e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	6857                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x67c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string164                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x68a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string155                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	687                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x698:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x6a6:0x31 DW_TAG_lexical_block
	.quad	.Ltmp44                         # DW_AT_low_pc
	.long	.Ltmp49-.Ltmp44                 # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x6b3:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string29                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x6c2:0x14 DW_TAG_inlined_subroutine
	.long	1604                            # DW_AT_abstract_origin
	.quad	.Ltmp46                         # DW_AT_low_pc
	.long	.Ltmp47-.Ltmp46                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	27                              # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x6d7:0x1e DW_TAG_lexical_block
	.quad	.Ltmp49                         # DW_AT_low_pc
	.long	.Ltmp53-.Ltmp49                 # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x6e4:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string29                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x6f6:0xd DW_TAG_subprogram
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string65                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x703:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string105                # DW_AT_linkage_name
	.long	.Linfo_string103                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x720:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	6857                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x72e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string165                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x73c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string166                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x74a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x758:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string167                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x767:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string168                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x776:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string169                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x785:0x14 DW_TAG_inlined_subroutine
	.long	1782                            # DW_AT_abstract_origin
	.quad	.Ltmp56                         # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp56                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	66                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x79a:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string106                # DW_AT_linkage_name
	.long	.Linfo_string99                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x7b3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	6857                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x7c1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string165                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x7cf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string170                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x7de:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin7                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string107                # DW_AT_linkage_name
	.long	.Linfo_string92                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x7f7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x805:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string29                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	6691                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x813:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string174                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	114                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x822:0xc DW_TAG_subprogram
	.long	.Linfo_string66                 # DW_AT_linkage_name
	.long	.Linfo_string66                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x82e:0xc DW_TAG_subprogram
	.long	.Linfo_string67                 # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x83a:0xc DW_TAG_subprogram
	.long	.Linfo_string67                 # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	23                              # Abbrev [23] 0x846:0x89 DW_TAG_subprogram
	.quad	.Lfunc_begin8                   # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string108                # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x85f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x86d:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string171                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	6734                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x87c:0x52 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	24                              # Abbrev [24] 0x881:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230\177"
	.long	.Linfo_string175                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x891:0x14 DW_TAG_inlined_subroutine
	.long	2082                            # DW_AT_abstract_origin
	.quad	.Ltmp68                         # DW_AT_low_pc
	.long	.Ltmp69-.Ltmp68                 # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	46                              # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x8a5:0x14 DW_TAG_inlined_subroutine
	.long	2094                            # DW_AT_abstract_origin
	.quad	.Ltmp71                         # DW_AT_low_pc
	.long	.Ltmp72-.Ltmp71                 # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	50                              # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x8b9:0x14 DW_TAG_inlined_subroutine
	.long	2106                            # DW_AT_abstract_origin
	.quad	.Ltmp74                         # DW_AT_low_pc
	.long	.Ltmp75-.Ltmp74                 # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	54                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8cf:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin9                   # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string109                # DW_AT_linkage_name
	.long	.Linfo_string99                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x8e8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x8f6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x904:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string170                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x913:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x920:0xd DW_TAG_subprogram
	.long	.Linfo_string64                 # DW_AT_linkage_name
	.long	.Linfo_string64                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	390                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x92d:0xd DW_TAG_subprogram
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string65                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x93a:0xd7 DW_TAG_subprogram
	.quad	.Lfunc_begin10                  # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string110                # DW_AT_linkage_name
	.long	.Linfo_string103                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x957:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x965:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x973:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string26                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x981:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string61                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x98f:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240\177"
	.long	.Linfo_string152                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	6945                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x99f:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230\177"
	.long	.Linfo_string161                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x9af:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x9bf:0x29 DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	24                              # Abbrev [24] 0x9c4:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string171                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	6734                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x9d3:0x14 DW_TAG_inlined_subroutine
	.long	2323                            # DW_AT_abstract_origin
	.quad	.Ltmp85                         # DW_AT_low_pc
	.long	.Ltmp86-.Ltmp85                 # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	48                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x9e8:0x14 DW_TAG_inlined_subroutine
	.long	2336                            # DW_AT_abstract_origin
	.quad	.Ltmp90                         # DW_AT_low_pc
	.long	.Ltmp91-.Ltmp90                 # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	127                             # DW_AT_call_line
	.byte	30                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x9fc:0x14 DW_TAG_inlined_subroutine
	.long	2349                            # DW_AT_abstract_origin
	.quad	.Ltmp91                         # DW_AT_low_pc
	.long	.Ltmp93-.Ltmp91                 # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	127                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xa11:0xd DW_TAG_subprogram
	.long	.Linfo_string62                 # DW_AT_linkage_name
	.long	.Linfo_string62                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0xa1e:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0xa2b:0xc DW_TAG_subprogram
	.long	.Linfo_string68                 # DW_AT_linkage_name
	.long	.Linfo_string68                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0xa37:0xc DW_TAG_subprogram
	.long	.Linfo_string69                 # DW_AT_linkage_name
	.long	.Linfo_string69                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0xa43:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0xa50:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0xa5d:0xc DW_TAG_subprogram
	.long	.Linfo_string67                 # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0xa69:0x185 DW_TAG_subprogram
	.quad	.Lfunc_begin11                  # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string111                # DW_AT_linkage_name
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xa86:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string75                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa94:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string26                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xaa2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	687                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xab0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string61                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0xabe:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	87
	.long	.Linfo_string170                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xacc:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string156                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xadb:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string157                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xaea:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string158                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xafa:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260\177"
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xb0a:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	.Linfo_string159                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xb1a:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200\177"
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.long	114                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xb2a:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340|"
	.long	.Linfo_string152                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.long	6945                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0xb3a:0x1d DW_TAG_inlined_subroutine
	.long	874                             # DW_AT_abstract_origin
	.quad	.Ltmp98                         # DW_AT_low_pc
	.long	.Ltmp99-.Ltmp98                 # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	138                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0xb4e:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	890                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0xb57:0x2a DW_TAG_inlined_subroutine
	.long	2577                            # DW_AT_abstract_origin
	.quad	.Ltmp100                        # DW_AT_low_pc
	.long	.Ltmp103-.Ltmp100               # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	142                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0xb6b:0x15 DW_TAG_inlined_subroutine
	.long	2590                            # DW_AT_abstract_origin
	.quad	.Ltmp101                        # DW_AT_low_pc
	.long	.Ltmp102-.Ltmp101               # DW_AT_high_pc
	.byte	6                               # DW_AT_call_file
	.short	313                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0xb81:0x6c DW_TAG_lexical_block
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	24                              # Abbrev [24] 0xb86:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	.Linfo_string171                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	6734                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0xb96:0x2e DW_TAG_inlined_subroutine
	.long	2615                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	7                               # DW_AT_call_file
	.byte	148                             # DW_AT_call_line
	.byte	39                              # DW_AT_call_column
	.byte	36                              # Abbrev [36] 0xba2:0x21 DW_TAG_inlined_subroutine
	.long	2603                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	237                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0xbae:0x14 DW_TAG_inlined_subroutine
	.long	2627                            # DW_AT_abstract_origin
	.quad	.Ltmp105                        # DW_AT_low_pc
	.long	.Ltmp106-.Ltmp105               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0xbc4:0x14 DW_TAG_inlined_subroutine
	.long	2640                            # DW_AT_abstract_origin
	.quad	.Ltmp110                        # DW_AT_low_pc
	.long	.Ltmp111-.Ltmp110               # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0xbd8:0x14 DW_TAG_inlined_subroutine
	.long	2653                            # DW_AT_abstract_origin
	.quad	.Ltmp115                        # DW_AT_low_pc
	.long	.Ltmp116-.Ltmp115               # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	149                             # DW_AT_call_line
	.byte	15                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xbee:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin12                  # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string112                # DW_AT_linkage_name
	.long	.Linfo_string113                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	572                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xc0b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string178                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xc19:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xc28:0xc DW_TAG_subprogram
	.long	.Linfo_string67                 # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0xc34:0xc DW_TAG_subprogram
	.long	.Linfo_string70                 # DW_AT_linkage_name
	.long	.Linfo_string70                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	241                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	38                              # Abbrev [38] 0xc40:0x7c DW_TAG_subprogram
	.quad	.Lfunc_begin13                  # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string114                # DW_AT_linkage_name
	.long	.Linfo_string115                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0xc59:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string178                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xc67:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xc75:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string171                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	6734                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xc84:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string179                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	6994                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0xc93:0x14 DW_TAG_inlined_subroutine
	.long	3112                            # DW_AT_abstract_origin
	.quad	.Ltmp128                        # DW_AT_low_pc
	.long	.Ltmp129-.Ltmp128               # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	90                              # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0xca7:0x14 DW_TAG_inlined_subroutine
	.long	3124                            # DW_AT_abstract_origin
	.quad	.Ltmp132                        # DW_AT_low_pc
	.long	.Ltmp133-.Ltmp132               # DW_AT_high_pc
	.byte	7                               # DW_AT_call_file
	.byte	96                              # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0xcbc:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin14                  # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string116                # DW_AT_linkage_name
	.long	.Linfo_string117                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6734                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xcd9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string178                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	6870                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xce7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xcf5:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string171                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	7                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	6734                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0xd05:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0xd12:0xab DW_TAG_subprogram
	.quad	.Lfunc_begin15                  # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string121                # DW_AT_linkage_name
	.long	.Linfo_string122                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xd2f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xd3d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string181                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xd4b:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string182                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xd5a:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xd69:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xd78:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xd88:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230\177"
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xd98:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220\177"
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xda8:0x14 DW_TAG_inlined_subroutine
	.long	3333                            # DW_AT_abstract_origin
	.quad	.Ltmp146                        # DW_AT_low_pc
	.long	.Ltmp147-.Ltmp146               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	99                              # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xdbd:0x54 DW_TAG_subprogram
	.quad	.Lfunc_begin16                  # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string123                # DW_AT_linkage_name
	.long	.Linfo_string124                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xdd6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xde4:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string184                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xdf3:0x1d DW_TAG_lexical_block
	.quad	.Ltmp151                        # DW_AT_low_pc
	.long	.Ltmp152-.Ltmp151               # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0xe00:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string175                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xe11:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin17                  # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string125                # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xe2a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0xe39:0x33 DW_TAG_subprogram
	.long	.Linfo_string71                 # DW_AT_linkage_name
	.long	.Linfo_string72                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0xe49:0xb DW_TAG_formal_parameter
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0xe54:0xb DW_TAG_formal_parameter
	.long	.Linfo_string76                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0xe5f:0xc DW_TAG_variable
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xe6c:0x9 DW_TAG_typedef
	.long	3701                            # DW_AT_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	4                               # Abbrev [4] 0xe75:0x7 DW_TAG_base_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	33                              # Abbrev [33] 0xe7c:0xc DW_TAG_subprogram
	.long	.Linfo_string78                 # DW_AT_linkage_name
	.long	.Linfo_string78                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0xe88:0xc DW_TAG_subprogram
	.long	.Linfo_string67                 # DW_AT_linkage_name
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	38                              # Abbrev [38] 0xe94:0xaa DW_TAG_subprogram
	.quad	.Lfunc_begin18                  # DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string126                # DW_AT_linkage_name
	.long	.Linfo_string127                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	22                              # Abbrev [22] 0xead:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xebb:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0xeca:0x5f DW_TAG_lexical_block
	.quad	.Ltmp160                        # DW_AT_low_pc
	.long	.Ltmp166-.Ltmp160               # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0xed7:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string185                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0xee7:0x41 DW_TAG_inlined_subroutine
	.long	3641                            # DW_AT_abstract_origin
	.quad	.Ltmp161                        # DW_AT_low_pc
	.long	.Ltmp165-.Ltmp161               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	155                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0xefb:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	3657                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0xf03:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	3668                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xf0b:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	3679                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0xf13:0x14 DW_TAG_inlined_subroutine
	.long	3708                            # DW_AT_abstract_origin
	.quad	.Ltmp162                        # DW_AT_low_pc
	.long	.Ltmp164-.Ltmp162               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	185                             # DW_AT_call_line
	.byte	45                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0xf29:0x14 DW_TAG_inlined_subroutine
	.long	3720                            # DW_AT_abstract_origin
	.quad	.Ltmp168                        # DW_AT_low_pc
	.long	.Ltmp169-.Ltmp168               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	159                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xf3e:0xc DW_TAG_subprogram
	.long	.Linfo_string79                 # DW_AT_linkage_name
	.long	.Linfo_string79                 # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	23                              # Abbrev [23] 0xf4a:0x67 DW_TAG_subprogram
	.quad	.Lfunc_begin19                  # DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string128                # DW_AT_linkage_name
	.long	.Linfo_string99                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0xf63:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xf71:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string160                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0xf7f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string151                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0xf8d:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string161                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0xf9c:0x14 DW_TAG_inlined_subroutine
	.long	3902                            # DW_AT_abstract_origin
	.quad	.Ltmp175                        # DW_AT_low_pc
	.long	.Ltmp176-.Ltmp175               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	177                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0xfb1:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin20                  # DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	3641                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0xfc4:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	3657                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0xfcc:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	3668                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0xfd4:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	3679                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0xfdc:0x14 DW_TAG_inlined_subroutine
	.long	3708                            # DW_AT_abstract_origin
	.quad	.Ltmp179                        # DW_AT_low_pc
	.long	.Ltmp181-.Ltmp179               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	185                             # DW_AT_call_line
	.byte	45                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0xff1:0xc DW_TAG_subprogram
	.long	.Linfo_string80                 # DW_AT_linkage_name
	.long	.Linfo_string80                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0xffd:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x100a:0xd DW_TAG_subprogram
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string65                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x1017:0xc DW_TAG_subprogram
	.long	.Linfo_string78                 # DW_AT_linkage_name
	.long	.Linfo_string78                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	42                              # Abbrev [42] 0x1023:0xa7 DW_TAG_subprogram
	.quad	.Lfunc_begin21                  # DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4298                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x1036:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	4314                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x103e:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	4325                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x1046:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	4336                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x104e:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	4347                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1056:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	4358                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x105e:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	4370                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1066:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210~"
	.long	4382                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x106f:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370}"
	.long	4394                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x1078:0x14 DW_TAG_inlined_subroutine
	.long	4081                            # DW_AT_abstract_origin
	.quad	.Ltmp187                        # DW_AT_low_pc
	.long	.Ltmp189-.Ltmp187               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	201                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x108c:0x15 DW_TAG_inlined_subroutine
	.long	4093                            # DW_AT_abstract_origin
	.quad	.Ltmp190                        # DW_AT_low_pc
	.long	.Ltmp191-.Ltmp190               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x10a1:0x14 DW_TAG_inlined_subroutine
	.long	4106                            # DW_AT_abstract_origin
	.quad	.Ltmp192                        # DW_AT_low_pc
	.long	.Ltmp194-.Ltmp192               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	205                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x10b5:0x14 DW_TAG_inlined_subroutine
	.long	4119                            # DW_AT_abstract_origin
	.quad	.Ltmp195                        # DW_AT_low_pc
	.long	.Ltmp197-.Ltmp195               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	206                             # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x10ca:0x6d DW_TAG_subprogram
	.long	.Linfo_string81                 # DW_AT_linkage_name
	.long	.Linfo_string82                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
	.byte	1                               # DW_AT_inline
	.byte	27                              # Abbrev [27] 0x10da:0xb DW_TAG_formal_parameter
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x10e5:0xb DW_TAG_formal_parameter
	.long	.Linfo_string76                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x10f0:0xb DW_TAG_formal_parameter
	.long	.Linfo_string26                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x10fb:0xb DW_TAG_formal_parameter
	.long	.Linfo_string61                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x1106:0xc DW_TAG_variable
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x1112:0xc DW_TAG_variable
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	4407                            # DW_AT_type
	.byte	40                              # Abbrev [40] 0x111e:0xc DW_TAG_variable
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	40                              # Abbrev [40] 0x112a:0xc DW_TAG_variable
	.long	.Linfo_string29                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1137:0xd DW_TAG_pointer_type
	.long	448                             # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	25                              # Abbrev [25] 0x1144:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1151:0xd DW_TAG_subprogram
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string65                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x115e:0x1a6 DW_TAG_subprogram
	.quad	.Lfunc_begin22                  # DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string129                # DW_AT_linkage_name
	.long	.Linfo_string103                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x117b:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250}"
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x118a:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240}"
	.long	.Linfo_string186                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x1199:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230}"
	.long	.Linfo_string26                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x11a8:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220}"
	.long	.Linfo_string61                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x11b7:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210}"
	.long	.Linfo_string171                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.long	7007                            # DW_AT_type
	.byte	35                              # Abbrev [35] 0x11c7:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\357|"
	.long	.Linfo_string189                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x11d6:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310|"
	.long	.Linfo_string29                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	242                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x11e6:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250|"
	.long	.Linfo_string192                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x11f6:0xc6 DW_TAG_lexical_block
	.quad	.Ltmp203                        # DW_AT_low_pc
	.long	.Ltmp223-.Ltmp203               # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x1203:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\200}"
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1213:0xa8 DW_TAG_inlined_subroutine
	.long	4298                            # DW_AT_abstract_origin
	.quad	.Ltmp204                        # DW_AT_low_pc
	.long	.Ltmp222-.Ltmp204               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	218                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x1227:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	4314                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x122f:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	4325                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x1237:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	4336                            # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x123f:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	4347                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1247:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	4358                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x124f:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	4370                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1257:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210~"
	.long	4382                            # DW_AT_abstract_origin
	.byte	41                              # Abbrev [41] 0x1260:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370}"
	.long	4394                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x1269:0x14 DW_TAG_inlined_subroutine
	.long	4081                            # DW_AT_abstract_origin
	.quad	.Ltmp208                        # DW_AT_low_pc
	.long	.Ltmp210-.Ltmp208               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	201                             # DW_AT_call_line
	.byte	18                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x127d:0x15 DW_TAG_inlined_subroutine
	.long	4093                            # DW_AT_abstract_origin
	.quad	.Ltmp211                        # DW_AT_low_pc
	.long	.Ltmp212-.Ltmp211               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x1292:0x14 DW_TAG_inlined_subroutine
	.long	4106                            # DW_AT_abstract_origin
	.quad	.Ltmp213                        # DW_AT_low_pc
	.long	.Ltmp215-.Ltmp213               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	205                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x12a6:0x14 DW_TAG_inlined_subroutine
	.long	4119                            # DW_AT_abstract_origin
	.quad	.Ltmp216                        # DW_AT_low_pc
	.long	.Ltmp218-.Ltmp216               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	206                             # DW_AT_call_line
	.byte	47                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x12bc:0x1e DW_TAG_lexical_block
	.quad	.Ltmp224                        # DW_AT_low_pc
	.long	.Ltmp226-.Ltmp224               # DW_AT_high_pc
	.byte	24                              # Abbrev [24] 0x12c9:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340|"
	.long	.Linfo_string190                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.long	7056                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x12da:0x15 DW_TAG_inlined_subroutine
	.long	4420                            # DW_AT_abstract_origin
	.quad	.Ltmp227                        # DW_AT_low_pc
	.long	.Ltmp228-.Ltmp227               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x12ef:0x14 DW_TAG_inlined_subroutine
	.long	4433                            # DW_AT_abstract_origin
	.quad	.Ltmp229                        # DW_AT_low_pc
	.long	.Ltmp231-.Ltmp229               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	244                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x1304:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1311:0xd DW_TAG_subprogram
	.long	.Linfo_string62                 # DW_AT_linkage_name
	.long	.Linfo_string62                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x131e:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x132b:0xd DW_TAG_subprogram
	.long	.Linfo_string62                 # DW_AT_linkage_name
	.long	.Linfo_string62                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1338:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1345:0xd DW_TAG_subprogram
	.long	.Linfo_string63                 # DW_AT_linkage_name
	.long	.Linfo_string63                 # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	334                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1352:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x135f:0xc DW_TAG_subprogram
	.long	.Linfo_string87                 # DW_AT_linkage_name
	.long	.Linfo_string87                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x136b:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x1378:0xc DW_TAG_subprogram
	.long	.Linfo_string88                 # DW_AT_linkage_name
	.long	.Linfo_string88                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1384:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1391:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x139e:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x13ab:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x13b8:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x13c5:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	43                              # Abbrev [43] 0x13d2:0x29e DW_TAG_subprogram
	.quad	.Lfunc_begin23                  # DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string130                # DW_AT_linkage_name
	.long	.Linfo_string101                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	260                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	44                              # Abbrev [44] 0x13f0:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string75                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	260                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x13ff:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string26                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	260                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x140e:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string155                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	260                             # DW_AT_decl_line
	.long	687                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x141d:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string61                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	260                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x142c:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string157                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	263                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x143c:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string193                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	264                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x144c:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	.Linfo_string194                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	265                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x145d:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230\177"
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	266                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x146e:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	.Linfo_string195                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	271                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x147f:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300~"
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	285                             # DW_AT_decl_line
	.long	448                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1490:0x15 DW_TAG_inlined_subroutine
	.long	4868                            # DW_AT_abstract_origin
	.quad	.Ltmp237                        # DW_AT_low_pc
	.long	.Ltmp238-.Ltmp237               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	46                              # Abbrev [46] 0x14a5:0x1e DW_TAG_inlined_subroutine
	.long	874                             # DW_AT_abstract_origin
	.quad	.Ltmp240                        # DW_AT_low_pc
	.long	.Ltmp241-.Ltmp240               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	262                             # DW_AT_call_line
	.byte	14                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x14ba:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	890                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x14c3:0x2b DW_TAG_inlined_subroutine
	.long	4881                            # DW_AT_abstract_origin
	.quad	.Ltmp242                        # DW_AT_low_pc
	.long	.Ltmp245-.Ltmp242               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	265                             # DW_AT_call_line
	.byte	31                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x14d8:0x15 DW_TAG_inlined_subroutine
	.long	4894                            # DW_AT_abstract_origin
	.quad	.Ltmp243                        # DW_AT_low_pc
	.long	.Ltmp244-.Ltmp243               # DW_AT_high_pc
	.byte	6                               # DW_AT_call_file
	.short	313                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	46                              # Abbrev [46] 0x14ee:0x2b DW_TAG_inlined_subroutine
	.long	4907                            # DW_AT_abstract_origin
	.quad	.Ltmp246                        # DW_AT_low_pc
	.long	.Ltmp249-.Ltmp246               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	269                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1503:0x15 DW_TAG_inlined_subroutine
	.long	4920                            # DW_AT_abstract_origin
	.quad	.Ltmp247                        # DW_AT_low_pc
	.long	.Ltmp248-.Ltmp247               # DW_AT_high_pc
	.byte	6                               # DW_AT_call_file
	.short	313                             # DW_AT_call_line
	.byte	22                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x1519:0x34 DW_TAG_lexical_block
	.quad	.Ltmp250                        # DW_AT_low_pc
	.long	.Ltmp253-.Ltmp250               # DW_AT_high_pc
	.byte	45                              # Abbrev [45] 0x1526:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	.Linfo_string196                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	277                             # DW_AT_decl_line
	.long	7007                            # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1537:0x15 DW_TAG_inlined_subroutine
	.long	4933                            # DW_AT_abstract_origin
	.quad	.Ltmp251                        # DW_AT_low_pc
	.long	.Ltmp252-.Ltmp251               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	280                             # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x154d:0x96 DW_TAG_lexical_block
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	45                              # Abbrev [45] 0x1552:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270~"
	.long	.Linfo_string197                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	291                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x1563:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210}"
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1574:0x15 DW_TAG_inlined_subroutine
	.long	4946                            # DW_AT_abstract_origin
	.quad	.Ltmp255                        # DW_AT_low_pc
	.long	.Ltmp256-.Ltmp255               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	291                             # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	47                              # Abbrev [47] 0x1589:0x22 DW_TAG_inlined_subroutine
	.long	4959                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	294                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x1596:0x14 DW_TAG_inlined_subroutine
	.long	4971                            # DW_AT_abstract_origin
	.quad	.Ltmp259                        # DW_AT_low_pc
	.long	.Ltmp260-.Ltmp259               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0x15ab:0x22 DW_TAG_inlined_subroutine
	.long	4984                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 # DW_AT_ranges
	.byte	3                               # DW_AT_call_file
	.short	298                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x15b8:0x14 DW_TAG_inlined_subroutine
	.long	4996                            # DW_AT_abstract_origin
	.quad	.Ltmp265                        # DW_AT_low_pc
	.long	.Ltmp266-.Ltmp265               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x15cd:0x15 DW_TAG_inlined_subroutine
	.long	5009                            # DW_AT_abstract_origin
	.quad	.Ltmp270                        # DW_AT_low_pc
	.long	.Ltmp271-.Ltmp270               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	301                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x15e3:0x8c DW_TAG_lexical_block
	.long	.Ldebug_ranges8                 # DW_AT_ranges
	.byte	45                              # Abbrev [45] 0x15e8:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370|"
	.long	.Linfo_string198                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	309                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x15f9:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350|"
	.long	.Linfo_string197                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x160a:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340|"
	.long	.Linfo_string199                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.short	311                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x161b:0x15 DW_TAG_inlined_subroutine
	.long	5022                            # DW_AT_abstract_origin
	.quad	.Ltmp273                        # DW_AT_low_pc
	.long	.Ltmp274-.Ltmp273               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	309                             # DW_AT_call_line
	.byte	28                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x1630:0x14 DW_TAG_inlined_subroutine
	.long	5035                            # DW_AT_abstract_origin
	.quad	.Ltmp275                        # DW_AT_low_pc
	.long	.Ltmp276-.Ltmp275               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1644:0x15 DW_TAG_inlined_subroutine
	.long	5048                            # DW_AT_abstract_origin
	.quad	.Ltmp279                        # DW_AT_low_pc
	.long	.Ltmp280-.Ltmp279               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	315                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	31                              # Abbrev [31] 0x1659:0x15 DW_TAG_inlined_subroutine
	.long	5061                            # DW_AT_abstract_origin
	.quad	.Ltmp281                        # DW_AT_low_pc
	.long	.Ltmp282-.Ltmp281               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.short	316                             # DW_AT_call_line
	.byte	10                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x1670:0xc DW_TAG_subprogram
	.long	.Linfo_string89                 # DW_AT_linkage_name
	.long	.Linfo_string89                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	33                              # Abbrev [33] 0x167c:0xc DW_TAG_subprogram
	.long	.Linfo_string68                 # DW_AT_linkage_name
	.long	.Linfo_string68                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	25                              # Abbrev [25] 0x1688:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	21                              # Abbrev [21] 0x1695:0xb1 DW_TAG_subprogram
	.quad	.Lfunc_begin24                  # DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string131                # DW_AT_linkage_name
	.long	.Linfo_string132                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	22                              # Abbrev [22] 0x16b2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string174                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	114                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x16c0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string26                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x16ce:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string181                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x16dc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string39                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	22                              # Abbrev [22] 0x16ea:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string38                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x16f8:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	3                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	29                              # Abbrev [29] 0x1707:0x3e DW_TAG_inlined_subroutine
	.long	5744                            # DW_AT_abstract_origin
	.quad	.Ltmp287                        # DW_AT_low_pc
	.long	.Ltmp291-.Ltmp287               # DW_AT_high_pc
	.byte	3                               # DW_AT_call_file
	.byte	74                              # DW_AT_call_line
	.byte	24                              # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x171b:0x29 DW_TAG_inlined_subroutine
	.long	5756                            # DW_AT_abstract_origin
	.quad	.Ltmp288                        # DW_AT_low_pc
	.long	.Ltmp291-.Ltmp288               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	254                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x172f:0x14 DW_TAG_inlined_subroutine
	.long	5768                            # DW_AT_abstract_origin
	.quad	.Ltmp289                        # DW_AT_low_pc
	.long	.Ltmp290-.Ltmp289               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x1746:0xd DW_TAG_subprogram
	.long	.Linfo_string58                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	43                              # Abbrev [43] 0x1753:0x70 DW_TAG_subprogram
	.quad	.Lfunc_begin25                  # DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string133                # DW_AT_linkage_name
	.long	.Linfo_string101                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	44                              # Abbrev [44] 0x1771:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
	.long	7065                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1780:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string164                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x178f:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string155                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
	.long	687                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x179e:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string61                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	538                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x17ad:0x15 DW_TAG_inlined_subroutine
	.long	5958                            # DW_AT_abstract_origin
	.quad	.Ltmp294                        # DW_AT_low_pc
	.long	.Ltmp295-.Ltmp294               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x17c3:0x5b DW_TAG_subprogram
	.quad	.Lfunc_begin26                  # DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string134                # DW_AT_linkage_name
	.long	.Linfo_string103                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	544                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	3692                            # DW_AT_type
                                        # DW_AT_external
	.byte	44                              # Abbrev [44] 0x17e1:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	544                             # DW_AT_decl_line
	.long	7065                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x17f0:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string165                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	544                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x17ff:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string166                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	544                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x180e:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string61                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	544                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x181e:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin27                  # DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string135                # DW_AT_linkage_name
	.long	.Linfo_string99                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	44                              # Abbrev [44] 0x1838:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string75                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	7065                            # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1847:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string165                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	144                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1856:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string170                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	550                             # DW_AT_decl_line
	.long	572                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	42                              # Abbrev [42] 0x1866:0x1c DW_TAG_subprogram
	.quad	.Lfunc_begin28                  # DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	874                             # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x1879:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	890                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	43                              # Abbrev [43] 0x1882:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin29                  # DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string136                # DW_AT_linkage_name
	.long	.Linfo_string137                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	431                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	6796                            # DW_AT_type
                                        # DW_AT_external
	.byte	44                              # Abbrev [44] 0x18a0:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string181                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	431                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	45                              # Abbrev [45] 0x18af:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string175                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	2                               # DW_AT_decl_file
	.short	433                             # DW_AT_decl_line
	.long	114                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	48                              # Abbrev [48] 0x18c0:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin30                  # DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string139                # DW_AT_linkage_name
	.long	.Linfo_string140                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	438                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	44                              # Abbrev [44] 0x18da:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string175                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	438                             # DW_AT_decl_line
	.long	6796                            # DW_AT_type
	.byte	45                              # Abbrev [45] 0x18e9:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	2                               # DW_AT_decl_file
	.short	440                             # DW_AT_decl_line
	.long	282                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x18fa:0xc DW_TAG_subprogram
	.long	.Linfo_string90                 # DW_AT_linkage_name
	.long	.Linfo_string90                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	49                              # Abbrev [49] 0x1906:0x34 DW_TAG_subprogram
	.quad	.Lfunc_begin31                  # DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string141                # DW_AT_linkage_name
	.long	.Linfo_string142                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	489                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	114                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x1924:0x15 DW_TAG_inlined_subroutine
	.long	6394                            # DW_AT_abstract_origin
	.quad	.Ltmp310                        # DW_AT_low_pc
	.long	.Ltmp311-.Ltmp310               # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	494                             # DW_AT_call_line
	.byte	6                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	49                              # Abbrev [49] 0x193a:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin32                  # DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string143                # DW_AT_linkage_name
	.long	.Linfo_string144                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	114                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1958:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string174                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	114                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1967:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1976:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string181                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1985:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string39                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x1994:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	502                             # DW_AT_decl_line
	.long	536                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	50                              # Abbrev [50] 0x19a4:0x1a DW_TAG_subprogram
	.quad	.Lfunc_begin33                  # DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string145                # DW_AT_linkage_name
	.long	.Linfo_string146                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	527                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	51                              # Abbrev [51] 0x19be:0x1a DW_TAG_subprogram
	.quad	.Lfunc_begin34                  # DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string147                # DW_AT_linkage_name
	.long	.Linfo_string148                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	514                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	51                              # Abbrev [51] 0x19d8:0x1a DW_TAG_subprogram
	.quad	.Lfunc_begin35                  # DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string149                # DW_AT_linkage_name
	.long	.Linfo_string150                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	519                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	11                              # Abbrev [11] 0x19f2:0xd DW_TAG_pointer_type
	.long	6655                            # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x19ff:0x24 DW_TAG_structure_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x1a08:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	6691                            # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a15:0xd DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1a23:0x1e DW_TAG_structure_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	7                               # Abbrev [7] 0x1a2a:0xb DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	6721                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	7                               # Abbrev [7] 0x1a35:0xb DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1a41:0xd DW_TAG_pointer_type
	.long	558                             # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	11                              # Abbrev [11] 0x1a4e:0xd DW_TAG_pointer_type
	.long	6747                            # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x1a5b:0x31 DW_TAG_structure_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x1a64:0xd DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	572                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a71:0xd DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	6734                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a7e:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	144                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1a8c:0xc DW_TAG_typedef
	.long	282                             # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	420                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1a98:0xd DW_TAG_pointer_type
	.long	6821                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x1aa5:0x24 DW_TAG_structure_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x1aae:0xd DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1abb:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	545                             # DW_AT_type
	.byte	4                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1ac9:0xd DW_TAG_pointer_type
	.long	68                              # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	11                              # Abbrev [11] 0x1ad6:0xd DW_TAG_pointer_type
	.long	6883                            # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x1ae3:0x3e DW_TAG_structure_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x1aec:0xd DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	114                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1af9:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	6691                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b06:0xd DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b13:0xd DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	6734                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1b21:0xd DW_TAG_pointer_type
	.long	6958                            # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x1b2e:0x24 DW_TAG_structure_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x1b37:0xd DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b44:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	545                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x1b52:0xd DW_TAG_pointer_type
	.long	6734                            # DW_AT_type
	.long	.Linfo_string180                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	11                              # Abbrev [11] 0x1b5f:0xd DW_TAG_pointer_type
	.long	7020                            # DW_AT_type
	.long	.Linfo_string188                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	12                              # Abbrev [12] 0x1b6c:0x24 DW_TAG_structure_type
	.long	.Linfo_string187                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	13                              # Abbrev [13] 0x1b75:0xd DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	536                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b82:0xd DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	545                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1b90:0x9 DW_TAG_typedef
	.long	3701                            # DW_AT_type
	.long	.Linfo_string191                # DW_AT_name
	.byte	11                              # Abbrev [11] 0x1b99:0xd DW_TAG_pointer_type
	.long	214                             # DW_AT_type
	.long	.Linfo_string200                # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp66
	.quad	.Ltmp69
	.quad	.Ltmp70
	.quad	.Ltmp72
	.quad	.Ltmp73
	.quad	.Ltmp75
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp84
	.quad	.Ltmp87
	.quad	.Ltmp88
	.quad	.Ltmp89
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp104
	.quad	.Ltmp107
	.quad	.Ltmp108
	.quad	.Ltmp112
	.quad	.Ltmp113
	.quad	.Ltmp116
	.quad	.Ltmp117
	.quad	.Ltmp119
	.quad	.Ltmp120
	.quad	.Ltmp121
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp104
	.quad	.Ltmp107
	.quad	.Ltmp108
	.quad	.Ltmp109
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp104
	.quad	.Ltmp107
	.quad	.Ltmp108
	.quad	.Ltmp109
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp254
	.quad	.Ltmp261
	.quad	.Ltmp262
	.quad	.Ltmp267
	.quad	.Ltmp268
	.quad	.Ltmp272
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp258
	.quad	.Ltmp261
	.quad	.Ltmp262
	.quad	.Ltmp263
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp264
	.quad	.Ltmp267
	.quad	.Ltmp268
	.quad	.Ltmp269
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp273
	.quad	.Ltmp277
	.quad	.Ltmp278
	.quad	.Ltmp283
	.quad	0
	.quad	0
.Ldebug_ranges9:
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
	.quad	.Lfunc_begin9
	.quad	.Lfunc_end9
	.quad	.Lfunc_begin10
	.quad	.Lfunc_end10
	.quad	.Lfunc_begin11
	.quad	.Lfunc_end11
	.quad	.Lfunc_begin12
	.quad	.Lfunc_end14
	.quad	.Lfunc_begin18
	.quad	.Lfunc_end18
	.quad	.Lfunc_begin20
	.quad	.Lfunc_end21
	.quad	.Lfunc_begin31
	.quad	.Lfunc_end32
	.quad	.Lfunc_begin34
	.quad	.Lfunc_end35
	.quad	.Lfunc_begin15
	.quad	.Lfunc_end15
	.quad	.Lfunc_begin16
	.quad	.Lfunc_end16
	.quad	.Lfunc_begin17
	.quad	.Lfunc_end17
	.quad	.Lfunc_begin19
	.quad	.Lfunc_end19
	.quad	.Lfunc_begin22
	.quad	.Lfunc_end22
	.quad	.Lfunc_begin23
	.quad	.Lfunc_end23
	.quad	.Lfunc_begin24
	.quad	.Lfunc_end24
	.quad	.Lfunc_begin25
	.quad	.Lfunc_end25
	.quad	.Lfunc_begin26
	.quad	.Lfunc_end26
	.quad	.Lfunc_begin27
	.quad	.Lfunc_end27
	.quad	.Lfunc_begin28
	.quad	.Lfunc_end28
	.quad	.Lfunc_begin29
	.quad	.Lfunc_end29
	.quad	.Lfunc_begin30
	.quad	.Lfunc_end30
	.quad	.Lfunc_begin33
	.quad	.Lfunc_end33
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"arena_allocator.c3"            # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/allocators" # string offset=23
.Linfo_string3:
	.asciz	"LIBC_ALLOCATOR"                # string offset=104
.Linfo_string4:
	.asciz	"ulong"                         # string offset=119
.Linfo_string5:
	.asciz	"LibcAllocator"                 # string offset=125
.Linfo_string6:
	.asciz	"std.core.mem.allocator.LIBC_ALLOCATOR" # string offset=139
.Linfo_string7:
	.asciz	"thread_allocator"              # string offset=177
.Linfo_string8:
	.asciz	"ptr"                           # string offset=194
.Linfo_string9:
	.asciz	"void*"                         # string offset=198
.Linfo_string10:
	.asciz	"type"                          # string offset=204
.Linfo_string11:
	.asciz	"typeid"                        # string offset=209
.Linfo_string12:
	.asciz	"Allocator"                     # string offset=216
.Linfo_string13:
	.asciz	"std.core.mem.allocator.thread_allocator" # string offset=226
.Linfo_string14:
	.asciz	"temp_base_allocator"           # string offset=266
.Linfo_string15:
	.asciz	"std.core.mem.allocator.temp_base_allocator" # string offset=286
.Linfo_string16:
	.asciz	"LAZY_TEMP"                     # string offset=329
.Linfo_string17:
	.asciz	"LazyTempAllocator"             # string offset=339
.Linfo_string18:
	.asciz	"std.core.mem.allocator.LAZY_TEMP" # string offset=357
.Linfo_string19:
	.asciz	"current_temp"                  # string offset=390
.Linfo_string20:
	.asciz	"std.core.mem.allocator.current_temp" # string offset=403
.Linfo_string21:
	.asciz	"top_temp"                      # string offset=439
.Linfo_string22:
	.asciz	"backing_allocator"             # string offset=448
.Linfo_string23:
	.asciz	"last_page"                     # string offset=466
.Linfo_string24:
	.asciz	"prev_page"                     # string offset=476
.Linfo_string25:
	.asciz	"start"                         # string offset=486
.Linfo_string26:
	.asciz	"size"                          # string offset=492
.Linfo_string27:
	.asciz	"usz"                           # string offset=497
.Linfo_string28:
	.asciz	"ident"                         # string offset=501
.Linfo_string29:
	.asciz	"data"                          # string offset=507
.Linfo_string30:
	.asciz	"char"                          # string offset=512
.Linfo_string31:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=517
.Linfo_string32:
	.asciz	"TempAllocatorPage"             # string offset=537
.Linfo_string33:
	.asciz	"TempAllocatorPage*"            # string offset=555
.Linfo_string34:
	.asciz	"derived"                       # string offset=574
.Linfo_string35:
	.asciz	"allocated"                     # string offset=582
.Linfo_string36:
	.asciz	"bool"                          # string offset=592
.Linfo_string37:
	.asciz	"reserve_size"                  # string offset=597
.Linfo_string38:
	.asciz	"realloc_size"                  # string offset=610
.Linfo_string39:
	.asciz	"min_size"                      # string offset=623
.Linfo_string40:
	.asciz	"used"                          # string offset=632
.Linfo_string41:
	.asciz	"capacity"                      # string offset=637
.Linfo_string42:
	.asciz	"original_capacity"             # string offset=646
.Linfo_string43:
	.asciz	"TempAllocator"                 # string offset=664
.Linfo_string44:
	.asciz	"TempAllocator*"                # string offset=678
.Linfo_string45:
	.asciz	"std.core.mem.allocator.top_temp" # string offset=693
.Linfo_string46:
	.asciz	"auto_create_temp"              # string offset=725
.Linfo_string47:
	.asciz	"std.core.mem.allocator.auto_create_temp" # string offset=742
.Linfo_string48:
	.asciz	"temp_allocator_min_size"       # string offset=782
.Linfo_string49:
	.asciz	"std.core.mem.allocator.temp_allocator_min_size" # string offset=806
.Linfo_string50:
	.asciz	"temp_allocator_reserve_size"   # string offset=853
.Linfo_string51:
	.asciz	"std.core.mem.allocator.temp_allocator_reserve_size" # string offset=881
.Linfo_string52:
	.asciz	"temp_allocator_realloc_size"   # string offset=932
.Linfo_string53:
	.asciz	"std.core.mem.allocator.temp_allocator_realloc_size" # string offset=960
.Linfo_string54:
	.asciz	"int"                           # string offset=1011
.Linfo_string55:
	.asciz	"NO_ZERO"                       # string offset=1015
.Linfo_string56:
	.asciz	"ZERO"                          # string offset=1023
.Linfo_string57:
	.asciz	"AllocInitType"                 # string offset=1028
.Linfo_string58:
	.asciz	"is_power_of_2"                 # string offset=1042
.Linfo_string59:
	.asciz	"std.core.mem.allocator.alignment_for_allocation" # string offset=1056
.Linfo_string60:
	.asciz	"alignment_for_allocation"      # string offset=1104
.Linfo_string61:
	.asciz	"alignment"                     # string offset=1129
.Linfo_string62:
	.asciz	"aligned_pointer"               # string offset=1139
.Linfo_string63:
	.asciz	"clear"                         # string offset=1155
.Linfo_string64:
	.asciz	"min"                           # string offset=1161
.Linfo_string65:
	.asciz	"copy"                          # string offset=1165
.Linfo_string66:
	.asciz	"free_aligned"                  # string offset=1170
.Linfo_string67:
	.asciz	"free"                          # string offset=1183
.Linfo_string68:
	.asciz	"malloc_try"                    # string offset=1188
.Linfo_string69:
	.asciz	"alloc_try"                     # string offset=1199
.Linfo_string70:
	.asciz	"unreachable"                   # string offset=1209
.Linfo_string71:
	.asciz	"std.core.mem.allocator.TempAllocator._free_page" # string offset=1221
.Linfo_string72:
	.asciz	"_free_page"                    # string offset=1269
.Linfo_string73:
	.asciz	"long"                          # string offset=1280
.Linfo_string74:
	.asciz	"fault"                         # string offset=1285
.Linfo_string75:
	.asciz	"self"                          # string offset=1291
.Linfo_string76:
	.asciz	"page"                          # string offset=1296
.Linfo_string77:
	.asciz	"mem"                           # string offset=1301
.Linfo_string78:
	.asciz	"is_aligned"                    # string offset=1305
.Linfo_string79:
	.asciz	"poison_memory_region"          # string offset=1316
.Linfo_string80:
	.asciz	"pagesize"                      # string offset=1337
.Linfo_string81:
	.asciz	"std.core.mem.allocator.TempAllocator._realloc_page" # string offset=1346
.Linfo_string82:
	.asciz	"_realloc_page"                 # string offset=1397
.Linfo_string83:
	.asciz	"real_pointer"                  # string offset=1411
.Linfo_string84:
	.asciz	"pointer_to_prev"               # string offset=1424
.Linfo_string85:
	.asciz	"TempAllocatorPage**"           # string offset=1440
.Linfo_string86:
	.asciz	"page_size"                     # string offset=1460
.Linfo_string87:
	.asciz	"calloc_aligned"                # string offset=1470
.Linfo_string88:
	.asciz	"malloc_aligned"                # string offset=1485
.Linfo_string89:
	.asciz	"alloc_with_padding"            # string offset=1500
.Linfo_string90:
	.asciz	"abort"                         # string offset=1519
.Linfo_string91:
	.asciz	"std.core.mem.allocator.ArenaAllocator.init" # string offset=1525
.Linfo_string92:
	.asciz	"init"                          # string offset=1568
.Linfo_string93:
	.asciz	"char*"                         # string offset=1573
.Linfo_string94:
	.asciz	"len"                           # string offset=1579
.Linfo_string95:
	.asciz	"char[]"                        # string offset=1583
.Linfo_string96:
	.asciz	"ArenaAllocator"                # string offset=1590
.Linfo_string97:
	.asciz	"ArenaAllocator*"               # string offset=1605
.Linfo_string98:
	.asciz	"std.core.mem.allocator.ArenaAllocator.release" # string offset=1621
.Linfo_string99:
	.asciz	"release"                       # string offset=1667
.Linfo_string100:
	.asciz	"std.core.mem.allocator.ArenaAllocator.acquire" # string offset=1675
.Linfo_string101:
	.asciz	"acquire"                       # string offset=1721
.Linfo_string102:
	.asciz	"std.core.mem.allocator.ArenaAllocator.resize" # string offset=1729
.Linfo_string103:
	.asciz	"resize"                        # string offset=1774
.Linfo_string104:
	.asciz	"std.core.mem.allocator.LibcAllocator.acquire" # string offset=1781
.Linfo_string105:
	.asciz	"std.core.mem.allocator.LibcAllocator.resize" # string offset=1826
.Linfo_string106:
	.asciz	"std.core.mem.allocator.LibcAllocator.release" # string offset=1870
.Linfo_string107:
	.asciz	"std.core.mem.allocator.OnStackAllocator.init" # string offset=1915
.Linfo_string108:
	.asciz	"std.core.mem.allocator.OnStackAllocator.free" # string offset=1960
.Linfo_string109:
	.asciz	"std.core.mem.allocator.OnStackAllocator.release" # string offset=2005
.Linfo_string110:
	.asciz	"std.core.mem.allocator.OnStackAllocator.resize" # string offset=2053
.Linfo_string111:
	.asciz	"std.core.mem.allocator.OnStackAllocator.acquire" # string offset=2100
.Linfo_string112:
	.asciz	"std.core.mem.allocator.allocation_in_stack_mem.4311" # string offset=2148
.Linfo_string113:
	.asciz	"allocation_in_stack_mem"       # string offset=2200
.Linfo_string114:
	.asciz	"std.core.mem.allocator.on_stack_allocator_remove_chunk.4314" # string offset=2224
.Linfo_string115:
	.asciz	"on_stack_allocator_remove_chunk" # string offset=2284
.Linfo_string116:
	.asciz	"std.core.mem.allocator.on_stack_allocator_find_chunk.4319" # string offset=2316
.Linfo_string117:
	.asciz	"on_stack_allocator_find_chunk" # string offset=2374
.Linfo_string118:
	.asciz	"prev"                          # string offset=2404
.Linfo_string119:
	.asciz	"OnStackAllocatorExtraChunk"    # string offset=2409
.Linfo_string120:
	.asciz	"OnStackAllocatorExtraChunk*"   # string offset=2436
.Linfo_string121:
	.asciz	"std.core.mem.allocator.TempAllocator.derive_allocator" # string offset=2464
.Linfo_string122:
	.asciz	"derive_allocator"              # string offset=2518
.Linfo_string123:
	.asciz	"std.core.mem.allocator.TempAllocator.reset" # string offset=2535
.Linfo_string124:
	.asciz	"reset"                         # string offset=2578
.Linfo_string125:
	.asciz	"std.core.mem.allocator.TempAllocator.free" # string offset=2584
.Linfo_string126:
	.asciz	"std.core.mem.allocator.TempAllocator.destroy" # string offset=2626
.Linfo_string127:
	.asciz	"destroy"                       # string offset=2671
.Linfo_string128:
	.asciz	"std.core.mem.allocator.TempAllocator.release" # string offset=2679
.Linfo_string129:
	.asciz	"std.core.mem.allocator.TempAllocator.resize" # string offset=2724
.Linfo_string130:
	.asciz	"std.core.mem.allocator.TempAllocator.acquire" # string offset=2768
.Linfo_string131:
	.asciz	"std.core.mem.allocator.new_temp_allocator" # string offset=2813
.Linfo_string132:
	.asciz	"new_temp_allocator"            # string offset=2855
.Linfo_string133:
	.asciz	"std.core.mem.allocator.LazyTempAllocator.acquire" # string offset=2874
.Linfo_string134:
	.asciz	"std.core.mem.allocator.LazyTempAllocator.resize" # string offset=2923
.Linfo_string135:
	.asciz	"std.core.mem.allocator.LazyTempAllocator.release" # string offset=2971
.Linfo_string136:
	.asciz	"std.core.mem.allocator.push_pool" # string offset=3020
.Linfo_string137:
	.asciz	"push_pool"                     # string offset=3053
.Linfo_string138:
	.asciz	"PoolState"                     # string offset=3063
.Linfo_string139:
	.asciz	"std.core.mem.allocator.pop_pool" # string offset=3073
.Linfo_string140:
	.asciz	"pop_pool"                      # string offset=3105
.Linfo_string141:
	.asciz	"std.core.mem.allocator.create_temp_allocator_on_demand" # string offset=3114
.Linfo_string142:
	.asciz	"create_temp_allocator_on_demand" # string offset=3169
.Linfo_string143:
	.asciz	"std.core.mem.allocator.create_temp_allocator" # string offset=3201
.Linfo_string144:
	.asciz	"create_temp_allocator"         # string offset=3246
.Linfo_string145:
	.asciz	"std.core.mem.allocator.destroy_temp_allocators" # string offset=3268
.Linfo_string146:
	.asciz	"destroy_temp_allocators"       # string offset=3315
.Linfo_string147:
	.asciz	"std.core.mem.allocator.allow_implicit_temp_allocator_on_load_thread.6572" # string offset=3339
.Linfo_string148:
	.asciz	"allow_implicit_temp_allocator_on_load_thread" # string offset=3412
.Linfo_string149:
	.asciz	"std.core.mem.allocator.destroy_temp_allocators_after_exit.6573" # string offset=3457
.Linfo_string150:
	.asciz	"destroy_temp_allocators_after_exit" # string offset=3520
.Linfo_string151:
	.asciz	".anon"                         # string offset=3555
.Linfo_string152:
	.asciz	"header"                        # string offset=3561
.Linfo_string153:
	.asciz	"ArenaAllocatorHeader"          # string offset=3568
.Linfo_string154:
	.asciz	"ArenaAllocatorHeader*"         # string offset=3589
.Linfo_string155:
	.asciz	"init_type"                     # string offset=3611
.Linfo_string156:
	.asciz	"total_len"                     # string offset=3621
.Linfo_string157:
	.asciz	"start_mem"                     # string offset=3631
.Linfo_string158:
	.asciz	"unaligned_pointer_to_offset"   # string offset=3641
.Linfo_string159:
	.asciz	"end"                           # string offset=3669
.Linfo_string160:
	.asciz	"old_pointer"                   # string offset=3673
.Linfo_string161:
	.asciz	"old_size"                      # string offset=3685
.Linfo_string162:
	.asciz	"new_used"                      # string offset=3694
.Linfo_string163:
	.asciz	"LibcAllocator*"                # string offset=3703
.Linfo_string164:
	.asciz	"bytes"                         # string offset=3718
.Linfo_string165:
	.asciz	"old_ptr"                       # string offset=3724
.Linfo_string166:
	.asciz	"new_bytes"                     # string offset=3732
.Linfo_string167:
	.asciz	"new_ptr"                       # string offset=3742
.Linfo_string168:
	.asciz	"old_usable_size"               # string offset=3750
.Linfo_string169:
	.asciz	"copy_size"                     # string offset=3766
.Linfo_string170:
	.asciz	"aligned"                       # string offset=3776
.Linfo_string171:
	.asciz	"chunk"                         # string offset=3784
.Linfo_string172:
	.asciz	"OnStackAllocator"              # string offset=3790
.Linfo_string173:
	.asciz	"OnStackAllocator*"             # string offset=3807
.Linfo_string174:
	.asciz	"allocator"                     # string offset=3825
.Linfo_string175:
	.asciz	"old"                           # string offset=3835
.Linfo_string176:
	.asciz	"OnStackAllocatorHeader"        # string offset=3839
.Linfo_string177:
	.asciz	"OnStackAllocatorHeader*"       # string offset=3862
.Linfo_string178:
	.asciz	"a"                             # string offset=3886
.Linfo_string179:
	.asciz	"addr"                          # string offset=3888
.Linfo_string180:
	.asciz	"OnStackAllocatorExtraChunk**"  # string offset=3893
.Linfo_string181:
	.asciz	"reserve"                       # string offset=3922
.Linfo_string182:
	.asciz	"remaining"                     # string offset=3930
.Linfo_string183:
	.asciz	"temp"                          # string offset=3940
.Linfo_string184:
	.asciz	"child"                         # string offset=3945
.Linfo_string185:
	.asciz	"to_free"                       # string offset=3951
.Linfo_string186:
	.asciz	"pointer"                       # string offset=3959
.Linfo_string187:
	.asciz	"TempAllocatorChunk"            # string offset=3967
.Linfo_string188:
	.asciz	"TempAllocatorChunk*"           # string offset=3986
.Linfo_string189:
	.asciz	"is_realloc_of_last"            # string offset=4006
.Linfo_string190:
	.asciz	"diff"                          # string offset=4025
.Linfo_string191:
	.asciz	"isz"                           # string offset=4030
.Linfo_string192:
	.asciz	"len_to_copy"                   # string offset=4034
.Linfo_string193:
	.asciz	"starting_ptr"                  # string offset=4046
.Linfo_string194:
	.asciz	"aligned_header_start"          # string offset=4059
.Linfo_string195:
	.asciz	"new_usage"                     # string offset=4080
.Linfo_string196:
	.asciz	"chunk_start"                   # string offset=4090
.Linfo_string197:
	.asciz	"total_alloc_size"              # string offset=4102
.Linfo_string198:
	.asciz	"padded_header_size"            # string offset=4119
.Linfo_string199:
	.asciz	"alloc"                         # string offset=4138
.Linfo_string200:
	.asciz	"LazyTempAllocator*"            # string offset=4144
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	7079                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"LIBC_ALLOCATOR"                # External Name
	.long	86                              # DIE offset
	.asciz	"thread_allocator"              # External Name
	.long	160                             # DIE offset
	.asciz	"temp_base_allocator"           # External Name
	.long	187                             # DIE offset
	.asciz	"LAZY_TEMP"                     # External Name
	.long	226                             # DIE offset
	.asciz	"current_temp"                  # External Name
	.long	254                             # DIE offset
	.asciz	"top_temp"                      # External Name
	.long	579                             # DIE offset
	.asciz	"auto_create_temp"              # External Name
	.long	606                             # DIE offset
	.asciz	"temp_allocator_min_size"       # External Name
	.long	633                             # DIE offset
	.asciz	"temp_allocator_reserve_size"   # External Name
	.long	660                             # DIE offset
	.asciz	"temp_allocator_realloc_size"   # External Name
	.long	700                             # DIE offset
	.asciz	"NO_ZERO"                       # External Name
	.long	706                             # DIE offset
	.asciz	"ZERO"                          # External Name
	.long	874                             # DIE offset
	.asciz	"alignment_for_allocation"      # External Name
	.long	2014                            # DIE offset
	.asciz	"init"                          # External Name
	.long	2082                            # DIE offset
	.asciz	"free_aligned"                  # External Name
	.long	2336                            # DIE offset
	.asciz	"min"                           # External Name
	.long	2615                            # DIE offset
	.asciz	"alloc_try"                     # External Name
	.long	3054                            # DIE offset
	.asciz	"allocation_in_stack_mem"       # External Name
	.long	3124                            # DIE offset
	.asciz	"unreachable"                   # External Name
	.long	3136                            # DIE offset
	.asciz	"on_stack_allocator_remove_chunk" # External Name
	.long	3260                            # DIE offset
	.asciz	"on_stack_allocator_find_chunk" # External Name
	.long	3346                            # DIE offset
	.asciz	"derive_allocator"              # External Name
	.long	3517                            # DIE offset
	.asciz	"reset"                         # External Name
	.long	3601                            # DIE offset
	.asciz	"free"                          # External Name
	.long	3641                            # DIE offset
	.asciz	"_free_page"                    # External Name
	.long	3732                            # DIE offset
	.asciz	"destroy"                       # External Name
	.long	3902                            # DIE offset
	.asciz	"poison_memory_region"          # External Name
	.long	4081                            # DIE offset
	.asciz	"pagesize"                      # External Name
	.long	4119                            # DIE offset
	.asciz	"is_aligned"                    # External Name
	.long	4298                            # DIE offset
	.asciz	"_realloc_page"                 # External Name
	.long	4433                            # DIE offset
	.asciz	"copy"                          # External Name
	.long	4907                            # DIE offset
	.asciz	"aligned_pointer"               # External Name
	.long	4933                            # DIE offset
	.asciz	"clear"                         # External Name
	.long	4959                            # DIE offset
	.asciz	"calloc_aligned"                # External Name
	.long	4984                            # DIE offset
	.asciz	"malloc_aligned"                # External Name
	.long	5744                            # DIE offset
	.asciz	"alloc_with_padding"            # External Name
	.long	5756                            # DIE offset
	.asciz	"malloc_try"                    # External Name
	.long	5781                            # DIE offset
	.asciz	"new_temp_allocator"            # External Name
	.long	5958                            # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	5971                            # DIE offset
	.asciz	"acquire"                       # External Name
	.long	6083                            # DIE offset
	.asciz	"resize"                        # External Name
	.long	6174                            # DIE offset
	.asciz	"release"                       # External Name
	.long	6274                            # DIE offset
	.asciz	"push_pool"                     # External Name
	.long	6336                            # DIE offset
	.asciz	"pop_pool"                      # External Name
	.long	6394                            # DIE offset
	.asciz	"abort"                         # External Name
	.long	6406                            # DIE offset
	.asciz	"create_temp_allocator_on_demand" # External Name
	.long	6458                            # DIE offset
	.asciz	"create_temp_allocator"         # External Name
	.long	6564                            # DIE offset
	.asciz	"destroy_temp_allocators"       # External Name
	.long	6590                            # DIE offset
	.asciz	"allow_implicit_temp_allocator_on_load_thread" # External Name
	.long	6616                            # DIE offset
	.asciz	"destroy_temp_allocators_after_exit" # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	7079                            # Compilation Unit Length
	.long	68                              # DIE offset
	.asciz	"LibcAllocator"                 # External Name
	.long	79                              # DIE offset
	.asciz	"ulong"                         # External Name
	.long	114                             # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	144                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	153                             # DIE offset
	.asciz	"typeid"                        # External Name
	.long	214                             # DIE offset
	.asciz	"LazyTempAllocator"             # External Name
	.long	282                             # DIE offset
	.asciz	"TempAllocator*"                # External Name
	.long	295                             # DIE offset
	.asciz	"TempAllocator"                 # External Name
	.long	448                             # DIE offset
	.asciz	"TempAllocatorPage*"            # External Name
	.long	461                             # DIE offset
	.asciz	"TempAllocatorPage"             # External Name
	.long	536                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	558                             # DIE offset
	.asciz	"char"                          # External Name
	.long	572                             # DIE offset
	.asciz	"bool"                          # External Name
	.long	687                             # DIE offset
	.asciz	"AllocInitType"                 # External Name
	.long	713                             # DIE offset
	.asciz	"int"                           # External Name
	.long	3692                            # DIE offset
	.asciz	"fault"                         # External Name
	.long	3701                            # DIE offset
	.asciz	"long"                          # External Name
	.long	4407                            # DIE offset
	.asciz	"TempAllocatorPage**"           # External Name
	.long	6642                            # DIE offset
	.asciz	"ArenaAllocator*"               # External Name
	.long	6655                            # DIE offset
	.asciz	"ArenaAllocator"                # External Name
	.long	6691                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	6721                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	6734                            # DIE offset
	.asciz	"OnStackAllocatorExtraChunk*"   # External Name
	.long	6747                            # DIE offset
	.asciz	"OnStackAllocatorExtraChunk"    # External Name
	.long	6796                            # DIE offset
	.asciz	"PoolState"                     # External Name
	.long	6808                            # DIE offset
	.asciz	"ArenaAllocatorHeader*"         # External Name
	.long	6821                            # DIE offset
	.asciz	"ArenaAllocatorHeader"          # External Name
	.long	6857                            # DIE offset
	.asciz	"LibcAllocator*"                # External Name
	.long	6870                            # DIE offset
	.asciz	"OnStackAllocator*"             # External Name
	.long	6883                            # DIE offset
	.asciz	"OnStackAllocator"              # External Name
	.long	6945                            # DIE offset
	.asciz	"OnStackAllocatorHeader*"       # External Name
	.long	6958                            # DIE offset
	.asciz	"OnStackAllocatorHeader"        # External Name
	.long	6994                            # DIE offset
	.asciz	"OnStackAllocatorExtraChunk**"  # External Name
	.long	7007                            # DIE offset
	.asciz	"TempAllocatorChunk*"           # External Name
	.long	7020                            # DIE offset
	.asciz	"TempAllocatorChunk"            # External Name
	.long	7056                            # DIE offset
	.asciz	"isz"                           # External Name
	.long	7065                            # DIE offset
	.asciz	"LazyTempAllocator*"            # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.mem.aligned_offset
	.weak	std.core.mem.ptr_is_aligned
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

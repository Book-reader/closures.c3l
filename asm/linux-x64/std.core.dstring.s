	.text
	.file	"std::core::dstring"
	.section	.text.std.core.dstring.DString.init,"axG",@progbits,std.core.dstring.DString.init,comdat
	.weak	std.core.dstring.DString.init   # -- Begin function std.core.dstring.DString.init
	.p2align	4, 0x90
	.type	std.core.dstring.DString.init,@function
std.core.dstring.DString.init:          # @std.core.dstring.DString.init
.Lfunc_begin0:
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "dstring.c3"
	.loc	1 20 0                          # dstring.c3:20:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp                      # imm = 0x1E0
	movq	%rdi, -352(%rbp)                # 8-byte Spill
	movq	%rsi, -344(%rbp)                # 8-byte Spill
	movq	%rdx, -336(%rbp)                # 8-byte Spill
	movq	%rcx, -328(%rbp)                # 8-byte Spill
.Ltmp0:
	.loc	1 21 1 prologue_end             # dstring.c3:21:1
	movq	$0, -208(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB0_32
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-328(%rbp), %rax                # 8-byte Reload
	movq	-336(%rbp), %rcx                # 8-byte Reload
	movq	-344(%rbp), %rdx                # 8-byte Reload
	movq	-352(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -16(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -40(%rbp)
.Ltmp1:
	.loc	1 18 12 is_stmt 1               # dstring.c3:18:12
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_33
# %bb.2:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-360(%rbp), %rax                # 8-byte Reload
	.loc	1 18 12                         # dstring.c3:18:12
	andq	$7, %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_34
# %bb.3:
	.loc	1 0 12                          # dstring.c3:0:12
	movq	-360(%rbp), %rax                # 8-byte Reload
	.loc	1 18 12                         # dstring.c3:18:12
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc	1 18 11                         # dstring.c3:18:11
	cmpq	$0, -8(%rbp)
	je	.LBB0_5
# %bb.4:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$63, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$18, (%rsp)
	callq	*(%rax)
.Ltmp2:
.LBB0_5:
	.loc	1 22 6 is_stmt 1                # dstring.c3:22:6
	cmpq	$16, -40(%rbp)
	jae	.LBB0_7
# %bb.6:
	.loc	1 22 42 is_stmt 0               # dstring.c3:22:42
	movq	$16, -40(%rbp)
.LBB0_7:
	.loc	1 0 42                          # dstring.c3:0:42
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)
.Ltmp3:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	2 254 54 is_stmt 1              # mem_allocator.c3:254:54
	movq	-152(%rbp), %rax
	.loc	2 254 39 is_stmt 0              # mem_allocator.c3:254:39
	addq	$32, %rax
	movq	%rax, -176(%rbp)
.Ltmp4:
	.loc	2 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -176(%rbp)
	jne	.LBB0_9
# %bb.8:
	.loc	2 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -184(%rbp)
	jmp	.LBB0_27
.LBB0_9:
	.loc	2 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-176(%rbp), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	.loc	2 38 12                         # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -369(%rbp)                 # 1-byte Spill
	jne	.LBB0_13
# %bb.10:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -192(%rbp)
.Ltmp5:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	3 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-192(%rbp), %rcx
	movb	%al, -385(%rbp)                 # 1-byte Spill
	je	.LBB0_12
# %bb.11:
	.loc	3 992 20 is_stmt 0              # math.c3:992:20
	movq	-192(%rbp), %rax
	.loc	3 992 25                        # math.c3:992:25
	movq	-192(%rbp), %rcx
	subq	$1, %rcx
	.loc	3 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	3 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -385(%rbp)                 # 1-byte Spill
.LBB0_12:
	.loc	3 0 19                          # math.c3:0:19
	movb	-385(%rbp), %al                 # 1-byte Reload
	movb	%al, -369(%rbp)                 # 1-byte Spill
.LBB0_13:
	movb	-369(%rbp), %al                 # 1-byte Reload
	.loc	3 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB0_15
.Ltmp6:
# %bb.14:
	.loc	2 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	.panic_msg.10(%rip), %rdi
	movl	$65, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB0_15:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_17
	jmp	.LBB0_16
.LBB0_16:
	leaq	.panic_msg.12(%rip), %rdi
	movl	$80, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB0_17:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-384(%rbp), %rcx                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB0_19
# %bb.18:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$59, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB0_19:
	movq	-160(%rbp), %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
.Ltmp7:
	.loc	1 21 1 is_stmt 1                # dstring.c3:21:1
	cmpq	-208(%rbp), %rax
	je	.LBB0_21
# %bb.20:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-400(%rbp), %rax                # 8-byte Reload
	.loc	1 21 1                          # dstring.c3:21:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-400(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%rax, -408(%rbp)                # 8-byte Spill
	jmp	.LBB0_22
.LBB0_21:
	movq	-200(%rbp), %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
.LBB0_22:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-408(%rbp), %rax                # 8-byte Reload
	movq	%rax, -416(%rbp)                # 8-byte Spill
	.loc	1 21 1                          # dstring.c3:21:1
	cmpq	$0, %rax
	jne	.LBB0_24
# %bb.23:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$44, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB0_24:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-416(%rbp), %rax                # 8-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	movq	-168(%rbp), %rsi
.Ltmp8:
	.loc	2 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_26
# %bb.25:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-424(%rbp), %rax                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -128(%rbp)
	jmp	.LBB0_28
.LBB0_26:
	movq	-216(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB0_27:
	movq	-184(%rbp), %rax
	movq	%rax, -432(%rbp)                # 8-byte Spill
	jmp	.LBB0_29
.LBB0_28:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$1, -248(%rbp)
.Ltmp9:
	.loc	1 23 21 is_stmt 1               # dstring.c3:23:21
	leaq	.panic_msg.15(%rip), %rdi
	movl	$36, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	leaq	-256(%rbp), %rax
	movl	$23, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_29:
	.loc	1 0 21 is_stmt 0                # dstring.c3:0:21
	movq	-432(%rbp), %rax                # 8-byte Reload
	.loc	1 23 21                         # dstring.c3:23:21
	movq	%rax, -120(%rbp)
	.loc	1 24 2 is_stmt 1                # dstring.c3:24:2
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.loc	1 25 2                          # dstring.c3:25:2
	movq	-120(%rbp), %rax
	movq	$0, 16(%rax)
	.loc	1 26 2                          # dstring.c3:26:2
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.loc	1 27 26                         # dstring.c3:27:26
	movq	-120(%rbp), %rax
	movq	%rax, -448(%rbp)                # 8-byte Spill
	.loc	1 27 10 is_stmt 0               # dstring.c3:27:10
	movq	-16(%rbp), %rax
	movq	%rax, -440(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_35
# %bb.30:
	.loc	1 0 10                          # dstring.c3:0:10
	movq	-440(%rbp), %rax                # 8-byte Reload
	.loc	1 27 10                         # dstring.c3:27:10
	andq	$7, %rax
	movq	%rax, -456(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_36
# %bb.31:
	.loc	1 0 10                          # dstring.c3:0:10
	movq	-448(%rbp), %rax                # 8-byte Reload
	movq	-440(%rbp), %rcx                # 8-byte Reload
	.loc	1 27 10                         # dstring.c3:27:10
	movq	%rax, (%rcx)
	.loc	1 27 10 epilogue_begin          # dstring.c3:27:10
	addq	$480, %rsp                      # imm = 0x1E0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_32:
	.cfi_def_cfa %rbp, 16
	.loc	1 20 25 is_stmt 1               # dstring.c3:20:25
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$20, (%rsp)
	callq	*(%rax)
.LBB0_33:
.Ltmp10:
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$18, (%rsp)
	callq	*(%rax)
.LBB0_34:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-368(%rbp), %rcx                # 8-byte Reload
	movq	$8, -48(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	leaq	-112(%rbp), %rax
	movl	$18, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp11:
.LBB0_35:
	.loc	1 27 10 is_stmt 1               # dstring.c3:27:10
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$27, (%rsp)
	callq	*(%rax)
.LBB0_36:
	.loc	1 0 10 is_stmt 0                # dstring.c3:0:10
	movq	-456(%rbp), %rcx                # 8-byte Reload
	movq	$8, -264(%rbp)
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
	.loc	1 27 10                         # dstring.c3:27:10
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	leaq	-320(%rbp), %rax
	movl	$27, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp12:
.Lfunc_end0:
	.size	std.core.dstring.DString.init, .Lfunc_end0-std.core.dstring.DString.init
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.tinit,"axG",@progbits,std.core.dstring.DString.tinit,comdat
	.weak	std.core.dstring.DString.tinit  # -- Begin function std.core.dstring.DString.tinit
	.p2align	4, 0x90
	.type	std.core.dstring.DString.tinit,@function
std.core.dstring.DString.tinit:         # @std.core.dstring.DString.tinit
.Lfunc_begin1:
	.loc	1 38 0 is_stmt 1                # dstring.c3:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$672, %rsp                      # imm = 0x2A0
	movq	%rdi, -496(%rbp)                # 8-byte Spill
	movq	%rsi, -488(%rbp)                # 8-byte Spill
.Ltmp13:
	.loc	1 39 1 prologue_end             # dstring.c3:39:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB1_36
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-488(%rbp), %rax                # 8-byte Reload
	movq	-496(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -328(%rbp)
	movq	%rax, -336(%rbp)
.Ltmp14:
	.loc	1 36 12 is_stmt 1               # dstring.c3:36:12
	movq	-328(%rbp), %rax
	movq	%rax, -504(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_37
# %bb.2:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-504(%rbp), %rax                # 8-byte Reload
	.loc	1 36 12                         # dstring.c3:36:12
	andq	$7, %rax
	movq	%rax, -512(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_38
# %bb.3:
	.loc	1 0 12                          # dstring.c3:0:12
	movq	-504(%rbp), %rax                # 8-byte Reload
	.loc	1 36 12                         # dstring.c3:36:12
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc	1 36 11                         # dstring.c3:36:11
	cmpq	$0, -8(%rbp)
	je	.LBB1_5
# %bb.4:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$63, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$36, (%rsp)
	callq	*(%rax)
.Ltmp15:
.LBB1_5:
	.loc	1 40 9 is_stmt 1                # dstring.c3:40:9
	movq	-328(%rbp), %rax
	movq	%rax, -544(%rbp)                # 8-byte Spill
	.loc	1 40 19 is_stmt 0               # dstring.c3:40:19
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:(%rcx), %rdx
	movq	%rdx, -536(%rbp)                # 8-byte Spill
	movq	%fs:8(%rcx), %rcx
	movq	%rcx, -528(%rbp)                # 8-byte Spill
	.loc	1 40 25                         # dstring.c3:40:25
	movq	-336(%rbp), %rcx
	movq	%rcx, -520(%rbp)                # 8-byte Spill
	.loc	1 18 12 is_stmt 1               # dstring.c3:18:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_39
# %bb.6:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-544(%rbp), %rax                # 8-byte Reload
	.loc	1 18 12                         # dstring.c3:18:12
	andq	$7, %rax
	movq	%rax, -552(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_40
# %bb.7:
	.loc	1 0 12                          # dstring.c3:0:12
	movq	-544(%rbp), %rax                # 8-byte Reload
	.loc	1 18 12                         # dstring.c3:18:12
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc	1 18 11                         # dstring.c3:18:11
	cmpq	$0, -16(%rbp)
	je	.LBB1_9
# %bb.8:
	.loc	1 40 9 is_stmt 1                # dstring.c3:40:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$63, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$40, (%rsp)
	callq	*(%rax)
.LBB1_9:
	.loc	1 0 9 is_stmt 0                 # dstring.c3:0:9
	movq	-544(%rbp), %rax                # 8-byte Reload
	movq	-528(%rbp), %rcx                # 8-byte Reload
	movq	-536(%rbp), %rdx                # 8-byte Reload
	movq	%rdx, -480(%rbp)
	movq	%rcx, -472(%rbp)
	movq	-480(%rbp), %rcx
	movq	%rcx, -568(%rbp)                # 8-byte Spill
	movq	-472(%rbp), %rcx
	movq	%rcx, -560(%rbp)                # 8-byte Spill
.Ltmp16:
	.loc	1 21 1 is_stmt 1                # dstring.c3:21:1
	movq	$0, -216(%rbp)
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_30
# %bb.10:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-520(%rbp), %rax                # 8-byte Reload
	movq	-560(%rbp), %rcx                # 8-byte Reload
	movq	-568(%rbp), %rdx                # 8-byte Reload
	movq	-544(%rbp), %rsi                # 8-byte Reload
	movq	%rsi, -32(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -56(%rbp)
.Ltmp17:
	.loc	1 18 12 is_stmt 1               # dstring.c3:18:12
	movq	-32(%rbp), %rax
	movq	%rax, -576(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_31
# %bb.11:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-576(%rbp), %rax                # 8-byte Reload
	.loc	1 18 12                         # dstring.c3:18:12
	andq	$7, %rax
	movq	%rax, -584(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_32
# %bb.12:
	.loc	1 0 12                          # dstring.c3:0:12
	movq	-576(%rbp), %rax                # 8-byte Reload
	.loc	1 18 12                         # dstring.c3:18:12
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc	1 18 11                         # dstring.c3:18:11
	cmpq	$0, -24(%rbp)
	je	.LBB1_14
# %bb.13:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$63, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$18, (%rsp)
	callq	*(%rax)
.Ltmp18:
.LBB1_14:
	.loc	1 22 6 is_stmt 1                # dstring.c3:22:6
	cmpq	$16, -56(%rbp)
	jae	.LBB1_16
# %bb.15:
	.loc	1 22 42 is_stmt 0               # dstring.c3:22:42
	movq	$16, -56(%rbp)
.LBB1_16:
	.loc	1 0 42                          # dstring.c3:0:42
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -176(%rbp)
.Ltmp19:
	.loc	2 254 54 is_stmt 1              # mem_allocator.c3:254:54
	movq	-168(%rbp), %rax
	.loc	2 254 39 is_stmt 0              # mem_allocator.c3:254:39
	addq	$32, %rax
	movq	%rax, -192(%rbp)
.Ltmp20:
	.loc	2 80 6 is_stmt 1                # mem_allocator.c3:80:6
	cmpq	$0, -192(%rbp)
	jne	.LBB1_18
# %bb.17:
	.loc	2 80 20 is_stmt 0               # mem_allocator.c3:80:20
	movq	$0, -200(%rbp)
	jmp	.LBB1_28
.LBB1_18:
	.loc	2 86 28 is_stmt 1               # mem_allocator.c3:86:28
	movq	-192(%rbp), %rcx
	movq	%rcx, -592(%rbp)                # 8-byte Spill
	.loc	2 86 10 is_stmt 0               # mem_allocator.c3:86:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB1_20
# %bb.19:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$59, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB1_20:
	movq	-176(%rbp), %rax
	movq	%rax, -600(%rbp)                # 8-byte Spill
.Ltmp21:
	.loc	1 21 1 is_stmt 1                # dstring.c3:21:1
	cmpq	-216(%rbp), %rax
	je	.LBB1_22
# %bb.21:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-600(%rbp), %rax                # 8-byte Reload
	.loc	1 21 1                          # dstring.c3:21:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-600(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%rax, -608(%rbp)                # 8-byte Spill
	jmp	.LBB1_23
.LBB1_22:
	movq	-208(%rbp), %rax
	movq	%rax, -608(%rbp)                # 8-byte Spill
.LBB1_23:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-608(%rbp), %rax                # 8-byte Reload
	movq	%rax, -616(%rbp)                # 8-byte Spill
	.loc	1 21 1                          # dstring.c3:21:1
	cmpq	$0, %rax
	jne	.LBB1_25
# %bb.24:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$44, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$86, (%rsp)
	callq	*(%rax)
.LBB1_25:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-616(%rbp), %rax                # 8-byte Reload
	movq	-592(%rbp), %rdx                # 8-byte Reload
	movq	-184(%rbp), %rsi
.Ltmp22:
	.loc	2 86 10 is_stmt 1               # mem_allocator.c3:86:10
	leaq	-224(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -624(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_27
# %bb.26:
	.loc	2 0 10 is_stmt 0                # mem_allocator.c3:0:10
	movq	-624(%rbp), %rax                # 8-byte Reload
	.loc	2 86 10                         # mem_allocator.c3:86:10
	movq	%rax, -144(%rbp)
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -232(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$1, -248(%rbp)
.Ltmp23:
	.loc	1 23 21 is_stmt 1               # dstring.c3:23:21
	leaq	.panic_msg.15(%rip), %rdi
	movl	$36, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	leaq	-256(%rbp), %rax
	movl	$23, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_27:
.Ltmp24:
	.loc	2 86 10                         # mem_allocator.c3:86:10
	movq	-224(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB1_28:
	movq	-200(%rbp), %rax
.Ltmp25:
	.loc	1 23 21                         # dstring.c3:23:21
	movq	%rax, -136(%rbp)
	.loc	1 24 2                          # dstring.c3:24:2
	movq	-136(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.loc	1 25 2                          # dstring.c3:25:2
	movq	-136(%rbp), %rax
	movq	$0, 16(%rax)
	.loc	1 26 2                          # dstring.c3:26:2
	movq	-136(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.loc	1 27 26                         # dstring.c3:27:26
	movq	-136(%rbp), %rax
	movq	%rax, -640(%rbp)                # 8-byte Spill
	.loc	1 27 10 is_stmt 0               # dstring.c3:27:10
	movq	-32(%rbp), %rax
	movq	%rax, -632(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_33
# %bb.29:
	.loc	1 0 10                          # dstring.c3:0:10
	movq	-632(%rbp), %rax                # 8-byte Reload
	.loc	1 27 10                         # dstring.c3:27:10
	andq	$7, %rax
	movq	%rax, -648(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_34
	jmp	.LBB1_35
.LBB1_30:
	.loc	1 20 25 is_stmt 1               # dstring.c3:20:25
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$20, (%rsp)
	callq	*(%rax)
.LBB1_31:
.Ltmp26:
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$18, (%rsp)
	callq	*(%rax)
.LBB1_32:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-584(%rbp), %rcx                # 8-byte Reload
	movq	$8, -64(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -72(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-64(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$2, -120(%rbp)
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	leaq	-128(%rbp), %rax
	movl	$18, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp27:
.LBB1_33:
	.loc	1 27 10 is_stmt 1               # dstring.c3:27:10
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$27, (%rsp)
	callq	*(%rax)
.LBB1_34:
	.loc	1 0 10 is_stmt 0                # dstring.c3:0:10
	movq	-648(%rbp), %rcx                # 8-byte Reload
	movq	$8, -264(%rbp)
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
	.loc	1 27 10                         # dstring.c3:27:10
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.9(%rip), %r8
	movl	$4, %r9d
	leaq	-320(%rbp), %rax
	movl	$27, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_35:
	.loc	1 0 10                          # dstring.c3:0:10
	movq	-640(%rbp), %rax                # 8-byte Reload
	movq	-632(%rbp), %rcx                # 8-byte Reload
	.loc	1 27 10                         # dstring.c3:27:10
	movq	%rax, (%rcx)
.Ltmp28:
	.loc	1 40 9 epilogue_begin is_stmt 1 # dstring.c3:40:9
	addq	$672, %rsp                      # imm = 0x2A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_36:
	.cfi_def_cfa %rbp, 16
	.loc	1 38 26                         # dstring.c3:38:26
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$38, (%rsp)
	callq	*(%rax)
.LBB1_37:
.Ltmp29:
	.loc	1 36 12                         # dstring.c3:36:12
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$36, (%rsp)
	callq	*(%rax)
.LBB1_38:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-512(%rbp), %rcx                # 8-byte Reload
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
	.loc	1 36 12                         # dstring.c3:36:12
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$5, %r9d
	leaq	-400(%rbp), %rax
	movl	$36, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp30:
.LBB1_39:
	.loc	1 18 12 is_stmt 1               # dstring.c3:18:12
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$18, (%rsp)
	callq	*(%rax)
.LBB1_40:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-552(%rbp), %rcx                # 8-byte Reload
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
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.16(%rip), %r8
	movl	$5, %r9d
	leaq	-464(%rbp), %rax
	movl	$18, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp31:
.Lfunc_end1:
	.size	std.core.dstring.DString.tinit, .Lfunc_end1-std.core.dstring.DString.tinit
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.len,"axG",@progbits,std.core.dstring.DString.len,comdat
	.weak	std.core.dstring.DString.len    # -- Begin function std.core.dstring.DString.len
	.p2align	4, 0x90
	.type	std.core.dstring.DString.len,@function
std.core.dstring.DString.len:           # @std.core.dstring.DString.len
.Lfunc_begin2:
	.loc	1 149 0 is_stmt 1               # dstring.c3:149:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -152(%rbp)                # 8-byte Spill
.Ltmp32:
	.loc	1 150 1 prologue_end            # dstring.c3:150:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB2_8
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	%rax, -16(%rbp)
	.loc	1 151 8 is_stmt 1               # dstring.c3:151:8
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_9
# %bb.2:
	.loc	1 0 8 is_stmt 0                 # dstring.c3:0:8
	movq	-160(%rbp), %rax                # 8-byte Reload
	.loc	1 151 8                         # dstring.c3:151:8
	andq	$7, %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_10
# %bb.3:
	.loc	1 0 8                           # dstring.c3:0:8
	movq	-160(%rbp), %rax                # 8-byte Reload
	.loc	1 151 8                         # dstring.c3:151:8
	cmpq	$0, (%rax)
	jne	.LBB2_5
# %bb.4:
	.loc	1 151 21                        # dstring.c3:151:21
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 151 21 epilogue_begin         # dstring.c3:151:21
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 152 9 is_stmt 1               # dstring.c3:152:9
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_11
# %bb.6:
	.loc	1 0 9 is_stmt 0                 # dstring.c3:0:9
	movq	-176(%rbp), %rax                # 8-byte Reload
	.loc	1 152 9                         # dstring.c3:152:9
	andq	$7, %rax
	movq	%rax, -184(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_12
# %bb.7:
	.loc	1 0 9                           # dstring.c3:0:9
	movq	-176(%rbp), %rax                # 8-byte Reload
	.loc	1 152 9                         # dstring.c3:152:9
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.Ltmp33:
	.loc	1 614 22 is_stmt 1              # dstring.c3:614:22
	movq	-8(%rbp), %rax
.Ltmp34:
	.loc	1 152 9                         # dstring.c3:152:9
	movq	16(%rax), %rax
	.loc	1 152 9 epilogue_begin is_stmt 0 # dstring.c3:152:9
	addq	$208, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_8:
	.cfi_def_cfa %rbp, 16
	.loc	1 149 20 is_stmt 1              # dstring.c3:149:20
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.17(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$149, (%rsp)
	callq	*(%rax)
.LBB2_9:
	.loc	1 151 8                         # dstring.c3:151:8
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.17(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$151, (%rsp)
	callq	*(%rax)
.LBB2_10:
	.loc	1 0 8 is_stmt 0                 # dstring.c3:0:8
	movq	-168(%rbp), %rcx                # 8-byte Reload
	movq	$8, -24(%rbp)
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
	.loc	1 151 8                         # dstring.c3:151:8
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.17(%rip), %r8
	movl	$3, %r9d
	leaq	-80(%rbp), %rax
	movl	$151, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_11:
	.loc	1 152 9 is_stmt 1               # dstring.c3:152:9
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.17(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$152, (%rsp)
	callq	*(%rax)
.LBB2_12:
	.loc	1 0 9 is_stmt 0                 # dstring.c3:0:9
	movq	-184(%rbp), %rcx                # 8-byte Reload
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
	.loc	1 152 9                         # dstring.c3:152:9
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.17(%rip), %r8
	movl	$3, %r9d
	leaq	-144(%rbp), %rax
	movl	$152, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp35:
.Lfunc_end2:
	.size	std.core.dstring.DString.len, .Lfunc_end2-std.core.dstring.DString.len
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.str_view,"axG",@progbits,std.core.dstring.DString.str_view,comdat
	.weak	std.core.dstring.DString.str_view # -- Begin function std.core.dstring.DString.str_view
	.p2align	4, 0x90
	.type	std.core.dstring.DString.str_view,@function
std.core.dstring.DString.str_view:      # @std.core.dstring.DString.str_view
.Lfunc_begin3:
	.loc	1 164 0 is_stmt 1               # dstring.c3:164:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp36:
	.loc	1 166 21 prologue_end           # dstring.c3:166:21
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.Ltmp37:
	.loc	1 614 22                        # dstring.c3:614:22
	movq	-8(%rbp), %rax
.Ltmp38:
	.loc	1 166 21                        # dstring.c3:166:21
	movq	%rax, -24(%rbp)
	.loc	1 167 6                         # dstring.c3:167:6
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# %bb.1:
	.loc	1 0 6 is_stmt 0                 # dstring.c3:0:6
	leaq	.emptystr(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 168 17 is_stmt 1              # dstring.c3:168:17
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	.loc	1 168 29 is_stmt 0              # dstring.c3:168:29
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB3_4
# %bb.3:
	.loc	1 0 29                          # dstring.c3:0:29
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	-112(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_4:
	.cfi_def_cfa %rbp, 16
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$1, -72(%rbp)
	.loc	1 168 9                         # dstring.c3:168:9
	leaq	.panic_msg.18(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.19(%rip), %r8
	movl	$8, %r9d
	leaq	-80(%rbp), %rax
	movl	$168, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp39:
.Lfunc_end3:
	.size	std.core.dstring.DString.str_view, .Lfunc_end3-std.core.dstring.DString.str_view
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.append_chars,"axG",@progbits,std.core.dstring.DString.append_chars,comdat
	.weak	std.core.dstring.DString.append_chars # -- Begin function std.core.dstring.DString.append_chars
	.p2align	4, 0x90
	.type	std.core.dstring.DString.append_chars,@function
std.core.dstring.DString.append_chars:  # @std.core.dstring.DString.append_chars
.Lfunc_begin4:
	.loc	1 308 0 is_stmt 1               # dstring.c3:308:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp                      # imm = 0x190
	movq	%rdi, -304(%rbp)                # 8-byte Spill
	movq	%rsi, -296(%rbp)                # 8-byte Spill
	movq	%rdx, -288(%rbp)                # 8-byte Spill
.Ltmp40:
	.loc	1 309 1 prologue_end            # dstring.c3:309:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB4_24
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	-296(%rbp), %rcx                # 8-byte Reload
	movq	-304(%rbp), %rdx                # 8-byte Reload
	movq	%rdx, -16(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
	.loc	1 310 18 is_stmt 1              # dstring.c3:310:18
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc	1 311 6                         # dstring.c3:311:6
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# %bb.2:
	.loc	1 311 24 epilogue_begin is_stmt 0 # dstring.c3:311:24
	addq	$400, %rsp                      # imm = 0x190
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 312 8 is_stmt 1               # dstring.c3:312:8
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_25
# %bb.4:
	.loc	1 0 8 is_stmt 0                 # dstring.c3:0:8
	movq	-312(%rbp), %rax                # 8-byte Reload
	.loc	1 312 8                         # dstring.c3:312:8
	andq	$7, %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_26
# %bb.5:
	.loc	1 0 8                           # dstring.c3:0:8
	movq	-312(%rbp), %rax                # 8-byte Reload
	.loc	1 312 8                         # dstring.c3:312:8
	cmpq	$0, (%rax)
	jne	.LBB4_9
# %bb.6:
.Ltmp41:
	.loc	1 314 16 is_stmt 1              # dstring.c3:314:16
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	.loc	1 314 11 is_stmt 0              # dstring.c3:314:11
	callq	std.core.dstring.temp@PLT
	movq	%rax, -336(%rbp)                # 8-byte Spill
	.loc	1 314 4                         # dstring.c3:314:4
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_27
# %bb.7:
	.loc	1 0 4                           # dstring.c3:0:4
	movq	-328(%rbp), %rax                # 8-byte Reload
	.loc	1 314 4                         # dstring.c3:314:4
	andq	$7, %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_28
# %bb.8:
	.loc	1 0 4                           # dstring.c3:0:4
	movq	-328(%rbp), %rax                # 8-byte Reload
	movq	-336(%rbp), %rcx                # 8-byte Reload
	.loc	1 314 4                         # dstring.c3:314:4
	movq	%rcx, (%rax)
	.loc	1 315 9 epilogue_begin is_stmt 1 # dstring.c3:315:9
	addq	$400, %rsp                      # imm = 0x190
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp42:
.LBB4_9:
	.cfi_def_cfa %rbp, 16
	.loc	1 317 15                        # dstring.c3:317:15
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	.loc	1 317 2 is_stmt 0               # dstring.c3:317:2
	callq	std.core.dstring.DString.reserve@PLT
	.loc	1 318 21 is_stmt 1              # dstring.c3:318:21
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_29
# %bb.10:
	.loc	1 0 21 is_stmt 0                # dstring.c3:0:21
	movq	-352(%rbp), %rax                # 8-byte Reload
	.loc	1 318 21                        # dstring.c3:318:21
	andq	$7, %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_30
# %bb.11:
	.loc	1 0 21                          # dstring.c3:0:21
	movq	-352(%rbp), %rax                # 8-byte Reload
	.loc	1 318 21                        # dstring.c3:318:21
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.Ltmp43:
	.loc	1 614 22 is_stmt 1              # dstring.c3:614:22
	movq	-8(%rbp), %rax
.Ltmp44:
	.loc	1 318 21                        # dstring.c3:318:21
	movq	%rax, -184(%rbp)
	.loc	1 319 13                        # dstring.c3:319:13
	movq	-184(%rbp), %rax
	addq	$32, %rax
	.loc	1 319 24 is_stmt 0              # dstring.c3:319:24
	movq	-184(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, -264(%rbp)
	.loc	1 319 35                        # dstring.c3:319:35
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)
.Ltmp45:
	.file	4 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	4 357 23 is_stmt 1              # mem.c3:357:23
	cmpq	$0, -264(%rbp)
	jne	.LBB4_13
# %bb.12:
	leaq	.panic_msg.3(%rip), %rdi
	movl	$37, %esi
	leaq	.file.4(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB4_13:
	.loc	4 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -272(%rbp)
	movb	%al, -361(%rbp)                 # 1-byte Spill
	jne	.LBB4_15
# %bb.14:
	.loc	4 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-280(%rbp), %rax
	sete	%al
	movb	%al, -361(%rbp)                 # 1-byte Spill
.LBB4_15:
	.loc	4 0 26                          # mem.c3:0:26
	movb	-361(%rbp), %al                 # 1-byte Reload
	.loc	4 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB4_17
# %bb.16:
	.loc	4 319 2 is_stmt 1               # mem.c3:319:2
	leaq	.panic_msg.6(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$319, (%rsp)                    # imm = 0x13F
	callq	*(%rax)
.LBB4_17:
	.loc	4 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-280(%rbp), %rcx
	movb	%al, -362(%rbp)                 # 1-byte Spill
	je	.LBB4_19
# %bb.18:
	.loc	4 355 23 is_stmt 0              # mem.c3:355:23
	movq	-264(%rbp), %rax
	.loc	4 355 29                        # mem.c3:355:29
	addq	-280(%rbp), %rax
	.loc	4 355 23                        # mem.c3:355:23
	cmpq	-272(%rbp), %rax
	setbe	%al
	movb	%al, -362(%rbp)                 # 1-byte Spill
.LBB4_19:
	.loc	4 0 23                          # mem.c3:0:23
	movb	-362(%rbp), %cl                 # 1-byte Reload
	.loc	4 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -363(%rbp)                 # 1-byte Spill
	jne	.LBB4_21
# %bb.20:
	.loc	4 355 43                        # mem.c3:355:43
	movq	-272(%rbp), %rax
	.loc	4 355 49                        # mem.c3:355:49
	addq	-280(%rbp), %rax
	.loc	4 355 43                        # mem.c3:355:43
	cmpq	-264(%rbp), %rax
	setbe	%al
	movb	%al, -363(%rbp)                 # 1-byte Spill
.LBB4_21:
	.loc	4 0 43                          # mem.c3:0:43
	movb	-363(%rbp), %al                 # 1-byte Reload
	.loc	4 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB4_23
# %bb.22:
	.loc	4 319 2 is_stmt 1               # mem.c3:319:2
	leaq	.panic_msg.7(%rip), %rdi
	movl	$95, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$319, (%rsp)                    # imm = 0x13F
	callq	*(%rax)
.Ltmp46:
.LBB4_23:
	.loc	4 359 11                        # mem.c3:359:11
	movq	-264(%rbp), %rdi
	.loc	4 359 16 is_stmt 0              # mem.c3:359:16
	movq	-272(%rbp), %rsi
	.loc	4 359 21                        # mem.c3:359:21
	movq	-280(%rbp), %rdx
	.loc	4 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
.Ltmp47:
	.loc	1 320 2 is_stmt 1               # dstring.c3:320:2
	movq	-184(%rbp), %rax
	movq	16(%rax), %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.loc	1 320 2 epilogue_begin is_stmt 0 # dstring.c3:320:2
	addq	$400, %rsp                      # imm = 0x190
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_24:
	.cfi_def_cfa %rbp, 16
	.loc	1 308 30 is_stmt 1              # dstring.c3:308:30
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$308, (%rsp)                    # imm = 0x134
	callq	*(%rax)
.LBB4_25:
	.loc	1 312 8                         # dstring.c3:312:8
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$312, (%rsp)                    # imm = 0x138
	callq	*(%rax)
.LBB4_26:
	.loc	1 0 8 is_stmt 0                 # dstring.c3:0:8
	movq	-320(%rbp), %rcx                # 8-byte Reload
	movq	$8, -48(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	1 312 8                         # dstring.c3:312:8
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	leaq	-112(%rbp), %rax
	movl	$312, (%rsp)                    # imm = 0x138
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_27:
.Ltmp48:
	.loc	1 314 4 is_stmt 1               # dstring.c3:314:4
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$314, (%rsp)                    # imm = 0x13A
	callq	*(%rax)
.LBB4_28:
	.loc	1 0 4 is_stmt 0                 # dstring.c3:0:4
	movq	-344(%rbp), %rcx                # 8-byte Reload
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
	.loc	1 314 4                         # dstring.c3:314:4
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	leaq	-176(%rbp), %rax
	movl	$314, (%rsp)                    # imm = 0x13A
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp49:
.LBB4_29:
	.loc	1 318 21 is_stmt 1              # dstring.c3:318:21
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$318, (%rsp)                    # imm = 0x13E
	callq	*(%rax)
.LBB4_30:
	.loc	1 0 21 is_stmt 0                # dstring.c3:0:21
	movq	-360(%rbp), %rcx                # 8-byte Reload
	movq	$8, -192(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -200(%rbp)
	movq	%rax, -232(%rbp)
	leaq	-192(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	%rax, -216(%rbp)
	leaq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$2, -248(%rbp)
	.loc	1 318 21                        # dstring.c3:318:21
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.20(%rip), %r8
	movl	$12, %r9d
	leaq	-256(%rbp), %rax
	movl	$318, (%rsp)                    # imm = 0x13E
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp50:
.Lfunc_end4:
	.size	std.core.dstring.DString.append_chars, .Lfunc_end4-std.core.dstring.DString.append_chars
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.write,"axG",@progbits,std.core.dstring.DString.write,comdat
	.weak	std.core.dstring.DString.write  # -- Begin function std.core.dstring.DString.write
	.p2align	4, 0x90
	.type	std.core.dstring.DString.write,@function
std.core.dstring.DString.write:         # @std.core.dstring.DString.write
.Lfunc_begin5:
	.loc	1 341 0 is_stmt 1               # dstring.c3:341:0
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
.Ltmp51:
	.loc	1 342 1 prologue_end            # dstring.c3:342:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB5_2
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movq	%rdx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -16(%rbp)
	.loc	1 343 20 is_stmt 1              # dstring.c3:343:20
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	.loc	1 343 2 is_stmt 0               # dstring.c3:343:2
	callq	std.core.dstring.DString.append_chars@PLT
	movq	-64(%rbp), %rax                 # 8-byte Reload
	.loc	1 344 9 is_stmt 1               # dstring.c3:344:9
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 344 9 epilogue_begin is_stmt 0 # dstring.c3:344:9
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 341 23 is_stmt 1              # dstring.c3:341:23
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.21(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$341, (%rsp)                    # imm = 0x155
	callq	*(%rax)
.Ltmp52:
.Lfunc_end5:
	.size	std.core.dstring.DString.write, .Lfunc_end5-std.core.dstring.DString.write
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.write_byte,"axG",@progbits,std.core.dstring.DString.write_byte,comdat
	.weak	std.core.dstring.DString.write_byte # -- Begin function std.core.dstring.DString.write_byte
	.p2align	4, 0x90
	.type	std.core.dstring.DString.write_byte,@function
std.core.dstring.DString.write_byte:    # @std.core.dstring.DString.write_byte
.Lfunc_begin6:
	.loc	1 347 0                         # dstring.c3:347:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	movb	%sil, %al
	movb	%al, -10(%rbp)                  # 1-byte Spill
.Ltmp53:
	.loc	1 348 1 prologue_end            # dstring.c3:348:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB6_2
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movb	-10(%rbp), %al                  # 1-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	.loc	1 349 19 is_stmt 1              # dstring.c3:349:19
	movq	-8(%rbp), %rdi
	.loc	1 349 2 is_stmt 0               # dstring.c3:349:2
	movzbl	-9(%rbp), %esi
	callq	std.core.dstring.DString.append_char@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 349 2 epilogue_begin          # dstring.c3:349:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 347 29 is_stmt 1              # dstring.c3:347:29
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %r9d
	leaq	.func.22(%rip), %r8
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	%r9, %rcx
	movl	$347, (%rsp)                    # imm = 0x15B
	callq	*(%rax)
.Ltmp54:
.Lfunc_end6:
	.size	std.core.dstring.DString.write_byte, .Lfunc_end6-std.core.dstring.DString.write_byte
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.append_char,"axG",@progbits,std.core.dstring.DString.append_char,comdat
	.weak	std.core.dstring.DString.append_char # -- Begin function std.core.dstring.DString.append_char
	.p2align	4, 0x90
	.type	std.core.dstring.DString.append_char,@function
std.core.dstring.DString.append_char:   # @std.core.dstring.DString.append_char
.Lfunc_begin7:
	.loc	1 352 0                         # dstring.c3:352:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp                      # imm = 0x150
	movq	%rdi, -256(%rbp)                # 8-byte Spill
	movb	%sil, %al
	movb	%al, -241(%rbp)                 # 1-byte Spill
.Ltmp55:
	.loc	1 353 1 prologue_end            # dstring.c3:353:1
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB7_10
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movb	-241(%rbp), %al                 # 1-byte Reload
	movq	-256(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)
	.loc	1 354 8 is_stmt 1               # dstring.c3:354:8
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB7_11
# %bb.2:
	.loc	1 0 8 is_stmt 0                 # dstring.c3:0:8
	movq	-264(%rbp), %rax                # 8-byte Reload
	.loc	1 354 8                         # dstring.c3:354:8
	andq	$7, %rax
	movq	%rax, -272(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB7_12
# %bb.3:
	.loc	1 0 8                           # dstring.c3:0:8
	movq	-264(%rbp), %rax                # 8-byte Reload
	.loc	1 354 8                         # dstring.c3:354:8
	cmpq	$0, (%rax)
	jne	.LBB7_7
# %bb.4:
.Ltmp56:
	.loc	1 356 11 is_stmt 1              # dstring.c3:356:11
	movl	$16, %edi
	callq	std.core.dstring.temp_with_capacity@PLT
	movq	%rax, -288(%rbp)                # 8-byte Spill
	.loc	1 356 4 is_stmt 0               # dstring.c3:356:4
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB7_13
# %bb.5:
	.loc	1 0 4                           # dstring.c3:0:4
	movq	-280(%rbp), %rax                # 8-byte Reload
	.loc	1 356 4                         # dstring.c3:356:4
	andq	$7, %rax
	movq	%rax, -296(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB7_14
# %bb.6:
	.loc	1 0 4                           # dstring.c3:0:4
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	-288(%rbp), %rcx                # 8-byte Reload
	.loc	1 356 4                         # dstring.c3:356:4
	movq	%rcx, (%rax)
.Ltmp57:
.LBB7_7:
	.loc	1 358 15 is_stmt 1              # dstring.c3:358:15
	movq	-16(%rbp), %rdi
	.loc	1 358 2 is_stmt 0               # dstring.c3:358:2
	movl	$1, %esi
	callq	std.core.dstring.DString.reserve@PLT
	.loc	1 359 21 is_stmt 1              # dstring.c3:359:21
	movq	-16(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB7_15
# %bb.8:
	.loc	1 0 21 is_stmt 0                # dstring.c3:0:21
	movq	-304(%rbp), %rax                # 8-byte Reload
	.loc	1 359 21                        # dstring.c3:359:21
	andq	$7, %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB7_16
# %bb.9:
	.loc	1 0 21                          # dstring.c3:0:21
	movq	-304(%rbp), %rax                # 8-byte Reload
	.loc	1 359 21                        # dstring.c3:359:21
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.Ltmp58:
	.loc	1 614 22 is_stmt 1              # dstring.c3:614:22
	movq	-8(%rbp), %rax
.Ltmp59:
	.loc	1 359 21                        # dstring.c3:359:21
	movq	%rax, -168(%rbp)
	.loc	1 360 2                         # dstring.c3:360:2
	movq	-168(%rbp), %rax
	.loc	1 360 13 is_stmt 0              # dstring.c3:360:13
	movq	-168(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 16(%rdx)
	movb	-17(%rbp), %dl
	movb	%dl, 32(%rax,%rcx)
	.loc	1 360 13 epilogue_begin         # dstring.c3:360:13
	addq	$336, %rsp                      # imm = 0x150
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_10:
	.cfi_def_cfa %rbp, 16
	.loc	1 352 29 is_stmt 1              # dstring.c3:352:29
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.23(%rip), %r8
	movl	$11, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$352, (%rsp)                    # imm = 0x160
	callq	*(%rax)
.LBB7_11:
	.loc	1 354 8                         # dstring.c3:354:8
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.23(%rip), %r8
	movl	$11, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$354, (%rsp)                    # imm = 0x162
	callq	*(%rax)
.LBB7_12:
	.loc	1 0 8 is_stmt 0                 # dstring.c3:0:8
	movq	-272(%rbp), %rcx                # 8-byte Reload
	movq	$8, -32(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -40(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -56(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$2, -88(%rbp)
	.loc	1 354 8                         # dstring.c3:354:8
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.23(%rip), %r8
	movl	$11, %r9d
	leaq	-96(%rbp), %rax
	movl	$354, (%rsp)                    # imm = 0x162
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB7_13:
.Ltmp60:
	.loc	1 356 4 is_stmt 1               # dstring.c3:356:4
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.23(%rip), %r8
	movl	$11, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$356, (%rsp)                    # imm = 0x164
	callq	*(%rax)
.LBB7_14:
	.loc	1 0 4 is_stmt 0                 # dstring.c3:0:4
	movq	-296(%rbp), %rcx                # 8-byte Reload
	movq	$8, -104(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -112(%rbp)
	movq	%rax, -136(%rbp)
	leaq	-104(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	%rax, -120(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$2, -152(%rbp)
	.loc	1 356 4                         # dstring.c3:356:4
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.23(%rip), %r8
	movl	$11, %r9d
	leaq	-160(%rbp), %rax
	movl	$356, (%rsp)                    # imm = 0x164
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp61:
.LBB7_15:
	.loc	1 359 21 is_stmt 1              # dstring.c3:359:21
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.23(%rip), %r8
	movl	$11, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$359, (%rsp)                    # imm = 0x167
	callq	*(%rax)
.LBB7_16:
	.loc	1 0 21 is_stmt 0                # dstring.c3:0:21
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	$8, -176(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -184(%rbp)
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	%rax, -200(%rbp)
	leaq	-184(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	$2, -232(%rbp)
	.loc	1 359 21                        # dstring.c3:359:21
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.23(%rip), %r8
	movl	$11, %r9d
	leaq	-240(%rbp), %rax
	movl	$359, (%rsp)                    # imm = 0x167
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp62:
.Lfunc_end7:
	.size	std.core.dstring.DString.append_char, .Lfunc_end7-std.core.dstring.DString.append_char
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.appendf,"axG",@progbits,std.core.dstring.DString.appendf,comdat
	.weak	std.core.dstring.DString.appendf # -- Begin function std.core.dstring.DString.appendf
	.p2align	4, 0x90
	.type	std.core.dstring.DString.appendf,@function
std.core.dstring.DString.appendf:       # @std.core.dstring.DString.appendf
.Lfunc_begin8:
	.loc	1 553 0 is_stmt 1               # dstring.c3:553:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp                      # imm = 0x170
	movq	%rdi, -296(%rbp)                # 8-byte Spill
	movq	%rsi, -288(%rbp)                # 8-byte Spill
	movq	%rdx, -280(%rbp)                # 8-byte Spill
	movq	%rcx, -272(%rbp)                # 8-byte Spill
	movq	%r8, -264(%rbp)                 # 8-byte Spill
	movq	%r9, -256(%rbp)                 # 8-byte Spill
.Ltmp63:
	.loc	1 554 1 prologue_end            # dstring.c3:554:1
	cmpq	$0, %rsi
	sete	%al
	testb	$1, %al
	jne	.LBB8_13
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-256(%rbp), %rax                # 8-byte Reload
	movq	-264(%rbp), %rcx                # 8-byte Reload
	movq	-272(%rbp), %rdx                # 8-byte Reload
	movq	-280(%rbp), %rsi                # 8-byte Reload
	movq	-288(%rbp), %rdi                # 8-byte Reload
	movq	%rdi, -24(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -48(%rbp)
	.loc	1 555 7 is_stmt 1               # dstring.c3:555:7
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB8_14
# %bb.2:
	.loc	1 0 7 is_stmt 0                 # dstring.c3:0:7
	movq	-304(%rbp), %rax                # 8-byte Reload
	.loc	1 555 7                         # dstring.c3:555:7
	andq	$7, %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB8_15
# %bb.3:
	.loc	1 0 7                           # dstring.c3:0:7
	movq	-304(%rbp), %rax                # 8-byte Reload
	.loc	1 555 7                         # dstring.c3:555:7
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc	1 555 6                         # dstring.c3:555:6
	cmpq	$0, -8(%rbp)
	jne	.LBB8_9
# %bb.4:
	.loc	1 555 20                        # dstring.c3:555:20
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	.loc	1 555 31                        # dstring.c3:555:31
	movq	-32(%rbp), %rcx
	addq	$20, %rcx
	movq	%rcx, -320(%rbp)                # 8-byte Spill
	.loc	1 36 12 is_stmt 1               # dstring.c3:36:12
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB8_16
# %bb.5:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-328(%rbp), %rax                # 8-byte Reload
	.loc	1 36 12                         # dstring.c3:36:12
	andq	$7, %rax
	movq	%rax, -336(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB8_17
# %bb.6:
	.loc	1 0 12                          # dstring.c3:0:12
	movq	-328(%rbp), %rax                # 8-byte Reload
	.loc	1 36 12                         # dstring.c3:36:12
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc	1 36 11                         # dstring.c3:36:11
	cmpq	$0, -16(%rbp)
	je	.LBB8_8
# %bb.7:
	.loc	1 555 20 is_stmt 1              # dstring.c3:555:20
	leaq	.panic_msg.2(%rip), %rdi
	movl	$63, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.24(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$555, (%rsp)                    # imm = 0x22B
	callq	*(%rax)
.LBB8_8:
	.loc	1 0 20 is_stmt 0                # dstring.c3:0:20
	movq	-320(%rbp), %rsi                # 8-byte Reload
	movq	-328(%rbp), %rdi                # 8-byte Reload
	.loc	1 555 20                        # dstring.c3:555:20
	callq	std.core.dstring.DString.tinit@PLT
.LBB8_9:
	.loc	1 556 12 is_stmt 1              # dstring.c3:556:12
	leaq	-232(%rbp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	.loc	1 557 40                        # dstring.c3:557:40
	movq	-24(%rbp), %rdx
	.loc	1 557 2 is_stmt 0               # dstring.c3:557:2
	leaq	-232(%rbp), %rdi
	leaq	std.core.dstring.out_string_append_fn(%rip), %rsi
	callq	std.io.Formatter.init@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %r9
	.loc	1 558 9 is_stmt 1               # dstring.c3:558:9
	leaq	-248(%rbp), %rdi
	leaq	-232(%rbp), %rsi
	callq	std.io.Formatter.vprintf@PLT
	movq	%rax, -344(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB8_11
# %bb.10:
	.loc	1 0 9 is_stmt 0                 # dstring.c3:0:9
	movq	-344(%rbp), %rax                # 8-byte Reload
	.loc	1 558 9                         # dstring.c3:558:9
	movq	%rax, -240(%rbp)
	jmp	.LBB8_12
.LBB8_11:
	.loc	1 0 9                           # dstring.c3:0:9
	movq	-296(%rbp), %rax                # 8-byte Reload
	.loc	1 558 9                         # dstring.c3:558:9
	movq	-248(%rbp), %rcx
	movq	%rcx, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 558 9 epilogue_begin          # dstring.c3:558:9
	addq	$368, %rsp                      # imm = 0x170
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_12:
	.cfi_def_cfa %rbp, 16
	movq	-240(%rbp), %rax
	.loc	1 558 9 epilogue_begin          # dstring.c3:558:9
	addq	$368, %rsp                      # imm = 0x170
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_13:
	.cfi_def_cfa %rbp, 16
	.loc	1 553 25 is_stmt 1              # dstring.c3:553:25
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.24(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$553, (%rsp)                    # imm = 0x229
	callq	*(%rax)
.LBB8_14:
	.loc	1 555 7                         # dstring.c3:555:7
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.24(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$555, (%rsp)                    # imm = 0x22B
	callq	*(%rax)
.LBB8_15:
	.loc	1 0 7 is_stmt 0                 # dstring.c3:0:7
	movq	-312(%rbp), %rcx                # 8-byte Reload
	movq	$8, -64(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -72(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-64(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$2, -120(%rbp)
	.loc	1 555 7                         # dstring.c3:555:7
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.24(%rip), %r8
	movl	$7, %r9d
	leaq	-128(%rbp), %rax
	movl	$555, (%rsp)                    # imm = 0x22B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB8_16:
	.loc	1 36 12 is_stmt 1               # dstring.c3:36:12
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.24(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$36, (%rsp)
	callq	*(%rax)
.LBB8_17:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-336(%rbp), %rcx                # 8-byte Reload
	movq	$8, -136(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -144(%rbp)
	movq	%rax, -168(%rbp)
	leaq	-136(%rbp), %rcx
	movq	%rcx, -176(%rbp)
	movq	%rax, -152(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$2, -184(%rbp)
	.loc	1 36 12                         # dstring.c3:36:12
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.24(%rip), %r8
	movl	$7, %r9d
	leaq	-192(%rbp), %rax
	movl	$36, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp64:
.Lfunc_end8:
	.size	std.core.dstring.DString.appendf, .Lfunc_end8-std.core.dstring.DString.appendf
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.data,"axG",@progbits,std.core.dstring.DString.data,comdat
	.weak	std.core.dstring.DString.data   # -- Begin function std.core.dstring.DString.data
	.p2align	4, 0x90
	.type	std.core.dstring.DString.data,@function
std.core.dstring.DString.data:          # @std.core.dstring.DString.data
.Lfunc_begin9:
	.loc	1 612 0 is_stmt 1               # dstring.c3:612:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp65:
	.loc	1 614 22 prologue_end           # dstring.c3:614:22
	movq	-8(%rbp), %rax
	.loc	1 614 22 epilogue_begin is_stmt 0 # dstring.c3:614:22
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp66:
.Lfunc_end9:
	.size	std.core.dstring.DString.data, .Lfunc_end9-std.core.dstring.DString.data
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.DString.reserve,"axG",@progbits,std.core.dstring.DString.reserve,comdat
	.weak	std.core.dstring.DString.reserve # -- Begin function std.core.dstring.DString.reserve
	.p2align	4, 0x90
	.type	std.core.dstring.DString.reserve,@function
std.core.dstring.DString.reserve:       # @std.core.dstring.DString.reserve
.Lfunc_begin10:
	.loc	1 617 0 is_stmt 1               # dstring.c3:617:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$720, %rsp                      # imm = 0x2D0
	movq	%rdi, -480(%rbp)                # 8-byte Spill
	movq	%rsi, -472(%rbp)                # 8-byte Spill
.Ltmp67:
	.loc	1 618 1 prologue_end            # dstring.c3:618:1
	movq	$0, -352(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -296(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB10_70
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-472(%rbp), %rax                # 8-byte Reload
	movq	-480(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	.loc	1 619 21 is_stmt 1              # dstring.c3:619:21
	movq	-16(%rbp), %rax
	movq	%rax, -488(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_71
# %bb.2:
	.loc	1 0 21 is_stmt 0                # dstring.c3:0:21
	movq	-488(%rbp), %rax                # 8-byte Reload
	.loc	1 619 21                        # dstring.c3:619:21
	andq	$7, %rax
	movq	%rax, -496(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB10_72
# %bb.3:
	.loc	1 0 21                          # dstring.c3:0:21
	movq	-488(%rbp), %rax                # 8-byte Reload
	.loc	1 619 21                        # dstring.c3:619:21
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.Ltmp68:
	.loc	1 614 22 is_stmt 1              # dstring.c3:614:22
	movq	-8(%rbp), %rax
.Ltmp69:
	.loc	1 619 21                        # dstring.c3:619:21
	movq	%rax, -32(%rbp)
	.loc	1 620 6                         # dstring.c3:620:6
	cmpq	$0, -32(%rbp)
	jne	.LBB10_7
# %bb.4:
.Ltmp70:
	.loc	1 622 39                        # dstring.c3:622:39
	movq	-24(%rbp), %rdi
	.loc	1 622 11 is_stmt 0              # dstring.c3:622:11
	callq	std.core.dstring.temp_with_capacity@PLT
	movq	%rax, -512(%rbp)                # 8-byte Spill
	.loc	1 622 4                         # dstring.c3:622:4
	movq	-16(%rbp), %rax
	movq	%rax, -504(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_73
# %bb.5:
	.loc	1 0 4                           # dstring.c3:0:4
	movq	-504(%rbp), %rax                # 8-byte Reload
	.loc	1 622 4                         # dstring.c3:622:4
	andq	$7, %rax
	movq	%rax, -520(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB10_74
# %bb.6:
	.loc	1 0 4                           # dstring.c3:0:4
	movq	-504(%rbp), %rax                # 8-byte Reload
	movq	-512(%rbp), %rcx                # 8-byte Reload
	.loc	1 622 4                         # dstring.c3:622:4
	movq	%rcx, (%rax)
	.loc	1 623 9 epilogue_begin is_stmt 1 # dstring.c3:623:9
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp71:
.LBB10_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 625 12                        # dstring.c3:625:12
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)
	.loc	1 626 6                         # dstring.c3:626:6
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-168(%rbp), %rax
	jb	.LBB10_9
# %bb.8:
	.loc	1 626 34 epilogue_begin is_stmt 0 # dstring.c3:626:34
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_9:
	.cfi_def_cfa %rbp, 16
	.loc	1 627 21 is_stmt 1              # dstring.c3:627:21
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	shlq	%rax
	movq	%rax, -176(%rbp)
	.loc	1 628 6                         # dstring.c3:628:6
	cmpq	$16, -176(%rbp)
	jae	.LBB10_11
# %bb.10:
	.loc	1 628 50 is_stmt 0              # dstring.c3:628:50
	movq	$16, -176(%rbp)
.LBB10_11:
	.loc	1 629 2 is_stmt 1               # dstring.c3:629:2
	jmp	.LBB10_12
.LBB10_12:                              # =>This Inner Loop Header: Depth=1
.Ltmp72:
	.loc	1 629 9 is_stmt 0               # dstring.c3:629:9
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jae	.LBB10_14
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=1
	.loc	1 629 29                        # dstring.c3:629:29
	movq	-176(%rbp), %rax
	shlq	%rax
	movq	%rax, -176(%rbp)
	jmp	.LBB10_12
.Ltmp73:
.LBB10_14:
	.loc	1 630 2 is_stmt 1               # dstring.c3:630:2
	movq	-32(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.loc	1 631 38                        # dstring.c3:631:38
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -192(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	.loc	1 631 54 is_stmt 0              # dstring.c3:631:54
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)
	.loc	1 631 80                        # dstring.c3:631:80
	movq	-176(%rbp), %rax
	.loc	1 631 60                        # dstring.c3:631:60
	addq	$32, %rax
	movq	%rax, -208(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -248(%rbp)
.Ltmp74:
	.loc	2 108 6 is_stmt 1               # mem_allocator.c3:108:6
	cmpq	$0, -248(%rbp)
	jne	.LBB10_26
# %bb.15:
	.loc	2 0 6 is_stmt 0                 # mem_allocator.c3:0:6
	movq	-232(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -280(%rbp)
.Ltmp75:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -280(%rbp)
	jne	.LBB10_17
# %bb.16:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB10_25
.LBB10_17:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-280(%rbp), %rax
	movq	%rax, -528(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB10_19
# %bb.18:
	leaq	.panic_msg.26(%rip), %rdi
	movl	$75, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB10_19:
	movq	-264(%rbp), %rax
	movq	%rax, -536(%rbp)                # 8-byte Spill
.Ltmp76:
	.loc	1 618 1 is_stmt 1               # dstring.c3:618:1
	cmpq	-296(%rbp), %rax
	je	.LBB10_21
# %bb.20:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-536(%rbp), %rax                # 8-byte Reload
	.loc	1 618 1                         # dstring.c3:618:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-536(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -288(%rbp)
	movq	%rcx, -296(%rbp)
	movq	%rax, -544(%rbp)                # 8-byte Spill
	jmp	.LBB10_22
.LBB10_21:
	movq	-288(%rbp), %rax
	movq	%rax, -544(%rbp)                # 8-byte Spill
.LBB10_22:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-544(%rbp), %rax                # 8-byte Reload
	movq	%rax, -552(%rbp)                # 8-byte Spill
	.loc	1 618 1                         # dstring.c3:618:1
	cmpq	$0, %rax
	jne	.LBB10_24
# %bb.23:
	leaq	.panic_msg.27(%rip), %rdi
	movl	$44, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB10_24:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-552(%rbp), %rax                # 8-byte Reload
	movq	-528(%rbp), %rsi                # 8-byte Reload
	.loc	1 618 1                         # dstring.c3:618:1
	movq	-272(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB10_25:
.Ltmp77:
	.loc	2 111 10 is_stmt 1              # mem_allocator.c3:111:10
	movq	$0, -256(%rbp)
	jmp	.LBB10_65
.Ltmp78:
.LBB10_26:
	.loc	2 113 6                         # mem_allocator.c3:113:6
	cmpq	$0, -240(%rbp)
	jne	.LBB10_45
# %bb.27:
	.loc	2 113 37 is_stmt 0              # mem_allocator.c3:113:37
	movq	-248(%rbp), %rax
	movq	%rax, -568(%rbp)                # 8-byte Spill
	.loc	2 38 12 is_stmt 1               # mem_allocator.c3:38:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -553(%rbp)                 # 1-byte Spill
	jne	.LBB10_31
# %bb.28:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -304(%rbp)
.Ltmp79:
	.loc	3 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-304(%rbp), %rcx
	movb	%al, -569(%rbp)                 # 1-byte Spill
	je	.LBB10_30
# %bb.29:
	.loc	3 992 20 is_stmt 0              # math.c3:992:20
	movq	-304(%rbp), %rax
	.loc	3 992 25                        # math.c3:992:25
	movq	-304(%rbp), %rcx
	subq	$1, %rcx
	.loc	3 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	3 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -569(%rbp)                 # 1-byte Spill
.LBB10_30:
	.loc	3 0 19                          # math.c3:0:19
	movb	-569(%rbp), %al                 # 1-byte Reload
	movb	%al, -553(%rbp)                 # 1-byte Spill
.LBB10_31:
	movb	-553(%rbp), %al                 # 1-byte Reload
	.loc	3 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB10_33
.Ltmp80:
# %bb.32:
	.loc	2 113 19 is_stmt 1              # mem_allocator.c3:113:19
	leaq	.panic_msg.10(%rip), %rdi
	movl	$65, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB10_33:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_35
	jmp	.LBB10_34
.LBB10_34:
	leaq	.panic_msg.12(%rip), %rdi
	movl	$80, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB10_35:
	.loc	2 0 19 is_stmt 0                # mem_allocator.c3:0:19
	movq	-568(%rbp), %rcx                # 8-byte Reload
	.loc	2 113 19                        # mem_allocator.c3:113:19
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB10_37
# %bb.36:
	leaq	.panic_msg.13(%rip), %rdi
	movl	$59, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB10_37:
	movq	-224(%rbp), %rax
	movq	%rax, -584(%rbp)                # 8-byte Spill
.Ltmp81:
	.loc	1 618 1 is_stmt 1               # dstring.c3:618:1
	cmpq	-320(%rbp), %rax
	je	.LBB10_39
# %bb.38:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-584(%rbp), %rax                # 8-byte Reload
	.loc	1 618 1                         # dstring.c3:618:1
	movq	16(%rax), %rdi
	movq	($sel.acquire)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-584(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%rax, -592(%rbp)                # 8-byte Spill
	jmp	.LBB10_40
.LBB10_39:
	movq	-312(%rbp), %rax
	movq	%rax, -592(%rbp)                # 8-byte Spill
.LBB10_40:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-592(%rbp), %rax                # 8-byte Reload
	movq	%rax, -600(%rbp)                # 8-byte Spill
	.loc	1 618 1                         # dstring.c3:618:1
	cmpq	$0, %rax
	jne	.LBB10_42
# %bb.41:
	leaq	.panic_msg.14(%rip), %rdi
	movl	$44, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$113, (%rsp)
	callq	*(%rax)
.LBB10_42:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-600(%rbp), %rax                # 8-byte Reload
	movq	-568(%rbp), %rdx                # 8-byte Reload
	movq	-232(%rbp), %rsi
.Ltmp82:
	.loc	2 113 19 is_stmt 1              # mem_allocator.c3:113:19
	leaq	-328(%rbp), %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -608(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_44
# %bb.43:
	.loc	2 0 19 is_stmt 0                # mem_allocator.c3:0:19
	movq	-608(%rbp), %rax                # 8-byte Reload
	.loc	2 113 19                        # mem_allocator.c3:113:19
	movq	%rax, -216(%rbp)
	jmp	.LBB10_66
.LBB10_44:
	movq	-328(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB10_65
.LBB10_45:
	.loc	2 114 26 is_stmt 1              # mem_allocator.c3:114:26
	movq	-240(%rbp), %rax
	movq	%rax, -632(%rbp)                # 8-byte Spill
	.loc	2 114 31 is_stmt 0              # mem_allocator.c3:114:31
	movq	-248(%rbp), %rax
	movq	%rax, -624(%rbp)                # 8-byte Spill
	.loc	2 48 12 is_stmt 1               # mem_allocator.c3:48:12
	movb	$1, %al
	testb	$1, %al
	movb	%al, -609(%rbp)                 # 1-byte Spill
	jne	.LBB10_49
# %bb.46:
	.loc	2 0 12 is_stmt 0                # mem_allocator.c3:0:12
	movq	$0, -336(%rbp)
.Ltmp83:
	.loc	3 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-336(%rbp), %rcx
	movb	%al, -633(%rbp)                 # 1-byte Spill
	je	.LBB10_48
# %bb.47:
	.loc	3 992 20 is_stmt 0              # math.c3:992:20
	movq	-336(%rbp), %rax
	.loc	3 992 25                        # math.c3:992:25
	movq	-336(%rbp), %rcx
	subq	$1, %rcx
	.loc	3 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	3 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -633(%rbp)                 # 1-byte Spill
.LBB10_48:
	.loc	3 0 19                          # math.c3:0:19
	movb	-633(%rbp), %al                 # 1-byte Reload
	movb	%al, -609(%rbp)                 # 1-byte Spill
.LBB10_49:
	movb	-609(%rbp), %al                 # 1-byte Reload
	.loc	3 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB10_51
.Ltmp84:
# %bb.50:
	.loc	2 114 9 is_stmt 1               # mem_allocator.c3:114:9
	leaq	.panic_msg.10(%rip), %rdi
	movl	$65, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB10_51:
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_53
	jmp	.LBB10_52
.LBB10_52:
	leaq	.panic_msg.12(%rip), %rdi
	movl	$80, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB10_53:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-632(%rbp), %rax                # 8-byte Reload
	.loc	2 114 9                         # mem_allocator.c3:114:9
	cmpq	$0, %rax
	jne	.LBB10_55
# %bb.54:
	leaq	.panic_msg.28(%rip), %rdi
	movl	$32, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB10_55:
	.loc	2 0 9                           # mem_allocator.c3:0:9
	movq	-624(%rbp), %rcx                # 8-byte Reload
	.loc	2 114 9                         # mem_allocator.c3:114:9
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jb	.LBB10_57
# %bb.56:
	leaq	.panic_msg.29(%rip), %rdi
	movl	$33, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB10_57:
	movq	-224(%rbp), %rax
	movq	%rax, -648(%rbp)                # 8-byte Spill
.Ltmp85:
	.loc	1 618 1 is_stmt 1               # dstring.c3:618:1
	cmpq	-352(%rbp), %rax
	je	.LBB10_59
# %bb.58:
	.loc	1 0 1 is_stmt 0                 # dstring.c3:0:1
	movq	-648(%rbp), %rax                # 8-byte Reload
	.loc	1 618 1                         # dstring.c3:618:1
	movq	16(%rax), %rdi
	movq	($sel.resize)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-648(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%rax, -656(%rbp)                # 8-byte Spill
	jmp	.LBB10_60
.LBB10_59:
	movq	-344(%rbp), %rax
	movq	%rax, -656(%rbp)                # 8-byte Spill
.LBB10_60:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-656(%rbp), %rax                # 8-byte Reload
	movq	%rax, -664(%rbp)                # 8-byte Spill
	.loc	1 618 1                         # dstring.c3:618:1
	cmpq	$0, %rax
	jne	.LBB10_62
# %bb.61:
	leaq	.panic_msg.30(%rip), %rdi
	movl	$43, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$114, (%rsp)
	callq	*(%rax)
.LBB10_62:
	.loc	1 0 1                           # dstring.c3:0:1
	movq	-664(%rbp), %rax                # 8-byte Reload
	movq	-624(%rbp), %rcx                # 8-byte Reload
	movq	-632(%rbp), %rdx                # 8-byte Reload
	movq	-232(%rbp), %rsi
.Ltmp86:
	.loc	2 114 9 is_stmt 1               # mem_allocator.c3:114:9
	leaq	-360(%rbp), %rdi
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	callq	*%rax
	movq	%rax, -672(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_64
# %bb.63:
	.loc	2 0 9 is_stmt 0                 # mem_allocator.c3:0:9
	movq	-672(%rbp), %rax                # 8-byte Reload
	.loc	2 114 9                         # mem_allocator.c3:114:9
	movq	%rax, -216(%rbp)
	jmp	.LBB10_66
.LBB10_64:
	movq	-360(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB10_65:
	jmp	.LBB10_67
.LBB10_66:
	movq	($ct.fault)@GOTPCREL(%rip), %rax
	movq	%rax, -376(%rbp)
	leaq	-216(%rbp), %rax
	movq	%rax, -384(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$1, -392(%rbp)
.Ltmp87:
	.loc	2 103 9 is_stmt 1               # mem_allocator.c3:103:9
	leaq	.panic_msg.15(%rip), %rdi
	movl	$36, %esi
	leaq	.file.11(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	leaq	-400(%rbp), %rax
	movl	$103, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB10_67:
	movq	-256(%rbp), %rax
	movq	%rax, -688(%rbp)                # 8-byte Spill
.Ltmp88:
	.loc	1 631 3                         # dstring.c3:631:3
	movq	-16(%rbp), %rax
	movq	%rax, -680(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB10_75
# %bb.68:
	.loc	1 0 3 is_stmt 0                 # dstring.c3:0:3
	movq	-680(%rbp), %rax                # 8-byte Reload
	.loc	1 631 3                         # dstring.c3:631:3
	andq	$7, %rax
	movq	%rax, -696(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB10_76
# %bb.69:
	.loc	1 0 3                           # dstring.c3:0:3
	movq	-680(%rbp), %rax                # 8-byte Reload
	movq	-688(%rbp), %rcx                # 8-byte Reload
	.loc	1 631 3                         # dstring.c3:631:3
	movq	%rcx, (%rax)
	.loc	1 631 3 epilogue_begin          # dstring.c3:631:3
	addq	$720, %rsp                      # imm = 0x2D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_70:
	.cfi_def_cfa %rbp, 16
	.loc	1 617 25 is_stmt 1              # dstring.c3:617:25
	leaq	.panic_msg.8(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$617, (%rsp)                    # imm = 0x269
	callq	*(%rax)
.LBB10_71:
	.loc	1 619 21                        # dstring.c3:619:21
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$619, (%rsp)                    # imm = 0x26B
	callq	*(%rax)
.LBB10_72:
	.loc	1 0 21 is_stmt 0                # dstring.c3:0:21
	movq	-496(%rbp), %rcx                # 8-byte Reload
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
	.loc	1 619 21                        # dstring.c3:619:21
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	leaq	-96(%rbp), %rax
	movl	$619, (%rsp)                    # imm = 0x26B
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB10_73:
.Ltmp89:
	.loc	1 622 4 is_stmt 1               # dstring.c3:622:4
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$622, (%rsp)                    # imm = 0x26E
	callq	*(%rax)
.LBB10_74:
	.loc	1 0 4 is_stmt 0                 # dstring.c3:0:4
	movq	-520(%rbp), %rcx                # 8-byte Reload
	movq	$8, -104(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -112(%rbp)
	movq	%rax, -136(%rbp)
	leaq	-104(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	%rax, -120(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$2, -152(%rbp)
	.loc	1 622 4                         # dstring.c3:622:4
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	leaq	-160(%rbp), %rax
	movl	$622, (%rsp)                    # imm = 0x26E
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp90:
.LBB10_75:
	.loc	1 631 3 is_stmt 1               # dstring.c3:631:3
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$631, (%rsp)                    # imm = 0x277
	callq	*(%rax)
.LBB10_76:
	.loc	1 0 3 is_stmt 0                 # dstring.c3:0:3
	movq	-696(%rbp), %rcx                # 8-byte Reload
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
	.loc	1 631 3                         # dstring.c3:631:3
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.25(%rip), %r8
	movl	$7, %r9d
	leaq	-464(%rbp), %rax
	movl	$631, (%rsp)                    # imm = 0x277
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp91:
.Lfunc_end10:
	.size	std.core.dstring.DString.reserve, .Lfunc_end10-std.core.dstring.DString.reserve
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.new_with_capacity,"axG",@progbits,std.core.dstring.new_with_capacity,comdat
	.weak	std.core.dstring.new_with_capacity # -- Begin function std.core.dstring.new_with_capacity
	.p2align	4, 0x90
	.type	std.core.dstring.new_with_capacity,@function
std.core.dstring.new_with_capacity:     # @std.core.dstring.new_with_capacity
.Lfunc_begin11:
	.loc	1 43 0 is_stmt 1                # dstring.c3:43:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
.Ltmp92:
	.loc	1 45 26 prologue_end            # dstring.c3:45:26
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	1 45 37 is_stmt 0               # dstring.c3:45:37
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	.loc	1 18 12 is_stmt 1               # dstring.c3:18:12
	leaq	-40(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB11_5
# %bb.1:
	leaq	-40(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB11_6
# %bb.2:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc	1 18 11 is_stmt 0               # dstring.c3:18:11
	cmpq	$0, -8(%rbp)
	je	.LBB11_4
# %bb.3:
	.loc	1 45 9 is_stmt 1                # dstring.c3:45:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$63, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$45, (%rsp)
	callq	*(%rax)
.LBB11_4:
	.loc	1 0 9 is_stmt 0                 # dstring.c3:0:9
	movq	-136(%rbp), %rcx                # 8-byte Reload
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	-152(%rbp), %rdx                # 8-byte Reload
	movq	%rdx, -128(%rbp)
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rdx
	.loc	1 45 9                          # dstring.c3:45:9
	leaq	-40(%rbp), %rdi
	callq	std.core.dstring.DString.init@PLT
	.loc	1 45 9 epilogue_begin           # dstring.c3:45:9
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 18 12 is_stmt 1               # dstring.c3:18:12
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$18, (%rsp)
	callq	*(%rax)
.LBB11_6:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-160(%rbp), %rcx                # 8-byte Reload
	movq	$8, -48(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$17, %r9d
	leaq	-112(%rbp), %rax
	movl	$18, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp93:
.Lfunc_end11:
	.size	std.core.dstring.new_with_capacity, .Lfunc_end11-std.core.dstring.new_with_capacity
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.temp_with_capacity,"axG",@progbits,std.core.dstring.temp_with_capacity,comdat
	.weak	std.core.dstring.temp_with_capacity # -- Begin function std.core.dstring.temp_with_capacity
	.p2align	4, 0x90
	.type	std.core.dstring.temp_with_capacity,@function
std.core.dstring.temp_with_capacity:    # @std.core.dstring.temp_with_capacity
.Lfunc_begin12:
	.loc	1 48 0 is_stmt 1                # dstring.c3:48:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -136(%rbp)
.Ltmp94:
	.loc	1 48 66 prologue_end            # dstring.c3:48:66
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rax
	.loc	1 48 72 is_stmt 0               # dstring.c3:48:72
	movq	%fs:(%rax), %rdx
	movq	%fs:8(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
.Ltmp95:
	.loc	1 45 26 is_stmt 1               # dstring.c3:45:26
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	.loc	1 45 37 is_stmt 0               # dstring.c3:45:37
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	1 18 12 is_stmt 1               # dstring.c3:18:12
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB12_4
# %bb.1:
	leaq	-40(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB12_5
# %bb.2:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc	1 18 11 is_stmt 0               # dstring.c3:18:11
	cmpq	$0, -8(%rbp)
	je	.LBB12_6
# %bb.3:
	.loc	1 45 9 is_stmt 1                # dstring.c3:45:9
	leaq	.panic_msg.2(%rip), %rdi
	movl	$63, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$45, (%rsp)
	callq	*(%rax)
.LBB12_4:
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg(%rip), %rdi
	movl	$45, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$17, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$18, (%rsp)
	callq	*(%rax)
.LBB12_5:
	.loc	1 0 12 is_stmt 0                # dstring.c3:0:12
	movq	-168(%rbp), %rcx                # 8-byte Reload
	movq	$8, -48(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -56(%rbp)
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -72(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -104(%rbp)
	.loc	1 18 12                         # dstring.c3:18:12
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$17, %r9d
	leaq	-112(%rbp), %rax
	movl	$18, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB12_6:
	.loc	1 0 12                          # dstring.c3:0:12
	movq	-144(%rbp), %rcx                # 8-byte Reload
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	-160(%rbp), %rdx                # 8-byte Reload
	movq	%rdx, -128(%rbp)
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rdx
	.loc	1 45 9 is_stmt 1                # dstring.c3:45:9
	leaq	-40(%rbp), %rdi
	callq	std.core.dstring.DString.init@PLT
.Ltmp96:
	.loc	1 48 48 epilogue_begin          # dstring.c3:48:48
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp97:
.Lfunc_end12:
	.size	std.core.dstring.temp_with_capacity, .Lfunc_end12-std.core.dstring.temp_with_capacity
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.new,"axG",@progbits,std.core.dstring.new,comdat
	.weak	std.core.dstring.new            # -- Begin function std.core.dstring.new
	.p2align	4, 0x90
	.type	std.core.dstring.new,@function
std.core.dstring.new:                   # @std.core.dstring.new
.Lfunc_begin13:
	.loc	1 50 0                          # dstring.c3:50:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
.Ltmp98:
	.loc	1 52 12 prologue_end            # dstring.c3:52:12
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc	1 53 63                         # dstring.c3:53:63
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	.loc	1 53 34 is_stmt 0               # dstring.c3:53:34
	callq	std.core.dstring.new_with_capacity@PLT
	movq	%rax, -48(%rbp)
	.loc	1 54 6 is_stmt 1                # dstring.c3:54:6
	cmpq	$0, -40(%rbp)
	je	.LBB13_14
# %bb.1:
.Ltmp99:
	.loc	1 56 3                          # dstring.c3:56:3
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.loc	1 57 14                         # dstring.c3:57:14
	movq	-48(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -56(%rbp)
	.loc	1 57 26 is_stmt 0               # dstring.c3:57:26
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
.Ltmp100:
	.loc	4 357 23 is_stmt 1              # mem.c3:357:23
	cmpq	$0, -56(%rbp)
	jne	.LBB13_3
# %bb.2:
	leaq	.panic_msg.3(%rip), %rdi
	movl	$37, %esi
	leaq	.file.4(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.5(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB13_3:
	.loc	4 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -64(%rbp)
	movb	%al, -73(%rbp)                  # 1-byte Spill
	jne	.LBB13_5
# %bb.4:
	.loc	4 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-72(%rbp), %rax
	sete	%al
	movb	%al, -73(%rbp)                  # 1-byte Spill
.LBB13_5:
	.loc	4 0 26                          # mem.c3:0:26
	movb	-73(%rbp), %al                  # 1-byte Reload
	.loc	4 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB13_7
# %bb.6:
	.loc	4 57 3 is_stmt 1                # mem.c3:57:3
	leaq	.panic_msg.6(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.5(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$57, (%rsp)
	callq	*(%rax)
.LBB13_7:
	.loc	4 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-72(%rbp), %rcx
	movb	%al, -74(%rbp)                  # 1-byte Spill
	je	.LBB13_9
# %bb.8:
	.loc	4 355 23 is_stmt 0              # mem.c3:355:23
	movq	-56(%rbp), %rax
	.loc	4 355 29                        # mem.c3:355:29
	addq	-72(%rbp), %rax
	.loc	4 355 23                        # mem.c3:355:23
	cmpq	-64(%rbp), %rax
	setbe	%al
	movb	%al, -74(%rbp)                  # 1-byte Spill
.LBB13_9:
	.loc	4 0 23                          # mem.c3:0:23
	movb	-74(%rbp), %cl                  # 1-byte Reload
	.loc	4 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -75(%rbp)                  # 1-byte Spill
	jne	.LBB13_11
# %bb.10:
	.loc	4 355 43                        # mem.c3:355:43
	movq	-64(%rbp), %rax
	.loc	4 355 49                        # mem.c3:355:49
	addq	-72(%rbp), %rax
	.loc	4 355 43                        # mem.c3:355:43
	cmpq	-56(%rbp), %rax
	setbe	%al
	movb	%al, -75(%rbp)                  # 1-byte Spill
.LBB13_11:
	.loc	4 0 43                          # mem.c3:0:43
	movb	-75(%rbp), %al                  # 1-byte Reload
	.loc	4 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB13_13
# %bb.12:
	.loc	4 57 3 is_stmt 1                # mem.c3:57:3
	leaq	.panic_msg.7(%rip), %rdi
	movl	$95, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.5(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$57, (%rsp)
	callq	*(%rax)
.Ltmp101:
.LBB13_13:
	.loc	4 359 11                        # mem.c3:359:11
	movq	-56(%rbp), %rdi
	.loc	4 359 16 is_stmt 0              # mem.c3:359:16
	movq	-64(%rbp), %rsi
	.loc	4 359 21                        # mem.c3:359:21
	movq	-72(%rbp), %rdx
	.loc	4 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
.Ltmp102:
.LBB13_14:
	.loc	1 59 18 is_stmt 1               # dstring.c3:59:18
	movq	-48(%rbp), %rax
	.loc	1 59 18 epilogue_begin is_stmt 0 # dstring.c3:59:18
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp103:
.Lfunc_end13:
	.size	std.core.dstring.new, .Lfunc_end13-std.core.dstring.new
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.dstring.temp,"axG",@progbits,std.core.dstring.temp,comdat
	.weak	std.core.dstring.temp           # -- Begin function std.core.dstring.temp
	.p2align	4, 0x90
	.type	std.core.dstring.temp,@function
std.core.dstring.temp:                  # @std.core.dstring.temp
.Lfunc_begin14:
	.loc	1 62 0 is_stmt 1                # dstring.c3:62:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -80(%rbp)
.Ltmp104:
	.loc	1 62 39 prologue_end            # dstring.c3:62:39
	movq	std.core.mem.allocator.current_temp@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	1 62 45 is_stmt 0               # dstring.c3:62:45
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, -24(%rbp)
.Ltmp105:
	.loc	1 52 12 is_stmt 1               # dstring.c3:52:12
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc	1 53 63                         # dstring.c3:53:63
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	.loc	1 53 34 is_stmt 0               # dstring.c3:53:34
	callq	std.core.dstring.new_with_capacity@PLT
	movq	%rax, -48(%rbp)
	.loc	1 54 6 is_stmt 1                # dstring.c3:54:6
	cmpq	$0, -40(%rbp)
	je	.LBB14_14
# %bb.1:
.Ltmp106:
	.loc	1 56 3                          # dstring.c3:56:3
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.loc	1 57 14                         # dstring.c3:57:14
	movq	-48(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -56(%rbp)
	.loc	1 57 26 is_stmt 0               # dstring.c3:57:26
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
.Ltmp107:
	.loc	4 357 23 is_stmt 1              # mem.c3:357:23
	cmpq	$0, -56(%rbp)
	jne	.LBB14_3
# %bb.2:
	leaq	.panic_msg.3(%rip), %rdi
	movl	$37, %esi
	leaq	.file.4(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.5(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$357, (%rsp)                    # imm = 0x165
	callq	*(%rax)
.LBB14_3:
	.loc	4 354 11                        # mem.c3:354:11
	movb	$1, %al
	cmpq	$0, -64(%rbp)
	movb	%al, -89(%rbp)                  # 1-byte Spill
	jne	.LBB14_5
# %bb.4:
	.loc	4 354 26 is_stmt 0              # mem.c3:354:26
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-72(%rbp), %rax
	sete	%al
	movb	%al, -89(%rbp)                  # 1-byte Spill
.LBB14_5:
	.loc	4 0 26                          # mem.c3:0:26
	movb	-89(%rbp), %al                  # 1-byte Reload
	.loc	4 354 26                        # mem.c3:354:26
	testb	$1, %al
	jne	.LBB14_7
# %bb.6:
	.loc	4 57 3 is_stmt 1                # mem.c3:57:3
	leaq	.panic_msg.6(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.5(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$57, (%rsp)
	callq	*(%rax)
.LBB14_7:
	.loc	4 355 11                        # mem.c3:355:11
	movb	$1, %al
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-72(%rbp), %rcx
	movb	%al, -90(%rbp)                  # 1-byte Spill
	je	.LBB14_9
# %bb.8:
	.loc	4 355 23 is_stmt 0              # mem.c3:355:23
	movq	-56(%rbp), %rax
	.loc	4 355 29                        # mem.c3:355:29
	addq	-72(%rbp), %rax
	.loc	4 355 23                        # mem.c3:355:23
	cmpq	-64(%rbp), %rax
	setbe	%al
	movb	%al, -90(%rbp)                  # 1-byte Spill
.LBB14_9:
	.loc	4 0 23                          # mem.c3:0:23
	movb	-90(%rbp), %cl                  # 1-byte Reload
	.loc	4 355 23                        # mem.c3:355:23
	movb	$1, %al
	testb	$1, %cl
	movb	%al, -91(%rbp)                  # 1-byte Spill
	jne	.LBB14_11
# %bb.10:
	.loc	4 355 43                        # mem.c3:355:43
	movq	-64(%rbp), %rax
	.loc	4 355 49                        # mem.c3:355:49
	addq	-72(%rbp), %rax
	.loc	4 355 43                        # mem.c3:355:43
	cmpq	-56(%rbp), %rax
	setbe	%al
	movb	%al, -91(%rbp)                  # 1-byte Spill
.LBB14_11:
	.loc	4 0 43                          # mem.c3:0:43
	movb	-91(%rbp), %al                  # 1-byte Reload
	.loc	4 355 43                        # mem.c3:355:43
	testb	$1, %al
	jne	.LBB14_13
# %bb.12:
	.loc	4 57 3 is_stmt 1                # mem.c3:57:3
	leaq	.panic_msg.7(%rip), %rdi
	movl	$95, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.5(%rip), %r8
	movl	$3, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$57, (%rsp)
	callq	*(%rax)
.Ltmp108:
.LBB14_13:
	.loc	4 359 11                        # mem.c3:359:11
	movq	-56(%rbp), %rdi
	.loc	4 359 16 is_stmt 0              # mem.c3:359:16
	movq	-64(%rbp), %rsi
	.loc	4 359 21                        # mem.c3:359:21
	movq	-72(%rbp), %rdx
	.loc	4 359 26                        # mem.c3:359:26
	callq	memcpy@PLT
.Ltmp109:
.LBB14_14:
	.loc	1 59 18 is_stmt 1               # dstring.c3:59:18
	movq	-48(%rbp), %rax
.Ltmp110:
	.loc	1 62 35 epilogue_begin          # dstring.c3:62:35
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp111:
.Lfunc_end14:
	.size	std.core.dstring.temp, .Lfunc_end14-std.core.dstring.temp
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.core.dstring.out_string_append_fn
	.type	std.core.dstring.out_string_append_fn,@function
std.core.dstring.out_string_append_fn:  # @std.core.dstring.out_string_append_fn
.Lfunc_begin15:
	.loc	1 592 0                         # dstring.c3:592:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
.Ltmp112:
	.loc	1 594 15 prologue_end           # dstring.c3:594:15
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc	1 595 16                        # dstring.c3:595:16
	movq	-24(%rbp), %rdi
	.loc	1 595 2 is_stmt 0               # dstring.c3:595:2
	movzbl	-9(%rbp), %esi
	callq	std.core.dstring.DString.append_char@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 595 2 epilogue_begin          # dstring.c3:595:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp113:
.Lfunc_end15:
	.size	std.core.dstring.out_string_append_fn, .Lfunc_end15-std.core.dstring.out_string_append_fn
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB16_1
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB16_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB16_3:                               #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB16_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB16_5:                               #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB16_1
.Lfunc_end16:
	.size	.dyn_search, .Lfunc_end16-.dyn_search
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .c3_dynamic_register
	.type	.c3_dynamic_register,@function
.c3_dynamic_register:                   # @.c3_dynamic_register
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:
	movq	($ct.std.core.dstring.DString)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.dstring.DString.len)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB17_3
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jne	.LBB17_1
# %bb.2:
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.dstring.DString.len)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.dstring.DString.len)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB17_3:
	movq	($ct.std.core.dstring.DString)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.dstring.DString.write)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jne	.LBB17_6
.LBB17_4:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jne	.LBB17_4
# %bb.5:
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.dstring.DString.write)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.dstring.DString.write)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB17_6:
	movq	($ct.std.core.dstring.DString)@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	$-1, %rdx
	movq	($ct.dyn.std.core.dstring.DString.write_byte)@GOTPCREL(%rip), %rcx
	cmpq	%rdx, 16(%rcx)
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	jne	.LBB17_9
.LBB17_7:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, %rax
	addq	$16, %rax
	cmpq	$0, %rcx
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	jne	.LBB17_7
# %bb.8:
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	($ct.dyn.std.core.dstring.DString.write_byte)@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	($ct.dyn.std.core.dstring.DString.write_byte)@GOTPCREL(%rip), %rax
	movq	$0, 16(%rax)
.LBB17_9:
	retq
.Lfunc_end17:
	.size	.c3_dynamic_register, .Lfunc_end17-.c3_dynamic_register
	.cfi_endproc
                                        # -- End function
	.type	$ct.std.core.dstring.DString,@object # @"$ct.std.core.dstring.DString"
	.section	".data.$ct.std.core.dstring.DString","awG",@progbits,"$ct.std.core.dstring.DString",comdat
	.weak	$ct.std.core.dstring.DString
	.p2align	3, 0x0
$ct.std.core.dstring.DString:
	.byte	18                              # 0x12
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.p$std.core.dstring.DStringOpaque)
	.quad	0                               # 0x0
	.size	$ct.std.core.dstring.DString, 48

	.type	$ct.p$std.core.dstring.DStringOpaque,@object # @"$ct.p$std.core.dstring.DStringOpaque"
	.section	".data.$ct.p$std.core.dstring.DStringOpaque","awG",@progbits,"$ct.p$std.core.dstring.DStringOpaque",comdat
	.weak	$ct.p$std.core.dstring.DStringOpaque
	.p2align	3, 0x0
$ct.p$std.core.dstring.DStringOpaque:
	.byte	19                              # 0x13
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	8                               # 0x8
	.quad	($ct.std.core.dstring.DStringOpaque)
	.quad	0                               # 0x0
	.size	$ct.p$std.core.dstring.DStringOpaque, 48

	.type	$ct.std.core.dstring.DStringOpaque,@object # @"$ct.std.core.dstring.DStringOpaque"
	.section	".data.$ct.std.core.dstring.DStringOpaque","awG",@progbits,"$ct.std.core.dstring.DStringOpaque",comdat
	.weak	$ct.std.core.dstring.DStringOpaque
	.p2align	3, 0x0
$ct.std.core.dstring.DStringOpaque:
	.byte	18                              # 0x12
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	1                               # 0x1
	.quad	($ct.void)
	.quad	0                               # 0x0
	.size	$ct.std.core.dstring.DStringOpaque, 48

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

	.type	$ct.std.core.dstring.StringData,@object # @"$ct.std.core.dstring.StringData"
	.section	".data.$ct.std.core.dstring.StringData","awG",@progbits,"$ct.std.core.dstring.StringData",comdat
	.weak	$ct.std.core.dstring.StringData
	.p2align	3, 0x0
$ct.std.core.dstring.StringData:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	32                              # 0x20
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.size	$ct.std.core.dstring.StringData, 48

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Dereference of null pointer, 'self' was null."
	.size	.panic_msg, 46

	.type	.file,@object                   # @.file
.file:
	.asciz	"dstring.c3"
	.size	.file, 11

	.type	.func,@object                   # @.func
.func:
	.asciz	"new_with_capacity"
	.size	.func, 18

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
	.asciz	"@require \"!self.data()\" violated: 'String already initialized'."
	.size	.panic_msg.2, 64

	.type	.panic_msg.3,@object            # @.panic_msg.3
.panic_msg.3:
	.asciz	"Passed null to a ref ('&') parameter."
	.size	.panic_msg.3, 38

	.type	.file.4,@object                 # @.file.4
.file.4:
	.asciz	"mem.c3"
	.size	.file.4, 7

	.type	.func.5,@object                 # @.func.5
.func.5:
	.asciz	"new"
	.size	.func.5, 4

	.type	.panic_msg.6,@object            # @.panic_msg.6
.panic_msg.6:
	.asciz	"@require \"src != null || len == 0\" violated: 'Copying a null with non-zero length is invalid'."
	.size	.panic_msg.6, 95

	.type	.panic_msg.7,@object            # @.panic_msg.7
.panic_msg.7:
	.asciz	"@require \"len == 0 || dst + len <= src || src + len <= dst\" violated: 'Ranges may not overlap'."
	.size	.panic_msg.7, 96

	.type	.panic_msg.8,@object            # @.panic_msg.8
.panic_msg.8:
	.asciz	"Reference parameter 'self' was passed a null pointer argument."
	.size	.panic_msg.8, 63

	.type	.func.9,@object                 # @.func.9
.func.9:
	.asciz	"init"
	.size	.func.9, 5

	.type	$sel.acquire,@object            # @"$sel.acquire"
	.section	".rodata.$sel.acquire","aG",@progbits,"$sel.acquire",comdat
	.weak	$sel.acquire
$sel.acquire:
	.asciz	"acquire"
	.size	$sel.acquire, 8

	.type	.panic_msg.10,@object           # @.panic_msg.10
	.section	.rodata,"a",@progbits
.panic_msg.10:
	.asciz	"@require \"!alignment || math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg.10, 66

	.type	.file.11,@object                # @.file.11
.file.11:
	.asciz	"mem_allocator.c3"
	.size	.file.11, 17

	.type	.panic_msg.12,@object           # @.panic_msg.12
.panic_msg.12:
	.asciz	"@require \"alignment <= mem::MAX_MEMORY_ALIGNMENT\" violated: 'alignment too big'."
	.size	.panic_msg.12, 81

	.type	.panic_msg.13,@object           # @.panic_msg.13
.panic_msg.13:
	.asciz	"@require \"size > 0\" violated: 'The size must be 1 or more'."
	.size	.panic_msg.13, 60

	.type	.panic_msg.14,@object           # @.panic_msg.14
.panic_msg.14:
	.asciz	"No method 'acquire' could be found on target"
	.size	.panic_msg.14, 45

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

	.type	.panic_msg.15,@object           # @.panic_msg.15
	.section	.rodata,"a",@progbits
.panic_msg.15:
	.asciz	"Unexpected fault '%s' was unwrapped!"
	.size	.panic_msg.15, 37

	.type	.func.16,@object                # @.func.16
.func.16:
	.asciz	"tinit"
	.size	.func.16, 6

	.type	.func.17,@object                # @.func.17
.func.17:
	.asciz	"len"
	.size	.func.17, 4

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

	.type	.panic_msg.18,@object           # @.panic_msg.18
	.section	.rodata,"a",@progbits
.panic_msg.18:
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.18, 44

	.type	.func.19,@object                # @.func.19
.func.19:
	.asciz	"str_view"
	.size	.func.19, 9

	.type	.func.20,@object                # @.func.20
.func.20:
	.asciz	"append_chars"
	.size	.func.20, 13

	.type	.func.21,@object                # @.func.21
.func.21:
	.asciz	"write"
	.size	.func.21, 6

	.type	.func.22,@object                # @.func.22
.func.22:
	.asciz	"write_byte"
	.size	.func.22, 11

	.type	.func.23,@object                # @.func.23
.func.23:
	.asciz	"append_char"
	.size	.func.23, 12

	.type	.func.24,@object                # @.func.24
.func.24:
	.asciz	"appendf"
	.size	.func.24, 8

	.type	.func.25,@object                # @.func.25
.func.25:
	.asciz	"reserve"
	.size	.func.25, 8

	.type	$sel.release,@object            # @"$sel.release"
	.section	".rodata.$sel.release","aG",@progbits,"$sel.release",comdat
	.weak	$sel.release
$sel.release:
	.asciz	"release"
	.size	$sel.release, 8

	.type	.panic_msg.26,@object           # @.panic_msg.26
	.section	.rodata,"a",@progbits
.panic_msg.26:
	.asciz	"@require \"ptr != null\" violated: 'Empty pointers should never be released'."
	.size	.panic_msg.26, 76

	.type	.panic_msg.27,@object           # @.panic_msg.27
.panic_msg.27:
	.asciz	"No method 'release' could be found on target"
	.size	.panic_msg.27, 45

	.type	$sel.resize,@object             # @"$sel.resize"
	.section	".rodata.$sel.resize","aG",@progbits,"$sel.resize",comdat
	.weak	$sel.resize
$sel.resize:
	.asciz	"resize"
	.size	$sel.resize, 7

	.type	.panic_msg.28,@object           # @.panic_msg.28
	.section	.rodata,"a",@progbits
.panic_msg.28:
	.asciz	"@require \"ptr != null\" violated."
	.size	.panic_msg.28, 33

	.type	.panic_msg.29,@object           # @.panic_msg.29
.panic_msg.29:
	.asciz	"@require \"new_size > 0\" violated."
	.size	.panic_msg.29, 34

	.type	.panic_msg.30,@object           # @.panic_msg.30
.panic_msg.30:
	.asciz	"No method 'resize' could be found on target"
	.size	.panic_msg.30, 44

	.type	$ct.dyn.std.core.dstring.DString.len,@object # @"$ct.dyn.std.core.dstring.DString.len"
	.section	".data.$ct.dyn.std.core.dstring.DString.len","awG",@progbits,"$ct.dyn.std.core.dstring.DString.len",comdat
	.weak	$ct.dyn.std.core.dstring.DString.len
	.p2align	3, 0x0
$ct.dyn.std.core.dstring.DString.len:
	.quad	std.core.dstring.DString.len
	.quad	($sel.len)
	.quad	-1
	.size	$ct.dyn.std.core.dstring.DString.len, 24

	.type	$sel.len,@object                # @"$sel.len"
	.section	".rodata.$sel.len","aG",@progbits,"$sel.len",comdat
	.weak	$sel.len
$sel.len:
	.asciz	"len"
	.size	$sel.len, 4

	.type	$ct.dyn.std.core.dstring.DString.write,@object # @"$ct.dyn.std.core.dstring.DString.write"
	.section	".data.$ct.dyn.std.core.dstring.DString.write","awG",@progbits,"$ct.dyn.std.core.dstring.DString.write",comdat
	.weak	$ct.dyn.std.core.dstring.DString.write
	.p2align	3, 0x0
$ct.dyn.std.core.dstring.DString.write:
	.quad	std.core.dstring.DString.write
	.quad	($sel.write)
	.quad	-1
	.size	$ct.dyn.std.core.dstring.DString.write, 24

	.type	$sel.write,@object              # @"$sel.write"
	.section	".rodata.$sel.write","aG",@progbits,"$sel.write",comdat
	.weak	$sel.write
$sel.write:
	.asciz	"write"
	.size	$sel.write, 6

	.type	$ct.dyn.std.core.dstring.DString.write_byte,@object # @"$ct.dyn.std.core.dstring.DString.write_byte"
	.section	".data.$ct.dyn.std.core.dstring.DString.write_byte","awG",@progbits,"$ct.dyn.std.core.dstring.DString.write_byte",comdat
	.weak	$ct.dyn.std.core.dstring.DString.write_byte
	.p2align	3, 0x0
$ct.dyn.std.core.dstring.DString.write_byte:
	.quad	std.core.dstring.DString.write_byte
	.quad	($sel.write_byte)
	.quad	-1
	.size	$ct.dyn.std.core.dstring.DString.write_byte, 24

	.type	$sel.write_byte,@object         # @"$sel.write_byte"
	.section	".rodata.$sel.write_byte","aG",@progbits,"$sel.write_byte",comdat
	.weak	$sel.write_byte
$sel.write_byte:
	.asciz	"write_byte"
	.size	$sel.write_byte, 11

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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	5                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
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
	.byte	19                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
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
	.byte	26                              # Abbreviation Code
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
	.byte	27                              # Abbreviation Code
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
	.byte	28                              # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
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
	.byte	30                              # Abbreviation Code
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
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
	.byte	34                              # Abbreviation Code
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
	.byte	35                              # Abbreviation Code
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
	.byte	36                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	41                              # Abbreviation Code
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
	.byte	42                              # Abbreviation Code
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
	.byte	43                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x938 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	252                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x36:0xc DW_TAG_subprogram
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x42:0xd DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	4                               # Abbrev [4] 0x4f:0x63 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	178                             # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x62:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	194                             # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x6a:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	205                             # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x72:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	216                             # DW_AT_abstract_origin
	.byte	6                               # Abbrev [6] 0x7a:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\210\177"
	.long	227                             # DW_AT_abstract_origin
	.byte	7                               # Abbrev [7] 0x83:0x2e DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	23                              # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x8f:0x21 DW_TAG_inlined_subroutine
	.long	54                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	254                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x9b:0x14 DW_TAG_inlined_subroutine
	.long	66                              # DW_AT_abstract_origin
	.quad	.Ltmp5                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb2:0x3e DW_TAG_subprogram
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	240                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0xc2:0xb DW_TAG_formal_parameter
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xcd:0xb DW_TAG_formal_parameter
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	284                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd8:0xb DW_TAG_formal_parameter
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0xe3:0xc DW_TAG_variable
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	346                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xf0:0xb DW_TAG_typedef
	.long	251                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xfb:0xd DW_TAG_pointer_type
	.long	264                             # DW_AT_type
	.long	.Linfo_string9                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	14                              # Abbrev [14] 0x108:0x7 DW_TAG_typedef
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x10f:0xd DW_TAG_pointer_type
	.long	240                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	15                              # Abbrev [15] 0x11c:0x1e DW_TAG_structure_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	16                              # Abbrev [16] 0x123:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	314                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x12e:0xb DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	323                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x13a:0x9 DW_TAG_pointer_type
	.long	.Linfo_string15                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	18                              # Abbrev [18] 0x143:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0x14a:0x9 DW_TAG_typedef
	.long	339                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	18                              # Abbrev [18] 0x153:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x15a:0xd DW_TAG_pointer_type
	.long	359                             # DW_AT_type
	.long	.Linfo_string28                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	20                              # Abbrev [20] 0x167:0x43 DW_TAG_structure_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	32                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	664                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	21                              # Abbrev [21] 0x171:0xe DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	284                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	666                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x17f:0xe DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	667                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x18d:0xe DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	668                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x19b:0xe DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	426                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.short	669                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x1aa:0xd DW_TAG_array_type
	.long	439                             # DW_AT_type
	.byte	23                              # Abbrev [23] 0x1af:0x7 DW_TAG_subrange_type
	.long	446                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.byte	0                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x1b7:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	24                              # Abbrev [24] 0x1be:0x7 DW_TAG_base_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	25                              # Abbrev [25] 0x1c5:0x8b DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string42                 # DW_AT_linkage_name
	.long	.Linfo_string43                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	240                             # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x1e2:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270}"
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x1f1:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\260}"
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x200:0x4f DW_TAG_inlined_subroutine
	.long	178                             # DW_AT_abstract_origin
	.quad	.Ltmp16                         # DW_AT_low_pc
	.long	.Ltmp28-.Ltmp16                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	40                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x214:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	194                             # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x21c:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	205                             # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x224:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	216                             # DW_AT_abstract_origin
	.byte	6                               # Abbrev [6] 0x22c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	227                             # DW_AT_abstract_origin
	.byte	7                               # Abbrev [7] 0x235:0x19 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	23                              # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x241:0xc DW_TAG_inlined_subroutine
	.long	54                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	254                             # DW_AT_call_line
	.byte	17                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x250:0x1e DW_TAG_subprogram
	.long	.Linfo_string29                 # DW_AT_linkage_name
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	612                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	346                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_inline
	.byte	30                              # Abbrev [30] 0x261:0xc DW_TAG_formal_parameter
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	612                             # DW_AT_decl_line
	.long	240                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x26e:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string44                 # DW_AT_linkage_name
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	330                             # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x28b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x299:0x1d DW_TAG_inlined_subroutine
	.long	592                             # DW_AT_abstract_origin
	.quad	.Ltmp33                         # DW_AT_low_pc
	.long	.Ltmp34-.Ltmp33                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	152                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x2ad:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	609                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x2b7:0x58 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string45                 # DW_AT_linkage_name
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1875                            # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x2d4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.long	240                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x2e2:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.long	346                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x2f1:0x1d DW_TAG_inlined_subroutine
	.long	592                             # DW_AT_abstract_origin
	.quad	.Ltmp37                         # DW_AT_low_pc
	.long	.Ltmp38-.Ltmp37                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	166                             # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x305:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	609                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x30f:0xd DW_TAG_subprogram
	.long	.Linfo_string30                 # DW_AT_linkage_name
	.long	.Linfo_string30                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x31c:0x8d DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x336:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x345:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string67                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	308                             # DW_AT_decl_line
	.long	1875                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x354:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	310                             # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x364:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310~"
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	318                             # DW_AT_decl_line
	.long	346                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x375:0x1e DW_TAG_inlined_subroutine
	.long	592                             # DW_AT_abstract_origin
	.quad	.Ltmp43                         # DW_AT_low_pc
	.long	.Ltmp44-.Ltmp43                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	318                             # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x38a:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	609                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	36                              # Abbrev [36] 0x393:0x15 DW_TAG_inlined_subroutine
	.long	783                             # DW_AT_abstract_origin
	.quad	.Ltmp45                         # DW_AT_low_pc
	.long	.Ltmp47-.Ltmp45                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	319                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x3a9:0x3d DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string49                 # DW_AT_linkage_name
	.long	.Linfo_string50                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2122                            # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x3c7:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3d6:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	341                             # DW_AT_decl_line
	.long	1884                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x3e6:0x3d DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string53                 # DW_AT_linkage_name
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	347                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2122                            # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x404:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	347                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x413:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	119
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	347                             # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x423:0x68 DW_TAG_subprogram
	.quad	.Lfunc_begin7                   # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string55                 # DW_AT_linkage_name
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	352                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x43d:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	352                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x44c:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	352                             # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x45b:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330~"
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	359                             # DW_AT_decl_line
	.long	346                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x46c:0x1e DW_TAG_inlined_subroutine
	.long	592                             # DW_AT_abstract_origin
	.quad	.Ltmp58                         # DW_AT_low_pc
	.long	.Ltmp59-.Ltmp58                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	359                             # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x481:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	609                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x48b:0x5d DW_TAG_subprogram
	.quad	.Lfunc_begin8                   # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string57                 # DW_AT_linkage_name
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	553                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2122                            # DW_AT_type
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x4a9:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	553                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4b8:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	553                             # DW_AT_decl_line
	.long	1875                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4c7:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	553                             # DW_AT_decl_line
	.long	2138                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x4d6:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\230~"
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	556                             # DW_AT_decl_line
	.long	2211                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4e8:0x1c DW_TAG_subprogram
	.quad	.Lfunc_begin9                   # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	592                             # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x4fb:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	609                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x504:0xc DW_TAG_subprogram
	.long	.Linfo_string31                 # DW_AT_linkage_name
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x510:0xc DW_TAG_subprogram
	.long	.Linfo_string32                 # DW_AT_linkage_name
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x51c:0xc DW_TAG_subprogram
	.long	.Linfo_string33                 # DW_AT_linkage_name
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x528:0xd DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x535:0xd DW_TAG_subprogram
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.long	.Linfo_string5                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	32                              # Abbrev [32] 0x542:0xe0 DW_TAG_subprogram
	.quad	.Lfunc_begin10                  # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string59                 # DW_AT_linkage_name
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	617                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	33                              # Abbrev [33] 0x55c:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	617                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x56b:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string85                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	617                             # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x57a:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	619                             # DW_AT_decl_line
	.long	346                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x58a:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\330~"
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	625                             # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x59b:0x11 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320~"
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	627                             # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	35                              # Abbrev [35] 0x5ac:0x1e DW_TAG_inlined_subroutine
	.long	592                             # DW_AT_abstract_origin
	.quad	.Ltmp68                         # DW_AT_low_pc
	.long	.Ltmp69-.Ltmp68                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	619                             # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x5c1:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	609                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x5ca:0x57 DW_TAG_inlined_subroutine
	.long	1296                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.short	631                             # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	7                               # Abbrev [7] 0x5d7:0x49 DW_TAG_inlined_subroutine
	.long	1284                            # DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	2                               # DW_AT_call_file
	.byte	103                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x5e3:0x14 DW_TAG_inlined_subroutine
	.long	1308                            # DW_AT_abstract_origin
	.quad	.Ltmp75                         # DW_AT_low_pc
	.long	.Ltmp76-.Ltmp75                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	110                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x5f7:0x14 DW_TAG_inlined_subroutine
	.long	1320                            # DW_AT_abstract_origin
	.quad	.Ltmp79                         # DW_AT_low_pc
	.long	.Ltmp80-.Ltmp79                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	38                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	8                               # Abbrev [8] 0x60b:0x14 DW_TAG_inlined_subroutine
	.long	1333                            # DW_AT_abstract_origin
	.quad	.Ltmp83                         # DW_AT_low_pc
	.long	.Ltmp84-.Ltmp83                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	48                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x622:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin11                  # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	1606                            # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x635:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	1622                            # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x63d:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	1633                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x646:0x27 DW_TAG_subprogram
	.long	.Linfo_string34                 # DW_AT_linkage_name
	.long	.Linfo_string35                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	240                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x656:0xb DW_TAG_formal_parameter
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	284                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x661:0xb DW_TAG_formal_parameter
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x66d:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin12                  # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string61                 # DW_AT_linkage_name
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	240                             # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x68a:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\370~"
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x699:0x25 DW_TAG_inlined_subroutine
	.long	1606                            # DW_AT_abstract_origin
	.quad	.Ltmp95                         # DW_AT_low_pc
	.long	.Ltmp96-.Ltmp95                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	48                              # DW_AT_call_line
	.byte	48                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x6ad:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	1622                            # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x6b5:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	1633                            # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x6bf:0xd DW_TAG_subprogram
	.long	.Linfo_string30                 # DW_AT_linkage_name
	.long	.Linfo_string30                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.short	357                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	4                               # Abbrev [4] 0x6cc:0x48 DW_TAG_subprogram
	.quad	.Lfunc_begin13                  # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	1812                            # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x6df:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	1828                            # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x6e7:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	1839                            # DW_AT_abstract_origin
	.byte	6                               # Abbrev [6] 0x6ef:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	1850                            # DW_AT_abstract_origin
	.byte	6                               # Abbrev [6] 0x6f7:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	1862                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x6ff:0x14 DW_TAG_inlined_subroutine
	.long	1727                            # DW_AT_abstract_origin
	.quad	.Ltmp100                        # DW_AT_low_pc
	.long	.Ltmp102-.Ltmp100               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	57                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x714:0x3f DW_TAG_subprogram
	.long	.Linfo_string36                 # DW_AT_linkage_name
	.long	.Linfo_string37                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	240                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x724:0xb DW_TAG_formal_parameter
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	284                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x72f:0xb DW_TAG_formal_parameter
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	1875                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x73a:0xc DW_TAG_variable
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	330                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x746:0xc DW_TAG_variable
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	346                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x753:0x9 DW_TAG_typedef
	.long	1884                            # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	15                              # Abbrev [15] 0x75c:0x1e DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	16                              # Abbrev [16] 0x763:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	1914                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x76e:0xb DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x77a:0xd DW_TAG_pointer_type
	.long	439                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	25                              # Abbrev [25] 0x787:0x76 DW_TAG_subprogram
	.quad	.Lfunc_begin14                  # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string63                 # DW_AT_linkage_name
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	240                             # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x7a4:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\250\177"
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	1875                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7b3:0x49 DW_TAG_inlined_subroutine
	.long	1812                            # DW_AT_abstract_origin
	.quad	.Ltmp105                        # DW_AT_low_pc
	.long	.Ltmp110-.Ltmp105               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	62                              # DW_AT_call_line
	.byte	35                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x7c7:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	1828                            # DW_AT_abstract_origin
	.byte	5                               # Abbrev [5] 0x7cf:0x8 DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	1839                            # DW_AT_abstract_origin
	.byte	6                               # Abbrev [6] 0x7d7:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	1850                            # DW_AT_abstract_origin
	.byte	6                               # Abbrev [6] 0x7df:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	1862                            # DW_AT_abstract_origin
	.byte	8                               # Abbrev [8] 0x7e7:0x14 DW_TAG_inlined_subroutine
	.long	1727                            # DW_AT_abstract_origin
	.quad	.Ltmp107                        # DW_AT_low_pc
	.long	.Ltmp109-.Ltmp107               # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	57                              # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x7fd:0x4d DW_TAG_subprogram
	.quad	.Lfunc_begin15                  # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string65                 # DW_AT_linkage_name
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	592                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	2122                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x81b:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	592                             # DW_AT_decl_line
	.long	314                             # DW_AT_type
	.byte	33                              # Abbrev [33] 0x82a:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	119
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	592                             # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x839:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	594                             # DW_AT_decl_line
	.long	271                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x84a:0x9 DW_TAG_typedef
	.long	2131                            # DW_AT_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	18                              # Abbrev [18] 0x853:0x7 DW_TAG_base_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	15                              # Abbrev [15] 0x85a:0x1e DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	16                              # Abbrev [16] 0x861:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	2168                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x86c:0xb DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	330                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x878:0xd DW_TAG_pointer_type
	.long	2181                            # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	15                              # Abbrev [15] 0x885:0x1e DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	16                              # Abbrev [16] 0x88c:0xb DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	314                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x897:0xb DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	323                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x8a3:0x6b DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	41                              # Abbrev [41] 0x8ac:0xd DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	314                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	41                              # Abbrev [41] 0x8b9:0xd DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	2318                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x8c6:0x9 DW_TAG_member
	.long	2255                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x8cf:0x3e DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	41                              # Abbrev [41] 0x8d8:0xd DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	2363                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	41                              # Abbrev [41] 0x8e5:0xd DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	2363                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	4                               # DW_AT_data_member_location
	.byte	41                              # Abbrev [41] 0x8f2:0xd DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	2363                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	41                              # Abbrev [41] 0x8ff:0xd DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	2122                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x90e:0xb DW_TAG_typedef
	.long	2329                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x919:0xd DW_TAG_pointer_type
	.long	2342                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	43                              # Abbrev [43] 0x926:0x15 DW_TAG_subroutine_type
	.long	2122                            # DW_AT_type
                                        # DW_AT_prototyped
	.byte	44                              # Abbrev [44] 0x92b:0x5 DW_TAG_formal_parameter
	.long	314                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x930:0x5 DW_TAG_formal_parameter
	.long	314                             # DW_AT_type
	.byte	44                              # Abbrev [44] 0x935:0x5 DW_TAG_formal_parameter
	.long	439                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x93b:0x7 DW_TAG_base_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3
	.quad	.Ltmp7
	.quad	.Ltmp8
	.quad	.Ltmp9
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4
	.quad	.Ltmp7
	.quad	.Ltmp8
	.quad	.Ltmp9
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp19
	.quad	.Ltmp21
	.quad	.Ltmp22
	.quad	.Ltmp23
	.quad	.Ltmp24
	.quad	.Ltmp25
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20
	.quad	.Ltmp21
	.quad	.Ltmp22
	.quad	.Ltmp23
	.quad	.Ltmp24
	.quad	.Ltmp25
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp74
	.quad	.Ltmp76
	.quad	.Ltmp77
	.quad	.Ltmp81
	.quad	.Ltmp82
	.quad	.Ltmp85
	.quad	.Ltmp86
	.quad	.Ltmp88
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp74
	.quad	.Ltmp76
	.quad	.Ltmp77
	.quad	.Ltmp81
	.quad	.Ltmp82
	.quad	.Ltmp85
	.quad	.Ltmp86
	.quad	.Ltmp87
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Lfunc_end12
	.quad	.Lfunc_begin13
	.quad	.Lfunc_end13
	.quad	.Lfunc_begin14
	.quad	.Lfunc_end14
	.quad	.Lfunc_begin15
	.quad	.Lfunc_end15
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"dstring.c3"                    # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" # string offset=15
.Linfo_string3:
	.asciz	"alloc_with_padding"            # string offset=85
.Linfo_string4:
	.asciz	"malloc_try"                    # string offset=104
.Linfo_string5:
	.asciz	"is_power_of_2"                 # string offset=115
.Linfo_string6:
	.asciz	"std.core.dstring.DString.init" # string offset=129
.Linfo_string7:
	.asciz	"init"                          # string offset=159
.Linfo_string8:
	.asciz	"DStringOpaque"                 # string offset=164
.Linfo_string9:
	.asciz	"DStringOpaque*"                # string offset=178
.Linfo_string10:
	.asciz	"DString"                       # string offset=193
.Linfo_string11:
	.asciz	"self"                          # string offset=201
.Linfo_string12:
	.asciz	"DString*"                      # string offset=206
.Linfo_string13:
	.asciz	"allocator"                     # string offset=215
.Linfo_string14:
	.asciz	"ptr"                           # string offset=225
.Linfo_string15:
	.asciz	"void*"                         # string offset=229
.Linfo_string16:
	.asciz	"type"                          # string offset=235
.Linfo_string17:
	.asciz	"typeid"                        # string offset=240
.Linfo_string18:
	.asciz	"Allocator"                     # string offset=247
.Linfo_string19:
	.asciz	"capacity"                      # string offset=257
.Linfo_string20:
	.asciz	"ulong"                         # string offset=266
.Linfo_string21:
	.asciz	"usz"                           # string offset=272
.Linfo_string22:
	.asciz	"data"                          # string offset=276
.Linfo_string23:
	.asciz	"len"                           # string offset=281
.Linfo_string24:
	.asciz	"chars"                         # string offset=285
.Linfo_string25:
	.asciz	"char"                          # string offset=291
.Linfo_string26:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=296
.Linfo_string27:
	.asciz	"StringData"                    # string offset=316
.Linfo_string28:
	.asciz	"StringData*"                   # string offset=327
.Linfo_string29:
	.asciz	"std.core.dstring.DString.data" # string offset=339
.Linfo_string30:
	.asciz	"copy"                          # string offset=369
.Linfo_string31:
	.asciz	"realloc_try"                   # string offset=374
.Linfo_string32:
	.asciz	"realloc"                       # string offset=386
.Linfo_string33:
	.asciz	"free"                          # string offset=394
.Linfo_string34:
	.asciz	"std.core.dstring.new_with_capacity" # string offset=399
.Linfo_string35:
	.asciz	"new_with_capacity"             # string offset=434
.Linfo_string36:
	.asciz	"std.core.dstring.new"          # string offset=452
.Linfo_string37:
	.asciz	"new"                           # string offset=473
.Linfo_string38:
	.asciz	"c"                             # string offset=477
.Linfo_string39:
	.asciz	"char*"                         # string offset=479
.Linfo_string40:
	.asciz	"char[]"                        # string offset=485
.Linfo_string41:
	.asciz	"String"                        # string offset=492
.Linfo_string42:
	.asciz	"std.core.dstring.DString.tinit" # string offset=499
.Linfo_string43:
	.asciz	"tinit"                         # string offset=530
.Linfo_string44:
	.asciz	"std.core.dstring.DString.len"  # string offset=536
.Linfo_string45:
	.asciz	"std.core.dstring.DString.str_view" # string offset=565
.Linfo_string46:
	.asciz	"str_view"                      # string offset=599
.Linfo_string47:
	.asciz	"std.core.dstring.DString.append_chars" # string offset=608
.Linfo_string48:
	.asciz	"append_chars"                  # string offset=646
.Linfo_string49:
	.asciz	"std.core.dstring.DString.write" # string offset=659
.Linfo_string50:
	.asciz	"write"                         # string offset=690
.Linfo_string51:
	.asciz	"long"                          # string offset=696
.Linfo_string52:
	.asciz	"fault"                         # string offset=701
.Linfo_string53:
	.asciz	"std.core.dstring.DString.write_byte" # string offset=707
.Linfo_string54:
	.asciz	"write_byte"                    # string offset=743
.Linfo_string55:
	.asciz	"std.core.dstring.DString.append_char" # string offset=754
.Linfo_string56:
	.asciz	"append_char"                   # string offset=791
.Linfo_string57:
	.asciz	"std.core.dstring.DString.appendf" # string offset=803
.Linfo_string58:
	.asciz	"appendf"                       # string offset=836
.Linfo_string59:
	.asciz	"std.core.dstring.DString.reserve" # string offset=844
.Linfo_string60:
	.asciz	"reserve"                       # string offset=877
.Linfo_string61:
	.asciz	"std.core.dstring.temp_with_capacity" # string offset=885
.Linfo_string62:
	.asciz	"temp_with_capacity"            # string offset=921
.Linfo_string63:
	.asciz	"std.core.dstring.temp"         # string offset=940
.Linfo_string64:
	.asciz	"temp"                          # string offset=962
.Linfo_string65:
	.asciz	"std.core.dstring.out_string_append_fn" # string offset=967
.Linfo_string66:
	.asciz	"out_string_append_fn"          # string offset=1005
.Linfo_string67:
	.asciz	"str"                           # string offset=1026
.Linfo_string68:
	.asciz	"other_len"                     # string offset=1030
.Linfo_string69:
	.asciz	"buffer"                        # string offset=1040
.Linfo_string70:
	.asciz	"format"                        # string offset=1047
.Linfo_string71:
	.asciz	"args"                          # string offset=1054
.Linfo_string72:
	.asciz	"any"                           # string offset=1059
.Linfo_string73:
	.asciz	"any*"                          # string offset=1063
.Linfo_string74:
	.asciz	"any[]"                         # string offset=1068
.Linfo_string75:
	.asciz	"formatter"                     # string offset=1074
.Linfo_string76:
	.asciz	"out_fn"                        # string offset=1084
.Linfo_string77:
	.asciz	"OutputFn"                      # string offset=1091
.Linfo_string78:
	.asciz	"flags"                         # string offset=1100
.Linfo_string79:
	.asciz	"uint"                          # string offset=1106
.Linfo_string80:
	.asciz	"width"                         # string offset=1111
.Linfo_string81:
	.asciz	"prec"                          # string offset=1117
.Linfo_string82:
	.asciz	"first_fault"                   # string offset=1122
.Linfo_string83:
	.asciz	"$anon"                         # string offset=1134
.Linfo_string84:
	.asciz	"Formatter"                     # string offset=1140
.Linfo_string85:
	.asciz	"addition"                      # string offset=1150
.Linfo_string86:
	.asciz	"new_capacity"                  # string offset=1159
.Linfo_string87:
	.asciz	"s"                             # string offset=1172
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2371                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"alloc_with_padding"            # External Name
	.long	54                              # DIE offset
	.asciz	"malloc_try"                    # External Name
	.long	178                             # DIE offset
	.asciz	"init"                          # External Name
	.long	453                             # DIE offset
	.asciz	"tinit"                         # External Name
	.long	592                             # DIE offset
	.asciz	"data"                          # External Name
	.long	622                             # DIE offset
	.asciz	"len"                           # External Name
	.long	695                             # DIE offset
	.asciz	"str_view"                      # External Name
	.long	796                             # DIE offset
	.asciz	"append_chars"                  # External Name
	.long	937                             # DIE offset
	.asciz	"write"                         # External Name
	.long	998                             # DIE offset
	.asciz	"write_byte"                    # External Name
	.long	1059                            # DIE offset
	.asciz	"append_char"                   # External Name
	.long	1163                            # DIE offset
	.asciz	"appendf"                       # External Name
	.long	1284                            # DIE offset
	.asciz	"realloc_try"                   # External Name
	.long	1296                            # DIE offset
	.asciz	"realloc"                       # External Name
	.long	1308                            # DIE offset
	.asciz	"free"                          # External Name
	.long	1333                            # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	1346                            # DIE offset
	.asciz	"reserve"                       # External Name
	.long	1606                            # DIE offset
	.asciz	"new_with_capacity"             # External Name
	.long	1645                            # DIE offset
	.asciz	"temp_with_capacity"            # External Name
	.long	1727                            # DIE offset
	.asciz	"copy"                          # External Name
	.long	1812                            # DIE offset
	.asciz	"new"                           # External Name
	.long	1927                            # DIE offset
	.asciz	"temp"                          # External Name
	.long	2045                            # DIE offset
	.asciz	"out_string_append_fn"          # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2371                            # Compilation Unit Length
	.long	240                             # DIE offset
	.asciz	"DString"                       # External Name
	.long	251                             # DIE offset
	.asciz	"DStringOpaque*"                # External Name
	.long	264                             # DIE offset
	.asciz	"DStringOpaque"                 # External Name
	.long	271                             # DIE offset
	.asciz	"DString*"                      # External Name
	.long	284                             # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	314                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	323                             # DIE offset
	.asciz	"typeid"                        # External Name
	.long	330                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	339                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	346                             # DIE offset
	.asciz	"StringData*"                   # External Name
	.long	359                             # DIE offset
	.asciz	"StringData"                    # External Name
	.long	439                             # DIE offset
	.asciz	"char"                          # External Name
	.long	1875                            # DIE offset
	.asciz	"String"                        # External Name
	.long	1884                            # DIE offset
	.asciz	"char[]"                        # External Name
	.long	1914                            # DIE offset
	.asciz	"char*"                         # External Name
	.long	2122                            # DIE offset
	.asciz	"fault"                         # External Name
	.long	2131                            # DIE offset
	.asciz	"long"                          # External Name
	.long	2138                            # DIE offset
	.asciz	"any[]"                         # External Name
	.long	2168                            # DIE offset
	.asciz	"any*"                          # External Name
	.long	2181                            # DIE offset
	.asciz	"any"                           # External Name
	.long	2211                            # DIE offset
	.asciz	"Formatter"                     # External Name
	.long	2329                            # DIE offset
	.asciz	"OutputFn"                      # External Name
	.long	2363                            # DIE offset
	.asciz	"uint"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.io.Formatter.init
	.weak	std.io.Formatter.vprintf
	.weak	std.core.builtin.panic
	.weak	std.core.mem.allocator.current_temp
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

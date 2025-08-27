	.text
	.file	"closure_closure_struct$fn$int$int$$"
	.section	".text.closure_closure_struct$fn$int$int$$.Closure.free","axG",@progbits,"closure_closure_struct$fn$int$int$$.Closure.free",comdat
	.weak	closure_closure_struct$fn$int$int$$.Closure.free # -- Begin function closure_closure_struct$fn$int$int$$.Closure.free
	.p2align	4, 0x90
	.type	closure_closure_struct$fn$int$int$$.Closure.free,@function
closure_closure_struct$fn$int$int$$.Closure.free: # @"closure_closure_struct$fn$int$int$$.Closure.free"
.Lfunc_begin0:
	.file	1 "/home/user/code/c3/closures.c3l" "closure.c3"
	.loc	1 251 0                         # closure.c3:251:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp                      # imm = 0x1B0
	movq	%rdi, -280(%rbp)                # 8-byte Spill
.Ltmp0:
	.loc	1 252 1 prologue_end            # closure.c3:252:1
	movq	$0, -272(%rbp)
	movq	$0, -232(%rbp)
	cmpq	$0, %rdi
	sete	%al
	testb	$1, %al
	jne	.LBB0_28
# %bb.1:
	.loc	1 0 1 is_stmt 0                 # closure.c3:0:1
	movq	-280(%rbp), %rax                # 8-byte Reload
	movq	%rax, -8(%rbp)
.Ltmp1:
	.loc	1 253 17 is_stmt 1              # closure.c3:253:17
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -304(%rbp)                # 8-byte Spill
	.loc	1 253 28 is_stmt 0              # closure.c3:253:28
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	addq	$0, %rcx
	movq	%rcx, -296(%rbp)                # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rcx, %rax
	seta	%al
	subq	$0, %rcx
	movq	%rcx, -288(%rbp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_29
# %bb.2:
	.loc	1 0 28                          # closure.c3:0:28
	movq	-304(%rbp), %rax                # 8-byte Reload
	movq	-296(%rbp), %rcx                # 8-byte Reload
	movq	%rcx, -320(%rbp)                # 8-byte Spill
	movq	%rax, -312(%rbp)                # 8-byte Spill
	.loc	1 253 17                        # closure.c3:253:17
	movq	$0, -56(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 17                          # closure.c3:0:17
	movq	-320(%rbp), %rax                # 8-byte Reload
	.loc	1 253 17                        # closure.c3:253:17
	cmpq	%rax, -56(%rbp)
	jae	.LBB0_17
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 17                          # closure.c3:0:17
	movq	-320(%rbp), %rcx                # 8-byte Reload
.Ltmp2:
	.loc	1 253 17                        # closure.c3:253:17
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_30
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 17                          # closure.c3:0:17
	movq	-312(%rbp), %rax                # 8-byte Reload
	movq	-328(%rbp), %rcx                # 8-byte Reload
	.loc	1 253 17                        # closure.c3:253:17
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -336(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_31
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 17                          # closure.c3:0:17
	movq	-344(%rbp), %rax                # 8-byte Reload
	.loc	1 253 17                        # closure.c3:253:17
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.Ltmp3:
	.loc	1 255 19 is_stmt 1              # closure.c3:255:19
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -208(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)
.Ltmp4:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	2 119 6                         # mem_allocator.c3:119:6
	cmpq	$0, -216(%rbp)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB0_16
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-216(%rbp), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:
	leaq	.panic_msg.4(%rip), %rdi
	movl	$75, %esi
	leaq	.file.5(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
.Ltmp5:
	.loc	1 252 1 is_stmt 1               # closure.c3:252:1
	cmpq	-232(%rbp), %rax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 1 is_stmt 0                 # closure.c3:0:1
	movq	-360(%rbp), %rax                # 8-byte Reload
	.loc	1 252 1                         # closure.c3:252:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-360(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -224(%rbp)
	movq	%rcx, -232(%rbp)
	movq	%rax, -368(%rbp)                # 8-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 1                           # closure.c3:0:1
	movq	-368(%rbp), %rax                # 8-byte Reload
	movq	%rax, -376(%rbp)                # 8-byte Spill
	.loc	1 252 1                         # closure.c3:252:1
	cmpq	$0, %rax
	jne	.LBB0_15
# %bb.14:
	leaq	.panic_msg.6(%rip), %rdi
	movl	$44, %esi
	leaq	.file.5(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 1                           # closure.c3:0:1
	movq	-376(%rbp), %rax                # 8-byte Reload
	movq	-352(%rbp), %rsi                # 8-byte Reload
	.loc	1 252 1                         # closure.c3:252:1
	movq	-208(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
.Ltmp6:
	.loc	1 253 17 is_stmt 1              # closure.c3:253:17
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_3
.Ltmp7:
.LBB0_17:
	.loc	1 257 18                        # closure.c3:257:18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, -248(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)
	.loc	1 257 30 is_stmt 0              # closure.c3:257:30
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -256(%rbp)
.Ltmp8:
	.loc	2 119 6 is_stmt 1               # mem_allocator.c3:119:6
	cmpq	$0, -256(%rbp)
	jne	.LBB0_19
# %bb.18:
	.loc	2 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB0_27
.LBB0_19:
	.loc	2 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-256(%rbp), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	.loc	2 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB0_21
# %bb.20:
	leaq	.panic_msg.4(%rip), %rdi
	movl	$75, %esi
	leaq	.file.5(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB0_21:
	movq	-240(%rbp), %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
.Ltmp9:
	.loc	1 252 1 is_stmt 1               # closure.c3:252:1
	cmpq	-272(%rbp), %rax
	je	.LBB0_23
# %bb.22:
	.loc	1 0 1 is_stmt 0                 # closure.c3:0:1
	movq	-392(%rbp), %rax                # 8-byte Reload
	.loc	1 252 1                         # closure.c3:252:1
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-392(%rbp), %rcx                # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%rax, -400(%rbp)                # 8-byte Spill
	jmp	.LBB0_24
.LBB0_23:
	movq	-264(%rbp), %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
.LBB0_24:
	.loc	1 0 1                           # closure.c3:0:1
	movq	-400(%rbp), %rax                # 8-byte Reload
	movq	%rax, -408(%rbp)                # 8-byte Spill
	.loc	1 252 1                         # closure.c3:252:1
	cmpq	$0, %rax
	jne	.LBB0_26
# %bb.25:
	leaq	.panic_msg.6(%rip), %rdi
	movl	$44, %esi
	leaq	.file.5(%rip), %rdx
	movl	$16, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB0_26:
	.loc	1 0 1                           # closure.c3:0:1
	movq	-408(%rbp), %rax                # 8-byte Reload
	movq	-384(%rbp), %rsi                # 8-byte Reload
	.loc	1 252 1                         # closure.c3:252:1
	movq	-248(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB0_27:
	.loc	1 252 1 epilogue_begin          # closure.c3:252:1
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_28:
	.cfi_def_cfa %rbp, 16
	.loc	1 251 22 is_stmt 1              # closure.c3:251:22
	leaq	.panic_msg(%rip), %rdi
	movl	$62, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$251, (%rsp)
	callq	*(%rax)
.LBB0_29:
	.loc	1 0 22 is_stmt 0                # closure.c3:0:22
	movq	-288(%rbp), %rax                # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	($ct.long)@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$1, -40(%rbp)
.Ltmp10:
	.loc	1 253 17 is_stmt 1              # closure.c3:253:17
	leaq	.panic_msg.1(%rip), %rdi
	movl	$43, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-48(%rbp), %rax
	movl	$253, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_30:
	.loc	1 0 17 is_stmt 0                # closure.c3:0:17
	movq	-328(%rbp), %rcx                # 8-byte Reload
	movq	-320(%rbp), %rax                # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
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
.Ltmp11:
	.loc	1 253 17                        # closure.c3:253:17
	leaq	.panic_msg.2(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-128(%rbp), %rax
	movl	$253, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_31:
	.loc	1 0 17                          # closure.c3:0:17
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
	.loc	1 253 17                        # closure.c3:253:17
	leaq	.panic_msg.3(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$4, %r9d
	leaq	-192(%rbp), %rax
	movl	$253, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp12:
.Lfunc_end0:
	.size	closure_closure_struct$fn$int$int$$.Closure.free, .Lfunc_end0-closure_closure_struct$fn$int$int$$.Closure.free
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB1_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB1_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB1_1
.Lfunc_end1:
	.size	.dyn_search, .Lfunc_end1-.dyn_search
	.cfi_endproc
                                        # -- End function
	.type	$ct.closure_closure_struct$fn$int$int$$.Closure,@object # @"$ct.closure_closure_struct$fn$int$int$$.Closure"
	.section	".data.$ct.closure_closure_struct$fn$int$int$$.Closure","awG",@progbits,"$ct.closure_closure_struct$fn$int$int$$.Closure",comdat
	.weak	$ct.closure_closure_struct$fn$int$int$$.Closure
	.p2align	3, 0x0
$ct.closure_closure_struct$fn$int$int$$.Closure:
	.byte	10                              # 0xa
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	40                              # 0x28
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.size	$ct.closure_closure_struct$fn$int$int$$.Closure, 48

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Reference parameter 'self' was passed a null pointer argument."
	.size	.panic_msg, 63

	.type	.file,@object                   # @.file
.file:
	.asciz	"closure.c3"
	.size	.file, 11

	.type	.func,@object                   # @.func
.func:
	.asciz	"free"
	.size	.func, 5

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
	.asciz	"Negative value (%d) given for slice length."
	.size	.panic_msg.1, 44

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

	.type	.panic_msg.2,@object            # @.panic_msg.2
	.section	.rodata,"a",@progbits
.panic_msg.2:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg.2, 60

	.type	.panic_msg.3,@object            # @.panic_msg.3
.panic_msg.3:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.3, 95

	.type	$sel.release,@object            # @"$sel.release"
	.section	".rodata.$sel.release","aG",@progbits,"$sel.release",comdat
	.weak	$sel.release
$sel.release:
	.asciz	"release"
	.size	$sel.release, 8

	.type	.panic_msg.4,@object            # @.panic_msg.4
	.section	.rodata,"a",@progbits
.panic_msg.4:
	.asciz	"@require \"ptr != null\" violated: 'Empty pointers should never be released'."
	.size	.panic_msg.4, 76

	.type	.file.5,@object                 # @.file.5
.file.5:
	.asciz	"mem_allocator.c3"
	.size	.file.5, 17

	.type	.panic_msg.6,@object            # @.panic_msg.6
.panic_msg.6:
	.asciz	"No method 'release' could be found on target"
	.size	.panic_msg.6, 45

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
	.byte	11                              # DW_FORM_data1
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
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
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
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
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
	.byte	11                              # Abbreviation Code
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
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x173 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	2                               # Abbrev [2] 0x36:0xc DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x42:0x7b DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x5b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	251                             # DW_AT_decl_line
	.long	189                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x69:0x3e DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	6                               # Abbrev [6] 0x6e:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x7d:0x29 DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	6                               # Abbrev [6] 0x82:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	253                             # DW_AT_decl_line
	.long	336                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x91:0x14 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp4                          # DW_AT_low_pc
	.long	.Ltmp5-.Ltmp4                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	255                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa7:0x15 DW_TAG_inlined_subroutine
	.long	54                              # DW_AT_abstract_origin
	.quad	.Ltmp8                          # DW_AT_low_pc
	.long	.Ltmp9-.Ltmp8                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	257                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xbd:0xd DW_TAG_pointer_type
	.long	202                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	10                              # Abbrev [10] 0xca:0x3e DW_TAG_structure_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	243                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	11                              # Abbrev [11] 0xd3:0xd DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	264                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	245                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xe0:0xd DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	306                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	246                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xed:0xd DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	352                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xfa:0xd DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	248                             # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x108:0xb DW_TAG_typedef
	.long	275                             # DW_AT_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x113:0xd DW_TAG_pointer_type
	.long	288                             # DW_AT_type
	.long	.Linfo_string8                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	13                              # Abbrev [13] 0x120:0xb DW_TAG_subroutine_type
	.long	299                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	14                              # Abbrev [14] 0x125:0x5 DW_TAG_formal_parameter
	.long	299                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0x12b:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0x132:0x1e DW_TAG_structure_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	17                              # Abbrev [17] 0x139:0xb DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	336                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x144:0xb DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	345                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x150:0x9 DW_TAG_pointer_type
	.long	.Linfo_string12                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	15                              # Abbrev [15] 0x159:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x160:0xd DW_TAG_pointer_type
	.long	336                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	19                              # Abbrev [19] 0x16d:0x9 DW_TAG_typedef
	.long	374                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	15                              # Abbrev [15] 0x176:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"closure.c3"                    # string offset=4
.Linfo_string2:
	.asciz	"/home/user/code/c3/closures.c3l" # string offset=15
.Linfo_string3:
	.asciz	"free"                          # string offset=47
.Linfo_string4:
	.asciz	"closure_closure_struct$fn$int$int$$.Closure.free" # string offset=52
.Linfo_string5:
	.asciz	"self"                          # string offset=101
.Linfo_string6:
	.asciz	"func"                          # string offset=106
.Linfo_string7:
	.asciz	"int"                           # string offset=111
.Linfo_string8:
	.asciz	"IntFn"                         # string offset=115
.Linfo_string9:
	.asciz	"FnType"                        # string offset=121
.Linfo_string10:
	.asciz	"alloc"                         # string offset=128
.Linfo_string11:
	.asciz	"ptr"                           # string offset=134
.Linfo_string12:
	.asciz	"void*"                         # string offset=138
.Linfo_string13:
	.asciz	"type"                          # string offset=144
.Linfo_string14:
	.asciz	"typeid"                        # string offset=149
.Linfo_string15:
	.asciz	"Allocator"                     # string offset=156
.Linfo_string16:
	.asciz	"data"                          # string offset=166
.Linfo_string17:
	.asciz	"void**"                        # string offset=171
.Linfo_string18:
	.asciz	"copied_count"                  # string offset=178
.Linfo_string19:
	.asciz	"ulong"                         # string offset=191
.Linfo_string20:
	.asciz	"usz"                           # string offset=197
.Linfo_string21:
	.asciz	"Closure"                       # string offset=201
.Linfo_string22:
	.asciz	"Closure*"                      # string offset=209
.Linfo_string23:
	.asciz	".temp"                         # string offset=218
.Linfo_string24:
	.asciz	"dat"                           # string offset=224
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	382                             # Compilation Unit Length
	.long	66                              # DIE offset
	.asciz	"free"                          # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	382                             # Compilation Unit Length
	.long	189                             # DIE offset
	.asciz	"Closure*"                      # External Name
	.long	202                             # DIE offset
	.asciz	"Closure"                       # External Name
	.long	264                             # DIE offset
	.asciz	"FnType"                        # External Name
	.long	275                             # DIE offset
	.asciz	"IntFn"                         # External Name
	.long	299                             # DIE offset
	.asciz	"int"                           # External Name
	.long	306                             # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	336                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	345                             # DIE offset
	.asciz	"typeid"                        # External Name
	.long	352                             # DIE offset
	.asciz	"void**"                        # External Name
	.long	365                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	374                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

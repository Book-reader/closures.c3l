	.text
	.file	"std::core::builtin"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "builtin.c3"
	.section	.text.std.core.builtin.panicf,"axG",@progbits,std.core.builtin.panicf,comdat
	.weak	std.core.builtin.panicf         # -- Begin function std.core.builtin.panicf
	.p2align	4, 0x90
	.type	std.core.builtin.panicf,@function
std.core.builtin.panicf:                # @std.core.builtin.panicf
.Lfunc_begin0:
	.loc	1 215 0                         # builtin.c3:215:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1184, %rsp                     # imm = 0x4A0
	leaq	24(%rbp), %rax
	movq	%rax, -960(%rbp)                # 8-byte Spill
	movl	16(%rbp), %eax
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -536(%rbp)
	movq	%rdx, -560(%rbp)
	movq	%rcx, -552(%rbp)
	movq	%r8, -576(%rbp)
	movq	%r9, -568(%rbp)
.Ltmp0:
	.loc	1 218 7 prologue_end            # builtin.c3:218:7
	testb	$1, std.core.builtin.in_panic.5072(%rip)
	je	.LBB0_28
# %bb.1:
	.loc	1 0 7 is_stmt 0                 # builtin.c3:0:7
	leaq	.L.str(%rip), %rax
	movq	%rax, -592(%rbp)
	movq	$23, -584(%rbp)
.Ltmp1:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/io" "io.c3"
	.loc	2 249 15 is_stmt 1              # io.c3:249:15
	callq	std.io.stderr@PLT
	movq	%rax, -600(%rbp)
	vmovdqu	-592(%rbp), %xmm0
	vmovdqa	%xmm0, -624(%rbp)
.Ltmp2:
	.loc	2 159 24                        # io.c3:159:24
	movq	-600(%rbp), %rax
	movq	%rax, -984(%rbp)                # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-624(%rbp), %rcx
	movq	%rcx, -976(%rbp)                # 8-byte Spill
	movq	-616(%rbp), %rcx
	movq	%rcx, -968(%rbp)                # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB0_4
# %bb.2:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -992(%rbp)                # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.3:
	.loc	2 0 24                          # io.c3:0:24
	movq	-992(%rbp), %rax                # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movl	$159, (%rsp)
	callq	*%rax
.LBB0_4:
	.loc	2 0 24                          # io.c3:0:24
	movq	-968(%rbp), %rcx                # 8-byte Reload
	movq	-976(%rbp), %rdx                # 8-byte Reload
	movq	-984(%rbp), %rsi                # 8-byte Reload
	leaq	-632(%rbp), %rdi
	.loc	2 159 24                        # io.c3:159:24
	callq	std.io.File.write@PLT
	vmovdqu	-544(%rbp), %xmm0
	vmovdqa	%xmm0, -656(%rbp)
.Ltmp3:
	.loc	2 259 16 is_stmt 1              # io.c3:259:16
	callq	std.io.stderr@PLT
	movq	%rax, -664(%rbp)
	vmovdqa	-656(%rbp), %xmm0
	vmovdqa	%xmm0, -688(%rbp)
	movq	-664(%rbp), %rax
	movq	%rax, -712(%rbp)
	vmovdqa	-688(%rbp), %xmm0
	vmovdqa	%xmm0, -736(%rbp)
.Ltmp4:
	.loc	2 159 24                        # io.c3:159:24
	movq	-712(%rbp), %rax
	movq	%rax, -1016(%rbp)               # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-736(%rbp), %rcx
	movq	%rcx, -1008(%rbp)               # 8-byte Spill
	movq	-728(%rbp), %rcx
	movq	%rcx, -1000(%rbp)               # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB0_7
# %bb.5:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1024(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.6:
	.loc	2 0 24                          # io.c3:0:24
	movq	-1024(%rbp), %rax               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movl	$159, (%rsp)
	callq	*%rax
.LBB0_7:
	.loc	2 0 24                          # io.c3:0:24
	movq	-1000(%rbp), %rcx               # 8-byte Reload
	movq	-1008(%rbp), %rdx               # 8-byte Reload
	movq	-1016(%rbp), %rsi               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	-744(%rbp), %rdi
	callq	std.io.File.write@PLT
	movq	%rax, -1032(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_9
# %bb.8:
	.loc	2 0 24                          # io.c3:0:24
	movq	-1032(%rbp), %rax               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	movq	%rax, -704(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	jmp	.LBB0_11
.LBB0_10:
	jmp	.LBB0_26
.LBB0_11:
	movq	-744(%rbp), %rax
	movq	%rax, -696(%rbp)
.Ltmp5:
	.loc	2 216 2 is_stmt 1               # io.c3:216:2
	movq	-664(%rbp), %rax
	movq	%rax, -1040(%rbp)               # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB0_14
# %bb.12:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1048(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.13:
	.loc	2 0 2 is_stmt 0                 # io.c3:0:2
	movq	-1048(%rbp), %rax               # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	leaq	.panic_msg.2(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movl	$216, (%rsp)
	callq	*%rax
.LBB0_14:
	.loc	2 0 2                           # io.c3:0:2
	movq	-1040(%rbp), %rdi               # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movl	$10, %esi
	callq	std.io.File.write_byte@PLT
	movq	%rax, -1056(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_16
# %bb.15:
	.loc	2 0 2                           # io.c3:0:2
	movq	-1056(%rbp), %rax               # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movq	%rax, -752(%rbp)
	jmp	.LBB0_17
.LBB0_16:
	jmp	.LBB0_18
.LBB0_17:
	jmp	.LBB0_26
.LBB0_18:
	.loc	2 221 4 is_stmt 1               # io.c3:221:4
	movq	-664(%rbp), %rax
	movq	%rax, -1064(%rbp)               # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB0_21
# %bb.19:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1072(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.20:
	.loc	2 0 4 is_stmt 0                 # io.c3:0:4
	movq	-1072(%rbp), %rax               # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movl	$221, (%rsp)
	callq	*%rax
.LBB0_21:
	.loc	2 0 4                           # io.c3:0:4
	movq	-1064(%rbp), %rdi               # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	callq	std.io.File.flush@PLT
	movq	%rax, -1080(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_23
# %bb.22:
	.loc	2 0 4                           # io.c3:0:4
	movq	-1080(%rbp), %rax               # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	movq	%rax, -760(%rbp)
	jmp	.LBB0_24
.LBB0_23:
	jmp	.LBB0_25
.LBB0_24:
	jmp	.LBB0_26
.Ltmp6:
.LBB0_25:
.LBB0_26:
	.loc	1 222 10 is_stmt 1              # builtin.c3:222:10
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.27:
	.loc	1 222 10 epilogue_begin is_stmt 0 # builtin.c3:222:10
	addq	$1184, %rsp                     # imm = 0x4A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.LBB0_28:
	.cfi_def_cfa %rbp, 16
	.loc	1 224 14 is_stmt 1              # builtin.c3:224:14
	movb	$1, std.core.builtin.in_panic.5072(%rip)
.Ltmp8:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.loc	3 572 14                        # mem.c3:572:14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -1120(%rbp)              # 16-byte Spill
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
	vmovdqa	%xmm0, -288(%rbp)
	vmovdqa	%xmm0, -304(%rbp)
	vmovdqa	%xmm0, -320(%rbp)
	vmovdqa	%xmm0, -336(%rbp)
	vmovdqa	%xmm0, -352(%rbp)
	vmovdqa	%xmm0, -368(%rbp)
	vmovdqa	%xmm0, -384(%rbp)
	vmovdqa	%xmm0, -400(%rbp)
	vmovdqa	%xmm0, -416(%rbp)
	vmovdqa	%xmm0, -432(%rbp)
	vmovdqa	%xmm0, -448(%rbp)
	vmovdqa	%xmm0, -464(%rbp)
	vmovdqa	%xmm0, -480(%rbp)
	vmovdqa	%xmm0, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	vmovdqa	%xmm0, -528(%rbp)
	.loc	3 573 19                        # mem.c3:573:19
	vmovdqa	%xmm0, -800(%rbp)
	vmovdqa	%xmm0, -816(%rbp)
	movq	$0, -776(%rbp)
	movq	$0, -784(%rbp)
	.loc	3 574 26                        # mem.c3:574:26
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rax
	movq	%fs:(%rax), %rcx
	movq	%fs:8(%rax), %r8
	leaq	-816(%rbp), %rdi
	movq	%rdi, -1104(%rbp)               # 8-byte Spill
	leaq	-528(%rbp), %rsi
	movl	$512, %edx                      # imm = 0x200
	.loc	3 574 2 is_stmt 0               # mem.c3:574:2
	callq	std.core.mem.allocator.OnStackAllocator.init@PLT
	movq	-1104(%rbp), %rax               # 8-byte Reload
.Ltmp9:
	.loc	3 576 8 is_stmt 1               # mem.c3:576:8
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rcx
	movq	%rcx, -824(%rbp)
	movq	%rax, -832(%rbp)
.Ltmp10:
	.loc	1 227 12                        # builtin.c3:227:12
	movq	$0, -840(%rbp)
	.loc	1 228 11                        # builtin.c3:228:11
	movq	-832(%rbp), %rax
	movq	%rax, -1096(%rbp)               # 8-byte Spill
	movq	-824(%rbp), %rax
	movq	%rax, -1088(%rbp)               # 8-byte Spill
	.loc	1 18 12                         # builtin.c3:18:12
	leaq	-840(%rbp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_36
# %bb.29:
	leaq	-840(%rbp), %rax
	andq	$7, %rax
	movq	%rax, -1128(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_38
# %bb.30:
	movq	-840(%rbp), %rdi
	.loc	1 18 11 is_stmt 0               # builtin.c3:18:11
	callq	std.core.dstring.DString.data@PLT
	cmpq	$0, %rax
	je	.LBB0_33
# %bb.31:
	.loc	1 228 4 is_stmt 1               # builtin.c3:228:4
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1136(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.32:
	.loc	1 0 4 is_stmt 0                 # builtin.c3:0:4
	movq	-1136(%rbp), %rax               # 8-byte Reload
	.loc	1 228 4                         # builtin.c3:228:4
	leaq	.panic_msg.6(%rip), %rdi
	movl	$63, %esi
	leaq	.file.7(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movl	$228, (%rsp)
	callq	*%rax
.LBB0_33:
	.loc	1 0 4                           # builtin.c3:0:4
	movq	-1088(%rbp), %rax               # 8-byte Reload
	movq	-1096(%rbp), %rcx               # 8-byte Reload
	movq	%rcx, -928(%rbp)
	movq	%rax, -920(%rbp)
	movq	-928(%rbp), %rsi
	movq	-920(%rbp), %rdx
	.loc	1 228 4                         # builtin.c3:228:4
	leaq	-840(%rbp), %rdi
	movl	$16, %ecx
	callq	std.core.dstring.DString.init@PLT
                                        # kill: def $rcx killed $rax
	movq	-960(%rbp), %rax                # 8-byte Reload
	movq	-544(%rbp), %rdx
	movq	-536(%rbp), %rcx
	movq	(%rax), %r8
	movq	8(%rax), %r9
	.loc	1 229 4 is_stmt 1               # builtin.c3:229:4
	leaq	-936(%rbp), %rdi
	leaq	-840(%rbp), %rsi
	callq	std.core.dstring.DString.appendf@PLT
	.loc	1 230 15                        # builtin.c3:230:15
	movb	$0, std.core.builtin.in_panic.5072(%rip)
	.loc	1 231 4                         # builtin.c3:231:4
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1144(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_39
# %bb.34:
	.loc	1 231 10 is_stmt 0              # builtin.c3:231:10
	movq	-840(%rbp), %rdi
	callq	std.core.dstring.DString.str_view@PLT
	movq	%rax, %rcx
	movq	-1144(%rbp), %rax               # 8-byte Reload
	movq	%rdx, -944(%rbp)
	movq	%rcx, -952(%rbp)
	.loc	1 231 40                        # builtin.c3:231:40
	movq	-952(%rbp), %rdi
	movq	-944(%rbp), %rsi
	movq	-560(%rbp), %rdx
	movq	-552(%rbp), %rcx
	movq	-576(%rbp), %r8
	movq	-568(%rbp), %r9
	movl	16(%rbp), %r11d
	.loc	1 231 4                         # builtin.c3:231:4
	movq	%rsp, %r10
	movl	%r11d, (%r10)
	callq	*%rax
	leaq	-816(%rbp), %rdi
.Ltmp11:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.35:
	.loc	3 575 8 epilogue_begin is_stmt 0 # mem.c3:575:8
	addq	$1184, %rsp                     # imm = 0x4A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.LBB0_36:
	.cfi_def_cfa %rbp, 16
	.loc	1 18 12 is_stmt 1               # builtin.c3:18:12
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1152(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.37:
	.loc	1 0 12 is_stmt 0                # builtin.c3:0:12
	movq	-1152(%rbp), %rax               # 8-byte Reload
	.loc	1 18 12                         # builtin.c3:18:12
	leaq	.panic_msg.3(%rip), %rdi
	movl	$45, %esi
	leaq	.file.4(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movl	$18, (%rsp)
	callq	*%rax
.LBB0_38:
	.loc	1 0 12                          # builtin.c3:0:12
	movq	-1128(%rbp), %rcx               # 8-byte Reload
	movq	$8, -848(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -856(%rbp)
	movq	%rax, -888(%rbp)
	leaq	-848(%rbp), %rcx
	movq	%rcx, -896(%rbp)
	movq	%rax, -872(%rbp)
	leaq	-856(%rbp), %rax
	movq	%rax, -880(%rbp)
	leaq	-896(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	$2, -904(%rbp)
	.loc	1 18 12                         # builtin.c3:18:12
	leaq	.panic_msg.5(%rip), %rdi
	movl	$94, %esi
	leaq	.file.4(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	leaq	-912(%rbp), %rax
	movl	$18, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_39:
	.loc	1 231 4 is_stmt 1               # builtin.c3:231:4
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -1160(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_41
# %bb.40:
	.loc	1 0 4 is_stmt 0                 # builtin.c3:0:4
	movq	-1160(%rbp), %rax               # 8-byte Reload
	.loc	1 231 4                         # builtin.c3:231:4
	leaq	.panic_msg.8(%rip), %rdi
	movl	$48, %esi
	leaq	.file.7(%rip), %rdx
	movl	$10, %ecx
	leaq	.func(%rip), %r8
	movl	$6, %r9d
	movl	$231, (%rsp)
	callq	*%rax
.Ltmp13:
.LBB0_41:
	.loc	1 0 0                           # builtin.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp14:
.Lfunc_end0:
	.size	std.core.builtin.panicf, .Lfunc_end0-std.core.builtin.panicf
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.builtin.print_backtrace,"axG",@progbits,std.core.builtin.print_backtrace,comdat
	.weak	std.core.builtin.print_backtrace # -- Begin function std.core.builtin.print_backtrace
	.p2align	4, 0x90
	.type	std.core.builtin.print_backtrace,@function
std.core.builtin.print_backtrace:       # @std.core.builtin.print_backtrace
.Lfunc_begin1:
	.loc	1 138 0 is_stmt 1               # builtin.c3:138:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$9520, %rsp                     # imm = 0x2530
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -6432(%rbp)
	movq	%rsi, -6424(%rbp)
	movl	%edx, -6436(%rbp)
	leaq	-4368(%rbp), %rdi
	movq	%rdi, -9320(%rbp)               # 8-byte Spill
	xorl	%esi, %esi
	movl	%esi, -9284(%rbp)               # 4-byte Spill
	movl	$4352, %edx                     # imm = 0x1100
	movq	%rdx, -9312(%rbp)               # 8-byte Spill
.Ltmp15:
	.loc	3 572 14 prologue_end           # mem.c3:572:14
	callq	memset@PLT
	movq	-9320(%rbp), %rsi               # 8-byte Reload
	movq	-9312(%rbp), %rdx               # 8-byte Reload
	.loc	3 573 19                        # mem.c3:573:19
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -9280(%rbp)              # 16-byte Spill
	vmovdqa	%xmm0, -6480(%rbp)
	vmovdqa	%xmm0, -6496(%rbp)
	movq	$0, -6456(%rbp)
	movq	$0, -6464(%rbp)
	.loc	3 574 26                        # mem.c3:574:26
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rax
	movq	%rax, -9240(%rbp)               # 8-byte Spill
	movq	%fs:(%rax), %rcx
	movq	%fs:8(%rax), %r8
	leaq	-6496(%rbp), %rdi
	movq	%rdi, -9304(%rbp)               # 8-byte Spill
	.loc	3 574 2 is_stmt 0               # mem.c3:574:2
	callq	std.core.mem.allocator.OnStackAllocator.init@PLT
	movq	-9304(%rbp), %rax               # 8-byte Reload
	movl	-9284(%rbp), %esi               # 4-byte Reload
.Ltmp16:
	.loc	3 576 8 is_stmt 1               # mem.c3:576:8
	movq	($ct.std.core.mem.allocator.OnStackAllocator)@GOTPCREL(%rip), %rcx
	movq	%rcx, -9232(%rbp)               # 8-byte Spill
	movq	%rcx, -6504(%rbp)
	movq	%rax, -6512(%rbp)
	leaq	-8560(%rbp), %rdi
	movq	%rdi, -9296(%rbp)               # 8-byte Spill
	movl	$2048, %edx                     # imm = 0x800
	movq	%rdx, -9248(%rbp)               # 8-byte Spill
.Ltmp17:
	.loc	1 140 13                        # builtin.c3:140:13
	callq	memset@PLT
	movq	-9296(%rbp), %rdi               # 8-byte Reload
	movl	$256, %esi                      # imm = 0x100
	.loc	1 141 23                        # builtin.c3:141:23
	callq	std.os.backtrace.capture_current@PLT
	movl	-9284(%rbp), %esi               # 4-byte Reload
	movq	%rdx, %rcx
	movq	-9248(%rbp), %rdx               # 8-byte Reload
	movq	%rcx, -8584(%rbp)
	movq	%rax, -8592(%rbp)
	vmovdqu	-8592(%rbp), %xmm0
	vmovdqa	%xmm0, -8576(%rbp)
	.loc	1 142 2                         # builtin.c3:142:2
	movl	-6436(%rbp), %eax
	incl	%eax
	movl	%eax, -6436(%rbp)
	leaq	-6416(%rbp), %rdi
	movq	%rdi, -9256(%rbp)               # 8-byte Spill
.Ltmp18:
	.loc	3 572 14                        # mem.c3:572:14
	callq	memset@PLT
	vmovaps	-9280(%rbp), %xmm0              # 16-byte Reload
	movq	-9256(%rbp), %rsi               # 8-byte Reload
	movq	-9248(%rbp), %rdx               # 8-byte Reload
                                        # kill: def $rcx killed $rax
	movq	-9240(%rbp), %rax               # 8-byte Reload
	.loc	3 573 19                        # mem.c3:573:19
	vmovdqa	%xmm0, -8624(%rbp)
	vmovdqa	%xmm0, -8640(%rbp)
	movq	$0, -8600(%rbp)
	movq	$0, -8608(%rbp)
	.loc	3 574 26                        # mem.c3:574:26
	movq	%fs:(%rax), %rcx
	movq	%fs:8(%rax), %r8
	leaq	-8640(%rbp), %rdi
	movq	%rdi, -9224(%rbp)               # 8-byte Spill
	.loc	3 574 2 is_stmt 0               # mem.c3:574:2
	callq	std.core.mem.allocator.OnStackAllocator.init@PLT
	movq	-9232(%rbp), %rcx               # 8-byte Reload
	movq	-9224(%rbp), %rax               # 8-byte Reload
.Ltmp19:
	.loc	3 576 8 is_stmt 1               # mem.c3:576:8
	movq	%rcx, -8648(%rbp)
	movq	%rax, -8656(%rbp)
	movq	-8656(%rbp), %rsi
	movq	-8648(%rbp), %rdx
	movq	-8576(%rbp), %rcx
	movq	-8568(%rbp), %r8
.Ltmp20:
	.loc	1 145 30                        # builtin.c3:145:30
	leaq	-8752(%rbp), %rdi
	callq	std.os.linux.symbolize_backtrace@PLT
	movq	%rax, -9216(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_2
# %bb.1:
	.loc	1 0 30 is_stmt 0                # builtin.c3:0:30
	movq	-9216(%rbp), %rax               # 8-byte Reload
	.loc	1 145 30                        # builtin.c3:145:30
	movq	%rax, -8712(%rbp)
	jmp	.LBB1_3
.LBB1_2:
	vmovdqu	-8752(%rbp), %xmm0
	vmovdqu	-8736(%rbp), %xmm1
	vmovdqa	%xmm1, -8688(%rbp)
	vmovdqa	%xmm0, -8704(%rbp)
	movq	-8720(%rbp), %rax
	movq	%rax, -8672(%rbp)
	movq	$0, -8712(%rbp)
.LBB1_3:
	.loc	1 0 30                          # builtin.c3:0:30
	jmp	.LBB1_4
.LBB1_4:
	.loc	1 146 13 is_stmt 1              # builtin.c3:146:13
	movq	-8712(%rbp), %rax
	movq	%rax, -9328(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_6
# %bb.5:
	.loc	1 0 13 is_stmt 0                # builtin.c3:0:13
	movq	-9328(%rbp), %rax               # 8-byte Reload
	.loc	1 146 13                        # builtin.c3:146:13
	movq	%rax, -8760(%rbp)
	jmp	.LBB1_7
.LBB1_6:
	movq	$0, -8760(%rbp)
.LBB1_7:
	cmpq	$0, -8760(%rbp)
	je	.LBB1_10
.Ltmp21:
# %bb.8:
	.loc	1 0 13                          # builtin.c3:0:13
	leaq	-8640(%rbp), %rdi
.Ltmp22:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	leaq	-6496(%rbp), %rdi
.Ltmp23:
	.loc	3 575 8 is_stmt 0               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.9:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	.loc	3 575 8 epilogue_begin          # mem.c3:575:8
	addq	$9520, %rsp                     # imm = 0x2530
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp24:
.LBB1_10:
	.cfi_def_cfa %rbp, 16
	.loc	1 147 7 is_stmt 1               # builtin.c3:147:7
	leaq	-8704(%rbp), %rdi
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.len@PLT
	.loc	1 147 26 is_stmt 0              # builtin.c3:147:26
	movslq	-6436(%rbp), %rcx
	.loc	1 147 7                         # builtin.c3:147:7
	cmpq	%rax, %rcx
	setge	%cl
	cmpq	$0, %rax
	setge	%al
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB1_11
	jmp	.LBB1_13
.Ltmp25:
.LBB1_11:
	.loc	1 0 7                           # builtin.c3:0:7
	leaq	-8640(%rbp), %rdi
.Ltmp26:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	leaq	-6496(%rbp), %rdi
.Ltmp27:
	.loc	3 575 8 is_stmt 0               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.12:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	.loc	3 575 8 epilogue_begin          # mem.c3:575:8
	addq	$9520, %rsp                     # imm = 0x2530
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp28:
.LBB1_13:
	.cfi_def_cfa %rbp, 16
	.loc	3 0 8                           # mem.c3:0:8
	leaq	.L.str.9(%rip), %rax
	movq	%rax, -8776(%rbp)
	movq	$9, -8768(%rbp)
.Ltmp29:
	.loc	2 249 15 is_stmt 1              # io.c3:249:15
	callq	std.io.stderr@PLT
	movq	%rax, -8784(%rbp)
	vmovdqu	-8776(%rbp), %xmm0
	vmovdqa	%xmm0, -8800(%rbp)
.Ltmp30:
	.loc	2 159 24                        # io.c3:159:24
	movq	-8784(%rbp), %rax
	movq	%rax, -9352(%rbp)               # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-8800(%rbp), %rcx
	movq	%rcx, -9344(%rbp)               # 8-byte Spill
	movq	-8792(%rbp), %rcx
	movq	%rcx, -9336(%rbp)               # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB1_16
# %bb.14:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -9360(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.15:
	.loc	2 0 24                          # io.c3:0:24
	movq	-9360(%rbp), %rax               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.10(%rip), %r8
	movl	$15, %r9d
	movl	$159, (%rsp)
	callq	*%rax
.LBB1_16:
	.loc	2 0 24                          # io.c3:0:24
	movq	-9336(%rbp), %rcx               # 8-byte Reload
	movq	-9344(%rbp), %rdx               # 8-byte Reload
	movq	-9352(%rbp), %rsi               # 8-byte Reload
	leaq	-8808(%rbp), %rdi
	.loc	2 159 24                        # io.c3:159:24
	callq	std.io.File.write@PLT
	vmovdqu	-6432(%rbp), %xmm0
	vmovdqa	%xmm0, -8832(%rbp)
.Ltmp31:
	.loc	2 249 15 is_stmt 1              # io.c3:249:15
	callq	std.io.stderr@PLT
	movq	%rax, -8840(%rbp)
	vmovdqa	-8832(%rbp), %xmm0
	vmovdqa	%xmm0, -8864(%rbp)
.Ltmp32:
	.loc	2 159 24                        # io.c3:159:24
	movq	-8840(%rbp), %rax
	movq	%rax, -9384(%rbp)               # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-8864(%rbp), %rcx
	movq	%rcx, -9376(%rbp)               # 8-byte Spill
	movq	-8856(%rbp), %rcx
	movq	%rcx, -9368(%rbp)               # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB1_19
# %bb.17:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -9392(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.18:
	.loc	2 0 24                          # io.c3:0:24
	movq	-9392(%rbp), %rax               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.10(%rip), %r8
	movl	$15, %r9d
	movl	$159, (%rsp)
	callq	*%rax
.LBB1_19:
	.loc	2 0 24                          # io.c3:0:24
	movq	-9368(%rbp), %rcx               # 8-byte Reload
	movq	-9376(%rbp), %rdx               # 8-byte Reload
	movq	-9384(%rbp), %rsi               # 8-byte Reload
	leaq	-8872(%rbp), %rdi
	.loc	2 159 24                        # io.c3:159:24
	callq	std.io.File.write@PLT
	leaq	.L.str.11(%rip), %rax
	movq	%rax, -8888(%rbp)
	movq	$1, -8880(%rbp)
.Ltmp33:
	.loc	2 259 16 is_stmt 1              # io.c3:259:16
	callq	std.io.stderr@PLT
	movq	%rax, -8896(%rbp)
	vmovdqu	-8888(%rbp), %xmm0
	vmovdqa	%xmm0, -8912(%rbp)
	movq	-8896(%rbp), %rax
	movq	%rax, -8936(%rbp)
	vmovdqa	-8912(%rbp), %xmm0
	vmovdqa	%xmm0, -8960(%rbp)
.Ltmp34:
	.loc	2 159 24                        # io.c3:159:24
	movq	-8936(%rbp), %rax
	movq	%rax, -9416(%rbp)               # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-8960(%rbp), %rcx
	movq	%rcx, -9408(%rbp)               # 8-byte Spill
	movq	-8952(%rbp), %rcx
	movq	%rcx, -9400(%rbp)               # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB1_22
# %bb.20:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -9424(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.21:
	.loc	2 0 24                          # io.c3:0:24
	movq	-9424(%rbp), %rax               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.10(%rip), %r8
	movl	$15, %r9d
	movl	$159, (%rsp)
	callq	*%rax
.LBB1_22:
	.loc	2 0 24                          # io.c3:0:24
	movq	-9400(%rbp), %rcx               # 8-byte Reload
	movq	-9408(%rbp), %rdx               # 8-byte Reload
	movq	-9416(%rbp), %rsi               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	-8968(%rbp), %rdi
	callq	std.io.File.write@PLT
	movq	%rax, -9432(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_24
# %bb.23:
	.loc	2 0 24                          # io.c3:0:24
	movq	-9432(%rbp), %rax               # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	movq	%rax, -8928(%rbp)
	jmp	.LBB1_25
.LBB1_24:
	jmp	.LBB1_26
.LBB1_25:
	jmp	.LBB1_41
.LBB1_26:
	movq	-8968(%rbp), %rax
	movq	%rax, -8920(%rbp)
.Ltmp35:
	.loc	2 216 2 is_stmt 1               # io.c3:216:2
	movq	-8896(%rbp), %rax
	movq	%rax, -9440(%rbp)               # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB1_29
# %bb.27:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -9448(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.28:
	.loc	2 0 2 is_stmt 0                 # io.c3:0:2
	movq	-9448(%rbp), %rax               # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	leaq	.panic_msg.2(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.10(%rip), %r8
	movl	$15, %r9d
	movl	$216, (%rsp)
	callq	*%rax
.LBB1_29:
	.loc	2 0 2                           # io.c3:0:2
	movq	-9440(%rbp), %rdi               # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movl	$10, %esi
	callq	std.io.File.write_byte@PLT
	movq	%rax, -9456(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_31
# %bb.30:
	.loc	2 0 2                           # io.c3:0:2
	movq	-9456(%rbp), %rax               # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movq	%rax, -8976(%rbp)
	jmp	.LBB1_32
.LBB1_31:
	jmp	.LBB1_33
.LBB1_32:
	jmp	.LBB1_41
.LBB1_33:
	.loc	2 221 4 is_stmt 1               # io.c3:221:4
	movq	-8896(%rbp), %rax
	movq	%rax, -9464(%rbp)               # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB1_36
# %bb.34:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -9472(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.35:
	.loc	2 0 4 is_stmt 0                 # io.c3:0:4
	movq	-9472(%rbp), %rax               # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.10(%rip), %r8
	movl	$15, %r9d
	movl	$221, (%rsp)
	callq	*%rax
.LBB1_36:
	.loc	2 0 4                           # io.c3:0:4
	movq	-9464(%rbp), %rdi               # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	callq	std.io.File.flush@PLT
	movq	%rax, -9480(%rbp)               # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_38
# %bb.37:
	.loc	2 0 4                           # io.c3:0:4
	movq	-9480(%rbp), %rax               # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	movq	%rax, -8984(%rbp)
	jmp	.LBB1_39
.LBB1_38:
	jmp	.LBB1_40
.LBB1_39:
	jmp	.LBB1_41
.Ltmp36:
.LBB1_40:
.LBB1_41:
	.loc	1 151 24 is_stmt 1              # builtin.c3:151:24
	leaq	-8704(%rbp), %rdi
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.len@PLT
	movq	%rax, -9488(%rbp)               # 8-byte Spill
	.loc	1 151 12 is_stmt 0              # builtin.c3:151:12
	movq	$0, -8992(%rbp)
.LBB1_42:                               # =>This Inner Loop Header: Depth=1
	.loc	1 0 12                          # builtin.c3:0:12
	movq	-9488(%rbp), %rax               # 8-byte Reload
	.loc	1 151 12                        # builtin.c3:151:12
	cmpq	%rax, -8992(%rbp)
	jae	.LBB1_54
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=1
.Ltmp37:
	.loc	1 151 12                        # builtin.c3:151:12
	movq	-8992(%rbp), %rax
	movq	%rax, -9000(%rbp)
	movq	-8992(%rbp), %rax
	movq	%rax, -9496(%rbp)               # 8-byte Spill
	.loc	1 151 16                        # builtin.c3:151:16
	cmpq	-8704(%rbp), %rax
	jb	.LBB1_46
# %bb.44:
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -9504(%rbp)               # 8-byte Spill
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.45:
	.loc	1 0 16                          # builtin.c3:0:16
	movq	-9504(%rbp), %rax               # 8-byte Reload
	.loc	1 151 16                        # builtin.c3:151:16
	leaq	.panic_msg.12(%rip), %rdi
	movl	$62, %esi
	leaq	.file.7(%rip), %rdx
	movl	$10, %ecx
	leaq	.func.10(%rip), %r8
	movl	$15, %r9d
	movl	$151, (%rsp)
	callq	*%rax
.LBB1_46:                               #   in Loop: Header=BB1_42 Depth=1
	.loc	1 0 16                          # builtin.c3:0:16
	movq	-9496(%rbp), %rsi               # 8-byte Reload
	.loc	1 151 16                        # builtin.c3:151:16
	leaq	-8704(%rbp), %rdi
	callq	std_collections_list$std.os.backtrace.Backtrace$.List.get_ref@PLT
	movq	%rax, -9008(%rbp)
.Ltmp38:
	.loc	1 153 8 is_stmt 1               # builtin.c3:153:8
	movq	-9000(%rbp), %rax
	.loc	1 153 12 is_stmt 0              # builtin.c3:153:12
	movslq	-6436(%rbp), %rcx
	.loc	1 153 8                         # builtin.c3:153:8
	cmpq	%rax, %rcx
	setg	%cl
	cmpq	$0, %rax
	setge	%al
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB1_47
	jmp	.LBB1_48
.LBB1_47:                               #   in Loop: Header=BB1_42 Depth=1
	.loc	1 153 34                        # builtin.c3:153:34
	jmp	.LBB1_53
.LBB1_48:                               #   in Loop: Header=BB1_42 Depth=1
	.loc	1 154 27 is_stmt 1              # builtin.c3:154:27
	movq	-9008(%rbp), %rax
	.loc	1 154 59 is_stmt 0              # builtin.c3:154:59
	movzbl	80(%rax), %eax
                                        # kill: def $rax killed $eax
	.loc	1 154 27                        # builtin.c3:154:27
	movb	%al, %sil
	.loc	1 154 59                        # builtin.c3:154:59
	leaq	.L.str.13(%rip), %rdx
	leaq	.emptystr(%rip), %rcx
	testb	$1, %sil
	cmovneq	%rdx, %rcx
                                        # kill: def $eax killed $eax killed $rax
	andl	$1, %eax
                                        # kill: def $rax killed $eax
	leaq	(%rax,%rax,8), %rax
	movq	%rcx, -9024(%rbp)
	movq	%rax, -9016(%rbp)
	.loc	1 155 8 is_stmt 1               # builtin.c3:155:8
	movq	-9008(%rbp), %rdi
	callq	std.os.backtrace.Backtrace.is_unknown@PLT
	testb	$1, %al
	je	.LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_42 Depth=1
.Ltmp39:
	.loc	1 157 32                        # builtin.c3:157:32
	movq	($ct.String)@GOTPCREL(%rip), %rax
	movq	%rax, -9032(%rbp)
	leaq	-9024(%rbp), %rax
	movq	%rax, -9040(%rbp)
	.loc	1 157 5 is_stmt 0               # builtin.c3:157:5
	leaq	-9048(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$10, %edx
	leaq	-9040(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.eprintfn@PLT
	.loc	1 158 5 is_stmt 1               # builtin.c3:158:5
	jmp	.LBB1_53
.Ltmp40:
.LBB1_50:                               #   in Loop: Header=BB1_42 Depth=1
	.loc	1 160 8                         # builtin.c3:160:8
	movq	-9008(%rbp), %rdi
	callq	std.os.backtrace.Backtrace.has_file@PLT
	testb	$1, %al
	je	.LBB1_52
# %bb.51:                               #   in Loop: Header=BB1_42 Depth=1
.Ltmp41:
	.loc	1 162 44                        # builtin.c3:162:44
	movq	-9008(%rbp), %rcx
	addq	$8, %rcx
	movq	($ct.String)@GOTPCREL(%rip), %rax
	movq	%rax, -9128(%rbp)
	movq	%rcx, -9136(%rbp)
	.loc	1 162 60 is_stmt 0              # builtin.c3:162:60
	movq	-9008(%rbp), %rcx
	addq	$40, %rcx
	movq	%rax, -9112(%rbp)
	movq	%rcx, -9120(%rbp)
	.loc	1 162 72                        # builtin.c3:162:72
	movq	-9008(%rbp), %rcx
	addq	$56, %rcx
	movq	($ct.uint)@GOTPCREL(%rip), %rdx
	movq	%rdx, -9096(%rbp)
	movq	%rcx, -9104(%rbp)
	.loc	1 162 84                        # builtin.c3:162:84
	movq	-9008(%rbp), %rcx
	addq	$24, %rcx
	movq	%rax, -9080(%rbp)
	movq	%rcx, -9088(%rbp)
	.loc	1 162 103                       # builtin.c3:162:103
	movq	%rax, -9064(%rbp)
	leaq	-9024(%rbp), %rax
	movq	%rax, -9072(%rbp)
	.loc	1 162 5                         # builtin.c3:162:5
	leaq	-9144(%rbp), %rdi
	leaq	.L.str.15(%rip), %rsi
	movl	$22, %edx
	leaq	-9136(%rbp), %rcx
	movl	$5, %r8d
	callq	std.io.eprintfn@PLT
	.loc	1 163 5 is_stmt 1               # builtin.c3:163:5
	jmp	.LBB1_53
.Ltmp42:
.LBB1_52:                               #   in Loop: Header=BB1_42 Depth=1
	.loc	1 165 56                        # builtin.c3:165:56
	movq	-9008(%rbp), %rcx
	addq	$8, %rcx
	movq	($ct.String)@GOTPCREL(%rip), %rax
	movq	%rax, -9192(%rbp)
	movq	%rcx, -9200(%rbp)
	.loc	1 165 72 is_stmt 0              # builtin.c3:165:72
	movq	-9008(%rbp), %rcx
	addq	$24, %rcx
	movq	%rax, -9176(%rbp)
	movq	%rcx, -9184(%rbp)
	.loc	1 165 91                        # builtin.c3:165:91
	movq	%rax, -9160(%rbp)
	leaq	-9024(%rbp), %rax
	movq	%rax, -9168(%rbp)
	.loc	1 165 4                         # builtin.c3:165:4
	leaq	-9208(%rbp), %rdi
	leaq	.L.str.16(%rip), %rsi
	movl	$35, %edx
	leaq	-9200(%rbp), %rcx
	movl	$3, %r8d
	callq	std.io.eprintfn@PLT
.Ltmp43:
.LBB1_53:                               #   in Loop: Header=BB1_42 Depth=1
	.loc	1 151 12 is_stmt 1              # builtin.c3:151:12
	movq	-8992(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8992(%rbp)
	jmp	.LBB1_42
.Ltmp44:
.LBB1_54:
	.loc	1 0 12 is_stmt 0                # builtin.c3:0:12
	leaq	-8640(%rbp), %rdi
.Ltmp45:
	.loc	3 575 8 is_stmt 1               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	leaq	-6496(%rbp), %rdi
.Ltmp46:
	.loc	3 575 8 is_stmt 0               # mem.c3:575:8
	callq	std.core.mem.allocator.OnStackAllocator.free@PLT
	movq	%fs:40, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_56
# %bb.55:
	movb	$1, %al
	.loc	3 575 8 epilogue_begin          # mem.c3:575:8
	addq	$9520, %rsp                     # imm = 0x2530
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp47:
.LBB1_56:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 0                           # builtin.c3:0:0
	callq	__stack_chk_fail@PLT
.Ltmp48:
.Lfunc_end1:
	.size	std.core.builtin.print_backtrace, .Lfunc_end1-std.core.builtin.print_backtrace
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.builtin.default_panic,"axG",@progbits,std.core.builtin.default_panic,comdat
	.weak	std.core.builtin.default_panic  # -- Begin function std.core.builtin.default_panic
	.p2align	4, 0x90
	.type	std.core.builtin.default_panic,@function
std.core.builtin.default_panic:         # @std.core.builtin.default_panic
.Lfunc_begin2:
	.loc	1 172 0 is_stmt 1               # builtin.c3:172:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
.Ltmp49:
	.loc	1 175 33 prologue_end           # builtin.c3:175:33
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	.loc	1 175 8 is_stmt 0               # builtin.c3:175:8
	movl	$2, %edx
	callq	std.core.builtin.print_backtrace@PLT
	testb	$1, %al
	jne	.LBB2_2
# %bb.1:
.Ltmp50:
	.loc	1 177 49 is_stmt 1              # builtin.c3:177:49
	movq	($ct.String)@GOTPCREL(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	.loc	1 177 58 is_stmt 0              # builtin.c3:177:58
	movq	%rax, -88(%rbp)
	leaq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	.loc	1 177 68                        # builtin.c3:177:68
	movq	%rax, -72(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	.loc	1 177 74                        # builtin.c3:177:74
	movq	($ct.uint)@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -64(%rbp)
	.loc	1 177 4                         # builtin.c3:177:4
	leaq	-120(%rbp), %rdi
	leaq	.L.str.17(%rip), %rsi
	movl	$27, %edx
	leaq	-112(%rbp), %rcx
	movl	$4, %r8d
	callq	std.io.eprintfn@PLT
.Ltmp51:
.LBB2_2:
	.loc	1 180 2 is_stmt 1               # builtin.c3:180:2
	ud2
	.loc	1 180 2 epilogue_begin is_stmt 0 # builtin.c3:180:2
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp52:
.Lfunc_end2:
	.size	std.core.builtin.default_panic, .Lfunc_end2-std.core.builtin.default_panic
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.builtin.sig_bus_error,"axG",@progbits,std.core.builtin.sig_bus_error,comdat
	.weak	std.core.builtin.sig_bus_error  # -- Begin function std.core.builtin.sig_bus_error
	.p2align	4, 0x90
	.type	std.core.builtin.sig_bus_error,@function
std.core.builtin.sig_bus_error:         # @std.core.builtin.sig_bus_error
.Lfunc_begin3:
	.loc	1 933 0 is_stmt 1               # builtin.c3:933:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	%edi, -4(%rbp)
.Ltmp53:
	.loc	1 939 9 prologue_end            # builtin.c3:939:9
	leaq	.L.str.18(%rip), %rdi
	movl	$22, %esi
	movl	$1, %edx
	callq	std.core.builtin.print_backtrace@PLT
	testb	$1, %al
	jne	.LBB3_21
# %bb.1:
	.loc	1 0 9 is_stmt 0                 # builtin.c3:0:9
	leaq	.L.str.19(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$32, -16(%rbp)
.Ltmp54:
	.loc	2 259 16 is_stmt 1              # io.c3:259:16
	callq	std.io.stderr@PLT
	movq	%rax, -32(%rbp)
	vmovdqu	-24(%rbp), %xmm0
	vmovdqa	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	vmovdqa	-48(%rbp), %xmm0
	vmovdqa	%xmm0, -96(%rbp)
.Ltmp55:
	.loc	2 159 24                        # io.c3:159:24
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-96(%rbp), %rcx
	movq	%rcx, -136(%rbp)                # 8-byte Spill
	movq	-88(%rbp), %rcx
	movq	%rcx, -128(%rbp)                # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB3_3
# %bb.2:
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.20(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$159, (%rsp)
	callq	*(%rax)
.LBB3_3:
	.loc	2 0 24                          # io.c3:0:24
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	-104(%rbp), %rdi
	callq	std.io.File.write@PLT
	movq	%rax, -152(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_5
# %bb.4:
	.loc	2 0 24                          # io.c3:0:24
	movq	-152(%rbp), %rax                # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	movq	%rax, -64(%rbp)
	jmp	.LBB3_6
.LBB3_5:
	jmp	.LBB3_7
.LBB3_6:
	jmp	.LBB3_20
.LBB3_7:
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
.Ltmp56:
	.loc	2 216 2 is_stmt 1               # io.c3:216:2
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB3_9
# %bb.8:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.20(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$216, (%rsp)
	callq	*(%rax)
.LBB3_9:
	.loc	2 0 2 is_stmt 0                 # io.c3:0:2
	movq	-160(%rbp), %rdi                # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movl	$10, %esi
	callq	std.io.File.write_byte@PLT
	movq	%rax, -168(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_11
# %bb.10:
	.loc	2 0 2                           # io.c3:0:2
	movq	-168(%rbp), %rax                # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movq	%rax, -112(%rbp)
	jmp	.LBB3_12
.LBB3_11:
	jmp	.LBB3_13
.LBB3_12:
	jmp	.LBB3_20
.LBB3_13:
	.loc	2 221 4 is_stmt 1               # io.c3:221:4
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB3_15
# %bb.14:
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.20(%rip), %r8
	movl	$13, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$221, (%rsp)
	callq	*(%rax)
.LBB3_15:
	.loc	2 0 4 is_stmt 0                 # io.c3:0:4
	movq	-176(%rbp), %rdi                # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	callq	std.io.File.flush@PLT
	movq	%rax, -184(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_17
# %bb.16:
	.loc	2 0 4                           # io.c3:0:4
	movq	-184(%rbp), %rax                # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	movq	%rax, -120(%rbp)
	jmp	.LBB3_18
.LBB3_17:
	jmp	.LBB3_19
.LBB3_18:
	jmp	.LBB3_20
.Ltmp57:
.LBB3_19:
.LBB3_20:
	.loc	2 259 2 is_stmt 1               # io.c3:259:2
	jmp	.LBB3_21
.Ltmp58:
.LBB3_21:
	.loc	1 945 2                         # builtin.c3:945:2
	ud2
	.loc	1 945 2 epilogue_begin is_stmt 0 # builtin.c3:945:2
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp59:
.Lfunc_end3:
	.size	std.core.builtin.sig_bus_error, .Lfunc_end3-std.core.builtin.sig_bus_error
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.builtin.sig_segmentation_fault,"axG",@progbits,std.core.builtin.sig_segmentation_fault,comdat
	.weak	std.core.builtin.sig_segmentation_fault # -- Begin function std.core.builtin.sig_segmentation_fault
	.p2align	4, 0x90
	.type	std.core.builtin.sig_segmentation_fault,@function
std.core.builtin.sig_segmentation_fault: # @std.core.builtin.sig_segmentation_fault
.Lfunc_begin4:
	.loc	1 948 0 is_stmt 1               # builtin.c3:948:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	%edi, -4(%rbp)
.Ltmp60:
	.loc	1 954 9 prologue_end            # builtin.c3:954:9
	leaq	.L.str.21(%rip), %rdi
	movl	$28, %esi
	movl	$1, %edx
	callq	std.core.builtin.print_backtrace@PLT
	testb	$1, %al
	jne	.LBB4_21
# %bb.1:
	.loc	1 0 9 is_stmt 0                 # builtin.c3:0:9
	leaq	.L.str.22(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$64, -16(%rbp)
.Ltmp61:
	.loc	2 259 16 is_stmt 1              # io.c3:259:16
	callq	std.io.stderr@PLT
	movq	%rax, -32(%rbp)
	vmovdqu	-24(%rbp), %xmm0
	vmovdqa	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	vmovdqa	-48(%rbp), %xmm0
	vmovdqa	%xmm0, -96(%rbp)
.Ltmp62:
	.loc	2 159 24                        # io.c3:159:24
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	.loc	2 159 34 is_stmt 0              # io.c3:159:34
	movq	-96(%rbp), %rcx
	movq	%rcx, -136(%rbp)                # 8-byte Spill
	movq	-88(%rbp), %rcx
	movq	%rcx, -128(%rbp)                # 8-byte Spill
	.loc	2 159 24                        # io.c3:159:24
	cmpq	$0, (%rax)
	jne	.LBB4_3
# %bb.2:
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.23(%rip), %r8
	movl	$22, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$159, (%rsp)
	callq	*(%rax)
.LBB4_3:
	.loc	2 0 24                          # io.c3:0:24
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movq	-136(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rsi                # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	leaq	-104(%rbp), %rdi
	callq	std.io.File.write@PLT
	movq	%rax, -152(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_5
# %bb.4:
	.loc	2 0 24                          # io.c3:0:24
	movq	-152(%rbp), %rax                # 8-byte Reload
	.loc	2 159 24                        # io.c3:159:24
	movq	%rax, -64(%rbp)
	jmp	.LBB4_6
.LBB4_5:
	jmp	.LBB4_7
.LBB4_6:
	jmp	.LBB4_20
.LBB4_7:
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
.Ltmp63:
	.loc	2 216 2 is_stmt 1               # io.c3:216:2
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB4_9
# %bb.8:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$38, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.23(%rip), %r8
	movl	$22, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$216, (%rsp)
	callq	*(%rax)
.LBB4_9:
	.loc	2 0 2 is_stmt 0                 # io.c3:0:2
	movq	-160(%rbp), %rdi                # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movl	$10, %esi
	callq	std.io.File.write_byte@PLT
	movq	%rax, -168(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_11
# %bb.10:
	.loc	2 0 2                           # io.c3:0:2
	movq	-168(%rbp), %rax                # 8-byte Reload
	.loc	2 216 2                         # io.c3:216:2
	movq	%rax, -112(%rbp)
	jmp	.LBB4_12
.LBB4_11:
	jmp	.LBB4_13
.LBB4_12:
	jmp	.LBB4_20
.LBB4_13:
	.loc	2 221 4 is_stmt 1               # io.c3:221:4
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)                # 8-byte Spill
	cmpq	$0, (%rax)
	jne	.LBB4_15
# %bb.14:
	leaq	.panic_msg(%rip), %rdi
	movl	$66, %esi
	leaq	.file(%rip), %rdx
	movl	$5, %ecx
	leaq	.func.23(%rip), %r8
	movl	$22, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$221, (%rsp)
	callq	*(%rax)
.LBB4_15:
	.loc	2 0 4 is_stmt 0                 # io.c3:0:4
	movq	-176(%rbp), %rdi                # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	callq	std.io.File.flush@PLT
	movq	%rax, -184(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_17
# %bb.16:
	.loc	2 0 4                           # io.c3:0:4
	movq	-184(%rbp), %rax                # 8-byte Reload
	.loc	2 221 4                         # io.c3:221:4
	movq	%rax, -120(%rbp)
	jmp	.LBB4_18
.LBB4_17:
	jmp	.LBB4_19
.LBB4_18:
	jmp	.LBB4_20
.Ltmp64:
.LBB4_19:
.LBB4_20:
	.loc	2 259 2 is_stmt 1               # io.c3:259:2
	jmp	.LBB4_21
.Ltmp65:
.LBB4_21:
	.loc	1 960 2                         # builtin.c3:960:2
	ud2
	.loc	1 960 2 epilogue_begin is_stmt 0 # builtin.c3:960:2
	addq	$192, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp66:
.Lfunc_end4:
	.size	std.core.builtin.sig_segmentation_fault, .Lfunc_end4-std.core.builtin.sig_segmentation_fault
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function std.core.builtin.install_signal_handler.5275
	.type	std.core.builtin.install_signal_handler.5275,@function
std.core.builtin.install_signal_handler.5275: # @std.core.builtin.install_signal_handler.5275
.Lfunc_begin5:
	.loc	1 963 0 is_stmt 1               # builtin.c3:963:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp67:
	.loc	1 965 44 prologue_end           # builtin.c3:965:44
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	.loc	1 965 23 is_stmt 0              # builtin.c3:965:23
	callq	signal@PLT
	movq	%rax, -24(%rbp)
	.loc	1 967 6 is_stmt 1               # builtin.c3:967:6
	movq	-24(%rbp), %rax
	cmpq	$1024, %rax                     # imm = 0x400
	jle	.LBB5_2
# %bb.1:
	.loc	1 967 45 is_stmt 0              # builtin.c3:967:45
	movl	-4(%rbp), %edi
	movq	-24(%rbp), %rsi
	.loc	1 967 24                        # builtin.c3:967:24
	callq	signal@PLT
.LBB5_2:
	.loc	1 967 24 epilogue_begin         # builtin.c3:967:24
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp68:
.Lfunc_end5:
	.size	std.core.builtin.install_signal_handler.5275, .Lfunc_end5-std.core.builtin.install_signal_handler.5275
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function std.core.builtin.install_signal_handlers.5279
	.type	std.core.builtin.install_signal_handlers.5279,@function
std.core.builtin.install_signal_handlers.5279: # @std.core.builtin.install_signal_handlers.5279
.Lfunc_begin6:
	.loc	1 971 0 is_stmt 1               # builtin.c3:971:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp69:
	.loc	1 973 2 prologue_end            # builtin.c3:973:2
	movl	$7, %edi
	movq	std.core.builtin.sig_bus_error@GOTPCREL(%rip), %rsi
	callq	std.core.builtin.install_signal_handler.5275
	.loc	1 974 2                         # builtin.c3:974:2
	movl	$11, %edi
	movq	std.core.builtin.sig_segmentation_fault@GOTPCREL(%rip), %rsi
	callq	std.core.builtin.install_signal_handler.5275
	.loc	1 974 2 epilogue_begin is_stmt 0 # builtin.c3:974:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp70:
.Lfunc_end6:
	.size	std.core.builtin.install_signal_handlers.5279, .Lfunc_end6-std.core.builtin.install_signal_handlers.5279
	.cfi_endproc
                                        # -- End function
	.type	std.core.builtin.in_panic.5072,@object # @std.core.builtin.in_panic.5072
	.local	std.core.builtin.in_panic.5072
	.comm	std.core.builtin.in_panic.5072,1,1
	.type	std.core.builtin.panic,@object  # @std.core.builtin.panic
	.section	.data.std.core.builtin.panic,"awG",@progbits,std.core.builtin.panic,comdat
	.weak	std.core.builtin.panic
	.p2align	3, 0x0
std.core.builtin.panic:
	.quad	std.core.builtin.default_panic
	.size	std.core.builtin.panic, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Panic inside of panic: "
	.size	.L.str, 24

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
	.asciz	"panicf"
	.size	.func, 7

	.type	.panic_msg.2,@object            # @.panic_msg.2
.panic_msg.2:
	.asciz	"@require \"self.file != null\" violated."
	.size	.panic_msg.2, 39

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

	.type	.panic_msg.3,@object            # @.panic_msg.3
	.section	.rodata,"a",@progbits
.panic_msg.3:
	.asciz	"Dereference of null pointer, 'self' was null."
	.size	.panic_msg.3, 46

	.type	.file.4,@object                 # @.file.4
.file.4:
	.asciz	"dstring.c3"
	.size	.file.4, 11

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

	.type	.panic_msg.5,@object            # @.panic_msg.5
	.section	.rodata,"a",@progbits
.panic_msg.5:
	.asciz	"Unaligned access: ptr %% %s = %s, use @unaligned_load / @unaligned_store for unaligned access."
	.size	.panic_msg.5, 95

	.type	.panic_msg.6,@object            # @.panic_msg.6
.panic_msg.6:
	.asciz	"@require \"!self.data()\" violated: 'String already initialized'."
	.size	.panic_msg.6, 64

	.type	.file.7,@object                 # @.file.7
.file.7:
	.asciz	"builtin.c3"
	.size	.file.7, 11

	.type	.panic_msg.8,@object            # @.panic_msg.8
.panic_msg.8:
	.asciz	"Calling null function pointer, 'panic' was null."
	.size	.panic_msg.8, 49

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"\nERROR: '"
	.size	.L.str.9, 10

	.type	.func.10,@object                # @.func.10
	.section	.rodata,"a",@progbits
.func.10:
	.asciz	"print_backtrace"
	.size	.func.10, 16

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"'"
	.size	.L.str.11, 2

	.type	.panic_msg.12,@object           # @.panic_msg.12
	.section	.rodata,"a",@progbits
.panic_msg.12:
	.asciz	"@require \"index < self.size\" violated: 'Access out of bounds'."
	.size	.panic_msg.12, 63

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	" [inline]"
	.size	.L.str.13, 10

	.type	.emptystr,@object               # @.emptystr
	.section	.rodata,"a",@progbits
.emptystr:
	.zero	1
	.size	.emptystr, 1

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"  in ???%s"
	.size	.L.str.14, 11

	.type	$ct.String,@object              # @"$ct.String"
	.section	".data.$ct.String","awG",@progbits,"$ct.String",comdat
	.weak	$ct.String
	.p2align	3, 0x0
$ct.String:
	.byte	18                              # 0x12
	.zero	7
	.quad	($ct.sa$char)
	.quad	0
	.quad	16                              # 0x10
	.quad	($ct.sa$char)
	.quad	0                               # 0x0
	.size	$ct.String, 48

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

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"  in %s (%s:%d) [%s]%s"
	.size	.L.str.15, 23

	.type	$ct.uint,@object                # @"$ct.uint"
	.section	".data.$ct.uint","awG",@progbits,"$ct.uint",comdat
	.weak	$ct.uint
	.p2align	3, 0x0
$ct.uint:
	.byte	3                               # 0x3
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	4                               # 0x4
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.size	$ct.uint, 48

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"  in %s (source unavailable) [%s]%s"
	.size	.L.str.16, 36

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\nERROR: '%s', in %s (%s:%d)"
	.size	.L.str.17, 28

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Illegal memory access."
	.size	.L.str.18, 23

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\nERROR: 'Illegal memory access'."
	.size	.L.str.19, 33

	.type	.func.20,@object                # @.func.20
	.section	.rodata,"a",@progbits
.func.20:
	.asciz	"sig_bus_error"
	.size	.func.20, 14

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Out of bounds memory access."
	.size	.L.str.21, 29

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\nERROR: Memory error without backtrace, possible stack overflow."
	.size	.L.str.22, 65

	.type	.func.23,@object                # @.func.23
	.section	.rodata,"a",@progbits
.func.23:
	.asciz	"sig_segmentation_fault"
	.size	.func.23, 23

	.section	.init_array.101,"aw",@init_array
	.p2align	3, 0x0
	.quad	std.core.builtin.install_signal_handlers.5279
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
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
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
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
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
	.byte	18                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
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
	.byte	25                              # Abbreviation Code
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
	.byte	26                              # Abbreviation Code
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
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
	.byte	32                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
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
	.byte	5                               # DW_FORM_data2
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
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
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
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
	.byte	39                              # Abbreviation Code
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
	.byte	40                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x969 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges6                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x19 DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.builtin.in_panic.5072
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x43:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x4a:0x1a DW_TAG_variable
	.long	.Linfo_string6                  # DW_AT_name
	.long	100                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	std.core.builtin.panic
	.long	.Linfo_string17                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x64:0xb DW_TAG_typedef
	.long	111                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x6f:0xd DW_TAG_pointer_type
	.long	124                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	7                               # Abbrev [7] 0x7c:0x16 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x7d:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x82:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x87:0x5 DW_TAG_formal_parameter
	.long	146                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x8c:0x5 DW_TAG_formal_parameter
	.long	221                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x92:0x9 DW_TAG_typedef
	.long	155                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	10                              # Abbrev [10] 0x9b:0x1e DW_TAG_structure_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	11                              # Abbrev [11] 0xa2:0xb DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	185                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xad:0xb DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	205                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xb9:0xd DW_TAG_pointer_type
	.long	198                             # DW_AT_type
	.long	.Linfo_string9                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	3                               # Abbrev [3] 0xc6:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xcd:0x9 DW_TAG_typedef
	.long	214                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	3                               # Abbrev [3] 0xd6:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0xdd:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0xe4:0xc DW_TAG_subprogram
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0xf0:0xc DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	13                              # Abbrev [13] 0xfc:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0x109:0xc DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x115:0x19 DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x121:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x12e:0x28 DW_TAG_subprogram
	.long	.Linfo_string22                 # DW_AT_linkage_name
	.long	.Linfo_string22                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	570                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x13b:0xd DW_TAG_variable
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x148:0xd DW_TAG_variable
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.long	363                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x156:0xe DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x15b:0x8 DW_TAG_subrange_type
	.long	356                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.short	512                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x164:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	21                              # Abbrev [21] 0x16b:0x3e DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	22                              # Abbrev [22] 0x174:0xd DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x181:0xd DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	155                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x18e:0xd DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	205                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x19b:0xd DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	471                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x1a9:0x1e DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	11                              # Abbrev [11] 0x1b0:0xb DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1bb:0xb DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x1c7:0x9 DW_TAG_pointer_type
	.long	.Linfo_string27                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	3                               # Abbrev [3] 0x1d0:0x7 DW_TAG_base_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	1                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x1d7:0xd DW_TAG_pointer_type
	.long	484                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	21                              # Abbrev [21] 0x1e4:0x31 DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	22                              # Abbrev [22] 0x1ed:0xd DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x1fa:0xd DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	471                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x207:0xd DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x215:0x119 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string39                 # DW_AT_linkage_name
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x22e:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340{"
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x23d:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320{"
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x24c:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300{"
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x25b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	221                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x269:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	24
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	2013                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x277:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\300y"
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.long	425                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x287:0x29 DW_TAG_inlined_subroutine
	.long	228                             # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp3-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	220                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x29b:0x14 DW_TAG_inlined_subroutine
	.long	240                             # DW_AT_abstract_origin
	.quad	.Ltmp2                          # DW_AT_low_pc
	.long	.Ltmp3-.Ltmp2                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	249                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x2b0:0x48 DW_TAG_inlined_subroutine
	.long	252                             # DW_AT_abstract_origin
	.quad	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp3                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	221                             # DW_AT_call_line
	.byte	4                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x2c4:0x33 DW_TAG_inlined_subroutine
	.long	277                             # DW_AT_abstract_origin
	.quad	.Ltmp4                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp4                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	259                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x2d9:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\310z"
	.long	289                             # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x2e2:0x14 DW_TAG_inlined_subroutine
	.long	265                             # DW_AT_abstract_origin
	.quad	.Ltmp4                          # DW_AT_low_pc
	.long	.Ltmp5-.Ltmp4                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	215                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	31                              # Abbrev [31] 0x2f8:0x1f DW_TAG_inlined_subroutine
	.long	302                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	225                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x304:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360{"
	.long	315                             # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x30d:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\320y"
	.long	328                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x317:0x16 DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x31c:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\270y"
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.long	2086                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x32e:0x28 DW_TAG_subprogram
	.long	.Linfo_string22                 # DW_AT_linkage_name
	.long	.Linfo_string22                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	570                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x33b:0xd DW_TAG_variable
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	854                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x348:0xd DW_TAG_variable
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.long	363                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x356:0xe DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x35b:0x8 DW_TAG_subrange_type
	.long	356                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.short	4352                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	16                              # Abbrev [16] 0x364:0x28 DW_TAG_subprogram
	.long	.Linfo_string22                 # DW_AT_linkage_name
	.long	.Linfo_string22                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	570                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	17                              # Abbrev [17] 0x371:0xd DW_TAG_variable
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	572                             # DW_AT_decl_line
	.long	908                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x37e:0xd DW_TAG_variable
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	573                             # DW_AT_decl_line
	.long	363                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x38c:0xe DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x391:0x8 DW_TAG_subrange_type
	.long	356                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.short	2048                            # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x39a:0xc DW_TAG_subprogram
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0x3a6:0xc DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0x3b2:0xc DW_TAG_subprogram
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	247                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0x3be:0xc DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	13                              # Abbrev [13] 0x3ca:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0x3d7:0xc DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x3e3:0x19 DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x3ef:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	33                              # Abbrev [33] 0x3fc:0x1e4 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string41                 # DW_AT_linkage_name
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	67                              # DW_AT_type
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x419:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\340M"
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x428:0xf DW_TAG_formal_parameter
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\334M"
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	2117                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x437:0x10 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\220M"
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	138                             # DW_AT_decl_line
	.long	425                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x447:0x1f DW_TAG_inlined_subroutine
	.long	814                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	138                             # DW_AT_call_line
	.byte	99                              # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x453:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360]"
	.long	827                             # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x45c:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\240M"
	.long	840                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x466:0x179 DW_TAG_lexical_block
	.long	.Ldebug_ranges3                 # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x46b:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\220\275\177"
	.long	.Linfo_string23                 # DW_AT_name
	.byte	2                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.long	2124                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x47c:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\200\275\177"
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.long	2138                            # DW_AT_type
	.byte	26                              # Abbrev [26] 0x48d:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\260\274\177"
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.long	425                             # DW_AT_type
	.byte	31                              # Abbrev [31] 0x49e:0x20 DW_TAG_inlined_subroutine
	.long	868                             # DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	143                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x4aa:0x9 DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\360M"
	.long	881                             # DW_AT_abstract_origin
	.byte	30                              # Abbrev [30] 0x4b3:0xa DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\300\274\177"
	.long	894                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x4be:0x120 DW_TAG_lexical_block
	.long	.Ldebug_ranges5                 # DW_AT_ranges
	.byte	26                              # Abbrev [26] 0x4c3:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\200\274\177"
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.long	2181                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4d4:0x29 DW_TAG_inlined_subroutine
	.long	922                             # DW_AT_abstract_origin
	.quad	.Ltmp29                         # DW_AT_low_pc
	.long	.Ltmp31-.Ltmp29                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	148                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x4e8:0x14 DW_TAG_inlined_subroutine
	.long	934                             # DW_AT_abstract_origin
	.quad	.Ltmp30                         # DW_AT_low_pc
	.long	.Ltmp31-.Ltmp30                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	249                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x4fd:0x29 DW_TAG_inlined_subroutine
	.long	946                             # DW_AT_abstract_origin
	.quad	.Ltmp31                         # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp31                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	149                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	28                              # Abbrev [28] 0x511:0x14 DW_TAG_inlined_subroutine
	.long	958                             # DW_AT_abstract_origin
	.quad	.Ltmp32                         # DW_AT_low_pc
	.long	.Ltmp33-.Ltmp32                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	249                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	27                              # Abbrev [27] 0x526:0x49 DW_TAG_inlined_subroutine
	.long	970                             # DW_AT_abstract_origin
	.quad	.Ltmp33                         # DW_AT_low_pc
	.long	.Ltmp36-.Ltmp33                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	150                             # DW_AT_call_line
	.byte	3                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x53a:0x34 DW_TAG_inlined_subroutine
	.long	995                             # DW_AT_abstract_origin
	.quad	.Ltmp34                         # DW_AT_low_pc
	.long	.Ltmp36-.Ltmp34                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	259                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x54f:0xa DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\250\272\177"
	.long	1007                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x559:0x14 DW_TAG_inlined_subroutine
	.long	983                             # DW_AT_abstract_origin
	.quad	.Ltmp34                         # DW_AT_low_pc
	.long	.Ltmp35-.Ltmp34                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	215                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	34                              # Abbrev [34] 0x56f:0x6e DW_TAG_lexical_block
	.quad	.Ltmp36                         # DW_AT_low_pc
	.long	.Ltmp44-.Ltmp36                 # DW_AT_high_pc
	.byte	26                              # Abbrev [26] 0x57c:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\340\271\177"
	.long	.Linfo_string85                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x58d:0x4f DW_TAG_lexical_block
	.quad	.Ltmp37                         # DW_AT_low_pc
	.long	.Ltmp43-.Ltmp37                 # DW_AT_high_pc
	.byte	26                              # Abbrev [26] 0x59a:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\330\271\177"
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x5ab:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\320\271\177"
	.long	.Linfo_string87                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	2243                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x5bc:0x1f DW_TAG_lexical_block
	.quad	.Ltmp38                         # DW_AT_low_pc
	.long	.Ltmp43-.Ltmp38                 # DW_AT_high_pc
	.byte	26                              # Abbrev [26] 0x5c9:0x11 DW_TAG_variable
	.byte	4                               # DW_AT_location
	.byte	145
	.ascii	"\300\271\177"
	.long	.Linfo_string88                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x5e0:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string43                 # DW_AT_linkage_name
	.long	.Linfo_string44                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	25                              # Abbrev [25] 0x5f9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x607:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x615:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	146                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x623:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	221                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x632:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0x63f:0xc DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x64b:0x19 DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x657:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x664:0x72 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string45                 # DW_AT_linkage_name
	.long	.Linfo_string46                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	933                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x67e:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	933                             # DW_AT_decl_line
	.long	2377                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x68d:0x48 DW_TAG_inlined_subroutine
	.long	1586                            # DW_AT_abstract_origin
	.quad	.Ltmp54                         # DW_AT_low_pc
	.long	.Ltmp58-.Ltmp54                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	941                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x6a2:0x32 DW_TAG_inlined_subroutine
	.long	1611                            # DW_AT_abstract_origin
	.quad	.Ltmp55                         # DW_AT_low_pc
	.long	.Ltmp57-.Ltmp55                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	259                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x6b7:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	1623                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x6bf:0x14 DW_TAG_inlined_subroutine
	.long	1599                            # DW_AT_abstract_origin
	.quad	.Ltmp55                         # DW_AT_low_pc
	.long	.Ltmp56-.Ltmp55                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	215                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x6d6:0xd DW_TAG_subprogram
	.long	.Linfo_string20                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	257                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	12                              # Abbrev [12] 0x6e3:0xc DW_TAG_subprogram
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	14                              # Abbrev [14] 0x6ef:0x19 DW_TAG_subprogram
	.long	.Linfo_string21                 # DW_AT_linkage_name
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	15                              # Abbrev [15] 0x6fb:0xc DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.long	205                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x708:0x72 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string47                 # DW_AT_linkage_name
	.long	.Linfo_string48                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	948                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x722:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string86                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	948                             # DW_AT_decl_line
	.long	2377                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x731:0x48 DW_TAG_inlined_subroutine
	.long	1750                            # DW_AT_abstract_origin
	.quad	.Ltmp61                         # DW_AT_low_pc
	.long	.Ltmp65-.Ltmp61                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	956                             # DW_AT_call_line
	.byte	5                               # DW_AT_call_column
	.byte	29                              # Abbrev [29] 0x746:0x32 DW_TAG_inlined_subroutine
	.long	1775                            # DW_AT_abstract_origin
	.quad	.Ltmp62                         # DW_AT_low_pc
	.long	.Ltmp64-.Ltmp62                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.short	259                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	30                              # Abbrev [30] 0x75b:0x8 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	1787                            # DW_AT_abstract_origin
	.byte	28                              # Abbrev [28] 0x763:0x14 DW_TAG_inlined_subroutine
	.long	1763                            # DW_AT_abstract_origin
	.quad	.Ltmp62                         # DW_AT_low_pc
	.long	.Ltmp63-.Ltmp62                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	215                             # DW_AT_call_line
	.byte	12                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	37                              # Abbrev [37] 0x77a:0x49 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string49                 # DW_AT_linkage_name
	.long	.Linfo_string50                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	963                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	36                              # Abbrev [36] 0x794:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string90                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	963                             # DW_AT_decl_line
	.long	2377                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x7a3:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string91                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	963                             # DW_AT_decl_line
	.long	2388                            # DW_AT_type
	.byte	38                              # Abbrev [38] 0x7b2:0x10 DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string93                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.short	965                             # DW_AT_decl_line
	.long	2388                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	39                              # Abbrev [39] 0x7c3:0x1a DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string51                 # DW_AT_linkage_name
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	971                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0x7dd:0x1e DW_TAG_structure_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	11                              # Abbrev [11] 0x7e4:0xb DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	2043                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7ef:0xb DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	205                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x7fb:0xd DW_TAG_pointer_type
	.long	2056                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	10                              # Abbrev [10] 0x808:0x1e DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	11                              # Abbrev [11] 0x80f:0xb DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	455                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x81a:0xb DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	464                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x826:0xb DW_TAG_typedef
	.long	2097                            # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x831:0xd DW_TAG_pointer_type
	.long	2110                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	40                              # Abbrev [40] 0x83e:0x7 DW_TAG_typedef
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x845:0x7 DW_TAG_base_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0x84c:0xe DW_TAG_array_type
	.long	455                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x851:0x8 DW_TAG_subrange_type
	.long	356                             # DW_AT_type
	.byte	0                               # DW_AT_lower_bound
	.short	256                             # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x85a:0x1e DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	11                              # Abbrev [11] 0x861:0xb DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	2168                            # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x86c:0xb DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	205                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x878:0xd DW_TAG_pointer_type
	.long	455                             # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	21                              # Abbrev [21] 0x885:0x3e DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	22                              # Abbrev [22] 0x88e:0xd DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	205                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x89b:0xd DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	205                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x8a8:0xd DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	16                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x8b5:0xd DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	2243                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x8c3:0xd DW_TAG_pointer_type
	.long	2256                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	5                               # Abbrev [5] 0x8d0:0xb DW_TAG_typedef
	.long	2267                            # DW_AT_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x8db:0x65 DW_TAG_structure_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	88                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	22                              # Abbrev [22] 0x8e4:0xd DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	2368                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x8f1:0xd DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x8fe:0xd DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	24                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x90b:0xd DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	146                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	40                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x918:0xd DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	221                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	56                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x925:0xd DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	425                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	64                              # DW_AT_data_member_location
	.byte	22                              # Abbrev [22] 0x932:0xd DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	67                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	80                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x940:0x9 DW_TAG_typedef
	.long	214                             # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	5                               # Abbrev [5] 0x949:0xb DW_TAG_typedef
	.long	2117                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x954:0xb DW_TAG_typedef
	.long	2399                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x95f:0xd DW_TAG_pointer_type
	.long	2412                            # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	7                               # Abbrev [7] 0x96c:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0x96d:0x5 DW_TAG_formal_parameter
	.long	2117                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp8
	.quad	.Ltmp10
	.quad	.Ltmp11
	.quad	.Ltmp12
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp10
	.quad	.Ltmp11
	.quad	.Ltmp12
	.quad	.Ltmp13
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp15
	.quad	.Ltmp17
	.quad	.Ltmp23
	.quad	.Ltmp24
	.quad	.Ltmp27
	.quad	.Ltmp28
	.quad	.Ltmp46
	.quad	.Ltmp47
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp17
	.quad	.Ltmp23
	.quad	.Ltmp24
	.quad	.Ltmp27
	.quad	.Ltmp29
	.quad	.Ltmp46
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp18
	.quad	.Ltmp20
	.quad	.Ltmp22
	.quad	.Ltmp23
	.quad	.Ltmp26
	.quad	.Ltmp27
	.quad	.Ltmp45
	.quad	.Ltmp46
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp20
	.quad	.Ltmp21
	.quad	.Ltmp24
	.quad	.Ltmp25
	.quad	.Ltmp29
	.quad	.Ltmp44
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
	.quad	.Lfunc_end6
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"builtin.c3"                    # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" # string offset=15
.Linfo_string3:
	.asciz	"in_panic"                      # string offset=85
.Linfo_string4:
	.asciz	"bool"                          # string offset=94
.Linfo_string5:
	.asciz	"std.core.builtin.in_panic.5072" # string offset=99
.Linfo_string6:
	.asciz	"panic"                         # string offset=130
.Linfo_string7:
	.asciz	"ptr"                           # string offset=136
.Linfo_string8:
	.asciz	"char"                          # string offset=140
.Linfo_string9:
	.asciz	"char*"                         # string offset=145
.Linfo_string10:
	.asciz	"len"                           # string offset=151
.Linfo_string11:
	.asciz	"ulong"                         # string offset=155
.Linfo_string12:
	.asciz	"usz"                           # string offset=161
.Linfo_string13:
	.asciz	"char[]"                        # string offset=165
.Linfo_string14:
	.asciz	"String"                        # string offset=172
.Linfo_string15:
	.asciz	"uint"                          # string offset=179
.Linfo_string16:
	.asciz	"PanicFn"                       # string offset=184
.Linfo_string17:
	.asciz	"std.core.builtin.panic"        # string offset=192
.Linfo_string18:
	.asciz	"eprint"                        # string offset=215
.Linfo_string19:
	.asciz	"fprint"                        # string offset=222
.Linfo_string20:
	.asciz	"eprintn"                       # string offset=229
.Linfo_string21:
	.asciz	"fprintn"                       # string offset=237
.Linfo_string22:
	.asciz	"@stack_mem"                    # string offset=245
.Linfo_string23:
	.asciz	"buffer"                        # string offset=256
.Linfo_string24:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=263
.Linfo_string25:
	.asciz	"allocator"                     # string offset=283
.Linfo_string26:
	.asciz	"backing_allocator"             # string offset=293
.Linfo_string27:
	.asciz	"void*"                         # string offset=311
.Linfo_string28:
	.asciz	"type"                          # string offset=317
.Linfo_string29:
	.asciz	"typeid"                        # string offset=322
.Linfo_string30:
	.asciz	"Allocator"                     # string offset=329
.Linfo_string31:
	.asciz	"data"                          # string offset=339
.Linfo_string32:
	.asciz	"used"                          # string offset=344
.Linfo_string33:
	.asciz	"chunk"                         # string offset=349
.Linfo_string34:
	.asciz	"is_aligned"                    # string offset=355
.Linfo_string35:
	.asciz	"prev"                          # string offset=366
.Linfo_string36:
	.asciz	"OnStackAllocatorExtraChunk"    # string offset=371
.Linfo_string37:
	.asciz	"OnStackAllocatorExtraChunk*"   # string offset=398
.Linfo_string38:
	.asciz	"OnStackAllocator"              # string offset=426
.Linfo_string39:
	.asciz	"std.core.builtin.panicf"       # string offset=443
.Linfo_string40:
	.asciz	"panicf"                        # string offset=467
.Linfo_string41:
	.asciz	"std.core.builtin.print_backtrace" # string offset=474
.Linfo_string42:
	.asciz	"print_backtrace"               # string offset=507
.Linfo_string43:
	.asciz	"std.core.builtin.default_panic" # string offset=523
.Linfo_string44:
	.asciz	"default_panic"                 # string offset=554
.Linfo_string45:
	.asciz	"std.core.builtin.sig_bus_error" # string offset=568
.Linfo_string46:
	.asciz	"sig_bus_error"                 # string offset=599
.Linfo_string47:
	.asciz	"std.core.builtin.sig_segmentation_fault" # string offset=613
.Linfo_string48:
	.asciz	"sig_segmentation_fault"        # string offset=653
.Linfo_string49:
	.asciz	"std.core.builtin.install_signal_handler.5275" # string offset=676
.Linfo_string50:
	.asciz	"install_signal_handler"        # string offset=721
.Linfo_string51:
	.asciz	"std.core.builtin.install_signal_handlers.5279" # string offset=744
.Linfo_string52:
	.asciz	"install_signal_handlers"       # string offset=790
.Linfo_string53:
	.asciz	"fmt"                           # string offset=814
.Linfo_string54:
	.asciz	"file"                          # string offset=818
.Linfo_string55:
	.asciz	"function"                      # string offset=823
.Linfo_string56:
	.asciz	"line"                          # string offset=832
.Linfo_string57:
	.asciz	"args"                          # string offset=837
.Linfo_string58:
	.asciz	"any"                           # string offset=842
.Linfo_string59:
	.asciz	"any*"                          # string offset=846
.Linfo_string60:
	.asciz	"any[]"                         # string offset=851
.Linfo_string61:
	.asciz	"s"                             # string offset=857
.Linfo_string62:
	.asciz	"DStringOpaque"                 # string offset=859
.Linfo_string63:
	.asciz	"DStringOpaque*"                # string offset=873
.Linfo_string64:
	.asciz	"DString"                       # string offset=888
.Linfo_string65:
	.asciz	"message"                       # string offset=896
.Linfo_string66:
	.asciz	"backtraces_to_ignore"          # string offset=904
.Linfo_string67:
	.asciz	"int"                           # string offset=925
.Linfo_string68:
	.asciz	"smem"                          # string offset=929
.Linfo_string69:
	.asciz	"backtraces"                    # string offset=934
.Linfo_string70:
	.asciz	"void**"                        # string offset=945
.Linfo_string71:
	.asciz	"void*[]"                       # string offset=952
.Linfo_string72:
	.asciz	"mem"                           # string offset=960
.Linfo_string73:
	.asciz	"backtrace"                     # string offset=964
.Linfo_string74:
	.asciz	"size"                          # string offset=974
.Linfo_string75:
	.asciz	"capacity"                      # string offset=979
.Linfo_string76:
	.asciz	"entries"                       # string offset=988
.Linfo_string77:
	.asciz	"offset"                        # string offset=996
.Linfo_string78:
	.asciz	"uptr"                          # string offset=1003
.Linfo_string79:
	.asciz	"object_file"                   # string offset=1008
.Linfo_string80:
	.asciz	"is_inline"                     # string offset=1020
.Linfo_string81:
	.asciz	"Backtrace"                     # string offset=1030
.Linfo_string82:
	.asciz	"Type"                          # string offset=1040
.Linfo_string83:
	.asciz	"Type*"                         # string offset=1045
.Linfo_string84:
	.asciz	"List"                          # string offset=1051
.Linfo_string85:
	.asciz	".temp"                         # string offset=1056
.Linfo_string86:
	.asciz	"i"                             # string offset=1062
.Linfo_string87:
	.asciz	"trace"                         # string offset=1064
.Linfo_string88:
	.asciz	"inline_suffix"                 # string offset=1070
.Linfo_string89:
	.asciz	"CInt"                          # string offset=1084
.Linfo_string90:
	.asciz	"signal"                        # string offset=1089
.Linfo_string91:
	.asciz	"func"                          # string offset=1096
.Linfo_string92:
	.asciz	"SignalFunction"                # string offset=1101
.Linfo_string93:
	.asciz	"old"                           # string offset=1116
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2420                            # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"in_panic"                      # External Name
	.long	74                              # DIE offset
	.asciz	"panic"                         # External Name
	.long	533                             # DIE offset
	.asciz	"panicf"                        # External Name
	.long	868                             # DIE offset
	.asciz	"@stack_mem"                    # External Name
	.long	946                             # DIE offset
	.asciz	"eprint"                        # External Name
	.long	1020                            # DIE offset
	.asciz	"print_backtrace"               # External Name
	.long	1504                            # DIE offset
	.asciz	"default_panic"                 # External Name
	.long	1636                            # DIE offset
	.asciz	"sig_bus_error"                 # External Name
	.long	1750                            # DIE offset
	.asciz	"eprintn"                       # External Name
	.long	1763                            # DIE offset
	.asciz	"fprint"                        # External Name
	.long	1775                            # DIE offset
	.asciz	"fprintn"                       # External Name
	.long	1800                            # DIE offset
	.asciz	"sig_segmentation_fault"        # External Name
	.long	1914                            # DIE offset
	.asciz	"install_signal_handler"        # External Name
	.long	1987                            # DIE offset
	.asciz	"install_signal_handlers"       # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	2420                            # Compilation Unit Length
	.long	67                              # DIE offset
	.asciz	"bool"                          # External Name
	.long	111                             # DIE offset
	.asciz	"PanicFn"                       # External Name
	.long	146                             # DIE offset
	.asciz	"String"                        # External Name
	.long	155                             # DIE offset
	.asciz	"char[]"                        # External Name
	.long	185                             # DIE offset
	.asciz	"char*"                         # External Name
	.long	198                             # DIE offset
	.asciz	"char"                          # External Name
	.long	205                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	214                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	221                             # DIE offset
	.asciz	"uint"                          # External Name
	.long	363                             # DIE offset
	.asciz	"OnStackAllocator"              # External Name
	.long	425                             # DIE offset
	.asciz	"Allocator"                     # External Name
	.long	455                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	464                             # DIE offset
	.asciz	"typeid"                        # External Name
	.long	471                             # DIE offset
	.asciz	"OnStackAllocatorExtraChunk*"   # External Name
	.long	484                             # DIE offset
	.asciz	"OnStackAllocatorExtraChunk"    # External Name
	.long	2013                            # DIE offset
	.asciz	"any[]"                         # External Name
	.long	2043                            # DIE offset
	.asciz	"any*"                          # External Name
	.long	2056                            # DIE offset
	.asciz	"any"                           # External Name
	.long	2086                            # DIE offset
	.asciz	"DString"                       # External Name
	.long	2097                            # DIE offset
	.asciz	"DStringOpaque*"                # External Name
	.long	2110                            # DIE offset
	.asciz	"DStringOpaque"                 # External Name
	.long	2117                            # DIE offset
	.asciz	"int"                           # External Name
	.long	2138                            # DIE offset
	.asciz	"void*[]"                       # External Name
	.long	2168                            # DIE offset
	.asciz	"void**"                        # External Name
	.long	2181                            # DIE offset
	.asciz	"List"                          # External Name
	.long	2243                            # DIE offset
	.asciz	"Type*"                         # External Name
	.long	2256                            # DIE offset
	.asciz	"Type"                          # External Name
	.long	2267                            # DIE offset
	.asciz	"Backtrace"                     # External Name
	.long	2368                            # DIE offset
	.asciz	"uptr"                          # External Name
	.long	2377                            # DIE offset
	.asciz	"CInt"                          # External Name
	.long	2399                            # DIE offset
	.asciz	"SignalFunction"                # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.io.stderr
	.weak	std.io.File.write
	.weak	std.io.File.write_byte
	.weak	std.io.File.flush
	.weak	std.core.mem.allocator.OnStackAllocator.init
	.weak	std.core.dstring.DString.init
	.weak	std.core.dstring.DString.data
	.weak	std.core.dstring.DString.appendf
	.weak	std.core.dstring.DString.str_view
	.weak	std.core.mem.allocator.OnStackAllocator.free
	.weak	std.os.backtrace.capture_current
	.weak	std.os.linux.symbolize_backtrace
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.len
	.weak	std_collections_list$std.os.backtrace.Backtrace$.List.get_ref
	.weak	std.os.backtrace.Backtrace.is_unknown
	.weak	std.io.eprintfn
	.weak	std.os.backtrace.Backtrace.has_file
	.weak	std.core.mem.allocator.thread_allocator
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

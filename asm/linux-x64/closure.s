	.text
	.file	"closure"
	.file	1 "/home/user/code/c3/closures.c3l" "closure.c3"
	.file	2 "/home/user/code/c3/closures.c3l" "generated.c3"
	.globl	"closure.@generate_closure_call_func$lambda2" # -- Begin function closure.@generate_closure_call_func$lambda2
	.p2align	4, 0x90
	.type	"closure.@generate_closure_call_func$lambda2",@function
"closure.@generate_closure_call_func$lambda2": # @"closure.@generate_closure_call_func$lambda2"
.Lfunc_begin0:
	.loc	2 168 0                         # generated.c3:168:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp                      # imm = 0x1C0
	movl	%edi, -4(%rbp)
.Ltmp0:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "builtin.c3"
	.loc	3 367 18 prologue_end           # builtin.c3:367:18
	cmpq	$0, "closure.@generate_closure_call_func$lambda2.closure_ptr"(%rip)
	sete	%al
	.loc	3 367 26 is_stmt 0              # builtin.c3:367:26
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_4
.Ltmp1:
.LBB0_1:
	.loc	2 173 13 is_stmt 1              # generated.c3:173:13
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB0_3
# %bb.2:
	leaq	.panic_msg(%rip), %rdi
	movl	$33, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$173, (%rsp)
	callq	*(%rax)
.LBB0_3:
	.loc	2 174 20                        # generated.c3:174:20
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, "closure.@generate_closure_call_func$lambda2.closure_ptr"(%rip)
	.loc	2 175 6                         # generated.c3:175:6
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 175 25 is_stmt 0              # generated.c3:175:25
	movq	$0, (%rax)
	.loc	2 179 14 is_stmt 1              # generated.c3:179:14
	xorl	%eax, %eax
	.loc	2 179 14 epilogue_begin is_stmt 0 # generated.c3:179:14
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp2:
.LBB0_4:
	.cfi_def_cfa %rbp, 16
	.loc	2 182 25 is_stmt 1              # generated.c3:182:25
	movq	"closure.@generate_closure_call_func$lambda2.closure_ptr"(%rip), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	.loc	2 182 37 is_stmt 0              # generated.c3:182:37
	andq	$7, %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_13
# %bb.5:
	.loc	2 0 37                          # generated.c3:0:37
	movq	-352(%rbp), %rax                # 8-byte Reload
	.loc	2 182 25                        # generated.c3:182:25
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_14
# %bb.6:
	.loc	2 182 66                        # generated.c3:182:66
	movq	"closure.@generate_closure_call_func$lambda2.closure_ptr"(%rip), %rax
	.loc	2 182 78                        # generated.c3:182:78
	addq	$8, %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_15
# %bb.7:
	.loc	2 0 78                          # generated.c3:0:78
	movq	-376(%rbp), %rax                # 8-byte Reload
	.loc	2 182 66                        # generated.c3:182:66
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_16
# %bb.8:
	.loc	2 0 66                          # generated.c3:0:66
	movq	-384(%rbp), %rax                # 8-byte Reload
	.loc	2 182 42                        # generated.c3:182:42
	andq	$3, %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_17
# %bb.9:
	.loc	2 182 117                       # generated.c3:182:117
	movq	"closure.@generate_closure_call_func$lambda2.closure_ptr"(%rip), %rax
	.loc	2 182 129                       # generated.c3:182:129
	addq	$16, %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_18
# %bb.10:
	.loc	2 0 129                         # generated.c3:0:129
	movq	-408(%rbp), %rax                # 8-byte Reload
	.loc	2 182 117                       # generated.c3:182:117
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_19
# %bb.11:
	.loc	2 0 117                         # generated.c3:0:117
	movq	-416(%rbp), %rax                # 8-byte Reload
	.loc	2 182 93                        # generated.c3:182:93
	andq	$3, %rax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_20
# %bb.12:
	.loc	2 0 93                          # generated.c3:0:93
	movq	-360(%rbp), %rax                # 8-byte Reload
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	.loc	2 182 143                       # generated.c3:182:143
	movl	(%rdx), %edi
	movl	(%rcx), %esi
	movl	-4(%rbp), %edx
	.loc	2 182 11                        # generated.c3:182:11
	callq	*%rax
	.loc	2 182 11 epilogue_begin         # generated.c3:182:11
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_13:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # generated.c3:0:11
	movq	-344(%rbp), %rcx                # 8-byte Reload
	movq	$8, -16(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -56(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	.loc	2 182 25                        # generated.c3:182:25
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	leaq	-80(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_14:
	.loc	2 182 12                        # generated.c3:182:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$70, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.LBB0_15:
	.loc	2 0 12                          # generated.c3:0:12
	movq	-368(%rbp), %rcx                # 8-byte Reload
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
	.loc	2 182 66                        # generated.c3:182:66
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	leaq	-144(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_16:
	.loc	2 182 42                        # generated.c3:182:42
	leaq	.panic_msg.3(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.LBB0_17:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-392(%rbp), %rcx                # 8-byte Reload
	movq	$4, -152(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -160(%rbp)
	movq	%rax, -184(%rbp)
	leaq	-152(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$2, -200(%rbp)
	.loc	2 182 42                        # generated.c3:182:42
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	leaq	-208(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_18:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-400(%rbp), %rcx                # 8-byte Reload
	movq	$8, -216(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -224(%rbp)
	movq	%rax, -248(%rbp)
	leaq	-216(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	%rax, -232(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$2, -264(%rbp)
	.loc	2 182 117                       # generated.c3:182:117
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	leaq	-272(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB0_19:
	.loc	2 182 93                        # generated.c3:182:93
	leaq	.panic_msg.4(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.LBB0_20:
	.loc	2 0 93                          # generated.c3:0:93
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	$4, -280(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -288(%rbp)
	movq	%rax, -312(%rbp)
	leaq	-280(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$2, -328(%rbp)
	.loc	2 182 93                        # generated.c3:182:93
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func(%rip), %r8
	movl	$43, %r9d
	leaq	-336(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp3:
.Lfunc_end0:
	.size	"closure.@generate_closure_call_func$lambda2", .Lfunc_end0-"closure.@generate_closure_call_func$lambda2"
	.cfi_endproc
                                        # -- End function
	.globl	"closure.@generate_closure_call_func$lambda4" # -- Begin function closure.@generate_closure_call_func$lambda4
	.p2align	4, 0x90
	.type	"closure.@generate_closure_call_func$lambda4",@function
"closure.@generate_closure_call_func$lambda4": # @"closure.@generate_closure_call_func$lambda4"
.Lfunc_begin1:
	.loc	2 83 0 is_stmt 1                # generated.c3:83:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp                      # imm = 0x1B0
.Ltmp4:
	.loc	3 367 18 prologue_end           # builtin.c3:367:18
	cmpq	$0, "closure.@generate_closure_call_func$lambda4.closure_ptr"(%rip)
	sete	%al
	.loc	3 367 26 is_stmt 0              # builtin.c3:367:26
	testb	$1, %al
	jne	.LBB1_1
	jmp	.LBB1_4
.Ltmp5:
.LBB1_1:
	.loc	2 88 13 is_stmt 1               # generated.c3:88:13
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB1_3
# %bb.2:
	leaq	.panic_msg(%rip), %rdi
	movl	$33, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$88, (%rsp)
	callq	*(%rax)
.LBB1_3:
	.loc	2 89 20                         # generated.c3:89:20
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, "closure.@generate_closure_call_func$lambda4.closure_ptr"(%rip)
	.loc	2 90 6                          # generated.c3:90:6
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 90 25 is_stmt 0               # generated.c3:90:25
	movq	$0, (%rax)
	.loc	2 92 13 epilogue_begin is_stmt 1 # generated.c3:92:13
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB1_4:
	.cfi_def_cfa %rbp, 16
	.loc	2 97 25                         # generated.c3:97:25
	movq	"closure.@generate_closure_call_func$lambda4.closure_ptr"(%rip), %rax
	movq	%rax, -336(%rbp)                # 8-byte Spill
	.loc	2 97 37 is_stmt 0               # generated.c3:97:37
	andq	$7, %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_13
# %bb.5:
	.loc	2 0 37                          # generated.c3:0:37
	movq	-336(%rbp), %rax                # 8-byte Reload
	.loc	2 97 25                         # generated.c3:97:25
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_14
# %bb.6:
	.loc	2 97 66                         # generated.c3:97:66
	movq	"closure.@generate_closure_call_func$lambda4.closure_ptr"(%rip), %rax
	.loc	2 97 78                         # generated.c3:97:78
	addq	$8, %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_15
# %bb.7:
	.loc	2 0 78                          # generated.c3:0:78
	movq	-360(%rbp), %rax                # 8-byte Reload
	.loc	2 97 66                         # generated.c3:97:66
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_16
# %bb.8:
	.loc	2 0 66                          # generated.c3:0:66
	movq	-368(%rbp), %rax                # 8-byte Reload
	.loc	2 97 42                         # generated.c3:97:42
	andq	$7, %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_17
# %bb.9:
	.loc	2 97 117                        # generated.c3:97:117
	movq	"closure.@generate_closure_call_func$lambda4.closure_ptr"(%rip), %rax
	.loc	2 97 129                        # generated.c3:97:129
	addq	$16, %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_18
# %bb.10:
	.loc	2 0 129                         # generated.c3:0:129
	movq	-392(%rbp), %rax                # 8-byte Reload
	.loc	2 97 117                        # generated.c3:97:117
	movq	(%rax), %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB1_19
# %bb.11:
	.loc	2 0 117                         # generated.c3:0:117
	movq	-400(%rbp), %rax                # 8-byte Reload
	.loc	2 97 93                         # generated.c3:97:93
	andq	$7, %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB1_20
# %bb.12:
	.loc	2 0 93                          # generated.c3:0:93
	movq	-344(%rbp), %rax                # 8-byte Reload
	movq	-400(%rbp), %rcx                # 8-byte Reload
	movq	-368(%rbp), %rdx                # 8-byte Reload
	.loc	2 97 93                         # generated.c3:97:93
	movq	(%rdx), %rdi
	movq	(%rcx), %rsi
	.loc	2 97 11                         # generated.c3:97:11
	callq	*%rax
	.loc	2 97 11 epilogue_begin          # generated.c3:97:11
	addq	$432, %rsp                      # imm = 0x1B0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_13:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # generated.c3:0:11
	movq	-328(%rbp), %rcx                # 8-byte Reload
	movq	$8, -8(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -16(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$2, -56(%rbp)
	.loc	2 97 25                         # generated.c3:97:25
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	leaq	-64(%rbp), %rax
	movl	$97, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_14:
	.loc	2 97 12                         # generated.c3:97:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$70, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$97, (%rsp)
	callq	*(%rax)
.LBB1_15:
	.loc	2 0 12                          # generated.c3:0:12
	movq	-352(%rbp), %rcx                # 8-byte Reload
	movq	$8, -72(%rbp)
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
	.loc	2 97 66                         # generated.c3:97:66
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	leaq	-128(%rbp), %rax
	movl	$97, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_16:
	.loc	2 97 42                         # generated.c3:97:42
	leaq	.panic_msg.3(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$97, (%rsp)
	callq	*(%rax)
.LBB1_17:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-376(%rbp), %rcx                # 8-byte Reload
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
	.loc	2 97 42                         # generated.c3:97:42
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	leaq	-192(%rbp), %rax
	movl	$97, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_18:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-384(%rbp), %rcx                # 8-byte Reload
	movq	$8, -200(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -208(%rbp)
	movq	%rax, -232(%rbp)
	leaq	-200(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	%rax, -216(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$2, -248(%rbp)
	.loc	2 97 117                        # generated.c3:97:117
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	leaq	-256(%rbp), %rax
	movl	$97, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB1_19:
	.loc	2 97 93                         # generated.c3:97:93
	leaq	.panic_msg.4(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$97, (%rsp)
	callq	*(%rax)
.LBB1_20:
	.loc	2 0 93                          # generated.c3:0:93
	movq	-408(%rbp), %rcx                # 8-byte Reload
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
	.loc	2 97 93                         # generated.c3:97:93
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.5(%rip), %r8
	movl	$43, %r9d
	leaq	-320(%rbp), %rax
	movl	$97, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp7:
.Lfunc_end1:
	.size	"closure.@generate_closure_call_func$lambda4", .Lfunc_end1-"closure.@generate_closure_call_func$lambda4"
	.cfi_endproc
                                        # -- End function
	.globl	"closure.@generate_closure_call_func$lambda6" # -- Begin function closure.@generate_closure_call_func$lambda6
	.p2align	4, 0x90
	.type	"closure.@generate_closure_call_func$lambda6",@function
"closure.@generate_closure_call_func$lambda6": # @"closure.@generate_closure_call_func$lambda6"
.Lfunc_begin2:
	.loc	2 58 0 is_stmt 1                # generated.c3:58:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	%edi, -4(%rbp)
.Ltmp8:
	.loc	3 367 18 prologue_end           # builtin.c3:367:18
	cmpq	$0, "closure.@generate_closure_call_func$lambda6.closure_ptr"(%rip)
	sete	%al
	.loc	3 367 26 is_stmt 0              # builtin.c3:367:26
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_4
.Ltmp9:
.LBB2_1:
	.loc	2 63 13 is_stmt 1               # generated.c3:63:13
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB2_3
# %bb.2:
	leaq	.panic_msg(%rip), %rdi
	movl	$33, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.6(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$63, (%rsp)
	callq	*(%rax)
.LBB2_3:
	.loc	2 64 20                         # generated.c3:64:20
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, "closure.@generate_closure_call_func$lambda6.closure_ptr"(%rip)
	.loc	2 65 6                          # generated.c3:65:6
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 65 25 is_stmt 0               # generated.c3:65:25
	movq	$0, (%rax)
	.loc	2 69 14 is_stmt 1               # generated.c3:69:14
	xorl	%eax, %eax
	.loc	2 69 14 epilogue_begin is_stmt 0 # generated.c3:69:14
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.LBB2_4:
	.cfi_def_cfa %rbp, 16
	.loc	2 72 25 is_stmt 1               # generated.c3:72:25
	movq	"closure.@generate_closure_call_func$lambda6.closure_ptr"(%rip), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	.loc	2 72 37 is_stmt 0               # generated.c3:72:37
	andq	$7, %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB2_7
# %bb.5:
	.loc	2 0 37                          # generated.c3:0:37
	movq	-96(%rbp), %rax                 # 8-byte Reload
	.loc	2 72 25                         # generated.c3:72:25
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB2_8
# %bb.6:
	.loc	2 0 25                          # generated.c3:0:25
	movq	-104(%rbp), %rax                # 8-byte Reload
	.loc	2 72 41                         # generated.c3:72:41
	movl	-4(%rbp), %edi
	.loc	2 72 11                         # generated.c3:72:11
	callq	*%rax
	.loc	2 72 11 epilogue_begin          # generated.c3:72:11
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_7:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # generated.c3:0:11
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movq	$8, -16(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -56(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	.loc	2 72 25                         # generated.c3:72:25
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.6(%rip), %r8
	movl	$43, %r9d
	leaq	-80(%rbp), %rax
	movl	$72, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB2_8:
	.loc	2 72 12                         # generated.c3:72:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$70, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.6(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$72, (%rsp)
	callq	*(%rax)
.Ltmp11:
.Lfunc_end2:
	.size	"closure.@generate_closure_call_func$lambda6", .Lfunc_end2-"closure.@generate_closure_call_func$lambda6"
	.cfi_endproc
                                        # -- End function
	.globl	"closure.@generate_closure_call_func$lambda7" # -- Begin function closure.@generate_closure_call_func$lambda7
	.p2align	4, 0x90
	.type	"closure.@generate_closure_call_func$lambda7",@function
"closure.@generate_closure_call_func$lambda7": # @"closure.@generate_closure_call_func$lambda7"
.Lfunc_begin3:
	.loc	2 168 0 is_stmt 1               # generated.c3:168:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp                      # imm = 0x1C0
	movl	%edi, -4(%rbp)
.Ltmp12:
	.loc	3 367 18 prologue_end           # builtin.c3:367:18
	cmpq	$0, "closure.@generate_closure_call_func$lambda7.closure_ptr"(%rip)
	sete	%al
	.loc	3 367 26 is_stmt 0              # builtin.c3:367:26
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_4
.Ltmp13:
.LBB3_1:
	.loc	2 173 13 is_stmt 1              # generated.c3:173:13
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB3_3
# %bb.2:
	leaq	.panic_msg(%rip), %rdi
	movl	$33, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$173, (%rsp)
	callq	*(%rax)
.LBB3_3:
	.loc	2 174 20                        # generated.c3:174:20
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, "closure.@generate_closure_call_func$lambda7.closure_ptr"(%rip)
	.loc	2 175 6                         # generated.c3:175:6
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 175 25 is_stmt 0              # generated.c3:175:25
	movq	$0, (%rax)
	.loc	2 179 14 is_stmt 1              # generated.c3:179:14
	xorl	%eax, %eax
	.loc	2 179 14 epilogue_begin is_stmt 0 # generated.c3:179:14
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.LBB3_4:
	.cfi_def_cfa %rbp, 16
	.loc	2 182 25 is_stmt 1              # generated.c3:182:25
	movq	"closure.@generate_closure_call_func$lambda7.closure_ptr"(%rip), %rax
	movq	%rax, -352(%rbp)                # 8-byte Spill
	.loc	2 182 37 is_stmt 0              # generated.c3:182:37
	andq	$7, %rax
	movq	%rax, -344(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_13
# %bb.5:
	.loc	2 0 37                          # generated.c3:0:37
	movq	-352(%rbp), %rax                # 8-byte Reload
	.loc	2 182 25                        # generated.c3:182:25
	movq	(%rax), %rax
	movq	%rax, -360(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_14
# %bb.6:
	.loc	2 182 66                        # generated.c3:182:66
	movq	"closure.@generate_closure_call_func$lambda7.closure_ptr"(%rip), %rax
	.loc	2 182 78                        # generated.c3:182:78
	addq	$8, %rax
	movq	%rax, -376(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -368(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_15
# %bb.7:
	.loc	2 0 78                          # generated.c3:0:78
	movq	-376(%rbp), %rax                # 8-byte Reload
	.loc	2 182 66                        # generated.c3:182:66
	movq	(%rax), %rax
	movq	%rax, -384(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_16
# %bb.8:
	.loc	2 0 66                          # generated.c3:0:66
	movq	-384(%rbp), %rax                # 8-byte Reload
	.loc	2 182 42                        # generated.c3:182:42
	andq	$3, %rax
	movq	%rax, -392(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_17
# %bb.9:
	.loc	2 182 117                       # generated.c3:182:117
	movq	"closure.@generate_closure_call_func$lambda7.closure_ptr"(%rip), %rax
	.loc	2 182 129                       # generated.c3:182:129
	addq	$16, %rax
	movq	%rax, -408(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -400(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_18
# %bb.10:
	.loc	2 0 129                         # generated.c3:0:129
	movq	-408(%rbp), %rax                # 8-byte Reload
	.loc	2 182 117                       # generated.c3:182:117
	movq	(%rax), %rax
	movq	%rax, -416(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB3_19
# %bb.11:
	.loc	2 0 117                         # generated.c3:0:117
	movq	-416(%rbp), %rax                # 8-byte Reload
	.loc	2 182 93                        # generated.c3:182:93
	andq	$3, %rax
	movq	%rax, -424(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB3_20
# %bb.12:
	.loc	2 0 93                          # generated.c3:0:93
	movq	-360(%rbp), %rax                # 8-byte Reload
	movq	-416(%rbp), %rcx                # 8-byte Reload
	movq	-384(%rbp), %rdx                # 8-byte Reload
	.loc	2 182 143                       # generated.c3:182:143
	movl	(%rdx), %edi
	movl	(%rcx), %esi
	movl	-4(%rbp), %edx
	.loc	2 182 11                        # generated.c3:182:11
	callq	*%rax
	.loc	2 182 11 epilogue_begin         # generated.c3:182:11
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_13:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # generated.c3:0:11
	movq	-344(%rbp), %rcx                # 8-byte Reload
	movq	$8, -16(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -24(%rbp)
	movq	%rax, -56(%rbp)
	leaq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$2, -72(%rbp)
	.loc	2 182 25                        # generated.c3:182:25
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	leaq	-80(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_14:
	.loc	2 182 12                        # generated.c3:182:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$70, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.LBB3_15:
	.loc	2 0 12                          # generated.c3:0:12
	movq	-368(%rbp), %rcx                # 8-byte Reload
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
	.loc	2 182 66                        # generated.c3:182:66
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	leaq	-144(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_16:
	.loc	2 182 42                        # generated.c3:182:42
	leaq	.panic_msg.3(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.LBB3_17:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-392(%rbp), %rcx                # 8-byte Reload
	movq	$4, -152(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -160(%rbp)
	movq	%rax, -184(%rbp)
	leaq	-152(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	%rax, -168(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$2, -200(%rbp)
	.loc	2 182 42                        # generated.c3:182:42
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	leaq	-208(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_18:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-400(%rbp), %rcx                # 8-byte Reload
	movq	$8, -216(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -224(%rbp)
	movq	%rax, -248(%rbp)
	leaq	-216(%rbp), %rcx
	movq	%rcx, -256(%rbp)
	movq	%rax, -232(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$2, -264(%rbp)
	.loc	2 182 117                       # generated.c3:182:117
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	leaq	-272(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB3_19:
	.loc	2 182 93                        # generated.c3:182:93
	leaq	.panic_msg.4(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$182, (%rsp)
	callq	*(%rax)
.LBB3_20:
	.loc	2 0 93                          # generated.c3:0:93
	movq	-424(%rbp), %rcx                # 8-byte Reload
	movq	$4, -280(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -288(%rbp)
	movq	%rax, -312(%rbp)
	leaq	-280(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	%rax, -296(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, -304(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	$2, -328(%rbp)
	.loc	2 182 93                        # generated.c3:182:93
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.7(%rip), %r8
	movl	$43, %r9d
	leaq	-336(%rbp), %rax
	movl	$182, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp15:
.Lfunc_end3:
	.size	"closure.@generate_closure_call_func$lambda7", .Lfunc_end3-"closure.@generate_closure_call_func$lambda7"
	.cfi_endproc
                                        # -- End function
	.globl	"closure.@generate_closure_call_func$lambda9" # -- Begin function closure.@generate_closure_call_func$lambda9
	.p2align	4, 0x90
	.type	"closure.@generate_closure_call_func$lambda9",@function
"closure.@generate_closure_call_func$lambda9": # @"closure.@generate_closure_call_func$lambda9"
.Lfunc_begin4:
	.loc	2 38 0 is_stmt 1                # generated.c3:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp                      # imm = 0x110
.Ltmp16:
	.loc	3 367 18 prologue_end           # builtin.c3:367:18
	cmpq	$0, "closure.@generate_closure_call_func$lambda9.closure_ptr"(%rip)
	sete	%al
	.loc	3 367 26 is_stmt 0              # builtin.c3:367:26
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_4
.Ltmp17:
.LBB4_1:
	.loc	2 43 13 is_stmt 1               # generated.c3:43:13
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB4_3
# %bb.2:
	leaq	.panic_msg(%rip), %rdi
	movl	$33, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.8(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$43, (%rsp)
	callq	*(%rax)
.LBB4_3:
	.loc	2 44 20                         # generated.c3:44:20
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, "closure.@generate_closure_call_func$lambda9.closure_ptr"(%rip)
	.loc	2 45 6                          # generated.c3:45:6
	movq	closure.temp_closure_ptr@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	2 45 25 is_stmt 0               # generated.c3:45:25
	movq	$0, (%rax)
	.loc	2 49 14 is_stmt 1               # generated.c3:49:14
	xorl	%eax, %eax
	.loc	2 49 14 epilogue_begin is_stmt 0 # generated.c3:49:14
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp18:
.LBB4_4:
	.cfi_def_cfa %rbp, 16
	.loc	2 52 25 is_stmt 1               # generated.c3:52:25
	movq	"closure.@generate_closure_call_func$lambda9.closure_ptr"(%rip), %rax
	movq	%rax, -208(%rbp)                # 8-byte Spill
	.loc	2 52 37 is_stmt 0               # generated.c3:52:37
	andq	$7, %rax
	movq	%rax, -200(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_10
# %bb.5:
	.loc	2 0 37                          # generated.c3:0:37
	movq	-208(%rbp), %rax                # 8-byte Reload
	.loc	2 52 25                         # generated.c3:52:25
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_11
# %bb.6:
	.loc	2 52 66                         # generated.c3:52:66
	movq	"closure.@generate_closure_call_func$lambda9.closure_ptr"(%rip), %rax
	.loc	2 52 78                         # generated.c3:52:78
	addq	$8, %rax
	movq	%rax, -232(%rbp)                # 8-byte Spill
	andq	$7, %rax
	movq	%rax, -224(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_12
# %bb.7:
	.loc	2 0 78                          # generated.c3:0:78
	movq	-232(%rbp), %rax                # 8-byte Reload
	.loc	2 52 66                         # generated.c3:52:66
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB4_13
# %bb.8:
	.loc	2 0 66                          # generated.c3:0:66
	movq	-240(%rbp), %rax                # 8-byte Reload
	.loc	2 52 42                         # generated.c3:52:42
	andq	$3, %rax
	movq	%rax, -248(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB4_14
# %bb.9:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-216(%rbp), %rax                # 8-byte Reload
	movq	-240(%rbp), %rcx                # 8-byte Reload
	.loc	2 52 42                         # generated.c3:52:42
	movl	(%rcx), %edi
	.loc	2 52 11                         # generated.c3:52:11
	callq	*%rax
	.loc	2 52 11 epilogue_begin          # generated.c3:52:11
	addq	$272, %rsp                      # imm = 0x110
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_10:
	.cfi_def_cfa %rbp, 16
	.loc	2 0 11                          # generated.c3:0:11
	movq	-200(%rbp), %rcx                # 8-byte Reload
	movq	$8, -8(%rbp)
	movq	($ct.ulong)@GOTPCREL(%rip), %rax
	movq	%rcx, -16(%rbp)
	movq	%rax, -40(%rbp)
	leaq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$2, -56(%rbp)
	.loc	2 52 25                         # generated.c3:52:25
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.8(%rip), %r8
	movl	$43, %r9d
	leaq	-64(%rbp), %rax
	movl	$52, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_11:
	.loc	2 52 12                         # generated.c3:52:12
	leaq	.panic_msg.2(%rip), %rdi
	movl	$70, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.8(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$52, (%rsp)
	callq	*(%rax)
.LBB4_12:
	.loc	2 0 12                          # generated.c3:0:12
	movq	-224(%rbp), %rcx                # 8-byte Reload
	movq	$8, -72(%rbp)
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
	.loc	2 52 66                         # generated.c3:52:66
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.8(%rip), %r8
	movl	$43, %r9d
	leaq	-128(%rbp), %rax
	movl	$52, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.LBB4_13:
	.loc	2 52 42                         # generated.c3:52:42
	leaq	.panic_msg.3(%rip), %rdi
	movl	$89, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.8(%rip), %r8
	movl	$43, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$52, (%rsp)
	callq	*(%rax)
.LBB4_14:
	.loc	2 0 42                          # generated.c3:0:42
	movq	-248(%rbp), %rcx                # 8-byte Reload
	movq	$4, -136(%rbp)
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
	.loc	2 52 42                         # generated.c3:52:42
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$12, %ecx
	leaq	.func.8(%rip), %r8
	movl	$43, %r9d
	leaq	-192(%rbp), %rax
	movl	$52, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp19:
.Lfunc_end4:
	.size	"closure.@generate_closure_call_func$lambda9", .Lfunc_end4-"closure.@generate_closure_call_func$lambda9"
	.cfi_endproc
                                        # -- End function
	.type	closure.temp_closure_ptr,@object # @closure.temp_closure_ptr
	.section	.tbss,"awT",@nobits
	.globl	closure.temp_closure_ptr
	.p2align	3, 0x0
closure.temp_closure_ptr:
	.quad	0
	.size	closure.temp_closure_ptr, 8

	.type	"closure.@generate_closure_call_func$lambda2.closure_ptr",@object # @"closure.@generate_closure_call_func$lambda2.closure_ptr"
	.local	"closure.@generate_closure_call_func$lambda2.closure_ptr"
	.comm	"closure.@generate_closure_call_func$lambda2.closure_ptr",8,8
	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Assert \"temp_closure_ptr\" failed."
	.size	.panic_msg, 34

	.type	.file,@object                   # @.file
.file:
	.asciz	"generated.c3"
	.size	.file, 13

	.type	.func,@object                   # @.func
.func:
	.asciz	"closure.@generate_closure_call_func$lambda2"
	.size	.func, 44

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
	.asciz	"Calling null function pointer, '($OrigFnType)closure_ptr[0]' was null."
	.size	.panic_msg.2, 71

	.type	.panic_msg.3,@object            # @.panic_msg.3
.panic_msg.3:
	.asciz	"Dereference of null pointer, '($typefrom($params[0])*)closure_ptr[$offset + 0]' was null."
	.size	.panic_msg.3, 90

	.type	.panic_msg.4,@object            # @.panic_msg.4
.panic_msg.4:
	.asciz	"Dereference of null pointer, '($typefrom($params[1])*)closure_ptr[$offset + 1]' was null."
	.size	.panic_msg.4, 90

	.type	"closure.@generate_closure_call_func$lambda4.closure_ptr",@object # @"closure.@generate_closure_call_func$lambda4.closure_ptr"
	.local	"closure.@generate_closure_call_func$lambda4.closure_ptr"
	.comm	"closure.@generate_closure_call_func$lambda4.closure_ptr",8,8
	.type	.func.5,@object                 # @.func.5
.func.5:
	.asciz	"closure.@generate_closure_call_func$lambda4"
	.size	.func.5, 44

	.type	"closure.@generate_closure_call_func$lambda6.closure_ptr",@object # @"closure.@generate_closure_call_func$lambda6.closure_ptr"
	.local	"closure.@generate_closure_call_func$lambda6.closure_ptr"
	.comm	"closure.@generate_closure_call_func$lambda6.closure_ptr",8,8
	.type	.func.6,@object                 # @.func.6
.func.6:
	.asciz	"closure.@generate_closure_call_func$lambda6"
	.size	.func.6, 44

	.type	"closure.@generate_closure_call_func$lambda7.closure_ptr",@object # @"closure.@generate_closure_call_func$lambda7.closure_ptr"
	.local	"closure.@generate_closure_call_func$lambda7.closure_ptr"
	.comm	"closure.@generate_closure_call_func$lambda7.closure_ptr",8,8
	.type	.func.7,@object                 # @.func.7
.func.7:
	.asciz	"closure.@generate_closure_call_func$lambda7"
	.size	.func.7, 44

	.type	"closure.@generate_closure_call_func$lambda9.closure_ptr",@object # @"closure.@generate_closure_call_func$lambda9.closure_ptr"
	.local	"closure.@generate_closure_call_func$lambda9.closure_ptr"
	.comm	"closure.@generate_closure_call_func$lambda9.closure_ptr",8,8
	.type	.func.8,@object                 # @.func.8
.func.8:
	.asciz	"closure.@generate_closure_call_func$lambda9"
	.size	.func.8, 44

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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
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
	.byte	5                               # DW_FORM_data2
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
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x246 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1b DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	69                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	4                               # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	closure.temp_closure_ptr@DTPOFF
	.byte	224
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x45:0xd DW_TAG_pointer_type
	.long	82                              # DW_AT_type
	.long	.Linfo_string5                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	4                               # Abbrev [4] 0x52:0x9 DW_TAG_pointer_type
	.long	.Linfo_string4                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	5                               # Abbrev [5] 0x5b:0x1a DW_TAG_variable
	.long	.Linfo_string7                  # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	"closure.@generate_closure_call_func$lambda2.closure_ptr"
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x75:0x1a DW_TAG_variable
	.long	.Linfo_string7                  # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	"closure.@generate_closure_call_func$lambda4.closure_ptr"
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x8f:0x1a DW_TAG_variable
	.long	.Linfo_string7                  # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	"closure.@generate_closure_call_func$lambda6.closure_ptr"
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0xa9:0x1a DW_TAG_variable
	.long	.Linfo_string7                  # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	"closure.@generate_closure_call_func$lambda7.closure_ptr"
	.long	.Linfo_string11                 # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0xc3:0x1a DW_TAG_variable
	.long	.Linfo_string7                  # DW_AT_name
	.long	69                              # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	"closure.@generate_closure_call_func$lambda9.closure_ptr"
	.long	.Linfo_string12                 # DW_AT_linkage_name
	.byte	6                               # Abbrev [6] 0xdd:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0xea:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	574                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x107:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x115:0x14 DW_TAG_inlined_subroutine
	.long	221                             # DW_AT_abstract_origin
	.quad	.Ltmp0                          # DW_AT_low_pc
	.long	.Ltmp1-.Ltmp0                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	171                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x12a:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	10                              # Abbrev [10] 0x137:0x2e DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string16                 # DW_AT_linkage_name
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x150:0x14 DW_TAG_inlined_subroutine
	.long	298                             # DW_AT_abstract_origin
	.quad	.Ltmp4                          # DW_AT_low_pc
	.long	.Ltmp5-.Ltmp4                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	86                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x165:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x172:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string17                 # DW_AT_linkage_name
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	574                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x18f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x19d:0x14 DW_TAG_inlined_subroutine
	.long	357                             # DW_AT_abstract_origin
	.quad	.Ltmp8                          # DW_AT_low_pc
	.long	.Ltmp9-.Ltmp8                   # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	61                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1b2:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x1bf:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	574                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x1dc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.long	574                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1ea:0x14 DW_TAG_inlined_subroutine
	.long	434                             # DW_AT_abstract_origin
	.quad	.Ltmp12                         # DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	171                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1ff:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.short	361                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x20c:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	581                             # DW_AT_type
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x229:0x14 DW_TAG_inlined_subroutine
	.long	511                             # DW_AT_abstract_origin
	.quad	.Ltmp16                         # DW_AT_low_pc
	.long	.Ltmp17-.Ltmp16                 # DW_AT_high_pc
	.byte	2                               # DW_AT_call_file
	.byte	41                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x23e:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x245:0xb DW_TAG_typedef
	.long	574                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"closure.c3"                    # string offset=4
.Linfo_string2:
	.asciz	"/home/user/code/c3/closures.c3l" # string offset=15
.Linfo_string3:
	.asciz	"temp_closure_ptr"              # string offset=47
.Linfo_string4:
	.asciz	"void*"                         # string offset=64
.Linfo_string5:
	.asciz	"void**"                        # string offset=70
.Linfo_string6:
	.asciz	"closure.temp_closure_ptr"      # string offset=77
.Linfo_string7:
	.asciz	"closure_ptr"                   # string offset=102
.Linfo_string8:
	.asciz	"closure.@generate_closure_call_func$lambda2.closure_ptr" # string offset=114
.Linfo_string9:
	.asciz	"closure.@generate_closure_call_func$lambda4.closure_ptr" # string offset=170
.Linfo_string10:
	.asciz	"closure.@generate_closure_call_func$lambda6.closure_ptr" # string offset=226
.Linfo_string11:
	.asciz	"closure.@generate_closure_call_func$lambda7.closure_ptr" # string offset=282
.Linfo_string12:
	.asciz	"closure.@generate_closure_call_func$lambda9.closure_ptr" # string offset=338
.Linfo_string13:
	.asciz	"@unlikely"                     # string offset=394
.Linfo_string14:
	.asciz	"closure.@generate_closure_call_func$lambda2" # string offset=404
.Linfo_string15:
	.asciz	"int"                           # string offset=448
.Linfo_string16:
	.asciz	"closure.@generate_closure_call_func$lambda4" # string offset=452
.Linfo_string17:
	.asciz	"closure.@generate_closure_call_func$lambda6" # string offset=496
.Linfo_string18:
	.asciz	"closure.@generate_closure_call_func$lambda7" # string offset=540
.Linfo_string19:
	.asciz	"closure.@generate_closure_call_func$lambda9" # string offset=584
.Linfo_string20:
	.asciz	"CInt"                          # string offset=628
.Linfo_string21:
	.asciz	"a"                             # string offset=633
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	593                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"temp_closure_ptr"              # External Name
	.long	195                             # DIE offset
	.asciz	"closure_ptr"                   # External Name
	.long	234                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda2" # External Name
	.long	311                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda4" # External Name
	.long	370                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda6" # External Name
	.long	447                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda7" # External Name
	.long	511                             # DIE offset
	.asciz	"@unlikely"                     # External Name
	.long	524                             # DIE offset
	.asciz	"closure.@generate_closure_call_func$lambda9" # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	593                             # Compilation Unit Length
	.long	69                              # DIE offset
	.asciz	"void**"                        # External Name
	.long	82                              # DIE offset
	.asciz	"void*"                         # External Name
	.long	574                             # DIE offset
	.asciz	"int"                           # External Name
	.long	581                             # DIE offset
	.asciz	"CInt"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

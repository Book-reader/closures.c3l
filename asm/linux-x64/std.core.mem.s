	.text
	.file	"std::core::mem"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem.c3"
	.section	.text.std.core.mem.os_pagesize,"axG",@progbits,std.core.mem.os_pagesize,comdat
	.weak	std.core.mem.os_pagesize        # -- Begin function std.core.mem.os_pagesize
	.p2align	4, 0x90
	.type	std.core.mem.os_pagesize,@function
std.core.mem.os_pagesize:               # @std.core.mem.os_pagesize
.Lfunc_begin0:
	.loc	1 23 0                          # mem.c3:23:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	.loc	1 28 8 prologue_end             # mem.c3:28:8
	cmpq	$0, os_pagesize.pagesize(%rip)
	je	.LBB0_2
# %bb.1:
	.loc	1 28 25 is_stmt 0               # mem.c3:28:25
	movq	os_pagesize.pagesize(%rip), %rax
	.loc	1 28 25 epilogue_begin          # mem.c3:28:25
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_2:
	.cfi_def_cfa %rbp, 16
	.loc	1 29 22 is_stmt 1               # mem.c3:29:22
	callq	getpagesize@PLT
	cltq
	movq	%rax, os_pagesize.pagesize(%rip)
	.loc	1 29 22 epilogue_begin is_stmt 0 # mem.c3:29:22
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	std.core.mem.os_pagesize, .Lfunc_end0-std.core.mem.os_pagesize
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.aligned_offset,"axG",@progbits,std.core.mem.aligned_offset,comdat
	.weak	std.core.mem.aligned_offset     # -- Begin function std.core.mem.aligned_offset
	.p2align	4, 0x90
	.type	std.core.mem.aligned_offset,@function
std.core.mem.aligned_offset:            # @std.core.mem.aligned_offset
.Lfunc_begin1:
	.loc	1 306 0 is_stmt 1               # mem.c3:306:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.Ltmp2:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	2 992 9 prologue_end            # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-24(%rbp), %rcx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB1_2
# %bb.1:
	.loc	2 992 20 is_stmt 0              # math.c3:992:20
	movq	-24(%rbp), %rax
	.loc	2 992 25                        # math.c3:992:25
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	.loc	2 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	2 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB1_2:
	.loc	2 0 19                          # math.c3:0:19
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB1_4
.Ltmp3:
# %bb.3:
	.loc	1 304 11 is_stmt 1              # mem.c3:304:11
	leaq	.panic_msg(%rip), %rdi
	movl	$51, %esi
	leaq	.file(%rip), %rdx
	movl	$6, %ecx
	leaq	.func(%rip), %r8
	movl	$14, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$304, (%rsp)                    # imm = 0x130
	callq	*(%rax)
.Ltmp4:
.LBB1_4:
	.loc	1 308 10                        # mem.c3:308:10
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	subq	$1, %rax
	.loc	1 308 38 is_stmt 0              # mem.c3:308:38
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	xorq	$-1, %rcx
	.loc	1 308 9                         # mem.c3:308:9
	andq	%rcx, %rax
	.loc	1 308 9 epilogue_begin          # mem.c3:308:9
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end1:
	.size	std.core.mem.aligned_offset, .Lfunc_end1-std.core.mem.aligned_offset
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.ptr_is_aligned,"axG",@progbits,std.core.mem.ptr_is_aligned,comdat
	.weak	std.core.mem.ptr_is_aligned     # -- Begin function std.core.mem.ptr_is_aligned
	.p2align	4, 0x90
	.type	std.core.mem.ptr_is_aligned,@function
std.core.mem.ptr_is_aligned:            # @std.core.mem.ptr_is_aligned
.Lfunc_begin2:
	.loc	1 319 0 is_stmt 1               # mem.c3:319:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.Ltmp6:
	.loc	2 992 9 prologue_end            # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-24(%rbp), %rcx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB2_2
# %bb.1:
	.loc	2 992 20 is_stmt 0              # math.c3:992:20
	movq	-24(%rbp), %rax
	.loc	2 992 25                        # math.c3:992:25
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	.loc	2 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	2 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_2:
	.loc	2 0 19                          # math.c3:0:19
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB2_4
.Ltmp7:
# %bb.3:
	.loc	1 317 11 is_stmt 1              # mem.c3:317:11
	leaq	.panic_msg(%rip), %rdi
	movl	$51, %esi
	leaq	.file(%rip), %rdx
	movl	$6, %ecx
	leaq	.func.1(%rip), %r8
	movl	$14, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$317, (%rsp)                    # imm = 0x13D
	callq	*(%rax)
.Ltmp8:
.LBB2_4:
	.loc	1 321 9                         # mem.c3:321:9
	movq	-8(%rbp), %rax
	.loc	1 321 22 is_stmt 0              # mem.c3:321:22
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	.loc	1 321 9                         # mem.c3:321:9
	andq	%rcx, %rax
	cmpq	$0, %rax
	sete	%al
	andb	$1, %al
	.loc	1 321 9 epilogue_begin          # mem.c3:321:9
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end2:
	.size	std.core.mem.ptr_is_aligned, .Lfunc_end2-std.core.mem.ptr_is_aligned
	.cfi_endproc
                                        # -- End function
	.section	.text.std.core.mem.free,"axG",@progbits,std.core.mem.free,comdat
	.weak	std.core.mem.free               # -- Begin function std.core.mem.free
	.p2align	4, 0x90
	.type	std.core.mem.free,@function
std.core.mem.free:                      # @std.core.mem.free
.Lfunc_begin3:
	.loc	1 929 0 is_stmt 1               # mem.c3:929:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	$0, -48(%rbp)
	movq	%rdi, -8(%rbp)
.Ltmp10:
	.loc	1 931 25 prologue_end           # mem.c3:931:25
	movq	std.core.mem.allocator.thread_allocator@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.Ltmp11:
	.file	3 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "mem_allocator.c3"
	.loc	3 119 6                         # mem_allocator.c3:119:6
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# %bb.1:
	.loc	3 119 18 is_stmt 0              # mem_allocator.c3:119:18
	jmp	.LBB3_10
.LBB3_2:
	.loc	3 123 20 is_stmt 1              # mem_allocator.c3:123:20
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	3 123 2 is_stmt 0               # mem_allocator.c3:123:2
	cmpq	$0, %rax
	jne	.LBB3_4
# %bb.3:
	leaq	.panic_msg.2(%rip), %rdi
	movl	$75, %esi
	leaq	.file.3(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.4(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_4:
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	cmpq	-48(%rbp), %rax
	je	.LBB3_6
# %bb.5:
	.loc	3 0 2                           # mem_allocator.c3:0:2
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	16(%rax), %rdi
	movq	($sel.release)@GOTPCREL(%rip), %rsi
	callq	.dyn_search@PLT
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB3_7
.LBB3_6:
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
.LBB3_7:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB3_9
# %bb.8:
	.loc	3 123 2                         # mem_allocator.c3:123:2
	leaq	.panic_msg.5(%rip), %rdi
	movl	$44, %esi
	leaq	.file.3(%rip), %rdx
	movl	$16, %ecx
	leaq	.func.4(%rip), %r8
	movl	$4, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$123, (%rsp)
	callq	*(%rax)
.LBB3_9:
	.loc	3 0 2                           # mem_allocator.c3:0:2
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	.loc	3 123 2                         # mem_allocator.c3:123:2
	movq	-24(%rbp), %rdi
	xorl	%edx, %edx
	callq	*%rax
.LBB3_10:
	.loc	3 123 2 epilogue_begin          # mem_allocator.c3:123:2
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.Lfunc_end3:
	.size	std.core.mem.free, .Lfunc_end3-std.core.mem.free
	.cfi_endproc
                                        # -- End function
	.section	.text..dyn_search,"axG",@progbits,.dyn_search,comdat
	.weak	.dyn_search                     # -- Begin function .dyn_search
	.p2align	4, 0x90
	.type	.dyn_search,@function
.dyn_search:                            # @.dyn_search
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB4_3
# %bb.2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	retq
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB4_5
# %bb.4:
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	retq
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB4_1
.Lfunc_end4:
	.size	.dyn_search, .Lfunc_end4-.dyn_search
	.cfi_endproc
                                        # -- End function
	.type	os_pagesize.pagesize,@object    # @os_pagesize.pagesize
	.local	os_pagesize.pagesize
	.comm	os_pagesize.pagesize,8,8
	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"@require \"math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg, 52

	.type	.file,@object                   # @.file
.file:
	.asciz	"mem.c3"
	.size	.file, 7

	.type	.func,@object                   # @.func
.func:
	.asciz	"aligned_offset"
	.size	.func, 15

	.type	.func.1,@object                 # @.func.1
.func.1:
	.asciz	"ptr_is_aligned"
	.size	.func.1, 15

	.type	$sel.release,@object            # @"$sel.release"
	.section	".rodata.$sel.release","aG",@progbits,"$sel.release",comdat
	.weak	$sel.release
$sel.release:
	.asciz	"release"
	.size	$sel.release, 8

	.type	.panic_msg.2,@object            # @.panic_msg.2
	.section	.rodata,"a",@progbits
.panic_msg.2:
	.asciz	"@require \"ptr != null\" violated: 'Empty pointers should never be released'."
	.size	.panic_msg.2, 76

	.type	.file.3,@object                 # @.file.3
.file.3:
	.asciz	"mem_allocator.c3"
	.size	.file.3, 17

	.type	.func.4,@object                 # @.func.4
.func.4:
	.asciz	"free"
	.size	.func.4, 5

	.type	.panic_msg.5,@object            # @.panic_msg.5
.panic_msg.5:
	.asciz	"No method 'release' could be found on target"
	.size	.panic_msg.5, 45

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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
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
	.byte	5                               # DW_FORM_data2
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xb:0x180 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x1a DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	68                              # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	os_pagesize.pagesize
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x44:0x9 DW_TAG_typedef
	.long	77                              # DW_AT_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	4                               # Abbrev [4] 0x4d:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x54:0x1d DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	68                              # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x71:0xd DW_TAG_subprogram
	.long	.Linfo_string7                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0x7e:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_linkage_name
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	68                              # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x9c:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	8                               # Abbrev [8] 0xab:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	306                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0xba:0x15 DW_TAG_inlined_subroutine
	.long	113                             # DW_AT_abstract_origin
	.quad	.Ltmp2                          # DW_AT_low_pc
	.long	.Ltmp3-.Ltmp2                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	304                             # DW_AT_call_line
	.byte	11                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xd0:0xd DW_TAG_subprogram
	.long	.Linfo_string7                  # DW_AT_linkage_name
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	7                               # Abbrev [7] 0xdd:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	378                             # DW_AT_type
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0xfb:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.long	385                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x10a:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	319                             # DW_AT_decl_line
	.long	68                              # DW_AT_type
	.byte	9                               # Abbrev [9] 0x119:0x15 DW_TAG_inlined_subroutine
	.long	208                             # DW_AT_abstract_origin
	.quad	.Ltmp6                          # DW_AT_low_pc
	.long	.Ltmp7-.Ltmp6                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	317                             # DW_AT_call_line
	.byte	11                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x12f:0xc DW_TAG_subprogram
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.long	.Linfo_string8                  # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	11                              # Abbrev [11] 0x13b:0x3f DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string16                 # DW_AT_linkage_name
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	929                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	8                               # Abbrev [8] 0x155:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	929                             # DW_AT_decl_line
	.long	385                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x164:0x15 DW_TAG_inlined_subroutine
	.long	303                             # DW_AT_abstract_origin
	.quad	.Ltmp11                         # DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.short	931                             # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x17a:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	12                              # Abbrev [12] 0x181:0x9 DW_TAG_pointer_type
	.long	.Linfo_string20                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end3
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"mem.c3"                        # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" # string offset=11
.Linfo_string3:
	.asciz	"pagesize"                      # string offset=81
.Linfo_string4:
	.asciz	"ulong"                         # string offset=90
.Linfo_string5:
	.asciz	"usz"                           # string offset=96
.Linfo_string6:
	.asciz	"os_pagesize.pagesize"          # string offset=100
.Linfo_string7:
	.asciz	"is_power_of_2"                 # string offset=121
.Linfo_string8:
	.asciz	"free"                          # string offset=135
.Linfo_string9:
	.asciz	"std.core.mem.os_pagesize"      # string offset=140
.Linfo_string10:
	.asciz	"os_pagesize"                   # string offset=165
.Linfo_string11:
	.asciz	"std.core.mem.aligned_offset"   # string offset=177
.Linfo_string12:
	.asciz	"aligned_offset"                # string offset=205
.Linfo_string13:
	.asciz	"std.core.mem.ptr_is_aligned"   # string offset=220
.Linfo_string14:
	.asciz	"ptr_is_aligned"                # string offset=248
.Linfo_string15:
	.asciz	"bool"                          # string offset=263
.Linfo_string16:
	.asciz	"std.core.mem.free"             # string offset=268
.Linfo_string17:
	.asciz	"offset"                        # string offset=286
.Linfo_string18:
	.asciz	"alignment"                     # string offset=293
.Linfo_string19:
	.asciz	"ptr"                           # string offset=303
.Linfo_string20:
	.asciz	"void*"                         # string offset=307
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	395                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"pagesize"                      # External Name
	.long	84                              # DIE offset
	.asciz	"os_pagesize"                   # External Name
	.long	126                             # DIE offset
	.asciz	"aligned_offset"                # External Name
	.long	208                             # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	221                             # DIE offset
	.asciz	"ptr_is_aligned"                # External Name
	.long	315                             # DIE offset
	.asciz	"free"                          # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	395                             # Compilation Unit Length
	.long	68                              # DIE offset
	.asciz	"usz"                           # External Name
	.long	77                              # DIE offset
	.asciz	"ulong"                         # External Name
	.long	378                             # DIE offset
	.asciz	"bool"                          # External Name
	.long	385                             # DIE offset
	.asciz	"void*"                         # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panic
	.weak	std.core.mem.allocator.thread_allocator
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

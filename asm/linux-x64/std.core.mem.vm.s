	.text
	.file	"std::core::mem::vm"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/os" "mem_vm.c3"
	.section	.text.std.core.mem.vm.VirtualMemoryAccess.to_posix,"axG",@progbits,std.core.mem.vm.VirtualMemoryAccess.to_posix,comdat
	.weak	std.core.mem.vm.VirtualMemoryAccess.to_posix # -- Begin function std.core.mem.vm.VirtualMemoryAccess.to_posix
	.p2align	4, 0x90
	.type	std.core.mem.vm.VirtualMemoryAccess.to_posix,@function
std.core.mem.vm.VirtualMemoryAccess.to_posix: # @std.core.mem.vm.VirtualMemoryAccess.to_posix
.Lfunc_begin0:
	.loc	1 324 0                         # mem_vm.c3:324:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
# %bb.1:
	movl	-8(%rbp), %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
# %bb.11:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_2:
.Ltmp0:
	.loc	1 328 26 prologue_end           # mem_vm.c3:328:26
	xorl	%eax, %eax
	.loc	1 328 26 epilogue_begin is_stmt 0 # mem_vm.c3:328:26
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.LBB0_3:
	.cfi_def_cfa %rbp, 16
	.loc	1 329 21 is_stmt 1              # mem_vm.c3:329:21
	movl	$1, %eax
	.loc	1 329 21 epilogue_begin is_stmt 0 # mem_vm.c3:329:21
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp2:
.LBB0_4:
	.cfi_def_cfa %rbp, 16
	.loc	1 330 22 is_stmt 1              # mem_vm.c3:330:22
	movl	$2, %eax
	.loc	1 330 22 epilogue_begin is_stmt 0 # mem_vm.c3:330:22
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.LBB0_5:
	.cfi_def_cfa %rbp, 16
	.loc	1 331 21 is_stmt 1              # mem_vm.c3:331:21
	movl	$4, %eax
	.loc	1 331 21 epilogue_begin is_stmt 0 # mem_vm.c3:331:21
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.LBB0_6:
	.cfi_def_cfa %rbp, 16
	.loc	1 332 26 is_stmt 1              # mem_vm.c3:332:26
	movl	$3, %eax
	.loc	1 332 26 epilogue_begin is_stmt 0 # mem_vm.c3:332:26
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.LBB0_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 333 25 is_stmt 1              # mem_vm.c3:333:25
	movl	$5, %eax
	.loc	1 333 25 epilogue_begin is_stmt 0 # mem_vm.c3:333:25
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.LBB0_8:
	.cfi_def_cfa %rbp, 16
	.loc	1 334 26 is_stmt 1              # mem_vm.c3:334:26
	movl	$6, %eax
	.loc	1 334 26 epilogue_begin is_stmt 0 # mem_vm.c3:334:26
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.LBB0_9:
	.cfi_def_cfa %rbp, 16
	.loc	1 335 20 is_stmt 1              # mem_vm.c3:335:20
	movl	$7, %eax
	.loc	1 335 20 epilogue_begin is_stmt 0 # mem_vm.c3:335:20
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp8:
# %bb.10:
.Lfunc_end0:
	.size	std.core.mem.vm.VirtualMemoryAccess.to_posix, .Lfunc_end0-std.core.mem.vm.VirtualMemoryAccess.to_posix
	.cfi_endproc
	.section	.rodata.std.core.mem.vm.VirtualMemoryAccess.to_posix,"aG",@progbits,std.core.mem.vm.VirtualMemoryAccess.to_posix,comdat
	.p2align	2, 0x0
.LJTI0_0:
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
                                        # -- End function
	.section	.text.std.core.mem.vm.aligned_alloc_size,"axG",@progbits,std.core.mem.vm.aligned_alloc_size,comdat
	.weak	std.core.mem.vm.aligned_alloc_size # -- Begin function std.core.mem.vm.aligned_alloc_size
	.p2align	4, 0x90
	.type	std.core.mem.vm.aligned_alloc_size,@function
std.core.mem.vm.aligned_alloc_size:     # @std.core.mem.vm.aligned_alloc_size
.Lfunc_begin1:
	.loc	1 32 0 is_stmt 1                # mem_vm.c3:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp9:
	.loc	1 37 10 prologue_end            # mem_vm.c3:37:10
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	-8(%rbp), %rax
	jae	.LBB1_6
# %bb.1:
	.loc	1 37 41 is_stmt 0               # mem_vm.c3:37:41
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 37 47                         # mem_vm.c3:37:47
	callq	std.core.mem.os_pagesize@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	%rax, -16(%rbp)
.Ltmp10:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/math" "math.c3"
	.loc	2 992 9 is_stmt 1               # math.c3:992:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	-16(%rbp), %rcx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	je	.LBB1_3
# %bb.2:
	.loc	2 992 20 is_stmt 0              # math.c3:992:20
	movq	-16(%rbp), %rax
	.loc	2 992 25                        # math.c3:992:25
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	.loc	2 992 20                        # math.c3:992:20
	andq	%rcx, %rax
	.loc	2 992 19                        # math.c3:992:19
	cmpq	$0, %rax
	sete	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB1_3:
	.loc	2 0 19                          # math.c3:0:19
	movb	-17(%rbp), %al                  # 1-byte Reload
	.loc	2 992 19                        # math.c3:992:19
	testb	$1, %al
	jne	.LBB1_5
.Ltmp11:
# %bb.4:
	.loc	1 37 21 is_stmt 1               # mem_vm.c3:37:21
	leaq	.panic_msg(%rip), %rdi
	movl	$51, %esi
	leaq	.file(%rip), %rdx
	movl	$9, %ecx
	leaq	.func(%rip), %r8
	movl	$18, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$37, (%rsp)
	callq	*(%rax)
.LBB1_5:
	.loc	1 0 21 is_stmt 0                # mem_vm.c3:0:21
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	.loc	1 37 21                         # mem_vm.c3:37:21
	callq	std.core.mem.aligned_offset@PLT
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:
	.loc	1 37 69                         # mem_vm.c3:37:69
	callq	std.core.mem.os_pagesize@PLT
	movq	%rax, -48(%rbp)                 # 8-byte Spill
.LBB1_7:
	.loc	1 0 69                          # mem_vm.c3:0:69
	movq	-48(%rbp), %rax                 # 8-byte Reload
	.loc	1 37 69 epilogue_begin          # mem_vm.c3:37:69
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.Lfunc_end1:
	.size	std.core.mem.vm.aligned_alloc_size, .Lfunc_end1-std.core.mem.vm.aligned_alloc_size
	.cfi_endproc
                                        # -- End function
	.type	.enum.PROTECTED,@object         # @.enum.PROTECTED
	.section	.rodata,"a",@progbits
.enum.PROTECTED:
	.asciz	"PROTECTED"
	.size	.enum.PROTECTED, 10

	.type	.enum.READ,@object              # @.enum.READ
.enum.READ:
	.asciz	"READ"
	.size	.enum.READ, 5

	.type	.enum.WRITE,@object             # @.enum.WRITE
.enum.WRITE:
	.asciz	"WRITE"
	.size	.enum.WRITE, 6

	.type	.enum.READWRITE,@object         # @.enum.READWRITE
.enum.READWRITE:
	.asciz	"READWRITE"
	.size	.enum.READWRITE, 10

	.type	.enum.EXEC,@object              # @.enum.EXEC
.enum.EXEC:
	.asciz	"EXEC"
	.size	.enum.EXEC, 5

	.type	.enum.EXECREAD,@object          # @.enum.EXECREAD
.enum.EXECREAD:
	.asciz	"EXECREAD"
	.size	.enum.EXECREAD, 9

	.type	.enum.EXECWRITE,@object         # @.enum.EXECWRITE
.enum.EXECWRITE:
	.asciz	"EXECWRITE"
	.size	.enum.EXECWRITE, 10

	.type	.enum.ANY,@object               # @.enum.ANY
.enum.ANY:
	.asciz	"ANY"
	.size	.enum.ANY, 4

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

	.type	$ct.std.core.mem.vm.VirtualMemoryAccess,@object # @"$ct.std.core.mem.vm.VirtualMemoryAccess"
	.section	".data.$ct.std.core.mem.vm.VirtualMemoryAccess","awG",@progbits,"$ct.std.core.mem.vm.VirtualMemoryAccess",comdat
	.weak	$ct.std.core.mem.vm.VirtualMemoryAccess
	.p2align	3, 0x0
$ct.std.core.mem.vm.VirtualMemoryAccess:
	.byte	8                               # 0x8
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	4                               # 0x4
	.quad	($ct.int)
	.quad	8                               # 0x8
	.quad	.enum.PROTECTED
	.quad	9                               # 0x9
	.quad	.enum.READ
	.quad	4                               # 0x4
	.quad	.enum.WRITE
	.quad	5                               # 0x5
	.quad	.enum.READWRITE
	.quad	9                               # 0x9
	.quad	.enum.EXEC
	.quad	4                               # 0x4
	.quad	.enum.EXECREAD
	.quad	8                               # 0x8
	.quad	.enum.EXECWRITE
	.quad	9                               # 0x9
	.quad	.enum.ANY
	.quad	3                               # 0x3
	.size	$ct.std.core.mem.vm.VirtualMemoryAccess, 176

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"@require \"math::is_power_of_2(alignment)\" violated."
	.size	.panic_msg, 52

	.type	.file,@object                   # @.file
.file:
	.asciz	"mem_vm.c3"
	.size	.file, 10

	.type	.func,@object                   # @.func
.func:
	.asciz	"aligned_alloc_size"
	.size	.func, 19

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
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xfb DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	0                               # DW_AT_low_pc
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	2                               # Abbrev [2] 0x2a:0x3e DW_TAG_enumeration_type
	.long	104                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	4                               # DW_AT_alignment
	.byte	3                               # Abbrev [3] 0x37:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3d:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x43:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x49:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4f:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x55:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5b:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x61:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x68:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x6f:0x2e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	234                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x8d:0xf DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	324                             # DW_AT_decl_line
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x9d:0xd DW_TAG_subprogram
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.short	990                             # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	8                               # Abbrev [8] 0xaa:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string17                 # DW_AT_linkage_name
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	245                             # DW_AT_type
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0xc7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	245                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0xd5:0x14 DW_TAG_inlined_subroutine
	.long	157                             # DW_AT_abstract_origin
	.quad	.Ltmp10                         # DW_AT_low_pc
	.long	.Ltmp11-.Ltmp10                 # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	37                              # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xea:0xb DW_TAG_typedef
	.long	104                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xf5:0x9 DW_TAG_typedef
	.long	254                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	4                               # Abbrev [4] 0xfe:0x7 DW_TAG_base_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"mem_vm.c3"                     # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core/os" # string offset=14
.Linfo_string3:
	.asciz	"int"                           # string offset=87
.Linfo_string4:
	.asciz	"PROTECTED"                     # string offset=91
.Linfo_string5:
	.asciz	"READ"                          # string offset=101
.Linfo_string6:
	.asciz	"WRITE"                         # string offset=106
.Linfo_string7:
	.asciz	"READWRITE"                     # string offset=112
.Linfo_string8:
	.asciz	"EXEC"                          # string offset=122
.Linfo_string9:
	.asciz	"EXECREAD"                      # string offset=127
.Linfo_string10:
	.asciz	"EXECWRITE"                     # string offset=136
.Linfo_string11:
	.asciz	"ANY"                           # string offset=146
.Linfo_string12:
	.asciz	"VirtualMemoryAccess"           # string offset=150
.Linfo_string13:
	.asciz	"is_power_of_2"                 # string offset=170
.Linfo_string14:
	.asciz	"std.core.mem.vm.VirtualMemoryAccess.to_posix" # string offset=184
.Linfo_string15:
	.asciz	"to_posix"                      # string offset=229
.Linfo_string16:
	.asciz	"CInt"                          # string offset=238
.Linfo_string17:
	.asciz	"std.core.mem.vm.aligned_alloc_size" # string offset=243
.Linfo_string18:
	.asciz	"aligned_alloc_size"            # string offset=278
.Linfo_string19:
	.asciz	"ulong"                         # string offset=297
.Linfo_string20:
	.asciz	"usz"                           # string offset=303
.Linfo_string21:
	.asciz	"self"                          # string offset=307
.Linfo_string22:
	.asciz	"size"                          # string offset=312
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	262                             # Compilation Unit Length
	.long	55                              # DIE offset
	.asciz	"PROTECTED"                     # External Name
	.long	61                              # DIE offset
	.asciz	"READ"                          # External Name
	.long	67                              # DIE offset
	.asciz	"WRITE"                         # External Name
	.long	73                              # DIE offset
	.asciz	"READWRITE"                     # External Name
	.long	79                              # DIE offset
	.asciz	"EXEC"                          # External Name
	.long	85                              # DIE offset
	.asciz	"EXECREAD"                      # External Name
	.long	91                              # DIE offset
	.asciz	"EXECWRITE"                     # External Name
	.long	97                              # DIE offset
	.asciz	"ANY"                           # External Name
	.long	111                             # DIE offset
	.asciz	"to_posix"                      # External Name
	.long	157                             # DIE offset
	.asciz	"is_power_of_2"                 # External Name
	.long	170                             # DIE offset
	.asciz	"aligned_alloc_size"            # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	262                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"VirtualMemoryAccess"           # External Name
	.long	104                             # DIE offset
	.asciz	"int"                           # External Name
	.long	234                             # DIE offset
	.asciz	"CInt"                          # External Name
	.long	245                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	254                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.mem.aligned_offset
	.weak	std.core.mem.os_pagesize
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

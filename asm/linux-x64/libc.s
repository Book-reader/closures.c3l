	.text
	.file	"libc"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/libc" "libc.c3"
	.section	.text.libc.errno,"axG",@progbits,libc.errno,comdat
	.weak	libc.errno                      # -- Begin function libc.errno
	.p2align	4, 0x90
	.type	libc.errno,@function
libc.errno:                             # @libc.errno
.Lfunc_begin0:
	.loc	1 42 0                          # libc.c3:42:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
.Ltmp0:
	.file	2 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/libc/os" "errno.c3"
	.loc	2 6 39 prologue_end             # errno.c3:6:39
	callq	__errno_location@PLT
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB0_3
# %bb.1:
	.loc	2 0 39 is_stmt 0                # errno.c3:0:39
	movq	-72(%rbp), %rax                 # 8-byte Reload
	.loc	2 6 39                          # errno.c3:6:39
	andq	$3, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	setne	%al
	testb	$1, %al
	jne	.LBB0_4
# %bb.2:
	.loc	2 0 39                          # errno.c3:0:39
	movq	-72(%rbp), %rax                 # 8-byte Reload
	.loc	2 6 39                          # errno.c3:6:39
	movl	(%rax), %eax
	.loc	2 6 39 epilogue_begin           # errno.c3:6:39
	addq	$112, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_3:
	.cfi_def_cfa %rbp, 16
	leaq	.panic_msg(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func(%rip), %r8
	movl	$5, %r9d
	movq	std.core.builtin.panic@GOTPCREL(%rip), %rax
	movl	$6, (%rsp)
	callq	*(%rax)
.LBB0_4:
	.loc	2 0 39                          # errno.c3:0:39
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movq	$4, -8(%rbp)
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
	.loc	2 6 39                          # errno.c3:6:39
	leaq	.panic_msg.1(%rip), %rdi
	movl	$94, %esi
	leaq	.file(%rip), %rdx
	movl	$8, %ecx
	leaq	.func(%rip), %r8
	movl	$5, %r9d
	leaq	-64(%rbp), %rax
	movl	$6, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp1:
.Lfunc_end0:
	.size	libc.errno, .Lfunc_end0-libc.errno
	.cfi_endproc
                                        # -- End function
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

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Dereference of null pointer, '__errno_location()' was null."
	.size	.panic_msg, 60

	.type	.file,@object                   # @.file
.file:
	.asciz	"errno.c3"
	.size	.file, 9

	.type	.func,@object                   # @.func
.func:
	.asciz	"errno"
	.size	.func, 6

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
	.byte	9                               # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0xb9 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1a DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	68                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	stdout
	.long	.Linfo_string6                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x44:0xc DW_TAG_typedef
	.long	80                              # DW_AT_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.short	368                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x50:0x9 DW_TAG_pointer_type
	.long	.Linfo_string4                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	2                               # Abbrev [2] 0x59:0x1a DW_TAG_variable
	.long	.Linfo_string7                  # DW_AT_name
	.long	68                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	9                               # DW_AT_location
	.byte	3
	.quad	stderr
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.byte	5                               # Abbrev [5] 0x73:0xc DW_TAG_subprogram
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
	.byte	1                               # DW_AT_inline
	.byte	6                               # Abbrev [6] 0x7f:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	177                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x9c:0x14 DW_TAG_inlined_subroutine
	.long	115                             # DW_AT_abstract_origin
	.quad	.Ltmp0                          # DW_AT_low_pc
	.long	.Ltmp1-.Ltmp0                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	44                              # DW_AT_call_line
	.byte	9                               # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb1:0xb DW_TAG_typedef
	.long	188                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbc:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"libc.c3"                       # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/libc" # string offset=12
.Linfo_string3:
	.asciz	"__stdout"                      # string offset=82
.Linfo_string4:
	.asciz	"void*"                         # string offset=91
.Linfo_string5:
	.asciz	"CFile"                         # string offset=97
.Linfo_string6:
	.asciz	"stdout"                        # string offset=103
.Linfo_string7:
	.asciz	"__stderr"                      # string offset=110
.Linfo_string8:
	.asciz	"stderr"                        # string offset=119
.Linfo_string9:
	.asciz	"errno"                         # string offset=126
.Linfo_string10:
	.asciz	"libc.errno"                    # string offset=132
.Linfo_string11:
	.asciz	"int"                           # string offset=143
.Linfo_string12:
	.asciz	"Errno"                         # string offset=147
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	196                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"__stdout"                      # External Name
	.long	89                              # DIE offset
	.asciz	"__stderr"                      # External Name
	.long	127                             # DIE offset
	.asciz	"errno"                         # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	196                             # Compilation Unit Length
	.long	68                              # DIE offset
	.asciz	"CFile"                         # External Name
	.long	80                              # DIE offset
	.asciz	"void*"                         # External Name
	.long	177                             # DIE offset
	.asciz	"Errno"                         # External Name
	.long	188                             # DIE offset
	.asciz	"int"                           # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.weak	std.core.builtin.panic
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

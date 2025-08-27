	.text
	.file	"std::core::string::conv"
	.section	.text.std.core.string.conv.utf8_codepoints,"axG",@progbits,std.core.string.conv.utf8_codepoints,comdat
	.weak	std.core.string.conv.utf8_codepoints # -- Begin function std.core.string.conv.utf8_codepoints
	.p2align	4, 0x90
	.type	std.core.string.conv.utf8_codepoints,@function
std.core.string.conv.utf8_codepoints:   # @std.core.string.conv.utf8_codepoints
.Lfunc_begin0:
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "conv.c3"
	.loc	1 192 0                         # conv.c3:192:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
.Ltmp0:
	.loc	1 194 12 prologue_end           # conv.c3:194:12
	movq	$0, -24(%rbp)
.Ltmp1:
	.loc	1 195 20                        # conv.c3:195:20
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                # conv.c3:0:20
	movq	-120(%rbp), %rax                # 8-byte Reload
	.loc	1 195 20                        # conv.c3:195:20
	cmpq	%rax, -32(%rbp)
	jae	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp2:
	.loc	1 195 20                        # conv.c3:195:20
	movq	-8(%rbp), %rcx
	movq	%rcx, -144(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	cmpq	%rcx, %rax
	setae	%al
	testb	$1, %al
	jne	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 20                          # conv.c3:0:20
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	-128(%rbp), %rcx                # 8-byte Reload
	.loc	1 195 20                        # conv.c3:195:20
	movb	(%rax,%rcx), %al
	movb	%al, -33(%rbp)
.Ltmp3:
	.loc	1 197 7 is_stmt 1               # conv.c3:197:7
	movzbl	-33(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 197 25 is_stmt 0              # conv.c3:197:25
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.Ltmp4:
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 195 20 is_stmt 1              # conv.c3:195:20
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.Ltmp5:
.LBB0_6:
	.loc	1 199 9                         # conv.c3:199:9
	movq	-24(%rbp), %rax
	.loc	1 199 9 epilogue_begin is_stmt 0 # conv.c3:199:9
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_7:
	.cfi_def_cfa %rbp, 16
	.loc	1 0 9                           # conv.c3:0:9
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	%rax, -48(%rbp)
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
.Ltmp6:
	.loc	1 195 20 is_stmt 1              # conv.c3:195:20
	leaq	.panic_msg(%rip), %rdi
	movl	$59, %esi
	leaq	.file(%rip), %rdx
	movl	$7, %ecx
	leaq	.func(%rip), %r8
	movl	$15, %r9d
	leaq	-112(%rbp), %rax
	movl	$195, (%rsp)
	movq	(%rax), %r10
	movq	%r10, 8(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	std.core.builtin.panicf@PLT
.Ltmp7:
.Lfunc_end0:
	.size	std.core.string.conv.utf8_codepoints, .Lfunc_end0-std.core.string.conv.utf8_codepoints
	.cfi_endproc
                                        # -- End function
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

	.type	.panic_msg,@object              # @.panic_msg
	.section	.rodata,"a",@progbits
.panic_msg:
	.asciz	"Array index out of bounds (array had size %d, index was %d)"
	.size	.panic_msg, 60

	.type	.file,@object                   # @.file
.file:
	.asciz	"conv.c3"
	.size	.file, 8

	.type	.func,@object                   # @.func
.func:
	.asciz	"utf8_codepoints"
	.size	.func, 16

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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0xcf DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x64 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	142                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x47:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.long	158                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x55:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	194                             # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x64:0x29 DW_TAG_lexical_block
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	4                               # Abbrev [4] 0x69:0xf DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_alignment
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	142                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x78:0x14 DW_TAG_lexical_block
	.long	.Ldebug_ranges1                 # DW_AT_ranges
	.byte	6                               # Abbrev [6] 0x7d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	95
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.long	210                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x8e:0x9 DW_TAG_typedef
	.long	151                             # DW_AT_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	8                               # Abbrev [8] 0x97:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9e:0x9 DW_TAG_typedef
	.long	167                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	9                               # Abbrev [9] 0xa7:0x1e DW_TAG_structure_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	8                               # DW_AT_alignment
	.byte	10                              # Abbrev [10] 0xae:0xb DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	197                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb9:0xb DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	142                             # DW_AT_type
	.byte	8                               # DW_AT_alignment
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc5:0xd DW_TAG_pointer_type
	.long	210                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	8                               # Abbrev [8] 0xd2:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"conv.c3"                       # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" # string offset=12
.Linfo_string3:
	.asciz	"std.core.string.conv.utf8_codepoints" # string offset=82
.Linfo_string4:
	.asciz	"utf8_codepoints"               # string offset=119
.Linfo_string5:
	.asciz	"ulong"                         # string offset=135
.Linfo_string6:
	.asciz	"usz"                           # string offset=141
.Linfo_string7:
	.asciz	"utf8"                          # string offset=145
.Linfo_string8:
	.asciz	"ptr"                           # string offset=150
.Linfo_string9:
	.asciz	"char"                          # string offset=154
.Linfo_string10:
	.asciz	"char*"                         # string offset=159
.Linfo_string11:
	.asciz	"len"                           # string offset=165
.Linfo_string12:
	.asciz	"char[]"                        # string offset=169
.Linfo_string13:
	.asciz	"String"                        # string offset=176
.Linfo_string14:
	.asciz	".temp"                         # string offset=183
.Linfo_string15:
	.asciz	"c"                             # string offset=189
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	218                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"utf8_codepoints"               # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	218                             # Compilation Unit Length
	.long	142                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	151                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	158                             # DIE offset
	.asciz	"String"                        # External Name
	.long	167                             # DIE offset
	.asciz	"char[]"                        # External Name
	.long	197                             # DIE offset
	.asciz	"char*"                         # External Name
	.long	210                             # DIE offset
	.asciz	"char"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.builtin.panicf
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

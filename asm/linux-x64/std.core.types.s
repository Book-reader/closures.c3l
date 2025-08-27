	.text
	.file	"std::core::types"
	.file	1 "/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" "types.c3"
	.section	.text.std.core.types.TypeKind.is_int,"axG",@progbits,std.core.types.TypeKind.is_int,comdat
	.weak	std.core.types.TypeKind.is_int  # -- Begin function std.core.types.TypeKind.is_int
	.p2align	4, 0x90
	.type	std.core.types.TypeKind.is_int,@function
std.core.types.TypeKind.is_int:         # @std.core.types.TypeKind.is_int
.Lfunc_begin0:
	.loc	1 113 0                         # types.c3:113:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
.Ltmp0:
	.loc	1 115 9 prologue_end            # types.c3:115:9
	movb	$1, %al
	cmpb	$2, -1(%rbp)
	movb	%al, -2(%rbp)                   # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	.loc	1 115 40 is_stmt 0              # types.c3:115:40
	cmpb	$3, -1(%rbp)
	sete	%al
	movb	%al, -2(%rbp)                   # 1-byte Spill
.LBB0_2:
	.loc	1 0 40                          # types.c3:0:40
	movb	-2(%rbp), %al                   # 1-byte Reload
	.loc	1 115 40                        # types.c3:115:40
	andb	$1, %al
	.loc	1 115 40 epilogue_begin         # types.c3:115:40
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	std.core.types.TypeKind.is_int, .Lfunc_end0-std.core.types.TypeKind.is_int
	.cfi_endproc
                                        # -- End function
	.type	.enum.VOID,@object              # @.enum.VOID
	.section	.rodata,"a",@progbits
.enum.VOID:
	.asciz	"VOID"
	.size	.enum.VOID, 5

	.type	.enum.BOOL,@object              # @.enum.BOOL
.enum.BOOL:
	.asciz	"BOOL"
	.size	.enum.BOOL, 5

	.type	.enum.SIGNED_INT,@object        # @.enum.SIGNED_INT
.enum.SIGNED_INT:
	.asciz	"SIGNED_INT"
	.size	.enum.SIGNED_INT, 11

	.type	.enum.UNSIGNED_INT,@object      # @.enum.UNSIGNED_INT
.enum.UNSIGNED_INT:
	.asciz	"UNSIGNED_INT"
	.size	.enum.UNSIGNED_INT, 13

	.type	.enum.FLOAT,@object             # @.enum.FLOAT
.enum.FLOAT:
	.asciz	"FLOAT"
	.size	.enum.FLOAT, 6

	.type	.enum.TYPEID,@object            # @.enum.TYPEID
.enum.TYPEID:
	.asciz	"TYPEID"
	.size	.enum.TYPEID, 7

	.type	.enum.FAULT,@object             # @.enum.FAULT
.enum.FAULT:
	.asciz	"FAULT"
	.size	.enum.FAULT, 6

	.type	.enum.ANY,@object               # @.enum.ANY
.enum.ANY:
	.asciz	"ANY"
	.size	.enum.ANY, 4

	.type	.enum.ENUM,@object              # @.enum.ENUM
.enum.ENUM:
	.asciz	"ENUM"
	.size	.enum.ENUM, 5

	.type	.enum.CONST_ENUM,@object        # @.enum.CONST_ENUM
.enum.CONST_ENUM:
	.asciz	"CONST_ENUM"
	.size	.enum.CONST_ENUM, 11

	.type	.enum.STRUCT,@object            # @.enum.STRUCT
.enum.STRUCT:
	.asciz	"STRUCT"
	.size	.enum.STRUCT, 7

	.type	.enum.UNION,@object             # @.enum.UNION
.enum.UNION:
	.asciz	"UNION"
	.size	.enum.UNION, 6

	.type	.enum.BITSTRUCT,@object         # @.enum.BITSTRUCT
.enum.BITSTRUCT:
	.asciz	"BITSTRUCT"
	.size	.enum.BITSTRUCT, 10

	.type	.enum.FUNC,@object              # @.enum.FUNC
.enum.FUNC:
	.asciz	"FUNC"
	.size	.enum.FUNC, 5

	.type	.enum.OPTIONAL,@object          # @.enum.OPTIONAL
.enum.OPTIONAL:
	.asciz	"OPTIONAL"
	.size	.enum.OPTIONAL, 9

	.type	.enum.ARRAY,@object             # @.enum.ARRAY
.enum.ARRAY:
	.asciz	"ARRAY"
	.size	.enum.ARRAY, 6

	.type	.enum.SLICE,@object             # @.enum.SLICE
.enum.SLICE:
	.asciz	"SLICE"
	.size	.enum.SLICE, 6

	.type	.enum.VECTOR,@object            # @.enum.VECTOR
.enum.VECTOR:
	.asciz	"VECTOR"
	.size	.enum.VECTOR, 7

	.type	.enum.DISTINCT,@object          # @.enum.DISTINCT
.enum.DISTINCT:
	.asciz	"DISTINCT"
	.size	.enum.DISTINCT, 9

	.type	.enum.POINTER,@object           # @.enum.POINTER
.enum.POINTER:
	.asciz	"POINTER"
	.size	.enum.POINTER, 8

	.type	.enum.INTERFACE,@object         # @.enum.INTERFACE
.enum.INTERFACE:
	.asciz	"INTERFACE"
	.size	.enum.INTERFACE, 10

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

	.type	$ct.std.core.types.TypeKind,@object # @"$ct.std.core.types.TypeKind"
	.section	".data.$ct.std.core.types.TypeKind","awG",@progbits,"$ct.std.core.types.TypeKind",comdat
	.weak	$ct.std.core.types.TypeKind
	.p2align	3, 0x0
$ct.std.core.types.TypeKind:
	.byte	8                               # 0x8
	.zero	7
	.quad	0                               # 0x0
	.quad	0
	.quad	1                               # 0x1
	.quad	($ct.char)
	.quad	21                              # 0x15
	.quad	.enum.VOID
	.quad	4                               # 0x4
	.quad	.enum.BOOL
	.quad	4                               # 0x4
	.quad	.enum.SIGNED_INT
	.quad	10                              # 0xa
	.quad	.enum.UNSIGNED_INT
	.quad	12                              # 0xc
	.quad	.enum.FLOAT
	.quad	5                               # 0x5
	.quad	.enum.TYPEID
	.quad	6                               # 0x6
	.quad	.enum.FAULT
	.quad	5                               # 0x5
	.quad	.enum.ANY
	.quad	3                               # 0x3
	.quad	.enum.ENUM
	.quad	4                               # 0x4
	.quad	.enum.CONST_ENUM
	.quad	10                              # 0xa
	.quad	.enum.STRUCT
	.quad	6                               # 0x6
	.quad	.enum.UNION
	.quad	5                               # 0x5
	.quad	.enum.BITSTRUCT
	.quad	9                               # 0x9
	.quad	.enum.FUNC
	.quad	4                               # 0x4
	.quad	.enum.OPTIONAL
	.quad	8                               # 0x8
	.quad	.enum.ARRAY
	.quad	5                               # 0x5
	.quad	.enum.SLICE
	.quad	5                               # 0x5
	.quad	.enum.VECTOR
	.quad	6                               # 0x6
	.quad	.enum.DISTINCT
	.quad	8                               # 0x8
	.quad	.enum.POINTER
	.quad	7                               # 0x7
	.quad	.enum.INTERFACE
	.quad	9                               # 0x9
	.size	$ct.std.core.types.TypeKind, 384

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
	.byte	5                               # DW_FORM_data2
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
	.byte	15                              # DW_FORM_udata
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0xe7 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x8d DW_TAG_enumeration_type
	.long	183                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.short	375                             # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	3                               # Abbrev [3] 0x38:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3e:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x44:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4a:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x50:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5c:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x62:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x68:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6e:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x74:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7a:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x80:0x6 DW_TAG_enumerator
	.long	.Linfo_string16                 # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x86:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8c:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x92:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x98:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	16                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9e:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	17                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa4:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xaa:0x6 DW_TAG_enumerator
	.long	.Linfo_string23                 # DW_AT_name
	.byte	19                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xb0:0x6 DW_TAG_enumerator
	.long	.Linfo_string24                 # DW_AT_name
	.byte	20                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xb7:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xbe:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_linkage_name
	.long	.Linfo_string27                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	234                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xdb:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	127
	.long	.Linfo_string29                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xea:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"c3c"                           # string offset=0
.Linfo_string1:
	.asciz	"types.c3"                      # string offset=4
.Linfo_string2:
	.asciz	"/nix/store/ihf6dmy4cll298qphlwhnmgml1y02khm-c3c-0.7.5/lib/c3/std/core" # string offset=13
.Linfo_string3:
	.asciz	"char"                          # string offset=83
.Linfo_string4:
	.asciz	"VOID"                          # string offset=88
.Linfo_string5:
	.asciz	"BOOL"                          # string offset=93
.Linfo_string6:
	.asciz	"SIGNED_INT"                    # string offset=98
.Linfo_string7:
	.asciz	"UNSIGNED_INT"                  # string offset=109
.Linfo_string8:
	.asciz	"FLOAT"                         # string offset=122
.Linfo_string9:
	.asciz	"TYPEID"                        # string offset=128
.Linfo_string10:
	.asciz	"FAULT"                         # string offset=135
.Linfo_string11:
	.asciz	"ANY"                           # string offset=141
.Linfo_string12:
	.asciz	"ENUM"                          # string offset=145
.Linfo_string13:
	.asciz	"CONST_ENUM"                    # string offset=150
.Linfo_string14:
	.asciz	"STRUCT"                        # string offset=161
.Linfo_string15:
	.asciz	"UNION"                         # string offset=168
.Linfo_string16:
	.asciz	"BITSTRUCT"                     # string offset=174
.Linfo_string17:
	.asciz	"FUNC"                          # string offset=184
.Linfo_string18:
	.asciz	"OPTIONAL"                      # string offset=189
.Linfo_string19:
	.asciz	"ARRAY"                         # string offset=198
.Linfo_string20:
	.asciz	"SLICE"                         # string offset=204
.Linfo_string21:
	.asciz	"VECTOR"                        # string offset=210
.Linfo_string22:
	.asciz	"DISTINCT"                      # string offset=217
.Linfo_string23:
	.asciz	"POINTER"                       # string offset=226
.Linfo_string24:
	.asciz	"INTERFACE"                     # string offset=234
.Linfo_string25:
	.asciz	"TypeKind"                      # string offset=244
.Linfo_string26:
	.asciz	"std.core.types.TypeKind.is_int" # string offset=253
.Linfo_string27:
	.asciz	"is_int"                        # string offset=284
.Linfo_string28:
	.asciz	"bool"                          # string offset=291
.Linfo_string29:
	.asciz	"kind"                          # string offset=296
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	242                             # Compilation Unit Length
	.long	56                              # DIE offset
	.asciz	"VOID"                          # External Name
	.long	62                              # DIE offset
	.asciz	"BOOL"                          # External Name
	.long	68                              # DIE offset
	.asciz	"SIGNED_INT"                    # External Name
	.long	74                              # DIE offset
	.asciz	"UNSIGNED_INT"                  # External Name
	.long	80                              # DIE offset
	.asciz	"FLOAT"                         # External Name
	.long	86                              # DIE offset
	.asciz	"TYPEID"                        # External Name
	.long	92                              # DIE offset
	.asciz	"FAULT"                         # External Name
	.long	98                              # DIE offset
	.asciz	"ANY"                           # External Name
	.long	104                             # DIE offset
	.asciz	"ENUM"                          # External Name
	.long	110                             # DIE offset
	.asciz	"CONST_ENUM"                    # External Name
	.long	116                             # DIE offset
	.asciz	"STRUCT"                        # External Name
	.long	122                             # DIE offset
	.asciz	"UNION"                         # External Name
	.long	128                             # DIE offset
	.asciz	"BITSTRUCT"                     # External Name
	.long	134                             # DIE offset
	.asciz	"FUNC"                          # External Name
	.long	140                             # DIE offset
	.asciz	"OPTIONAL"                      # External Name
	.long	146                             # DIE offset
	.asciz	"ARRAY"                         # External Name
	.long	152                             # DIE offset
	.asciz	"SLICE"                         # External Name
	.long	158                             # DIE offset
	.asciz	"VECTOR"                        # External Name
	.long	164                             # DIE offset
	.asciz	"DISTINCT"                      # External Name
	.long	170                             # DIE offset
	.asciz	"POINTER"                       # External Name
	.long	176                             # DIE offset
	.asciz	"INTERFACE"                     # External Name
	.long	190                             # DIE offset
	.asciz	"is_int"                        # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	242                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"TypeKind"                      # External Name
	.long	183                             # DIE offset
	.asciz	"char"                          # External Name
	.long	234                             # DIE offset
	.asciz	"bool"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

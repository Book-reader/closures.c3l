	.text
	.file	"closure::closures"
	.file	1 "/home/user/code/c3/closures.c3l" "closure.c3"
	.globl	closure.closures.init           # -- Begin function closure.closures.init
	.p2align	4, 0x90
	.type	closure.closures.init,@function
closure.closures.init:                  # @closure.closures.init
.Lfunc_begin0:
	.loc	1 19 0                          # closure.c3:19:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
.Ltmp0:
	.loc	1 27 1 prologue_end             # closure.c3:27:1
	#APP

	pushq	%rax

	pushq	%rbx


	# First, load the address of "start:" into "code_ptr"
	leaq	.start, %rbx

	movq	code_ptr@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)

	# Second, get the length of the assembly in bytes
	leaq	.start, %rax

	leaq	.end, %rbx

	subq	%rax, %rbx

	movq	code_len@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)


	# Third, store the offset of the code into code_offset
	leaq	.start, %rax

	leaq	.start.code, %rbx

	subq	%rax, %rbx

	movq	code_offset@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)


	# Fourth, store the offset of the data into code_arg_offset and jump to end
	leaq	.start, %rax

	leaq	.start.arg, %rbx

	subq	%rax, %rbx

	movq	code_arg_offset@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)


	# Finally, store the offset of the data into code_func_offset and jump to end
	leaq	.start, %rax

	leaq	.start.func, %rbx

	subq	%rax, %rbx

	movq	code_func_offset@GOTTPOFF(%rip), %rax

	movq	%rbx, %fs:(%rax)


	popq	%rbx

	popq	%rax

	jmp	.end


.start:
.start.arg:
	.quad	0
.start.func:
	.quad	0
.start.code:
	retq

	pushq	%rax

	# TODO: why does pushing and popping %rdi cause it to break?
	# pushq %rdi;
	movq	%rdi, %rsi

	movq	.start.arg(%rip), %rdi
	# This should be the linux calling convention register for the first integer function parameter
	movq	.start.func(%rip), %rax

	callq	*%rax

	# popq %rdi;
	popq	%rax

	retq

.end:

	#NO_APP
	.loc	1 87 2                          # closure.c3:87:2
	movq	%fs:0, %rax
	leaq	closure.closures.allocated_size@TPOFF(%rax), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 87 42 is_stmt 0               # closure.c3:87:42
	movq	code_len@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rdi
	.loc	1 87 19                         # closure.c3:87:19
	callq	std.core.mem.vm.aligned_alloc_size@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, (%rax)
	.loc	1 89 2 is_stmt 1                # closure.c3:89:2
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 89 36 is_stmt 0               # closure.c3:89:36
	movq	%fs:0, %rax
	leaq	closure.closures.allocated_size@TPOFF(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 89 52                         # closure.c3:89:52
	movl	$6, %edi
	callq	std.core.mem.vm.VirtualMemoryAccess.to_posix@PLT
	movl	%eax, %edx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	.loc	1 89 125                        # closure.c3:89:125
	movq	(%rax), %rsi
	.loc	1 89 18                         # closure.c3:89:18
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$34, %ecx
	movl	$4294967295, %r8d               # imm = 0xFFFFFFFF
	movq	%r9, %rdi
	callq	mmap@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, (%rax)
	.loc	1 90 6 is_stmt 1                # closure.c3:90:6
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	$-1, %rcx
	cmpq	%rcx, (%rax)
	jne	.LBB0_2
# %bb.1:
.Ltmp1:
	.loc	1 92 28                         # closure.c3:92:28
	callq	libc.errno@PLT
	movl	%eax, -20(%rbp)
	movq	($ct.libc.Errno)@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc	1 92 3 is_stmt 0                # closure.c3:92:3
	leaq	-32(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$9, %edx
	leaq	-16(%rbp), %rcx
	movl	$1, %r8d
	callq	std.io.printfn@PLT
	.loc	1 93 10 is_stmt 1               # closure.c3:93:10
	movq	closure.closures.INIT_FAILED@GOTPCREL(%rip), %rax
	.loc	1 93 10 epilogue_begin is_stmt 0 # closure.c3:93:10
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_2:
	.cfi_def_cfa %rbp, 16
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	.loc	1 93 10 epilogue_begin          # closure.c3:93:10
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp2:
.Lfunc_end0:
	.size	closure.closures.init, .Lfunc_end0-closure.closures.init
	.cfi_endproc
                                        # -- End function
	.globl	closure.closures.deinit         # -- Begin function closure.closures.deinit
	.p2align	4, 0x90
	.type	closure.closures.deinit,@function
closure.closures.deinit:                # @closure.closures.deinit
.Lfunc_begin1:
	.loc	1 107 0 is_stmt 1               # closure.c3:107:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp3:
	.loc	1 109 16 prologue_end           # closure.c3:109:16
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	movq	(%rax), %rdi
	.loc	1 109 31 is_stmt 0              # closure.c3:109:31
	movq	%fs:0, %rax
	leaq	closure.closures.allocated_size@TPOFF(%rax), %rax
	movq	(%rax), %rsi
	.loc	1 109 2                         # closure.c3:109:2
	callq	munmap@PLT
	.loc	1 110 2 is_stmt 1               # closure.c3:110:2
	movq	closures_data@GOTTPOFF(%rip), %rcx
	movq	%fs:0, %rax
	addq	%rcx, %rax
	.loc	1 110 18 is_stmt 0              # closure.c3:110:18
	movq	$0, (%rax)
	.loc	1 110 18 epilogue_begin         # closure.c3:110:18
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end1:
	.size	closure.closures.deinit, .Lfunc_end1-closure.closures.deinit
	.cfi_endproc
                                        # -- End function
	.type	code_ptr,@object                # @code_ptr
	.section	.tbss,"awT",@nobits
	.globl	code_ptr
	.p2align	3, 0x0
code_ptr:
	.quad	0
	.size	code_ptr, 8

	.type	code_len,@object                # @code_len
	.globl	code_len
	.p2align	3, 0x0
code_len:
	.quad	0                               # 0x0
	.size	code_len, 8

	.type	code_offset,@object             # @code_offset
	.globl	code_offset
	.p2align	3, 0x0
code_offset:
	.quad	0                               # 0x0
	.size	code_offset, 8

	.type	code_arg_offset,@object         # @code_arg_offset
	.globl	code_arg_offset
	.p2align	3, 0x0
code_arg_offset:
	.quad	0                               # 0x0
	.size	code_arg_offset, 8

	.type	code_func_offset,@object        # @code_func_offset
	.globl	code_func_offset
	.p2align	3, 0x0
code_func_offset:
	.quad	0                               # 0x0
	.size	code_func_offset, 8

	.type	closure.closures.allocated_size,@object # @closure.closures.allocated_size
	.p2align	3, 0x0
closure.closures.allocated_size:
	.quad	0                               # 0x0
	.size	closure.closures.allocated_size, 8

	.type	closures_data,@object           # @closures_data
	.globl	closures_data
	.p2align	3, 0x0
closures_data:
	.quad	0
	.size	closures_data, 8

	.type	closure.closures.closure_count,@object # @closure.closures.closure_count
	.globl	closure.closures.closure_count
	.p2align	3, 0x0
closure.closures.closure_count:
	.quad	0                               # 0x0
	.size	closure.closures.closure_count, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error: %s"
	.size	.L.str, 10

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

	.type	closure.closures.INIT_FAILED,@object # @closure.closures.INIT_FAILED
	.section	.data.rel.ro.closure.closures.INIT_FAILED,"awG",@progbits,closure.closures.INIT_FAILED,comdat
	.weak	closure.closures.INIT_FAILED
	.p2align	3, 0x0
closure.closures.INIT_FAILED:
	.quad	closure.closures.INIT_FAILED.nameof
	.quad	21                              # 0x15
	.size	closure.closures.INIT_FAILED, 16

	.type	closure.closures.INIT_FAILED.nameof,@object # @closure.closures.INIT_FAILED.nameof
	.section	.rodata,"a",@progbits
closure.closures.INIT_FAILED.nameof:
	.asciz	"closures::INIT_FAILED"
	.size	closure.closures.INIT_FAILED.nameof, 22

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
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	51                              # DW_AT_address_class
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	63                              # DW_AT_external
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
	.byte	1                               # Abbrev [1] 0xb:0x174 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	29                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1b DW_TAG_variable
	.long	.Linfo_string3                  # DW_AT_name
	.long	69                              # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_ptr@DTPOFF
	.byte	224
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.byte	3                               # Abbrev [3] 0x45:0x9 DW_TAG_pointer_type
	.long	.Linfo_string4                  # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	2                               # Abbrev [2] 0x4e:0x1b DW_TAG_variable
	.long	.Linfo_string5                  # DW_AT_name
	.long	105                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_len@DTPOFF
	.byte	224
	.long	.Linfo_string5                  # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0x69:0x9 DW_TAG_typedef
	.long	114                             # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	5                               # Abbrev [5] 0x72:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x79:0x1b DW_TAG_variable
	.long	.Linfo_string8                  # DW_AT_name
	.long	105                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_offset@DTPOFF
	.byte	224
	.long	.Linfo_string8                  # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0x94:0x1b DW_TAG_variable
	.long	.Linfo_string9                  # DW_AT_name
	.long	105                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_arg_offset@DTPOFF
	.byte	224
	.long	.Linfo_string9                  # DW_AT_linkage_name
	.byte	2                               # Abbrev [2] 0xaf:0x1b DW_TAG_variable
	.long	.Linfo_string10                 # DW_AT_name
	.long	105                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	code_func_offset@DTPOFF
	.byte	224
	.long	.Linfo_string10                 # DW_AT_linkage_name
	.byte	6                               # Abbrev [6] 0xca:0x1b DW_TAG_variable
	.long	.Linfo_string11                 # DW_AT_name
	.long	229                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	13                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	closure.closures.allocated_size@DTPOFF
	.byte	224
	.long	.Linfo_string13                 # DW_AT_linkage_name
	.byte	4                               # Abbrev [4] 0xe5:0x9 DW_TAG_typedef
	.long	114                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # Abbrev [2] 0xee:0x1b DW_TAG_variable
	.long	.Linfo_string14                 # DW_AT_name
	.long	265                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	14                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	closures_data@DTPOFF
	.byte	224
	.long	.Linfo_string14                 # DW_AT_linkage_name
	.byte	7                               # Abbrev [7] 0x109:0xd DW_TAG_pointer_type
	.long	278                             # DW_AT_type
	.long	.Linfo_string16                 # DW_AT_name
	.long	0                               # DW_AT_address_class
	.byte	5                               # Abbrev [5] 0x116:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x11d:0x1b DW_TAG_variable
	.long	.Linfo_string17                 # DW_AT_name
	.long	229                             # DW_AT_type
                                        # DW_AT_external
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	1                               # DW_AT_alignment
	.byte	10                              # DW_AT_location
	.byte	14
	.quad	closure.closures.closure_count@DTPOFF
	.byte	224
	.long	.Linfo_string18                 # DW_AT_linkage_name
	.byte	8                               # Abbrev [8] 0x138:0x1d DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string19                 # DW_AT_linkage_name
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	366                             # DW_AT_type
                                        # DW_AT_external
	.byte	9                               # Abbrev [9] 0x155:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string23                 # DW_AT_linkage_name
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x16e:0x9 DW_TAG_typedef
	.long	375                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	5                               # Abbrev [5] 0x177:0x7 DW_TAG_base_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
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
	.asciz	"code_ptr"                      # string offset=47
.Linfo_string4:
	.asciz	"void*"                         # string offset=56
.Linfo_string5:
	.asciz	"code_len"                      # string offset=62
.Linfo_string6:
	.asciz	"ulong"                         # string offset=71
.Linfo_string7:
	.asciz	"uptr"                          # string offset=77
.Linfo_string8:
	.asciz	"code_offset"                   # string offset=82
.Linfo_string9:
	.asciz	"code_arg_offset"               # string offset=94
.Linfo_string10:
	.asciz	"code_func_offset"              # string offset=110
.Linfo_string11:
	.asciz	"allocated_size"                # string offset=127
.Linfo_string12:
	.asciz	"usz"                           # string offset=142
.Linfo_string13:
	.asciz	"closure.closures.allocated_size" # string offset=146
.Linfo_string14:
	.asciz	"closures_data"                 # string offset=178
.Linfo_string15:
	.asciz	"char"                          # string offset=192
.Linfo_string16:
	.asciz	"char*"                         # string offset=197
.Linfo_string17:
	.asciz	"closure_count"                 # string offset=203
.Linfo_string18:
	.asciz	"closure.closures.closure_count" # string offset=217
.Linfo_string19:
	.asciz	"closure.closures.init"         # string offset=248
.Linfo_string20:
	.asciz	"init"                          # string offset=270
.Linfo_string21:
	.asciz	"long"                          # string offset=275
.Linfo_string22:
	.asciz	"fault"                         # string offset=280
.Linfo_string23:
	.asciz	"closure.closures.deinit"       # string offset=286
.Linfo_string24:
	.asciz	"deinit"                        # string offset=310
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	383                             # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"code_ptr"                      # External Name
	.long	78                              # DIE offset
	.asciz	"code_len"                      # External Name
	.long	121                             # DIE offset
	.asciz	"code_offset"                   # External Name
	.long	148                             # DIE offset
	.asciz	"code_arg_offset"               # External Name
	.long	175                             # DIE offset
	.asciz	"code_func_offset"              # External Name
	.long	202                             # DIE offset
	.asciz	"allocated_size"                # External Name
	.long	238                             # DIE offset
	.asciz	"closures_data"                 # External Name
	.long	285                             # DIE offset
	.asciz	"closure_count"                 # External Name
	.long	312                             # DIE offset
	.asciz	"init"                          # External Name
	.long	341                             # DIE offset
	.asciz	"deinit"                        # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	383                             # Compilation Unit Length
	.long	69                              # DIE offset
	.asciz	"void*"                         # External Name
	.long	105                             # DIE offset
	.asciz	"uptr"                          # External Name
	.long	114                             # DIE offset
	.asciz	"ulong"                         # External Name
	.long	229                             # DIE offset
	.asciz	"usz"                           # External Name
	.long	265                             # DIE offset
	.asciz	"char*"                         # External Name
	.long	278                             # DIE offset
	.asciz	"char"                          # External Name
	.long	366                             # DIE offset
	.asciz	"fault"                         # External Name
	.long	375                             # DIE offset
	.asciz	"long"                          # External Name
	.long	0                               # End Mark
.LpubTypes_end0:
	.weak	std.core.mem.vm.aligned_alloc_size
	.weak	std.core.mem.vm.VirtualMemoryAccess.to_posix
	.weak	std.io.printfn
	.weak	libc.errno
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

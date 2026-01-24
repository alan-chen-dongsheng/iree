	.file	"SingleConv$async_dispatch_0"
	.section	".text.SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32","ax",@progbits
	.p2align	4
	.type	SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32,@function
SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32:
.Lfunc_begin0:
	.file	1 "/home/cds/workspace/iree/cds_test/simple_onnx_conv/dump_executeable" "configured_module_SingleConv$async_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$256, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	1 12 8 prologue_end
	movq	32(%rsi), %rsi
	.loc	1 13 8
	movq	8(%rsi), %rax
	.loc	1 19 8
	movl	(%rdx), %ecx
	imulq	$827945503, %rcx, %rdx
	shrq	$36, %rdx
	imull	$83, %edx, %edi
	subl	%edi, %ecx
	leal	(%rdx,%rdx), %edi
	leal	(%rdi,%rdi,2), %edi
	movq	%rdi, 56(%rsp)
	.loc	1 9 8
	vxorps	%xmm0, %xmm0, %xmm0
	.loc	1 19 8
	shll	$3, %ecx
	leal	(%rcx,%rcx,2), %ecx
	movq	16(%rsi), %rdi
	addq	%rcx, %rdi
	movq	%rdi, 40(%rsp)
	imulq	$12000, %rdx, %rdx
	addq	%rcx, %rdx
	addq	(%rsi), %rdx
	movq	%rdx, 32(%rsp)
	.loc	1 9 8
	vmovaps	%xmm0, 128(%rsp)
	movq	$0, 144(%rsp)
	xorl	%ecx, %ecx
	.loc	1 0 8 is_stmt 0
.Ltmp1:
	.p2align	4
.LBB0_1:
	leaq	__constant_8xf32(%rip), %rdx
	vbroadcastss	(%rdx,%rcx,4), %ymm0
	movq	%rcx, 48(%rsp)
	imulq	$992016, %rcx, %r9
	.loc	1 19 8 is_stmt 1
	addq	40(%rsp), %r9
	movq	32(%rsp), %r8
	xorl	%r11d, %r11d
	.loc	1 0 8 is_stmt 0
.Ltmp2:
	.p2align	4
.LBB0_2:
	xorl	%ecx, %ecx
	.p2align	4
.LBB0_3:
	.loc	1 19 8 is_stmt 1
	vmovss	128(%rsp,%rcx,4), %xmm1
	vmovss	%xmm1, 64(%rsp,%rcx,4)
	incq	%rcx
	cmpq	$6, %rcx
	jne	.LBB0_3
	.loc	1 0 8 is_stmt 0
	movq	56(%rsp), %rcx
	leaq	(%r11,%rcx), %rbx
	movq	%rax, %r14
	movq	%r8, %rsi
	xorl	%r12d, %r12d
	.p2align	4
.LBB0_5:
	movq	%r14, %r13
	movq	%rsi, %r10
	xorl	%edx, %edx
	.p2align	4
.LBB0_6:
	movq	%r10, %r15
	xorl	%edi, %edi
	.p2align	4
.LBB0_7:
	vmovss	64(%rsp,%rdi,4), %xmm1
	xorl	%ecx, %ecx
	.p2align	4
.LBB0_8:
	.loc	1 19 8 is_stmt 1
	vmovss	(%r15,%rcx,4), %xmm2
	.loc	1 22 10
	vfmadd231ss	(%r13,%rcx,4), %xmm2, %xmm1
	.loc	1 19 8
	incq	%rcx
	cmpq	$3, %rcx
	jne	.LBB0_8
	vmovss	%xmm1, 64(%rsp,%rdi,4)
	incq	%rdi
	addq	$4, %r15
	cmpq	$6, %rdi
	jne	.LBB0_7
	incq	%rdx
	addq	$2000, %r10
	addq	$12, %r13
	cmpq	$3, %rdx
	jne	.LBB0_6
	incq	%r12
	addq	$1000000, %rsi
	addq	$36, %r14
	cmpq	$3, %r12
	jne	.LBB0_5
	.loc	1 27 10
	vaddps	64(%rsp), %ymm0, %ymm1
	.loc	1 19 8
	imulq	$1992, %rbx, %rcx
	vextractf128	$1, %ymm1, %xmm2
	vmovlps	%xmm2, 16(%r9,%rcx)
	vmovups	%xmm1, (%r9,%rcx)
	incq	%r11
	addq	$2000, %r8
	cmpq	$6, %r11
	jne	.LBB0_2
	.loc	1 0 8 is_stmt 0
	movq	48(%rsp), %rcx
	.loc	1 19 8
	incq	%rcx
	addq	$108, %rax
	cmpq	$8, %rcx
	jne	.LBB0_1
	.loc	1 31 8 is_stmt 1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	.loc	1 31 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp3:
.Lfunc_end0:
	.size	SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32, .Lfunc_end0-SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.p2align	4
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin1:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$6, %edi
	leaq	iree_hal_executable_library_query_v0(%rip), %rcx
	cmoveq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	iree_hal_executable_library_query, .Lfunc_end1-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end1-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin2:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB2_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB2_5
	testw	%cx, %cx
	je	.LBB2_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB2_6:
	orl	$864026624, %eax
	movzwl	%cx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB2_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	addl	%edx, %eax
	addl	$939524096, %eax
	vmovd	%eax, %xmm0
	retq
.LBB2_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end2:
	.size	iree_h2f_ieee, .Lfunc_end2-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin3:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB3_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB3_6
	testl	%edx, %edx
	je	.LBB3_4
	orl	$32767, %eax
	retq
.LBB3_1:
	movl	%ecx, %edi
.LBB3_9:
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB3_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB3_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB3_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB3_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end3:
	.size	iree_f2h_ieee, .Lfunc_end3-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin4:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB4_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB4_5
	testw	%cx, %cx
	je	.LBB4_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB4_6:
	orl	$864026624, %eax
	movzwl	%cx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB4_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	addl	%edx, %eax
	addl	$939524096, %eax
	vmovd	%eax, %xmm0
	retq
.LBB4_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end4:
	.size	__gnu_h2f_ieee, .Lfunc_end4-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.p2align	4
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin5:
	.cfi_startproc
	vmovd	%xmm0, %ecx
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %eax
	shll	$16, %eax
	andl	$-2147483648, %eax
	movl	%ecx, %esi
	andl	$31744, %esi
	je	.LBB5_6
	cmpl	$31744, %esi
	jne	.LBB5_5
	testw	%dx, %dx
	je	.LBB5_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB5_6:
	orl	$864026624, %eax
	movzwl	%dx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB5_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	addl	%ecx, %eax
	addl	$939524096, %eax
	vmovd	%eax, %xmm0
	retq
.LBB5_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end5:
	.size	__extendhfsf2, .Lfunc_end5-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.p2align	4
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin6:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB6_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB6_6
	testl	%edx, %edx
	je	.LBB6_4
	orl	$32767, %eax
	retq
.LBB6_1:
	movl	%ecx, %edi
.LBB6_9:
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB6_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB6_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB6_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB6_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end6:
	.size	__gnu_f2h_ieee, .Lfunc_end6-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.p2align	4
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin7:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB7_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB7_6
	testl	%edx, %edx
	je	.LBB7_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB7_1:
	movl	%ecx, %edi
	jmp	.LBB7_9
.LBB7_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB7_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB7_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	jmp	.LBB7_9
.LBB7_4:
	movl	$31744, %edi
.LBB7_9:
	andl	$32768, %eax
	orl	%edi, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end7:
	.size	__truncsfhf2, .Lfunc_end7-__truncsfhf2
	.cfi_endproc

	.section	.text.__math_invalidf,"ax",@progbits
	.p2align	4
	.type	__math_invalidf,@function
__math_invalidf:
.Lfunc_begin8:
	.cfi_startproc
	vsubss	%xmm0, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end8:
	.size	__math_invalidf, .Lfunc_end8-__math_invalidf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI9_0:
	.long	0xf0000000
	.long	0x70000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI9_1:
	.long	0x70000000
	.section	.text.__math_oflowf,"ax",@progbits
	.p2align	4
	.type	__math_oflowf,@function
__math_oflowf:
.Lfunc_begin9:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI9_0(%rip), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI9_1(%rip), %xmm0, %xmm0
	retq
.Lfunc_end9:
	.size	__math_oflowf, .Lfunc_end9-__math_oflowf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI10_0:
	.long	0x80000000
	.section	.text.__math_xflowf,"ax",@progbits
	.p2align	4
	.type	__math_xflowf,@function
__math_xflowf:
.Lfunc_begin10:
	.cfi_startproc
	vmovaps	%xmm0, %xmm1
	testl	%edi, %edi
	je	.LBB10_2
	vbroadcastss	.LCPI10_0(%rip), %xmm1
	vxorps	%xmm1, %xmm0, %xmm1
.LBB10_2:
	vmovss	%xmm1, -4(%rsp)
	vmulss	-4(%rsp), %xmm0, %xmm0
	retq
.Lfunc_end10:
	.size	__math_xflowf, .Lfunc_end10-__math_xflowf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI11_0:
	.long	0x90000000
	.long	0x10000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI11_1:
	.long	0x10000000
	.section	.text.__math_uflowf,"ax",@progbits
	.p2align	4
	.type	__math_uflowf,@function
__math_uflowf:
.Lfunc_begin11:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI11_0(%rip), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI11_1(%rip), %xmm0, %xmm0
	retq
.Lfunc_end11:
	.size	__math_uflowf, .Lfunc_end11-__math_uflowf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI12_0:
	.long	0x7b800000
.LCPI12_1:
	.long	0x80000000
.LCPI12_2:
	.long	0x3f800000
	.section	.text.ceilf,"ax",@progbits
	.p2align	4
	.type	ceilf,@function
ceilf:
.Lfunc_begin12:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB12_1
.LBB12_8:
	retq
.LBB12_1:
	cmpl	$127, %ecx
	jb	.LBB12_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrxl	%ecx, %edx, %edx
	testl	%eax, %edx
	je	.LBB12_8
	vaddss	.LCPI12_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rsp)
	xorl	%esi, %esi
	testl	%eax, %eax
	movl	$-8388608, %edi
	sarxl	%ecx, %edi, %ecx
	cmovsl	%esi, %edx
	addl	%eax, %edx
	andl	%ecx, %edx
	vmovd	%edx, %xmm0
	retq
.LBB12_4:
	vaddss	.LCPI12_0(%rip), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rsp)
	testl	%eax, %eax
	js	.LBB12_5
	je	.LBB12_8
	vmovss	.LCPI12_2(%rip), %xmm0
	retq
.LBB12_5:
	vmovss	.LCPI12_1(%rip), %xmm0
	retq
.Lfunc_end12:
	.size	ceilf, .Lfunc_end12-ceilf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI13_0:
	.long	0xff800000
.LCPI13_1:
	.long	0x42b17217
.LCPI13_2:
	.long	0xc2cff1b4
.LCPI13_3:
	.long	0x10000000
.LCPI13_4:
	.long	0x70000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI13_5:
	.quad	0x40471547652b82fe
.LCPI13_6:
	.quad	0x4338000000000000
.LCPI13_7:
	.quad	0xc338000000000000
.LCPI13_8:
	.quad	0x3ebc6af84b912394
.LCPI13_9:
	.quad	0x3f2ebfce50fac4f3
.LCPI13_10:
	.quad	0x3f962e42ff0c52d6
.LCPI13_11:
	.quad	0x3ff0000000000000
	.section	.text.expf,"ax",@progbits
	.p2align	4
	.type	expf,@function
expf:
.Lfunc_begin13:
	.cfi_startproc
	vmovd	%xmm0, %eax
	shrl	$20, %eax
	andl	$2047, %eax
	cmpl	$1067, %eax
	jae	.LBB13_1
.LBB13_8:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LCPI13_5(%rip), %xmm0, %xmm0
	vaddsd	.LCPI13_6(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vaddsd	.LCPI13_7(%rip), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	movl	%eax, %ecx
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	vmovq	%rax, %xmm1
	vmovsd	.LCPI13_8(%rip), %xmm2
	vfmadd213sd	.LCPI13_9(%rip), %xmm0, %xmm2
	vmulsd	%xmm0, %xmm0, %xmm3
	vmovsd	.LCPI13_10(%rip), %xmm4
	vfmadd213sd	.LCPI13_11(%rip), %xmm0, %xmm4
	vfmadd231sd	%xmm3, %xmm2, %xmm4
	vmulsd	%xmm1, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm1
.LBB13_9:
	vmovaps	%xmm1, %xmm0
	retq
.LBB13_1:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	.LCPI13_0(%rip), %xmm2
	vucomiss	%xmm0, %xmm2
	jae	.LBB13_9
	cmpl	$2040, %eax
	jae	.LBB13_3
	vucomiss	.LCPI13_1(%rip), %xmm0
	jbe	.LBB13_6
	movl	$1879048192, -8(%rsp)
	vmovss	-8(%rsp), %xmm0
	vmulss	.LCPI13_4(%rip), %xmm0, %xmm0
	retq
.LBB13_3:
	vaddss	%xmm0, %xmm0, %xmm0
	retq
.LBB13_6:
	vmovss	.LCPI13_2(%rip), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB13_8
	movl	$268435456, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI13_3(%rip), %xmm0, %xmm0
	retq
.Lfunc_end13:
	.size	expf, .Lfunc_end13-expf
	.cfi_endproc

	.section	.text.feclearexcept,"ax",@progbits
	.p2align	4
	.type	feclearexcept,@function
feclearexcept:
.Lfunc_begin14:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	feclearexcept, .Lfunc_end14-feclearexcept
	.cfi_endproc

	.section	.text.feraiseexcept,"ax",@progbits
	.p2align	4
	.type	feraiseexcept,@function
feraiseexcept:
.Lfunc_begin15:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	feraiseexcept, .Lfunc_end15-feraiseexcept
	.cfi_endproc

	.section	.text.fetestexcept,"ax",@progbits
	.p2align	4
	.type	fetestexcept,@function
fetestexcept:
.Lfunc_begin16:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	fetestexcept, .Lfunc_end16-fetestexcept
	.cfi_endproc

	.section	.text.fegetround,"ax",@progbits
	.p2align	4
	.type	fegetround,@function
fegetround:
.Lfunc_begin17:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	fegetround, .Lfunc_end17-fegetround
	.cfi_endproc

	.section	.text.__fesetround,"ax",@progbits
	.p2align	4
	.type	__fesetround,@function
__fesetround:
.Lfunc_begin18:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	__fesetround, .Lfunc_end18-__fesetround
	.cfi_endproc

	.section	.text.fegetenv,"ax",@progbits
	.p2align	4
	.type	fegetenv,@function
fegetenv:
.Lfunc_begin19:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	fegetenv, .Lfunc_end19-fegetenv
	.cfi_endproc

	.section	.text.fesetenv,"ax",@progbits
	.p2align	4
	.type	fesetenv,@function
fesetenv:
.Lfunc_begin20:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	fesetenv, .Lfunc_end20-fesetenv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI21_0:
	.long	0x7b800000
.LCPI21_1:
	.long	0xbf800000
	.section	.text.floorf,"ax",@progbits
	.p2align	4
	.type	floorf,@function
floorf:
.Lfunc_begin21:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB21_1
	retq
.LBB21_1:
	cmpl	$127, %ecx
	jb	.LBB21_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrxl	%ecx, %edx, %edx
	testl	%eax, %edx
	je	.LBB21_6
	vaddss	.LCPI21_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rsp)
	movl	$-8388608, %esi
	sarxl	%ecx, %esi, %ecx
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%eax, %esi
	andl	%ecx, %esi
	vmovd	%esi, %xmm0
	retq
.LBB21_4:
	vaddss	.LCPI21_0(%rip), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	testl	%eax, %eax
	jns	.LBB21_5
	vucomiss	%xmm1, %xmm0
	vmovaps	%xmm0, %xmm1
	jne	.LBB21_8
	jp	.LBB21_8
.LBB21_5:
	vmovaps	%xmm1, %xmm0
.LBB21_6:
	retq
.LBB21_8:
	vmovss	.LCPI21_1(%rip), %xmm1
	vmovaps	%xmm1, %xmm0
	retq
.Lfunc_end21:
	.size	floorf, .Lfunc_end21-floorf
	.cfi_endproc

	.section	.text.fmaf,"ax",@progbits
	.p2align	4
	.type	fmaf,@function
fmaf:
.Lfunc_begin22:
	.cfi_startproc
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm1
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movl	%eax, %ecx
	andl	$536870911, %ecx
	cmpl	$268435456, %ecx
	setne	%cl
	movabsq	$9218868437227405312, %rdx
	andnq	%rdx, %rax, %rdx
	sete	%dl
	orb	%cl, %dl
	jne	.LBB22_7
	vsubsd	%xmm1, %xmm0, %xmm3
	vucomisd	%xmm2, %xmm3
	jne	.LBB22_3
	jp	.LBB22_3
	vsubsd	%xmm2, %xmm0, %xmm3
	vucomisd	%xmm1, %xmm3
	jne	.LBB22_3
	jp	.LBB22_3
.LBB22_7:
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	retq
.LBB22_3:
	testq	%rax, %rax
	sets	%cl
	vucomisd	%xmm1, %xmm2
	setbe	%dl
	xorb	%cl, %dl
	jne	.LBB22_4
	vsubsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	jmp	.LBB22_6
.LBB22_4:
	vsubsd	%xmm0, %xmm1, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
.LBB22_6:
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	setbe	%dl
	xorb	%dl, %cl
	movq	%rax, %rdx
	orq	$1, %rdx
	decq	%rax
	testb	%cl, %cl
	cmovneq	%rdx, %rax
	vmovq	%rax, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end22:
	.size	fmaf, .Lfunc_end22-fmaf
	.cfi_endproc

	.section	.text.fmodf,"ax",@progbits
	.p2align	4
	.type	fmodf,@function
fmodf:
.Lfunc_begin23:
	.cfi_startproc
	vmovd	%xmm1, %edx
	movl	%edx, %esi
	addl	%edx, %esi
	je	.LBB23_2
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	movl	%edx, %edi
	andl	$2147483647, %edi
	cmpl	$2139095041, %edi
	setb	%dil
	cmpl	$255, %ecx
	setne	%r8b
	testb	%r8b, %dil
	jne	.LBB23_3
.LBB23_2:
	vmulss	%xmm1, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.LBB23_3:
	leal	(%rax,%rax), %edi
	cmpl	%esi, %edi
	jbe	.LBB23_4
	movl	%edx, %esi
	shrl	$23, %esi
	movzbl	%sil, %edi
	testl	%ecx, %ecx
	je	.LBB23_7
	movl	%eax, %esi
	andl	$8388607, %esi
	orl	$8388608, %esi
	testl	%edi, %edi
	je	.LBB23_12
.LBB23_15:
	andl	$8388607, %edx
	orl	$8388608, %edx
	cmpl	%edi, %ecx
	jg	.LBB23_17
.LBB23_21:
	movl	%esi, %edi
	subl	%edx, %edi
	jns	.LBB23_22
	jmp	.LBB23_23
.LBB23_4:
	je	.LBB23_5
	retq
.LBB23_7:
	movl	%eax, %esi
	xorl	%ecx, %ecx
	shll	$9, %esi
	js	.LBB23_9
	.p2align	4
.LBB23_8:
	decl	%ecx
	addl	%esi, %esi
	jns	.LBB23_8
.LBB23_9:
	movb	$1, %sil
	subb	%cl, %sil
	shlxl	%esi, %eax, %esi
	testl	%edi, %edi
	jne	.LBB23_15
.LBB23_12:
	movl	%edx, %r8d
	xorl	%edi, %edi
	shll	$9, %r8d
	js	.LBB23_14
	.p2align	4
.LBB23_13:
	decl	%edi
	addl	%r8d, %r8d
	jns	.LBB23_13
.LBB23_14:
	movb	$1, %r8b
	subb	%dil, %r8b
	shlxl	%r8d, %edx, %edx
	cmpl	%edi, %ecx
	jg	.LBB23_17
	jmp	.LBB23_21
	.p2align	4
.LBB23_19:
	addl	%esi, %esi
	decl	%ecx
	cmpl	%edi, %ecx
	jle	.LBB23_20
.LBB23_17:
	movl	%esi, %r8d
	subl	%edx, %r8d
	js	.LBB23_19
	movl	%r8d, %esi
	jne	.LBB23_19
	jmp	.LBB23_5
.LBB23_20:
	movl	%edi, %ecx
	movl	%esi, %edi
	subl	%edx, %edi
	js	.LBB23_23
.LBB23_22:
	movl	%edi, %esi
	je	.LBB23_5
.LBB23_23:
	cmpl	$8388607, %esi
	ja	.LBB23_24
	.p2align	4
.LBB23_25:
	leal	(%rsi,%rsi), %edx
	decl	%ecx
	cmpl	$4194304, %esi
	movl	%edx, %esi
	jb	.LBB23_25
	andl	$-2147483648, %eax
	testl	%ecx, %ecx
	jle	.LBB23_28
.LBB23_27:
	addl	$-8388608, %edx
	shll	$23, %ecx
	orl	%edx, %ecx
	orl	%eax, %ecx
	vmovd	%ecx, %xmm0
	retq
.LBB23_5:
	vpxor	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB23_24:
	movl	%esi, %edx
	andl	$-2147483648, %eax
	testl	%ecx, %ecx
	jg	.LBB23_27
.LBB23_28:
	movb	$1, %sil
	subb	%cl, %sil
	shrxl	%esi, %edx, %ecx
	orl	%eax, %ecx
	vmovd	%ecx, %xmm0
	retq
.Lfunc_end23:
	.size	fmodf, .Lfunc_end23-fmodf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI24_0:
	.long	0x5f800000
	.section	.text.frexpf,"ax",@progbits
	.p2align	4
	.type	frexpf,@function
frexpf:
.Lfunc_begin24:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	cmpb	$-1, %cl
	je	.LBB24_7
	movzbl	%cl, %edx
	testl	%edx, %edx
	jne	.LBB24_6
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB24_4
	jnp	.LBB24_3
.LBB24_4:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	vmulss	.LCPI24_0(%rip), %xmm0, %xmm0
	movq	%rdi, %rbx
	callq	frexpf
	movq	%rbx, %rdi
	movl	(%rbx), %eax
	addl	$-64, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movl	%eax, (%rdi)
	retq
.LBB24_6:
	movzbl	%cl, %ecx
	addl	$-126, %ecx
	movl	%ecx, (%rdi)
	andl	$-2139095041, %eax
	orl	$1056964608, %eax
	vmovd	%eax, %xmm0
.LBB24_7:
	retq
.LBB24_3:
	xorl	%eax, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end24:
	.size	frexpf, .Lfunc_end24-frexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI25_0:
	.long	0x0c800000
.LCPI25_1:
	.long	0x7f000000
	.section	.text.ldexpf,"ax",@progbits
	.p2align	4
	.type	ldexpf,@function
ldexpf:
.Lfunc_begin25:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB25_4
	vmulss	.LCPI25_1(%rip), %xmm0, %xmm0
	cmpl	$255, %edi
	jb	.LBB25_2
	vmulss	.LCPI25_1(%rip), %xmm0, %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB25_8
.LBB25_4:
	cmpl	$-127, %edi
	jg	.LBB25_9
	vmulss	.LCPI25_0(%rip), %xmm0, %xmm0
	cmpl	$-229, %edi
	ja	.LBB25_6
	vmulss	.LCPI25_0(%rip), %xmm0, %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB25_8:
	movl	%eax, %edi
	jmp	.LBB25_9
.LBB25_2:
	addl	$-127, %edi
	jmp	.LBB25_9
.LBB25_6:
	addl	$102, %edi
.LBB25_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	vmovd	%edi, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end25:
	.size	ldexpf, .Lfunc_end25-ldexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI26_0:
	.long	0x0c800000
.LCPI26_1:
	.long	0x7f000000
	.section	.text.scalbnf,"ax",@progbits
	.p2align	4
	.type	scalbnf,@function
scalbnf:
.Lfunc_begin26:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB26_4
	vmulss	.LCPI26_1(%rip), %xmm0, %xmm0
	cmpl	$255, %edi
	jb	.LBB26_2
	vmulss	.LCPI26_1(%rip), %xmm0, %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB26_8
.LBB26_4:
	cmpl	$-127, %edi
	jg	.LBB26_9
	vmulss	.LCPI26_0(%rip), %xmm0, %xmm0
	cmpl	$-229, %edi
	ja	.LBB26_6
	vmulss	.LCPI26_0(%rip), %xmm0, %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB26_8:
	movl	%eax, %edi
	jmp	.LBB26_9
.LBB26_2:
	addl	$-127, %edi
	jmp	.LBB26_9
.LBB26_6:
	addl	$102, %edi
.LBB26_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	vmovd	%edi, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end26:
	.size	scalbnf, .Lfunc_end26-scalbnf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI27_0:
	.long	0x3f800000
.LCPI27_1:
	.long	0x80000000
.LCPI27_2:
	.long	0x4b000000
.LCPI27_12:
	.long	0x10000000
.LCPI27_20:
	.long	0x70000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI27_3:
	.quad	0xbff0000000000000
.LCPI27_4:
	.quad	0x3fd27616c9496e0b
.LCPI27_5:
	.quad	0xbfd71969a075c67a
.LCPI27_6:
	.quad	0x3fdec70a6ca7badd
.LCPI27_7:
	.quad	0xbfe7154748bef6c8
.LCPI27_8:
	.quad	0x3ff71547652ab82b
.LCPI27_9:
	.quad	0x405fffffffd1d571
.LCPI27_10:
	.quad	0xc062c00000000000
.LCPI27_11:
	.long	0x90000000
	.long	0x10000000
.LCPI27_13:
	.quad	0x42e8000000000000
.LCPI27_14:
	.quad	0xc2e8000000000000
.LCPI27_15:
	.quad	0x3fac6af84b912394
.LCPI27_16:
	.quad	0x3fcebfce50fac4f3
.LCPI27_17:
	.quad	0x3fe62e42ff0c52d6
.LCPI27_18:
	.quad	0x3ff0000000000000
.LCPI27_19:
	.long	0xf0000000
	.long	0x70000000
	.section	.text.powf,"ax",@progbits
	.p2align	4
	.type	powf,@function
powf:
.Lfunc_begin27:
	.cfi_startproc
	vmovd	%xmm0, %edx
	vmovd	%xmm1, %ecx
	leal	-2139095040(%rdx), %eax
	cmpl	$-2130706432, %eax
	jb	.LBB27_2
	xorl	%eax, %eax
	leal	16777216(,%rcx,2), %esi
	cmpl	$16777216, %esi
	jbe	.LBB27_2
.LBB27_28:
	leal	-1060306944(%rdx), %ecx
	movl	%ecx, %esi
	andl	$-8388608, %esi
	subl	%esi, %edx
	movl	%ecx, %esi
	sarl	$23, %esi
	shrl	$15, %ecx
	andl	$240, %ecx
	leaq	__powf_log2_data(%rip), %rdi
	vmovsd	(%rcx,%rdi), %xmm0
	vmovd	%edx, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd213sd	.LCPI27_3(%rip), %xmm0, %xmm2
	vcvtsi2sd	%esi, %xmm15, %xmm0
	vaddsd	8(%rcx,%rdi), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm2, %xmm3
	vmovsd	.LCPI27_4(%rip), %xmm4
	vfmadd213sd	.LCPI27_5(%rip), %xmm2, %xmm4
	vmovsd	.LCPI27_6(%rip), %xmm5
	vfmadd213sd	.LCPI27_7(%rip), %xmm2, %xmm5
	vmulsd	%xmm3, %xmm3, %xmm6
	vfmadd231sd	.LCPI27_8(%rip), %xmm2, %xmm0
	vfmadd231sd	%xmm5, %xmm3, %xmm0
	vfmadd231sd	%xmm6, %xmm4, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	movabsq	$9223231299366420480, %rdx
	andq	%rcx, %rdx
	movabsq	$4638426141214900225, %rcx
	cmpq	%rcx, %rdx
	jae	.LBB27_29
.LBB27_33:
	vaddsd	.LCPI27_13(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rcx
	vaddsd	.LCPI27_14(%rip), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	addl	%ecx, %eax
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	vmovq	%rax, %xmm1
	vmovsd	.LCPI27_15(%rip), %xmm2
	vfmadd213sd	.LCPI27_16(%rip), %xmm0, %xmm2
	vmulsd	%xmm0, %xmm0, %xmm3
	vmovsd	.LCPI27_17(%rip), %xmm4
	vfmadd213sd	.LCPI27_18(%rip), %xmm0, %xmm4
	vfmadd231sd	%xmm3, %xmm2, %xmm4
	vmulsd	%xmm1, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
.LBB27_34:
	retq
.LBB27_2:
	leal	(%rcx,%rcx), %eax
	leal	-1(%rax), %esi
	cmpl	$-16777217, %esi
	jae	.LBB27_3
	leal	-1(,%rdx,2), %eax
	cmpl	$-16777217, %eax
	jae	.LBB27_11
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.LBB27_20
	cmpl	$8388607, %edx
	ja	.LBB27_28
.LBB27_27:
	vmulss	.LCPI27_2(%rip), %xmm0, %xmm0
	vmovd	%xmm0, %edx
	andl	$2147483647, %edx
	addl	$-192937984, %edx
	jmp	.LBB27_28
.LBB27_29:
	vucomisd	.LCPI27_9(%rip), %xmm0
	jbe	.LBB27_31
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI27_19(%rip), %rax
	vmovss	(%rax,%rcx,4), %xmm0
	vmovss	%xmm0, -8(%rsp)
	vmovss	-8(%rsp), %xmm0
	vmulss	.LCPI27_20(%rip), %xmm0, %xmm0
	retq
.LBB27_20:
	movl	%ecx, %eax
	shrl	$23, %eax
	movzbl	%al, %edx
	cmpl	$127, %edx
	jb	.LBB27_35
	cmpl	$150, %edx
	jbe	.LBB27_22
.LBB27_24:
	xorl	%eax, %eax
.LBB27_25:
	vmovd	%xmm0, %edx
	andl	$2147483647, %edx
	cmpl	$8388607, %edx
	ja	.LBB27_28
	jmp	.LBB27_27
.LBB27_31:
	vmovsd	.LCPI27_10(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jb	.LBB27_33
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI27_11(%rip), %rax
	vmovss	(%rax,%rcx,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI27_12(%rip), %xmm0, %xmm0
	retq
.LBB27_22:
	movb	$-106, %dl
	subb	%al, %dl
	bzhil	%edx, %ecx, %eax
	je	.LBB27_23
.LBB27_35:
	vsubss	%xmm0, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.LBB27_23:
	movl	$1, %eax
	shlxl	%edx, %eax, %edx
	movl	$65536, %eax
	testl	%ecx, %edx
	jne	.LBB27_25
	jmp	.LBB27_24
.LBB27_3:
	vmovdqa	%xmm0, %xmm2
	vmovss	.LCPI27_0(%rip), %xmm0
	cmpl	$1065353216, %edx
	je	.LBB27_34
	testl	%eax, %eax
	je	.LBB27_34
	addl	%edx, %edx
	cmpl	$-16777215, %edx
	setb	%sil
	cmpl	$-16777215, %eax
	setb	%al
	testb	%al, %sil
	jne	.LBB27_7
	vaddss	%xmm1, %xmm2, %xmm0
	retq
.LBB27_11:
	vmulss	%xmm0, %xmm0, %xmm0
	testl	%edx, %edx
	jns	.LBB27_17
	movl	%ecx, %eax
	shrl	$23, %eax
	movzbl	%al, %edx
	addl	$-151, %edx
	cmpl	$-24, %edx
	jb	.LBB27_17
	movb	$-106, %dl
	subb	%al, %dl
	bzhil	%edx, %ecx, %eax
	movzbl	%dl, %eax
	vmovaps	%xmm0, %xmm1
	jne	.LBB27_15
	vbroadcastss	.LCPI27_1(%rip), %xmm1
	vxorps	%xmm1, %xmm0, %xmm1
.LBB27_15:
	btl	%eax, %ecx
	jae	.LBB27_17
	vmovaps	%xmm1, %xmm0
.LBB27_17:
	testl	%ecx, %ecx
	jns	.LBB27_34
	vmovss	.LCPI27_0(%rip), %xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, -12(%rsp)
	vmovss	-12(%rsp), %xmm0
	retq
.LBB27_7:
	cmpl	$2130706432, %edx
	je	.LBB27_34
	setb	%al
	testl	%ecx, %ecx
	sets	%cl
	xorb	%al, %cl
	vxorps	%xmm0, %xmm0, %xmm0
	jne	.LBB27_34
	vmulss	%xmm1, %xmm1, %xmm0
	retq
.Lfunc_end27:
	.size	powf, .Lfunc_end27-powf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI28_0:
	.long	0xcb000000
.LCPI28_1:
	.long	0x4b000000
.LCPI28_2:
	.long	0x80000000
	.section	.text.rintf,"ax",@progbits
	.p2align	4
	.type	rintf,@function
rintf:
.Lfunc_begin28:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2130706432, %ecx
	cmpl	$1249902592, %ecx
	ja	.LBB28_8
	vmovss	.LCPI28_0(%rip), %xmm1
	vmovss	.LCPI28_1(%rip), %xmm2
	testl	%eax, %eax
	jns	.LBB28_2
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB28_8
	jnp	.LBB28_5
.LBB28_8:
	retq
.LBB28_2:
	vaddss	%xmm2, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB28_8
	jp	.LBB28_8
.LBB28_5:
	testl	%eax, %eax
	jns	.LBB28_7
	vmovss	.LCPI28_2(%rip), %xmm1
.LBB28_7:
	vmovaps	%xmm1, %xmm0
	retq
.Lfunc_end28:
	.size	rintf, .Lfunc_end28-rintf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI29_0:
	.long	0x7fffffff
.LCPI29_1:
	.long	0x4b000000
.LCPI29_2:
	.long	0xcb000000
.LCPI29_3:
	.long	0x3f000000
.LCPI29_4:
	.long	0xbf000000
.LCPI29_5:
	.long	0x3f800000
.LCPI29_6:
	.long	0xbf800000
.LCPI29_7:
	.long	0x80000000
	.section	.text.roundf,"ax",@progbits
	.p2align	4
	.type	roundf,@function
roundf:
.Lfunc_begin29:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB29_1
.LBB29_9:
	retq
.LBB29_1:
	vpbroadcastd	.LCPI29_0(%rip), %xmm1
	vpand	%xmm1, %xmm0, %xmm1
	vaddss	.LCPI29_1(%rip), %xmm1, %xmm2
	cmpl	$125, %ecx
	ja	.LBB29_3
	vmovss	%xmm2, -4(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB29_3:
	vaddss	.LCPI29_2(%rip), %xmm2, %xmm0
	vsubss	%xmm1, %xmm0, %xmm0
	vucomiss	.LCPI29_3(%rip), %xmm0
	jbe	.LBB29_5
	vaddss	%xmm0, %xmm1, %xmm0
	vaddss	.LCPI29_6(%rip), %xmm0, %xmm0
	jmp	.LBB29_7
.LBB29_5:
	vmovss	.LCPI29_4(%rip), %xmm2
	vucomiss	%xmm0, %xmm2
	vaddss	%xmm0, %xmm1, %xmm0
	jb	.LBB29_7
	vaddss	.LCPI29_5(%rip), %xmm0, %xmm0
.LBB29_7:
	testl	%eax, %eax
	jns	.LBB29_9
	vbroadcastss	.LCPI29_7(%rip), %xmm1
	vxorps	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end29:
	.size	roundf, .Lfunc_end29-roundf
	.cfi_endproc

	.type	__constant_8xf32,@object
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	6, 0x0
__constant_8xf32:
	.long	0x3f0a41b1
	.long	0x3fd59ef5
	.long	0xbe51467b
	.long	0x3e314d43
	.long	0xbd10254b
	.long	0xbe4b4d1c
	.long	0x3d9984c1
	.long	0x3eb88135
	.size	__constant_8xf32, 32

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"SingleConv$async_dispatch_0"
	.size	__unnamed_1, 28

	.type	iree_hal_executable_library_query_v0_header,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_header,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_header:
	.long	6
	.zero	4
	.quad	__unnamed_1
	.long	0
	.long	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_funcs:
	.quad	SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32
	.size	iree_hal_executable_library_query_v0_funcs, 8

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	iree_hal_executable_library_query_v0_attrs, 64

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32"
	.size	__unnamed_2, 53

	.type	iree_hal_executable_library_query_v0_names,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_names,"aw",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_names:
	.quad	__unnamed_2
	.size	iree_hal_executable_library_query_v0_names, 8

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"/home/cds/workspace/iree/cds_test/simple_onnx_conv/dump_executeable/configured_module_SingleConv$async_dispatch_0.mlir"
	.size	__unnamed_3, 119

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.long	3
	.long	118
	.quad	__unnamed_3
	.size	iree_hal_executable_library_query_v0_source_locations, 16

	.type	iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_names,@object
	.section	".rodata.iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_names","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_source_locations,@object
	.section	".rodata.iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_source_locations","a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_stage_location_tables,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_stage_location_tables,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_stage_location_tables:
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 24

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.long	1
	.zero	4
	.quad	iree_hal_executable_library_query_v0_funcs
	.quad	iree_hal_executable_library_query_v0_attrs
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_names
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_source_locations
	.quad	iree_hal_executable_library_query_v0_stage_location_tables
	.zero	4
	.zero	4
	.zero	16
	.size	iree_hal_executable_library_query_v0, 128

	.type	__exp2f_data,@object
	.section	.rodata.__exp2f_data,"a",@progbits
	.p2align	3, 0x0
__exp2f_data:
	.quad	4607182418800017408
	.quad	4607140297302181236
	.quad	4607100335213349135
	.quad	4607062579818421073
	.quad	4607027079437701499
	.quad	4606993883449571754
	.quad	4606963042313658936
	.quad	4606934607594512097
	.quad	4606908631985796885
	.quad	4606885169335019979
	.quad	4606864274668794914
	.quad	4606846004218661165
	.quad	4606830415447468583
	.quad	4606817567076339586
	.quad	4606807519112221737
	.quad	4606800332876043653
	.quad	4606796071031487437
	.quad	4606794797614391156
	.quad	4606796578062795143
	.quad	4606801479247646227
	.quad	4606809569504174299
	.quad	4606820918663955941
	.quad	4606835598087680144
	.quad	4606853680698631517
	.quad	4606875241016906669
	.quad	4606900355194379847
	.quad	4606929101050434204
	.quad	4606961558108475497
	.quad	4606997807633245319
	.quad	4607037932668951391
	.quad	4607082018078232794
	.quad	4607130150581978432
	.quad	0x42e8000000000000
	.quad	0x3fac6af84b912394
	.quad	0x3fcebfce50fac4f3
	.quad	0x3fe62e42ff0c52d6
	.quad	0x4338000000000000
	.quad	0x40471547652b82fe
	.quad	0x3ebc6af84b912394
	.quad	0x3f2ebfce50fac4f3
	.quad	0x3f962e42ff0c52d6
	.size	__exp2f_data, 328

	.type	__powf_log2_data,@object
	.section	.rodata.__powf_log2_data,"a",@progbits
	.p2align	3, 0x0
__powf_log2_data:
	.quad	0x3ff661ec79f8f3be
	.quad	0xbfdefec65b963019
	.quad	0x3ff571ed4aaf883d
	.quad	0xbfdb0b6832d4fca4
	.quad	0x3ff49539f0f010b0
	.quad	0xbfd7418b0a1fb77b
	.quad	0x3ff3c995b0b80385
	.quad	0xbfd39de91a6dcf7b
	.quad	0x3ff30d190c8864a5
	.quad	0xbfd01d9bf3f2b631
	.quad	0x3ff25e227b0b8ea0
	.quad	0xbfc97c1d1b3b7af0
	.quad	0x3ff1bb4a4a1a343f
	.quad	0xbfc2f9e393af3c9f
	.quad	0x3ff12358f08ae5ba
	.quad	0xbfb960cbbf788d5c
	.quad	0x3ff0953f419900a7
	.quad	0xbfaa6f9db6475fce
	.quad	0x3ff0000000000000
	.quad	0x0000000000000000
	.quad	0x3fee608cfd9a47ac
	.quad	0x3fb338ca9f24f53d
	.quad	0x3feca4b31f026aa0
	.quad	0x3fc476a9543891ba
	.quad	0x3feb2036576afce6
	.quad	0x3fce840b4ac4e4d2
	.quad	0x3fe9c2d163a1aa2d
	.quad	0x3fd40645f0c6651c
	.quad	0x3fe886e6037841ed
	.quad	0x3fd88e9c2c1b9ff8
	.quad	0x3fe767dcf5534862
	.quad	0x3fdce0a44eb17bcc
	.quad	0x3fd27616c9496e0b
	.quad	0xbfd71969a075c67a
	.quad	0x3fdec70a6ca7badd
	.quad	0xbfe7154748bef6c8
	.quad	0x3ff71547652ab82b
	.size	__powf_log2_data, 296

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	86
	.long	.Linfo_string3
	.long	.Linfo_string3
	.byte	1
	.byte	1
	.long	71

	.byte	3
	.long	.Linfo_string4
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_module_SingleConv$async_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/home/cds/workspace/iree/cds_test/simple_onnx_conv/dump_executeable"
.Linfo_string3:
	.asciz	"SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32"
.Linfo_string4:
	.asciz	"int"
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	42
	.asciz	"SingleConv$async_dispatch_0_conv_8x498x498x3x3x3_f32"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	71
	.asciz	"int"
	.long	0
.LpubTypes_end0:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

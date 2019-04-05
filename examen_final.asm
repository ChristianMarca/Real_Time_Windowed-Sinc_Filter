
_ventana:
	LNK	#12

;examen_final.c,14 :: 		double *ventana(){
;examen_final.c,15 :: 		for(i=0;i<Mo;i++){
	PUSH	W10
	PUSH	W11
	CLR	W0
	MOV	W0, _i
L_ventana0:
	MOV	_i, W1
	MOV	#lo_addr(_Mo), W0
	CP	W1, [W0]
	BRA LT	L__ventana53
	GOTO	L_ventana1
L__ventana53:
;examen_final.c,16 :: 		sinc[i]=(sin(2*3.14159*fc*(i-(Mo-1)/2))/(3.14169*(i-(Mo-1)/2)))*(0.42-0.5*cos(2*3.14159*(i/(Mo-1)))+0.08*cos(2*3.14159*(i/(Mo-1))));
	MOV	_i, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_sinc), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+10]
	MOV	_fc, W0
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	MOV	#4048, W2
	MOV	#16585, W3
	CALL	__Mul_FP
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	_Mo, W0
	DEC	W0
	ASR	W0, #1, W1
	MOV	#lo_addr(_i), W0
	SUBR	W1, [W0], W0
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__Mul_FP
	MOV.D	W0, W10
	CALL	_sin
	MOV	W0, [W14+4]
	MOV	W1, [W14+6]
	MOV	_Mo, W0
	SUB	W0, #1, W2
	MOV	W2, [W14+8]
	ASR	W2, #1, W1
	MOV	#lo_addr(_i), W0
	SUBR	W1, [W0], W0
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	MOV	#4467, W2
	MOV	#16457, W3
	CALL	__Mul_FP
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	[W14+4], W0
	MOV	[W14+6], W1
	PUSH.D	W2
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__Div_FP
	POP.D	W2
	MOV	W0, [W14+4]
	MOV	W1, [W14+6]
	MOV	_i, W0
	MOV	[W14+8], W2
	REPEAT	#17
	DIV.S	W0, W2
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	MOV	#4048, W2
	MOV	#16585, W3
	CALL	__Mul_FP
	MOV.D	W0, W10
	CALL	_cos
	MOV	#0, W2
	MOV	#16128, W3
	CALL	__Mul_FP
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	#2621, W0
	MOV	#16087, W1
	PUSH.D	W2
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__Sub_FP
	POP.D	W2
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	_Mo, W0
	SUB	W0, #1, W2
	MOV	_i, W0
	REPEAT	#17
	DIV.S	W0, W2
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	MOV	#4048, W2
	MOV	#16585, W3
	CALL	__Mul_FP
	MOV.D	W0, W10
	CALL	_cos
	MOV	#55050, W2
	MOV	#15779, W3
	CALL	__Mul_FP
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__AddSub_FP
	MOV	[W14+4], W2
	MOV	[W14+6], W3
	CALL	__Mul_FP
	MOV	[W14+10], W2
	MOV.D	W0, [W2]
;examen_final.c,17 :: 		shp[i]=0.0;
	MOV	_i, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_shp), W0
	ADD	W0, W1, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;examen_final.c,15 :: 		for(i=0;i<Mo;i++){
	MOV	#1, W1
	MOV	#lo_addr(_i), W0
	ADD	W1, [W0], [W0]
;examen_final.c,18 :: 		}
	GOTO	L_ventana0
L_ventana1:
;examen_final.c,19 :: 		}
L_end_ventana:
	POP	W11
	POP	W10
	ULNK
	RETURN
; end of _ventana

_igualar:

;examen_final.c,20 :: 		double *igualar(double sg[],double gh[]){
;examen_final.c,21 :: 		for(i=0;i<tam;i++){
	CLR	W0
	MOV	W0, _i
L_igualar3:
	MOV	_i, W1
	MOV	#lo_addr(_tam), W0
	CP	W1, [W0]
	BRA LT	L__igualar55
	GOTO	L_igualar4
L__igualar55:
;examen_final.c,22 :: 		sincc[i]=sg[i];
	MOV	_i, W0
	SL	W0, #2, W2
	MOV	#lo_addr(_sincc), W0
	ADD	W0, W2, W1
	ADD	W10, W2, W0
	MOV	[W0++], [W1++]
	MOV	[W0--], [W1--]
;examen_final.c,23 :: 		sincg[i]=gh[i];
	MOV	_i, W0
	SL	W0, #2, W2
	MOV	#lo_addr(_sincg), W0
	ADD	W0, W2, W1
	ADD	W11, W2, W0
	MOV	[W0++], [W1++]
	MOV	[W0--], [W1--]
;examen_final.c,21 :: 		for(i=0;i<tam;i++){
	MOV	#1, W1
	MOV	#lo_addr(_i), W0
	ADD	W1, [W0], [W0]
;examen_final.c,24 :: 		}
	GOTO	L_igualar3
L_igualar4:
;examen_final.c,25 :: 		for(i=tam;i<seb;i++){
	MOV	_tam, W0
	MOV	W0, _i
L_igualar6:
	MOV	_i, W1
	MOV	#lo_addr(_seb), W0
	CP	W1, [W0]
	BRA LT	L__igualar56
	GOTO	L_igualar7
L__igualar56:
;examen_final.c,26 :: 		sincc[i]=0.0;
	MOV	_i, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_sincc), W0
	ADD	W0, W1, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;examen_final.c,27 :: 		sincg[i]=0.0;
	MOV	_i, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_sincg), W0
	ADD	W0, W1, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;examen_final.c,25 :: 		for(i=tam;i<seb;i++){
	MOV	#1, W1
	MOV	#lo_addr(_i), W0
	ADD	W1, [W0], [W0]
;examen_final.c,28 :: 		}
	GOTO	L_igualar6
L_igualar7:
;examen_final.c,32 :: 		}
L_end_igualar:
	RETURN
; end of _igualar

_fft_c:
	LNK	#14

;examen_final.c,33 :: 		double *fft_c(double x[],double y[],int type){
;examen_final.c,34 :: 		for (k=0,num=1; k<m; k++){
	CLR	W0
	MOV	W0, _k
	MOV	#1, W0
	MOV	W0, _num
L_fft_c9:
	MOV	_k, W1
	MOV	#lo_addr(_m), W0
	CP	W1, [W0]
	BRA LT	L__fft_c58
	GOTO	L_fft_c10
L__fft_c58:
;examen_final.c,35 :: 		num *= 2;}
	MOV	_num, W0
	SL	W0, #1, W0
	MOV	W0, _num
;examen_final.c,34 :: 		for (k=0,num=1; k<m; k++){
	MOV	#1, W1
	MOV	#lo_addr(_k), W0
	ADD	W1, [W0], [W0]
;examen_final.c,35 :: 		num *= 2;}
	GOTO	L_fft_c9
L_fft_c10:
;examen_final.c,36 :: 		nmedios=num>>1;
	MOV	_num, W0
	ASR	W0, #1, W1
	MOV	W1, _nmedios
;examen_final.c,37 :: 		for (i=1, j=nmedios; i<num-2; i++)
	MOV	#1, W0
	MOV	W0, _i
	MOV	W1, _j
L_fft_c12:
	MOV	_num, W0
	SUB	W0, #2, W1
	MOV	#lo_addr(_i), W0
	CP	W1, [W0]
	BRA GT	L__fft_c59
	GOTO	L_fft_c13
L__fft_c59:
;examen_final.c,39 :: 		if (i < j) {
	MOV	_i, W1
	MOV	#lo_addr(_j), W0
	CP	W1, [W0]
	BRA LT	L__fft_c60
	GOTO	L_fft_c15
L__fft_c60:
;examen_final.c,40 :: 		tx = x[i];
	MOV	_i, W0
	SL	W0, #2, W2
	ADD	W10, W2, W3
	MOV.D	[W3], W0
	MOV	W0, _tx
	MOV	W1, _tx+2
;examen_final.c,41 :: 		ty = y[i];
	ADD	W11, W2, W2
	MOV.D	[W2], W0
	MOV	W0, _ty
	MOV	W1, _ty+2
;examen_final.c,42 :: 		x[i] = x[j];
	MOV	_j, W0
	SL	W0, #2, W0
	ADD	W10, W0, W0
	MOV	[W0++], [W3++]
	MOV	[W0--], [W3--]
;examen_final.c,43 :: 		y[i] = y[j];
	MOV	_i, W0
	SL	W0, #2, W0
	ADD	W11, W0, W1
	MOV	_j, W0
	SL	W0, #2, W0
	ADD	W11, W0, W0
	MOV	[W0++], [W1++]
	MOV	[W0--], [W1--]
;examen_final.c,44 :: 		x[j] = tx;
	MOV	_j, W0
	SL	W0, #2, W0
	ADD	W10, W0, W2
	MOV	_tx, W0
	MOV	_tx+2, W1
	MOV.D	W0, [W2]
;examen_final.c,45 :: 		y[j] = ty;
	MOV	_j, W0
	SL	W0, #2, W0
	ADD	W11, W0, W2
	MOV	_ty, W0
	MOV	_ty+2, W1
	MOV.D	W0, [W2]
;examen_final.c,46 :: 		}
L_fft_c15:
;examen_final.c,47 :: 		for(k=nmedios; k <= j; k >>= 1)
	MOV	_nmedios, W0
	MOV	W0, _k
L_fft_c16:
	MOV	_k, W1
	MOV	#lo_addr(_j), W0
	CP	W1, [W0]
	BRA LE	L__fft_c61
	GOTO	L_fft_c17
L__fft_c61:
;examen_final.c,48 :: 		{j -= k;}
	MOV	_k, W1
	MOV	#lo_addr(_j), W0
	SUBR	W1, [W0], [W0]
;examen_final.c,47 :: 		for(k=nmedios; k <= j; k >>= 1)
	MOV	_k, W0
	ASR	W0, #1, W0
	MOV	W0, _k
;examen_final.c,48 :: 		{j -= k;}
	GOTO	L_fft_c16
L_fft_c17:
;examen_final.c,49 :: 		j+=k;
	MOV	_k, W1
	MOV	#lo_addr(_j), W0
	ADD	W1, [W0], [W0]
;examen_final.c,37 :: 		for (i=1, j=nmedios; i<num-2; i++)
	MOV	#1, W1
	MOV	#lo_addr(_i), W0
	ADD	W1, [W0], [W0]
;examen_final.c,50 :: 		}
	GOTO	L_fft_c12
L_fft_c13:
;examen_final.c,52 :: 		nn=1;
	MOV	#1, W0
	MOV	W0, _nn
;examen_final.c,53 :: 		wn1 = -1.0;
	MOV	#0, W0
	MOV	#49024, W1
	MOV	W0, _wn1
	MOV	W1, _wn1+2
;examen_final.c,54 :: 		wn2 = 0.0;
	CLR	W0
	CLR	W1
	MOV	W0, _wn2
	MOV	W1, _wn2+2
;examen_final.c,55 :: 		for (nivel=0; nivel<m; nivel++)
	CLR	W0
	MOV	W0, _nivel
L_fft_c19:
	MOV	_nivel, W1
	MOV	#lo_addr(_m), W0
	CP	W1, [W0]
	BRA LT	L__fft_c62
	GOTO	L_fft_c20
L__fft_c62:
;examen_final.c,56 :: 		{ nn=2*nn;
	MOV	_nn, W0
	SL	W0, #1, W0
	MOV	W0, _nn
;examen_final.c,57 :: 		for(j=0; j<num; j=j+nn)
	CLR	W0
	MOV	W0, _j
L_fft_c22:
	MOV	_j, W1
	MOV	#lo_addr(_num), W0
	CP	W1, [W0]
	BRA LT	L__fft_c63
	GOTO	L_fft_c23
L__fft_c63:
;examen_final.c,59 :: 		w1a = 1.0; w2a = 0.0;
	MOV	#0, W0
	MOV	#16256, W1
	MOV	W0, _w1a
	MOV	W1, _w1a+2
	CLR	W0
	CLR	W1
	MOV	W0, _w2a
	MOV	W1, _w2a+2
;examen_final.c,60 :: 		for (k=0; k< nn/2; k++)//Se aplica mariposa a los pares (k+j, k+j+nn/2)
	CLR	W0
	MOV	W0, _k
L_fft_c25:
	MOV	_nn, W0
	ASR	W0, #1, W1
	MOV	#lo_addr(_k), W0
	CP	W1, [W0]
	BRA GT	L__fft_c64
	GOTO	L_fft_c26
L__fft_c64:
;examen_final.c,62 :: 		i=k+j;
	MOV	_k, W1
	MOV	#lo_addr(_j), W0
	ADD	W1, [W0], W1
	MOV	W1, _i
;examen_final.c,63 :: 		i1=i+nn/2;
	MOV	_nn, W0
	ASR	W0, #1, W0
	ADD	W1, W0, W0
	MOV	W0, _i1
;examen_final.c,64 :: 		t1 = w1a * x[i1] - w2a * y[i1];
	SL	W0, #2, W0
	ADD	W10, W0, W2
	MOV.D	[W2], W0
	PUSH	W12
	PUSH.D	W10
	MOV	_w1a, W2
	MOV	_w1a+2, W3
	CALL	__Mul_FP
	POP.D	W10
	MOV	W0, [W14+10]
	MOV	W1, [W14+12]
	MOV	_i1, W0
	SL	W0, #2, W0
	MOV	W0, [W14+8]
	ADD	W11, W0, W2
	MOV	W2, [W14+4]
	MOV.D	[W2], W0
	PUSH.D	W10
	MOV	_w2a, W2
	MOV	_w2a+2, W3
	CALL	__Mul_FP
	POP.D	W10
	POP	W12
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	[W14+10], W0
	MOV	[W14+12], W1
	PUSH.D	W2
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	PUSH	W12
	PUSH.D	W10
	CALL	__Sub_FP
	POP.D	W10
	POP	W12
	POP.D	W2
	MOV	W0, _t1
	MOV	W1, _t1+2
;examen_final.c,65 :: 		t2 = w1a * y[i1] + w2a * x[i1];
	MOV	[W14+4], W2
	MOV.D	[W2], W0
	PUSH	W12
	PUSH.D	W10
	MOV	_w1a, W2
	MOV	_w1a+2, W3
	CALL	__Mul_FP
	POP.D	W10
	MOV	[W14+8], W2
	MOV	W0, [W14+4]
	MOV	W1, [W14+6]
	ADD	W10, W2, W2
	MOV	W2, [W14+0]
	MOV.D	[W2], W0
	PUSH.D	W10
	MOV	_w2a, W2
	MOV	_w2a+2, W3
	CALL	__Mul_FP
	MOV	[W14+4], W2
	MOV	[W14+6], W3
	CALL	__AddSub_FP
	POP.D	W10
	MOV	W0, _t2
	MOV	W1, _t2+2
;examen_final.c,66 :: 		x[i1] = x[i] - t1;
	MOV	_i, W0
	SL	W0, #2, W0
	ADD	W10, W0, W0
	MOV.D	[W0], W4
	MOV	_t1, W2
	MOV	_t1+2, W3
	PUSH.D	W10
	MOV.D	W4, W0
	CALL	__Sub_FP
	POP.D	W10
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;examen_final.c,67 :: 		y[i1] = y[i] - t2;
	MOV	_i1, W0
	SL	W0, #2, W0
	ADD	W11, W0, W0
	MOV	W0, [W14+0]
	MOV	_i, W0
	SL	W0, #2, W0
	ADD	W11, W0, W0
	MOV.D	[W0], W4
	MOV	_t2, W2
	MOV	_t2+2, W3
	PUSH.D	W10
	MOV.D	W4, W0
	CALL	__Sub_FP
	POP.D	W10
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;examen_final.c,69 :: 		x[i] += t1;
	MOV	_i, W0
	SL	W0, #2, W0
	ADD	W10, W0, W0
	MOV	W0, [W14+0]
	MOV.D	[W0], W2
	MOV	_t1, W0
	MOV	_t1+2, W1
	PUSH.D	W10
	CALL	__AddSub_FP
	POP.D	W10
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;examen_final.c,70 :: 		y[i] += t2;
	MOV	_i, W0
	SL	W0, #2, W0
	ADD	W11, W0, W0
	MOV	W0, [W14+0]
	MOV.D	[W0], W2
	MOV	_t2, W0
	MOV	_t2+2, W1
	PUSH.D	W10
	CALL	__AddSub_FP
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;examen_final.c,71 :: 		tw = w1a * wn1 - w2a * wn2;
	MOV	_w1a, W0
	MOV	_w1a+2, W1
	MOV	_wn1, W2
	MOV	_wn1+2, W3
	CALL	__Mul_FP
	MOV	W0, [W14+4]
	MOV	W1, [W14+6]
	MOV	_w2a, W0
	MOV	_w2a+2, W1
	MOV	_wn2, W2
	MOV	_wn2+2, W3
	CALL	__Mul_FP
	POP.D	W10
	POP	W12
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	[W14+4], W0
	MOV	[W14+6], W1
	PUSH.D	W2
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	PUSH	W12
	PUSH.D	W10
	CALL	__Sub_FP
	POP.D	W10
	POP	W12
	POP.D	W2
	MOV	W0, _tw
	MOV	W1, _tw+2
;examen_final.c,72 :: 		w2a = w1a * wn2 + w2a * wn1;
	PUSH	W12
	PUSH.D	W10
	MOV	_w1a, W0
	MOV	_w1a+2, W1
	MOV	_wn2, W2
	MOV	_wn2+2, W3
	CALL	__Mul_FP
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	_w2a, W0
	MOV	_w2a+2, W1
	MOV	_wn1, W2
	MOV	_wn1+2, W3
	CALL	__Mul_FP
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__AddSub_FP
	POP.D	W10
	POP	W12
	MOV	W0, _w2a
	MOV	W1, _w2a+2
;examen_final.c,73 :: 		w1a = tw;
	MOV	_tw, W0
	MOV	_tw+2, W1
	MOV	W0, _w1a
	MOV	W1, _w1a+2
;examen_final.c,60 :: 		for (k=0; k< nn/2; k++)//Se aplica mariposa a los pares (k+j, k+j+nn/2)
	MOV	#1, W1
	MOV	#lo_addr(_k), W0
	ADD	W1, [W0], [W0]
;examen_final.c,74 :: 		}
	GOTO	L_fft_c25
L_fft_c26:
;examen_final.c,57 :: 		for(j=0; j<num; j=j+nn)
	MOV	_nn, W1
	MOV	#lo_addr(_j), W0
	ADD	W1, [W0], [W0]
;examen_final.c,75 :: 		}
	GOTO	L_fft_c22
L_fft_c23:
;examen_final.c,76 :: 		wn2 = sqrt((1.0 - wn1) / 2.0);
	MOV	#0, W0
	MOV	#16256, W1
	MOV	_wn1, W2
	MOV	_wn1+2, W3
	PUSH	W12
	PUSH.D	W10
	CALL	__Sub_FP
	MOV	#0, W2
	MOV	#16384, W3
	CALL	__Div_FP
	MOV.D	W0, W10
	CALL	_sqrt
	POP.D	W10
	POP	W12
	MOV	W0, _wn2
	MOV	W1, _wn2+2
;examen_final.c,77 :: 		if(type==1){wn2 = -wn2;}
	CP	W12, #1
	BRA Z	L__fft_c65
	GOTO	L_fft_c28
L__fft_c65:
	MOV	#0, W1
	MOV	#32768, W2
	MOV	#lo_addr(_wn2), W0
	XOR	W1, [W0], [W0++]
	XOR	W2, [W0], [W0--]
L_fft_c28:
;examen_final.c,78 :: 		wn1 = sqrt((1.0 + wn1) / 2.0);
	MOV	#0, W2
	MOV	#16256, W3
	MOV	_wn1, W0
	MOV	_wn1+2, W1
	PUSH	W12
	PUSH.D	W10
	CALL	__AddSub_FP
	MOV	#0, W2
	MOV	#16384, W3
	CALL	__Div_FP
	MOV.D	W0, W10
	CALL	_sqrt
	POP.D	W10
	POP	W12
	MOV	W0, _wn1
	MOV	W1, _wn1+2
;examen_final.c,55 :: 		for (nivel=0; nivel<m; nivel++)
	MOV	#1, W1
	MOV	#lo_addr(_nivel), W0
	ADD	W1, [W0], [W0]
;examen_final.c,79 :: 		}
	GOTO	L_fft_c19
L_fft_c20:
;examen_final.c,80 :: 		if(type==0){
	CP	W12, #0
	BRA Z	L__fft_c66
	GOTO	L_fft_c29
L__fft_c66:
;examen_final.c,81 :: 		for(i=0;i<num;i++){
	CLR	W0
	MOV	W0, _i
L_fft_c30:
	MOV	_i, W1
	MOV	#lo_addr(_num), W0
	CP	W1, [W0]
	BRA LT	L__fft_c67
	GOTO	L_fft_c31
L__fft_c67:
;examen_final.c,82 :: 		x[i]/=tam;
	MOV	_i, W0
	SL	W0, #2, W0
	ADD	W10, W0, W0
	MOV	W0, [W14+4]
	PUSH	W12
	PUSH.D	W10
	MOV	_tam, W0
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	POP.D	W10
	POP	W12
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	[W14+4], W2
	MOV.D	[W2], W0
	PUSH.D	W2
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	PUSH	W12
	PUSH.D	W10
	CALL	__Div_FP
	POP.D	W10
	POP	W12
	POP.D	W2
	MOV	[W14+4], W2
	MOV.D	W0, [W2]
;examen_final.c,83 :: 		y[i]/=tam;
	MOV	_i, W0
	SL	W0, #2, W0
	ADD	W11, W0, W0
	MOV	W0, [W14+4]
	PUSH	W12
	PUSH.D	W10
	MOV	_tam, W0
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	POP.D	W10
	POP	W12
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	[W14+4], W2
	MOV.D	[W2], W0
	PUSH.D	W2
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	PUSH	W12
	PUSH.D	W10
	CALL	__Div_FP
	POP.D	W10
	POP	W12
	POP.D	W2
	MOV	[W14+4], W2
	MOV.D	W0, [W2]
;examen_final.c,81 :: 		for(i=0;i<num;i++){
	MOV	#1, W1
	MOV	#lo_addr(_i), W0
	ADD	W1, [W0], [W0]
;examen_final.c,84 :: 		}
	GOTO	L_fft_c30
L_fft_c31:
;examen_final.c,85 :: 		}
L_fft_c29:
;examen_final.c,86 :: 		}
L_end_fft_c:
	ULNK
	RETURN
; end of _fft_c

_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68
	LNK	#2

;examen_final.c,88 :: 		void main() {
;examen_final.c,93 :: 		PORTB = 0x0000;
	PUSH	W10
	PUSH	W11
	PUSH	W12
	CLR	PORTB
;examen_final.c,94 :: 		TRISB.F1 = 1;
	BSET	TRISB, #1
;examen_final.c,95 :: 		TRISB.F0 = 1;
	BSET	TRISB, #0
;examen_final.c,96 :: 		UART1_Init(115200);
	MOV	#49664, W10
	MOV	#1, W11
	CALL	_UART1_Init
;examen_final.c,97 :: 		Delay_ms(100);
	MOV	#16, W8
	MOV	#297, W7
L_main33:
	DEC	W7
	BRA NZ	L_main33
	DEC	W8
	BRA NZ	L_main33
	NOP
;examen_final.c,98 :: 		ADC1_Init();
	CALL	_ADC1_Init
;examen_final.c,99 :: 		while (1) {
L_main35:
;examen_final.c,101 :: 		for(ikl=0;ikl<=tam-1;ikl++){
	CLR	W0
	MOV	W0, _ikl
L_main37:
	MOV	_tam, W0
	SUB	W0, #1, W1
	MOV	#lo_addr(_ikl), W0
	CP	W1, [W0]
	BRA GE	L__main69
	GOTO	L_main38
L__main69:
;examen_final.c,102 :: 		dato[ikl] = ADC1_Read(1)*(5.0)/4095.0;
	MOV	_ikl, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_dato), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV	#1, W10
	CALL	_ADC1_Read
	CLR	W1
	CALL	__Long2Float
	MOV	#0, W2
	MOV	#16544, W3
	CALL	__Mul_FP
	MOV	#61440, W2
	MOV	#17791, W3
	CALL	__Div_FP
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;examen_final.c,103 :: 		x[ikl]=dato[ikl];
	MOV	_ikl, W0
	SL	W0, #2, W2
	MOV	#lo_addr(_x), W0
	ADD	W0, W2, W1
	MOV	#lo_addr(_dato), W0
	ADD	W0, W2, W0
	MOV	[W0++], [W1++]
	MOV	[W0--], [W1--]
;examen_final.c,104 :: 		y[ikl]=0.0;
	MOV	_ikl, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_y), W0
	ADD	W0, W1, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;examen_final.c,101 :: 		for(ikl=0;ikl<=tam-1;ikl++){
	MOV	#1, W1
	MOV	#lo_addr(_ikl), W0
	ADD	W1, [W0], [W0]
;examen_final.c,105 :: 		}
	GOTO	L_main37
L_main38:
;examen_final.c,108 :: 		igualar(x,y);
	MOV	#lo_addr(_y), W11
	MOV	#lo_addr(_x), W10
	CALL	_igualar
;examen_final.c,109 :: 		fft_c(sincc,sincg,1);
	MOV	#1, W12
	MOV	#lo_addr(_sincg), W11
	MOV	#lo_addr(_sincc), W10
	CALL	_fft_c
;examen_final.c,110 :: 		for(ikl=0;ikl<seb;ikl++){
	CLR	W0
	MOV	W0, _ikl
L_main40:
	MOV	_ikl, W1
	MOV	#lo_addr(_seb), W0
	CP	W1, [W0]
	BRA LT	L__main70
	GOTO	L_main41
L__main70:
;examen_final.c,111 :: 		signal_x[i]=x[i];
	MOV	_i, W0
	SL	W0, #2, W2
	MOV	#lo_addr(_signal_x), W0
	ADD	W0, W2, W1
	MOV	#lo_addr(_x), W0
	ADD	W0, W2, W0
	MOV	[W0++], [W1++]
	MOV	[W0--], [W1--]
;examen_final.c,112 :: 		signal_y[i]=y[i];
	MOV	_i, W0
	SL	W0, #2, W2
	MOV	#lo_addr(_signal_y), W0
	ADD	W0, W2, W1
	MOV	#lo_addr(_y), W0
	ADD	W0, W2, W0
	MOV	[W0++], [W1++]
	MOV	[W0--], [W1--]
;examen_final.c,110 :: 		for(ikl=0;ikl<seb;ikl++){
	MOV	#1, W1
	MOV	#lo_addr(_ikl), W0
	ADD	W1, [W0], [W0]
;examen_final.c,113 :: 		}
	GOTO	L_main40
L_main41:
;examen_final.c,114 :: 		ventana();
	CALL	_ventana
;examen_final.c,116 :: 		igualar(x,y);
	MOV	#lo_addr(_y), W11
	MOV	#lo_addr(_x), W10
	CALL	_igualar
;examen_final.c,117 :: 		fft_c(sincc,sincg,1);
	MOV	#1, W12
	MOV	#lo_addr(_sincg), W11
	MOV	#lo_addr(_sincc), W10
	CALL	_fft_c
;examen_final.c,120 :: 		for(ikl=0;ikl<seb;ikl++){
	CLR	W0
	MOV	W0, _ikl
L_main43:
	MOV	_ikl, W1
	MOV	#lo_addr(_seb), W0
	CP	W1, [W0]
	BRA LT	L__main71
	GOTO	L_main44
L__main71:
;examen_final.c,121 :: 		signal_mx[i]=signal_x[i]*x[i];
	MOV	_i, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_signal_mx), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV	#lo_addr(_signal_x), W0
	ADD	W0, W1, W0
	MOV	[W0++], W3
	MOV	[W0--], W4
	MOV	#lo_addr(_x), W0
	ADD	W0, W1, W2
	MOV.D	[W2], W0
	MOV	W3, W2
	MOV	W4, W3
	CALL	__Mul_FP
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;examen_final.c,122 :: 		signal_my[i]=signal_y[i]*y[i];
	MOV	_i, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_signal_my), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV	#lo_addr(_signal_y), W0
	ADD	W0, W1, W0
	MOV	[W0++], W3
	MOV	[W0--], W4
	MOV	#lo_addr(_y), W0
	ADD	W0, W1, W2
	MOV.D	[W2], W0
	MOV	W3, W2
	MOV	W4, W3
	CALL	__Mul_FP
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;examen_final.c,120 :: 		for(ikl=0;ikl<seb;ikl++){
	MOV	#1, W1
	MOV	#lo_addr(_ikl), W0
	ADD	W1, [W0], [W0]
;examen_final.c,123 :: 		}
	GOTO	L_main43
L_main44:
;examen_final.c,124 :: 		fft_c(signal_mx,signal_my,0);
	CLR	W12
	MOV	#lo_addr(_signal_my), W11
	MOV	#lo_addr(_signal_mx), W10
	CALL	_fft_c
;examen_final.c,125 :: 		for(ikl=0;ikl<tam;ikl++){
	CLR	W0
	MOV	W0, _ikl
L_main46:
	MOV	_ikl, W1
	MOV	#lo_addr(_tam), W0
	CP	W1, [W0]
	BRA LT	L__main72
	GOTO	L_main47
L__main72:
;examen_final.c,126 :: 		FloatToStr(dato[ikl],txt);
	MOV	_ikl, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_dato), W0
	ADD	W0, W1, W0
	MOV	#lo_addr(_txt), W12
	MOV.D	[W0], W10
	CALL	_FloatToStr
;examen_final.c,127 :: 		UART1_Write_Text(txt);
	MOV	#lo_addr(_txt), W10
	CALL	_UART1_Write_Text
;examen_final.c,128 :: 		UART1_Write(44);
	MOV	#44, W10
	CALL	_UART1_Write
;examen_final.c,125 :: 		for(ikl=0;ikl<tam;ikl++){
	MOV	#1, W1
	MOV	#lo_addr(_ikl), W0
	ADD	W1, [W0], [W0]
;examen_final.c,129 :: 		}
	GOTO	L_main46
L_main47:
;examen_final.c,130 :: 		UART1_Write(13);
	MOV	#13, W10
	CALL	_UART1_Write
;examen_final.c,131 :: 		UART1_Write(10);
	MOV	#10, W10
	CALL	_UART1_Write
;examen_final.c,132 :: 		for(ikl=0;ikl<=tam-1;ikl++){
	CLR	W0
	MOV	W0, _ikl
L_main49:
	MOV	_tam, W0
	SUB	W0, #1, W1
	MOV	#lo_addr(_ikl), W0
	CP	W1, [W0]
	BRA GE	L__main73
	GOTO	L_main50
L__main73:
;examen_final.c,133 :: 		FloatToStr(x[ikl],txt1);
	MOV	_ikl, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_x), W0
	ADD	W0, W1, W0
	MOV	#lo_addr(_txt1), W12
	MOV.D	[W0], W10
	CALL	_FloatToStr
;examen_final.c,134 :: 		UART1_Write_Text(txt1);
	MOV	#lo_addr(_txt1), W10
	CALL	_UART1_Write_Text
;examen_final.c,135 :: 		UART1_Write(43);
	MOV	#43, W10
	CALL	_UART1_Write
;examen_final.c,136 :: 		FloatToStr(y[ikl],txt1);
	MOV	_ikl, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_y), W0
	ADD	W0, W1, W0
	MOV	#lo_addr(_txt1), W12
	MOV.D	[W0], W10
	CALL	_FloatToStr
;examen_final.c,137 :: 		UART1_Write_Text(txt1);
	MOV	#lo_addr(_txt1), W10
	CALL	_UART1_Write_Text
;examen_final.c,138 :: 		UART1_Write(44);
	MOV	#44, W10
	CALL	_UART1_Write
;examen_final.c,132 :: 		for(ikl=0;ikl<=tam-1;ikl++){
	MOV	#1, W1
	MOV	#lo_addr(_ikl), W0
	ADD	W1, [W0], [W0]
;examen_final.c,139 :: 		}
	GOTO	L_main49
L_main50:
;examen_final.c,140 :: 		UART1_Write(13);
	MOV	#13, W10
	CALL	_UART1_Write
;examen_final.c,141 :: 		UART1_Write(10);
	MOV	#10, W10
	CALL	_UART1_Write
;examen_final.c,142 :: 		}
	GOTO	L_main35
;examen_final.c,144 :: 		}
L_end_main:
	POP	W12
	POP	W11
	POP	W10
	ULNK
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main

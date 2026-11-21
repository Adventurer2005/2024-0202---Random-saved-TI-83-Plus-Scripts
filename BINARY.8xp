ClrList L1
""->Str0
Input B
0->V
0->C
1->I
0->L
~1->D
0->T
B->N
If N=0:Then
	{0}->L1
	"0"->Str0
End
If N>0:Then
	While L<1
		If N>=2^T:Then
			D+1->D:T+1->T
		End
		If N<2^T:Then
			1->L
		End
	End
	While D>=0
		0->C
		If N>=2^D:Then
			1->L1(I)
			If V=1:Then
				Str0+"1"->Str0
			End
			If V=0:Then
				"1"->Str0:1->V
			End
			N-2^D->N
			1->C
		End
		If N<2^D and C=0:Then
			0->L1(I)
			If V=1:Then
				Str0+"0"->Str0
			End
			If V=0:Then
				"0"->Str0:1->V
			End
		End
		D-1->D:I+1->I
	End
End
Disp Str0

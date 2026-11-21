ClrDraw
Prompt V
Prompt H
N->[A](V,H)
[A](V,H)->A
0->H
0->V
14->E
V+1->B
H+1->C
0->M
While E>=0
	If A>=2^E
	Then
		Pxl-On(B,C)
		A-2^E->A
	End
	E-1->E
	C+1->C
	If C-H=6:Then
		H+1->C
		B+1->B
	End
End

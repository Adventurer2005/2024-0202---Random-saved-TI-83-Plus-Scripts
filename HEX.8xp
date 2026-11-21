"DEFINE VARIABLES:"
Input N
15->H
0->E
N->D
0->A
0->P
"TESTING RANGE:"
If D=0:Then
	"0"->Str0
End
If D<1 and D>0:Then
	"."->Str0
1->A:1->E:1->P:1->L:End
If D>=1:Then
	1->L
	While L=1:
		If D<=15*16^E
		Then
			0->L
		End
		If D>15*16^E
		Then
			E+1->E
		End
	End
End
"INTEGRATION:"
1->L
While L=1
	If D>=H*16^E
	Then
		If H=15:Then
			"F"->Str9
		End
		If H=14:Then
			"E"->Str9
		End
		If H=13:Then
			"D"->Str9
		End
		If H=12:Then
			"C"->Str9
		End
		If H=11:Then
			"B"->Str9
		End
		If H=10:Then
			"A"->Str9
		End
		If H=9:Then
			"9"->Str9
		End
		If H=8:Then
			"8"->Str9
		End
		If H=7:Then
			"7"->Str9
		End
		If H=6:Then
			"6"->Str9
		End
		If H=5:Then
			"5"->Str9
		End
		If H=4:Then
			"4"->Str9
		End
		If H=3:Then
			"3"->Str9
		End
		If H=2:Then
			"2"->Str9
		End
		If H=1:Then
			"1"->Str9
		End
		If A!=0:Then
			Str0+Str9->Str0
		End
		If A=0:Then
			Str9->Str0:1->A
		End
		D-H*16^E->D
		15->H:E-1->E
	End
	If D<16^E:Then
		Str0+"0"->Str0
		E-1->E
	End
	If E<0 and P=0 and D!=0:Then
		Str0+"."->Str0
		1->P
	End
	If D=0 and E<=~1 and E>~2:Then
		0->L
	End
	If E<~99:Then
		0->L
	End
	If D<H*16^E
	Then
		H-1->H
	End
End
End
Disp Str0

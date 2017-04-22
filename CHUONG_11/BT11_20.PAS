Program Da_Thuc;
CONST
	MaxOrder = 10;
TYPE
	PolyNom = RECORD
   	Bac : Integer;
      HeSo : Array[0..MaxOrder] Of Real;
   End;
VAR
	A,B,C : Polynom;
   i     : Integer;
{-------------------------}
Procedure Nhap;
Var
	i : Integer;
Begin
	Repeat
   	Writeln;
      Writeln('Hay nhap 2 da thu A(x), B(x) voi');
      Write('-Bac A (phai <= ',MaxOrder,' ) = ');
      Readln(A.Bac);
      If A.Bac > MaxOrder Then
      	Writeln(#7,'Bac A phai <= ',MaxOrder,' ! nhap lai ');
      Write('-Bac B (phai <= ',MaxOrder,' ) = ');
      Readln(B.Bac);
      If B.Bac > MaxOrder Then
      	Writeln(#7,'Bac B phai <= ',MaxOrder,' ! nhap lai ');
   Until (A.Bac <= MaxOrder) And (B.Bac <= MaxOrder);
   For i := 0 To MaxOrder Do
   	Begin
      	A.Heso[i] :=0;
         B.Heso[i] :=0;
      End;
   Writeln;
   Writeln('Nhap ca he so cua da thuc A: ');
   For i := A.Bac DownTo 0 Do
   	Begin
      	Write('	A[',i,'] = ');
         Readln(A.heso[i]);
      End;
   Writeln;
   Writeln('Nhap ca he so cua da thuc B: ');
   For i := B.Bac DownTo 0 Do
   	Begin
      	Write('	B[',i,'] = ');
         Readln(B.heso[i]);
      End;
End;

{-------------------------}
Procedure Cong(A,B : Polynom; Var C : Polynom);
Var
	BacMax :Integer;
Begin
	If A.Bac < B.Bac Then
   	Begin
      	C.Bac :=B.Bac;
         For i := A.Bac + 1 To B.Bac Do
         	A.Heso[i] := 0
      End
   Else
   	Begin
      	C.Bac := A.Bac;
         For i := B.Bac + 1 To A.Bac Do
         	B.Heso[i] := 0
      End;
   C.Bac :=A.Bac;
   For i := C.Bac To MaxOrder Do
   	C.Heso[i] := 0;
   For i := 0 To C.Bac Do
   	C.Heso[i] := A.Heso[i] + B.Heso[i];
End;

{-------------------------}
Procedure Nhan(A,B : Polynom; Var C:Polynom);
Var
	i,j : Integer;
Begin
	For i := 0 To MaxOrder Do
   	C.Heso[i] := 0;
   For i := 0 To A.Bac Do
   	For j := 0 To B.Bac Do
      	C.Heso[i+j] := C.Heso[i+j] + A.Heso[i] * B.Heso[j];
   C.Bac :=A.Bac + B.Bac;
End;

{-------------------------}
procedure Chia(P, Q :Polynom);
Var
	i,k,kk : Integer;
   G : Polynom;
Begin
	If P.Bac < Q.Bac Then
   	For i := P.Bac + 1 To Q.Bac Do
      	P.Heso[i] := 0;
   If P.Bac > Q.Bac Then
   	For i := Q.Bac + 1 To P.Bac Do
      	Q.Heso[i] := 0;
   Write('-Hay cho he so trong ket qua phep chia: ');
   Readln(kk);
   Writeln('Da thuc ket qua xep theo so mu giam dan. ');
   Writeln;
   Write('Bac: ');
   For k := 0 To kk Do
   	Write(P.Bac-Q.Bac-k:6);
   Writeln;
   Write('He so ');
   For k := 0 To kk Do
   	Begin
      	G.Heso[k] := P.Heso[P.bac] / Q.Heso[Q.Bac];
         If Frac(G.Heso[k]) =0 Then
				Write(G.Heso[k]:6:0)
			Else
				Write(G.Heso[k]:6:0);
			For i:= Q.Bac DownTo 1 Do
				P.Heso[P.Bac-Q.Bac+i] := P.Heso[P.Bac+i-1] - G.Heso[k]*Q.Heso[i-1];
         For i := P.Bac-Q.bac Downto 0 Do
         	P.Heso[i] :=0;
      End;
End;

{--------------------------}
BEGIN
	Nhap;
   Nhan(A,B,C);
   Writeln;
   Writeln('Cac he so cua da thuc tich: ');
   Write('Bac: ');
   For i := 0 To C.Bac Do
   Write(i:7);
   Writeln;
   Write('He so: ');
   For i := 0 To C.Bac Do
   	If Frac(C.Heso[i]) = 0 Then
      	Write(C.Heso[i]:7:0)
      Else
      	Write(C.Heso[i]:7:0);
   Writeln;
   Writeln;
   Chia(A,B);
   Readln
END.
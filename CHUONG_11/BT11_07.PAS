Program So_Huu_Ty;
TYPE
	HuuTy = RECORD
   	TuSo, MauSo : Integer;
   End;

VAR
	So1, So2, Kq : HuuTy;
   St1, St2     : String;
   i,Result, n, m   : Integer;
   Ch				 : Char;

BEGIN
	Writeln('NHAP, XUAT SO HUU TY');
   Writeln('--------------------');
   Writeln;
   Write('-So thu nhat: ');
   Readln(St1);
   Write('-So thu hai : ');
   Readln(St2);
   i := Pos('/', St1);
   With so1 Do
   	If i = 0 Then
      	Begin
         	Val(St1, TuSo, Result);
            MauSo := 1;
         End
      Else
      	Begin
         	Val(Copy(St1, 1, i-1), TuSo, Result);
            Val(Copy(St1, i+1, Length(St1)-i), MauSo, Result);
         End;
	i := Pos('/', St2);
   With So2 Do
   	If i = 0 Then
      	Begin
         	Val(St2, TuSo, Result);
            MauSo := 1;
         End
      Else
      	Begin
         	Val(Copy(St2, 1, i-1), TuSo, Result);
            Val(Copy(St2, i+1, Length(St2)-i), MauSo, Result);
         End;
   Write('Chon phep tinh (+, -, *, /): ');
   Readln(Ch);
   Case Ch Of
   	'+' : Begin
      			Kq.TuSo := So1.TuSo*So2.MauSo + So1.MauSo * So2.TuSo;
               Kq.MauSo := So1.MauSo * So2.MauSo;
      		End;
     	'-' : Begin
      			Kq.TuSo := So1.TuSo*So2.MauSo - So1.MauSo * So2.TuSo;
               Kq.MauSo := So1.MauSo * So2.MauSo;
      		End;
      '*' : Begin
      			Kq.TuSo := So1.TuSo*So2.TuSo;
               Kq.MauSo := So1.MauSo * So2.MauSo;
      		End;
      '/' : Begin
      			Kq.TuSo := So1.TuSo*So2.MauSo;
               Kq.MauSo := So1.MauSo * So2.TuSo;
      		End;
   End;
   If Kq.TuSo = 0 Then
   	Write('Ket qua : 0')
   Else
   	With Kq Do
      	Begin
         	n := ABS(TuSo);
            m := ABS(MauSo);
            While n <> m Do
            	If n > m Then
               	n := n-m
               Else
               	m := m-n;
             TuSo :=TuSo Div n;
             MauSo := MauSo Div n;
             If MauSo = 1 Then
             	Write('Ket qua : ',TuSo)
             Else
             	Write('Ket qua : ',TuSo,'/',MauSo);
         End;
   Readln
END.


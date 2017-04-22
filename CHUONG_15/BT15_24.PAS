Program Diem_San_Pham;
Uses Crt;
Var
	f : Text;
   Nhom : Char;
   d1,d2 : Real;
   TongA1,TongA2 : Real;
   TongB1,TongB2 : Real;
   TongC1,TongC2 : Real;
   SoA,SoB,SoC : Integer;
   i : Integer;
Begin
	Assign(f,'sanpham.txt');
   Rewrite(f);
   Writeln(f,'Nhom nguoi',' San pham 1 ','  San pham 2  ');
   Writeln(f);
   ClrScr;
   Repeat
   	Write('Nhom nguoi ($ de thoat): ');
      Readln(Nhom);
      If Nhom <> '$' Then
      	Begin
         	Write('-Diem san pham 1 : ');
            Readln(d1);
            Write('-Diem san pham 2 : ');
            Readln(d2);
            Writeln(f,Upcase(Nhom):6,d1:16:1,d2:16:1);
         End;
   Until Nhom = '$';
   Close(f);
   ClrScr;
   Reset(f);
   Readln(f);
   Readln(f);
   TongA1 := 0;TongA2 := 0;SoA := 0;
   TongB1 := 0;TongB2 := 0;SoB := 0;
   TongC1 := 0;TongC2 := 0;SoC := 0;
   While Not EOF(f) Do
   	Begin
      	For i := 1 To 6 Do {So vong lap bang vi tri cua nhom }
         	Read(f,Nhom);
         Readln(f,d1,d2);
         Case Nhom Of
         	'A' : Begin
                  	TongA1 := TongA1 + d1;
                     TongA2 := TongA2 + d2;
                     SoA := SoA + 1;
                  End;
            'B' : Begin
                  	TongB1 := TongB1 + d1;
                     TongB2 := TongB2 + d2;
                     SoB := SoB + 1;
                  End;
            'C' : Begin
                  	TongC1 := TongC1 + d1;
                     TongC2 := TongC2 + d2;
                     SoC := SoC + 1;
                  End;
         End;
      End;
      ClrScr;
      Writeln('NHOM NGUOI',' TB San pham 1',' TB San pham 2');
      Writeln;
      If SoA <> 0 Then
      	Writeln('A':6,TongA1/SoA:16:1,TongA2/SoA:16:1);
		If SoB <> 0 Then
      	Writeln('B':6,TongB1/SoB:16:1,TongB2/SoB:16:1);
      If SoC <> 0 Then
      	Writeln('C':6,TongC1/SoC:16:1,TongC2/SoC:16:1);
      Readln
End.
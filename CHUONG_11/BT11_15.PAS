Program Tinh_Diem_Xep_Hang;
TYPE
	Lop = RECORD
   	HoTen 		: String[24];
      NamSinh 		: Integer;
      Tb1,Tb2,Tb 	: Real;
   End;
VAR
	Hs 			: Array[1..50] Of lop;
   i,j,n,Hang: Integer;
   Tam   		: Lop;
Begin
	Writeln('TINH DIEM VA XEP HANG);');
   Writeln('Giai thuat noi Buble');
   Writeln('--------------------');
   Writeln;
   Write('-So hoc sinh: ');
   Readln(n);
   For i := 1 To N Do
   	With Hs[i] Do
      	Begin
         	Write(' +Ho ten hoc sinh thu: ',i:2,' la: ');
            Readln(Hoten);
            Write(' +Nam sinh: ');
            Readln(NamSinh);
            Write(' +Diem trung binh hoc ky 1: ');
            Readln(Tb1);
            Write(' +Diem trung binh hoc ky 2: ');
            Readln(Tb2);
            Tb :=(Tb1 + Tb2)/2;
            Writeln;
         End;
   For i := 1 To N-1 Do
   	For j := 1 To N-i Do
      	If Hs[j].Tb < Hs[j+1].Tb Then
         	Begin
               Tam := Hs[j];
               Hs[j] := Hs[j+1];
               Hs[j+1] := Tam;
            End;
   Writeln;
   Writeln('        DANH SACH XEP HANG');
   Writeln;
   Hang := 1;
   For i := 1 To N Do
   	Begin
      	If (i > 1) And (Hs[i].Tb <> Hs[i-1].Tb) Then
         	Hang := i;
         Writeln('	.Hoc sinh : ',Hs[i].HoTen);
         Writeln('	.Nam sinh : ',Hs[i].NamSinh);
         Writeln('	.Diem trung binh ca nam : ',Hs[i].Tb:5:2);
         Writeln('	.Xep hang ca nam        : ',Hang);
      End;
	Readln
End.

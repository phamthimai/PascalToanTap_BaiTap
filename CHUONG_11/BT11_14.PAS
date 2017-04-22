Program Sap_Xep_Diem_Tang;
TYPE
	Lop = RECORD
   	HoTen 	: String[24];
      NamSinh 	: Integer;
      DiemTb  	: Real;
   End;
VAR
	Hs 	: Array[1..50] Of lop;
   i,j,n : Integer;
   Tam   : Lop;
Begin
	Writeln('SAP XEP DIEM TANG DAN);');
   Writeln('Giai thuat noi Buble');
   Writeln('--------------------');
   Writeln;
   Write('-So hoc sinh: ');
   Readln(n);
   For i := 1 To N Do
   	With Hs[i] Do
      	Begin
         	Write('+Ho ten hoc sinh thu: ',i:2,' la: ');
            Readln(Hoten);
            Write('+Nam sinh: ');
            Readln(NamSinh);
            Write('+Diem trung binh: ');
            Readln(DiemTb);
         End;
   For i := 1 To N-1 Do
   	For j := 1 To N-i Do
      	If Hs[j].DiemTb > Hs[j+1].DiemTb Then
         	Begin
               Tam := Hs[j];
               Hs[j] := Hs[j+1];
               Hs[j+1] := Tam;
            End;
   Writeln;
   Writeln('        DANH SACH SAP XEP');
   Writeln;
   For i := 1 To N Do
   	With Hs[i] Do
      	Writeln('-',HoTen:24,' :',Namsinh:4,' , ',DiemTb:5:2);
	Readln
End.

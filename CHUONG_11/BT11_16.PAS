Program Tinh_Diem_Xep_Hang_Hoc_ky;
TYPE
	Lop = RECORD
   	HoTen 		  : String[24];
      V,T,L,H,Nn,Tb : Real;
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
            Write(' +Diem mon Van: ');
            Readln(V);
            Write(' +Diem mon Toan: ');
            Readln(T);
            Write(' +Diem mon Ly: ');
            Readln(L);
            Write(' +Diem mon Hoa: ');
            Readln(H);
            Write(' +Diem mon Ngoai ngu: ');
            Readln(Nn);
            Tb :=((V*3 + T*3)+(L*2 + H*2 + Nn*2)) /12;
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
         Writeln('	.Diem trung binh ca nam : ',Hs[i].Tb:5:2);
         Writeln('	.Xep hang ca nam        : ',Hang);
      End;
	Readln
End.

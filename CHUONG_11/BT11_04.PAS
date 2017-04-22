Program Trac_Nghiem;
TYPE
	Tracnghiem = RECORD
   	CauHoi     : String;
      A,B,C,D : String;
      DapAn   : Char;
   End;

VAR
	a:Array[1..5] Of Tracnghiem;
   i,dung : Integer;
   Traloi : Char;

BEGIN
	Writeln('CAU HOI TRAC NGHIEM');
   Writeln('-------------------');
   Writeln;
   Writeln('-Nhap 5 cau hoi,y nghia va dap an');
   For i := 1 To 5 Do
   	With a[i] Do
      	Begin
         	Write('-Cau hoi thu: ',i:2,' : ');
            Readln(CauHoi);
            Write('	+Nghia	A: ');
            Readln(A);
            Write('	+Nghia	B: ');
            Readln(B);
            Write('	+Nghia	C: ');
            Readln(C);
            Write('	+Nghia	D: ');
            Readln(D);
            Write('-Dap an: ');
            Readln(DapAn);
            DapAn := UpCase(DapAn);
         End;

   Dung := 0;
   Writeln('-Ban chon nghia cho tung cau hoi');
   For i := 1 To 5 Do
   	Begin
      	Writeln(i,'. ',a[i].CauHoi);
         Writeln(' A)',a[i].A);
         Writeln(' B)',a[i].B);
         Writeln(' C)',a[i].C);
         Writeln(' D)',a[i].D);
         Write('-Lua cau nao go vao nghia cua cau do: ');
         Readln(TraLoi);
         If UpCase(TraLoi) = a[i].DapAn Then
         	Dung := Dung + 1;
      End;
   Writeln;
   Writeln('-So cau tra loi dung: ',Dung);
   Readln
END.
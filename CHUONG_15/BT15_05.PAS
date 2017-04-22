Program Cap_Nhat_Du_Lieu;
Uses Crt;
Type
	HoSo = RECORD
   	Holot : String[17];
      Ten   : String[7];
      Tuoi  : 18..60;
      ChucVu: String[20];
      BacLuong : 300000..900000;
      End;
Var
	f : File Of HoSo;
   Nv : HoSo;
   ans : Char;
Begin
	ClrScr;
	Writeln('CAP NHAT DU LIEU VAO TAP TIN LUONG.DAT');
   Writeln('----------------------------------');
   Writeln;
   Assign(f,'LUONG.DAT');
   Reset(f);
   Seek(f,Filesize(f));
   Repeat
   	With Nv Do
      	Begin
         	Write('-Ho lot: ');
            Readln(Holot);
            Write('-Ten   : ');
            Readln(Ten);
            Write('-Tuoi  : ');
            {$R+}
            Readln(tuoi);
            Write('-Chuc vu : ');
            Readln(ChucVu);
            Write('-Bac luong: ');
            Readln(BacLuong);
            Write(f,Nv);
         End;
      ans := Readkey;
   Until ans = #27;
   Close(f);
End.
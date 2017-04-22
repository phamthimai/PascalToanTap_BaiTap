Program Ho_So;
Uses Crt;
Type
	LyLich = RECORD
   	HoTen : String[24];
      NamSinh : Integer;
      ChucVu : String[20];
      BacLuong : Real;
      End;
Var
	f : File Of LyLich;
   q : Boolean;
   Nv : LyLich;
   Stt : Integer;
   Ch : Char;
Begin
	ClrScr;
   Assign(f,'HOSO.DAT');
   Rewrite(f);
   q := True;
   While q Do
   	With Nv Do
   		Begin
      		Write('-Ho ten CBCNV (<Enter> de ngung): ');
         	Readln(HoTen);
            If HoTen = '' Then
            	q := False
            Else
            	Begin
               	Write('-Nam sinh: ');
                  Readln(NamSinh);
                  Write('-Chuc vu: ');
                  Readln(Chucvu);
                  Write('-Bac luong: ');
                  Readln(BacLuong);
                  Write(f,Nv);
               End;
      	End;
      Repeat
      	GotoXY(28,24);
         Write('Co can sua khong? (c/k) ');
         Readln(Ch);
         If UpCase(Ch) = 'C' Then
         	Begin
            	Write('-Thay doi so thu tu : ');
               Readln(Stt);
               If Stt >= 1 Then
               	Begin
                  	Seek(f,Stt-1);
                     With Nv Do
                     	Begin
                        	Write('-Ho ten CBCNV : ');
                           Readln(HoTen);
                        	Write('-Nam sinh: ');
                  			Readln(NamSinh);
                  			Write('-Chuc vu: ');
                  			Readln(Chucvu);
                  			Write('-Bac luong: ');
                  			Readln(BacLuong);
                  			Write(f,Nv);
                        End;
                  End;
            End;
      Until UpCase(Ch) = 'K';
   Close(f)
End.
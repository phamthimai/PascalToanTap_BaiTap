Program So_tay_Dien_Tu;
Uses Crt;
Type
	DienThoai = RECORD
   	HoTen : String[24];
      Tel   : LongInt;
      Add   : String;
      End;
Var
	f       : File Of DienThoai;
   Tam     : DienThoai;
   St      : String;
   TimThay : Boolean;
Begin
	ClrScr;
	Writeln('NHAP SO DIEN THOAI VA DIA CHI');
   Writeln('-----------------------------');
   Writeln;
   Assign(f,'Telephon.dat');
   Rewrite(f);
   With tam Do
   	Repeat
      	Write('-Ho ten, bam (0> de ket thuc: ');
         Readln(HoTen);
         If HoTen <> '0' Then
         	Begin
         		Write('-So phone : ');
            	Readln(Tel);
            	Write('-Dia chi : ');
            	Readln(Add);
            	Write(f,tam);
            End;
      Until Hoten = '0';
      Close(f);
      ClrScr;
      Writeln('TIM SO DIEN THOAI VA DIA CHI');
      Writeln('----------------------------');
      Writeln;
      Write('-Ho ten nguoi muon tim: ');
      Readln(St);
      Reset(f);
      TimThay := False;
      While NOT EOF(f) Do
      	Begin
         	Read(f,Tam);
            With Tam Do
            	If St = HoTen then
               	Begin
                  	TimThay := True;
                     Writeln(HoTen);
                     Writeln('-So Telephone: ',Tel);
                     Writeln('-Dia chi     : ',Add);
                  End;
         End;
      If Not TimThay Then
      	Writeln('Khong tim thay');
      Close(f);
      Writeln;
      Write('   Bam <Enter>... ');
      Readln
End.
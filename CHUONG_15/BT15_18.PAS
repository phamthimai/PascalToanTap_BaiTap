Program Tao_Tap_Tin_Co_Kieu;
Type
	HocSinh = RECORD
   	Ten : String[7];
      Diem : 0..10;
      End;
Var
	f : File Of Hocsinh;
{-------------------------------}
	Procedure TaoTapTin;
   Var
   	Tam : HocSinh;
      Filename : String;
   Begin
   	Write('-Cho biet ten tap tin: ');
      Readln(Filename);
      Assign(f,Filename);
      {$I-}
      Rewrite(f);

      {$I+}
      If IOResult <> 0 Then
      	Begin
         	Writeln('Khong mo duoc tap tin: ',Filename);
            Halt;
         End;
      Repeat
      	Write('Ten (bam <Enter> de cham dut) : ');
         Readln(Tam.Ten);
			If Tam.Ten <> '' Then
         	Begin
            	Write('-Diem : ');
               Readln(Tam.Diem);
               Write(f,Tam);
            End;
      Until Tam.Ten = '';
      Close(f);
   End;
{-------------------------------}
   Procedure XemLaiBanGhi;
   Var
   	RecNo : Word;
      Tam : HocSinh;
   Begin
   	Write('-Xem lai ban ghi thu may: ');
      Readln(RecNo);
      Reset(f);
      Seek(f,RecNo-1);
      Read(f,Tam);
      Writeln('-Ten  : ',Tam.Ten);
      Writeln('-Diem : ',Tam.Diem);
   End;
{-------------------------------}
BEGIN
	TaoTapTin;
   Writeln;
   XemLaiBanGhi;
   Writeln;
   Write('	Bam <Enter>... ');
   Readln;
END.
Program CheDau_TapTin;
Uses Dos,Crt;
Var
	f : File; {hoac f : Text }
   Filename : String;
   Ch : Char;
Begin
	Repeat
		ClrScr;
   	TextColor(14);
   	TextBackGround(2);
   	GotoXY(23,4);
		Writeln('DAT THUOC TINH CHE DAU TAP TIN');
   	GotoXY(23,5);
		Writeln('------------------------------');
   	Writeln;
   	TextColor(12);
   	GotoXY(11,6);
   	Writeln('*Khong hien thi duoc ten tap tin khi dung lenh DIR cua DOS*');
   	GotoXY(15,8);
   	TextColor(1);
   	TextBackGround(14);
   	Write('-Cho biet ten tap tin: ');
      Readln(Filename);
      TextColor(4+Blink);
      TextBackGround(14);
      GotoXY(25,24);
      Writeln('DANG THUC HIEN, XIN CHO DOI...');
      Assign(f,Filename);
      SetFAttr(f,Hidden);
      TextColor(4);
      TextBackGround(15);
      GotoXY(15,10);
      Case DosError Of
      	0 : Writeln('Da hoan thanh tot dep');
         2 : Writeln('Khong tim thay tap tin nay');
         3 : Writeln('Khong tim thay duong dan')
      Else
      	Writeln('Tap tin duoc bao ve, khong sua duoc');
      End;
      GotoXY(19,24);
      TextColor(14);
      TextBackGround(4);
      Writeln('Bam phim bat ky de tiep tuc, <Esc> de thoat ');
      Ch := Readkey;
      TextColor(White);
   	TextBackGround(Black);
   	ClrScr;
   Until Ch = #27;
End.
Program Du_lich;
Uses Crt;
TYPE
	Diadiem=Set of 1..5;
Var
	ng1,ng2,ng3,Ba,Hai,Mot:DiaDiem;
   ch1,ch2,ch3,i:Byte;
(*----------------------------*)
	PROCEDURE Den(i:Byte);
   Begin
   	Case i Of
      	1:Write('Da Lat ');
         2:Write('Vung Tau ');
         3:Write('Nha Trang ');
         4:Write('Hue ');
         5:Write('Ha Noi ');
      End;
   End;
(*----------------------------*)
BEGIN
	ClrScr;
	Writeln('CHUONG TRINH THAM QUAN');
	Writeln('----------------------');
	Writeln('		1-Da Lat');
	Writeln('		2-Vung Tau');
   Writeln('		3-Nha Trang');
   Writeln('		4-Hue');
   Writeln('		5-Ha Noi');
   Writeln('Chon noi nao, go cac so tu 1 den 5');
   Writeln('1-Nguoi thu nhat chon 3 noi:');
   Write('		-Noi thu nhat: ');
   Readln(ch1);
   Write('		-Noi thu hai: ');
   Readln(ch2);
   Write('		-Noi thu ba: ');
   Readln(ch3);
   ng1:=[ch1,ch2,ch3];
	Writeln('2-Nguoi thu hai chon 3 noi:');
   Write('		-Noi thu nhat: ');
   Readln(ch1);
   Write('		-Noi thu hai: ');
   Readln(ch2);
   Write('		-Noi thu ba: ');
   Readln(ch3);
   ng2:=[ch1,ch2,ch3];
   Writeln('3-Nguoi thu ba chon 3 noi:');
   Write('		-Noi thu nhat: ');
   Readln(ch1);
   Write('		-Noi thu hai: ');
   Readln(ch2);
   Write('		-Noi thu ba: ');
   Readln(ch3);
   ng3:=[ch1,ch2,ch3];
   Ba:=ng1 * ng2 * ng3;
   Hai:=(ng1*ng2-ng3) + (ng2*ng3-ng1) + (ng3*ng1-ng2);
   Mot:=ng1 + ng2 +ng3;
   Writeln;
   Writeln('*Cac noi ma ca 3 nguoi deu chon: ');
   For i:=1 To 5 Do
   	If i In Ba Then
         Den(i);
   Writeln;
   Writeln('*Noi chi co 2 nguoi chon: ');
   For i:=1 To 5 Do
   	If i In Hai Then
         Den(i);
	Writeln;
   Writeln('*Noi chi co 1 nguoi chon: ');
   For i:=1 To 5 Do
   	If i In Mot Then
         Den(i);
	Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.

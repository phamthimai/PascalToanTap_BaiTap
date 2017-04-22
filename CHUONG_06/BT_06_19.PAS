Program Xo_so;
Uses Crt;
Var
	quacau,i:Byte;
   ch:Char;
BEGIN
   ClrScr;
   TextColor(Red);
   Writeln('                             QUAY XO SO');
   TextColor(Magenta);
   Writeln('                        Su dung ham Random');
   TextColor(Yellow);
   Writeln('                        -------------------');
   Writeln;
   TextColor(Green);
   Write('                      Cho so qua cau de quay: ');
   Readln(quacau);
   Writeln;
   TextColor(Cyan);
   Write('                Bam phim bat ky de bat dau quay xo so');
   Repeat
   	i:= Random(9);
   Until KeyPressed;
   Writeln;
   TextColor(LightBlue);
   Write('                   Bam phim <Enter> de ngung quay');
   Readln;
   ch:=ReadKey;
   Writeln;
   TextColor(Yellow);
   Writeln('                     KET QUA TRUNG THUONG LA SO: ');
   Writeln;
   TextColor(Red);
   Write('                   ');
   For i:=1 To quacau Do
   	Write(' ',Random(9):3);
   Writeln;
   Writeln;
   TextColor(Magenta);
   Write('                   Bam phim <Enter> de ket thuc');
   Readln
END.
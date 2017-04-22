Program Thu_trong_tuan;
Var
	thu,ngay,thang:Byte;
   Nam,luu:Integer;
Begin
	Writeln('NGAY THU MAY TRONG TUAN');
   Writeln('-----------------------');
   Write('-Ngay: ');
   Readln(ngay);
   Write('-Thang: ');
   Readln(thang);
   Write('-Nam: ');
   Readln(nam);
   luu:=nam;
   nam:=1900 + (nam Mod 1900);
   If thang < 3 Then
   	Begin
      	thang:=thang + 12;
         nam:=nam - 1;
      End;
   thu:=ABS(ngay+2*thang+3*(thang+1) Div 5+nam+nam Div 4) Mod 7;
   Case thu Of
   	0	:	Begin
      			Writeln('+Ngay:',ngay:3,',thang:',thang:3,',nam:',luu:5);
               Writeln('        +La ngay Chu Nhat');
      		End;
      1	:	Begin
      			Writeln('+Ngay:',ngay:3,',thang:',thang:3,',nam:',luu:5);
               Writeln('+La ngay Thu Hai');
      		End;
      2	:	Begin
      			Writeln('+Ngay:',ngay:3,',thang:',thang:3,',nam:',luu:5);
               Writeln('        +La ngay Thu Ba');
      		End;
      3	:	Begin
      			Writeln('+Ngay:',ngay:3,',thang:',thang:3,',nam:',luu:5);
               Writeln('        +La ngay Thu Tu');
      		End;
      4	:	Begin
      			Writeln('+Ngay:',ngay:3,',thang:',thang:3,',nam:',luu:5);
               Writeln('        +La ngay Thu Nam');
      		End;
      5	:	Begin
      			Writeln('+Ngay:',ngay:3,',thang:',thang:3,',nam:',luu:5);
               Writeln('        +La ngay Thu Sau');
      		End;
      6	:	Begin
      			Writeln('+Ngay:',ngay:3,',thang:',thang:3,',nam:',luu:5);
               Writeln('        +La ngay Thu Bay');
      		End;
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
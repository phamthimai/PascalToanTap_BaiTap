Program Thu_trong_tuan;
Var
	d:1..31;
   m:1..14;
   y:1900..2000;
   a:Integer;
Begin
	Writeln('DOI NGAY RA THU TRONG TUAN');
   Writeln('     Lich the ky 20');
   Writeln('--------------------------');
   Repeat
   	Write('-Ngay ( so 0 de ngung): ');
   	Readln(d);
      If d = 0 Then
      	Exit;
   	Write('-Thang: ');
   	Readln(m);
   	Write('-Nam: ');
   	Readln(y);
   	If m < 3 Then
   		Begin
      		m:=m+12;
         	Dec(y);
      	End;
   	a:=d+2*m+(3*(m+1) Div 5)+y+(y Div 4) + 1;
		a:=a Mod 7;
		Case a Of
			0	:Begin
					Write('Ngay ',d:2,' / ',m:2,' / ',y:4);
			 	 	Writeln(' la ngay Thu Bay');
			    End;
      	1	:Begin
			       Write('Ngay ',d:2,' / ',m:2,' / ',y:4);
				    Writeln(' la ngay Chu Nhat');
				 End;
   	Else
      	 Begin
			     Write('Ngay ',d:2,' / ',m:2,' / ',y:4);
			 	  Writeln(' la ngay ',a);
			 End;
   	End;
   Until d=0;
End.
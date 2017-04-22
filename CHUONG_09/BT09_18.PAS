Program So_La_Ma;
	Label l1;
	Var
   	St:String;
      tiep:Char;
      i,So:Integer;
Begin
	Writeln('DOI SO LA MA RA SO THAP PHAN');
   Writeln('       ------------');
   Writeln;
   L1:Write('-Nhap so La ma: ');
   Readln(St);
   So:=0;
   i:=Length(St);
   While i > 0 Do
   	Case St[i] Of
      	'I':Begin
         		So:=So+1;
               i:=i-1;
         	 End;
         'V':If (i > 1) And (St[i-1] = 'I') Then
				 	Begin
						So:=So+4;
               	i:=i-2;
         	 	End
         	 Else
               Begin
						So:=So+5;
               	i:=i-1;
         	 	End;
			'X':If (i > 1) And (St[i-1] = 'I') Then
				 	Begin
						So:=So+9;
               	i:=i-2;
         	 	End
         	 Else
               Begin
						So:=So+10;
               	i:=i-1;
         	 	End;
			'L':If (i > 1) And (St[i-1] = 'X') Then
				 	Begin
						So:=So+40;
               	i:=i-2;
         	 	End
         	 Else
               Begin
						So:=So+50;
               	i:=i-1;
         	 	End;
			'C':If (i > 1) And (St[i-1] = 'X') Then
				 	Begin
						So:=So+90;
               	i:=i-2;
         	 	End
         	 Else
               Begin
						So:=So+100;
               	i:=i-1;
         	 	End;
			'D':If (i > 1) And (St[i-1] = 'C') Then
				 	Begin
						So:=So+400;
               	i:=i-2;
         	 	End
         	 Else
               Begin
						So:=So+500;
               	i:=i-1;
         	 	End;
			'M':If (i > 1) And (St[i-1] = 'C') Then
				 	Begin
						So:=So+900;
               	i:=i-2;
         	 	End
         	 Else
               Begin
						So:=So+1000;
               	i:=i-1;
         	 	End;
      End;
      Writeln('+So La ma        : ',St);
      Writeln('+Doi ra thap phan: ',So);
      Writeln;
      Write('-Tiep tuc nua khong (c/k) ');
      Readln(tiep);
      If UpCase(tiep)='C' Then
      	Goto l1;
End.
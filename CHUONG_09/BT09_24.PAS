Program So_La_Ma;
	Var
   	So,So1,i:Integer;
      St:String;
Begin
	Writeln('DOI SO THAP PHAN SANG SO LA MA');
   Writeln('        ------------');
   Writeln;
   Write('-Nhap so nguyen: ');
   Readln(So);
   So1:=So;
   St:=' ';
   For i:=1 To (so Div 1000) Do
   	St:=St+'M';
   So:=So Mod 1000;
   If So >= 900 Then
   	Begin
         St:=St+'CM';
         So:=So-900;
      End
   Else
		If So >=500 Then
     		Begin
        		St:=St+'I';
           So:=So-500;
        	End
      Else
      	If So >=400 Then
         	Begin
            	St:=St+'CD';
               So:=So-400;
            End;
   For i:=1 To (so Div 100) Do
   	St:=St+'C';
   So:=So Mod 100;
   If So >= 90 Then
   	Begin
         St:=St+'XC';
         So:=So-90;
      End
   Else
		If So >=50 Then
     		Begin
        		St:=St+'L';
           So:=So-50;
        	End
      Else
      	If So >=40 Then
         	Begin
            	St:=St+'XL';
               So:=So-40;
            End;
   For i:=1 To (so Div 10) Do
   	St:=St+'X';
   So:=So Mod 10;
   If So >= 9 Then
   	Begin
         St:=St+'IX';
         So:=So-9;
      End
   Else
		If So >=5 Then
     		Begin
        		St:=St+'V';
           So:=So-5;
        	End
      Else
      	If So >=4 Then
         	Begin
            	St:=St+'IV';
               So:=So-4;
            End;
   For i:=1 To So Do
   	St:=St+'I';
   Writeln;
   Writeln('+So thap phan: ',So1);
   Writeln('+So La ma    : ',St);
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
End.
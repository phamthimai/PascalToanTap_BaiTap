Program Chuoi_Doi_Xung;
	Var
   	St:String;
      l,i:Integer;
      Dung:Boolean;
Begin
	Writeln('KIEM TRA CHUOI DOI XUNG');
   Writeln('    -------------');
   Writeln;
   Write('-Nhap chuoi: ');
   Readln(St);
   l:=Length(St);
   Dung:=True;
   For i:=1 To (l Div 2) Do
   	If St[i] <> St[l-i+1] Then
      	Dung:=False;
   If Dung Then
   	Writeln('+Chuoi nay doi xung')
   Else
   	Writeln('+Chuoi nay khong doi xung');
   Readln
End.
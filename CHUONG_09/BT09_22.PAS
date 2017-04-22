Program Cung_Ky_Tu;
	Var
   	St1,St2:String;
      Dung:Boolean;
      i:Integer;
Begin
	Writeln('KIEM TRA KY TU TRUNG CUA 2 CHUOI');
   Writeln('        --------------');
   Writeln;
   Write('-Nhap chuoi 1: ');
   Readln(St1);
   Write('-Nhap chuoi 2: ');
   Readln(St2);
   Dung:=False;
   If Length(St1)=Length(St2) Then
   	Begin
      	Dung:=True;
         For i:= 1 To Length(St1) Do
         	If Pos(St1[i],St2) = 0 Then
            	Dung:=False
            Else
            	Delete(St2,Pos(St1[i],St2),1);
      End;
   If Dung Then
   	Writeln('+Hai chuoi co cung cac ky tu')
   Else
   	Writeln('+Hai chuoi co cac ky tu khac nhau');
   Readln
End.
Program Doc_Tung_Chu;
Uses Crt;
Var
	Filename : String;
   f : Text;
   Line : String[251];
   k : Integer;
Begin
	ClrScr;
   Writeln('DOC CHAM TAP TIN THEO TUNG CHU');
   Writeln('------------------------------');
   Writeln;
   Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Assign(f,Filename);
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Readln(f,line);
         For k := 1 To Length(line) Do
         	Begin
            	Write(line[k]);
               Delay(150);
            End;
         Writeln;
      End;
   Close(f);
End.
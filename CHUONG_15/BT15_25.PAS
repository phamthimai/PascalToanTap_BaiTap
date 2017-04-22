Program DemChu;
Uses Crt;
Type
	MangChu = Array[Char] Of Integer;
Var
   f : Text;
	Filename : String;
   Line : String[25];
   Chu : Char;
   Letters,Lines,k : Integer;
   Dem : MangChu;
Begin
	ClrScr;
   For Chu := Chr(0) To Chr(127) Do
   	Dem[chu] := 0;
   Letters := 0;
   Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Assign(f,Filename);
   Reset(f);
   While Not EOF(f) Do
      Begin
      	Readln(f,Line);
         For k := 1 To Length(line) Do
         	Begin
            	If Line[k] In ['a'..'z'] Then
               	Letters := Letters + 1;
               Dem[Line[k]] := Dem[Line[k]] + 1;
            End;
      End;
    Lines := 1;
    Close(f);
    Writeln('Tap tin: ',Filename,' co tat ca: ',Letters,' chu khong viet hoa');
    Writeln;
    Writeln('Phan phoi tan suat cua cac chu nhu sau:');
    Writeln;
    For Chu :='a' To 'z' Do
    	Begin
      	Write('-Chu: ',Chu,' = ');
         Write((Dem[chu]/Letters * 100):6:2,' % ');
         If (Lines Mod 4) = 0 Then
         	Writeln;
         Lines := Lines + 1;
      End;
   Readln
End.

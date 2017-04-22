Program Doc_Tap_tin;
Var
	f : Text;
   Filename : String;
   Ch : Char;
Begin
	Writeln('DOC TAP TIN VAN BAN');
   Writeln('-------------------');
   Writeln;
   Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Assign(f,filename);
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Read(f,Ch);
         Write(Ch);
      End;
   Close(f);
   Writeln;
   Write('Bam <Enter>... ');
   Readln
End.
Program Mang_Ky_Tu;
	Var
   	a:Array[Char] Of Integer;
      Ch:Char;
Begin
	Writeln('IN MA ASCII CUA CAC KY TU');
   Writeln('------------------------');
   For Ch:='A' To 'Z' Do
   	Begin
      	a[Ch]:=Ord(Ch);
         Writeln('-Ky tu: ',Ch,' ma ASCII = ',a[ch]);
      End;
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.
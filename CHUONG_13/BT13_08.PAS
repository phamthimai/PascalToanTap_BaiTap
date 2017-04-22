Program Tach_Danh_Sach;
Uses Crt;
TYPE
	Mang = Array[1..100] Of Integer;
VAR
	i,j,k,n : Integer;
   a,b,c : Mang;
Begin
	ClrScr;
	Writeln('                     NHAP DANH SACH');
   Writeln('                     --------------');
   Write('-So phan tu: ');
   Readln(n);
   For i := 1 To n Do
   	Begin
      	Write('-Phan tu thu: ',i:2,' = ');
         Readln(a[i]);
      End;
   Writeln;
   Writeln('                 TACH THANH 2 DANH SACH');
   Writeln('                  ----------------------');
   Writeln;
   j := 1;
   k := 1;
   For i := 1 To n Do
   	If  Odd(a[i]) Then
      	Begin
         	b[j] := a[i];
            j := j + 1;
         End
      Else
      	Begin
         	c[k] :=a[i];
            k := k + 1;
         End;
   Writeln;
   Writeln('       -Danh sach thu nhat ( so le ) ');
   Writeln;
   For i := 1 To j-1 Do
   	Write(b[i],' ');
   Writeln;
   Writeln;
   Writeln('       -Danh sach thu hai ( so chan ) ');
   Writeln;
   For i := 1 To k-1 Do
   	Write(c[i],' ');
   Writeln;
   Write('          Bam <Enter> . . . ');
   Readln
End.
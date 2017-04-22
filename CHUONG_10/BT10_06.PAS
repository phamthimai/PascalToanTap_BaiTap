Program So_le;
	Var
   	a:Array[1..255] Of Integer;
      i,spt,sole:Byte;
Begin
	Writeln('THONG KE CAC SO LE');
   Writeln('------------------');
   Write('-Can nhap bao nhieu so: ');
   Readln(spt);
   For i:=1 To spt Do
   	Begin
      	Write('-Phan tu A[',i:2,']= ');
         Readln(a[i]);
      End;
   sole:=0;
   For i:=1 To spt Do
   If Odd(A[i]) Then
   	Inc(sole);
   Writeln;
   Writeln('-Tong so cac so da nhap: ',spt);
   For i:= 1 To spt Do
   	Write(a[i]:6);
   Writeln;
   Writeln('-Tong so cac so le la: ',sole);
   Writeln;
   Writeln('     Bam phim <Enter> de ket thuc ');
	Readln
End.
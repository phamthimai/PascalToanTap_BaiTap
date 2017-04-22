Program Cuc_dai;
Var
	i,n:Byte;
   so,solon:Integer;
Begin
	Writeln('TIM SO LON NHAT TRONG N SO NGUYEN');
   Writeln('---------------------------------');
   Write('-Muon nhap bao nhieu so: ');
   Readln(n);
   i:=1;
   Write('-So thu ',i,' = ');
   Readln(so);
   solon:=so;
   For i:=2 To N Do
   	Begin
      	Write('-So thu ',i,' = ');
         Readln(so);
         If solon < so Then
         	solon:=so;
      End;
   Writeln;
   Writeln('+So lon nhat trong ',n,' so vua nhap la so: ',solon);
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
Program Cac_phep_Toan;
TYPE
	KyTu=Set of Char;
Var
	a,b,Cong,Nhan,tru1,tru2:KyTu;
   p:Array[1..100] Of Char;
   m,n,i:Byte;
Begin
	Writeln('CAC PHEP TOAN TRONG TAP HOP');
   Writeln('---------------------------');
   a:=[];
   b:=[];
   Write('-So phan tu cua tap hop A= ');
   Readln(m);
   For i:=1 To M Do
   	Begin
      	Write('  -Phan tu A[',i,']= ');
         Readln(p[i]);
         a:=a + [p[i]];
      End;
   Write('-So phan tu cua tap hop B= ');
   Readln(n);
   For i:=1 To N Do
   	Begin
      	Write('  -Phan tu B[',i,']= ');
         Readln(p[i]);
         b:=b + [p[i]];
      End;
   Nhan:=a * b;
   Writeln('A * B gom cac phan tu: ');
   For i:=0 To 255 Do
   	If Char(i) In Nhan Then
      	Write(Char(i),#32);
   Writeln;
   Cong:=a + b;
   Writeln('A + B gom cac phan tu: ');
   For i:=0 To 255 Do
   	If Char(i) In Cong Then
      	Write(Char(i),#32);
   Writeln;
	Tru1:=a - b;
   Writeln('A - B gom cac phan tu: ');
   For i:=0 To 255 Do
   	If Char(i) In Tru1 Then
      	Write(Char(i),#32);
   Writeln;
	Tru2:=b - a;
   Writeln('B - A gom cac phan tu: ');
   For i:=0 To 255 Do
   	If Char(i) In Tru2 Then
      	Write(Char(i),#32);
   Writeln;
   If A <= B Then
   	Writeln('-Tap hop A nho hon tap hop B');
	If B <= A Then
   	Writeln('-Tap hop B nho hon tap hop A');
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.
Program Tam_giac;
Var
	a,b,c:Integer;
   tamgiac,deu,can:Boolean;
Begin
	Writeln('BA CANH CUA TAM GIAC ?');
   Writeln('----------------------');
   Write('-Nhap so thu nhat= ');
   Readln(a);
   Write('-Nhap so thu hai = ');
   Readln(b);
   Write('-Nhap so thu ba  = ');
   Readln(c);
   tamgiac:=False;
   deu:=False;
   can:=False;
   If (a+b>c) And (b+c>a) And (c+a>b) Then
   	Begin
      	tamgiac:=True;
         If (a=b) And (b=c) Then
         	deu:=True;
         If (a=b) Or (b=c) Or (c=a) Then
         	can:=True;
      End;
	Writeln;
   Writeln(' 3 so vua nhap la:');
   Writeln('+Tam giac: ',tamgiac);
   Writeln('+Tam giac deu: ',deu);
   Writeln('+Tam giac can: ',can);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
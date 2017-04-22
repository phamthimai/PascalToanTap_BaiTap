Program Khoi_lap_phuong;
Var
	a,b,c,m,n,tam:Integer;
Begin
	Writeln('KHOI LAP PHUONG CHUI QUA KHUNG CHU NHAT');
   Writeln('---------------------------------------');
   Writeln('  *Nhap so lieu cho khoi lap phuong');
   Write('-Canh thu nhat: ');
   Readln(a);
   Write('-Canh thu hai : ');
   Readln(b);
   Write('-Canh thu ba  : ');
   Readln(c);
   Writeln('  *Nap so lieu cho khung chu nhat');
	Write('-Canh thu nhat: ');
   Readln(m);
	Write('-Canh thu hai : ');
   Readln(n);
	If (a>b) Then
		Begin
      	tam:=a;
         a:=b;
         b:=tam;
		End;
   If (b>c) Then
		Begin
      	tam:=b;
         b:=c;
         c:=tam;
		End;
   If (a>b) Then
		Begin
      	tam:=a;
         a:=b;
         b:=tam;
		End;
	If (m>n) Then
		Begin
      	tam:=m;
         m:=n;
         n:=tam;
		End;
   If (a<m) And (b<n) Then
   	Writeln('+Khoi lap phuong chui qua duoc khung chu nhat')
   Else
   	Writeln('+Khoi lap phuong khong chui qua duoc khung chu nhat');
	Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.

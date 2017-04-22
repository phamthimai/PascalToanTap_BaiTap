Program So_khac_nhau;
CONST
	M=100;
TYPE
	DaySo=Set of 0..255;
   DayNguyen=Array[1..M] Of Integer;
Var
	a:DayNguyen;
   i,n:Integer;
   x:DaySo;
Begin
	Writeln('IN CAC SO KHAC NHAU CUA DAY SO');
   Writeln('------------------------------');
   Repeat
   	Write('Nhap bao nhieu so: ');
      Readln(n);
   Until N <= M;
   For i:=1 To N Do
   	Begin
      	Write('-Phan tu thu: ',i,' = ');
         Readln(a[i]);
      End;
   x:=[];
   For i:=1 To N Do
   	If Not (a[i] In x) Then
      	Begin
         	Write(a[i],', ');
            x:=x+[a[i]];
         End;
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.
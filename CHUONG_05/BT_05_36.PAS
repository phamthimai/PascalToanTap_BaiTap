Program In_Chu_hoa;
Var
	kytu:Char;
Begin
	Writeln('IN CHU HOA');
   Writeln('----------');
   Write('-Nhap ky tu: ');
   Readln(kytu);
   While ('A' <= kytu) And (kytu <='Z') Do
   	Begin
      	Writeln(kytu);
         Write('-Nhap ky tu: ');
         Readln(kytu);
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
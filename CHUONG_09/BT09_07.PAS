Program Tach_chuoi;
Var
	St:String;
   Pos,Num:Byte;
Begin
	Writeln('TACH CHUOI CON TU CHUOI ME');
   Writeln('         Ham Copy');
   Writeln('     ---------------');
   Write('-Nhap chuoi: ');
   Readln(St);
   Write('-Tach tu vi tri: ');
   Readln(Pos);
   Write('-Bao nhieu ky tu: ');
   Readln(Num);
   Writeln;
   Writeln('+Chuoi con la: ',Copy(St,Pos,Num));
   Writeln;
   Writeln('         Bam phim <Enter> de ket thuc');
   Readln
End.
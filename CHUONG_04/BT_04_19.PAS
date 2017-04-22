Program Sap_xep;
Var
	so1,so2,so3,tam:Integer;
Begin
	Writeln('SAP XEP THU TU 3 SO NGUYEN DUONG');
   Writeln('-------------------------------');
   Write('-Nhap so thu nhat= ');
   Readln(so1);
   Write('-Nhap so thu hai = ');
   Readln(so2);
   Write('-Nhap so thu ba  = ');
   Readln(so3);
   If so1 > so2 Then
   	Begin
      	tam:=so1;
         so1:=so2;
         so2:=tam;
      End;
   If so2 > so3 Then
   	Begin
      	tam:=so2;
         so2:=so3;
         so3:=tam;
      End;
   If so1 > so2 Then
   	Begin
      	tam:=so1;
         so1:=so2;
         so2:=tam;
      End;
   Writeln;
   Writeln('KET QUA SAP XEP');
   Writeln;
   Writeln('    ',so1:5);
   Writeln('    ',so2:5);
   Writeln('    ',so3:5);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
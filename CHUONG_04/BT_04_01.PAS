Program sap_xep;
Var
	so1,so2,tam:Integer;
Begin
	Writeln('SAP XEP 2 SO NGUYEN');
   Writeln('-------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   If so1 > so2 Then
   	Begin
   		tam:=so1;
      	so1:=so2;
      	so2:=tam;
      End;
   Writeln;
   Writeln('Ban vua nhap cac so sau');
   Writeln(so1:10);
   Writeln(so2:10);
   Readln
End.
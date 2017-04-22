Program Tinh_Gio_Phut_Giay;
Var
	sogiay,gio,phut,giay:Integer;
Begin
	Writeln('TINH GIO:PHUT:GIAY');
   Writeln('------------------');
   Write('-Nhap so giay can tinh: ');
   Readln(sogiay);
   gio:=sogiay DIV 3600;
   sogiay:= sogiay MOD 3600;
   phut:=sogiay DIV 60;
   giay:=sogiay MOD 60;
   Writeln;
   Writeln('KET QUA CHUYEN DOI');
   Writeln('+Neu nhap vao: ',sogiay,' giay');
   Writeln('+Doi thanh: ',gio,' gio, ',phut,' phut, ',giay,' giay');
   Readln
End.
Program Tao_Bien_Dong;
TYPE
	Str10 = String[10];
   PStr  = ^Str10;
VAR
	Newp  : PStr;
   i     : Integer;
Begin
	Writeln('TAO BIEN DONG VA THEO DOI KICH THUOC BO NHO');
   Writeln('-------------------------------------------');
   Writeln;
   Writeln('-Bo nho ban dau la: ',MemAvail,' bytes');
   Writeln;
   For i := 1 To 10 Do
   	Begin
      	New(Newp);
         Writeln('	+Sau khi tao bien thu: ',i:2,' bo nho con lai la: ',MemAvail,' bytes');
      End;
   Writeln;
   Writeln('-Bo nho bay gio la : ',MemAvail,' bytes');
   Writeln;
   Writeln(' Bam <Enter> de ket thuc');
   Readln
End.
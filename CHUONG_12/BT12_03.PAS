Program Tao_Bien_Dong;
TYPE
	Str10 = String[10];
   PStr  = ^Str10;
VAR
	Newp  : Array[1..10] Of PStr;
   i     : Integer;
Begin
	Writeln('TAO BIEN DONG VA THEO DOI KICH THUOC BO NHO');
   Writeln('-------------------------------------------');
   Writeln;
   Writeln('-Bo nho ban dau la: ',MemAvail,' bytes');
   Writeln;
   For i := 1 To 10 Do
   	Begin
      	New(Newp[i]);
         Writeln('	+Sau khi tao bien thu: ',i:2,' bo nho con lai la: ',MemAvail,' bytes');
      End;
   Writeln;
   Writeln('Bo nho bay gio la: ',MemAvail,' bytes');
   Writeln;
   Writeln('	Bam <Enter> de bat dau xoa lan luot tung bien dong');
   Readln;
   For i := 1 To 10 Do
   	Begin
      	Dispose(Newp[i]);
      	Writeln('+Xoa bien thu: ',i:2,' bo nho tro la: ',Memavail,' bytes');
         Writeln('	Bam <Enter> de xoa tiep');
         Readln;
      End;
   Writeln;
   Writeln('-Bo nho bay gio la : ',MemAvail,' bytes');
   Writeln;
   Writeln(' 		Bam <Enter> de ket thuc');
   Readln
End.
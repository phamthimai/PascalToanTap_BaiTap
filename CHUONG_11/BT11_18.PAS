Program Khao_Sat_Hai_Duong_Tron;
TYPE
	DuongTron = RECORD
   	R 	  : Real;
      x, y : Real;
   End;
VAR
	Dt1, Dt2 : DuongTron;
   Kc, Tong, Hieu : Real;

BEGIN
	Writeln('KHAO SAT 2 DUONG TRON');
   Writeln('---------------------');
   Writeln;
   Writeln('*Duong tron thu nhat');
   Write('	+Ban kinh: ');
   Readln(Dt1.R);
   Write('	+Toa do x: ');
   Readln(Dt1.x);
   Write('	+Toa do y: ');
   Readln(Dt1.y);
   writeln;
   Writeln('*Duong tron thu hai');
   Write('	+Ban kinh: ');
   Readln(Dt2.R);
   Write('	+Toa do x: ');
   Readln(Dt2.x);
   Write('	+Toa do y: ');
   Readln(Dt2.y);

   Kc := Sqrt(Sqr(Dt1.x - Dt2.x) + Sqr(Dt1.y - Dt2.y));
   Tong := Dt1.R + Dt2.R;
   Hieu := ABS(Dt1.R - Dt2.R);
   If (Kc = 0) AND (Hieu = 0) Then
   	Writeln('-Hai duong tron trung nhau')
   Else
   	If (Hieu > Kc) Then
      	Writeln('-Hai duong tron long nhau')
		Else
      	If (Tong = Kc) OR (Hieu = Kc) Then
         	Writeln('-Hai duong tron tiep xuc nhau')
         Else
         	If (Tong > Kc) AND (Hieu < Kc) Then
            	Writeln('-Hai duong tron cat nhau')
            Else
            	If (Tong < Kc) Then
               	Writeln('-Hai duong tron o ngoai nhau');
   Readln
END.
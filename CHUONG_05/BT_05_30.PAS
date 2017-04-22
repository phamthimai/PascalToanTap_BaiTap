Program Tram_trau;
Var
	dung,nam,gia,co,trau:Integer;
Begin
	Writeln('BAI TOAN CO DIEN');
   Writeln('Tram trau tram co');
   Writeln('Trau dung an 5');
   Writeln('Trau nam an 3');
   Writeln('Ba trau gia an 1');
   Writeln('----------------');
   Writeln('           Bai toan nay co cac loi giai sau');
   For dung:=0 To 20 Do
   	For nam:=0 To 33-dung Do
      	For gia:=0 To (100-(dung+nam)) Do
         	Begin
            	co:=5*dung+3*nam+(gia Div 3);
               trau:=dung+nam+gia;
               If (gia Mod 3 =0) And (trau=100) And ( co=100) Then
               	Writeln('-Trau dung ',dung,' con, -Trau nam ',nam,' con, -Trau gia ',gia,' con');
            End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
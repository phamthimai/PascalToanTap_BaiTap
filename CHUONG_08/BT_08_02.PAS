Program So_so_hang;
Var
	Thuong:Set of 0..9;
   Sodu:0..9;
   So,Soluu,Sohang:Integer;
Begin
	Writeln('SO SO HANG CUA MOT SO NGUYEN');
   Writeln('----------------------------');
   Write('-Nhap so nguyen bat ky: ');
   Readln(So);
   Soluu:=So;
   Thuong:=[];
   Sohang:=0;
   Repeat
   	Sodu:=So Mod 10;
      If Not (Sodu In Thuong) Then
      	Sohang:=Sohang + 1
      Else
      	Begin
         	Sohang:=Sohang + 1;
            Thuong:=Thuong + [Sodu]
         End;
      So:= So Div 10;
   Until So = 0;
   Writeln;
   Writeln('   *So ',Soluu,' co ',Sohang,' so hang');
   Writeln;
   Write('     Bam phim <Enter> de ket thuc ');
   Readln
End.
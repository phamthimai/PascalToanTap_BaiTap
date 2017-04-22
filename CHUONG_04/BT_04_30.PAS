Program So_ngay;
Var
	m,y,songay:Integer;
   nhuan:Boolean;
Begin
	Writeln('TINH SO NGAY CUA THANG');
   Writeln('----------------------');
   Write('-Nhap thang: ');
   Readln(m);
   Write('-Nhap nam  : ');
   Readln(y);
   Nhuan:=False;
   If (y Mod 4) = 0 Then
   	Begin
      	Nhuan:=True;
         If (y Mod 100 =0) And (y Mod 400 <> 0) Then
         	Nhuan:=False;
      End;
	Case m Of
   	1,3,5,7,8,10,12:songay:=31;
      4,6,9,11			:songay:=30;
      2					:If nhuan Then
      						songay:=29
      					 Else
                      	songay:=28;
   End;
   Writeln;
   Writeln('Thang ',m:2,' / ',y:4,' co : ',songay,' ngay');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
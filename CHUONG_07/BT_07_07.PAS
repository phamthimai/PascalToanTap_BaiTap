Program So_ngay;
Uses Crt;
TYPE
	Nam=1900..2000;
   Thang=1..12;
   Ngay=1..31;
Var
	Nam1,Nam2:Nam;
   Thang1,Thang2:Thang;
   Ngay1,Ngay2:Ngay;
   n:Real;
   kq:Boolean;
   (*--------------------*)
   FUNCTION KTngay(d:Ngay;m:Thang;y:Nam):Boolean;
   Begin
   	KTngay:=True;
      Case m Of
      	4,6,9,11: If d > 30 Then
   		KTngay:=False;
         2 : If (d > 29) Or ((d =29) And (y Mod 4 <> 0)) Then
         		KTngay:=True;
      End;
   End;
   (*--------------------*)
   FUNCTION Julian(d:Ngay;m:Thang;y:Nam):Real; {Lich Julieng}
   Var
   	Tam:Real;
   Begin
   	Tam:=Int((m-14.0)/12.0);
      Julian:=d-32075.0+
		Int(1461.0*(y+4800.0+Tam)/4.0+
      Int(367.0*(m-2.0-Tam*12.0)/12.0)-
      Int(3.0*Int(y+4900.00+Tam)/100.0)/4.0)
   End;
   (*--------------------*)
BEGIN
	{$R+}
   Repeat
   	ClrScr;
      Writeln('    *Nhap moc thoi gian dau');
      Write('-Ngay: ');
      Readln(Ngay1);
      Write('-Thang: ');
      Readln(Thang1);
      Write('-Nam: ');
      Readln(Nam1);
      Kq:=KTngay(Ngay1,Thang1,Nam1);
      If not Kq Then
      	Begin
         	Sound(100);
            Delay(50);
            NoSound;
            Writeln('-Ngay khong hop le');
         End;
   Until Kq;
   Repeat
   	ClrScr;
      Writeln('    *Nhap moc thoi gian cuoi');
      Write('-Ngay: ');
      Readln(Ngay2);
      Write('-Thang: ');
      Readln(Thang2);
      Write('-Nam: ');
      Readln(Nam2);
      Kq:=KTngay(Ngay2,Thang2,Nam2);
      If not Kq Then
      	Begin
         	Sound(100);
            Delay(50);
            NoSound;
            Writeln('-Ngay khong hop le');
         End;
   Until Kq;
   n:=Julian(Ngay2,Thang2,Nam2)-Julian(Ngay1,Thang1,Nam1);
   Writeln('Ket qua: ',n:8:0,' ngay');
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
END.
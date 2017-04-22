Program Kiem_tra_ngay;
TYPE
	ngay=1..31;
   thang=1..12;
Var
	d:ngay;
   m:thang;
   y:Word;
(*--------------------*)
	FUNCTION Nhuan(Nam:Word):Boolean;
   Begin
   	If nam Mod 100 = 0 Then
      	Nhuan:=(Nam Mod 400)=0
      Else
      	Nhuan:=(Nam Mod 4)=0;
   End;
(*--------------------*)
	FUNCTION So_ngay(d:Ngay; m:Thang; Y:Word): Boolean;
   Var
   	t1,t2,t3:Boolean;
   Begin
   	t1:=(d=30) And (m=2);
      t2:=(d=29) And (m=2) And (Not Nhuan(y));
      t3:=(d=31) And (m in [2,4,6,9,11]);
      If t1 Or t2 Or t3 Then
      	so_ngay:=False
      Else
      	so_ngay:=True;
   End;
(*--------------------*)
	FUNCTION Ket_thuc:Boolean;
   Var
   	ch:Char;
   Begin
   	Write('-Tiep tuc nua khong ? (c/k) ');
      Readln(ch);
      Ket_thuc:=Upcase(ch)='K';
   End;
(*--------------------*)
BEGIN
	Writeln('KIEM TRA NGAY HOP LE ?');
   Writeln('    Su dung ham');
   Writeln('----------------------');
   Repeat
   	Write('-Ngay: ');
   	Readln(d);
   	Write('-Thang: ');
   	Readln(m);
   	Write('-Nam: ');
   	Readln(y);
   	If so_ngay(d,m,y) Then
   		Writeln('*Ngay ',d:2,' Thang ',m:2,' Nam ',y:4,' la hop le')
   	Else
     		Writeln('*Ngay ',d:2,' Thang ',m:2,' Nam ',y:4,' khong hop le')
    Until Ket_thuc;
END.

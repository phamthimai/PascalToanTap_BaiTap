Program tinh_luong;
Var
	Ten:String[24];
   bl,nc,pc,thang:Integer;
      tl,hs:Real;
Begin
	Writeln('CHUONG TRINH TINH LUONG');
   Writeln('-----------------------');
   Writeln;
   Write('-Cho biet thang : ');
   Readln(thang);
   Write('-Cho biet ho ten : ');
   Readln(ten);
   Write('-Cho biet bac luong : ');
   Readln(bl);
   Write('-Cho biet ngay cong : ');
   Readln(nc);
   Write('-Cho biet he so : ');
   Readln(hs);
   Write('-Cho biet phu cap : ');
   Readln(pc);
   Writeln;
   tl:=((bl/30)*nc*hs+pc);
   Writeln('+Tien luong thang : ',thang:2,', cua Ong/Ba : ',ten,' la = ',tl:8:2);
   Writeln('       Bam phim <Enter> de ve cua so soan thao');
   Readln
End.
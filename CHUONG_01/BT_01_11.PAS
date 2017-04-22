Program Tinh_luong;
Var
	Ten:String;
   nc,pc,tam:Integer;
   bl,hs,tt,cl:Real;
Begin
	Writeln('CHUONG TRINH TINH LUONG');
   Writeln('------------------------');
   Write('-Cho biet ho ten : ');
   Readln(ten);
   Write('-Cho biet bac luong   : ');
   Readln(bl);
   Write('-Cho biet ngay cong : ');
   Readln(nc);
   Write('-Cho biet he so trach nhiem : ');
   Readln(hs);
   Write('-Cho biet phu cap khu vuc = ');
   Readln(pc);
   Write('-Cho biet so tien da tam ung ky 1 = ');
   Readln(tam);
   tt := ((bl/30 * nc * hs)+pc);
   cl := tt - tam;
   Writeln;
   Writeln('+Ong (Ba) : ',ten:24);
   Writeln('+Tien luong trong thang = ',tt:10:2,' dong');
   Writeln('+So tien con linh = ',cl:10:2,' dong');
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
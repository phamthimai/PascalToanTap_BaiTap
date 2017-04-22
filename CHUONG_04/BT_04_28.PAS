Program Huong_dan;
Var
	chon:Byte;
Begin
	Writeln('HUONG DAN MUA VE MAY BAY');
   Writeln('------------------------');
   Writeln('   1-Tp Ho Chi Minh di Ha Noi');
   Writeln('   2-Tp Ho Chi Minh di Da Nang');
   Writeln('   3-Tp Ho Chi Minh di Nha Trang');
   Writeln('   4-Tp Ho Chi Minh di Phu Quoc');
   Writeln('   5-Tp Ho Chi Minh di Con Dao');
   Writeln('   6-Tp Ho Chi Minh di Paris');
   Writeln('   7-Tp Ho Chi Minh di London');
   Writeln('   8-Tp Ho Chi Minh di Moscow');
   Writeln('   9-Tp Ho Chi Minh di Bac Kinh');
   Writeln('  10-Tp Ho Chi Minh di Tokyo');
   Write('-Chon tuyen nao, go vao so tuong ung (1 - 10): ');
   Readln(chon);
   Case chon of
   	1	:Writeln('     Xin moi den quay ve so 1');
      2	:Writeln('     Xin moi den quay ve so 2');
      3	:Writeln('     Xin moi den quay ve so 3');
      4	:Writeln('     Xin moi den quay ve so 4');
      5	:Writeln('     Xin moi den quay ve so 5');
      6	:Writeln('     Xin moi den quay ve so 6');
      7	:Writeln('     Xin moi den quay ve so 7');
      8	:Writeln('     Xin moi den quay ve so 8');
      9	:Writeln('     Xin moi den quay ve so 9');
      10	:Writeln('     Xin moi den quay ve so 10');
   Else	Writeln('-Khong co tuyen bay nay');
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
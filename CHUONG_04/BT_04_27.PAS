Program Hinh_hoc_so_cap;
Var
	a,b,c,h,r:Integer;
   s:Real;
   chon:Byte;
Begin
	Writeln('TINH DIEN TICH HINH HOC SO CAP');
   Writeln('------------------------------');
   Writeln('	1-Hinh vuong');
   Writeln('	2-Hinh chu nhat');
   Writeln('	3-Hinh tam gia1c');
   Writeln('	4-Hinh thang');
   Writeln('	5-Hinh tron');
   Writeln;
   Write('-Ban chon cac so tu 1 den 5 de tinh dien tich hinh tuong ung');
   Readln(chon);
   Case chon Of
   	1	:Begin
      		Write('-Nhap canh hinh vuong: ');
            Readln(a);
            s:=a*a;
            Writeln('+Dien tich hinh vuong = ',s:10:2,' met vuong');
      	 End;
      2	:Begin
      		Write('-Nhap chieu rong : ');
            Readln(a);
            Write('-Nhap chieu dai  : ');
            Readln(b);
            s:=a*b;
            Writeln('+Dien tich hinh chu nhat = ',s:10:2,' met vuong');
      	 End;
       3	:Begin
      		Write('-Nhap canh day : ');
            Readln(a);
            Write('-Nhap chieu cao  : ');
            Readln(h);
            s:=a*h/2;
            Writeln('+Dien tich hinh tam giac = ',s:10:2,' met vuong');
      	 End;
		 4	:Begin
      		Write('-Nhap day duoi : ');
            Readln(a);
            Write('-Nhap day tren : ');
            Readln(b);
            Write('-Nhap chieu cao: ');
            Readln(h);
            s:=0.5*(a+b)*h;
            Writeln('+Dien tich hinh thang = ',s:10:2,' met vuong');
      	 End;
       5	:Begin
      		Write('-Nhap ban kinh : ');
            Readln(r);
            s:=r*r*pi;
            Writeln('+Dien tich hinh tron = ',s:10:2,' met vuong');
      	 End;
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
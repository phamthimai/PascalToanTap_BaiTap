Program Doi_bong;
Var
	thang,tong,cauthu,i:Integer;
   tb:Real;
   tiep:Char;
Begin
	Writeln('THANH TICH CUA DOI BONG');
   Writeln('-----------------------');
   i:=1;
   cauthu:=0;
   tong:=0;
   tiep:='c';
   While Upcase(tiep)='C' Do
   	Begin
      	Write('-Cau thu thu ',i,' co so ban thang: ');
         Readln(thang);
         i:=i+1;
         tong:=tong+thang;
         cauthu:=cauthu+1;
         Write('-Nhap tiep nua khong (c/k) ');
         Readln(tiep);
      End;
   tb:=tong/cauthu;
   Writeln;
   Writeln('+So cau thu cua Doi= ',cauthu);
   Writeln('+So ban thang trung binh cua Doi= ',tb:5:1);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
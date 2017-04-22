Program Ngay_cua_thang;
Var
	thang,nam,luu,songay:Integer;
Begin
	Writeln('THANG. X . CO BAO NHIEU NGAY');
   Writeln('---------------------------');
   Write('-Ban muon hoi thang nao co bao nhieu ngay: ');
   Readln(thang);
   Write('-Cho biet nam : ');
   Readln(nam);
   luu:=nam;
   Case thang Of
   	1,3,5,7,8,10,12: songay:=31;
      4,6,9,11			: songay:=30;
      2	:Case nam Mod 4 Of
            	1,2,3 :songay:=28;
               0		:songay:=29;
          End;
   End;
   If songay >=30 Then
   	Writeln('+Thang:',thang:3,', nam: ',luu:4,', co: ',songay:3,' ngay')
   Else
     	Writeln('+Thang:',thang:3,', nam: ',luu:5,', co: ',songay:3,' ngay');
   Writeln;
   Writeln('   Bam phin <Enter> de ket thuc');
   Readln
End.
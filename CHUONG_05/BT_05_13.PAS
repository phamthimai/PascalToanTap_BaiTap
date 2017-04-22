Program Nhap_diem;
Const
	Sentinel=-1;
Var
	ten:String;
   diem,cao,thap,dem:Integer;
Begin
	Writeln('XU LY DIEM THI');
   Writeln('--------------');
   cao:=0;
   thap:=10;
   dem:=0;
   Write('-Ho va ten sinh vien: ');
   Readln(ten);
   Write('-Nhap diem thi: ');
   Readln(diem);
   While diem <> Sentinel Do
   	Begin
         If diem > cao Then
         	cao:=diem;
         If diem < thap Then
         	thap:=diem;
			dem:=dem+1;
         Write('-Nhap diem thi: ');
         Readln(diem)
      End;
   Writeln;
   Writeln('+Sinh vien: ',ten);
   Writeln('+Da co ',dem,' diem thi');
   Writeln('+Diem cao nhat la: ',cao);
   Writeln('+Diem thap nhat la: ',thap);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln;
End.

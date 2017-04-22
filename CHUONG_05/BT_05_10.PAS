Program Dem_chu;
Var
	chuoi:String;
   i,dem,dai:Byte;
Begin
	Writeln('DEM CHU ''ng'' TRONG CHUOI');
   Writeln('----------------------');
   Write('-Nhap mot chuoi bat ky: ');
   Readln(chuoi);
   dem:=0;
   dai:=length(chuoi);
     For i:=1 To dai Do
   	If chuoi[i]+chuoi[i+1]='ng' Then
      	inc(dem);
	Writeln;
   Writeln('Trong cau: ','" ',chuoi,' "');
   Writeln('Co ',dem,' lan xuat hien chu ''ng''');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
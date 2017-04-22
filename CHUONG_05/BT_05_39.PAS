Program Nhap_ky_tu;
Var
	kytu:Char;
   thoat:Boolean;
Begin
	Writeln('NHAP VA IN KY TU, KY SO RA MAN HINH');
   Writeln('-----------------------------------');
   thoat:=False;
   Repeat
   	Write('-Nhap ky tu (bam ky tu dieu khien) de ket thuc: ');
      Readln(kytu);
      Case kytu Of
      	'A'..'Z':Writeln(kytu,' ,chu thuong tuong ung la: ',chr(ord(kytu)+32));
         'a'..'z':Writeln(kytu,' ,chu hoa tuong ung la: ',chr(ord(kytu)-32));
         '0'..'9':Writeln(kytu);
      Else 	thoat:=True;
      End;
   Until thoat;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.

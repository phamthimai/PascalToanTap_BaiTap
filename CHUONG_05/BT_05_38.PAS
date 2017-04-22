Program Doan_so;
Var
	tren,duoi,giua:Integer;
   chon:Word;
Begin
	tren:=100;
   duoi:=1;
   While duoi < tren Do
   	Begin
      	Writeln('DOAN SO BAN DANG NGHI TRONG DAU');
         Writeln('-------------------------------');
      	giua:=(tren+duoi) Div 2;
         Writeln('-So cua ban Ty: ',giua);
         Writeln('-Neu go so 0 se ngung');
         Writeln('-Neu ban Ty noi so ',giua,' nho hon thi ban Teo go 1 ');
         Write('-Neu ban Ty noi so ',giua,' lon hon thi ban Teo go 2 ');
         Readln(chon);
         If chon = 0 Then
         	exit;
         If chon = 1 Then
         	duoi:=giua
         Else
         	tren:=giua
      End;
   Readln
End.
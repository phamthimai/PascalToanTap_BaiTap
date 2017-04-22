Program Tim_ky_tu;
Var
	Chuoi:String;
   Co,Khong:Set of Char;
   i:Integer;
   Ch:Char;
Begin
	Writeln('TIM KY TU KHONG XUAT HIEN TRONG CHUOI');
   Writeln('-------------------------------------');
   Write('-Nhap mot chuoi ky tu: ');
   Readln(Chuoi);
   Co:=[];
   For I:=1 To Length(Chuoi) Do
   	Co:=Co+[Upcase(Chuoi[i])];
   Khong:=['A'..'Z'] - Co;
   Writeln;
   Writeln('     Nhung ky tu khong co trong chuoi nay la: ');
   Writeln;
   For Ch:='A' To 'Z' Do
   	If Ch In Khong Then
      	Write(Ch,', ');
   Writeln;
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.
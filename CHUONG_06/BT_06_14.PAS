Program In_ten_thang;
Var
	n:Byte;
(*-----------------*)
	FUNCTION thang(x:Byte):String;
   Const
   	Ten_thang:Array[1..12] Of String=('Gieng','Hai','Ba',
      'Tu','Nam','Sau','Bay','Tam','Chin','Muoi','Mot','Chap');
   Begin
   	thang:=' Thang '+Ten_thang[x];
   End;
(*-----------------*)
BEGIN
	Writeln('DOI TEN THANG TU SO RA CHU');
   Writeln('      Su dung ham');
   Writeln('--------------------------');
   Write('-Thang : ');
   Readln(n);
   If (n < 1) And (n > 12) Then
   	Write('Khong hop le')
   Else
   	Write(thang(n));
   Writeln;
   Write('  Bam phim <Enter> de ket thuc ');
   Readln
END.
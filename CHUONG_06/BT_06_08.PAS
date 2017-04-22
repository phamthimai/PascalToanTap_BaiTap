Program Doi_he_so;
Var
	n:Integer;
(*------------------*)
	FUNCTION Doi(so:Integer):String;
   Const
   	ky_so:Array[0..15] Of Char =('0','1','2','3','4','5',
      		      '6','7','8','9','A','B','C','D','E','F');
   Var
   	tam1:Integer;
      tam2:String;
   Begin
   	tam1:=Hi(so);
      tam2:=ky_so[tam1 Shr 4] + ky_so[tam1 And $0F];
      tam1:=Lo(so);
      Doi:=tam2+ky_so[tam1 Shr 4] +Ky_so[tam1 And $0F]
   End;
(*------------------*)
BEGIN
	Repeat
		Writeln('DOI SO HE 10 SANG HE 16');
   	Writeln('     Su dung ham ');
   	Writeln('-----------------------');
      Writeln('Nhap mot so nguyen tu -32768 den 32767');
      Write('neu nhap so 0 se ket thuc ');
      Readln(n);
      Writeln;
      Writeln('+So he 10 la = ',n);
      Writeln('+Doi sang he 16 la = ',Doi(n));
      Writeln;
   Until n=0;
END.
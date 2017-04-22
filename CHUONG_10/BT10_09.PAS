Program Doi_he_2;
	Const
   	KyTuHe2:array[0..1] Of Char ='01';
   Var
   	SoWord:Word;
      SoBinary:String[16];
      i:byte;
Begin
	Writeln('DOI SO NGUYEN KIEU WORD RA HE NHI PHAN');
   Writeln('--------------------------------------');
   Writeln;
   Write('-Nhap so kieu Word: ');
   Readln(SoWord);
   SoBinary[0]:=#16;
   For i:=15 DownTo 0 Do
   	If (SoWord AND (1 SHL i)) = (1 SHL i) Then
      	SoBinary[16-i]:= KyTuHe2[1]
      Else
         SoBinary[16-i]:= KyTuHe2[0];
   Writeln('+So nguyen kieu Word  = ',soWord);
   Writeln('+Doi ra so he nhi phan= B ',SoBinary);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc ');
   Readln
End.
Program Doi_he_16;
	Const
   	KyTuHe16:array[0..$F] Of Char ='0123456789ABCDEF';
   Var
   	SoWord:Word;
      SoHex:String[4];
Begin
	Writeln('DOI SO NGUYEN KIEU WORD RA HE THAP LUC');
   Writeln('--------------------------------------');
   Writeln;
   Write('-Nhap so kieu Word: ');
   Readln(SoWord);
   SoHex[0]:=#4;
   SoHex[1]:= KyTuHe16[Hi(SoWord) SHR 4];
   SoHex[2]:= KyTuHe16[Hi(SoWord) AND $F];
   SoHex[3]:= KyTuHe16[Lo(SoWord) SHR 4];
   SoHex[4]:= KyTuHe16[Lo(SoWord) AND $F];
   Writeln('+So nguyen kieu Word  = ',soWord);
   Writeln('+Doi ra so he thap luc = $',SoHex);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc ');
   Readln
End.
Program Tao_Con_Tro;
VAR
	ConTro : ^String;
Begin
	Writeln('TAO BIEN DONG TAI DIA CHI CHO TRUOC');
   Writeln('-----------------------------------');
   Writeln;
   ConTro :=Ptr($B800,$0004);
   ConTro^ := 'Turbo Pascal';
   Writeln('-Du lieu cua bien ma con tro dang tro toi la: ',ConTro^);
   Writeln;
   Write('	Bam <Enter> de ket thuc');
   Readln
End.
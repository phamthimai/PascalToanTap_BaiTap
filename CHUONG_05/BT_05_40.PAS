Program Gui_tiet_kiem;
Var
	x,y:Real;
   thang:Word;
   tiep:Char;
Begin
	Writeln('GUI TIEN TIET KIEM');
   Writeln('------------------');
   Repeat
   	Write('-So tien hien co: ');
   	Readln(x);
   	Write('-So tien muon co: ');
   	Readln(y);
   	thang:=0;
   	Repeat
   		inc(thang);
      	x:= x *1.015;
   	Until x >=y;
   	Writeln('+Thoi gian can gui: ',thang,' thang');
   	Writeln;
   	Write('-Co tiep tuc nua khong (C/K) ');
      Readln(tiep);
   Until Upcase(tiep)='K';
End.
Program Tim_chuoi;
	Var
   	St1,St2:String;
      i,sl:Integer;
Begin
	Writeln('TIM CHUOI HAI XUAT HIEN TRONG CHUOI MOT');
   Writeln('           --------------');
   Writeln;
   Write('-Chuoi thu nhat: ');
   Readln(St1);
   Write('-Chuoi thu hai : ');
	Readln(St2);
	sl:=0;
	For i:=1 To Length(St1) Do
		If St2 = Copy(St1,i,Length(St2)) Then
			sl:=sl+1;
	Writeln;
	Writeln('+Chuoi thu 2 xuat hien: ',sl:2,' lan trong chuoi 1');
	Writeln;
	Writeln('   Bam phim <Enter> de ket thuc');
	Readln
End.
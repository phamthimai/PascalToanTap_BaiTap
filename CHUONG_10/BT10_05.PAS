Program Xoa_Pt;
	Var
   	i,spt,vitri:Integer;
      a:Array[1..100] Of Integer;
Begin
	Writeln('XOA PHAN TU TRONG MANG');
   Writeln('----------------------');
   Writeln;
   Write('-Mang co bo nhieu phan tu: ');
   Readln(spt);
   For i:=1 To spt Do
   	Begin
      	Write('-Phan tu A[',i:2,']= ');
         Readln(a[i]);
      End;
   Writeln;
   Writeln('             MANG TRUOC KHI XOA');
   Writeln('             -----------------');
   Writeln;
   For i:=1 To spt Do
   	Write(a[i]:6);
   Writeln;
   Writeln;
   Write('-Vi tri muon xoa: ');
   Readln(vitri);
   For i:=vitri to spt - 1 Do
		a[i]:=a[i+1];
	spt:=spt - 1;
	Writeln;
	Writeln('             MANG SAU KHI XOA');
	Writeln('             ----------------');
	Writeln;
	For i:= 1 to spt Do
		Write(a[i]:6);
	Writeln;
   Writeln;
	Writeln('   Bam phim <Enter> de ket thuc ');
	Readln
End.
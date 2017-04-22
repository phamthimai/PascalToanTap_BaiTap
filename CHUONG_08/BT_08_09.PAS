Program Dem_phan_tu;
Var
	kytu:'A'..'z';
	taphop: Set of 'A'..'z';
	n,i,spt:Byte;
Begin
	Writeln('DEM SO PHAN TU CUA TAP HOP');
   Writeln('--------------------------');
   Write('-Nhap bao nhieu chu: ');
   Readln(n);
   taphop:=[];
   For i:=1 To N Do
   	Begin
      	Write('-Ky tu thu ',i,' la: ');
         Readln(kytu);
         taphop:=taphop + [Kytu];
      End;
   For Kytu:= 'A' To 'z' Do
   	If Kytu In Taphop Then
      	Inc(spt);
   Write('Tap hop gom co ',spt,' phan tu la: ');
   For Kytu:='A' To 'z' Do
   	If Kytu In Taphop then
      	Write(Kytu,#32);
   Writeln;
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.



Program Dao_Chuoi;
Var
	St:String;
   i:Byte;
Begin
	Writeln('DAO NGUOC MOT CHUOI');
   Writeln('   -----------');
   Write('-Nhap chuoi: ');
   Read(St);
   Writeln;
   Write('+Chuoi dao : ');
   For i:= Length(St) DownTo 1 Do
   	Write(St[i]);
   Writeln;
   Writeln;
   Writeln('       Bam phim <Enter> de ket thuc');
   Readln;
   Readln
End.
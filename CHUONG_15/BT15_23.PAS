Program D0_Dai_Cua_Dong;
Var
	f : Text;
   Filename : String[12];
   St : String;
   Max,Min: Integer;
   Sodong,Tong : Integer;
Begin
	Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Assign(f,Filename);
   Reset(f);
   Readln(f,St);
   Max := length(St);
   Min := Length(St);
   Sodong := 1;
   Tong := Length(St);
   While Not EOF(f) Do
   	Begin
      	Readln(f,St);
         If Max < Length(St) Then
         	Max := Length(St);
         If Min > Length(St) Then
         	Min := Length(St);
         Sodong := sodong + 1;
         Tong := Tong + Length(St);
      End;
   Writeln('-Dong dai nhat  : ',Max);
   Writeln('-Dong ngan nhat : ',Min);
   Writeln('-Trung binh     : ',Tong / Sodong : 6:1);
   Writeln;
   Write('Bam <Enter>... ');
   Readln
End.
Program Nguyen_am_Phu_am;
TYPE
	Kytu=Set of Char;
Var
	a,b,Nguyen,Phu:Kytu;
   Chuoi:String;
   i:Integer;
   Ch:Char;
Begin
	Writeln('CAC NGUYEN AM, PHU AM TRONG MOT CHUOI');
   Writeln('-------------------------------------');
   Write('-Nhap mot chuoi ky tu: ');
   Readln(Chuoi);
   a:=['a','e','i','o','u','A','E','I','O','U'];
   b:=['a'..'z','A'..'Z'] - a;
   Nguyen:=[];
   Phu:=[];
   For I:=1 To Length(Chuoi) Do
   	Begin
      	If Chuoi[i] In a Then
         	Nguyen:=Nguyen + [Chuoi[i]];
         If Chuoi[i] In b Then
         	Phu:=Phu +[Chuoi[i]];
      End;
   Writeln;
   Writeln('*Chuoi nay co cac nguyen am sau day:');
   Write('     ');
   For Ch:='A' To 'z' Do
   	If Ch In Nguyen Then
      	Write(Upcase(ch),', ');
   Writeln;
   Writeln('*Chuoi nay co cac phu am sau day:');
   Write('     ');
   For Ch:='A' To 'z' Do
   	If Ch In Phu Then
      	Write(Upcase(Ch),', ');
   Writeln;
   Writeln;
   Write('    Bam phim <Enter> de ket thuc ');
   Readln
End.
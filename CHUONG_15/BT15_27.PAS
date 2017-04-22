Program Tao_Tap_Tin_Van_Ban;
Var
	f : Text;
   Filename : String;
{---------------------------------}
	Procedure Timvb(Var f: text; n : Word);
   Var
   	i : Word;
   Begin
   	Reset(f);
      For i :=1 To n Do
      Readln(f);
   End;
{---------------------------------}
   Procedure MoTapTin;
   Begin
   	Write('-Cho biet ten tap tin van ban: ');
      Readln(Filename);
      {$I-}
      Assign(f,Filename);
      Rewrite(f);
      If IOResult <> 0 Then
      	Begin
         	Writeln('Khong the mo tap tin moi: '+Filename+' ');
            Halt;
         End;
   End;
{---------------------------------}
	Procedure Nhap4dong;
   Var
   	Tam : String;
      i : Byte;
   Begin
   	Writeln;
		Writeln;
      For i := 1 to 4 Do
      	Begin
         	Write('-Nhap dong thu: ',i:2,' : ');
            Readln(Tam);
            Writeln(f,Tam);
         End;
   End;
{---------------------------------}
   Procedure Xuatdong2;
   Var
   	Tam : String;
   Begin
   	Timvb(f,2);
      Readln(f,Tam);
      Writeln('Dong thu 3 cua tap tin co noi dung la: ');
      Writeln;
      Writeln('     ',Tam);
   End;
{---------------------------------}
BEGIN
	MoTapTin;
   Nhap4dong;
   Writeln;
   Xuatdong2;
   Writeln;
   Write(' Bam <Enter>... ');
   Readln;
END.
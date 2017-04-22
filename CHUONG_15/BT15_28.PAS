Program Xoa_Dong_Tap_Tin_Van_Ban;
Var
	f : Text;
   Filename : String;
{---------------------------------}
   Procedure MoTapTin;
   Var
   	Tam : String;
      i : Byte;
   Begin
   	Write('-Cho biet ten tap tin van ban: ');
      Readln(Filename);
      {$I-}
      Assign(f,Filename);
      Rewrite(f);
      {$I+}
      If IOResult <> 0 Then
      	Begin
         	Writeln('Khong the mo tap tin moi: '+Filename+' ');
            Halt;
         End;
   	For i := 1 to 4 Do
     		Begin
        		Write('-Nhap dong thu: ',i:2,' : ');
         	Readln(Tam);
          	Writeln(f,Tam);
      	End;
      Close(f);
   End;
{---------------------------------}
   Procedure XemTapTin(Var f : Text);
   Var
   	Tam : String;
   Begin
   	Reset(f);
      While Not EOF(f) Do
      	Begin
         	Readln(f,Tam);
            Writeln(Tam);
         End;
   End;
{---------------------------------}
	Procedure Xoadong(Var f : Text; n : Word);
   Var
      g : Text;
   	Tam : String;
      i : Word;
   Begin
   	Assign(g,Filename);
   	Reset(g);
      Assign(f,'XOADONG.TXT');
   	Rewrite(f);
   	i := 0;
   	While Not EOF(g) Do
   		Begin
      		Readln(g,Tam);
         	If i <> n Then
         		Writeln(f,Tam);
            Inc(i);
      	End;
   	Close(f);
   End;
{---------------------------------}

BEGIN
	MoTapTin;
   Writeln;
   Writeln('		Noi dung tap tin da tao');
   Writeln;
   XemTaptin(f);
   Writeln;
   Xoadong(f,2);
   Writeln('      Noi dung con lai sau khi xoa dong 3');
   Writeln;
   XemTapTin(f);
   Writeln;
   Write(' Bam <Enter>... ');
   Readln;
END.
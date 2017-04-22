Program Chu_Chay;
Uses Crt;
Const
	a='Nha sach Minh Khai, 249 Nguyen Thi Minh Khai, Quan 1, Tp Ho Chi Minh ';
	b='Tel: 8 331 124, 9 250 590 ';
   c='Chuyen phat hanh cac giao trinh tin hoc phuc vu hoc sinh, sinh vien';
	d='Chan thanh cam on quy doc gia';
	Function Lap(Kt:Char; N:Integer): String;
		Var
			Tam:String;
			K:Integer;
   Begin
   	Tam:=' ';
      For K:=1 To N Do
      	Tam:=Tam+Kt;
      Lap:=Tam;
   End;
   {--------------}
   Procedure WriteXY(X,Y:Integer; St:String);
   Begin
   	GotoXY(X,Y);
      Write(St);
   End;
   {--------------}
   Function Min(a,b:Integer):Integer;
   Begin
   	If a < b Then
      	Min:=a
      Else
         Min:=b;
   End;
	{--------------}
   Procedure Chuchay(St:String);
   	Var
      	k:Integer;
         Tin:String;
      Begin
      	Tin:=Lap(' ',68)+'<<' +St+' ';
         For k:=1 To Length(Tin) Do
         	Begin
            	TextColor(k MOD 16);
               WriteXY(6,8,Copy(Tin,k,Min(68,Length(Tin)-k+1)));
               Delay(100);
            End;
      End;
      {--------------}
      Procedure Khung(x1,y1,x2,y2:Integer);
      	Var
         	k:Integer;
         Begin
         	TextColor(14);
            WriteXY(x1,y1,#201);
            For k:=x1+1 To x2-1 Do
            	Write(#205);
            Write(#187);
            WriteXY(x1,y2,#200);
            For k:=x1+1 To x2-1 Do
					Write(#205);
				Write(#188);
				For k:=y1+1 To y2-1 Do
					Begin
               	WriteXY(x1,k,#186);
                  WriteXY(x2,k,#186);
					End;
         End;
      {--------------}
      BEGIN
      	TextBackGround(1);
         ClrScr;
         TextColor(3+Blink);
         GotoXY(30,4);
         Writeln('NAM HOC 1999 -2000');
         Khung(5,7,75,9);
         Repeat
         	Chuchay(a);
            Chuchay(b);
            Chuchay(c);
            Chuchay(d);
         Until KeyPressed;
      END.
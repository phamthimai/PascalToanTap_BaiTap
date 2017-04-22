Program Tong_Tich_Ma_tran;
	Uses Crt;
   Type
   	Matran=array[1..3,1..3] Of Integer;
   Var
   	a,b,c,d:Matran;
      i,j,k:Byte;
      Ch:Char;
   {*****************************}
   Procedure Nhap(Var m:Matran; Ten:Char);
   Begin
   	ClrScr;
      GotoXY(26,6);
      Write('-Nhap ma tran: ',Ten);
      For i:=1 To 3 Do
      	For j:=1 to 3 Do
         	Begin
            	GotoXY(20*i-8,10+2*j);
               Write(Ten,'[',i,',',j,']= ');
               Readln(m[i,j]);
            End;
   End;
   {*****************************}
   Procedure Xuat(m:Matran; Ten:Char);
   Begin
   	ClrScr;
      GotoXY(26,6);
      Write('CAC PHAN TU CUA MA TRAN: ',Ten);
      For i:=1 To 3 Do
      	For j:=1 To 3 Do
         	Begin
            	GotoXY(20*i-8,10+2*j);
               Write(Ten,'[',i,',',']= ',m[i,j]);
            End;
   End;
   {*****************************}
BEGIN
	Nhap(a,'A');
   Nhap(b,'B');
   For i:=1 To 3 Do
   	For j:=1 To 3 Do
      	c[i,j]:=a[i,j]+b[i,j];
   Writeln;
   Writeln('MA TRAN TONG');
   Writeln;
   Xuat(c,'C');
   GotoXY(10,25);
   Write('Bam phim <Esc> de xem ma tran tich');
   For i:=1 to 3 Do
   	For j:=1 To 3 Do
      	Begin
         	d[i,j]:=0;
            For k:=1 To 3 Do
            	d[i,j]:=a[i,k]*b[k,j]+d[i,j];
         End;
   Repeat
   	Ch:=Readkey;
      If Ch=#0 then
      	Ch:=Readkey;
   Until Ch=#27;
   Writeln('MA TRAN TICH= ');
   Xuat(d,'D');
   Repeat
   Until KeyPressed;
END.
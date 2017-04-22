Program Cat_Tap_tin;
Var
	f,g1,g2 : File;
   Buf : Array[1..63000] Of Byte;
   Trungdiem : LongInt;
{-------------------------------------}
	Procedure BaoLoi;
   Begin
   	Writeln('Khong mo duoc tap tin');
      Halt;
   End;
{-------------------------------------}
	Procedure MoTapTin;
   Var
   	TenTT,TenTT1,TenTT2: String;
   Begin
   	Write('-Ten tap tin nguon: ');
      Readln(TenTT);
      Write('-Ten tap tin dich 1: ');
      Readln(TenTT1);
      Write('-Ten tap tin dich 2: ');
      Readln(TenTT2);
      Assign(f,TenTT);
      Reset(f,1);
      Assign(g1,TenTT1);
      Rewrite(g1,1);
      Assign(g2,TenTT2);
      Rewrite(g2,1);
      If IOResult <> 0 Then
      	BaoLoi;
   End;
{-------------------------------------}
   Procedure TinhTrungDiem;
   Begin
   	TrungDiem := (Filesize(f) Div 2);
   End;
{-------------------------------------}
	Procedure ChepNuaDau;
   Var
   	S : LongInt;
      Num,SoDoc,SoGhi : Word;
   Begin
   	S :=TrungDiem;
   	Repeat
   		If Sizeof(Buf) <= S Then
      		Num := Sizeof(Buf)
      	Else
      		Num := S;
      	BlockRead(f,Buf, Num,SoDoc);
      	If IOResult <> 0 Then
      		BaoLoi;
      	BlockWrite(g1,Buf,SoDoc,SoGhi);
      	If IOResult <> 0 Then
      		BaoLoi;
      	Dec(S,Num);
   	Until S = 0;
   	Close(g1);
   End;
{-------------------------------------}
	Procedure ChepNuaSau;
   Var
      SoDoc,SoGhi : Word;
   Begin
   	Seek(f,TrungDiem);
      If IOResult <> 0 Then
      	BaoLoi;
   	Repeat
      	BlockRead(f,Buf, Sizeof(Buf),SoDoc);
      	If IOResult <> 0 Then
      		BaoLoi;
      	BlockWrite(g2,Buf,SoDoc,SoGhi);
      	If IOResult <> 0 Then
      		BaoLoi;
   	Until (SoDoc = 0) Or (SoGhi <> SoDoc);
   	Close(g2);
      Close(f);
   End;
{-------------------------------------}
BEGIN
	MoTapTin;
   TinhTrungDiem;
   ChepNuaDau;
   ChepNuaSau;
   Writeln;
   Write('Da thuc hien xong, bam <Enter>... ');
   Readln;
END.

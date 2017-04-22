Program So_ngau_Nhien;
Uses Crt;
CONST
	 N = 100;
VAR
	Mang : Array[1..N] Of ^Word;
   HeapTop : Pointer;
{-------------------------------}
	Procedure TaoSo;
   Var
   	i : Byte;
   Begin
   	Randomize;
      For i := 1 To N Do
      	Begin
         	New(Mang[i]);
            Mang[i]^ := Random(999);
         End;
   End;
{-------------------------------}
	Procedure SapXep;
   Var
   	i : Byte;
      Tam : Word;
      KetThuc : Boolean;
   Begin
   	Repeat
      	KetThuc := True;
         For i := 1 To n-1 Do
         	If Mang[i]^ > Mang[i+1]^ Then
            	Begin
               	Tam := Mang[i]^;
                  Mang[i]^ := Mang[i+1]^;
                  Mang[i+1]^ := Tam;
                  KetThuc := False;
               End;
      Until ketThuc;
   End;
{-------------------------------}
	Procedure InKq;
   Var
   	i :Byte;
   Begin
   	For i := 1 To N Do
      	Write(Mang[i]^:4);
   End;
{-------------------------------}
BEGIN
	ClrScr;
   Writeln('           TAO VA SAP XEP THU TU 100 SO NGAU NHIEN');
   Writeln('            ---------------------------------------');
   Writeln;
	Mark(HeapTop);
   TaoSo;
   SapXep;
   Inkq;
   Writeln;
   Write('           Bam <Enter> . . . ');
   Readln;
   Release(HeapTop);
END.
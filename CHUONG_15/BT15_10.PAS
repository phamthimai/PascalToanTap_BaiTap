Program Lambada;
Uses Crt;
Var
	f : Text;
   Note,dur : Word;
   Buf : Array[1..10240] Of Byte;
{---------------------------------}
	Procedure Play(Caodo,Truongdo : Word);
   Begin
   	Sound(Caodo);
      Delay(Truongdo);
      NoSound;
   End;
{---------------------------------}
BEGIN
	ClrScr;
   TextColor(Yellow);
	Writeln('TAO TAP TIN AM THANH');
   TextColor(Red);
   Writeln('--------------------');
   Writeln;
   TextColor(Green);
   Writeln('Bam phim bat ky de tat am thanh');
   Repeat
		Assign(f,'lambada.not');
   	SetTextBuf(f,buf);
   	Reset(f);
   	While (Not EOF(f)) And (Not KeyPressed) Do
			Begin
      		Readln(f,Note,dur);
         	Play(Note,Dur);
			End;
   Until KeyPressed;
   Close(f);
   NoSound;
END.

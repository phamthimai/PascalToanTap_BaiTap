Program Karaoke;
Uses Crt;
Const
	Lento = 10;
Type
	ConTro = ^Nhac;
   Nhac = RECORD
   	Note,Dura : Word;
      Next      : ConTro;
      End;
Var
	f : Text;
   P,First, Last,HeapTop : ConTro;
{------------------------------------}
	Procedure AssignList(Filename : String);
   Begin
   	Assign(f,Filename);
      {$I-}
      Reset(f);
      {$I+}
      If IOResult <> 0 Then
      	Halt(1);
      First := Nil;
      Mark(HeapTop);
      While NOt EOF(f) Do
      	Begin
         	New(p);
            Readln(f,p^.Note,p^.Dura);
            If First = Nil Then
            	First := p
            Else
            	Last^.Next := p;
            Last := p;
            Last^.Next := Nil;
         End;
      Close(f);
   End;
{------------------------------------}
   Procedure Music;
   Begin
   	p := First;
      While (p <> Nil) And Not (KeyPressed And (Readkey = #27)) Do
      	Begin
         	Sound(p^.Note);
            Delay(Lento*p^.Dura);
            p := p^.Next;
            If p = Nil Then
            	p := First;
         End;
   End;
{------------------------------------}
BEGIN
	ClrScr;
   Writeln('    CHUONG TRINH NHAC EM DIU');
   Writeln('Truong do cham 10 lan so voi BT15_10');
   Writeln('     Bam <Esc> de ket thuc');
   Writeln('-------------------------------------');
	AssignList('Lambada.Not');
   Music;
   NoSound;
END.

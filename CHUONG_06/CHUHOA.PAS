Unit chuhoa;
INTERFACE
	FUNCTION Hoa(St:String):String;
IMPLEMENTATION
	FUNCTION Hoa;
   Var
   	k:Byte;
   Begin
   	For k:=1 To length(St) Do
      	St[k]:=Upcase(St[k]);
      Hoa:=St;
   End;
END.

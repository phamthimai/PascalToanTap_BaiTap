Unit ListUtil;

INTERFACE

TYPE
	ItemPtr = ^Item;
   Item = OBJECT
   	Next : ItemPtr;
   	Constructor Init;
      Procedure print; Virtual;
      Destructor Done; Virtual;

      End;
   List = OBJECT
   	Root : ItemPtr;
      Constructor Init;
      procedure InsertItem(P : ItemPtr);
      Procedure DisposeList;
      Procedure PrintList;
      End;

IMPLEMENTATION

	Var
   	Last : ItemPtr;
{------------------------------}
	Constructor Item.Init;
   Begin
   	Next := Nil;
   End;
{------------------------------}
	Destructor Item.Done;
   Begin
   End;
{------------------------------}
	Procedure Item.Print;
   Begin
   	Writeln;
   End;
{------------------------------}
	Constructor List.Init;
   Begin
      Root := Nil;
   End;
{------------------------------}
	Procedure List.InsertItem;
   Begin
   	If Root = Nil Then
      	Root := P
      Else
      	Last^.Next := P;
      Last := P;
      Last^.Next := Nil
   End;

{------------------------------}
   Procedure List.PrintList;
   Var
   Ip : ItemPtr;
   Begin
   	Ip := Root;
      While ( Ip <> Nil ) Do
      	Begin
         	Ip^.print;
            Ip := Ip^.Next
         End;
   End;
{------------------------------}
	Procedure List.DisposeList;
   Var
   	Ip : ItemPtr;
   Begin
   	While (Root <> Nil) Do
      	Begin
   			Ip := Root;
      		Root := Ip^.Next;
      		Dispose(Ip,Done);
         End;
   End;
END.




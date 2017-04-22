Program ListDemo;
Uses ListUtil;
TYPE
	StrObjPtr = ^StrObj;
   StrObj = OBJECT(Item)
   	St : ^String;
      Constructor Init(InitStr : String);
      Destructor Done; Virtual;
      Procedure Print; Virtual;
      End;
VAR
	ItemList : List;
   F        : Text; {bien kieu tap tin van ban}
	Line     : String[80];
{-----------------------------}
	Constructor StrObj.Init;
	Begin
   	Item.Init;
      GetMem(St,length(InitStr) + 1);
      St^ := InitStr;
	End;
{-----------------------------}
	Destructor Strobj.Done;
   Begin
   	FreeMem(St, Length(St^) + 1);
      Item.Done;
   End;
{-----------------------------}
	Procedure StrObj.Print;
   Begin
   	Item.Print;
      Write(St^);
   End;
{-----------------------------}
BEGIN
	ItemList.Init;
   Writeln('-Bo nho truoc khi doc tap tin: ',MemAvail,' bytes');
   Writeln;
   Write('-Bam <Enter> de doc tap tin BAITHO.TXT tu dia ');
   Readln;
   Assign(F,'BAITHO.TXT'); {Gan bien tap tin}
   Reset(F); {Mo tap tin da co tren dia }
   While Not EOF(F) Do
   	Begin
      	Readln(F,Line);
         ItemList.InsertItem(New(StrObjPtr,Init(Line)))
      End;
   Writeln;
   ItemList.PrintList;
   Writeln;
   Writeln;
   Writeln('-Bo nho sau khi doc tap tin: ',MemAvail,' bytes');
   ItemList.DisposeList;
   Writeln;
   Writeln;
   Writeln('-Bo nho sau khi xoa bang Dispose: ',MemAvail,' bytes');
   Writeln;
   Write('    Bam <Enter>. . . ');
   Readln
END.


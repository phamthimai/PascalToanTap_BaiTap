Program ListDemo;
Uses ListUtil;
TYPE
	IntObjPtr = ^IntObj;
   IntObj = OBJECT(Item)
   	I : Integer;
      Constructor Init(InitI : Integer);
      Procedure Print; Virtual;
      End;

   RealObjPtr = ^RealObj;
   RealObj = OBJECT(Item)
   	R : Real;
      Constructor init(InitReal : Real);
      Procedure Print; Virtual;
      End;

   StrObjPtr = ^StrObj;
   StrObj = OBJECT(Item)
   	St : ^String;
      Constructor Init(InitStr : String);
      Destructor Done; Virtual;
      Procedure Print; Virtual;
      End;
VAR
	ItemList : List;
{--------------------------------}
	Constructor IntObj.Init;
   Begin
   	Item.Init;
      I :=InitI;
   End;
{--------------------------------}
	Procedure IntObj.Print;
   Begin
   	Item.print;
      Write('	+So nguyen = ',i);
   End;
{--------------------------------}
	Constructor RealObj.Init;
   Begin
   	Item.Init;
      R := InitReal
   End;
{--------------------------------}
	Procedure RealObj.Print;
   Begin
   	Item.Print;
      Write('	+So thuc = ',r);
   End;
{--------------------------------}
	Constructor StrObj.Init;
   Begin
   	Item.Init;
      Getmem(St,Length(InitStr) +1);
      St^ := InitStr;
   End;
{--------------------------------}
	Destructor StrObj.Done;
   Begin
   	FreeMem(St,Length(St^) + 1);
      Item.Done;
   End;
{--------------------------------}
	Procedure StrObj.print;
   Begin
   	Item.Print;
      Write('	+Chuoi ky tu = ',St^);
   End;
{--------------------------------}
BEGIN
	ItemList.Init;
   Writeln('-Bo nho truoc khi chen du lieu: ',MemAvail,' bytes');
   ItemList.InsertItem(New(IntObjPtr,Init(123)));
   ItemList.InsertItem(New(RealObjPtr,Init(123.456)));
   ItemList.InsertItem(New(StrObjPtr,Init('Turbo Pascal 7.0')));
   Itemlist.PrintList;
   Writeln;
   Writeln;
   Writeln('-Bo nho sau khi chen du lieu: ',MemAvail,' bytes');
   ItemList.DisposeList;
   Writeln;
   Writeln;
   Writeln('-Bo nho sau khi xoa bang Dispose = ',MemAvail,' bytes');
   Writeln;
   Write('   Bam <Enter> ... ');
   Readln
END.

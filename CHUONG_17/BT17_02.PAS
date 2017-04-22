Program Duong_Thang;
Uses Graph;
Var
	Gd,Gm,k : Integer;
Begin
	Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   SetBkColor(Blue);
   k := -300;
   Repeat
   	SetColor(14);
   	MoveTo(160,100);
      LineRel(k,100);
      LineRel(k,-100);
      MoveTo(160,100);
      LineRel(k,-100);
      LineRel(k,100);
      k := k+15;
   Until k = 0;
   Repeat
   	Line(k,0,k,200);
      k := k-15;
   Until k = 0;
   Line(0,100,320,100);
   Readln;
   CloseGraph;
End.
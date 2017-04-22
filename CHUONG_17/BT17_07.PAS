Program Hinh_Quat;
Uses Graph;
Var
	Gd,Gm : Integer;
   CenterX,CenterY,Radius : Word;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   SetGraphMode(0);
   SetBkColor(Blue);
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   Radius := CenterY - 10;
   SetFillStyle(2,2);
   Pieslice(CenterX,CenterY,0,120,Radius);
   SetFillStyle(3,1);
   Pieslice(CenterX,CenterY,120,245,Radius);
   SetFillStyle(4,3);
   Pieslice(CenterX,CenterY,245,360,Radius);
   Readln;
   CloseGraph;
End.
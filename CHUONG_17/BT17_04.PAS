Program Da_Giac;
Uses Graph;
Const M : Array[0..5] Of PointType = ((x:0;y:10),(x:53;y:29),
          (x:112;y:134),(x:65;y:100),(x:34;y:100),(x:0;y:10));
Var
	Gd,Gm : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   DrawPoly(7,M);
   Readln;
   CloseGraph;
End.
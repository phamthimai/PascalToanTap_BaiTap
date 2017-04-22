Program Vong_Olympic;
Uses Graph;
Var
	Gd,Gm:Integer;
   MaxX,MaxY:Integer;
   R,x,y : Integer;
   Y1,Y2,Y3,Y4,Y5 : Integer;
   X1,X2,X3,X4,X5 : Integer;
Begin
	Write('-Ban kinh = ');
   Readln(R);
   Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOK Then
   	Halt(1);
   X := GetMaxX Div 2;
   Y := GetMaxY Div 2;
   X1 := x + Round(R*Cos(Pi/10));
   Y1 := y - Round(R*Sin(Pi/10));
   X2 := x;
   Y2 := y-R;
   X3 := x - Round(R*Cos(Pi/10));
   Y3 := Y1;
   X4 := x - Round(R * Cos(3*Pi/10));
   Y4 := y + Round(R*Sin(3*Pi/10));
   X5 := x + Round(R*Cos(3*Pi/10));
   Y5 := Y4;
   SetColor(Red);
   Circle(X,Y,R);
   SetColor(Yellow);
   Line(X1,Y1,X3,Y3);
   Line(X3,Y3,X5,Y5);
   Line(X5,Y5,X2,Y2);
   Line(X2,Y2,X4,Y4);
   Line(X4,Y4,X1,Y1);
   Readln;
   CloseGraph;
End.
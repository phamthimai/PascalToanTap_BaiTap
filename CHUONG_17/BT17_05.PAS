Program Vong_Olympic;
Uses Graph;
Var
	Gd,Gm:Integer;
   MaxX,MaxY:Integer;
   R : Integer;
   Y1,Y2 : Integer;
   X1,X2,X3,X4,X5 : Integer;
   Kc : Integer;
Begin
	Write('-Ban kinh = ');
   Readln(R);
   Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOK Then
   	Halt(1);
   MaxX := GetMaxX;
   MaxY := GetMaxY;
   Y1 := (MaxY - 3*R) Div 2 + R;
   Y2 := Y1 + R;
   Kc := R Div 5;
   X1 := (MaxX - 6*R -2*Kc) Div 2 + R;
   X2 := X1 + Kc + 2*R;
   X3 := X2 + Kc + 2*R;
   X4 := X1 + R + (Kc Div 2);
   X5 := X2 + R + (Kc Div 2);
   SetColor(14);
   Circle(X1,Y1,R);
   Circle(X2,Y1,R);
   Circle(X3,Y1,R);
   Circle(X4,Y2,R);
   Circle(X5,Y2,R);
   Readln;
   CloseGraph;
End.
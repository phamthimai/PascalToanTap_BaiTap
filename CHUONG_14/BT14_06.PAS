Program Ve_hinh;
Uses Crt,Graph,Dos,Vehinh;
TYPE
	Arc = OBJECT(Circle)
   	StartAngle, EndAngle : Integer;
      Constructor Init(InitX,InitY,InitRadius, InitS,InitE:Integer);
      Procedure Show; Virtual;
      Procedure Hide; Virtual;
      End;
VAR
	GrDriver, GrMode: Integer;
   Cung            : Arc;
   C               : Circle;
   P               : Point;
{-------------------------------------}
	Constructor Arc.Init;
   Begin
   	Circle.Init(InitX,InitY,InitRadius);
      StartAngle := InitS;
      EndAngle := InitE;
   End;
{-------------------------------------}
   Procedure Arc.Show;
   Begin
   	Visible := True;
      Graph.Arc(X,Y,StartAngle,EndAngle,Radius);
   End;
{-------------------------------------}
	Procedure Arc.Hide;
   Var
   	TempColor : Word;
   Begin
   	TempColor := Graph.GetColor;
      Graph.SetColor(GetBkColor);
      Visible := False;
      Graph.Arc(X,Y,StartAngle,EndAngle,Radius);
      SetColor(TempColor);
   End;
{-------------------------------------}
BEGIN
	GrDriver := CGA;
   GrMode := CGAC0;
   InitGraph(GrDriver,GrMode,'C:\BP\BGI');
   C.Init(151,82,50);
   Cung.Init(151,82,25,0,90);
   P.Init(151,82);
   P.Drag(5);
   Cung.Drag(5);
   C.Drag(5);
   CloseGraph
END.
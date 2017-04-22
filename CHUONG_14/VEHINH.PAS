Unit VeHinh;

INTERFACE

TYPE
	Location = OBJECT
   	X,Y : Integer;
      Constructor Init(InitX,InitY : Integer);
      Function GetX : Integer;
      Function GetY : Integer;
      End;

   Pointptr = ^Point;
   Point = OBJECT(Location)
   	Visible : Boolean;
      Constructor Init(InitX,InitY : Integer);
      Destructor Done; Virtual;
      Procedure Show; Virtual;
      Procedure Hide; Virtual;
      Function IsVisible : Boolean;
      Procedure MoveTo(NewX,NewY :Integer);
      Procedure Drag(DragBy : Integer); Virtual;
      End;

   CirclePtr =^Circle;
   Circle = OBJECT(Point)
   	Radius : Integer;
      Constructor Init(InitX,InitY,InitRadius : Integer);
      Procedure Show; Virtual;
      Procedure Hide; Virtual;
      procedure Expand(ExpandBy : Integer); Virtual;
      Procedure ConStract(ConstractBy : Integer); Virtual;
      End;

   IMPLEMENTATION

   Uses Graph, Crt;

		{CAI DAT LOCATION}

{-----------------------------------}
   Constructor Location.Init;
   Begin
   	X := InitX;
      Y := InitY;
   End;
{-----------------------------------}
	Function Location.GetX;
   Begin
   	GetX := X;
   End;
{-----------------------------------}
   Function Location.GetY;
   Begin
   	GetY := Y;
   End;
{-----------------------------------}
       {CAI DAT POINT}
{-----------------------------------}
	Constructor Point.Init;
   Begin
   	Location.Init(initX,InitY);
      Visible := False;
   End;
{-----------------------------------}
   Destructor Point.Done;
   Begin
   	Hide;
   End;
{-----------------------------------}
   Procedure Point.Show;
   Begin
   	Visible := True;
      PutPixel(X,Y,GetColor);
   End;
{-----------------------------------}
   Procedure Point.Hide;
   Begin
   	Visible := False;
      PutPixel(X,Y,GetBkColor);
   End;
{-----------------------------------}
   Function Point.IsVisible;
   Begin
   	IsVisible := Visible;
   End;
{-----------------------------------}
   Procedure Point.MoveTo;
   Begin
   	Hide;
      X := NewX;
      Y := NewY;
      Show;
   End;
{-----------------------------------}
   Function GetDelta(Var DeltaX,DeltaY : Integer): Boolean;
   Var
   	KeyChar : Char;
      Quit : Boolean;
      Result : Boolean;
   Begin
   	DeltaX := 0;
      DeltaY := 0;Result := True;
      Repeat
      	KeyChar := ReadKey;
         Quit := True;
         If KeyChar = #0 then
         	KeyChar := ReadKey;
         Case KeyChar Of
         	#72 : DeltaY := -1; { Mui ten len}
         	#80 : DeltaY := 1;  { Mui ten xuong }
         	#75 : DeltaX :=-1; {Mui ten trai }
         	#77 : DeltaX := 1; { Mui ten phai }
         	#27 : Result := False {Phim Esc }
         Else
         	Quit := False;
         End;
      Until Quit;
      GetDelta :=Result;
   End;
{-----------------------------------}
	Procedure Point.Drag;
   Var
   	DeltaX,DeltaY : Integer;
      FigureX,FigureY : Integer;
   Begin
   	Show;
      FigureX := GetX;
      FigureY := GetY;
      While GetDelta(DeltaX,DeltaY) Do
      	Begin
         	Inc(FigureX,DeltaX*DragBy);
            Inc(FigureY,DeltaY*DragBy);
            MoveTo(FigureX,FigureY);
         End;
   End;
{-----------------------------------}
       { CAI DAT CIRCLE}
{-----------------------------------}
   Constructor Circle.Init;
   Begin
   	Point.Init(InitX,InitY);
      Radius := InitRadius;
   End;
{-----------------------------------}
   Procedure Circle.Show;
   Begin
   	Visible := True;
      Graph.Circle(X,Y,Radius);
   End;
{-----------------------------------}
   Procedure Circle.Hide;
   Var
   	TempColor : Word;
   Begin
   	TempColor := Graph.GetColor;
      Graph.SetColor(GetBkColor);
      Visible := False;
      Graph.Circle(X,Y,Radius);
      Graph.SetColor(TempColor);
   End;
{-----------------------------------}
   Procedure Circle.Expand;
   Begin
   	Hide;
      Inc(Radius, ExpandBy);
      If Radius < 0 Then
      	Radius := 0;
      Show;
   End;
{-----------------------------------}
	Procedure Circle.Constract;
   Begin
   	Expand(-ConstractBy);
   End;
END.
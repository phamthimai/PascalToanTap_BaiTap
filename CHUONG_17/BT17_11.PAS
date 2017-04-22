Program Do_Thi;
Uses Graph;
Var
	Gd,Gm,j,mx,my : Integer;
   i,x,y : Real;
   Xasp,Yasp,CenterX,CenterY : Word;
   Pattern : Word;
{----------------------------------}
	Function Adjasp(Value: Integer) : Integer;
   Begin
   	Adjasp := (LongInt(Value)*Xasp) Div Yasp;
   End;
{----------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt;
   SetGraphMode(0);
   SetBkColor(Blue);
   GetAspectRatio(Xasp,Yasp);
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   SetTextJustify(CenterText,CenterText);
   SetColor(2);
   Line(0,CenterY,GetMaxX-25,CenterY);
   Line(CenterX,20,CenterX,GetMaxY-15);
   Rectangle(10,185,GetMaxX-10,GetMaxY-5);
   OutTextXY(CenterX,190,'Duong cong tham so ');
   OutTextXY(CenterX-10,CenterY+5,'0');
   OutTextXY(GetMaxX-16,CenterY,'>X ');
   SetTextStyle(DefaultFont,VertDir,0);
   OutTextXY(CenterX,18,'>');
   SetTextStyle(DefaultFont,HorizDir,0);
   OutTextXY(CenterX,8,'Y');
   i := -16;
   SetColor(2);
   While i <= 16 Do
   	Begin
      	x := 10*i-15*Sin(i);
         y := 10 - 15 * Cos(i);
         mx := CenterX + Round(x);
         my := CenterY -adjasp(Round(y));

         If abs(y) < 200 Then
         	PutPixel(mx,my,14);
         i := i+(1/15);
      End;
   Readln;
   CloseGraph;
END.


Program Do_Thi;
Uses Graph;
Var
	Gd,Gm,j,mx,my : Integer;
   i,x,y : Real;
   Xasp,Yasp,CenterX,CenterY : Word;
   Pattern : Word;
   Palette : PaletteType;
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
   GetPalette(Palette);
   SetAllPalette(Palette);
   GetAspectRatio(Xasp,Yasp);
   CenterX := GetMaxX Div 2;
   CenterY := GetMaxY Div 2;
   SetTextJustify(CenterText,CenterText);
   SetColor(2);
   Line(0,CenterY,GetMaxX-25,CenterY);
   Line(CenterX,20,CenterX,GetMaxY);
   OutTextXY(CenterX-10,CenterY+5,'0');
   OutTextXY(GetMaxX-16,CenterY,'>X ');
   SetTextStyle(DefaultFont,VertDir,0);
   OutTextXY(CenterX,18,'>');
   SetTextStyle(DefaultFont,HorizDir,0);
   OutTextXY(CenterX,8,'Y');
   i := 0;
   SetColor(2);
   While i <= GetMaxX Do
   	Begin
      	x :=(i-160)/20;
         mx := Round(i);
         y := (sin(x))*(Sin(x))*(Sin(x));
         my := CenterY - Adjasp(Round(y*20));
         If abs(my) < 200 Then
         	PutPixel(mx,my,14);
         i := i+(2/7);
      End;
   Rectangle(CenterX+10,CenterY+10,GetMaxX-10,GetMaxY-15);
   SetViewPort(CenterX+9,CenterY+9,GetMaxX-9,GetMaxY-16,ClipOn);
   SetTextStyle(2,0,4);
   OutTextXY(48,12,'He truc toa do');
   SetTextStyle(1,0,3);
   OutTextXY(60,40,'DESCARTES');
   Readln;
   CloseGraph;
END.


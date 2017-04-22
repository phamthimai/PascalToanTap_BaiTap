Program Ca_Chep_Mieng;
Uses Crt,Graph;
Var
    Gd,Gm : Integer;
   Active,Visual,Temp:Word;
   Xcenter,YCenter,Radius,StAngle,EndAngle : Integer;
{--------------------------------}
    Procedure Initialize;
   Begin
    Gd := Detect;
      InitGraph(Gd,Gm,'C:\BP\BGI');
      SetColor(Red);
      SetFillStyle(SolidFill,Blue);
      Xcenter := GetMaxX Div 2;
      YCenter := GetMaxY Div 2;
      StAngle := 15;
      Radius := GetMaxY Div 8;
      Active := 0;
      Visual := 1;
   End;
{--------------------------------}
    Procedure Veca;
   Begin
    if StAngle = 15 Then  {ve bung ca}
        Begin
            StAngle := 30;
            EndAngle := 330;
         End
      Else
        Begin
            StAngle := 15;
            EndAngle := 345;
         End;
      PieSlice(Xcenter,YCenter,StAngle,EndAngle,Radius);
          {ve mat ca}
      Circle(Xcenter+Radius Div 2,YCenter - Radius Div 2,4);
        {ve duoi ca}
      Line(Xcenter-Radius,Ycenter,Xcenter-2*Radius,Ycenter-Radius);
      Line(Xcenter-Radius,Ycenter,Xcenter-2*Radius,Ycenter+Radius);
   End;
{--------------------------------}
BEGIN
    Initialize;
   While Not KeyPressed Do
    Begin
        SetActivePage(Active);
         SetvisualPage(Visual);
         Veca;
         Temp := Active;
         Active := Visual;
         Visual := Temp;
      End;
END.
Program Bieu_Do_Cot;
Uses Graph;
Const h = 60;
Var
	Gd,Gm : Integer;
   Socot : Integer;
   a : Array[1..100] Of Integer;
   Max : Integer;
   i : Integer;
   Mx,My : Integer;
   Xstep,Ystep : Integer;
   x : Integer;
Begin
	Write('-Tong so cot: ');
   Readln(Socot);
   For i := 1 To Socot Do
   	Begin
      	Write('	+Cot thu : ',i:2,' = ');
         Readln(a[i]);
      End;
   Max := a[1];
   For i := 2 To Socot Do
   If a[i] > Max Then
   	Max := a[i];
   Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   Mx := GetMaxX;
   My := GetMaxY;
   Rectangle(0,0,Mx,My);
   Line(h,h,h,My-h);
   Line(h,My-h,MX-h,My-h);
   Xstep := Round((Mx-3*h)/Socot);
   Ystep := Round((My-2*h)/Max);
   x := h;
   For i := 1 To Socot Do
   	Begin
      	SetFillStyle(i,i);
         Bar(x,(My-h)-a[i]*Ystep,x+Xstep,My-h);
         Rectangle(x,(My-h)-a[i]*Ystep,x+Xstep,My-h);
         x := x + Xstep;
      End;
   Readln;
   CloseGraph;
End.
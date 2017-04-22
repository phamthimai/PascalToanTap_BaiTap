Program Bieu_Do_PIE;
Uses Graph;
Var
	Gd,Gm : Integer;
   Somuc : Integer;
   a : Array[1..100] Of Real;
   Tong,Goc : Real;
   r,i : Integer;
Begin
	Write('-Tong so muc: ');
   Readln(Somuc);
   Tong := 0;
   For i := 1 To Somuc Do
   	Begin
      	Write('	+Muc thu : ',i:2,' = ');
         Readln(a[i]);
         Tong := Tong + a[i];
      End;
   For i := 1 To Somuc Do
   	a[i]:=(a[i]/Tong)*360;
   Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   R := GetMaxY Div 3;
   Rectangle(0,0,GetMaxX,GetMaxY);
   Goc := 0;
   For i := 1 To Somuc Do
   	Begin
      	SetFillStyle(i,i);
         PieSlice(GetMaxX Div 2, GetMaxY Div 2,Round(Goc),Round(Goc+a[i]),R);
         Goc := Goc + a[i];
      End;
   Readln;
   CloseGraph;
End.
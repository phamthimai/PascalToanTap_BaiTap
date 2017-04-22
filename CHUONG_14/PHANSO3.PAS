UNIT PhanSo3;

	INTERFACE

Uses PhanSo2;

TYPE
	T_PhanSo3 = Object(T_PhanSo2)
   	Constructor KhoiDong;
      Procedure ToiGian; Virtual;
   End;

	IMPLEMENTATION

{--------------------------------}
	Constructor T_PhanSo3.KhoiDong;
	Begin
	End;
{--------------------------------}
	Procedure T_PhanSo3.ToiGian;
	Var
		u:LongInt;
   Function USCLN(x, y : LongInt): LongInt;
   Var
   	Tam : LongInt;
   Begin
   	Tam :=0;
      Repeat
      	If x >= y Then
         	If (x Mod y) = 0 Then
            	Tam :=y
            Else
            	x := x - (x Div y) * y;
         If  y > x Then
         	If (y Mod x) = 0 Then
            	Tam := x
            Else
            	y := y-(y div x) * x;
      Until (Tam <> 0);
      USCLN := Tam;
   End;
   Begin
   	If TuSo = 0 Then
      	Begin
         	MauSo := 1;
            Dau := 0;
            Exit;
         End;
      u := USCLN(TuSo, MauSo);
      TuSo := TuSo Div u;
      MauSo := MauSo Div u;
   End;
END.
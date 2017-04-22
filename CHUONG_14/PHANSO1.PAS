UNIT PhanSo1;

INTERFACE

TYPE
	T_Dau = -1.. 1;
   T_PhanSo1 = OBJECT
   	TuSo, MauSo : LongInt;
      Dau			: T_Dau;
      CONSTRUCTOR KhoiDong;
      Procedure Doi(r : Real);
      Procedure ToiGian;
      Procedure Xuat;
   End;

IMPLEMENTATION

CONST
	Max = 2147483647;
   R_min = 1E-10;
   CONSTRUCTOR T_PhanSo1.KhoiDong;
   Begin
   End;
{--------------------------}
   Procedure T_PhanSo1.Doi(r : Real);
   Var
   	PS : T_PhanSo1;
      Du : Real;
   Begin
   	If ABS(r) > Max Then
      	RunError(7);
      If r > 0 Then
      	Dau := 1
      Else
      	Dau := -1;
      r := ABS(r);
      MauSo := 1;
      Du := r - Int(r);
      While Du > R_Min Do
      	Begin
         	r := 10 * r;
            MauSo := 10 * MauSo;
            Du := r - Round(r);
         End;
      TuSo := Round(r);
   End;

{--------------------------}
   Procedure T_PhanSo1.ToiGian;
   Var
   	u : LongInt;
      Function USCLN(x, y : LongInt) : LongInt;
      Begin
      	While NOT (x = y) Do
         	If x > y Then
            	x := x - y
            Else
            	y := y -x;
         USCLN := x;
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

   {--------------------------}
   Procedure T_PhanSo1.Xuat;
   Begin
   	If MauSo = 1 Then
      	Begin
         	If Dau = -1 Then
            	Write('-',TuSo)
            Else
            	Write(TuSo);
            Exit
         End;
      If Dau = -1 Then
      	Write('-',TuSo, '/', MauSo)
      Else
      	Write(TuSo,'/',MauSo);
   End;
   END.
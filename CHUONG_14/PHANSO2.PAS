UNIT PhanSo2;

INTERFACE

(**************)

USES PhanSo1;

TYPE
	T_PhanSo2 = Object(T_PhanSo1)
   	Procedure Cong(Ps : T_PhanSo2);
      Function LonHon(Ps : T_PhanSo2): Boolean;
   End;

IMPLEMENTATION

(**************)

	Function T_PhanSo2.LonHon(Ps : T_PhanSo2) : Boolean;
	Var
		x, y : Real;
	Begin
		x := TuSo;
   	x := x / MauSo;
   	y := Ps.TuSo;
   	y := y / Ps.MauSo;
   	If x > y Then
   		LonHon := True
   	Else
   		LonHon := False;
	End;
(**************)

	Procedure T_PhanSo2.Cong(Ps : T_PhanSo2);
	Var
		x, y, Tong : Real;
	Begin
		x := TuSo;
   	x := x / MauSo;
		y := Ps.TuSo;
		y := y / Ps.MauSo;
		Tong := x + y;
		Doi(Tong);
		x := TuSo;
		x := x / MauSo;
		ToiGian;
		x := TuSo;
		x := x / MauSo;
	End;
END.
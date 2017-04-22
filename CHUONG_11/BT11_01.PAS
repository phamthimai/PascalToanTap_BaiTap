Program KT_ngay;
CONST
	Ngay  = [1..31];
	Thang = [1..12];
   Th31ngay: Set of byte = [1,3,5,7,8,10,12];

   BaoLoi : Array[1..3] Of String[30] =('-Ban nhap sai ngay, thang',
	         '-Thang nay khong co ngay 31','-thang 2 khong co ngay nay');

TYPE
  	NgayThang = RECORD
     	Ng, Th : Byte;
      Nam    : Word;
   End;

VAR
   	Nhatky : NgayThang;
		Loi    : Array[1..3] Of Boolean;
		i      : Byte;
		Nhuan  : Boolean;
BEGIN
	With Nhatky Do
   	Begin
      	Write('-Nhap ngay = ');
         Readln(Ng);
			Write('-Nhap thang= ');
         Readln(Th);
         Write('-Nhap nam  = ');
         Readln(Nam);
         Loi[1] := (NOT(Ng In Ngay)) OR (NOT (Th In Thang));
         Loi[2] := (Ng = 31) AND (NOT (Th In Th31Ngay));
         Nhuan  := ((Nam Mod 4) = 0) AND ((Nam Mod 100) <> 0)
			         OR ((Nam Mod 400) = 0);
         Loi[3] := ((Ng > 29) AND (Th = 2)) OR ((Ng = 29)
			         AND (th = 2) AND (NOT Nhuan));
      End;
   For i := 1 To 3 Do
   	If Loi[i] Then
      	Writeln(BaoLoi[i]);
	Readln
END.
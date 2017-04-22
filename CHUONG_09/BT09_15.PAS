Program Loang_mau;
	Uses Crt;
	Const
		St='       Chao mung ban da den voi Turbo Pascal       ';
	Var
   	k:Integer;
   Procedure Mau(nen,chu:Integer);
   	Begin
      	TextBackGround(nen);
         TextColor(chu);
      End;
BEGIN
	TextMode(C80);
   TextBackGround(Black);
   ClrScr;
   For k:=2 To 23 Do
   	Begin
      	Mau(k Mod 8,(k+4) Mod 8 + 8);
         GotoXY(1,k);
         Write(St)
      End;
   Readln
END.

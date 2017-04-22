Program Chum_duong_thang_dong_quy;
Uses Crt,Graph;
Var
	Palette : PaletteType;
   Gd,Gm,k,i : Integer;
   Color : Word;
   Tri : String[4];
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   Str(GetColor: 2,Tri);
   OutTextXY(10,10,Tri);
   With Palette Do
   	Begin
      	Size := 4;
         Colors[0] := White;
         Colors[1] := Red;
         Colors[2] := Blue;
         Colors[3] := Magenta;
         SetAllPalette(Palette);
      End;
   SetBkColor(LightBlue);
   Randomize;
   k := 1;
   Repeat
   	Color := Succ(GetColor);
      If Color > Palette.Size Then
      	Color := 2;
      SetColor(Color);
      i := k Mod 4;
      SetLineStyle(i,0,3);
      LineTo(Random(GetMaxX),Random(GetMaxY));
      Delay(100);
      k := k+1;
   Until k =15;
   SetColor(1);
   OutTextXY(10,100,'Chao mung nam 2000');
   Delay(2000);
   CloseGraph;
End.
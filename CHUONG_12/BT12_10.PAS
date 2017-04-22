Program Ho_So;
Uses Crt;
TYPE
	ConTro = ^HoSo;
   HoSo = RECORD
   	HoTen : String[24];
      Tuoi  : Integer;
      Luong : LongInt;
      Next  : ConTro;
   End;
VAR
	First, Last, Newp : ConTro;
	Hoten1, Hoten2      	      : String[24];
   i,TuoiMax,TuoiMin 	      : Integer;
   LuongMax, LuongMin,LuongTb : LongInt;
   Ch                         : Char;
   HeapTop  :^Integer;
Begin
	ClrScr;
	Writeln('HO SO NHAN VIEN');
   Writeln('---------------');
   Writeln;
   GoToXY(5,25);
   Write('Bam <Enter> de tiep tuc, bam <Esc> de thoat ');
   Window(1,2,80,25);
   First :=Nil;
   Mark(HeapTop);
   i := 0;
   Repeat
   	i := i + 1;
   	New(Newp);
      	With Newp^ Do
      		Begin
         		Write('-Ho ten nhan vien thu: ',i:2,' la= ');
            	Readln(HoTen);
            	Write('-Tuoi      = ');
            	Readln(Tuoi);
            	Write('-Bac luong = ');
            	Readln(Luong);
   				TuoiMax  := Tuoi;
   				TuoiMin  := Tuoi;
   				LuongMax := Luong;
   				LuongMin := Luong;
   				HoTen1   := HoTen;
   				HoTen2   := HoTen;
            End;
         If First = Nil Then
         	First := Newp
         Else
         	Last^.Next := Newp;
            Last := Newp;
            Last^.Next := Nil;
         Ch := ReadKey;
   Until Ch = #27;
   Writeln;
   While First <> Nil Do
   	With First^ Do
   		Begin
      		If Tuoi > TuoiMax Then
         		TuoiMax := Tuoi
         	Else
         		If Tuoi < TuoiMin Then
            		TuoiMin := Tuoi;
         	If Luong > LuongMax Then
         		Begin
            		LuongMax := Luong;
               	HoTen1 := HoTen;
            	End
         	Else
         		If Luong < LuongMin Then
            		Begin
               		LuongMin := Luong;
                  	HoTen2 := HoTen;
               	End;
            First := Next;
      	End;
   Writeln;
   Writeln('+Nhan vien co tuoi lon nhat la: ',TuoiMax);
	Writeln('+Nhan vien co tuoi nho nhat la: ',TuoiMin);
   Writeln('+Nhan vien: ',HoTen1,' ,co bac luong lon nhat: ',LuongMax:10);
	Writeln('+Nhan vien: ',HoTen2,' ,co bac luong nho nhat: ',LuongMin:10);
   Release(HeapTop);
   Writeln;
   Write(' Bam <Enter> de ket thuc ');
   Readln
End.



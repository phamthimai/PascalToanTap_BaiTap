Program Diem_Thi;
CONST
	Max = 50;
   Td1 = '|========================|======|======|======|';
   Td2 = '|       HO VA TEN        | DIEM |  TL1 |  TL2 |';
   Td3 = '|------------------------|------|------|------|';
   Td4 = '|---------------------------------------------|';

TYPE
	DiemThi = RECORD
   	HoTen  : String[24];
      Diem1  : Real;
      Case ThiLai1 : Boolean Of
			True : (Diem2 : Real;
					 Case ThiLai2 : Boolean Of
					 	True : (Diem3 : Real));
		End;
VAR
	Diem : Array[1..Max] Of DiemThi;
	n, i : 1..Max;
BEGIN
	Writeln('-So luong sinh vien: ');
   Readln(n);
   For i := 1 To N Do
   	With Diem[i] do
      	Begin
         	Write('+Ho va ten sinh vien thu: ',i,' = ');
            Readln(HoTen);
            Write('+Diem thi : ');
            Readln(Diem1);
            If Diem1 < 5 Then
            	Begin
               	ThiLai1 := True;
                  Write('	-Diem thi lai lan 1= ');
                  Readln(Diem2);
                  If Diem2 < 5 Then
                  	Begin
                     	ThiLai2 := True;
                        Write('	-Diem thi lai lan 2= ');
                        Readln(Diem3);
                     End;
               End;
         End;
   Writeln(#32:34,'KET QUA HOC TAP');
   Writeln(#32:20,Td1);
   Writeln(#32:20,Td2);
   Writeln(#32:20,Td3);
   For i := 1 To N Do
   	With Diem[i] Do
      	Begin
         	Write(#32:20);
            Write(#124,HoTen,#32:24-length(HoTen));
            Write(#124,Diem1:6:1);
            If Diem1 < 5 Then
            	Begin
               	Write(#124,Diem2:6:1);
                  If Diem2 < 5 Then
                  	Writeln(#124,Diem3:6:1,#124)
                  Else
                  	Writeln(#124,#32:6,#124);
               End
            Else
            	Writeln(#124,#32 :6, #124, #32 :6, #124);
         End;
   Writeln(#32:20,Td4);
   Readln
END.
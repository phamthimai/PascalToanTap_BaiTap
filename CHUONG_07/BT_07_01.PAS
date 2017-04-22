Program Ngay_mai_la_ngay_may;
Var
	Nam:1900..2000;
   Thang:1..12;
   Ngay:1..31;
Begin
	Writeln('CHO BIET NGAY HOM NAY SE TINH DUOC NGAY MAI');
   Writeln('-------------------------------------------');
   Repeat
   	Write('-Cho biet ngay ( so 0 de ngung): ');
      Readln(Ngay);
      If Ngay = 0 Then
      	Exit;
      Write('-Cho biet thang: ');
      Readln(Thang);
      Write('-Cho biet nam: ');
      Readln(Nam);
      Case Thang Of
      	1,3,5,7,8,10,12 : If Ngay < 31 Then
         							Ngay:=Ngay+1
         						Else
                              If Thang = 12 Then
                              	Begin
                                 	Nam:=Nam+1;
                                    Thang:=1;
                                 End
                               Else
                                 Begin
                                 	Thang:=Thang+1;
                                    Ngay:=1;
                                 End;
         4,6,9,11	:  If Ngay < 30 Then
         					Ngay:=Ngay+1
         				Else
                     	Begin
                        	Thang:=Thang+1;
                           Ngay:=1;
                        End;
         2: If (Ngay < 28) Or ((Ngay=28) And (Nam Mod 4 = 0)) then
         		Ngay:=Ngay+1
         	Else
            	Begin
               	Thang:=Thang+1;
                  Ngay:=1;
               End;
      End;
   Writeln;
   Writeln('+Ngay mai la ngay: ',Ngay:2,' / ',Thang:2,' / ',Nam:4);
   Writeln;
   Until Ngay=0;
End.

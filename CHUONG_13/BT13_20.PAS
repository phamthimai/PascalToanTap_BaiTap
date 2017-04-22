Program Cay_Nhi_Phan;
Uses Crt;
TYPE
	Str = String[24];
   ConTro = ^BanGhi;
   BanGhi = RECORD
   	HoTen : Str;
      Luong : Real;
      Trai,Phai : ConTro;
      End;
VAR
	Goc    	: ConTro;
   Nv    	: BanGhi;
   Ketthuc  : Boolean;
   Ch 		: Char;
{--------------------------------}
	Procedure Chen(Var Goc : ConTro; Nv : BanGhi);
   Var
   	P,P1 : ConTro;
   Begin
   	If goc = Nil Then
      	Begin
   			New(Goc);
            With Goc^ Do
            	Begin
      				HoTen := NV.HoTen;
                  Luong := NV.Luong;
                  Trai  := Nil;
                  Phai  := Nil;
               End;
         End
      Else
      	Begin
         	P := Goc;
            P1 := Nil;
            While P <> Nil Do
            	Begin
               	P1 := P;
                  If Nv.HoTen <= P^.HoTen Then
                  	P := P^.Trai
                  Else
                  	P := P^.Phai;
               End;
            New(P);
            With P^ Do
            	Begin
               	HoTen := NV.HoTen;
                  Luong := NV.Luong;
                  Trai := Nil;
                  Phai := Nil;
               End;
            If NV.HoTen <=P1^.HoTen Then
            	P1^.Trai := P
            Else
            	P1^.Phai := P;
         End;
   End;
{--------------------------------}
	Procedure Xoa(Var Goc : ConTro; Nv : BanGhi);
   Var
   	P,P1,Q,Q1 : ConTro;
      Nhanh :(NhanhTrai,NhanhPhai);
   Begin
   	If Goc = Nil Then
      	Writeln('Cay rong')
      Else
      	Begin
         	P := Goc;
            P1 := Nil;
            While (P <> Nil) And (P^.HoTen <> Nv.HoTen) Do
            	Begin
               	P1 := P;
                  If Nv.HoTen < P^.HoTen Then
                  	Begin
                     	P := P^.Trai;
                        Nhanh := NhanhTrai;
                     End
                  Else
                  	Begin
                     	P := P^.Phai;
                        Nhanh := NhanhPhai;
                     End;
               End;
            If P = Nil Then
            	Writeln('Khong tim thay')
            Else
            	Begin
               	If (P^.Trai = Nil) Then
                  	Q := P^.Phai
                  Else
                  	Begin
                     	Q := P^.Trai;
                        Q1 := Nil;
                        While Q^.Phai <> Nil Do
                        	Begin
                           	Q1 := Q;
                              Q := Q^.Phai;
                           End;
                        If Q1  <> Nil Then
                        	Begin
                           	Q1^.Phai := Q^.Trai;
                              Q^.Trai := P^.Trai;
                           End;
                        If P1 = Nil Then
                        	Goc := Q
                        Else
                        	Begin
                           	If Nhanh = NhanhTrai Then
                              	P1^.Trai := Q
                              Else
                              	P1^.Phai := Q;
                           End;
                        Dispose(P);
                     End;
               End;
         End;
   End;
{--------------------------------}
	Procedure Tim(Goc : ConTro; Nv : BanGhi);
   Var
   	P : ConTro;
   Begin
   	P := Goc;
      While (P <> Nil) And (P^.HoTen <> Nv.HoTen) Do
      	If NV.HoTen < P^.HoTen Then
            P := P^.Trai
         Else
         	P := P^.Phai;
      If P = Nil Then
      	Writeln('Khong tim thay')
      Else
      	Begin
         	Writeln('Tim thay');
            Writeln(P^.HoTen,' ', P^.Luong:8:1);
         End;
   End;
{--------------------------------}
	Procedure LNRLietKe(Goc : ConTro);
   Begin
   	If Goc =  Nil Then
      	Begin
         	Writeln('Cay rong, chua co du lieu');
         End
      Else
      	Begin
         	If Goc^.Trai <> Nil Then
            	LNRLietKe(Goc^.Trai);
            Writeln(Goc^.HoTen,', ',Goc^.Luong:8:1);
            If Goc^.Phai <> Nil Then
               LNRLietKe(Goc^.Phai);
         End;
   End;
{--------------------------------}
BEGIN
	Repeat
   	ClrScr;
   	Writeln;
   	Writeln('CAC CHUC NANG CAY NHI PHAN');
   	Writeln('--------------------------');
   	Writeln;
   	Writeln('1-Khoi tao cay');
		Writeln('2-Noi them vao cay');
   	Writeln('3-Xoa khoi cay');
   	Writeln('4-Tim kiem tren cay');
   	Writeln('5-Liet ke danh sach');
   	Writeln('6-Ket thuc chuong trinh');
      Writeln;
   	Write('Chon cac chuc nang tu 1 den 6: ');
   	Readln(Ch);
   	Case Ch Of
   		'1'	: Begin
         				ClrScr;
      					Writeln('1-KHOI TAO CAY');
                     Writeln('Cay co thu tu LNR');
                     Writeln('-----------------');
                     Writeln;
            	      Goc := Nil;
               	   KetThuc := False;
                  	Repeat
                  		With Nv Do
                     		Begin
                        		Write('-Ho ten hoac <Enter> de ngung: ');
                           	Readln(HoTen);
                           	If HoTen <> '' Then
                           		Begin
                              		Write('-Bac luong : ');
                                 	Readln(Luong);
                                 	Chen(Goc,Nv);
                              	End
                           	Else
                           		KetThuc := True;
                        	End;
                  	Until ketThuc;
      		  		End;
      	'2'	: Begin
         				ClrScr;
         				Writeln;
      					Writeln('2-NOI VAO CAY THEO THU TU');
                     Writeln('-------------------------');
                     Writeln;
               	   KetThuc := False;
                  	Repeat
                  		With Nv Do
                     		Begin
                        		Write('-Ho ten hoac <Enter> de ngung: ');
                           	Readln(HoTen);
                           	If HoTen <> '' Then
                           		Begin
                              		Write('-Bac luong : ');
                                 	Readln(Luong);
                                 	Chen(Goc,Nv);
                              	End
                           	Else
                           		KetThuc := True;
                        	End;
                  	Until ketThuc;
      		  		End;
         '3'	:  Begin
         				ClrScr;
                     Writeln;
         				Writeln('3.XOA KHOI CAY');
                     Writeln('--------------');
                     Writeln;
                     KetThuc := False;
                     Repeat
                     	With Nv Do
                        	Begin
                           	Write('Ho ten can xoa, hoac <Enter> de ngung: ');
                              Readln(HoTen);
                              If HoTen <> '' Then
                              	Xoa(Goc,NV)
                              Else
                              	KetThuc := True;
                           End;
                     Until KetThuc;
         			End;
         '4'	:	Begin
         				ClrScr;
         				Writeln('4-TIM KIEM TREN CAY');
                     Writeln('-------------------');
                     Writeln;
                     ketThuc := False;
                     Repeat
                     	With Nv Do
                        	Begin
                           	Write('Ho ten can tim, hoac <Enter> de ngung: ');
                              Readln(HoTen);
                              If HoTen <> '' Then
                              	Tim(Goc,NV)
                              Else
                              	KetThuc := True;
                           End;
                     Until KetThuc;
         			End;
         '5'	:	Begin
         				ClrScr;
         				Writeln('5-LIET KE NOI DUNG CAY');
                     Writeln('Hien thi theo thu tu ABC...');
                     Writeln('---------------------------');
                     Writeln;
                     LNRLietKe(Goc);
                     Writeln;
                     Write('Xem xong bam <Enter> . . . ');
                     Readln
						End;
         '6'	:		Begin
         				Writeln('7- KET THUC CHUONG TRINH');
                     Writeln;
						End;
      End;
   Until Ch = '6'
END.

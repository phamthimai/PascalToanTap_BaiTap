Program Danh_Sach_LK;
Uses Crt;
TYPE
	Str = String[24];
   ConTro = ^BanGhi;
   BanGhi = RECORD
   	HoTen : Str;
      Luong : Real;
      Next  : ConTro;
      End;
VAR
	First 	: ConTro;
   Nv    	: BanGhi;
   Ketthuc  : Boolean;
   Ch 		: Char;
{--------------------------------}
	Procedure Chen(Var First : ConTro; Nv : BanGhi);
   Var
   	P : ConTro;
   Begin
   	New(P);
      P^.HoTen := NV.HoTen;
      P^.Luong := NV.Luong;
      P^.Next  := First;
      First := P;
   End;
{--------------------------------}
	Procedure Xoa(Var First : ConTro; Nv : BanGhi);
   Var
   	P,P1 : ConTro;
   Begin
   	If First^.HoTen = NV.HoTen Then
      	Begin
         	P := First;
            First :=First^.Next;
            Dispose(P);
         End
      Else
      	Begin
         	P := First;
            While (P <> Nil) And (P^.HoTen <> Nv.HoTen) Do
            	Begin
               	P1 := P;
                  P := P^.Next;
               End;
            If P = Nil Then
            	Writeln('Khong tim thay')
            Else
            	Begin
               	P1^.Next := P^.Next;
                  Dispose(P);
               End;
         End;
   End;
{--------------------------------}
	Procedure Tim(First : ConTro; Nv : BanGhi);
   Var
   	P : ConTro;
   Begin
   	P := First;
      While (P <> Nil) And (P^.HoTen <> Nv.HoTen) Do
      	P := P^.Next;
      If P = Nil Then
      	Writeln('Khong tim thay')
      Else
      	Begin
         	Writeln('Tim thay');
            Writeln(P^.HoTen,' ', P^.Luong:8:1);
         End;
   End;
{--------------------------------}
	Procedure LietKe(First : ConTro);
   Var
   	P : ConTro;
   Begin
   	Writeln;
   	If First = Nil Then
      	Writeln('Danh sach rong')
      Else
      	Begin
         	P := First;
            While ( P <> Nil) Do
            	Begin
               	Writeln(P^.HoTen,' ',P^.Luong:8:1);
                  P := P^.Next;
               End;
         End;
         Writeln;
         Write('Xem xong, bam <Enter> . . . ');
         Readln
   End;
{--------------------------------}
	Procedure XoaHet(Var First : ConTro);
   Var
   	P1,P : ConTro;
   Begin
   	P := First;
      While P <> Nil Do
      	Begin
         	P1 := P^.Next;
            Dispose(P);
            P := P1;
         End;
      First := Nil
   End;
{--------------------------------}
	Procedure DaoNguoc(Var First : ConTro);
   Var
   	P,P1,Tam: ConTro;
   Begin
   	If (First <> Nil) And ( First^.Next <> Nil) Then
      	Begin
         	P1 := First;
            P := P1^.Next;
            First^.Next := Nil;
            While (P <> Nil) Do
            	Begin
               	Tam := P^.Next;
                  P^.Next := P1;
                  P1 := P;
                  P := Tam;
               End;
            First := P1;
         End;
      Writeln;
      Write('Da dao nguoc danh sach, bam <Enter> . . . ');
      Readln
   End;
{--------------------------------}
BEGIN
	Repeat
   	ClrScr;
   	Writeln;
   	Writeln('CAC CHUC NANG');
   	Writeln('-------------');
   	Writeln('Chu y: Danh sach LIFO hoac FILO');
      Writeln('Ban ghi nhap vao dau nhung xuat ra cuoi');
   	Writeln('1-KHOI TAO DANH SACH');
		Writeln('2-NOI THEM VAO DANH SACH');
   	Writeln('3-XOA KHOI DANH SACH');
   	Writeln('4-TIM KIEM TRONG DANH SACH');
   	Writeln('5-LIET KE DANH SACH');
   	Writeln('6-DAO NGUOC DANH SACH');
   	Writeln('7-KET THUC CHUONG TRINH');
      Writeln;
   	Write('Chon cac chuc nang tu 1 den 7: ');
   	Readln(Ch);
   	Case Ch Of
   		'1'	: Begin
      					Writeln('1-TAO DANH SACH');
            	      First := Nil;
               	   KetThuc := False;
                  	Repeat
                  		With Nv Do
                     		Begin
                        		Write('-Ho ten hoac <Ente> de ngung: ');
                           	Readln(HoTen);
                           	If HoTen <> '' Then
                           		Begin
                              		Write('-Bac luong : ');
                                 	Readln(Luong);
                                 	Chen(First,Nv);
                              	End
                           	Else
                           		KetThuc := True;
                        	End;
                  	Until ketThuc;
      		  		End;
      	'2'	: Begin
      					Writeln('2-NOI THEM VAO DAU DANH SACH');
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
                                 	Chen(First,Nv);
                              	End
                           	Else
                           		KetThuc := True;
                        	End;
                  	Until ketThuc;
      		  		End;
         '3'	:  Begin
         				Writeln('3.XOA KHOI DANH SACH');
                     KetThuc := False;
                     Repeat
                     	With Nv Do
                        	Begin
                           	Write('Ho ten can xoa, hoac <Enter> de ngung: ');
                              Readln(HoTen);
                              If HoTen <> '' Then
                              	Xoa(First,NV)
                              Else
                              	KetThuc := True;
                           End;
                     Until KetThuc;
         			End;
         '4'	:	Begin
         				Writeln('4-TIM KIEM TRONG DANH SACH');
                     KetThuc := False;
                     Repeat
                     	With Nv Do
                        	Begin
                           	Write('Ho ten can tim, hoac <Enter> de ngung: ');
                              Readln(HoTen);
                              If HoTen <> '' Then
                              	Tim(First,NV)
                              Else
                              	KetThuc := True;
                           End;
                     Until KetThuc;
         			End;
         '5'	:	Begin
         				Writeln('5-LIET KE NOI DUNG DANH SACH');
                     LietKe(First)
						End;
          '6'	:	Begin
         				Writeln('6-DAO NGUOC NOI DUNG DANH SACH');
                     DaoNguoc(First)
						End;
         '7'	:		Begin
         				Writeln('7-XOA HET NOI DUNG DANH SACH ROI KET THUC');
                     XoaHet(First)
						End;
      End;
   Until Ch = '7'
END.

Program Danh_Sach_Moc_Noi;
Uses Crt;
TYPE
	ConTro = ^SoNguyen;
   SoNguyen = RECORD
   	So : Integer;
      Next : ConTro;
      End;
VAR
	First,Last,P :ConTro;
   So1 : Integer;
   Ch : Char;
{----------------------------------}
	Procedure Nhap(Var First, Last : ConTRo);
   Var
   	i : Integer;
   Begin
   	ClrScr;
      Writeln('NHAP DU LIEU');
      Writeln('------------');
      Writeln;
      i := 0;
      Repeat
      	i := i + 1;
         New(P);
         Write('-So thu: ',i:2,' = ');
         Readln(P^.So);
         If i = 1 Then
         	Begin
            	First := P;
               Last := P;
            End
         Else
         	Begin
            	Last^.Next := P;
               Last := P;
            End;
         Write('	Nhap nua khong ? (c/k) ');
         Readln(Ch);
      Until UpCase(Ch) = 'K';
      Last^.Next := Nil
   End;
{----------------------------------}
	Procedure Noi(Var First,Lasr : ConTro; Var So1 : Integer);
   Begin
   	Writeln;
   	New(P);
      P^.So := So1;
      If First = Nil Then
			First := P;
      Last^.Next := P;
      Last := P;
      Last^.Next := Nil;
      Writeln;
      Write('Da noi vao cuoi danh sach, bam <Enter> . . . ');
      Readln
   End;
{----------------------------------}
	Procedure Xoa(Var First : ConTro; Var So1 : Integer);
   Begin
   	Writeln;
   	So1 :=First^.So;
      P := First;
      First := First^.Next;
      Dispose(P);
      Writeln;
      Write('	Da xoa so dau, bam <Enter> . . . ');
      Readln
   End;
{----------------------------------}
	Procedure LietKe(First : ConTro);
   Begin
   	Writeln;
   	P := First;
      If P = Nil Then
      	Writeln('Danh sach rong');
      While P <> Nil Do
      	Begin
         	Write(P^.So : 5);
            P := P^.Next;
         End;
      Writeln;
      Write('	Xem xong, bam <Enter> . . . ');
      Readln
   End;
{----------------------------------}
BEGIN
	First := Nil;
   Last := Nil;
   Repeat
   	ClrScr;
      Writeln('              DANH SACH MOC NOI');
      Writeln('        Them vao cuoi, xoa dau danh sach');
      Repeat
      	Writeln('1-Nhap so');
         Writeln('2-Liet ke');
         Writeln('3-Noi them');
         Writeln('4-Xoa');
         Writeln('5-Ket thuc');
         Writeln;
         Write('Chon chuc nang nao: ');
         Ch := Readkey;
      Until Ch in ['1'..'5'];
      Case Ch Of
      	'1'	: Nhap(First, Last);
         '2'	: LietKe(First);
         '3'	: Begin
         				Writeln;
         		  		Write('-Nhap so muon noi them: ');
							Readln(So1);
                     Writeln;
                     Writeln('DANH SACH TRUOC KHI NOI LA');
                     LietKe(First);
							Noi(First,Last,So1);
							Writeln;
							Writeln('DANH SACH SAU KHI NOI THEM SO LA');
							LietKe(First);
         		  End;
         '4'	: If First = Nil Then
         				Begin
                     	Writeln(' Danh sach rong, khong xoa duoc');
                        Writeln('Bam <Enter> . . . ');
                        Readln
                     End
         			Else
                  	Begin
                     	Writeln;
                        Writeln('    DANH SACH TRUOC KHI XOA SO');
                        LietKe(First);
                     	Xoa(First,So1);
                        Writeln('-So vua xoa la: ',So1);
                        Writeln;
                        Writeln('    DANH SACH CON LAI SAU KHI XOA SO DAU');
                        LietKe(First);
                     End;
      End;
   Until Ch ='5'
END.
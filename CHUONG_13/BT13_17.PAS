Program Danh_Sach_Lien_ket;
Uses Crt;
TYPE
	ConTro = ^BanGhi;
   BanGhi = RECORD
   	HoTen    : String[24];
      DiaChi   : String[20];
      ChucVu   : String[15];
      DonVi    : String[20];
      Next     : ConTro;
      End;
VAR
	First, Last,P,F: ConTro;
   Ch : Char;
{-------------------------------------}
	Procedure Noi;
{-------------------------------------}
	Procedure Nhap;
   Begin
   	With P^ Do
      	Begin
         	Write('-Ho va ten: ');
            Readln(HoTen);
            Write('-Dia chi  : ');
            Readln(DiaChi);
            Write('-Chuc vu  : ');
            Readln(Chucvu);
            Write('-Don vi   : ');
            Readln(DonVi);
         End;
   End;
{-------------------------------------}
	Begin
   	ClrScr;
      If First = Nil Then
      	Begin
         	New(P);
            Nhap;
            First   := P;
            P^.Next := Nil;
            First   := P;
            Last    := P;
         End
      Else
      	Begin
         	F := P;
            New(P);
            Nhap;
            F^.Next := P;
            P^.Next := Nil;
         End;
   End;
{-------------------------------------}

	Procedure Duyet;
   Var
   	P : ConTro;
   Begin
   	P := First;
      While P <> Nil Do
      	Begin
         	With P^ Do
            Writeln(HoTen,' , ',DiaChi,' , ',ChucVu,' , ',DonVi);
            P := P^.Next;
         End;
      Writeln;
      Writeln('Bam <Enter> ... ');
      Readln
   End;
{-------------------------------------}
BEGIN
	First := Nil;
   Repeat
   	ClrScr;
      Repeat
      	Write('Bam (N)oi, (D)uyet, hoac (K)et thuc ');
         Ch := ReadKey;
         If Ch = #0 Then
         	Ch := Readkey;
         Writeln;
         Ch := UpCase(Ch);
      Until Ch In ['N','D','K'];
      If Ch = 'N' Then
      	Noi
      Else
      	If Ch = 'D' Then
         	Duyet
   Until Ch = 'K'
END.
Program Menu;
Uses Crt;
Type
	St17 = String[17];
   St7 = String[7];
   HoSo = RECORD
   	Holot : St17;
      Ten   : St7;
      ns    : Integer;
      Diem  : Real
      End;
   Mang = Array[1..100] Of HoSo;
   fhs = File Of HoSo;
Var
	Filename : String[11];
   f : fhs;
   Tam : HoSo;
   Ch : Char;
{----------------------------------}
	Procedure Nhap(Var f : fhs);
   Begin
   	Rewrite(f);
      With Tam Do
      	Repeat
         	Write('-Ho lot (0 de ket thuc): ');
            Readln(Holot);
            If Holot <> '0' Then
            	Begin
               	Write('-Ten: ');
                  Readln(Ten);
                  Write('-Nam sinh: ');
                  Readln(Ns);
                  Write('-Diem: ');
                  Readln(Diem);
                  Write(f,tam);
               End;
         Until HoLot = '0';
         Close(f);
   End;
{----------------------------------}
   Procedure SapXep(Var f : Fhs);
   Var
   	i,j,Spt : Integer;
   	ds : Mang;
   Begin
   	Reset(f);
      Spt := 0;
      While Not EOF(f) Do
      	Begin
         	Spt := Spt + 1;
            Read(f,ds[spt]);
         End;
      For i := 1 To spt - 1 Do
      	For j := spt Downto i + 1 Do
         	If ds[j].Ten[1] < ds[j-1].Ten Then
            	Begin
               	Tam := ds[j];
                  ds[j] := ds[j-1];
                  ds[j-1] := Tam;
               End;
      Rewrite(f);
      For i := 1 To spt Do
      	Write(f,ds[i]);
      Close(f);
      Writeln;
      Write('Da sap xep xong, bam <Enter>... ');
      Readln;
   End;
{----------------------------------}
   Procedure Xem(Var f : Fhs);
   Begin
   	ClrScr;
      Writeln('       HO VA TEN              DIEM');
      Reset(f);
      While Not EOF(f) Do
      	Begin
         	Read(f,Tam);
            With Tam Do
            	Writeln(Holot:17,' ',Ten:7,'      ',Diem:6:1);
         End;
      Readln;
   End;
{----------------------------------}
   Procedure CapNhat(Var f : Fhs);

{--------------------}
   Procedure Sua(Var f:Fhs);
   Var
   	Holot1 : St17;
      Ten1 : St7;
      TimThay : Boolean;
   Begin
   	Repeat
      	Write('-Holot: ');
         Readln(Holot1);
         Write('-Ten  : ');
         Readln(Ten1);
         TimThay := False;
         Reset(f);
         While Not EOF(f) Do
         	With Tam Do
         		Begin
            		Read(f,Tam);
               	If (Holot = Holot1) And (Ten = Ten1) Then
               		Begin
                  		Timthay := True;
                     	Writeln(Holot,' ',Ten,' Diem : ',Diem : 0:1);
                     	Repeat
                     		Writeln('Co sua khong ? (c/k) ');
                        	Ch := Readkey;
                     	Until Ch in['c','C','k','K'];
                     	If Upcase(Ch) = 'C' Then
                     		Begin
                        		Write('-Ho lot: ');
                           	Readln(Holot);
                           	Write('-Ten   : ');
                           	Readln(Ten);
                           	Write('-Nam sinh : ',ns);
                           	Write('-Diem : ');
                           	Readln(Diem);
                           	Seek(f,filepos(f)-1);
                           	Write(f,Tam);
                        	End;
                  	End;
            	End;
           	If Not TimThay Then
           		Writeln('Khong tim thay');
           	Repeat
           		Writeln('Tim nu khong ? (c/k) ');
              	Ch := Readkey;
           	Until Ch in['c','C','k','K'];
      Until Upcase(Ch) = 'K'
   End;
{--------------------}
   Procedure Them(Var f: Fhs);
   Begin
   	Reset(f);
      Seek(f,Filesize(f));
      With Tam Do
      	Repeat
         	Write('-Ho lot: ');
            Readln(Holot);
            Write('-Ten   : ');
            Readln(Ten);
            Write('-Nam sinh : ',ns);
            Write('-Diem : ');
            Readln(Diem);
            Write(f,Tam);
            Repeat
            	Writeln('Them nua khong ? (c/k) ');
               Ch := Readkey;
            Until Ch in['c','C','k','K'];
         Until Upcase(Ch) = 'K';
   End;
{-------------------}
   Procedure Xoa(Var f : Fhs);
   Var
   	ds : Mang;
      Holot1 : St17;
      Ten1 : St7;
      i,spt,vitri : Integer;
      TimThay : Boolean;
   Begin
   	Reset(f);
      spt := 0;
      While Not EOF(f) Do
      	Begin
         	Read(f,Tam);
            spt := spt + 1;
            ds[spt] := Tam;
         End;
      Repeat
      	Write('-Ho lot : ');
         Readln(holot1);
         Write('-Ten   : ');
         Readln(Ten1);
         TimThay := False;
         i := 0;
         Repeat
         	i := i + 1;
            If (ds[i].Holot = Holot1) And (ds[i].Ten = Ten1) Then
            	Begin
               	TimThay := True;
                  vitri := i;
               End;
         Until TimThay Or (i > spt);
         If TimThay Then
         	Begin
            	With ds[vitri] Do
               	Writeln(Holot,' ',Ten,' Diem: ',Diem:0:1);
                  Repeat
                  	Writeln('Co xoa khong ? (c/k) ');
                     Ch := Readkey;
                  Until Ch in['c','C','k','K'];
                  If Upcase(Ch) = 'C' Then
                  	Begin
                     	spt := spt - 1;
                        For i := vitri To spt Do
                        	ds[i] := ds[i+1];
                     End;
            End
         Else
         	Writeln('Khong tim thay');
         Repeat
         	Writeln('Tim nua khong ? (c/k) ');
            Ch := Readkey;
         Until Ch in['c','C','k','K'];
      Until Upcase(Ch) = 'K';
      Rewrite(f);
      For i := 1 To spt Do
      	Write(f,ds[i]);
      Close(f);
   End;
   {-----Chuong trinh chiinh cua cap nhat-------}
   Begin
   	Repeat
      	Repeat
         	ClrScr;
            Writeln('  MENU CAP NHAT  ');
            Writeln('1-Sua');
            Writeln('2-Them');
            Writeln('3-Xoa');
            Writeln('4-Thoat');
            Ch := Readkey;
         Until Ch in['1'..'4'];
         Case Ch Of
         	'1' : Sua(f);
            '2' : Them(f);
            '3' : Xoa(f);
         End;
      Until Ch = '4'
   End;
 {************ CHUONG TRINH CHINH ***********}
 BEGIN
 	ClrScr;
   Write('-Ten tap tin : ');
   Readln(Filename);
   Assign(f,Filename);
   Repeat
   	Repeat
      	ClrScr;
         Writeln('      MENU CHINH');
         Writeln('   1-Nhap');
         Writeln('   2-Sap xep');
         Writeln('   3-Xem');
         Writeln('   4-Cap nhat');
         Writeln('   5-Ket thuc');
         Writeln;
         Ch := Readkey;
      Until ch in['1'..'5'];
      Case Ch Of
      	'1' : Nhap(f);
         '2' : SapXep(f);
         '3' : Xem(f);
         '4' : CapNhat(f);
      End;
   Until Ch = '5'
 END.

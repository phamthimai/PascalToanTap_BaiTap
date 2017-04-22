Program Doi_Tuyen;
Uses Crt;
Type
	HocSinh = RECORD
   	HoTen : String[24];
      Lop : String[4];
      Dtb : Real;
      End;
   Fhs = File Of HocSinh;
Var
	f : Fhs;
   Ch : Char;
{----------------------------------}
	Procedure Nhap(Var f : Fhs);
   Var
   	Tam : HocSinh;
   Begin
   	Rewrite(f);
      Repeat
      	Write('-Nhap ho ten (0 de thoat): ');
			Readln(Tam.Hoten);
			If Tam.HoTen <> '0' Then
				Begin
            	Write('-Lop: ');
               Readln(Tam.Lop);
               Write('-Diem trung binh: ');
               Readln(Tam.Dtb);
               Write(f,Tam);
				End;
      Until tam.HoTen ='0';
   Close(f);
   End;
{----------------------------------}
   Procedure Lapds(Var f:Fhs);
   Var
   	Tam    : Hocsinh;
      a      : Array[1..1000] Of HocSinh;
      TenLop : Array[1..100] Of String[4];
      alop   : Array[1..200] Of HocSinh;
      Sohs12,Solop12,Sohslop : Integer;
      Stt    : Integer;
      i,j,k  : Integer;
      Coroi  : Boolean;
   Begin
   	Reset(f);
      Sohs12 := 0;
      Solop12 := 0;
      While Not EOF(f) Do
      	Begin
         	Read(f,tam);
            If (Tam.Lop[1]='1') And (Tam.Lop[2]='2') Then
            	Begin
               	Sohs12 := Sohs12 + 1;
                  a[Sohs12] := Tam;
                  Coroi := False;
                  For i := 1 To Solop12 Do
                  	If Tenlop[i] = Tam.Lop Then
                     	Coroi := True;
                  If Not coroi Then
                  	Begin
                     	Solop12 :=Solop12+1;
                        TenLop[Solop12] := Tam.Lop;
                     End;
               End;
         End;
      Writeln('|','STT','|','HO VA TEN':24,'|','  LOP  ','|','  HANG  ','|');
      Stt := 1;
      For i := 1 to Solop12 Do
      	Begin
         	Sohslop := 0;
            For j := 1 To Sohs12 Do
            	If a[j].Lop = Tenlop[i] Then
               	Begin
                  	Sohslop := Sohslop + 1;
                     alop[sohslop]:=a[j];
                  End;
            For k := 1 To Sohslop - 1 Do
            	For j := sohslop DownTo k + 1 Do
               	If alop[j].Dtb > alop[j-1].Dtb Then
                  	Begin
                     	Tam := alop[j];
                        alop[j] := alop[j-1];
                        alop[j-1] := Tam;
                     End;
                  If Sohslop >=3 Then
                  	For k := 1 To 3 Do
                     	Begin
                        	With alop[k] Do
                           Writeln('|',stt:3,' |',HoTen:24,' | ',
											Lop:5,' | ',k : 3,' |');
                           Stt := Stt + 1;
                        End
                  Else
                  	For k := 1 To Sohslop Do
                     	Begin
                        	With alop[k] Do
                           	Writeln('|',stt:3,' |',HoTen:24,' | ',
											Lop:5,' | ',k : 3,' |');
                              Stt := Stt + 1;
                        End;
         End;
      Close(f);
   End;

{----------------------------------}
BEGIN
	Assign(f,'doituyen.dat');
   Repeat
   	Repeat
      	Writeln('1-Nhap du lieu');
         Writeln('2-Danh sach doi du tuyen');
         Writeln('3-Ket thuc');
         Ch := Readkey;
      Until ch in ['1'..'3'];
      Case Ch Of
      	'1' : Nhap(f);
         '2' : Lapds(f);
      End;
   Until Ch = '3';
END.

Program Gia_Canh;
CONST
	Max = 100;
   Td1 ='|========================|========================|======|';
   Td2 =#124 +'         HO VA TEN      '+
	     #124 +'      HO TEN VO CHONG   '+
		  #124 +'SO CON'+#124;
   Td3 ='|------------------------|------------------------|------|';
TYPE
	GiaCanh = RECORD
   	HoTen :String[24];
      Case GiaDinh  : Boolean Of
              True  : (VoChong : String[24];
              SoCon : Byte);
      End;

VAR
	Hsgc :Array[1..Max] Of GiaCanh;
   n, i : 1..Max;
   Ch   : Char;
BEGIN
	Writeln('HO SO GIA CANH');
   Writeln('--------------');
   Writeln;
   Write('-So luong nhan vien: ');
   Readln(n);
   For i := 1 To N Do  {Nhap du lieu}
   	With Hsgc[i] Do
      	Begin
         	Write('+Ho va ten nhan vien thu: ',i:2,' la= ');
            Readln(HoTen);
            Write('+Co gia dinh chua (C/K) ');
            Readln(Ch);
            Ch := UpCase(Ch);
            If Ch = 'C' Then
            	Begin
               	GiaDinh := True;
                  Write('	+Ho ten vo/chong: ');
                  Readln(VoChong);
                  Write('	+So con         : ');
                  Readln(SoCon);
               End
            Else
            	GiaDinh := False;
         End;
   Writeln;
   Writeln(#32:25,'HOAN CANH GIA DINH NHAN VIEN');
   Writeln(#32:12,Td1);
   Writeln(#32:12,Td2);
   Writeln(#32:12,Td3);
   For i := 1 To N Do     {Xuat du lieu }
   	With Hsgc[i] Do
      	Begin
         	Write(#32:12);
            Write(#124,HoTen,#32:24-Length(HoTen));
            If GiaDinh Then
            	Begin
               	Write(#124,VoChong,#32:24-Length(VoChong));
                  Writeln(#124,SoCon:6,#124);
               End
            Else
            	Begin
               	Write(#124,#32:24);
                  Writeln(#124,#32:6,#124);
               End;
         End;
   Writeln(#32:12,Td1);
   Readln
END.
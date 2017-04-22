Program Gia_Canh;
Uses Crt;
CONST
   Td1 ='|========================|========================|======|';
   Td2 =#124 +'         HO VA TEN      '+
	     #124 +'      HO TEN VO CHONG   '+
		  #124 +'SO CON'+#124;
   Td3 ='|------------------------|------------------------|------|';
TYPE
	ConTro  = ^GiaCanh;
	GiaCanh = RECORD
   	HoTen :String[24];
      Next  : ConTro;
      Case GiaDinh  : Boolean Of
              True  : (VoChong : String[24];
              SoCon : Byte);

      End;
VAR
	First, Last, Newp : ConTro;
   i    : Integer;
   Ch   : Char;
   HeapTop : ^Integer;
BEGIN
   ClrScr;
   GotoXY(5,25);
   Write('Bam <Enter> de tiep tuc, bam <Esc> de thoat');
   Window(1,2,80,25);
	Writeln('HO SO GIA CANH');
   Writeln('--------------');
   Writeln;
   First := Nil;
   Mark(HeapTop);
   i := 0;
   Repeat
   	i := i + 1;
      New(Newp);
      With Newp^ Do
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
      If First = Nil Then
        	First := Newp
      Else
        	Last^.Next := Newp;
      Last := Newp;
      Last^.Next := Nil;
      Ch := ReadKey;
   Until Ch = #27;
   Writeln;
   ClrScr;
   Writeln(#32:25,'HOAN CANH GIA DINH NHAN VIEN');
   Writeln(#32:12,Td1);
   Writeln(#32:12,Td2);
   Writeln(#32:12,Td3);
   While First <> Nil Do     {Xuat du lieu }
   	With First^ Do
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
            First := Next;
         End;
    Release(HeapTop);
   Writeln(#32:12,Td1);
   Readln
END.
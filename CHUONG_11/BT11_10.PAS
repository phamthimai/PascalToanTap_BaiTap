Program The_Tich_Long_Go;
TYPE
	CachDo = (DuongKinh, ChuVi);
   LongGo = RECORD
   	Cdai   : Real;
      Dscdai : Real;
      Case Cdo : CachDo Of
      	DuongKinh : (Dk,Dsdk    : Real);
			ChuVi		 : (Cvi, Dscvi : Real);
   End;

VAR
	MaDo    :Char;
   Go      : LongGo;
   Ttich : Real;
   {------------------------}
   Function TheTich(A: LongGo): Real;
   Begin
   	With A Do
      	Case Cdo Of
         	DuongKinh : TheTich := Pi*Sqr(Dk-Dsdk)*(Cdai-Dscdai)/40000;
            ChuVi     : TheTich := Sqr(Cvi-Dscvi)*(Cdai-Dscdai)/(Pi*40000);
         End;
   End;

BEGIN
	Writeln('TINH THE TICH LONG GO');
   Writeln('---------------------');
   Writeln;
   Repeat
   	Writeln('*Chon phuong phap do ?');
      Write('+Duong kinh (go K), +Chu vi (go V): ');
      Readln(Mado);
   Until Pos(Mado,'kKvV') <> 0;
   With Go Do
   	Begin
      	Write('-Chieu dai (m) = ');
         Readln(Cdai);
         Write('-Dung sai (m)  = ');
         Readln(Dscdai);
         Case Mado Of
         	'k','K' : Begin
            				Cdo := DuongKinh;
                        Write('+Duong kinh (Cm): ');
                        Readln(Dk);
                        Write('+Dung sai (Cm)  : ');
                        Readln(Dsdk);
            			 End;
             'v','V' : Begin
            				Cdo := Chuvi;
                        Write('+Chu vi (Cm)    : ');
                        Readln(Cvi);
                        Write('+Dung sai (Cm)  : ');
                        Readln(Dscvi);
            			 End;
         End;
      End;
   Ttich :=TheTich(Go);
   Writeln;
   Writeln('*The tich long go la: ',Ttich:10:4,' m3');
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
END.
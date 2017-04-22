Program Phan_loai;
Var
	ten:String;
	diem:Integer;
Begin
	Writeln('XEP LOAI HOC TAP');
   Writeln('----------------');
   Write('-Cho biet ten: ');
   Readln(ten);
   Write('-Cho biet diem: ');
   Readln(diem);
   Case diem Of
   	0,1,2,3,4:	Begin
      					Writeln('+Hoc sinh: ',ten);
                     Writeln('+So diem : ',diem);
                     Writeln('+Xep loai KEM');
      				End;
      5,6:			Begin
      					Writeln('+Hoc sinh: ',ten);
                     Writeln('+So diem : ',diem);
                     Writeln('+Xep loai TRUNG BINH');
         			End;
      7,8:			Begin
      					Writeln('+Hoc sinh: ',ten);
                     Writeln('+So diem : ',diem);
                     Writeln('+Xep loai KHA');
         			End;
      9:				Begin
      					Writeln('+Hoc sinh: ',ten);
                     Writeln('+So diem : ',diem);
                     Writeln('+Xep loai GIOI');
         			End;
      10:			Begin
      					Writeln('+Hoc sinh: ',ten);
                     Writeln('+So diem : ',diem);
                     Writeln('+Xep loai XUAT SAC');
         			End;
      Else        Writeln('Khong co loai diem nay hoac ban go sai');
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
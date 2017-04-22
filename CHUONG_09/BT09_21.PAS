Program Ngat_tu;
	Var
   	St:String;
Begin
	Writeln('NGAT TUNG TU TRONG CAU');
   Writeln('    --------------');
   Writeln;
   Write('-Nhap mot cau: ');
   Readln(St);
   Repeat
   	While (St[1] =' ') And (Length(St) <> 0) Do
      	Delete(St,1,1);
      While (St[1] <> ' ') And (Length(St) <>0) Do
			Begin
         	Write(St[1]);
            Delete(St,1,1);
			End;
      Writeln;
   Until Length(St)=0;
   Readln
End.
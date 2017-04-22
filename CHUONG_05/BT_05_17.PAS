Program cat_chuoi;
Var
	chuoi,tam:String;
Begin
	Writeln('CAT CHUOI THANH TUNG TU');
   Writeln('------------------------');
   Write('-Nhap mot chuoi: ');
   Readln(chuoi);
   While chuoi <> '' Do
   	Begin
      	While chuoi[1] = #23 Do
         	chuoi:=copy(chuoi,2,255);
            If pos(#32,chuoi) <> 0 Then
            	tam:=copy(chuoi,1,pos(#32,chuoi))
            Else
            	tam:=chuoi;
            Writeln(tam);
            Delete(chuoi,1,length(tam));
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
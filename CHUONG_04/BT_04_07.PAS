Program Cong_giay;
Var
	gio,phut,giay,them:Integer;
Begin
	Writeln('CONG THEM GIAY VAO GIO HIEN HANH');
   Writeln('--------------------------------');
   Writeln('Nhap vao gio:phut:giay hien hanh');
   Write('-Gio	: ');
   Readln(gio);
   Write('-Phut: ');
   Readln(phut);
   Write('-Giay: ');
   Readln(giay);
   Write('-Cho biet so giay muon cong them: ');
   Readln(them);
   If (giay+them) < 60 Then
   	giay:=giay+them
   Else
   	Begin
      	giay:=((giay+them)-60);
         phut:=phut+1;
         If phut >=60 Then
         	Begin
            	phut:=phut-60;
               gio:=gio+1;
            End;
      End;
   Writeln;
   Writeln('+Sau khi cong them so giay vao, gio moi la:');
   Writeln('	     ',gio,' : ',phut,' : ',giay);
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.
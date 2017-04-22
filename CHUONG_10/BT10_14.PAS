Program Giai_he_PT_tuyen_tinh;
	Var
   	A:Array[1..2, 1..2] Of Real;
      C:Array[1..2] Of Real;
      x,y,dt,dtx,dty:Real;
      i,j:Integer;
Begin
	Writeln('GIAI HE PT TUYEN TINH 2 AN');
   Writeln('--------------------------');
   Writeln;
   Writeln('-Nhap cac he so A cua he phuong trinh: ');
   For i:=1 to 2 Do
   	For j:=1 To 2 Do
      	Begin
         	Write('+Phan tu A[',i,',',j,']= ');
            Readln(a[i,j]);
         End;
   Writeln;
   Writeln('-Nhap cac he so C cua he phuong trinh: ');
   For i:=1 to 2 Do
     	Begin
        	Write('+Phan tu C[',i,']= ');
         Readln(c[i]);
       End;
   Writeln;
   {Giai he phuong trinh}
   Dt:= a[1,1]*a[2,2]-a[1,2]*a[2,1]; {Dt: Dinh thuc}
   Dtx:=c[1]*a[2,2]-c[2]*a[2,1];
   Dty:=a[1,1]*c[2]-a[1,2]*c[1];
   If Dt <> 0 Then
   	Begin
   		x:=Dtx / Dt;
      	y:=Dty / Dt;
         Writeln('X= ',x);
         Writeln('Y= ',y);
      End
   Else
   	Begin
      	If (Dtx=0) And (Dty=0) Then
         	Writeln(#7,#7,#7,' Co vo so nghiem')
         Else
         	Writeln(#7,#7,#7,'Vo nghiem');
      End;
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.
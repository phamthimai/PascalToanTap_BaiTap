Program ga_cho;
Var
   x,y,n:Integer;
Begin
  	n:=1;
   Writeln('* CAC LOI GIAI BAI TOAN CO DIEN GA,CHO');
   Writeln('----------------------------------');
   For x:=1 To 36 Do
      For y:=1 To (36-x) Do
         If ((x*2)+(y*4) =100) then {and ((x+y) =36) Then}
            Begin
           	  Writeln('      * Loi giai thu : ',n:3);
              Write('- Ga  = ',x:2,' con = ',(x*2):2,' chan   ');
              Write('- Cho = ',y:2,' con = ',(y*4):2,' chan ');
              If x+y<36 Then
                	Writeln('Ga+Cho= ',x+y:2,' con,khong dung')
              Else If x+y=36 Then
                 	Writeln('Ga+Cho= ',x+y:2,' con,loi giai dung');
                  n:=n+1;
             End;
       Writeln('      * Tong cong co: ',(n-1):3,' loi giai');
       Writeln;
       Writeln('   Bam phim <Enter> de ket thuc');
       Readln
   End.
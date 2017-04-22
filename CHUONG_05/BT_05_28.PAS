Program Tim_cac_so_nguyen;
Var
	a,b,c,d:Integer;
   khac:Boolean;
Begin
	Writeln('TIM CAC SO NGUYEN KHAC NHAU');
   Writeln('---------------------------');
   For a:=2 To 10 Do
   	For b:=2 To 10 do
      	For c:=2 To 10 Do
         	For d:=2 To 10 Do
            	Begin
               	khac:=(a<>b) And (a<>c) And (a<>d)
                    And (b<>c) And (b<>d) And (c<>d);
                  If khac And (a*d*d=b*c*c*c) Then
                  Writeln(a,'*',d,'*',d,' = ',b,'*',c,'*',c,'*',c);
               End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
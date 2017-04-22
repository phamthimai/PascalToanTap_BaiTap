Program Tim_so_nguyen_to;
Var
	n,i,j:Integer;
   nguyento:Boolean;
Begin
	Writeln('TIM CAC SO NGUYEN TO TU 2 DEN N');
   Writeln('-------------------------------');
   Write('-Nhap so N= ');
   Readln(n);
   For i:=2 To n Do
   	Begin
         nguyento:=True;
         j:=2;
         	While nguyento And (j <i) Do
			  		Begin
            		If (i Mod j)=0 Then
               		nguyento:=False;
                  	j:=j+1;
					End;
         If nguyento Then
         	Write(i:4);
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
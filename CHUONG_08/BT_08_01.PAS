Program So_nguyen_to;
Var
	NguyenTo,Sang:Set of 1..100;
   so:1..100;
   i:Integer;
Begin
	Writeln('             CAC SO NGUYEN TO TU 1 DEN 100');
   Writeln('             -----------------------------');
   Writeln;
   NguyenTo:=[];
   Sang:=[2..100];
   So:=2;
   Repeat
   	While Not (So In Sang) Do
      	So:=So+1;
      NguyenTo:=NguyenTo + [So];
      Write(So,' ');
      I:=So;
      While I <= 100 Do
      	Begin
         	Sang:=Sang -[I];
            I:=I + So;
         End;
   Until Sang=[];
   Writeln;
   Writeln;
   Write('             Bam phim <Enter> de ket thuc ');
   Readln
End.
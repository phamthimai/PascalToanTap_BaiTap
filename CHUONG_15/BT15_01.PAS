Program Tap_Tin_So_Nguyen;
Uses Crt;
Var
	f : File Of Integer;
   So : Integer;
   a : Array[1..10] Of Integer;
   Spt,i,j : Integer;
   Filename : String[11];
Begin
   ClrScr;
	Writeln('NHAP SO LIEU CHO TAP TIN SONGUYEN.DAT');
   Writeln('-------------------------------------');
   Writeln;
   Assign(f,'songuyen.dat');
   ReWrite(f);
   For i := 1 To 10 Do
   	Begin
      	Write('-So thu: ',i:2,' = ');
         Readln(So);
         Write(f,so);
      End;
   Close(f);
   Spt := 0;
   Reset(f);
   While NOT EOF(f) Do
   	Begin
      	Spt := Spt + 1;
         Read(f,so);
         a[Spt] := so;
      End;
   Close(f);
   For i := 1 To Spt -1 Do
   	For j := Spt Downto i + 1 Do
      	If a[j] < a[j-1] Then
         	Begin
            	So := a[j];
               a[j] := a[j-1];
               a[j-1] := So;
            End;
   Writeln;
   Writeln('Sau khi sap xep: ');
   For i := 1 To 10 Do
   	Write(a[i]:6);
   Writeln;
   Write(' Bam <Enter>... ');
   Readln
End.
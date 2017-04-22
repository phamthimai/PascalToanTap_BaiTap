Program Chay_Chu;
Uses Crt;
Var
	St : String;
   n,i,j : Integer;
Begin
	ClrScr;
   Write('Nhap mot chuoi ky tu: ');
   Readln(St);
   ClrScr;
   n := 40-(Length(St) Div 2);
   For j := 1 To Length(St) Do
   	For i := 80 DownTo n+j Do
      	Begin
         	GotoXY(i,12);
            Write(St[j]);
            ClrEoL;
            Sound(400+j*200);
            Delay(30);
            Nosound;
         End;
   Readln;
End.
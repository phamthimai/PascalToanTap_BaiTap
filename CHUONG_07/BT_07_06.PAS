Program Am_thanh;
Uses Crt;
CONST
	Notdon=8*58;
   Notdoi=Notdon Div 2;
TYPE
	Notnhac=(c,cf,d,df,e,f,ff,g,gf,a,af,b);
Var
	Kyam:Notnhac;
   (*----------------------*)
   PROCEDURE Bannhac(Kyam:Notnhac;Caodo,Truongdo:Integer);
   Var
   	Tanso:Real;
      i:Integer;
   Begin
   	Tanso:=32.625;
      For i:=1 To Caodo Do
      	Tanso:=Tanso * 2;
      For i:=1 To Ord(Kyam) Do
      	Tanso:=Tanso * 1.05946;
      If Truongdo <> 0 Then
      	Begin
         	Sound(Round(Tanso));
            Delay(Truongdo);
            NoSound
         End
      Else
      	Sound(Round(Tanso))
   End;
   (*----------------------*)
BEGIN
	Bannhac(c,4,Notdon);
   Bannhac(f,4,Notdon);
   Bannhac(g,4,Notdon);
   Bannhac(a,4,Notdon);
   Bannhac(a,4,Notdon);
END.
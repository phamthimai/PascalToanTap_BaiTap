Program Doi_he_so;
Var
	Ky_so:String;
(*------------------*)
	FUNCTION Doiso(x:String):Integer;
   Var
   	j,tong,nhan,so:Integer;
      tam:Char;
   Begin
   	tong:=0;
      nhan:=1;
      For j:= length(x) Downto 1 Do
      	Begin
         	tam:=x[j];
            If Ord(tam)= 32 Then
            	tam:='0';
            If tam in['0'..'9','A'..'F'] Then   {Toan tu in}
            	Begin
               	so:=Ord(tam) - 48;
                  If so > 9 Then
                  	so:=so-7;
                  tong:=tong + so*nhan;
               End
            Else
            	Begin
               	Doiso:=0;
                  Exit;
               End;
            nhan:=nhan*16
         End;
      Doiso:=tong;
   End;
(*------------------*)
BEGIN
	Writeln('DOI SO HE 16 SANG HE 10');
   Writeln('      Su dung ham');
   Writeln('------------------------');
   Repeat
   	Write('Nhap ky so he 16 (go kk de dung): ');
      Readln(ky_so);
      Writeln;
      Writeln('+Doi sang he 10 la = ',Doiso(ky_so));
      Writeln;
   Until ky_so='kk';
END.
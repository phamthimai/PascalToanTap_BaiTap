Program Doi_So_Ra_Chu;
Var
	Tiep:Char;
   Chuoitk,Chuoikq:String;
   So:0..999;
   Tram,Chuc,Donvi:0..9;
Begin
	Tiep:='C';
   While UpCase(Tiep)='C' Do
   	Begin
      	{$R+}
         Chuoitk:='MOT HAI BA  BON NAM SAU BAY TAM CHIN';
			Write('-Nhap so can doi: ');
			Readln(so);
			If So = 0 Then
				Writeln('So khong')
			Else
				Begin
            	Tram:=So Div 100;
               Chuc:=(So-Tram * 100) Div 10;
               Donvi:= So Mod 10;
               Chuoikq:=' ';
               If (Donvi > 0) And (Donvi <> 5) Then
               	Chuoikq :=Chuoikq + Copy(Chuoitk,4* Donvi -3,4);
               If (Donvi = 5) And (Chuc = 0) Then
               	Chuoikq :=Chuoikq + ' NAM';
               If (Donvi = 5) And (Chuc > 0) Then
               	Chuoikq := Copy(Chuoitk,4 * Chuc-3,4)+' LAM';
               If (Donvi = 5) And (Chuc = 1) Then
	              	Chuoikq := ' LAM';
               If Chuc = 1 Then
               	Chuoikq:='MUOI'+chuoikq;
               If (Chuc > 1) And (Donvi = 0) Then
                  Chuoikq:=Copy(Chuoitk,4 * Chuc-3,4)+' MUOI ';
               If (Chuc > 1) And (Donvi = 1) Then
               	Chuoikq:=Copy(Chuoitk,4 * Chuc-3,4)+' MUOI '+Chuoikq;
               If (Chuc > 1) And (Donvi > 1) And (Donvi <>5) Then
               	Chuoikq:=Copy(Chuoitk,4 * Chuc-3,4)+' MUOI '+Chuoikq;
               If (Tram > 0) And (Chuc=0) And (Donvi=0) Then
               	Chuoikq:=Copy(Chuoitk,4*Tram-3,4)+' TRAM ';
               If (Tram > 0) And (Chuc = 0) And (Donvi > 0) Then
               	Chuoikq := Copy(Chuoitk,4*Tram-3,4)+' TRAM LINH '+ Copy(Chuoitk,4*Donvi-3,4);
               If (Tram > 0) And (Chuc = 1) And (Donvi = 0) Then
               	Chuoikq := Copy(Chuoitk,4*Tram-3,4)+ 'TRAM MUOI';
               If (Tram > 0) And (Chuc >= 2) And (Donvi = 0) Then
               	Chuoikq := Copy(Chuoitk,4*Tram-3,4)+' TRAM '+ Copy(Chuoitk,4*Chuc -3,4) +' MUOI';
               If (Tram > 0) And (Chuc <> 0) And (Donvi > 0) Then
               	Chuoikq := Copy(Chuoitk,4*Tram-3,4)+' TRAM '+ Copy(Chuoitk,4*Chuc -3,4) +' MUOI '+
						Copy(Chuoitk,4*Donvi-3,4);
               If (Tram > 0) And (Chuc <> 0) And (Donvi = 5) Then
               	Chuoikq := Copy(Chuoitk,4*Tram-3,4)+' TRAM '+ Copy(Chuoitk,4*Chuc -3,4) +' MUOI LAM';
               Write('-Viet bang chu la: ',Chuoikq);
			End;
         Writeln;
         Write('+Tiep tuc nua khong (C/K) ');
         Readln(Tiep);
      End;
End.
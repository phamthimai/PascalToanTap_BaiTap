Program Dem_Tu;
{$V-}
Var
St:String;
Function Sochu(Dong:String):Integer;
Var
	dem,i:Integer;
Begin
	Dem:=0;
	i:=1;
   Repeat
   	While ((UpCase(Dong[i]) < 'A') Or (UpCase(Dong[i]) > 'Z'))
   		And (I <=Length(Dong)) Do
   		i:=i+1;
      If i <= Length(Dong) Then
      	Dem:=Dem + 1;
   	While ((UpCase(Dong[i]) >= 'A') And (UpCase(Dong[i]) <= 'Z'))
   		And (I <=Length(Dong)) Do
      i:=i+1;
   Until i > Length(Dong);
   Sochu:=Dem;
End;
{---------------------------}
BEGIN
	Write('-Nhap mot cau ca dao tuc ngu: ');
   Readln(St);
   Writeln('-Cau nay co: ',Sochu(St),' tu');
   Readln
END.
{$V-}
Var
w,St:String;
Procedure TachTu(Var Td:String; Dong:String);
Var
	i:Integer;
Begin
	i:=1;
   Td:=' ';
   While ((UpCase(Dong[i]) < 'A') Or (UpCase(Dong[i]) > 'Z'))
   		And (I <=Length(Dong)) Do
   	i:=i+1;
   While ((UpCase(Dong[i]) >= 'A') And (UpCase(Dong[i]) <= 'Z'))
   		And (I <=Length(Dong)) Do
      Begin
      	Td:=Td+Dong[i];
   		i:=i+1;
      End;
End;
{---------------------------}
BEGIN
	Write('-Nhap mot dong: ');
   Readln(St);
   TachTu(W,St);
   Write(W);
   Readln
END.
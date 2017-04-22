Program SX_Nhi_Phan;
	Uses Crt;
   Const
   	Pt=240;
   Type
   	Mang=Array[1..Pt] Of Integer;
   Var
      a:Mang;
      n:Integer;
   {---------------------------------}
   Procedure Sort(Var a: Mang; n:Integer);
   	Var
      	k,j,dau,cuoi,giua,tam:Integer;
   Begin
   	For k:=2 To n Do
      	Begin
         	tam:=a[k];
            cuoi:=1;
            dau:=k-1;
            While cuoi <= dau Do
            	Begin
               	giua:=(dau+cuoi) Div 2;
                  If tam < a[giua] Then
                  	dau:=giua-1
                  Else
                  	cuoi:=giua+1;
               End;
            For j:=k-1 Downto cuoi Do
            	a[j+1]:=a[j];
            a[cuoi]:=tam
         End
   End;
  {---------------------------------}
BEGIN
	ClrScr;
   Randomize;
   For n:=1 To Pt Do
   	a[n]:=Random(1000);
   Sort(a,Pt);
   For n:=1 To Pt Do
   	Write(' ',a[n]:6,' ');
   Readln
END.
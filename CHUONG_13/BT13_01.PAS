Program Dong;
Uses Crt;
CONST
	Max = 100;
TYPE
	Str = String[255];
   Mang  = Array[1..Max] Of Str;
VAR
	Cau,Cau1,Cu,Moi : Str;
   T : Mang;
   i,SoT,Chon : Integer;
{---------------------------------------}
	Procedure Tach(Var S : Str; Var T : Mang; Var SoT : Integer);
   Var
   	i,j,k,l : Integer;
	Begin
   	k := 1;
      i := 1;
      l := Length(S);
      While ( i <= l) Do
      	Begin
         	While (S[i] = ' ') And (i <= L) Do
            	i := I +1;
            j := 1;
            While (S[i] <> ' ') And (i <= l) Do
            	Begin
               	T[k][j] := S[i];
                  j := j +1;
                  i := i +1;
               End;
               T[k][0] := Chr(j-1);
               k := k + 1;
         End;
         SoT := k - 1;
	End;
{---------------------------------------}
	Procedure Nen(Var S : Str);
   Var
   	i,j,l,z,xoa : Integer;
   Begin
   	i := 1;
      j := 1;
      l := Length(S);
      Xoa := 0;
      While i <= l Do
      	Begin
         	z := i;
            While (S[i] = ' ') And ( i <= l) Do
            	i := i + 1;
            Xoa := Xoa +i - z;
            While (S[i] <>' ') And ( i <= l ) Do
            	Begin
               	S[j] := S[i];
                  i := i + 1;
                  j := j + 1;
               End;
         End;
         S[0] := Chr(l - Xoa);
   End;
{---------------------------------------}
	Procedure Nen2(Var S : Str);
   Var
   	i,j,l,z : Integer;
   Begin
   	i := 1;
      l := Length(S);
      While i <= l Do
      	Begin
            While (S[i] = ' ') And ( i <= l) Do
            	i := i + 1;
            z := i;
            While (S[i] =' ') And ( i <= l ) Do
            	i := i + 1;
            Delete(S,z,i-z);
            i := z;
          End;
   End;

{---------------------------------------}
   Procedure Thay(Var S : Str; Sold, Snew : Str);
   Var
   	Lo,Ln,LDu,p : Integer;
      St,Sdu : Str;
   Begin
   	Lo := Length(Sold);
      Ln := Length(Snew);
      St :=' ';
      Sdu := S;
      P := Pos(Sold,Sdu);
      While P <> 0 Do
      	Begin
         	Ldu :=Length(Sdu);
   			St := St + Copy(Sdu,1,P-1) + Snew;
      		Delete(Sdu,1,P-1+Lo);
      		P := Pos(Sold, Sdu);
   		End;
   	S := St + Sdu;
   End;
{---------------------------------------}
BEGIN
	ClrScr;
	Write('Nhap Cau : ');
   Readln(Cau);
   While Cau <> ' ' do
   	Begin
      	Writeln('	1.Tach cau');
         Writeln('	2.Nen cau');
         Writeln('	3.Thay the');
         Writeln('	0.Ket thuc');
         Writeln;
         Write(' Chon : ');
         Readln(Chon);
         Case Chon Of
         	1 : Begin
            		Tach(Cau,T, SoT);
                  For i := 1 To SoT Do
                  	Writeln(T[i]);
            	 End;
            2 : Begin
            		Cau1 := Cau;
                  Nen(Cau1);
                  Writeln(Cau1);
					 End;
            3 : Begin
            		Cau1 :=Cau;
                  Repeat
                  	Write('+Muon thay: ');
                     Readln(Cu);
                  Until Cu <> ' ';
                  Write('+ Bang : ');
                  Readln(Moi);
                  Thay(Cau1,Cu,Moi);
                  Writeln(Cau1);
            	 End;
            0 : Exit;
         End;
      End;
END.
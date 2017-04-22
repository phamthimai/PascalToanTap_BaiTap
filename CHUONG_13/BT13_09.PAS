Program Loai_bo;
Uses Crt;
TYPE
	Mang = array[1..100] Of Integer;
VAR
	i,Na,Nb,x : Integer;
   a: mang;
{--------------------------------------}
	Procedure LoaiBo(x : Integer; Var a:mang; Var Na : Integer);
   Var
   	i,j : Integer;
   Begin
   	i := 1;
      While i <= Na Do
      	If (a[i] <> x) Then
         	i := i + 1
         Else
         	Begin
            	For j := i To Na - 1 Do
               	a[j] := a[j+1];
               Na := Na - 1;
            End;
   End;
{--------------------------------------}
Begin
	ClrScr;
	Writeln('             XOA TRI X TRONG  DANH SACH');
   Writeln('             --------------------------');
   Writeln;
   Write('-So phan tu: ');
   Readln(Na);
   Nb := Na;
   For i := 1 To Na Do
   	Begin
      	Write('-Phan tu thu: ',i:2,' = ');
         Readln(a[i]);
      End;
   Writeln;
   Write('+Phan tu can loai bo: ');
   Readln(x);
   Loaibo(x,a,Na);
   If Na = Nb Then
   	Writeln('Khong tim thay')
   Else
   	Writeln('Da loai bo');
   Writeln;
   Writeln('DANH SACH CON LAI');
   Writeln('-----------------');
   Writeln;
   For i := 1 To Na Do
   	Write(a[i],' ');
   Writeln;
   Write('     Bam <Enter> . . . ');
   Readln;
End.
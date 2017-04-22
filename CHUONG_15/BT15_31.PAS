Program Xu_ly_dong;
Var
	f1,f2 : Text;
   Filename : String[12];
   lmax : Integer;
   Tam,st,dong : String;
{--------------------------------------}
	Procedure Catdong(Var st,dong:String;lmax :Integer);
   Var
   	i : Integer;
   Begin
   	i := lmax;
      While st[i] <> ' ' Do
      	i:= i-1;
         Dong := copy(st,1,i-1);
         Delete(St,1,i);
   End;
{--------------------------------------}
   Procedure Lamday(Var dong: String;lmax : Integer);
   Var
   	i,j : Integer;
   Begin
   	i := lmax - length(dong);
      While  i <> 0 Do
      	Begin
         	j := Length(dong);
            While (j > 1) And (i <> 0) Do
            	If (dong[j]=' ') And (dong[j-1] <> ' ') Then
               	Begin
                  	Insert(' ',dong,j);
                     j :=j-1;
                     i := i-1;
                  End
               Else
               	j := j-1;
         End;
   End;
{--------------------------------------}
BEGIN
	Write('-Ten tap tin: ');
   Readln(Filename);
   Write('-Chieu dai cua dong: ');
   Readln(lmax);
   Assign(f1,filename);
   Reset(f1);
   Assign(f2,'new.txt');
   Rewrite(f2);
   St:=' ';
   While NOt EOF(f1) Do
   	Begin
      	Readln(f1,tam);
         St := St + Tam + ' ';
         While length(St) >= lmax Do
         	Begin
            	Catdong(St,dong,lmax);
               Lamday(dong,lmax);
               Writeln(f2,dong);
            End;
      End;
   Writeln(f2,St);
   Writeln;
   Writeln('Da thuc hien xong, bam <Enter>... ');
   Readln;
   reset(f2);
   While Not EOF(f2) Do
   	Begin
      	Readln(f2,dong);
         Writeln(dong);
      End;
	Writeln;
   Write('	Xem xong bam <Enter>... ');
   Readln;
   Close(f1);
   Close(f2);
END.

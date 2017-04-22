Program Ma_hoa;
	Var
   	St:String;
      k:Integer;
      i,n:Integer;
Begin
	Writeln('CHUONG TRINH MA HOA');
   Writeln('   -----------');
   Write('-Nhap chuoi: ');
   Readln(St);
   Write('-Nhap ma so k: ');
   Readln(k);
   k:=k Mod 26;
   For i:= 1 To Length(St) Do
   	Begin
      	n:=Ord(St[i]);
         If (n >=97) And (n<=122) then
         	Begin
            	n:=n+k;
               If n > 122 Then
               	n:=(n Mod 122) + 96;
            End;
         St[i]:=Chr(n);
      End;
   Writeln;
   Writeln('+Sau khi ma hoa: ',St);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
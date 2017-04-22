Program Tim_Xoa;
	Var
   	St,St1:String;
      Ch:Char;
      i,l,l1:Byte;

Begin
	Writeln('TIM VA XOA CAC KY TU TRUNG NHAU TRONG CHUOI');
   Writeln('         -----------------');
   Writeln;
   Write('-Nhap mot chuoi: ');
   Readln(St);
   St1:=St;
   i:=1;
   l:=Length(St);
   While i <= l Do
   	Begin
      	i:=i+1;
         If St[i]=St[i - 1] Then
         	Begin
            	Writeln('+Ky tu thu: ',i:2,' la: ',St[i],' bi trung lap');
               Write('Ban co muon xoa ky tu nay khong (c/k)');
               Readln(Ch);
               If UpCase(Ch)='C' Then
               	Begin
               		Delete(St,i,1);
                  	i:= i - 1;
                  End;
            End;
      End;
   l1:=Length(St);
   Writeln;
   Writeln('+Chuoi ban dau : ',St1,' co: ',l:2,' ky tu');
   Writeln('       Sau khi xoa ky tu trung nhau');
	Writeln(' Chuoi con lai: ',St,' gom: ',l1:2,' ky tu');
   Writeln;
   Writeln('      Bam phim <Enter> de ket thuc');
   Readln
End.
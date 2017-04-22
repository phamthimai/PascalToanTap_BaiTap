Program Du_Doan_Bong_Da;
Type
	Doi = RECORD
   	Diem,hlv,tm,hv,ct,sb : Real;
      Ten : String[24];
      Hang : Integer;
      End;
   Filedb = file Of Doi;
   Mang = Array[1..40] Of Doi;
Var
	f : Filedb;
   i,j,n : Integer;
   a : Mang;
   t : Doi;
   q : Boolean;
Begin
	i := 1;
   q := True;
   While q Do
   	With a[i] Do
      	Begin
         	Write('-Ten doi (bam <Enter> de ngung): ');
            Readln(Ten);
            If Ten = '' Then
            	q := False
            Else
            	Begin
               	Repeat
                  	Write('=Diem huan luyen vien: ');
                     Readln(hlv);
                  Until hlv <=30;
                  Repeat
                  	Write('=Diem thu mon: ');
                     Readln(tm);
                  Until tm <= 15;
                  Repeat
                  	Write('=Diem hau ve: ');
                     Readln(hv);
                  Until hv <= 30;
                  Repeat
                  	Write('=Diem cac cau thu khac: ');
                     Readln(ct);
                  Until ct <= 50;
                  Repeat
                  	Write('=Diem thuan loi san bai: ');
                     Readln(sb);
                  Until sb <= 20;
                  Diem := hlv + hv + tm + ct + sb;
                  i := i + 1;
               End;
         End;
      n := i - 1;
      For i := 1 To N - 1 Do
      	For j := 1 To N - i Do
         	If a[j].Diem < a[j+1].Diem then
            	Begin
               	t :=a[j];
                  a[j] := a[j+1];
                  a[j+1] := t;
               End;
      Assign(f,'diemdb.dat');
      Rewrite(f);
      For i := 1 to N Do
      	Begin
         	If (i > 1) And (a[i].Diem = a[i-1].Diem) Then
            	a[i].Hang := a[i-1].Hang
            Else
            	a[i].Hang := i;
            Write(f,a[i]);
         End;
      Close(f);
End.
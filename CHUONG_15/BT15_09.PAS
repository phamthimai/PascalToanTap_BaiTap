Program Doc_Ghi_Tap_Tin;
Var
	f1,f2 : Text;
   Filename : String;
   i : Integer;
   St : String;
Begin
	Writeln('DANH SO DONG TAP TIN');
   Writeln('--------------------');
   Writeln;
   Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Assign(f1,filename);
   Reset(f1);
   Assign(f2,'Newfile.txt');
   Rewrite(f2);
   i := 0;
   While Not EOF(f1) Do
   	Begin
      	i := i + 1;
         Readln(f1,st);
         Writeln(f2,i,' ',St);
      End;
   Close(f1);
   Close(f2);
   Writeln;
   Writeln('Da danh so dong va ghi vao tap tin NEWFILE.TXT');
   Writeln;
   Write('     Bam <Enter> de xem tap tin NEWFILE.TXT ');
   Readln;
   Assign(f2,'Newfile.txt');
   Reset(f2);
   While Not EOF(f2) Do
   	Begin
      	Readln(f2,st);
         Writeln(St);
      End;
   Close(f2);
   Writeln;
   Write('Xem xong, ban <Enter> ');
   Readln
End.
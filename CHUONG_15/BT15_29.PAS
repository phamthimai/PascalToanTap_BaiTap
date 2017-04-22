Program Xoa_chu_thich;
Var
	Filename : String;
   f,fn : Text;
   Ch : Char;
Begin
	Write('-Ten tap tin Pascal: ');
   Readln(Filename);
   Assign(f,Filename);
   Assign(fn,'new.pas');
   reset(f);
   Rewrite(fn);
   While not EOF(f) Do
   	Begin
      	Read(f,ch);
         If Ch <> '{' Then
         	Write(fn,ch)
         Else
         	Repeat
            	Read(f,ch);
            Until (Ch = '}') Or EOF(f);
      End;
   Close(f);
   Close(fn);
   Writeln;
   Write('Da thuc hien xong, bam <Enter>... ');
   Readln;
End.
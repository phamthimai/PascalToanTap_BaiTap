Program Mo_Tap_Tin;
Label
	NhapTenTapTin;
Var
	F :Text;
   Filename : String;
{--------------------------------------}
	Procedure ThongBao(Str : String);
   Begin
   	Write(Str + ' .Bam <Enter>');
      Readln;
   End;
{--------------------------------------}
BEGIN
	NhapTenTapTin:
   Writeln;
   Write('-Cho biet ten tap tin van ban can mo: ');
   Readln(Filename);
   {$I-}
   Assign(f,Filename);
   Reset(f);
   If IOResult = 0 Then
   	ThongBao('Da mo tap tin: '+ Filename+' ')
   Else
   	Begin
      	Rewrite(f);
         If IOResult = 0 Then
         	ThongBao('Da mo tap tin moi: '+Filename+' ')
         Else
         	Begin
            	ThongBao('Khong the mo tap tin: '+Filename+' ');
               Exit;
            End;
      End;
   Close(f);
END.

Program Tron_Tap_tin;
Uses Crt;
Var
	f1,f2,f3 : File Of Integer;
   So1,So2 : Integer;
   i : Integer;
   Ch : Char;
   ok1,ok2 : Boolean;
{--------------------------------}
	Function Layso1(Var So1 : Integer): Boolean;
   Begin
   	If Not EOF(f1) Then
      	Begin
         	Read(f1,So1);
            LaySo1 := True;
         End
      Else
      	layso1 := False;
   End;
{--------------------------------}
   Function Layso2(Var So2 : Integer): Boolean;
   Begin
   	If Not EOF(f2) Then
      	Begin
         	Read(f2,So2);
            LaySo2 := True;
         End
      Else
      	layso2 := False;
   End;
{--------------------------------}
BEGIN
	Assign(f1,'so1.dat');
   Rewrite(f1);
   ClrScr;
   Writeln('NHAP TAP TIN SO1');
   Writeln('----------------');
   Writeln;
   i := 0;
   Repeat
   	i := i + 1;
      Write('-So thu: ',i:2,' = ');
      Readln(So1);
      Write(f1,so1);
      Write('-Nhap nua ? (c/k) ');
      Readln(Ch);
   Until Upcase(Ch) = 'K';
   Close(f1);
   Assign(f2,'so2.dat');
   Rewrite(f2);
   ClrScr;
   Writeln('NHAP TAP TIN SO2');
   Writeln('----------------');
   Writeln;
   i := 0;
   Repeat
   	i := i + 1;
      Write('-So thu: ',i:2,' = ');
      Readln(So2);
      Write(f2,so2);
      Write('-Nhap nua ? (c/k) ');
      Readln(Ch);
   Until Upcase(Ch) = 'K';
   Close(f2);
   Assign(f3,'so3.dat');
   Rewrite(f3);
   Reset(f1);
   Reset(f2);
   ok1 := Layso1(So1);
   ok2 := Layso2(so2);
   While ok1 Or ok2 Do
   	Begin
      	If ok1 And ok2 Then {co ca 2 tap tin}
         	Begin
            	If So1 < So2 Then
               	Begin
                  	Write(f3,so1);
                     ok1 := layso1(so1);
                  End
               Else
               	Begin
                  	Write(f3,so2);
                     ok2 := Layso2(so2);
                  End;
            End
         Else
         	If ok1 Then   {chi con tap tin so1.dat}
            	Begin
               	Write(f3,so1);
                  ok1 := layso1(so1);
               End
            Else
            	If ok2 Then   {chi con tap tin so2.dat}
               	Begin
                  	Write(f3,so2);
                     ok2 := Layso2(so2);
                  End;
      End;
   Writeln;
   Reset(f3);
   While not EOF(f3) Do
   	Begin
      	Read(f3,i);
         Write(i:6);
      End;
   Close(f1);
   Close(f2);
   Close(f3);
   Writeln;
   Write('Da tron xong, bam <Enter>... ');
   Readln
END.
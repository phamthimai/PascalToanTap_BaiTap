Program Chu_hoa;
	Uses Crt;
   Const
   	a:Array[1..10] Of String[24]=('nguyen trung truc','dinh tien hoang',
      	'nguyen cong tru','le thanh ton','le loi','le lai','tran hung dao',
         'nguyen hue','chu van an','mac dinh chi');
   Var
   	k,j:Byte;
   {-------------------------}
   Procedure ChuHoa(x,y:Byte; a:String);
   	Var
      	k:Byte;
   Begin
   	For k:=1 To length(a) Do
      	If (k=1) Or ((a[k-1]=' ') And (a[k]<>' ')) Then
         	Begin
            	GotoXY(x+k-1,y);
               Write(UpCase(a[k]));
            End;
   End;
Begin
	ClrScr;
   For k:=1 To 10 Do
   	Begin
      	GotoXY(5,k);
         Write(a[k]:-24);
         ChuHoa(5,k,a[k])
      End;
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.
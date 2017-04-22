Program Tim_Chuoi_Ky_Tu;
Var
	Filename : String[12];
   f : Text;
   St : String;
   Ch : Char;
   Ok : Boolean;
   i,solan:Integer;
Begin
	Write('-Ten tap tin: ');
   Readln(Filename);
   Write('-Nhap chuoi ky tu: ');
   Readln(St);
   Assign(f,Filename);
   Reset(f);
   Solan := 0;
   While NOt EOF(f) Do
   	Begin
      	Read(f,Ch);
         If ch = St[1] Then
         	Begin
            	Ok := True;
               i := 1;
               While Not OK And ( i < length(St)) Do
               	Begin
                  	Read(f,Ch);
                     If (Ch <> Chr(10)) And (Ch <> Chr(13)) Then
                     	If Ch = St[1] Then
                        	i := 1
                        Else
                        	Begin
                           	i := i + 1;
                              If (Ch <> St[i]) Then
                              	Ok := False;
                           End;
                  End;
               If Ok Then
               	Solan := Solan + 1;
            End;
      End;
   Write('-Chuoi: ',St,' xuat hien : ',solan,' lan trong tap tin');
   Readln;
   Close(f);
End.
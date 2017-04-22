Program Tu_dien;
TYPE
	Tudien = RECORD
   	Anh,Viet : String;
   End;

VAR
	a: Array[1..5] Of TuDien;
   St : String;
   i : Integer;
   TimDuoc : Boolean;

BEGIN
	For i := 1 To 5 Do
   	Begin
      	Writeln('-Tu thu: ',i);
         Write('	+Nghia tieng Anh  : ');
         Readln(a[i].Anh);
         Write('	+Nghia tieng Viet : ');
         Readln(a[i].Viet);
      End;
   Writeln;
   Write('*Tu tieng Anh can tim: ');
   Readln(St);
   TimDuoc :=False;
   i := 1;
   While (NOT TimDuoc) AND (i <= 5) Do
   	Begin
      	If St = a[i].Anh Then
         	Begin
            	Write('*Nghia tieng Viet    : ',a[i].Viet);
               TimDuoc := True;
            End;
         i := i + 1;
      End;
   If NOT TimDuoc then
   	Writeln('Tu nay khong co trong tu dien');
   Readln
END.

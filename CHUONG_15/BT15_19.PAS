Program Tao_Danh_Sach;
Type
	HocSinh = RECORD
   	Ten : String[7];
      Diem : 0..10;
      End;

   T_pList = ^T_List;
   T_List = RECORD
   	d : HocSinh;
      Next : T_pList;
      End;
Var
	f : File Of Hocsinh;
   First : Pointer;
   Curr, News : T_pList;
{-------------------------------}
	Procedure MoTapTin;
   Var
      Filename : String;
   Begin
   	Write('-Cho biet ten tap tin: ');
      Readln(Filename);
      Assign(f,Filename);
      {$I-}
      Reset(f);

      {$I+}
      If IOResult <> 0 Then
      	Begin
         	Writeln('Khong mo duoc tap tin: ',Filename);
            Halt;
         End;
   End;
{-------------------------------}
	Procedure DocVaoList;
   Begin
   	First := Nil;
      While NOt EOF(f) Do
      	Begin
         	New(News);
            News^.Next := Nil;
            Read(f,News^.d);
            If First = Nil Then
            	First := News
            Else
            	Curr^.Next := News;
            Curr := News;
         End;
      Close(f);
   End;
{-------------------------------}
   Procedure Xem;
   Begin
   	Curr :=First;
      While Curr <> Nil Do
      	Begin
         	Writeln('-Ten: ',Curr^.D.Ten : 6, #32:10,
            	'-Diem : ',Curr^.D.Diem);
            Curr := Curr^.Next;
         End;
   End;
{-------------------------------}
BEGIN
	MoTapTin;
   Writeln;
   DocVaoList;
   Writeln;
   Xem;
   Writeln;
   Write('	Bam <Enter>... ');
   Readln;
END.
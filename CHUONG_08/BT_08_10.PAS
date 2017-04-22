Program Bau_cu;
CONST
    Max=100;
   ucv=5;
   tke:Array[1..5] Of Word =(0,0,0,0,0);
TYPE
    stt=1..ucv;
   phieubau=Set of stt;
Var
    Phieu:Array[1..Max] Of Phieubau;
   n,n1,i:1..Max;
   j:1..ucv;
   Ch:Char;
   Bau:0..5;
Begin
    Writeln('KIEM PHIEU BAU CU CHI DOAN TN');
   Writeln('-----------------------------');
   Write('-Cho biet so nguoi tham gia bau (1..100): ');
   Readln(n);
   {Gan tat ca cac tap hop bang rong}
   FillChar(Phieu, Sizeof(Phieu), #0);
   {Nhap phieu bau cua tat ca cac cu tri}
   For i:=1 To N Do
    Begin
        Write('-Cu tri thu ',i);
         For j:=1 To ucv Do
            Begin
                Write('  +Chon ung cu vien thu ',j,' (C/K) ? ');
               Readln(Ch);
               Ch:=Upcase(Ch);
               If Ch = 'C' Then
                Phieu[i]:=Phieu[i] + [j];
            End;
      End;
   {Kiem tra phieu hop le }
   n1:=n;
   For i:=1 To n Do
    Begin
        Bau:=0;
         For j:=1 To ucv Do
            If j In Phieu[i] Then
                Inc(Bau);
            If Bau <> 3 then
                Begin
                Phieu[i]:=[];
                  Dec(n1);
               End;
      End;
   {Kiem phieu}
    For i:= 1 To n Do
    For j:=1 To ucv Do
        If j IN Phieu[i] Then
            Inc(Tke[j]);
   Writeln;
   Writeln('   KET QUA KIEM PHIEU');
   Writeln('-So phieu hop le: ',n1,' phieu');
   For j:=1 To ucv Do
    Writeln('-So phieu chon ung cu vien thu: ',j,' la ',Tke[j]);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.

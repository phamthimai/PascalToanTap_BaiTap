Program Chu_vi_Dien_tich;
Var
    d,r,p,s:Integer;
   tiep:Char;
   (*------------------*)
   PROCEDURE Chuvi(x,y:Integer);
   Begin
    p:=(x+y)*2;
   End;
  (*------------------*)
   PROCEDURE Dientich(x,y:Integer);
   Begin
    s:=x * y;
   End;
   (*------------------*)
BEGIN
    Repeat
        Writeln('TINH CHU VI, DIEN TICH HINH CHU NHAT');
    Writeln('           Su dung thu tuc');
    Writeln('------------------------------------');
    Write('-Nhap chieu rong: ');
    Readln(r);
    Write('-Nhap chieu dai : ');
    Readln(d);
      Chuvi(r,d);
      Dientich(r,d);
    Writeln;
    Writeln('+Chu vi hinh chu nhat= ',p);
    Writeln('+Dien tich hinh chu nhat= ',s);
    Writeln;
    Write('  Co thuc hien tiep khong ? (c/k) ');
    Readln(tiep);
   Until (tiep='k') Or (tiep='K');
END.
Program Pignet;
Var
	Ten:String;
   Tuoi:Integer;
   lon,nho,tb,tl,cao,pig:Real;
Begin
	Writeln('CHUONG TRINH TINH PIGNET');
   Writeln('------------------------');
   Write('-Cho biet ho ten : ');
   Readln(ten);
   Write('-Cho biet tuoi   : ');
   Readln(tuoi);
   Write('-Cho biet chieu cao : ');
   Readln(cao);
   Write('-Cho biet trong luong : ');
   Readln(tl);
   Write('-So do vong nguc luc hit vao = ');
   Readln(lon);
   Write('-So do vong nguc luc tho ra  = ');
   Readln(nho);
   tb := 0.5 * (lon-nho);
   pig := cao - (tb + tl);
   Writeln;
   Write('+Ong (Ba) : ',ten:24);
   Writeln(' , ',tuoi,' tuoi');
   Writeln('+Co so do Pignet = ',pig:6:2);
   Readln
End.
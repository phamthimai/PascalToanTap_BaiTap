Program Cac_phep_toan;
Var
	a,b,c,d,e,x,y,g,h,i:Integer;
Begin
	Writeln('CAC PHEP TOAN');
   Writeln('-------------');
   Writeln;
   a:=124;
   b:=12;
   Writeln(a:3,' DIV ',b:2,' = ',a DIV b);
   Writeln(a:3,' MOD ',b:2,' = ',a MOD b);
   c:=12;
   d:=22;
   Writeln(c:2,' AND ',d:2,' = ',c AND d);
   Writeln(c:2,' OR ',d:2,' = ',c OR d);
   Writeln(c:2,' XOR ',d:2,' = ',c XOR d);
   x:=2;
   g:=x Shl 7;
   Writeln('g = ',x:2,' Shl 7 = ',g);
   x:=256;
   h:=x Shr 7;
   Writeln('h = ',x:2,' Shr 7 = ',h);
   i:=g+h;
   Writeln('i = g + h = ',i);
   Writeln('Lo(i) = ',Lo(i));
   Writeln('Hi(i) = ',Hi(i));
   Writeln('Swap(i) = ',Swap(i));
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
End.
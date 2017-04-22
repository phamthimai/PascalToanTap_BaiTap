Program One_Two_Three;
Var
	a,b:Char;
Begin
	Writeln('TRO CHOI ONE TWO THREE');
   Writeln(' Keo (k), Bua (b), Giay (g)');
   Writeln('---------------------------');
   Write('-Ban A chon: ');
   Readln(a);
   Write('-Ban B chon: ');
   Readln(b);
   Case Upcase(a) Of
   	'K':	Case Upcase(b) Of
      			'K'	:	Begin
               				Writeln('+Ban A chon Keo');
                           Writeln('+Ban B cung chon Keo');
                           Writeln('+Keo gap Kep, hoa nhau');
               			End;
               'B'	:	Begin
               				Writeln('+Ban A chon Keo');
                           Writeln('+Ban B chon Bua');
                           Writeln('+Bua dap Keo, B thang');
               			End;
               'G'	:	Begin
               				Writeln('+Ban A chon Keo');
                           Writeln('+Ban B chon Giay');
                           Writeln('+Keo cat Giay, A thang');
               			End;
      		End;
      'B':	Case Upcase(b) Of
            	'K'	:	Begin
               				Writeln('+Ban A chon Bua');
                           Writeln('+Ban B chon Keo');
                           Writeln('+Bua dap Keo, A thang');
               			End;
               'B'	:	Begin
               				Writeln('+Ban A chon Bua');
                           Writeln('+Ban B cung chon Bua');
                           Writeln('+Bua gap Bua, hoa nhau');
               			End;
               'G'	:	Begin
               				Writeln('+Ban A chon Bua');
                           Writeln('+Ban B chon Giay');
                           Writeln('+Giay boc Bua, B thang');
               			End;
      		End;
      'G':	Case Upcase(b) Of
            	'K'	:	Begin
               				Writeln('+Ban A chon Giay');
                           Writeln('+Ban B chon Keo');
                           Writeln('+Keo cat Giay, B thang');
               			End;
               'B'	:	Begin
               				Writeln('+Ban A chon Giay');
                           Writeln('+Ban B chon Bua');
                           Writeln('+Giay boc Bua, A thang');
               			End;
               'G'	:	Begin
               				Writeln('+Ban A chon Giay');
                           Writeln('+Ban B cung chon Giay');
                           Writeln('+Giay gap Giay, hoa nhau');
               			End;
      		End;
   End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
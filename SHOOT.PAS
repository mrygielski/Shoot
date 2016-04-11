program xxx;

uses Crt,Graph;

var st,tr,x,y,stx,p,stp,sc,hi,nab,a,b,zycie,zycie2 : integer;
    ch : char;
    s,n,z : string;
    f : file of integer;
    znak:char;
begin
     Write('œadowanie programu...');
     Write('Shoot');
     Delay(1500);
     Assign(f,'zapis.dat');
     Reset(f);
     Read(f,hi);
     Close(f);
     InitGraph(st,tr,'');
     SetColor(14);
SetTextStyle(BkSlashFill,0,2);
OutTextXY(220,450,'Shoot by Micha’ Rygielski');
SetColor(white);
Line(0,440,3000,440);
setcolor(7);
line(0,10,3000,10);
SetColor(7);
line(0,9,3000,9);
line(0,8,3000,8);
line(0,7,3000,7);
line(0,6,3000,6);
line(0,5,3000,5);
line(0,4,3000,4);
line(0,3,3000,3);
line(0,2,3000,2);
line(0,1,3000,1);
SetColor(14);
OuttextXY(195,10,'³');
OuttextXY(195,15,'³');
OuttextXY(195,20,'³');
OuttextXY(195,25,'³');
OuttextXY(195,30,'³');
OuttextXY(195,35,'³');
OuttextXY(195,40,'³');
OuttextXY(195,45,'³');
OuttextXY(195,50,'³');
OuttextXY(195,55,'³');
OuttextXY(195,60,'³');
OuttextXY(195,65,'³');
OuttextXY(195,70,'³');
OuttextXY(195,75,'³');
OuttextXY(195,80,'³');
OuttextXY(195,85,'³');
OuttextXY(195,90,'³');
OuttextXY(195,93,'³');
For st := 1 to 100 do
Begin
SetColor(9);
Circle(200,200,st);
Delay(0);
SetColor(9);
Circle(200,201,st);
end;
For st := 1 to 70 do
Begin
SetColor(2);
Circle(200,200,st);
Delay(0);
SetColor(2);
Circle(200,201,st);
end;
For st := 1 to 50 do
Begin
SetColor(6);
Circle(200,200,st);
Delay(0);
SetColor(6);
Circle(200,201,st);
end;
For st := 1 to 30 do
Begin
SetColor(4);
Circle(200,200,st);
Delay(0);
SetColor(4);
Circle(200,201,st);
end;

For st :=410  downTo 200 Do
Begin
SetColor(7);
Sound(674);
Delay(0);
NoSound;

Circle(st,st,3);
Circle(st,st,2);
Circle(st,st,1);
Delay(5);
end;
For st :=410  downTo 280 Do
Begin
SetColor(0);
Circle(st,st,3);
Circle(st,st,2);
Circle(st,st,1);
Delay(0);
end;
SetColor(4);
SetTextStyle(CopyPut,0,8);
OutTextXY(200,100,'SHOOT');
Sound(674);
Delay(100);
NoSound;
SetColor(6);
SetTextStyle(CopyPut,0,8);
OutTextXY(220,120,'SHOOT');
Sound(586);
Delay(100);
NoSound;
SetColor(12);
SetTextStyle(CopyPut,0,8);
OutTextXY(240,140,'SHOOT');
Sound(548);
Delay(1000);
NoSound;
     cleardevice;
     Setcolor(4);
     SettextStyle(WideDotFill,0,4);
     OuttextXY(170,200,'Przygotuj si©');
     Delay(2000);
     ClearDevice;
     SetTextStyle(CopyPut,0,1);
     x:=320; stx:=5; p:=380; nab:=31;
     sc:=0;
     nab:=nab-1;
     p:=380;
     stp:=-10;
     zycie2:=100;
     zycie:=zycie2-3;
     Str(hi,s);
     setcolor(9);OutTextXY(420,10,'Rekord: '+s);
     sc:=0;
     setcolor(9);OuttextXY(570,10,'Exit-Esc');
     setcolor(4);
     line(0,28,3000,28);
     line(0,378,3000,378);
     setcolor(2);
     OuttextXY(300,p,'ÚÄ¿');
     OuttextXY(300,385,'³ ³');
     OuttextXY(300,390,'ÀÄÙ');
     setcolor(7);
     OuttextXY(300,385,' o');
     setcolor(2);
     OuttextXY(287,385,' À');
     OuttextXY(320,385,'Ù');
repeat
       SettextStyle(copyput,0,1);
       Str(nab,n);
       Str(zycie,z);
       Str(sc,s);
       SetColor(3);setColor(9); circle(x,50,20);setColor(2); Circle(x,50,15);setColor(6);Circle(x,50,10); setcolor(4);
       Circle(x,50,5);setcolor(14);
       OuttextXY(320,p,'³');
       setcolor(9);OutTextXY(10,10,'Punkty:'+s);Outtextxy(130,10,'Naboje: '+n);
       delay(7);
       SetColor(0); circle(x,50,20);setColor(0); Circle(x,50,15);setColor(0); Circle(x,50,10);setColor(0); Circle(x,50,5);
       setcolor(0);OuttextXY(320,p,'³');
       setcolor(0);OutTextXY(10,10,'Punkty:'+s);Outtextxy(130,10,'Naboje: '+n);
       x:=x+stx;
       p:=p+stp;
       If (p in[30..70]) and (x>300) and (x<340) then sc:=sc+100;zycie:=zycie-Random(0);
       If (x>620) or (x<20) then stx:=-stx;
       If (zycie in [0..1]) then Exit;
       If p=0 then begin
         stp:=0;
         p:=380;
       end;
       If keypressed then
       begin
         ch:=readkey;
         If ch=' ' then begin
                             nab:=nab-1;
                             p:=380;
                             stp:=-10;
       end;
       end;
     until (ch in[#27]) or (nab=0);
     cleardevice;
  SetColor(30);
       Settextstyle(Copyput,0,1);
       OuttextXY(150,200,'Prykro mi, ale straciˆe˜ wszystkie naboje !!! ');
       Delay(2000);

     CloseGraph;
     If sc>hi then begin
       Rewrite(f);
       Write(f,sc);
       Close(f);
  end;
  textcolor(random(400));
  Writeln('Koniec.');
  end.


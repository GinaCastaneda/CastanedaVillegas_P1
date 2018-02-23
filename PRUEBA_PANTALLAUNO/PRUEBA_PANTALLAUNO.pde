PFont font,font1,font3;
int x,y,j1,j2,p1,p2;
int value=0, dibujo;
float v1,v2, a1, a2;
int t=0;

class personaje
{
  String nombre;
  int display;
  int vida;
  
  personaje (String nombre_, int display_, int vida_)
  {
    nombre = nombre_;
    display = display_;
    vida = vida_;
  }
  
 
  void displayUno()
  {
    switch (display)
    {
      case 1: //FANTASMA
      noStroke();  
      fill(225,60,229);
      arc(80,190,60,60,PI,TWO_PI);
      rect(50,190,60,30);
      triangle(50,220,65,220,60,235);
      triangle(65,220,80,220,72,235);
      triangle(80,220,95,220,88,235);
      triangle(95,220,110,220,100,235);

      fill(255,255,255);
      ellipse(95,185,15,15);
      ellipse(68,185,15,15);

      fill(0);
      ellipse(98,185,8,8);
      ellipse(72,185,8,8);
      break;
      
      case 2: //QBERT
      
      noStroke();
      //cuerpo
      fill(255,119,0);
      ellipse (80,190,60,60);
      //trompa
      fill(222,97,0);
      rect (80,190,50,20,10,40,10,40);
      //ojos
      fill (0);
      ellipse (72,180,10,15);
      ellipse (87,180,10,15);
      //piernas y pies
      fill(255,119,0);
      rect (65,216,10,10);
      rect (85,216,10,10);
      fill(222,101,0);
      rect (67,225,5,15);
      rect (67,240,10,5);
      rect (85,225,5,15);
      rect (85,240,10,5);
      break;
      
      case 3: //EXTRATERRESTRE
      noStroke();
      //cuerpo
      fill (0,254,254);
      triangle (70,170,38,230,102,230);
      rect (45,230,10,10);
      rect (85,230,10,10);
      rect (52,240,35,10);
      rect (42,250,10,10);
      rect (87,250,10,10);
      rect (35,240,10,10);
      rect (96,240,10,10);
      rect (25,250,10,10);
      rect (106,250,10,10);
      //ojos
      fill (255,0,0);
      rect (62,200,8,8);
      rect (72,200,8,8);
      break;
      
      case 4: //kaboom
      
      noStroke();
       //cabeza
      fill (255,230,153);
      ellipse (60,190,35,35);
      //antifaz
      fill (0);
      rect (45,183,30,8,2);
      //gorra
      fill (255);
      rect (45,170,30,8);
      //ojos
      fill (255,0,0);
      ellipse (55,188,4,2.5);
      ellipse (65,188,4,2.5);
      //cuerpo
      fill (255);
      rect (45,205,32,60,4);
      //brazos
      fill (255,0,0);
      rect (45,214,6,35);
      rect (70,214,6,35);
      //manos
      rect (45,250,8,8);
      rect (68,250,8,8);
      fill (150,150,150);
      ellipse (60,250,15,15);
      break;
      
      case 5: //arcade
      noStroke();
      //cabeza
      fill (170,170,170);
      rect (55,150,35,35);
      //pantalla
      fill (0);
      rect (58,154,28,28);
      //ojos
      fill (255,0,0);
      triangle (65,160,60,165,70,165);
      triangle (77,160,83,165,72,165);
      //brazos
      noFill();
      stroke(0);
      //primera linea
      noFill();
      stroke (170,170,170);
      //izquierda
      beginShape();
      bezier(73, 185, 230, 320, 180, 135, 80, 300);
      bezier(73, 187, 232, 322, 182, 137, 82, 302);
      //bezier (55,185,10,10,90,90,60,235);
      endShape();
       //enmedio
      beginShape();
      bezier (55,185,10,313,140,328,60,220);
      bezier (57,187,12,315,142,330,62,222);
      endShape();
      //final
      beginShape();
      bezier (65,185,20,300,145,284,70,225);
       bezier (67,187,22,302,147,286,72,227);
      endShape();

      break;
    }
  } 
   
  }

personaje fantasma, qbert, extra, kaboom, arcade;

void setup ()
 {
  size (400,400);
  fantasma = new personaje ("Ghost",1,20);
  qbert = new personaje ("Qbert",2,20);
  extra = new personaje ("Extra",3,20);
  kaboom = new personaje ("Kaboom",4,20);
  arcade = new personaje ("Arcade",5,20);
 }
 
 void draw ()
 { 
   fantasma.displayUno();
   qbert.displayUno();
   extra.displayUno();
   kaboom.displayUno();
   arcade.displayUno();
  
   background (random(255),random(255),random(255));

   if (value==0)
   {
   println (value);
   pantallaUno();
  
     if (mousePressed && (mouseX>70) && (mouseX<70+90) && (mouseY>250) && (mouseY<250+50))
     {
       value=1;
     }
   }
    
    if (value==1)
    {
      println (value);
      pantallaDos();
      
      if (mousePressed && (mouseX>170) && (mouseX<170+70) && (mouseY>310) && (mouseY<310+30))
      {
        value=2;
      }
    }
    
    if (value==2)
    {
     personajes();  
     
     seleccionUno();
     println ("Jugador1,",j1);
     keyPressed();
     println ("Jugador2,",j2);
     
     if (j1!=0 && j2!=0)
     {
       value=3;
       println (value);
     }
    }
    
    if (value==3)
    {
      pantallaCuatro();
      
      if (v1<=0 || v2<=0)
      {
        value=4;
        if (v1>v2) {dibujo=j1; }
        else if (v2>v1) { dibujo=j2;}
      }
    }
    
    if (value==4)
    {
      pantallaCinco();
       if (mousePressed && (mouseX>250) && (mouseX<250+90) && (mouseY>200) && (mouseY<200+50))
     {
       pantallaUno();
       value=0;
       j1=0;
       j2=0;
     }
    }
    
 }
 
 
 
 
  void botonUno()
 {
   x=70;
   y=250;
   fill (0,0,255);
   rect (x,y,90,50);
   font1 = loadFont ("bold2.vlw");
   textFont (font1);
   fill (0,0,0);
   text ("JUGAR",95,280);
   
 } 
 
  
 void  botonDos()
 {
   fill (0,0,255);
   rect (230,250,90,50);
   font1 = loadFont ("bold2.vlw");
   textFont (font1);
   fill (0,0,0);
   text ("SALIR",255,280); 
 }
 
 void botonTres()
 {
   fill (0,0,255);
   rect (170,310,70,30);
   font3 = loadFont ("bold3.vlw");
   textFont (font3);
   fill (255);
   text ("Siguiente",180,330);
 } 
 
 void siguiente()
 {
      fill (0,0,0);
      rect(10,10,380,380);
      fill (0,0,255);
      rect (150,180,100,50);
      font3 = loadFont ("bold3.vlw");
      textFont (font3);
      fill (255);
      text ("Siguiente",175,215);
 }
 
 void pantallaUno()
 {
   noStroke();
  //arriba
  fill (#C9C7C7);
  quad (0,0,400,0,350,60,50,60);
  //izquierda
  fill (#AFAFAF);
  quad (50,60,50,350,0,400,0,0);
  //abajo
  fill (#C9C7C7);
  quad (50,350,350,350,400,400,0,400);
  //derecha
  fill (#AFAFAF);
  quad (350,60,350,350,400,400,400,0);
  //pantalla
  fill (random(255),random(255),random(255));
  rect (50,60,300,290);
  fill (0);
  rect (55,65,288,280);
  
  //palancas
  fill (0);
  rect(70,375,20,50);
  fill (#EA112A);
  ellipse (80,360,40,40);
  fill (0);
  rect(130,375,20,50);
  fill (#FFF708);
  ellipse (140,360,40,40);
  fill (0);
  rect(200,390,30,10,2);
  fill (0);
  rect(250,390,30,10,2);
  fill (0);
  rect(300,393,30,20,5);
   
   
   font = loadFont ("bold.vlw");
   textFont (font);
   fill(255,0,0);
   text("DEVUELTA AL ARCADE",100,150);
   font1 = loadFont ("bold2.vlw");
   textFont (font1);
   fill (0,255,0);
   text ("--DA CLICK EN LA OPCION QUE DESEAS--",85,200);
   botonUno();
   botonDos();
   
   if (mousePressed && (mouseX>230) && (mouseX<230+90) && (mouseY>250) && (mouseY<250+50))
     {
       exit();
     }
 }
 

 void pantallaDos()
 { 
   fill (0,0,0);
   rect(10,10,380,380);
   fill (255);
   font1 = loadFont ("bold2.vlw");
   textFont (font1);
   text ("¿YA SABES POR QUE ESTAS AQUI?",100,80);
   text ("---------------------------------------",100,90);
   font3 = loadFont ("bold3.vlw");
   textFont (font3);
   text ("Hace 35 años los estudiantes esperaban a que sonara la campana que daba ",20,110); 
   text ("el final del día escolar para lanzarse al famoso arcade y cambiar sus ",20,120);
   text ("monedas por infinitas partidas de Pac-Man o Space Invaders. Pero justo ",20,130);
   text ("cuando éstas máquinas llegaban a su mejor momento, las pequeñas consolas ",20,140);
   text ("aparecieron. Es hora de que SOFT INDUSTRIES decida que último game ",20,150); 
   text ("se salvará de la terrible descontinuación. Cinco videojuegos ha elegido",20,160); 
   text ("a uno de sus personajes para pelear el derecho a ese lugar.",20,170); 
   text ("Cada elección define nuestras victorias y tú... Estás por elegir a tu campeón", 20,200);
   text ("----------------------------------------------------------------------------------------------------------", 30,210);
   textFont (font1);
   text ("INSTRUCCIONES",155,230);
   textFont (font3);
   text ("Da click sobre la tecla que te corresponde para lanzar un ataque sobre ",18,250); 
   text ("tu oponente (tiene valor aleatorio de 1-8). Recuerda que los ataques son", 18, 260);
   text ("por turno. El primer jugador que acabe con la vida del oponente ganará",18,270);
   fill (255,255,0);
   text ("JUGADOR 1 = B|b    JUGADOR 2 = n | N",95,300);
   botonTres(); 
 }
 
 void personajes()
{
   fill (0,0,0);
   rect(10,10,380,380);
   font1 = loadFont ("bold2.vlw");
   textFont (font1);
   fill(255,0,0);
   text("SELECCIONEN A SU CAMPEON",120,50);
   font3 = loadFont ("bold3.vlw");
   textFont (font3);
   fill(#FFF708);
   text("Jugador 1 de click con el mouse",130,70);
   text("Jugador 2 presione la tecla correspondiente",98,80);
   
   
      //FANTASMA
      pushMatrix();
      translate (42,52);
      scale (0.5,0.5);
      fantasma.displayUno();
      popMatrix();
      fill(255);
      text ("a",75,190);
      
      //QBERT
      pushMatrix();
      translate (148,52);
      scale (0.5,0.5);
      qbert.displayUno();
      popMatrix();
      fill(255);
      text ("s",190,198);
      
      //EXTRATERRESTRE
      pushMatrix();
      translate (265,45);
      scale (0.5,0.5);
      extra.displayUno();
      popMatrix();
      fill(255);
      text ("d",295,200);
      
      //KABOOM
      pushMatrix();
      translate (90,155);
      scale (0.5,0.5);
      kaboom.displayUno();
      popMatrix();
      fill(255);
      text ("f",115,312);
      
      //ARCADE
      pushMatrix();
      translate (230,170);
      scale (0.5,0.5);
      arcade.displayUno();
      popMatrix();
      fill(255);
      text ("g",275,315);
 }

 
 
 void pantallaCuatro()
 {
  noStroke();
   //fondo
   fill (0,176,240);
   rect(10,10,380,380);
   //arbusto
   fill (84,130,53);
   ellipse (60,350,35,30);
   ellipse (95,350,60,45);
   ellipse (130,350,35,30);
   //piso
   fill (163,54,5);
   rect (10,350,380,40); 
   //nubes
   fill (255);
   ellipse (70,60,40,30);
   ellipse (95,60,40,30);
   ellipse (120,60,40,30);
   ellipse (270,40,40,30);
   ellipse (295,40,40,30);
   ellipse (320,40,40,30);
   //tubo
   stroke (0);
   fill (51,204,51);
   rect (295,300,40,50);
   rect (285,280,59,20);
   //marcador
   fill (0);
   rect (60,120,70,30);
   rect (270,120,70,30);
   
   //puntaje
   font3 = loadFont ("bold3.vlw");
   textFont (font3);
   fill (255);
   text ("JUGADOR 1: b || B",55,105);
   text (v1,70,138);
   text ("JUGADOR 2: n || N",267,105);
   text (v2,280,138);
   
   fill (0,0,255);
   rect (310,40,50,15);
   font3 = loadFont ("bold3.vlw");
   textFont (font3);
   fill (255);
   text ("Finalizar",316,52);
   
   //Seleccion de personajes
   
  pushMatrix();
  translate(20,65);
  
  
   switch (j1)
   {
     case 1:
     fantasma.displayUno();
     
     break;
     
     case 2:
     qbert.displayUno();
     break;
     
     case 3:
     extra.displayUno();
     break;
     
     case 4:
     kaboom.displayUno();
     break;
     
     case 5:
     arcade.displayUno();
     break;
     
   }
   popMatrix();
   
   pushMatrix();
   translate(230,65);
  
   switch (j2)
   {
     case 1:
     fantasma.displayUno();
     break;
     
     case 2:
     qbert.displayUno();
     break;
     
     case 3:
     extra.displayUno();
     break;
     
     case 4:
     kaboom.displayUno();
     break;
     
     case 5:
     arcade.displayUno();
     break;
   }
   popMatrix();
   
   
   
   if (mousePressed && (mouseX>310) && (mouseX<310+50) && (mouseY>40) && (mouseY<40+15))
     {
       exit();
     }
   
 }
 
 
 void pantallaCinco()
{
  noStroke();
   //fondo
   fill (0);
   rect(10,10,380,380);
   font = loadFont ("bold.vlw");
   textFont (font);
   fill(255);
   text ("!LA",250,60);
   text ("PARTIDA HA", 240,100);
   text ("TERMINADO¡",248,140);
   
   fill (255);
   rect (50,180,130,180);
   
   //liston
   fill (#FF0329);
   rect (85,65,50,70);
   
   //medalla
   fill (#DEBB0D);
   ellipse (110,55,70,70);
   fill (#FFF708);
   ellipse (110,55,65,65);
   
   
   //listonDos
   fill (#FF0329);
   triangle (85,135,100,135,90,160);
   triangle (100,135,118,135,109,160);
   triangle (118,135,135,135,126,160);
   
   textFont (font1);
   fill (0,0,255);
   text ("GANADOR",80,62);
   
   if (v1<=0)
   {
   fill (#FCE530);
   text ("JUGADOR 2",86,170);
   
   }
   else if (v2<=0)
   {
    fill (#FCE530);
    text ("JUGADOR 1",86,170);
   }
   
   textFont (font1);
   fill (0,255,0);
   rect (250,200,90,50);
   fill (255);
   text ("JUGAR",275,230);
   
   fill (0,255,0);
   rect (250,290,90,50);
   fill (255);
   text ("SALIR",275,320);
   
   pushMatrix();
   translate(25,90);
   
   switch (dibujo)
   {
     case 1:
     fantasma.displayUno();
     
     break;
     
     case 2:
     qbert.displayUno();
     break;
     
     case 3:
     extra.displayUno();
     break;
     
     case 4:
     kaboom.displayUno();
     break;
     
     case 5:
     arcade.displayUno();
     break;
     
   }
   popMatrix();
   
   
   if (mousePressed && (mouseX>250) && (mouseX<250+90) && (mouseY>290) && (mouseY<290+50))
     {
       exit();
     }
  
}

 void seleccionUno()
 {
   
   //FANTASMA
    if (mousePressed && (mouseX>0) && (mouseX<0+133) && (mouseY>133) && (mouseY<=133+90))
    {
      j1=1;
      v1=25;
      a1= random (1,8);
      noFill();
      stroke (#1FF9FF);
      rect (50,125,60,70);
     
    }
   
     
    //QBERT
    else if (mousePressed && (mouseX>133) && (mouseX<133+133) && (mouseY>133) && (mouseY<=133+90))
    {
      j1=2;
      v1=25;
      a1= random (1,8);
      noFill();
      stroke (#1FF9FF);
      rect (160,130,60,72);
    }
    
    //EXTRATERRESTRE 
    else if ( mousePressed && (mouseX>273) && (mouseX<266+120) && (mouseY>133) && (mouseY<=133+90))
    {
      j1=3;
      v1=25;
      a1= random (1,8);
      noFill();
      stroke (#1FF9FF);
      rect (270,130,60,70);
    }
    
    //KABOOM  
    else if (mousePressed && (mouseX>50) && (mouseX<50+90) && (mouseY>150) && (mouseY<150+133))
    {
      j1=4;
      v1=25;
      a1= random (1,8);
      noFill();
      stroke (#1FF9FF);
      rect (93,226,50,83);
    }
    
    //ARCADE
    else if (mousePressed && (mouseX>160) && (mouseX<160+133) && (mouseY>150) && (mouseY<=150+133))
    {
      j1=5;
      v1=25;
      a1= random (1,8);
      noFill();
      stroke (#1FF9FF);
      rect (240,226,62,98);
    }
     
 }
 
 void keyPressed()
 {
   if (value==2)
   {
     switch (key)
     {
       case 'a':
       j2=1;
       v2=25;
       a2= random (1,8);
       break;
       
       case 's':
       j2=2;
       v2=25;
       a2= random (1,8);
       break;
       
       case 'd':
       j2=3;
       v2=25;
       a2= random (1,8);
       break;
       
       case 'f':
       j2=4;
       v2=25;
       a2= random (1,8);
       break;
       
       case 'g':
       j2=5;
       v2=25;
       a2= random (1,8);
       break;
     }
   }
     
     if (t==0 && value==3)
   {
     if (key=='b' || key=='B')
     {
       v2=v2-(a1*0.3);
       println (v2);
       t=1;
     }
   }
     
     if (t==1 && value==3)
     {
       if (key=='n' || key=='N')
     {
       v1=v1-(a2*0.27);
       println (v1);
       t=0;
     }
     }
   
 
 }
 
 
 
 


 
 
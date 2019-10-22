
Bacteria[] pam;
 void setup()   
 {     
    size(500, 500);
    pam = new Bacteria [1000];
    for(int i = 0; i < pam.length; i++){
    	pam [i] = new Bacteria();
    }
 }   
 void draw()   
 {    
    background (0);
    for(int i = 0; i < pam.length; i++){
    pam[i].move();
    pam[i].show();
	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria( )
 	{
 		myX = 100;
 		myY = 100;
 		myColor = color((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
 	}
 	void move()
 	{
 		if(mouseX>myX)
 			myX = myX + (int)(Math.random()*4)-1;
 		else
 			myX = myX + (int)(Math.random()*4)-3;
 		if(mouseY>myY)
 			myY = myY + (int)(Math.random()*4)-1;
 		else
 			myY = myY + (int)(Math.random()*4)-3;
 	}
 	void show()
 	{
 	fill(myColor);
 	noStroke();
 	ellipse(myX, myY, 10, 10);
 	}
 }    
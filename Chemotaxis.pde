Bacteria jim = new Bacteria (50,50);
 void setup()   
 {     
    size(500, 500);
 }   
 void draw()   
 {    
    background (0);
    jim.show();
    jim.move();
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria( int x, int y )
 	{
 		myX = x;
 		myY = y;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*4)-1;
 		myY = myY + (int)(Math.random()*4)-1;
 	}
 	void show()
 	{
 	fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
 	ellipse(myX, myY, 10, 10);
 	}
 }    
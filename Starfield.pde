NormalParticle [] star; //your code here
void setup()
{
	size(600,600);
	star = new NormalParticle[200];
	for (int i=0; i<star.length; i++)
	{
		star[i] = new NormalParticle();
	}
	//your code here
}
void draw()
{
	frameRate(25);
	background(0);
for(int i=0; i<star.length;i++)
{
	star[i].move();
	star[i].show();
}
}
class NormalParticle
{
	double x, y ,angle, speed ;
	int colorR, colorB, colorG;
	NormalParticle()
	{
		x=300;
		y=300;
		angle=(Math.random()*2*Math.PI);
		speed=(Math.random()*15);
		colorR=(int)(Math.random()*250);
		colorG=(int)(Math.random()*250);
		colorB=(int)(Math.random()*250);
	}
	void move()
	{	
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
		angle=angle+0.04;

	}
	void show()
	{
		
		noStroke();
		fill(colorR,colorG,colorB);
		ellipse((float)x,(float)y,5,5);
	}

	//your code here
}
interface Particle
{
	public void show();
	public void move();//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


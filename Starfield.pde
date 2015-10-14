Particle [] star; //your code here
void setup()
{
	size(600,600);
	star = new Particle[200];
	for (int i=0; i<star.length; i++)
	{
		
		
		star[i] = new NormalParticle();
		
	}
	star[0]= new OddballParticle();
	star[1]= new JumboParticle();
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
class NormalParticle implements Particle
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
	public void move()
	{	
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
		angle=angle+0.04;

	}
	public void show()
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
class OddballParticle implements Particle//uses an interface
{
	double x, y ,angle, speed ;
	int colorR, colorB, colorG;
	OddballParticle()
	{
		x=300;
		y=300;
		angle=(Math.random()*2*Math.PI);
		speed=(Math.random()*15);
		colorR=(int)(Math.random()*250);
		colorG=(int)(Math.random()*250);
		colorB=(int)(Math.random()*250);
	}
	public void move()
	{
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
		angle=angle+0.05;
	}
	public void show()
	{
		noStroke();
		fill(colorR,colorG,colorB);
		ellipse((float)x,(float)y,15,15);

	}//your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
	JumboParticle()
	{

	}
	public void sh0ow()
	{
		noStroke();
		fill(colorR,colorG,colorB);
		ellipse((float)x,(float)y,25,25);
	}
	//your code here
}


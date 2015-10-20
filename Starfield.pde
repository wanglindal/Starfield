Particle [] star; //your code here
void setup()
{
	size(600,600);
	star = new Particle[300];
	for (int i=0; i<star.length; i++)
	{
		
		
		star[i] = new NormalParticle();
	}
		
	for(int b=0; b<100;b++)
	{
	star[b]= new OddballParticle();
    }
	
	star[101]= new JumboParticle();
	star[102]= new JumboParticle();
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
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	double x, y ,angle, radiusX, radiusY ;
	int colorR, colorB, colorG;
	OddballParticle()
	{
		x=300;
		y=300;
		angle=(Math.random()*2*Math.PI);
		radiusX=(float)(Math.random()*15)+250;
		radiusY=(float)(Math.random()*15)+50;
		colorR=(int)(Math.random()*250);
		colorG=(int)(Math.random()*250);
		colorB=(int)(Math.random()*250);
	}
	public void move()
	{
		x=300+Math.cos(angle)*radiusX;
		y=300+Math.sin(angle)*radiusY;
		angle=angle+0.05;
	}
	public void show()
	{
		noStroke();
		fill(colorR,colorG,colorB);
		ellipse((float)x,(float)y,15,15);

	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	JumboParticle()
	{

	}
	public void show()
	{
		noStroke();
		fill(colorR,colorG,colorB);
		ellipse((float)x,(float)y,50,50);
	}
	
}


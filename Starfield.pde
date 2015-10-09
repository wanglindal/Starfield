NormalParticle star; //your code here
void setup()
{
	size(500,500);
	star = new NormalParticle();
	//your code here
}
void draw()
{
	frameRate(2);
	background(0);
	star.move();
	star.show();//your code here
}
class NormalParticle
{
	double x, y ,angle, speed ;
	int colors;
	NormalParticle()
	{
		x=300;
		y=300;
		angle=0;
		speed=20;
		colors=20;
	}
	void move()
	{	
		x=x+cos((float)angle)*speed;
		y=y+sin((float)angle)*speed;
		angle++;

	}
	void show()
	{
		ellipse((float)x,(float)y,10,10);
	}

	//your code here
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


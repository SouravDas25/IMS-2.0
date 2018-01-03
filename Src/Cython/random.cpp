#include<stdio.h>
#include<STDLIB.H>
#include<time.h>
long random(int num)
{
	
	long z;
	z = rand()*rand()+rand()*rand();
	return (z % (num+1));
}
int dtoi(double x)
{
	int p = x;
	return p;
}
void randspeed(void)
{
	srand(time(NULL));
}
long randrange(int num)
{
	return random(num);
}





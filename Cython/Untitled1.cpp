#include"random.cpp"
#include<stdio.h>
#include<stdlib.h>



int main()
{
	char digit[5];
	for(int i = 0;i<1000;i++)
	{
		printf("\n%ld",random(100000000));
	}

}

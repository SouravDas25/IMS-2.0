#include<stdio.h>
#include<math.h>
#include<conio.h>

int Bin2Dec(int b)
{
	int c,n=b,decimal=0,i=0,brk = 0;
	for(i=0;n>0;i++)
	{
		c = n%10;
		n = n/10 ;
		if (c<2&&c>=0)
		{
			decimal += pow(2,i)*c ;
		}
		else 
		{
			return 0;
		}
	}
	return decimal;
}



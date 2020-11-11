#include <stdio.h>
#include "myMath.h"

int main(){
	double inp;
	float res;
	printf("Please insert a real number: ");
	scanf("%lf",&inp);

	res = Exponent((int)inp);
	res = add(res,Power(inp,3));
	res = sub(res, 2);
	printf("The value of f(x) = e^x + x^3 - 2 at the point %lg is: %g\n",inp,res);
	
	res = add(mul(Power(inp,2),2),mul(inp,3));
	printf("The value of f(x) = 3x + 2x^2 at the point %lg is: %g\n",inp,res);
	
	res = sub(div(mul(Power(inp,3),4),5),mul(inp,2));
	printf("The value of f(x) = (4x^3)/5-2x at the point %lg is: %g\n",inp,res);
	return 0;
}

#define exp 2.7182

double Exponent(int x){
	double res = exp;
	int i;
	if(x == 0) return 1;
	for(i=1; i<x; i++){
		res *= exp;
	}
	return res;
}

double Power(double x, int y){
	int i;
	double res = x;
	if(y == 0) return 1;
	for(i=1; i<y; i++){
		res *= x;
	}
	return res;
}
	

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

const double pi = 3.141592653589793238462643383279; // I noticed that the third-to-last digit was incorrect, so I fixed it

int main(int argc,char** argv){
	double a = 0.0,b = pi; // Integration limits
	int n = 1048576; // Number of "dx"'s
	double h = (b - a) / n; // Length of "dx"
	double integral;
	int threadcnt = 1;

	double f(double x);

	if(argc > 1){
		threadcnt = atoi(argv[1]);
	}

	#ifdef _OPENMP
		omp_set_num_threads(threadcnt);
		printf("OMP defined, threadcnt - %d\n",threadcnt);
	#else
		printf("OMP not defined");
	#endif

	integral = (f(a) + f(b)) / 2.0;
	int i;

	#pragma omp parallel for private(i) shared (a,n,h,integral)
	for(i = 1;i < n;i++){
		integral += f(a + i * h);
	}

	integral = integral * h;
	printf("With %d trapezoids, our estimate of the integral from \n",n);
	printf("%f to %f is %f\n",a,b,integral);
}

double f(double x){
	return sin(x);
}

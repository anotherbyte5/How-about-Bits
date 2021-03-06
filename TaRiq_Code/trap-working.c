//the answer should be 2.0
#include<math.h>
#include<stdio.h>
#include<stdlib.h>
#include<omp.h>

// Demo for OpenMP computes an integral

const double pi = 3.141592653589793238462643383079;

int main(int argc, char** argv) {
//variables

double a = 0.0, b = pi; //limits of integration
int n = 1048576; //number of subdivisions 2^20
double h = (b-a)/n; //the width
double integral; // will hold the answer
int threadcnt = 1;

double f(double x);

if (argc>1) {
threadcnt = atoi(argv[1]);
}

#if def_OPENMP
omp_set_num_threads(threadcnt);
printf("OMP defined, threadct = %d\n", threadcnt);
#else
printf("OMP not defined");
#endif

integral = (f(a)+f(b))/2.0;
int i;



#pragma omp parallel for\
 private(i) shared (a,n,h) reduction(+:integral)
for (i = 1; i<n;i++) {
integral += f(a+i*h);
}

integral = integral *h;
printf("With %d trapezoid, our estimate of the integral from \n",n);
printf("%f to %f is %f\n",a,b,integral);
}

double f(double x) {
return sin(x);
}


#include <stdio.h>

float substract(float in1, float in2)
{
    float ret = 0.0;
    asm("fsub %2, %0" : "=&t" (ret) : "%0" (in1), "u" (in2));
    return ret;
}

int main()
{
    printf("hello world\n");
    float ret = substract(1.0, 1.5);
    printf("ret is %f\n", ret);
    return 0;
}

//
//  main.c
//  Numbers
//
//  Created by Benjamin A Burgess on 2/1/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    int X = 255;
    
    printf("X is %d. \n", X);
    
    printf("In octal, x is %o. \n", X);
    
    printf("In hexadecimal, x is %x. \n", X);
    
    printf("The absolute value of -5 is %d\n", abs(-5));
    
    printf("The sine of 1 radian is %.3lf.\n", sin(1.0));
    return 0;
}

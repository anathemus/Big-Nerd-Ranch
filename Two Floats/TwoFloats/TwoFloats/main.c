//
//  main.c
//  TwoFloats
//
//  Created by Benjamin A Burgess on 1/22/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // Declare two floats, declare a double, assign the sum of the two floats to the double, print the double.
    float one = 3.14159;
    
    float two = 7.7;
    
    double sum = one + two;
    
    printf("The sum of the two floats is %f.\n", sum);
    
    return 0;
}

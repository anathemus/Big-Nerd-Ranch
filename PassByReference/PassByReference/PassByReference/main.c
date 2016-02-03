//
//  main.c
//  PassByReference
//
//  Created by Benjamin A Burgess on 2/2/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    // Pass the address of integerPart as an argument.
    fractionPart = modf(pi, &integerPart);
    
    // Find the value stored in integerPart.
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);
    
    return 0;
}

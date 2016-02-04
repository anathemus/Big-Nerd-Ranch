//
//  main.c
//  MetersToFeetAndInches
//
//  Created by Benjamin A Burgess on 2/3/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr){
    //This function assumes meters is non-negative
    
    //Convert meters into floating-point number of feet
    double rawFeet = meters * 3.281;
    double *rawFtPtr;
    
    //Whole number of feet as unsigned int
    unsigned int feet;
    
    double fractionalFoot = modf(rawFeet, rawFtPtr);
    feet = (unsigned int)*rawFtPtr;
    
    //Store number of feet at the supplied address
    if (ftPtr) {
        printf("Storing %u to the address %p.\n", feet, ftPtr);
        *ftPtr = feet;
    }
    
    
    
    //Calculate inches
    double inches = fractionalFoot * 12.0;
    
    //Store the number of inches at the supplied address
    if (inPtr) {
        printf("Storing %.2f to the address %p.\n", inches, inPtr);
        *inPtr = inches;
    }
    
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    return 0;
}

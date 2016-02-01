//
//  main.c
//  Degrees
//
//  Created by Benjamin A Burgess on 2/1/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

float fahrenheitFromCelsius(float cel){
    float fahr = cel * 1.8 + 32.0;
    
    printf("%.2f Celsius is %.2f Fahrenheit\n", cel, fahr);
    
    return fahr;
}

int main(int argc, const char * argv[]) {
    
    float freezeInC = 0;
    
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    
    printf("Water freezes at %.2f degrees Fahrenheit.\n", freezeInF);
    
    return 0;
}

//
//  main.c
//  Triangle
//
//  Created by Benjamin A Burgess on 2/1/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA, float angleB){
    return angleA + angleB;
}

int main(int argc, const char * argv[]) {
    
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    
    printf("The third angle is %.2f\n", angleC);
    
    return 0;
}

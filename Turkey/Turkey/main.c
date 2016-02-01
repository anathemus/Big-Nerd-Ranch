//
//  main.c
//  Turkey
//
//  Created by Benjamin A Burgess on 1/22/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // Declare the variable 'weight' of type float
    float weight;
    
    weight = 14.2;
    
    printf("The turkey weighs %.2f.\n", weight);
    
    float cookingTime;
    
    cookingTime = 15.0 + 15.0 * weight;
    
    printf("Cook it for %.2f minutes.\n", cookingTime);
    return 0;
}

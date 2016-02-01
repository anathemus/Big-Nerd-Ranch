//
//  main.c
//  Squarer
//
//  Created by Benjamin A Burgess on 2/1/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int number;
    
    number = 5;
    
    int numSquared = number * number;
    
    printf("\"%i\" squared is \"%i\".", number, numSquared);
    
    return 0;
}

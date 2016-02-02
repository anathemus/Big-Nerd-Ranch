//
//  main.c
//  Addresses
//
//  Created by Benjamin A Burgess on 2/2/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int i = 17;
    int *addressOfI = &i;
    
    printf("Variable i stores its value at %p.\n", addressOfI);
    
    printf("main function starts at %p.\n", main);
    
    printf("the int stored at addressOfI is %d.\n", *addressOfI);
    
    *addressOfI = 89;
    
    printf("Now i is %d.\n", i);
    
    printf("An int is %zu bytes.\n", sizeof(int));
    
    printf("A pointer is %zu bytes.\n", sizeof(int *));
    
    printf("A float is %zu bytes.\n", sizeof(float));
    
    return 0;
}

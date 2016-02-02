//
//  main.c
//  CountDown
//
//  Created by Benjamin A Burgess on 2/2/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    int i = 99;
    
    while (i >= 0) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
        i -= 3;
    }
        
    return 0;
}

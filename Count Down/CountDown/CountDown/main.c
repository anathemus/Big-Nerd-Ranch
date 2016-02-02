//
//  main.c
//  CountDown
//
//  Created by Benjamin A Burgess on 2/2/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>
#include <readline/readline.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    printf("What number should the countdown begin from?");
    
    const char *number = readline(NULL);
    
    int i = atoi(number);
    
    while (i >= 0) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
        i -= 3;
    }
        
    return 0;
}

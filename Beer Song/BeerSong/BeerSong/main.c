//
//  main.c
//  BeerSong
//
//  Created by Benjamin A Burgess on 2/1/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

void singSongFor (int numberOfBottles){
    if (numberOfBottles == 0){
        printf("There are simply no more bottles of beer on the wall. \n\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall. \n\n", oneFewer);
        
        singSongFor(oneFewer); //RECURSION!
        
        // After recursion executions have no more left, code resumes here at 1, each cycle counting back toward the given int in main for singSongFor();
        printf("Put a bottle in the recycling, %d empty bottles in the bin. \n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    singSongFor(4);
    return 0;
}

//
//  main.c
//  Time
//
//  Created by Benjamin A Burgess on 2/4/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since the first moment Greenwich Mean Time of 1970.\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The current time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    secondsSince1970 += 4000000;
    localtime_r(&secondsSince1970, &now);
    printf("In 4 million seconds, the date will be %d - %d - %d", now.tm_mon+1, now.tm_mday, now.tm_year+1900);
    
    return 0;
}

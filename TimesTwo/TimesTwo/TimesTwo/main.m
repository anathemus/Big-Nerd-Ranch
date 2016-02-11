//
//  main.m
//  TimesTwo
//
//  Created by Benjamin A Burgess on 2/6/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSDate *currentTime = nil;
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p.\n", currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p.\n", currentTime);
        NSLog(@"The value of the original object is %p.\n", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is lastly %p.\n", currentTime);
    }
    return 0;
}

//
//  main.m
//  DateList
//
//  Created by Benjamin A Burgess on 2/10/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create three NSDate objects
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Create an array containing all three
        
        // NSArray *dateList = @[now, tomorrow, yesterday];
        
        // Create a mutable array
        NSMutableArray *dateList = [NSMutableArray array];
        
        // Add two dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // Add yesterday to the beginning of the array
        [dateList insertObject:yesterday atIndex:0];
        
        // Print a couple of dates from the array
        
        // NSLog(@"The first date is %@", dateList[0]);
        // NSLog(@"The third date is %@", dateList[2]);
        
        // How many dates are in the array?
        
        // NSLog(@"There are %lu dates in the array.", [dateList count]);
        
        // Iterate over the array
        
        /*NSUInteger dateCount = [dateList count];
        
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = dateList[i];
            NSLog(@"Date number %d is %@.\n", i+1, d);
        }*/
        
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date: %@.\n", d);
        }
        
        // Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@.\n", dateList[0]);
        
    }
    return 0;
}

//
//  main.m
//  TimeAfterTime
//
//  Created by Benjamin A Burgess on 2/4/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        NSDate *now = [NSDate date];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since Midnight January 1, 1970, GMT.", seconds);
        
        // double testSeconds = [NSDate timeIntervalSince1970];
        // NSDate *testNow = [now date];
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@.\n", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@.\n", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                           inUnit:NSCalendarUnitMonth
                                           forDate:now];
        NSLog(@"This is day %lu of the month.\n", day);
        
    }
    return 0;
}

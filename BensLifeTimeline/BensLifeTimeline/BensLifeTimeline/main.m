//
//  main.m
//  BensLifeTimeline
//
//  Created by Benjamin A Burgess on 2/6/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        
        NSDateComponents *birthComps = [[NSDateComponents alloc]init];
        [birthComps setYear:1979];
        [birthComps setMonth:11];
        [birthComps setDay:29];
        [birthComps setHour:10];
        [birthComps setMinute:00];
        [birthComps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *dateOfBirth = [g dateFromComponents:birthComps];
        
        double secondsSinceBirth = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"Ben has been alive for %f seconds!", secondsSinceBirth);
    }
    return 0;
}

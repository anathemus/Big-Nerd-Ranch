//
//  BNREmployee.m
//  BMITime
//
//  Created by Benjamin A Burgess on 2/24/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{
    // is hireDate non-nil(non-NULL)?
    if (self.hireDate)
    {
        // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        
        // Seconds per year
        return secs / 31557600.0;
    }
    else
    {
        return 0;
    }
}

- (float)bodyMassIndex
{
    // return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

// Override BNREmployee's description
- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end

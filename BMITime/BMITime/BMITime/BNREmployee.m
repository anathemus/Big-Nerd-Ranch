//
//  BNREmployee.m
//  BMITime
//
//  Created by Benjamin A Burgess on 2/24/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

// Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}
- (NSArray *)assets
{
    return [_assets copy];
}
- (void)addAsset:(BNRAsset *)a
{
    //Is assets nil/null?
    if (! _assets)
    {
        // Create the array
        _assets = [[NSMutableArray alloc]init];
    }
    [_assets addObject:a];
}
- (unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets)
    {
        sum += [a resaleValue];
    }
    return sum;
}

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
    return [NSString stringWithFormat:@"<Employee %d: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end

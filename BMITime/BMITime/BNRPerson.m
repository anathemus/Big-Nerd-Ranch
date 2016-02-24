//
//  BNRPerson.m
//  BMITime
//
//  Created by Benjamin A Burgess on 2/20/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

// No longer needed thanks to @property in header file!
/*
- (float)heightInMeters
{
    return _heightInMeters;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}

- (int)weightInKilos
{
    return _weightInKilos;
}

- (void)setWeightInKilos:(int)w
{
    _weightInKilos = w;
}
*/

- (float)bodyMassIndex
{
    // return _weightInKilos / (_heightInMeters * _heightInMeters);
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end

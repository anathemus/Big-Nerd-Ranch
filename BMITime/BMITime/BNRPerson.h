//
//  BNRPerson.h
//  BMITime
//
//  Created by Benjamin A Burgess on 2/20/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// No longer needed thanks to @property!
/*{
    // BNRPerson has two instance variables
    float _heightInMeters;
    
    int _weightInKilos;
    
}

// BNRPerson has methods to read and set its instance variables

- (float)heightInMeters;
- (void)setHeightInMeters: (float)h;
- (int)weightInKilos;
- (void)setWeightInKilos: (int)w;
*/

// BNRPerson has a method that calculates the Body Mass Index

- (float)bodyMassIndex;

@end

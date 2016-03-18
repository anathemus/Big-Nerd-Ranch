//
//  BNRAsset.m
//  BMITime
//
//  Created by Benjamin A Burgess on 2/26/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end

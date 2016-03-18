//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Benjamin A Burgess on 2/24/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

// Override costInDollars and valueInDollars because conversionRate
- (float)costInDollars
{
    
    return (([self purchaseSharePrice] * [self numberOfShares]) * [self conversionRate]);
    
}
- (float)valueInDollars
{
    return (([self currentSharePrice] * [self numberOfShares]) * [self conversionRate]);
}


@end

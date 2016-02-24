//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Benjamin A Burgess on 2/24/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}
- (void)setPurchaseSharePrice:(float)psp
{
    _purchaseSharePrice = psp;
}
- (float)currentSharePrice
{
    return _currentSharePrice;
}
- (void)setCurrentSharePrice:(float)csp
{
    _currentSharePrice = csp;
}
- (int)numberOfShares
{
    return _numberOfShares;
}
- (void)setNumberOfShares:(int)nos
{
    _numberOfShares = nos;
}
- (float)costInDollars
{
    
    return ([self purchaseSharePrice] * [self numberOfShares]);

}
- (float)valueInDollars
{
    return ([self currentSharePrice] * [self numberOfShares]);
}

@end

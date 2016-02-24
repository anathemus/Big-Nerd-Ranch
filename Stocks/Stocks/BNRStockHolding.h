//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Benjamin A Burgess on 2/24/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    // Instance variables go here
    float _purchaseSharePrice;
    float _currentSharePrice;
    
    int _numberOfShares;
}

// Getter and setter methods
- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice: (float)psp;

- (float)currentSharePrice;
- (void)setCurrentSharePrice: (float)csp;

- (int)numberOfShares;
- (void)setNumberOfShares: (int)nos;

// Methods for calculating value

// costInDollars = purchaseSharePrice * numberOfShares
- (float)costInDollars;

// valueInDollars = currentSharePrice * numberOfShares
- (float)valueInDollars;


@end

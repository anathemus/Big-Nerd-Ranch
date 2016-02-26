//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by Benjamin A Burgess on 2/24/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end

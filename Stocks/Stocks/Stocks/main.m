//
//  main.m
//  Stocks
//
//  Created by Benjamin A Burgess on 2/24/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // Create instances of BNRStockHolding
        BNRStockHolding *goog = [[BNRStockHolding alloc]init];
        BNRStockHolding *dis = [[BNRStockHolding alloc]init];
        BNRStockHolding *appl = [[BNRStockHolding alloc]init];
        
        // Give the instance variables interesting values using setters
        [goog setPurchaseSharePrice:582.06];
        [goog setCurrentSharePrice:686.75];
        [goog setNumberOfShares:200];
        [goog costInDollars];
        [goog valueInDollars];
        
        [dis setPurchaseSharePrice:95.89];
        [dis setCurrentSharePrice:93.90];
        [dis setNumberOfShares:200];
        [dis costInDollars];
        [dis valueInDollars];
        
        [appl setPurchaseSharePrice:103.74];
        [appl setCurrentSharePrice:93.91];
        [appl setNumberOfShares:300];
        [appl costInDollars];
        [appl valueInDollars];
        
        // Put the three stocks into an array
        NSArray *stocks = [NSArray arrayWithObjects:goog, dis, appl, nil];
        
        // Place holder for enumerating through each stock
        int i = 1;
        
        for (BNRStockHolding *stock in stocks)
        {
            // Grab instance variables bringing them into numeric variables
            float purchase = [stock purchaseSharePrice];
            float current = [stock currentSharePrice];
            int shares = [stock numberOfShares];
            float cost = [stock costInDollars];
            float currentValue = [stock valueInDollars];
            
            // And print the results to the screen!
            NSLog(@"Stock number %i was purchased at %.2f per share. %i shares were bought. Its current value is %.2f per share. The total cost was %.2f to purchase. The total current value of this stock is %.2f.", i, purchase, shares, current, cost, currentValue);
            i++;
        }
    }
    return 0;
}

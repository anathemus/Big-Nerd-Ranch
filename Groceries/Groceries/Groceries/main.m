//
//  main.m
//  Groceries
//
//  Created by Benjamin A Burgess on 2/11/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Three items on the grocery list
        NSString *bread = (@"Loaf of bread\n");
        NSString *milk = (@"Container of milk\n");
        NSString *butter = (@"Stick of butter\n");
        
        // Array for the grocery list
        NSMutableArray *groceryList = [NSMutableArray array];
        
        // Add the three items to the list
        [groceryList addObject:bread];
        [groceryList addObject:milk];
        [groceryList addObject:butter];
        
        // Iterate over the array using fast enumeration
        for (NSString *item in groceryList) {
            NSLog(@"You need to get %@ from the store.", item);
        }
        
    }
    return 0;
}

//
//  main.m
//  NameMyComputer
//
//  Created by Benjamin A Burgess on 2/4/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSHost *myComputer = [NSHost currentHost];
        NSString *myComputerName = [myComputer localizedName];
        
        NSLog(@"Your computer's name is %@.", myComputerName);
        
    }
    return 0;
}

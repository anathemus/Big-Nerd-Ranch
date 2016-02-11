//
//  main.m
//  CountdownObjC
//
//  Created by Benjamin A Burgess on 2/6/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"What number should the countdown begin from?");
        
        NSString *number = [NSString stringWithUTF8String:(readline(NULL))];
        
        int i = [number intValue];
        
        while (i >= 0) {
            NSLog(@"%d\n", i);
            if (i % 5 == 0) {
                NSLog(@"Found one!\n");
            }
            i -= 3;
        }

    }
    return 0;
}

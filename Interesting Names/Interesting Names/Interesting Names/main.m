//
//  main.m
//  Interesting Names
//
//  Created by Benjamin A Burgess on 2/19/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Read in the proper names file as a huge string (errors ignored)
        NSString *nameString = [NSString stringWithContentsOfFile:@"usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        // Break nameString into an array of names
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Read in the words from the dictionary of words file (errors ignored)
        NSString *wordString = [NSString stringWithContentsOfFile:@"usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        // Break wordString into an array of words
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // Iterate through the names array one name at a time
        for (NSString *n in names) {
            // iterate through the words array one word at a time
            for (NSString *w in words) {
                // Compare name to each word
                NSRange r = [n rangeOfString:w options:NSCaseInsensitiveSearch];
                
                // If match is found then...
                if (r.location != NSNotFound) {
                    NSLog(@"%@", n);
                }
            }
            
        }
    }
    return 0;
}

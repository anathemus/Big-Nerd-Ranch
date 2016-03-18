//
//  main.m
//  BMITime
//
//  Created by Benjamin A Burgess on 2/20/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "BNRPerson.h"
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        /*
        // Create an instance of BNREmployee
        BNREmployee *mikey = [[BNREmployee alloc]init];
        
        // Give the instance variables interesting values using setters
        // [mikey setWeightInKilos:96];
        // [mikey setHeightInMeters:1.8];
        // Dot notation:
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        // Log the instance variables using getters.
        float height = mikey.heightInMeters; // [mikey heightInMeters];
        int weight = mikey.weightInKilos; // [mikey weightInKilos];
        
        NSLog(@"Mikey is %.2f meters tall and weighs %d kilograms.\n", height, weight);
        NSDate *date = mikey.hireDate;
        NSLog(@"%@ hired on %@\n", mikey, date);
        
        // Log values using custom methods
        float bmi = [mikey bodyMassIndex];
        double years = [mikey yearsOfEmployment];
        
        NSLog(@"Mikey has a BMI of %f, has worked with us for %.2f years.\n", bmi, years);
        */
        
        // Create an array of BNR Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc]init];
        
        for (int i = 0; i < 10; i++)
        {
            // Create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc]init];
            
            // Give the instance variables interesting values using dot notation setters
            mikey.weightInKilos = 90 + i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // Put the employee in the employees array
            [employees addObject:mikey];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++)
        {
            // Create an asset
            BNRAsset *asset = [[BNRAsset alloc]init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
        }
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        
    }
    return 0;
}

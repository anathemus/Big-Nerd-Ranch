//
//  main.c
//  BMICalc
//
//  Created by Benjamin A Burgess on 2/4/16.
//  Copyright © 2016 Benjamin A Burgess. All rights reserved.
//

#include <stdio.h>

// struct declaration
// struct Person{
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    
    // struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
    // struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
    /*
    printf("Mikey is %.2f meters tall.\n Mikey weighs %d kilograms.\n", mikey.heightInMeters, mikey.weightInKilos);
    printf("Aaron is %.2f meters tall.\n Aaron weighs %d kilograms.\n", aaron.heightInMeters, aaron.weightInKilos);
     */
    
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("Mikey has a BMI of %.2f.\n", bmi);
    
    bmi = bodyMassIndex(aaron);
    printf("Aaron has a BMI of %.2f\n", bmi);
    
    return 0;
}

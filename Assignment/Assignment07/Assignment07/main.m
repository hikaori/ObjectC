//
//  main.m
//  Assignment07
//
//  Created by kaori hirata on 2017-08-26.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Doctor *dr1 = [[Doctor alloc]initWithname:@"Dr.philips"];
        Patient *p1 = [[Patient alloc] initWithname:@"kaori" age:20 healthcard:YES symptom:@"flu"];
        
        
        if(![p1 visitDoctor:dr1]){
            NSLog(@"Sorry we cant accept you. Please bring healthcard");
        }
        else{
            NSLog(@"the Dr accept the Patient");
            // THE PATIENT IS LISTED IN Dr's PATIENT LIST
            [dr1.patientlist addObject:p1];
            
            [p1 requestMedication:dr1];
            
        }
        
        
        
    }
    return 0;
}

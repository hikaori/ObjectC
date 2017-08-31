//
//  main.m
//  Assignment07
//
//  Created by kaori hirata on 2017-08-29.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *dr1 = [[Doctor alloc]initWithname:@"Philips"];
        Doctor *dr2 = [[Doctor alloc]initWithname:@"MIKE"];
        SymptomDf mySymptom = Cold;
        Patient *p1 = [[Patient alloc]initWithname:@"kaori" age:10 healthcard:YES symptom:mySymptom];
        
        
        Doctor *DrInCharge = dr1;
        Patient *targetPatient = p1;
        

        if([targetPatient visitDr:DrInCharge]){
            NSLog(@"Dr accepted the Patient");
            [DrInCharge addPatientslist:targetPatient];
            [targetPatient requestMedication:DrInCharge];
        }
        else{
            NSLog(@"Sorry Dr can't accept you. Please bring healthcard");
        }
        
        /////  day later  ////
        NSLog(@"the patient visit the other doctor");
        
        if([targetPatient visitDr:dr2]){
            [dr2 addPatientslist:targetPatient];
            [targetPatient showPriscriptionList];
        }
        
    }
    return 0;
}

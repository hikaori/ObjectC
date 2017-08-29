//
//  Doctor.m
//  Assignment07
//
//  Created by kaori hirata on 2017-08-26.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@implementation Doctor

- (instancetype)initWithname :(NSString*) name
{
    self = [super init];
    if (self) {
        _patientlist = [[NSMutableArray alloc]init];
    }
    return self;
}

-(Boolean)hasHealthcard:(Patient*)patient{
    if(patient.healthcard){
        return true;
    }
    else{return false;}
}

-(Boolean) prescribeMedication: (Patient *) patient{
    Prescription *prescription = [[Prescription alloc]init];
    prescription 
}

@end

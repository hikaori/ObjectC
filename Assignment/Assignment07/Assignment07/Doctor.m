//
//  Doctor.m
//  Assignment07
//
//  Created by kaori hirata on 2017-08-29.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"


@implementation Doctor

- (instancetype)initWithname:(NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
        _patientslist = [NSMutableArray new];
    }
    return self;
}

-(Boolean)hasHealthcard:(Patient*)patient{
    if(patient.healthcard){
        return true;
    }
    else{
        return false;
    }
}

-(void)addPatientslist:(Patient *)patient{
    [_patientslist addObject:patient];
    Patient *resutl = self.patientslist[0];
    NSLog(@"Dr.%@ add patientList : %@",self.name,resutl.name);
}

-(void)MedicatePrescription:(Patient *)patient{
    Prescription *prescription = [Prescription new];
    
    NSString *createdPrescription = [prescription prescription:(int)patient.symptom];
    NSLog(@"%@",createdPrescription);
    
    // ADD PRESCRIPTION OF THIS TIME EXAMINATION
//    NSMutableDictionary *PrescriptionDictionary = [[NSMutableDictionary alloc] init];
//    [PrescriptionDictionary setObject:createdPrescription forKey:patient.name];
    [patient addpriscriptionList:prescription];
}


@end

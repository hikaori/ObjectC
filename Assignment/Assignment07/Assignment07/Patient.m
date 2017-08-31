//
//  Patient.m
//  Assignment07
//
//  Created by kaori hirata on 2017-08-29.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
#import "Patient.h"

@implementation Patient

- (instancetype)initWithname:(NSString*) name age:(int)age healthcard:(BOOL*) healthcard symptom:(NSInteger) symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _age  = age;
        _healthcard = healthcard;
        _symptom = symptom;
        prescriptionList = [NSMutableDictionary new];
    }
    return self;
}

-(Boolean) visitDr:(Doctor*)dr{
    if([dr hasHealthcard:self]){
        return true;
    }
    else{
        return false;
    }
}

-(void)requestMedication:(Doctor *)dr{
    [dr MedicatePrescription:self];
}

-(void) addpriscriptionList:(Prescription *)medicine{
    // prescriptionList key: NSString , value: Prescription
    [prescriptionList setValue:medicine forKey:self.name];
}

-(void)showPriscriptionList{
//    NSString *key = self.name;
    for(NSString *key in [prescriptionList allKeys])
        // what is the data type of [prescriptionList objectForKey:key]? 
        NSLog(@"the Patient Prescription : %@", [prescriptionList objectForKey:key]);
}



@end

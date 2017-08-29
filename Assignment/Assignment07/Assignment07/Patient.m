//
//  Patient.m
//  Assignment07
//
//  Created by kaori hirata on 2017-08-26.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
@interface Patient() {
@private
    NSMutableArray *prescriptions;
}
@end


@implementation Patient

- (instancetype)initWithname:(NSString*) name age:(int) age healthcard:(Boolean) healthcard symptom:(NSString *) symptom{
    self = [super init];
    if (self) {
        _name = self.name;
        _age = self.age;
        _healthcard = healthcard;
        _symptom = symptom;
    }
    return self;
}

-(Boolean) visitDoctor:(Doctor *) dr{
    return  [dr hasHealthcard:self];
}

-(void)requestMedication:(Doctor *) dr{
    [dr prescribeMedication:self];
}

@end

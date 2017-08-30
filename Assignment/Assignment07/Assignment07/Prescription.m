//
//  Prescription.m
//  Assignment07
//
//  Created by kaori hirata on 2017-08-29.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)init
{
    self = [super init];
    if (self) {
        _medicine = [NSString new];
    }
    return self;
}

-(NSString *) prescription :(enum Symptom)type{
    switch (type) {
        case Cold:
            NSLog(@"Dr Prescription Medicated for Cold") ;
            _medicine = @"Medicine for Cold";
            return self.medicine;
            break;
        case Flu:
            NSLog(@"Dr Prescription Medicated for Ful") ;
            _medicine = @"Medicine for Ful";
            return self.medicine;
            break;
        case Headache:
             NSLog(@"Dr Prescription Medicated for Headich") ;
            _medicine = @"Medicine for Headich";
            return self.medicine;
            break;
        default:
            NSLog(@"Wrong type!");
            break;
    }
}


@end

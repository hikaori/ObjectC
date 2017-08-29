//
//  Doctor.h
//  Assignment07
//
//  Created by kaori hirata on 2017-08-26.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject
@property NSString *name;
@property NSMutableArray *patientlist;

- (instancetype)initWithname :(NSString*) name;

-(Boolean)hasHealthcard:(Patient *)patient;

-(Boolean) prescribeMedication: (Patient *) patient;

@end

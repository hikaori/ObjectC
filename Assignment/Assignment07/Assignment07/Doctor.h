//
//  Doctor.h
//  Assignment07
//
//  Created by kaori hirata on 2017-08-29.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

//@interface Doctor : NSObject
@interface Doctor : Prescription

//@property NSMutableDictionary *patientPrescriptionList;
//@dynamic NSMutableDictionary *dynamic;

@property NSString *name;
@property NSMutableArray *patientslist;

- (instancetype)initWithname:(NSString*) name;
-(Boolean)hasHealthcard:(Patient *)patient;
-(void)addPatientslist:(Patient *)patient;
-(void)MedicatePrescription:(Patient *)patient;


@end


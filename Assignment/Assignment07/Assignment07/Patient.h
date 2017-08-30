//
//  Patient.h
//  Assignment07
//
//  Created by kaori hirata on 2017-08-29.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
@class Prescription;

@interface Patient : NSObject

{
@private NSMutableDictionary *prescriptionList;
}

@property NSString* name;
@property int age;
@property int id;
@property BOOL* healthcard;
@property NSInteger symptom;



- (instancetype)initWithname:(NSString*) name age:(int)age healthcard:(BOOL*) healthcard symptom:(NSInteger) symptom;

-(Boolean) visitDr:(Doctor *)dr;
-(void)requestMedication:(Doctor *)dr;
-(void) addpriscriptionList:(Prescription *)medicine;
-(void)showPriscriptionList;

@end

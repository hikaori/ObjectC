//
//  Patient.h
//  Assignment07
//
//  Created by kaori hirata on 2017-08-26.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
@ class Doctor;


@interface Patient : NSObject
@property NSString *name;
@property int id;
@property int age;
@property Boolean healthcard;
@property NSString* symptom;


- (instancetype)initWithname:(NSString*) name age:(int) age healthcard:(Boolean) healthcard symptom:(NSString *) symptom;
-(Boolean) visitDoctor:(Doctor *) dr;
-(void)requestMedication:(Doctor *) dr;




@end

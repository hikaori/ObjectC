//
//  Prescription.h
//  Assignment07
//
//  Created by kaori hirata on 2017-08-29.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Prescription : NSObject



@property  NSString *medicine;

typedef enum Symptom {Cold, Flu, Headache} SymptomDf;



-(NSString *) prescription :(enum Symptom)type;
- (NSString *) description; // what is this methond doing? (in Java, toString method)
@end

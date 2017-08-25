//
//  Question.h
//  Assignment05
//
//  Created by kaori hirata on 2017-08-24.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic)NSString *question;
@property (assign)NSInteger answer;
@property (assign)NSInteger rightValue;
@property (assign)NSInteger leftValue;
@property NSDate *startTime;
@property NSDate *endTime;


-(instancetype)init;
//-(BOOL) isCorrect: (NSString *) userAnswer;
//-(NSTimeInterval)answerTimeWithstartTime:(NSDate *) startTime endTime:(NSDate *)endTime;
- (NSTimeInterval)timeToAnswer;
-(void)generateQuestion;

@end

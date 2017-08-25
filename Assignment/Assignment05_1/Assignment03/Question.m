//
//  AdditionQuestion.m
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype)init{
    self = [super init];
        if (self){
            NSInteger num1 = arc4random_uniform(100);
            NSInteger num2 = arc4random_uniform(100);
            _question = [NSString stringWithFormat: @"%ld + %ld = ?",(long)num1, (long)num2];
            _startTime = [NSDate date];
            _answer = num1 + num2;
        }
    return self;
}

//- (BOOL) isCorrect: (NSString *) userAnswer {
//        _endTime = [NSDate date];
//        return [[NSString stringWithFormat:@"%ld", (long)self.answer] isEqualToString:[NSString stringWithFormat:@"%ld", (long)[userAnswer integerValue]]];
//}
-(NSTimeInterval)timeToAnswer{
   return  [_endTime timeIntervalSinceDate:_startTime];
}

@end

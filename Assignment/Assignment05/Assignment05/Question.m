//
//  Question.m
//  Assignment05
//
//  Created by kaori hirata on 2017-08-24.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype)init{
    self = [super init];
    if (self){
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);
        _question = [NSString stringWithFormat: @"%ld + %ld = ?",(long)_rightValue, (long)_leftValue];
        _startTime = [NSDate date];
        _answer = _rightValue + _leftValue;
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

-(void)generateQuestion{}

@end

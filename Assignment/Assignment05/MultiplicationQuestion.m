//
//  multiplicationQuestion.m
//  Assignment05
//
//  Created by kaori hirata on 2017-08-25.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "multiplicationQuestion.h"

@implementation multiplicationQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    // set super.answer here
    
    super.answer = super.rightValue * super.leftValue;
    super.question = [NSString stringWithFormat: @"%ld x %ld = ?",(long)super.rightValue, (long)super.leftValue];
    // set super.question here
}

@end

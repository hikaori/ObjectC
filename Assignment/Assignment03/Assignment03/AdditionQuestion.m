//
//  AdditionQuestion.m
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init{
    if (self = [super init]) {
        int maxNum = 100;
        int minNum = 10;
        NSInteger randamNum1 = arc4random_uniform(maxNum +1 - minNum ) + minNum;
        NSInteger randamNum2 = arc4random_uniform(maxNum +1 - minNum ) + minNum;
        NSLog(@"%ld + %ld",randamNum1,randamNum2);
        _answer = randamNum1 + randamNum2;
    }
    return self;
}

@end

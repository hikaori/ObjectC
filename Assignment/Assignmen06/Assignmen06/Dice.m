//
//  Dice.m
//  Assignmen06
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.faceValue = arc4random_uniform(6) + 1 ;
    }
    return self;
}

- (void) roll
{
    self.faceValue = arc4random_uniform(6) + 1 ;
}


@end

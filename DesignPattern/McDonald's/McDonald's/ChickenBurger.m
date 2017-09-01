//
//  ChickenBurger.m
//  McDonald's
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "ChickenBurger.h"

@implementation ChickenBurger

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name =@"ChickenBurger";
        _price = 3;
    }
    return self;
}

@end

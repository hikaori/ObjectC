//
//  ColdDrink.m
//  McDonald's
//
//  Created by kaori hirata on 2017-08-31.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "ColdDrink.h"


// abstract class
@implementation ColdDrink
- (instancetype)init
{
    self = [super init];
    if (self) {
        //        [self doesNotRecognizeSelector:_cmd];
    }
    return self;
}

- (id<Packing>) packing {
    return [Bottle new];
}
@end

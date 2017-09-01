//
//  Burger.m
//  McDonald's
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Burger.h"
// abstract class
@implementation Burger

- (instancetype)init
{
    self = [super init];
    if (self) {
        //        [self doesNotRecognizeSelector:_cmd];
    }
    return self;
}
// need overrid because of Item class(protocol class)
-(id<Packing>) Paking {
    return [Wrapper new];
}

@end

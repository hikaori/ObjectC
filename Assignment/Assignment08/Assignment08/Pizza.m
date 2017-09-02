//
//  Pizza.m
//  Assignment08
//
//  Created by kaori hirata on 2017-09-01.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Pizza.h"
@interface Pizza()
{
@private NSMutableArray *selectedToppings;
@private enum Size {small, medium, large};
}
@end

@implementation Pizza
- (instancetype)initWithsize:(enum Size)size
{
    self = [super init];
    if (self) {
        switch (size) {
            case small:
                _pizzaSize = small;
                break;
            case medium:
                _pizzaSize = medium;
                break;
            case large:
                _pizzaSize = large;
                break;
            default:
                NSLog(@"Wrong type!");
                break;
        }
        
            }
    return self;
}


@end

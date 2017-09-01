//
//  Meal.m
//  McDonald's
//
//  Created by kaori hirata on 2017-08-31.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Meal.h"
@interface Meal()
@property NSMutableArray *items;
@end

@implementation Meal


- (instancetype)init
{
    self = [super init];
    if (self) {
        _items = [NSMutableArray array];
    }
    return self;
}

-(void):addItem :(id<Item>) item{
    [_items addObject: item];
}

-(float) getCost{
    float cost = 0.0f;
    for(id<Item>item in _items){
        cost += item.price;
    }
    return cost;
}

-(void) showItems{
    for(id<Item>item in _items){
        NSLog(@"Item: %@, Packing: %@, Price: %f", item.name, [[item packing] pack], [item price]);
    }
}


@end

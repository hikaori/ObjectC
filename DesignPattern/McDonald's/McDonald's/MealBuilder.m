//
//  MealBuilder.m
//  McDonald's
//
//  Created by kaori hirata on 2017-08-31.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "MealBuilder.h"
#import "Meal.h"
#import "VegBurger.h"
#import "Coke.h"
#import "Pepsi.h"
#import "ChickenBurger.h"
@implementation MealBuilder

- (Meal *) prepareVegMeal{
    Meal *meal = [Meal new];
    VegBurger *veg = [[VegBurger alloc] init];
    [meal addItem: veg];
    [meal addItem :[Coke new]];
    return meal;
}

- (Meal *) prepareNonVegMeal {
    Meal *meal = [Meal new];
    [meal addItem: [ChickenBurger new]];
    [meal addItem :[Pepsi new]];
    return meal;
}

@end


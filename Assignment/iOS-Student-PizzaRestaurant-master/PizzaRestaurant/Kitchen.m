//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

//- (Pizza *)makePizzaWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings
//{
//   
//}

-(Pizza*)preparePizza:(NSString *)pizzaSize topping:(NSArray *)topping{
    Pizza* p1 = [[Pizza alloc]init];
    [p1 setsize:pizzaSize];
    [p1 addTopping:topping];
    return p1;
}

-(Pizza *)largePepperoni{
    NSString *large = @"large";
    NSArray *topping =  [NSArray arrayWithObjects:@"Pepperoni", @"onion", nil];
    Pizza *largePepperoni = [[Pizza alloc]init];
    [largePepperoni setsize:large];
    [largePepperoni addTopping:topping];
    return largePepperoni;
}

@end

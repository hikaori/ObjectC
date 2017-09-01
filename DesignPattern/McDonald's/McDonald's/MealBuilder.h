//
//  MealBuilder.h
//  McDonald's
//
//  Created by kaori hirata on 2017-08-31.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Meal.h"


@interface MealBuilder : NSObject

- (Meal *) prepareVegMeal;
- (Meal *) prepareNonVegMeal;

@end

//
//  Meal.h
//  McDonald's
//
//  Created by kaori hirata on 2017-08-31.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@interface Meal : NSObject

-(void):addItem :(id<Item>) item;
-(float) getCost;
-(void) showItems;

@end

//
//  ColdDrink.h
//  McDonald's
//
//  Created by kaori hirata on 2017-08-31.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "Bottle.h"

@interface ColdDrink : NSObject <Item>
- (id<Packing>) packing;

//- (NSString *) name;
//- (float) price;

@end

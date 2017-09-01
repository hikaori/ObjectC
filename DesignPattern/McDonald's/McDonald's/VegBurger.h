//
//  VegBurger.h
//  McDonald's
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Burger.h"

@interface VegBurger : Burger

@property NSString* name;
@property int price;

- (instancetype)init;

@end

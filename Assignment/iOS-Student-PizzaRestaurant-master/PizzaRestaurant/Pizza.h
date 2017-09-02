//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by kaori hirata on 2017-09-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef enum PizzaSize {small, medium, large} PizzaSizeDf;

- (void)setsize:(NSString *)size;
-(void)addTopping:(NSArray*)topping;
-(NSMutableArray*) getTopping;
-(Size) getSize;

+(Pizza *)largePepperoni;

@end

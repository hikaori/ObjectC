//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by kaori hirata on 2017-09-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@interface Pizza()
{
@private NSMutableArray *selectedToppings;
@private enum PizzaSize pizzaSize;
}
@end

@implementation Pizza

- (void)setsize:(NSString *)size{
    if([size  isEqual: @"small"]){
        pizzaSize = small;
    }
    else if([size  isEqual: @"medium"]){
        pizzaSize = medium;
    }
    else if([size  isEqual: @"large"]){
        pizzaSize = large;
    }
    else{
        NSLog(@"Wrong type!");
    }
    
//        switch (size) {
//            case small:
//                pizzaSize = small;
//                break;
//            case medium:
//                pizzaSize = medium;
//                break;
//            case large:
//                pizzaSize = large;
//                break;
//            default:
//                NSLog(@"Wrong type!");
//                break;
//        }
}

-(void)addTopping:(NSArray*)topping{
    selectedToppings = [[NSMutableArray alloc]init];
 for(int i=0; i < topping.count; i++){
     NSString *item = topping[i];
     [selectedToppings addObject:item];
    }
}
-(NSMutableArray*) getTopping{
    return selectedToppings;
}
-(Size) getSize{
    return pizzaSize;
}

//+(Pizza *)largePepperoni{
//    NSString *large = @"large";
//    NSArray *topping =  [NSArray arrayWithObjects:@"Pepperoni", @"onion", nil];
//    Pizza *largePepperoni = [[Pizza alloc]init];
//    [largePepperoni setsize:large];
//    [largePepperoni addTopping:topping];
//}


@end

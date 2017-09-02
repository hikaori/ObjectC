//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            if([commandWords[0] isEqualToString:@"largePepperoni"]){
                NSLog(@"Please make largePepperoni");
                
                // kitchen cooked
                Pizza *largePepperoni = [restaurantKitchen largePepperoni];
                NSLog(@"Food Up :%ld and topping is",[largePepperoni getSize]);
                NSArray *cookedtopping = [largePepperoni getTopping];
                for (NSString *cTopping in cookedtopping) {
                    NSLog(@"%@", cTopping);
                }
                
            }
            else{
                NSLog(@"Please make Pizza size: %@ and topping is",commandWords[0]);
                NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count -1)];
                for (NSString *topping in toppings) {
                    NSLog(@"%@", topping);
                }
                
                // kitchen cooked
                Pizza *p1 = [restaurantKitchen preparePizza:commandWords[0] topping:toppings];
                NSLog(@"Food Up :%ld and topping is",[p1 getSize]);
                NSArray *cookedtopping = [p1 getTopping];
                for (NSString *cTopping in cookedtopping) {
                    NSLog(@"%@", cTopping);
                }
            }
                        
        }
    }
    return 0;
}


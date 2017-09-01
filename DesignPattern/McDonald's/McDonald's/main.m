//
//  main.m
//  McDonald's
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MealBuilder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        MealBuilder *MB = [[MealBuilder alloc]init];
        
        NSLog(@"%@",[MB prepareVegMeal]);
        NSLog(@"%@",[MB prepareVegMeal]);
    }
    return 0;
}

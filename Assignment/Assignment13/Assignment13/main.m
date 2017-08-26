//
//  main.m
//  Assignment13
//
//  Created by kaori hirata on 2017-08-25.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *nsstring = [[NSString alloc]init];
        NSString *input = @"Kale Chips";
        [nsstring stringByPigLatinization:input];
    
    }
    return 0;
}

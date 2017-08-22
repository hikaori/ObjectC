//
//  InputHandler.m
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput{
    char myStr[255];
    fgets(myStr,255,stdin);
    NSString *input = [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return input;
}

@end

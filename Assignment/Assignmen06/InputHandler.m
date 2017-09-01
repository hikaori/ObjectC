//
//  InputHandler.m
//  Assignmen06
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInput {
    char myStr[256];
    fgets(myStr, 256, stdin);
    
    return [[NSString stringWithCString:myStr encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end

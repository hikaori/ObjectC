//
//  InputCollector.m
//  Assignment04
//
//  Created by kaori hirata on 2017-08-22.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.inputlist = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addCommand:(NSString *)inputcommand{
    [self.inputlist addObject:inputcommand];
}

+(NSString*) getUserInput:(int) maxLength prompt:(NSString*) prompt{
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

-(void)historycommand{
    for(NSUInteger i = self.inputlist.count -1 ; i > self.inputlist.count -4; i--){
        NSString *command = self.inputlist[i];
        NSLog(@"%@",command);
    }
}

@end

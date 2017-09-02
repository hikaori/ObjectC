//
//  InputCollector.h
//  Assignment08
//
//  Created by kaori hirata on 2017-09-01.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray* inputlist;
@property NSMutableArray* inputWordsArray;

+ (NSString *) getUserInput:(int) maxLength prompt:(NSString*) prompt;
-(void)addCommand:(NSString *)inputcommand;
+(void) getUserInputSplitInToArray:intStr:(NSString*) intStr;

@end

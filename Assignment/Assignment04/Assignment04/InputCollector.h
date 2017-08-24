//
//  InputCollector.h
//  Assignment04
//
//  Created by kaori hirata on 2017-08-22.
//  Copyright © 2017 kaori hirata. All rights reserved./Users/hiratakaori/ObjectC/Assignment/Assignment04/Assignment04/InputCollector.m
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray* inputlist;
//@property NSMutableArray* contactlistArray;

+ (NSString *) getUserInput:(int) maxLength prompt:(NSString*) prompt;
-(void)addCommand:(NSString *)inputcommand;
-(void)historycommand;

@end

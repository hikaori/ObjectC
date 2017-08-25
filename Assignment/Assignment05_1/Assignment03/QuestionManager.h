//
//  QuestionManager.h
//  Assignment03
//
//  Created by kaori hirata on 2017-08-24.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject
@property NSMutableArray* questions;

- (instancetype)init;
- (NSString*) timeOutputWithelapsedtime :(int)elapsedtime;

@end

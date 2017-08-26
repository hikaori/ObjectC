//
//  QuestionManager.h
//  Assignment05
//
//  Created by kaori hirata on 2017-08-24.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject
@property NSMutableArray* questions;
@property int total;

- (instancetype)init;
- (NSString*) timeOutputWithelapsedtime :(int)elapsedtime;

@end

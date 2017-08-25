//
//  QuestionManager.m
//  Assignment05
//
//  Created by kaori hirata on 2017-08-24.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString*) timeOutputWithelapsedtime :(int)elapsedtime{
    int total = total + elapsedtime;
    NSLog(@"total ====== %d  elapsedtime=======%d",total,elapsedtime);
    int average = total/_questions.count;
    NSString *result = [NSString stringWithFormat:@"total time :%ds  average time:%ds" ,total,average];
    return result;
}
@end

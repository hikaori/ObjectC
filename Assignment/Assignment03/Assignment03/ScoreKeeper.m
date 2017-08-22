//
//  ScoreKeeper.m
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (double) getScore{
    float result =self.right/(self.right + self.wrong) * 100;
    NSLog(@"result :%g",result);
    return result;
}

@end

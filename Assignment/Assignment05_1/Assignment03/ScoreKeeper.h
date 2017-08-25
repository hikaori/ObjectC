//
//  ScoreKeeper.h
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (assign) int right;
@property (assign) int wrong;
@property (nonatomic) NSString *percentage;

- (void) printCurrentState;

@end

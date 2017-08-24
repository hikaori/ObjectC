//
//  ScoreKeeper.h
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property(assign) double right;
@property(assign) double wrong;
@property (nonatomic) NSString *log;

- (void) getScore;

@end

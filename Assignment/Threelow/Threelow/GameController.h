//
//  GameController.h
//  Threelow
//
//  Created by kaori hirata on 2017-08-28.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray *currentScore;
@property NSMutableArray *rolldices;

- (instancetype)init;
-(void)roll;
-(void)holdDie:indexOfrolldices;
-(void) displayScore;


@end

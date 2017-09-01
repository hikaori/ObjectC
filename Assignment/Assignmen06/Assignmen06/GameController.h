//
//  GameController.h
//  Assignmen06
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dice;

@interface GameController : NSObject

//@property NSMutableArray *rolledDices;

-(void)holdDie:(int)indexNum;
-(void)rollDie:(int)dice1FaceValue dice2FaceValue:(int)dice2FaceValue dice3FaceValue:(int)dice3FaceValue
dice4FaceValue:(int)dice4FaceValue dice5FaceValue:(int)dice5FaceValue;
-(void)showHoldDie:(int)indexNum;
-(void)unHoldDie;
-(void)displayHoldDies;
-(void)resetDice;
-(void)showScore;

@end

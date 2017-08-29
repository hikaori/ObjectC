//
//  GameController.m
//  Threelow
//
//  Created by kaori hirata on 2017-08-28.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"


#define MAX_ROLL 5

@interface GameController()
{
@private int rollCount;
}
@end

@implementation GameController


- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentScore = [NSMutableArray new];
        rollCount = MAX_ROLL;
    }
    return self;
}

-(void)roll{
    _rolldices = [NSMutableArray arrayWithObjects: [Dice dice], [Dice dice], [Dice dice],[Dice dice], [Dice dice], nil];
    rollCount--;
}
-(void)holdDie:indexOfrolldices{
    [self.currentScore addObject:[self.rolldices objectAtIndex:[indexOfrolldices integerValue]]];
    
}
-(void)displayRolledDice{
    NSMutableString *displayRolledDice = [NSMutableString new];
    for(Dice *dice in _rolldices){
        [displayRolledDice appendFormat:@" %@ ", [dice description]];
    }
    NSLog(@"%@", displayRolledDice);
}

-(void) displayScore{
    NSLog(@"Remaining Rolls: %d", rollCount);
    NSLog(@"-----------------------");
    NSLog(@"--   Current Dice    --");
    [self displayRolledDice];
    NSLog(@"");
    NSLog(@"--    Total Score    --");
//    NSLog(@"Score: %ld ", currentScore);
    NSLog(@"-----------------------");
}

@end

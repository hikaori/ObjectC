//
//  GameController.m
//  Assignmen06
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "GameController.h"
#import "InputHandler.h"
@interface GameController()
{
@private NSMutableArray *holdDices;
@private NSMutableArray *rolledDices;
}
@end

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        holdDices = [[NSMutableArray alloc]init];
        rolledDices = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)rollDie:(int)dice1FaceValue dice2FaceValue:(int)dice2FaceValue dice3FaceValue:(int)dice3FaceValue
dice4FaceValue:(int)dice4FaceValue dice5FaceValue:(int)dice5FaceValue{
    
    // addObject parameter should not be int. so convert int to NSNumber.
    [rolledDices addObject:[NSNumber numberWithInt:dice1FaceValue]];
    [rolledDices addObject:[NSNumber numberWithInt:dice2FaceValue]];
    [rolledDices addObject:[NSNumber numberWithInt:dice3FaceValue]];
    [rolledDices addObject:[NSNumber numberWithInt:dice4FaceValue]];
    [rolledDices addObject:[NSNumber numberWithInt:dice5FaceValue]];
//    NSLog(@"rolledDices[0] %@",rolledDices[0]);
}

-(void)holdDie:(int)indexNum{
    [holdDices addObject:rolledDices[indexNum]];
//    NSLog(@"holdDices[0] %@",holdDices[0]);
}

-(void)showHoldDie:(int)indexNum{
    for(int i = 0 ; i< rolledDices.count; i++){
        if(i == indexNum){
            NSLog(@"[%@]",rolledDices[indexNum]);
        }
        else{
            NSLog(@"%@",rolledDices[i]);
        }
    }
}

-(void)displayHoldDies{
    for(NSNumber *allHoldDies in holdDices ){
        NSLog(@"your hold Dis is :");
        NSLog(@"%@", allHoldDies);
    }
}
-(void)unHoldDie{
    if(holdDices.count==0){
        NSLog(@"you dont have any hold Die");
    }
    else{
        NSLog(@"@select Unhold dice of index number");
        NSString* unHoldIndexNum = [InputHandler getUserInput];
        [holdDices removeObjectAtIndex:[unHoldIndexNum intValue]];
    }
}
-(void)resetDice{
    [holdDices removeAllObjects];
    NSLog(@"now you dont have any holding Die");
}
-(void)showScore{
    int score=0;
    for(NSNumber *allholdDices in holdDices){
//        int score = 0;
        score = score + (int)allholdDices;
//        NSLog(@"score :%d",score);
    }
    NSLog(@"score :%d",score);
}



@end

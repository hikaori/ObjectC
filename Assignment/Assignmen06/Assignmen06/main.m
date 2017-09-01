//
//  main.m
//  Assignmen06
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice1 = [[Dice alloc]init];
        Dice *dice2 = [[Dice alloc]init];
        Dice *dice3 = [[Dice alloc]init];
        Dice *dice4 = [[Dice alloc]init];
        Dice *dice5 = [[Dice alloc]init];
        
        GameController *player = [[GameController alloc]init];
        int holdDiceCount = 0;
        NSString *holdinputNum =@"";
        
        while(1){
        NSLog(@"\n roll - roll these dices\n hold - chose hold dice\n un-hold - un-hold previouse dice\n resetDice - reset all held dice \n ShowScore - show your score");
        NSString *input = [InputHandler getUserInput];
            if([input isEqualToString:@"roll"]){
                [dice1 roll];
                [dice2 roll];
                [dice3 roll];
                [dice4 roll];
                [dice5 roll];
                NSLog(@"%d,%d,%d,%d,%d",dice1.faceValue,dice2.faceValue,dice3.faceValue,dice4.faceValue,dice5.faceValue);
                
                [player rollDie:dice1.faceValue dice2FaceValue:dice2.faceValue dice3FaceValue:dice3.faceValue dice4FaceValue:dice4.faceValue dice5FaceValue:dice5.faceValue];
                
                NSLog(@"@select at least one dice of index number");
                holdinputNum = [InputHandler getUserInput];
                // change string to int type
                int intHoldInputNum = [holdinputNum intValue];
                [player holdDie:(int)intHoldInputNum];
                [player showHoldDie:(int)intHoldInputNum];
                holdDiceCount++;
            }
            else if([input isEqualToString:@"hold"]){
                NSLog(@"@select at least one dice of index number");
                holdinputNum = [InputHandler getUserInput];
                // change string to int type
                int intHoldInputNum = [holdinputNum intValue];
                [player holdDie:(int)intHoldInputNum];
                [player showHoldDie:(int)intHoldInputNum];
                holdDiceCount++;
            }
            else if([input isEqualToString:@"un-hold"]){
                [player displayHoldDies];
                [player unHoldDie];
                
            }
            else if([input isEqualToString:@"resetDice"]){
                [player resetDice];
            }
            else if([input isEqualToString:@"ShowScore"]){
                [player showScore];
            }
        }
        
    }
    return 0;
}

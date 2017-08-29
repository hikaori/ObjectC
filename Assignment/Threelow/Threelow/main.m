//
//  main.m
//  Threelow
//
//  Created by kaori hirata on 2017-08-28.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GameController *player1 = [GameController new];
        InputCollector *input = [[InputCollector alloc] init];
        
        NSString *menu = @"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hold all dice\n'show' to see current dice\n'done' to end the game\n'display' to show current stats";
        
        while(YES){
            NSString *selectedMenu = [input inputForPrompt:menu];
            if([selectedMenu isEqualToString:@"roll"]){
                [player1 roll];
                [player1 displayScore];
                NSString *indexOfroll = [input inputForPrompt:@"Select at least one dice"];
                // STORE DICE NUMBER THAT PLAYER SELECTED INTO 'currentScore'
                [player1 holdDie:indexOfroll];
            }
            else if([[input inputForPrompt:menu] isEqualToString:@"hold"]){
                
            }
            
        }
        
    }
    return 0;
}

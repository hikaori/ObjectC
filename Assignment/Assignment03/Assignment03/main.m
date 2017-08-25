//
//  main.m
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreCount = [[ScoreKeeper alloc]init];
        
        while(gameOn){
            printf("if you want to quit enter 'quit'");
            NSString *input = [InputHandler getUserInput];
            //STOP GAME
            if([input isEqualToString:@"quit"]){
                gameOn = NO;
                break;
            }
            //CONTINU GAME
            else{
                    AdditionQuestion *question = [[AdditionQuestion alloc]init];
                    NSLog(@"%@",question);
                    
                    NSString *input = [InputHandler getUserInput];
                    
                    // CONVERT NSSTRING TO NSINTEGEER
                    NSInteger inputInt = [input intValue];
                    if(inputInt == question.answer){
                        NSLog(@"right");
                        scoreCount.right++;
                    }
                    else{
                        NSLog(@"wrong");
                        scoreCount.wrong++;
                    }
            }
            
            // PRINT OUT 'score: __ right, __ wrong ---- __%'
            [scoreCount getScore];
        }
    }
    return 0;
}

//
//  main.m
//  Assignment05
//
//  Created by kaori hirata on 2017-08-24.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];
        [questionFactory generateRandomQuestion];
        
        // CREATE AREA TO STORE QUESTIONS
        QuestionManager *questionMG = [[QuestionManager alloc]init];
        while(1) {
            
            Question *q1 = [[Question alloc] init];
            q1 = [questionFactory generateRandomQuestion];
            // STORE QUESTION INTO ARRAY
            [questionMG.questions addObject:q1];
            NSLog(@"%@", [q1 question]);
            
            NSString *input = [InputHandler getUserInput];
            // CONVERT NSSTRING TO NSINTEGEER
            NSInteger inputInt = [input intValue];
            q1.endTime = [NSDate date];
            
            if (q1.answer == inputInt) {
                NSLog(@"Correct!");
                [score setRight:[score right] + 1];
            } else {
                NSLog(@"Wrong! The asnwer is %ld.", [q1 answer]);
                [score setWrong:[score wrong] + 1];
            }
            
            [score printCurrentState];
            int elapsedTime = [q1 timeToAnswer];
            NSLog(@"%@",[questionMG timeOutputWithelapsedtime:elapsedTime]);
            
            
            NSLog(@"Do you want to quit? press 'q'.");
            NSString *quit = [InputHandler getUserInput];
            if ([quit isEqualToString:@"q"]) {
                break;
            } else {
                NSLog(@"Keep going!");
            }
        }
        
    }
    return 0;
}   

//
//  main.m
//  Assignment03
//
//  Created by kaori hirata on 2017-08-21.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        // CREATE AREA TO STORE QUESTIONS
        QuestionManager *questionMG = [[QuestionManager alloc]init];
        while(1) {
            
            Question *q1 = [[Question alloc] init];
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
            
//            int answerTime = (int)[q1 timeToAnswer];
//            int total = total + answerTime;
//            int average = total / (score.right + score.wrong);
//            NSLog(@"@total time: %ds, average time: %ds",total,average);

            
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

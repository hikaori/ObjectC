//
//  QuestionFactory.m
//  Assignment05
//
//  Created by kaori hirata on 2017-08-25.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"


@implementation QuestionFactory

-(Question*) generateRandomQuestion{
    
    Question *question;
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion",@"multiplicationQuestion",@"divisionQuestion"];
    
    NSString *className = questionSubclassNames[arc4random_uniform(4)];
    
    question = [[NSClassFromString(className) alloc]init];
    
    return question;
}

@end

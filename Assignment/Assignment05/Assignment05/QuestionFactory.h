//
//  QuestionFactory.h
//  Assignment05
//
//  Created by kaori hirata on 2017-08-25.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

- (Question*)generateRandomQuestion;

@end

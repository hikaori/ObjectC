//
//  InputCollector.h
//  Threelow
//
//  Created by kaori hirata on 2017-08-28.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray *history;
- (NSString *) inputForPrompt: (NSString *) promptString;

@end

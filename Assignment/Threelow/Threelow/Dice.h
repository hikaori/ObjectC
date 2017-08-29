//
//  Dice.h
//  Threelow
//
//  Created by kaori hirata on 2017-08-28.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property int faceValue;

- (instancetype)init;
+ (instancetype)dice;

@end

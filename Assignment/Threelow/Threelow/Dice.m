//
//  Dice.m
//  Threelow
//
//  Created by kaori hirata on 2017-08-28.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _faceValue = arc4random_uniform(6) + 1;
    }
    return self;
}

+ (instancetype) dice {
    return [[self alloc] init];
}

-(NSString *)description {
    switch (_faceValue) {
        case 1:
            return @"[⚀]";
            break;
        case 2:
            return @"[⚁]";
            break;
        case 3:
            return @"[⚂]";
            break;
        case 4:
            return @"[⚃]";
            break;
        case 5:
            return @"[⚄]";
            break;
        case 6:
            return @"[⚅]";
            break;
            
        default:
            return @"Invalid Die";
            break;
    }
}

@end

//
//  Contact.m
//  Assignment04
//
//  Created by kaori hirata on 2017-08-22.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Contact.h"

@implementation Contact
//- (instancetype)initWithname:(NSString*) name email :(NSString*) email
- (instancetype)init
{
    self = [super init];
    if (self) {
        _phonelabel = [[NSMutableDictionary alloc]init];
            }
    return self;
}

-(void) addPhoneNumbers:(enum Phone) type numbers: (NSString *) number{
    switch (type) {
        case Mobile:
            [_phonelabel setObject:number forKey:@"Mobile"];
            break;
        case Work:
            [_phonelabel setObject:number forKey:@"Work"];
            break;
        case Home:
            [_phonelabel setObject:number forKey:@"Home"];
            break;
            
        default:
            NSLog(@"Wrong type!");
            break;
    }
}


@end

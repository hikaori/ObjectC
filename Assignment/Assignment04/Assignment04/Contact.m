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
- (instancetype)initWithname:(NSString*) name email :(NSString*) email phonelabel :(NSString*) phonelabel pnoneNum :(NSString*) pnoneNum
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phonelabel = phonelabel;
        _pnoneNum = pnoneNum;
            }
    return self;
}

@end

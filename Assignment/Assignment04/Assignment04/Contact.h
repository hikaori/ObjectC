//
//  Contact.h
//  Assignment04
//
//  Created by kaori hirata on 2017-08-22.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property NSString* name;
@property NSString* email;
@property NSMutableDictionary* phonelabel;
@property NSString* pnoneNum;

enum Phone {Mobile, Work, Home};

- (instancetype)init;


-(void) addPhoneNumbers:(enum Phone) type numbers: (NSString *) number;
@end

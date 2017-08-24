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
@property NSString* phonelabel;
@property NSString* pnoneNum;

- (instancetype)initWithname:(NSString*) name email :(NSString*) email phonelabel :(NSString*) phonelabel pnoneNum :(NSString*) pnoneNum;

@end

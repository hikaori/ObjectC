//
//  ContactList.h
//  Assignment04
//
//  Created by kaori hirata on 2017-08-22.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray* contactlistArray;
@property NSUInteger* idNum;

- (instancetype)init;

- (void)addContact:(Contact *)newContact;
-(NSMutableArray *)printList;
-(void)printtargetcontact:(NSString *)strInput;
-(void)searchcontact:(NSString *)strInput;
-(Boolean)isExistsEmail:(NSString *)strInput;


@end

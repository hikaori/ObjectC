//
//  ContactList.m
//  Assignment04
//
//  Created by kaori hirata on 2017-08-22.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contactlistArray = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.contactlistArray addObject:newContact];
}

-(NSMutableArray *)printList{
    for(Contact *contact in self.contactlistArray){
        //GET INDEX NUMBER OF 'contact' IN 'contactlistArray'.
        NSInteger index = [self.contactlistArray indexOfObject:contact];
        NSLog(@"%lu:<%@> ()",index,contact.name);
    }
    return nil;
}

-(void)printtargetcontact:(NSString *)strInput{
     NSInteger intInput = [strInput intValue];
//    NSLog(@"%lu",self.contactlistArray.count);
    if(intInput >= self.contactlistArray.count){
        NSLog(@"not found");
    }
    else{
        Contact *result = self.contactlistArray[intInput];
        NSLog(@"id:%lu name:%@ email:%@\n",intInput,result.name,result.email);
        for(id key in [result.phonelabel keyEnumerator]) {
            NSLog(@"key:%@ Value:%@",key ,[result.phonelabel objectForKey:key]);
        }
    }
}

-(void)searchcontact:(NSString *)strInput{
    for(int i = 0; i < self.contactlistArray.count; i++){
        Contact *a = self.contactlistArray[i];
        if([a.name containsString:strInput] || [a.email containsString:strInput]){
            NSLog(@"name:%@ email:%@",a.name,a.email);
        }
    }
}
-(Boolean)isExistsEmail:(NSString *)strInput{
    NSLog(@"%lu",self.contactlistArray.count);
    for(int i = 0; i < self.contactlistArray.count; i++){
        Contact *b = self.contactlistArray[i];
        if([b.email isEqualToString:strInput]){
            NSLog(@"The Email already exists. try again");
            return true;
            break;
        }
    }
    return false;
}



@end

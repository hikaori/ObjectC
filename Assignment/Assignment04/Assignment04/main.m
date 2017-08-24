//
//  main.m
//  Assignment04
//
//  Created by kaori hirata on 2017-08-22.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boolean ExistsEmail = false;
        ContactList *contactlist = [[ContactList alloc]init];
        InputCollector *input = [[InputCollector alloc]init];

        while(1){
        NSString *strInput = [InputCollector getUserInput:10 prompt:@"What would you like to do next?\n new - Create a new contact.\n list - List all contacts.\n show - Display contact details\n history - History of last 3 command\n find - quit - Exit Application."];
            [input addCommand:strInput];
            
            // USER INPUT 'quit'--Exit Application.
            if([strInput isEqualToString:@"quit"]){
                break;
            }
            // USER INPUT 'new'--Create a new contact
            else if ([strInput isEqualToString:@"new"]){
                NSString *InputEmail = [InputCollector getUserInput:20 prompt:@"enter your email\n"];
                ExistsEmail = [contactlist isExistsEmail:InputEmail];
                // IF INPUT EMAIL ADDRESS EXISTS DO NOTING.
                if(ExistsEmail){
                    //do notning
                }
                else{
                    NSString *InputName = [InputCollector getUserInput:20 prompt:@"enter your name\n"];
                    Contact *newcontact = [[Contact alloc]init];
                    NSString *InputPhonelabel = [InputCollector getUserInput:20 prompt:@"enter phone InputPhonelabel\n"];
                    NSString *InputPhoneNum = [InputCollector getUserInput:20 prompt:@"enter phone InputPhoneNum ex)444-555-3123\n"];
                    [newcontact setPhonelabel:InputPhonelabel];
                    [newcontact setPnoneNum:InputPhoneNum];
                    [newcontact setEmail:InputEmail];
                    [newcontact setName:InputName];
                    
                    // ADD NEW CONTACT TO CONTACTLIST
                    [contactlist addContact:newcontact];
                }
            }
            // USER INPUT 'list'--- List all contacts
            else if([strInput isEqualToString:@"list"]){
                [contactlist printList];
            }
            
            // USER INPUT 'show'--- Display contact details
            else if([strInput isEqualToString:@"show"]){
                NSString *strInput = [InputCollector getUserInput:10 prompt:@"enter contact id Number"];
                [contactlist printtargetcontact:strInput];
            }
            
            // USER INPUT 'find'--- Seach
            else if([strInput isEqualToString:@"find"]){
                NSString *strInput = [InputCollector getUserInput:10 prompt:@"enter search word"];
                [contactlist searchcontact:strInput];
            }
            
            //USER INPUT 'history' ---Command history of last 3 commands
            else if([strInput isEqualToString:@"history"]){
                [input historycommand];
            }
            else{
                NSLog(@"this is not available command");
            }
        }
    }
    return 0;
}

//
//  main.m
//  Assignment01
//
//  Created by kaori hirata on 2017-08-17.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt){
    if(maxLength < 1){
        maxLength = 255;
    }
    NSLog(@"%@",prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars,maxLength,stdin);
    if(result != NULL){
        return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:
               [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return nil;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(1){
            NSString *strInput = getUserInput(255, @"\nEnter your String: ('q' to quit)");
            if ([strInput isEqualToString:@"q"]){break;}
            while(1){
                NSString *option = getUserInput(10, @"\nChoose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove Punctuations\n9. Done\n");
                //1. Uppercase
                if([option isEqualToString:@"1"]){
                    NSLog(@"%@",[strInput uppercaseString]);
                }
                else if([option isEqualToString:@"2"]){
                //2. Lowercase
                    NSLog(@"%@",[strInput lowercaseString]);
                }
                else if([option isEqualToString:@"3"]){
                //3. Numberize
                    NSNumber *number = [[[NSNumberFormatter alloc]init] numberFromString:strInput];
                    if(number != nil){
                        NSLog(@"%ld", [number integerValue]);
                    }
                    else{
                        NSLog(@"%@", @"Input Cannot Be Converted to Integer.");
                    }
                }
                else if([option isEqualToString:@"4"]){
                //4. Canadianize
                    NSLog(@"%@", [strInput stringByAppendingString:@", eh?"]);
                }
                //5. Respond
                else if([option isEqualToString:@"4"]){
                    if([strInput characterAtIndex:[strInput length]-1] == '?'){
                        NSLog(@"%@",@"I don't know");
                    }
                    else if([strInput characterAtIndex:[strInput length]-1] == '!'){
                        NSLog(@"%@",@"calm down");
                    }
                }
                //6. De-Space-It
                else if([option isEqualToString:@"6"]){
                    NSLog(@"%@",[strInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                }
                //9. Done
                else if([option isEqualToString:@"9"]){
                    NSLog(@"Next String!");
                    break;
                }
                else{
                    NSLog(@"Not available.");
                }
            }
        }
    }
    return 0;
}

//
//  main.m
//  Assignment
//
//  Created by kaori hirata on 2017-08-17.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        char inputnum[3]; //Number + \n +\0 = 3
        char inputnum2[3];
        char inputchars[255];
        
        
        printf("Select Number 1-6 (exit:7)");
        fgets(inputnum,3,stdin);
        NSString *inputNum = [NSString stringWithUTF8String:inputnum];
        
        while([inputNum intValue] != 7){
        
            if([inputNum intValue] == 1){
                //1. Uppercase
                printf("Input a string(lower):");
                fgets(inputchars,255,stdin);
                NSString *inputString = [NSString stringWithCString:inputchars encoding:NSASCIIStringEncoding];
                NSString *upperString = [inputString uppercaseString];
                NSLog(@"your string of Upper is %@\n",upperString);
                
                printf("Select Number 1-6 (exit:7)");
                fgets(inputnum2,3,stdin);
                NSString *inputNum2 = [NSString stringWithUTF8String:inputnum2];
                inputNum = inputNum2;
            }
            
            else if([inputNum intValue] == 2){
                //2. Lowercase
                printf("Input a string(Upper):");
                fgets(inputchars,255,stdin);
                NSString *inputLowerString = [NSString stringWithCString:inputchars encoding:NSASCIIStringEncoding];
                NSString *lowerString = [inputLowerString lowercaseString];
                NSLog(@"your string of lower is %@\n",lowerString);
                
                printf("Select Number 1-6 (exit:7)");
                fgets(inputnum2,3,stdin);
                NSString *inputNum2 = [NSString stringWithUTF8String:inputnum2];
                inputNum = inputNum2;
            }
            
            else if([inputNum intValue] == 3){
                //3. Numberize
                printf("Input Number:");
                fgets(inputchars,255,stdin);
                NSString *inputNumString = [NSString stringWithCString:inputchars encoding:NSASCIIStringEncoding];
                NSInteger intNum = [inputNumString integerValue];
                NSLog(@"your Number is %zd\n",intNum);
                
                printf("Select Number 1-6 (exit:7)");
                fgets(inputnum2,3,stdin);
                NSString *inputNum2 = [NSString stringWithUTF8String:inputnum2];
                inputNum = inputNum2;
            }
            
            else if([inputNum intValue] == 4){
                //4. Canadianize
                printf("Input Sentence:");
                fgets(inputchars,255,stdin);
                NSMutableString *inputSentence = [NSMutableString stringWithCString:inputchars encoding:NSASCIIStringEncoding];
                [inputSentence insertString:@", eh?" atIndex:5];
                NSLog(@"Input Sentence + ',eh?' is %@\n",inputSentence);
                
                printf("Select Number 1-6 (exit:7)");
                fgets(inputnum2,3,stdin);
                NSString *inputNum2 = [NSString stringWithUTF8String:inputnum2];
                inputNum = inputNum2;
            }
            
            else if([inputNum intValue] == 5){
                //5. Respond
                printf("Input Sententce with mark :");
                fgets(inputchars,255,stdin);
                NSString *inputWithMark = [NSString stringWithCString:inputchars encoding:NSASCIIStringEncoding];
                inputWithMark = [inputWithMark stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                inputWithMark = [inputWithMark stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
                if([inputWithMark hasSuffix:@"?"]== true){
                    NSLog(@"I don't know");
                }
                else if ([inputWithMark hasSuffix:@"!"] == true){
                    NSLog(@"Whoa, calm down!");
                }
                
                printf("Select Number 1-6 (exit:7)");
                fgets(inputnum2,3,stdin);
                NSString *inputNum2 = [NSString stringWithUTF8String:inputnum2];
                inputNum = inputNum2;
            }
            
            else if([inputNum intValue] == 6){
                //6. De-Space-It
                printf("Input Sentence with space :");
                fgets(inputchars,255,stdin);
                NSString *inputWithSpace = [NSString stringWithCString:inputchars encoding:NSASCIIStringEncoding];
                inputWithSpace = [inputWithSpace stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"input Sentence with space: %@",inputWithSpace);
                
                printf("Select Number 1-6 (exit:7)");
                fgets(inputnum2,3,stdin);
                NSString *inputNum2 = [NSString stringWithUTF8String:inputnum2];
                inputNum = inputNum2;
            }
            
            else if([inputNum intValue] == 7){
                break;
            }
        }
    }
    return 0;
}

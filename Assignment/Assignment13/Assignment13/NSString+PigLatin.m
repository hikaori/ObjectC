//
//  NSString+PigLatin.m
//  Assignment13
//
//  Created by kaori hirata on 2017-08-25.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
-(void)stringByPigLatinization:(NSString*)str{
    // sentence to word
    NSArray *words = [str componentsSeparatedByString: @" "];
    NSMutableArray *mutableWords = [NSMutableArray arrayWithCapacity:[words count]];
    [mutableWords addObjectsFromArray:words];
    
    for(int i = 0; i < mutableWords.count; i++){
    
        NSString *word = mutableWords[i];
        
        NSArray *target = [NSArray arrayWithObjects:@"a", @"i", @"u", @"e", @"o", nil];
        for(int k = 0; k < target.count; k++){
        
            NSRange range = [word rangeOfString:target[k]];
            if([word rangeOfString:target[k]].location == NSNotFound){
                // do nothing
            }
            else{
                // ex) Kala -> ala
                NSString *targetTobackSubstring = [[word substringFromIndex:NSMaxRange(range) - 1 ]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                // ex) Kala -> K
                NSString *frontToTagetSubstring = [word substringToIndex:NSMaxRange(range) - 1];
                // merge two parts of word and add 'ay'
                NSString *pigLatinizedstr = [[targetTobackSubstring stringByAppendingString:frontToTagetSubstring] stringByAppendingString:@"ay"];
                    //NSLog(@"%@",pigLatinizedstr);
                
                // change first word to uppercase
                NSString *resutl = pigLatinizedstr;
                resutl = [resutl stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[resutl substringToIndex:1] uppercaseString]];
                
                NSLog(@"%@",resutl);
                break;
            }

        }
    }
    
}
@end

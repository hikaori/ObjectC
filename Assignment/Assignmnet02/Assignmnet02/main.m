//
//  main.m
//  Assignmnet02
//
//  Created by kaori hirata on 2017-08-18.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithHeight:100 Width:100 Length:100];
        Box *box2 = [[Box alloc] initWithHeight:10 Width:10 Length:10];
        
        NSLog(@"Box1 is %f times box2",[box1 ratioToAnotherBox:box2]);
    }
    return 0;
}

//
//  Box.m
//  Assignmnet02
//
//  Created by kaori hirata on 2017-08-18.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float) h Width:(float) w Length: (float) l
{
    self = [super init];
    if(self){
        _height = h;
        _width = w;
        _length = l;
    }
    return self;
}

-(float) getVolume{
    return self.height * self.width * self.length;
}

-(float) ratioToAnotherBox: (Box *)box{
    return self.getVolume/box.getVolume;
}


@end

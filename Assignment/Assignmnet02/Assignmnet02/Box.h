//
//  Box.h
//  Assignmnet02
//
//  Created by kaori hirata on 2017-08-18.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic,assign) float width;
@property (nonatomic,assign) float length;

-(instancetype)initWithHeight:(float) h Width:(float) w Length:(float) l;
-(float) getVolume;
-(float) ratioToAnotherBox: (Box *)box;

@end

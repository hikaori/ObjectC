//
//  Item.h
//  McDonald's
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Packing;

@protocol Item <NSObject>

@optional
-(NSString*)name;
-(float) price;


@required
-(id<Packing>) Paking;

@end

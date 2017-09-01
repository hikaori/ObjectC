//
//  Burger.h
//  McDonald's
//
//  Created by kaori hirata on 2017-08-30.
//  Copyright © 2017 kaori hirata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "Wrapper.h"

@interface Burger : NSObject<Item>

// need override method because of protocol class 'Item'
-(id<Packing>) Paking;


@end

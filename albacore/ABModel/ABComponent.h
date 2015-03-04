//
//  ABComponent.h
//  albacore
//
//  Created by Mark Christenson on 3/4/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABComponent : NSObject

@property(nonatomic, strong)NSDecimalNumber *height;
@property(nonatomic, strong)NSDecimalNumber *period;
@property(nonatomic, strong)NSDecimalNumber *direction;
@property(nonatomic, strong)NSString *compassDirection;

@end

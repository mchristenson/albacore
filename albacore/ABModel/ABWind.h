//
//  ABWind.h
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABWind : NSObject

@property(nonatomic, strong)NSDecimalNumber *speed;
@property(nonatomic, strong)NSDecimalNumber *direction;
@property(nonatomic, strong)NSString *compassDirection;
@property(nonatomic, strong)NSDecimalNumber *chill;
@property(nonatomic, strong)NSDecimalNumber *gusts;
@property(nonatomic, strong)NSString *unit;

@end

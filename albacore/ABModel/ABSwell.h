//
//  ABSwell.h
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABSwell : NSObject

@property(nonatomic, strong)NSDecimalNumber *minBreakingHeight;
@property(nonatomic, strong)NSDecimalNumber *absMinBreakingHeight;
@property(nonatomic, strong)NSDecimalNumber *maxBreakingHeight;
@property(nonatomic, strong)NSDecimalNumber *absMaxBreakingHeight;
@property(nonatomic, strong)NSString *unit;
@property(nonatomic, strong)NSArray *components;

@end

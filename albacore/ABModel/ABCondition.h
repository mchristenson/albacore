//
//  ABCondition.h
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABCondition : NSObject

@property(nonatomic, strong)NSDecimalNumber *pressure;
@property(nonatomic, strong)NSDecimalNumber *temperature;
@property(nonatomic, strong)NSDecimalNumber *weather;
@property(nonatomic, strong)NSString *unitPressure;
@property(nonatomic, strong)NSString *unitTemperature;


@end

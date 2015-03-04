//
//  ABReportSlice.h
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ABSwell.h"
#import "ABWind.h"
#import "ABCondition.h"
#import "ABCharts.h"

@interface ABReportSlice : NSObject

@property (nonatomic, strong)NSString *timestamp;
@property (nonatomic)NSInteger *solidRating;
@property (nonatomic)NSInteger *fadedRating;
@property (nonatomic, strong)ABSwell *swell;
@property (nonatomic, strong)ABWind *wind;
@property (nonatomic, strong)ABCondition *condition;
@property (nonatomic, strong)ABCharts *charts;

@end

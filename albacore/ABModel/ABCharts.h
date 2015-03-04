//
//  ABCharts.h
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABCharts : NSObject

@property(nonatomic, strong)NSString *swellURL;
@property(nonatomic, strong)NSString *periodURL;
@property(nonatomic, strong)NSString *windURL;
@property(nonatomic, strong)NSString *pressureURL;
@property(nonatomic, strong)NSString *sstURL;

@end

//
//  ABSurfSpot.h
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ABSurfSpot : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *apiid;
@property(nonatomic, strong) NSMutableArray *reportDetails;

- (instancetype)initWithName:(NSString *)name id:(NSString *)apiid;

@end

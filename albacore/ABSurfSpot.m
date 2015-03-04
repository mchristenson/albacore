//
//  ABSurfSpot.m
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import "ABSurfSpot.h"

@implementation ABSurfSpot

- (instancetype)initWithName:(NSString *)name id:(NSString *)id
{
    if (self)
    {
        _name = name;
        _id = id;
        NSLog(@"Init ABSurfSpot: %@ Complete", name);
    }
    return self;
}

@end

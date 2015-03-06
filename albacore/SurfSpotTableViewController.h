//
//  SurfSpotTableViewController.h
//  albacore
//
//  Created by Mark Christenson on 3/6/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SurfSpotViewController.h"
#import "ABSurfSpot.h"


@interface SurfSpotTableViewController : UITableViewController

@property(nonatomic, strong) SurfSpotViewController *surfSpotView;

@property (nonatomic, retain) NSArray *surfSpots;

@end

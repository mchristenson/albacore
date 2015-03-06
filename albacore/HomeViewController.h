//
//  HomeViewController.h
//  albacore
//
//  Created by Mark Christenson on 2/24/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SurfSpotViewController.h"

@interface HomeViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

/* CHILDREN */
@property(nonatomic, strong) SurfSpotViewController *surfSpotView;
    
/* ROOT */
@property(nonatomic, strong) UITableViewController *surfSpotTableViewController;
@property(nonatomic, strong) NSArray *surfSpotList;

@end

//
//  HomeViewController.h
//  albacore
//
//  Created by Mark Christenson on 2/24/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpotViewController.h"

@interface HomeViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

//Spot Controller
@property(nonatomic, strong) SpotViewController *spotView;
    
//Table View
@property(nonatomic, strong) UITableView *spotTableView;
@property(nonatomic,strong) NSArray *spotList;

@end

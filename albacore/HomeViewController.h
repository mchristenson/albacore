//
//  HomeViewController.h
//  albacore
//
//  Created by Mark Christenson on 2/24/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpotViewController.h"

@interface HomeViewController : UIViewController
{
    UILabel *locationLabel;
    NSString *locationLabelString;
    SpotViewController *spotView;
}

@end

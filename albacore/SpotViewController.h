//
//  SpotViewController.h
//  albacore
//
//  Created by Mark Christenson on 2/19/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AsyncData.h"

@interface SpotViewController : UIViewController<NSURLConnectionDataDelegate, AsyncDataProtocol>
{
    UILabel *locationLabel;
    NSString *locationLabelString;
}


@end


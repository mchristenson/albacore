//
//  SurfSpotViewController.h
//  albacore
//
//  Created by Mark Christenson on 2/19/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SurfSpotViewController : UIViewController
{
    /* LABEL IVARS */
    UILabel *reportLabel;
    UILabel *mapLabel;
    UILabel *averagesLabel;
    UILabel *attractionsLabel;
    
    /* LABEL SUPPORT IVARS */
    NSString *reportLabelString;
    NSString *mapLabelString;
    NSString *averagesLabelString;
    NSString *attractionsLabelString;
}


@end


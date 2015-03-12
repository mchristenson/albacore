//
//  SurfSpotViewController.h
//  albacore
//
//  Created by Mark Christenson on 2/19/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABSurfSpot.h"

@interface SurfSpotViewController : UIViewController
{
    /* HEADER LABEL IVARS */
    UILabel *reportLabel;
    UILabel *mapLabel;
    UILabel *averagesLabel;
    UILabel *attractionsLabel;
    
    /* HEADER LABEL SUPPORT IVARS */
    NSString *reportLabelString;
    NSString *mapLabelString;
    NSString *averagesLabelString;
    NSString *attractionsLabelString;
    
    /* BODY LABEL IVARS */
    UITextView *currentReportLabel;
}

@property ABSurfSpot *surfSpot;

@end


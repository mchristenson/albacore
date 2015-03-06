//
//  HomeViewController.m
//  albacore
//
//  Created by Mark Christenson on 2/24/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController


/* INITIALIZATION */
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        NSLog(@"init");
    }
    
    return self;
}


/* VIEW SETUP */
- (void)loadView
{
    //Setup self.view
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [[UIColor alloc]initWithRed:0.63 green:0.96 blue:1.0 alpha:1.0];
    
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad");
}


/* TOUCH HANDLERS */
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.surfSpotView = [[SurfSpotViewController alloc] initWithNibName:nil bundle:nil];
    self.surfSpotView.title = @"Santa Monica";
    [self.navigationController pushViewController:self.surfSpotView animated:YES];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}


/* UTLILITY METHODS */
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

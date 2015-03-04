//
//  ViewController.m
//  albacore
//
//  Created by Mark Christenson on 2/19/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import "SpotViewController.h"

@interface SpotViewController ()

@end

@implementation SpotViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        NSLog(@"init");
    }
    
    return self;
}

- (void)loadView
{
    self.view = [[UIView alloc] initWithFrame:CGRectZero];
    self.view.backgroundColor = [[UIColor alloc]initWithRed:0.63 green:0.96 blue:1.0 alpha:1.0];
    
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.frame = [UIScreen mainScreen].bounds;
    
    locationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    locationLabel.text = locationLabelString;
    locationLabel.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:locationLabel];
    locationLabel.frame = CGRectMake(10, 40, 300, 44);
    
    NSLog(@"viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated
{
    locationLabel.center = CGPointMake(-500.0, 150);
    NSLog(@"viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    locationLabel.center = CGPointMake(300.0, 150);
    [UIView commitAnimations];
    NSLog(@"viewDidAppear");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

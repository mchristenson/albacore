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


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    spotView = [[SpotViewController alloc] initWithNibName:nil bundle:nil];
    spotView.title = @"Santa Monica";
    [self.navigationController pushViewController:spotView animated:YES];
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

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        locationLabelString = @"Hello, Albacore";
        NSLog(@"init");
        
    }
    
    return self;
}

- (void)awakeFromNib
{
    locationLabelString= @"Hello, Albacore again.";
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

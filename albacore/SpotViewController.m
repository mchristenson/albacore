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
        reportLabelString = @" Report";
        mapLabelString = @" Map";
        averagesLabelString = @" Averages";
        attractionsLabelString = @" Attractions";
        
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

    reportLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 100.0, 250.0, 40.0)];
    reportLabel.text = reportLabelString;
    reportLabel.font = [UIFont fontWithName:@"Menlo-Italic" size:17.0];
    reportLabel.textColor = [UIColor darkGrayColor];
    
    mapLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 200.0, 250.0, 40.0)];
    mapLabel.text = mapLabelString;
    mapLabel.font = [UIFont fontWithName:@"Menlo-Italic" size:17.0];
    mapLabel.textColor = [UIColor darkGrayColor];
    
    averagesLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 300.0, 250.0, 40.0)];
    averagesLabel.text = averagesLabelString;
    averagesLabel.font = [UIFont fontWithName:@"Menlo-Italic" size:17.0];
    averagesLabel.textColor = [UIColor darkGrayColor];
    
    attractionsLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0, 400.0, 250.0, 40.0)];
    attractionsLabel.text = attractionsLabelString;
    attractionsLabel.font = [UIFont fontWithName:@"Menlo-Italic" size:17.0];
    attractionsLabel.textColor = [UIColor darkGrayColor];
    
    [self.view addSubview:reportLabel];
    [self.view addSubview:mapLabel];
    [self.view addSubview:averagesLabel];
    [self.view addSubview:attractionsLabel];
    
    NSLog(@"viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated
{
    reportLabel.center = CGPointMake(-500.0, 100.0);
    mapLabel.center = CGPointMake(-500.0, 200.0);
    averagesLabel.center = CGPointMake(-500.0, 300.0);
    attractionsLabel.center = CGPointMake(-500.0, 400.0);
    
    NSLog(@"viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    reportLabel.center = CGPointMake(125.0, 100.0);
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    mapLabel.center = CGPointMake(125.0, 200.0);
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    averagesLabel.center = CGPointMake(125.0, 300.0);
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];
    attractionsLabel.center = CGPointMake(125.0, 400.0);
    [UIView commitAnimations];
    
    NSLog(@"viewDidAppear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

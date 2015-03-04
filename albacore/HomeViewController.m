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


// INITIALIZATION

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        NSLog(@"init");
    }
    
    return self;
}


// VIEW SETUP

- (void)loadView
{
    //Setup self.view
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [[UIColor alloc]initWithRed:0.63 green:0.96 blue:1.0 alpha:1.0];
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupSpotData];
    
    [self setupSpotTableView];
    
    NSLog(@"viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated
{
    //locationLabel.center = CGPointMake(-500.0, 150);
    NSLog(@"viewWillAppear");
}

-(void)viewDidAppear:(BOOL)animated
{
    //    [UIView beginAnimations:nil context:nil];
    //    [UIView setAnimationDuration:0.5];
    //    locationLabel.center = CGPointMake(300.0, 150);
    //    [UIView commitAnimations];
    NSLog(@"viewDidAppear");
    
}


// SETUP DATA AND CHILDREN

- (void)setupSpotData
{
    self.spotList = [[NSArray alloc] initWithObjects:@"Santa Monica Pier", @"Bay Street", @"El Porto", nil];
}

- (void)setupSpotTableView
{
    CGRect frame = [UIScreen mainScreen].bounds;
    CGRect viewFrame = CGRectInset(frame, 10, 10);
    
    self.spotTableViewController.tableView = [[UITableView alloc] initWithFrame:viewFrame style:UITableViewStylePlain];
    
    [self.view addSubview:self.spotTableViewController.tableView];
    self.spotTableViewController.tableView.delegate = self;
    self.spotTableViewController.tableView.dataSource = self;
}


// TOUCHES

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.spotView = [[SpotViewController alloc] initWithNibName:nil bundle:nil];
    self.spotView.title = @"Santa Monica";
    [self.navigationController pushViewController:self.spotView animated:YES];
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


//  TABLE VIEW DELEGATE METHODS

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger itemCount = [self.spotList count];
    return itemCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"normal"];
    
    //build cell views...
    cell.textLabel.text = [self.spotList objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    CGFloat heightInPoints = 0.0;
    return heightInPoints;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectZero];
    
    return headerView;
}



// OTHER METHODS

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

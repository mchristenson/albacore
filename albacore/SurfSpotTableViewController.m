//
//  SurfSpotTableViewController.m
//  albacore
//
//  Created by Mark Christenson on 3/6/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import "SurfSpotTableViewController.h"

@interface SurfSpotTableViewController ()

@end

@implementation SurfSpotTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupMyData];
    
    [self setupMyView];

}

- (void)setupMyData
{
    self.surfSpots = [NSArray arrayWithObjects: [[ABSurfSpot alloc] initWithName:@"Santa Monica Pier" id:@"280"],
                                                [[ABSurfSpot alloc] initWithName:@"Bay Street" id:@"2613"],
                                                [[ABSurfSpot alloc] initWithName:@"El Porto" id:@"2677"],
                                                [[ABSurfSpot alloc] initWithName:@"Sunset Blvd" id:@"3673"],
                                                [[ABSurfSpot alloc] initWithName:@"Zuma Beach" id:@"853"],
                                                nil];
}

- (void)setupMyView
{
    self.view.backgroundColor = [[UIColor alloc]initWithRed:0.63 green:0.96 blue:1.0 alpha:1.0];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.surfSpots.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"normal"];
    
    ABSurfSpot *tempSS = [self.surfSpots objectAtIndex:indexPath.row];
    cell.textLabel.text = tempSS.name;
    cell.backgroundColor = [[UIColor alloc]initWithRed:0.63 green:0.96 blue:1.0 alpha:1.0];
    
    UIView *backgroundColorView = [[UIView alloc] init];
    backgroundColorView.backgroundColor = [[UIColor alloc]initWithRed:0.02 green:1.0 blue:0.78 alpha:1.0];
    [cell setSelectedBackgroundView:backgroundColorView];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    self.surfSpotView = [[SurfSpotViewController alloc] initWithNibName:nil bundle:nil];
    self.surfSpotView.surfSpot = [self.surfSpots objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:self.surfSpotView animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

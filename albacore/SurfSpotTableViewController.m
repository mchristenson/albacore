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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.surfSpots.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"normal"];
    
    ABSurfSpot *tempSS = [self.surfSpots objectAtIndex:indexPath.row];
    cell.textLabel.text = tempSS.name;
    cell.backgroundColor = [[UIColor alloc]initWithRed:0.63 green:0.96 blue:1.0 alpha:1.0];
    
    UIView *backgroundColorView = [[UIView alloc] init];
    backgroundColorView.backgroundColor = [[UIColor alloc]initWithRed:0.02 green:1.0 blue:0.78 alpha:1.0];
    [cell setSelectedBackgroundView:backgroundColorView];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

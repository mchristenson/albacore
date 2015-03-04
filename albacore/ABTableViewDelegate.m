//
//  ABTableViewDelegate.m
//  albacore
//
//  Created by Mark Christenson on 3/3/15.
//  Copyright (c) 2015 Mark Christenson. All rights reserved.
//

#import "ABTableViewDelegate.h"

@implementation ABTableViewDelegate

- (void)setupSurfSpots:(NSString *)filename
{
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end

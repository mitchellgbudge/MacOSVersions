//
//  LSIVersionsTableViewController.m
//  MacOSVersions
//
//  Created by Mitchell Budge on 7/15/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

#import "LSIVersionsTableViewController.h"
#import "LSIVersionController.h"
#import "LSIMacOSVersion.h"

@interface LSIVersionsTableViewController ()

@end

@implementation LSIVersionsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self != nil) {
        _versionController = [[LSIVersionController alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.versionController.versions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VersionCell" forIndexPath:indexPath];
    LSIMacOSVersion *version = [[[self versionController] versions] objectAtIndex:[indexPath row]];
    cell.textLabel.text = version.codename;
    cell.detailTextLabel.text = version.releaseDate;
    return cell;
}

@end

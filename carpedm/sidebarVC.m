//
//  sidebarVC.m
//  carpedm
//
//  Created by ess on 20/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "sidebarVC.h"
#import "SWRevealViewController.h"

@interface sidebarVC ()

@end

@implementation sidebarVC {
    NSArray *menuItems;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    menuItems = @[@"Home", @"Maps", @"My bookings"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [[menuItems objectAtIndex:indexPath.row] capitalizedString];
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

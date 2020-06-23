//
//  ATMZEntryListTableViewController.m
//  Journal-OBJC
//
//  Created by Victor Monteiro on 6/22/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

#import "ATMZEntryListTableViewController.h"
#import "ATMZEntryController.h"
#import "ATMZDetailViewController.h"

@interface ATMZEntryListTableViewController ()

@end

@implementation ATMZEntryListTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return ATMZEntryController.shared.entries.count ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    // Configure the cell...
   
    ATMZEntry *entries = ATMZEntryController.shared.entries[indexPath.row];
  
    cell.textLabel.text = entries.entryTitle;
    cell.detailTextLabel.text = entries.note;
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        ATMZEntry * entryToDelete = ATMZEntryController.shared.entries[indexPath.row];
        [ATMZEntryController.shared deleteEntry:entryToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:(@"toDetailScreen")]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        ATMZDetailViewController *detailVC = segue.destinationViewController;
        ATMZEntry *entries = ATMZEntryController.shared.entries[indexPath.row];
        detailVC.entries = entries;
    }
}


@end

//
//  ATMZDetailViewController.m
//  Journal-OBJC
//
//  Created by Victor Monteiro on 6/22/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

#import "ATMZDetailViewController.h"
#import "ATMZEntryController.h"

@interface ATMZDetailViewController ()

@end

@implementation ATMZDetailViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    _entryTitleLabel.text = @"";
    _notesTextView.text = @"";
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender
{
        NSString *titleText = _entryTitleLabel.text;
        NSString *notesText = _notesTextView.text;
        [ATMZEntryController.shared createEntry:titleText note:notesText];
        
        [self.navigationController popViewControllerAnimated:YES];
   
}
@end

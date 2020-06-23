//
//  ATMZDetailViewController.h
//  Journal-OBJC
//
//  Created by Victor Monteiro on 6/22/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ATMZEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATMZDetailViewController : UIViewController

//MARK: - IBOutlet
@property (weak, nonatomic) IBOutlet UITextField *entryTitleLabel;
@property (weak, nonatomic) IBOutlet UITextView *notesTextView;

//MARK: - Properties
@property (nonatomic, strong)ATMZEntry *entries;

//MARK: - IBAction
- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender;


@end

NS_ASSUME_NONNULL_END

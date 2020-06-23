//
//  ATMZEntryController.h
//  Journal-OBJC
//
//  Created by Victor Monteiro on 6/22/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATMZEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATMZEntryController : NSObject

//properties
@property (nonatomic, strong) NSMutableArray *entries;

//shared instance
+ (ATMZEntryController *) shared;

//Crud Functions
- (void) createEntry:(NSString *)title note:(NSString *)note;
- (void) updateEntry:(ATMZEntry *)entry title:(NSString *)title note:(NSString *)note;
- (void) deleteEntry:(ATMZEntry *)entry;

@end

NS_ASSUME_NONNULL_END

//
//  ATMZEntryController.m
//  Journal-OBJC
//
//  Created by Victor Monteiro on 6/22/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

#import "ATMZEntryController.h"
#import "ATMZEntry.h"

@implementation ATMZEntryController

+ (ATMZEntryController *)shared
{
    static ATMZEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [ATMZEntryController new];
    });
    
    return shared;
}

-(void)createEntry:(NSString *)title note:(NSString *)note
{
    ATMZEntry *newEntry = [[ATMZEntry alloc] initWithEntry:title note:note];
    [_entries addObject:newEntry];
}

- (void)updateEntry:(ATMZEntry *)entry title:(NSString *)title note:(NSString *)note
{
    title = entry.entryTitle;
    note = entry.note;
}

- (void)deleteEntry:(ATMZEntry *)entry
{
    // Int: i = 20
    NSInteger i = [_entries indexOfObject:entry];
    [_entries removeObjectAtIndex: i];
}

@end

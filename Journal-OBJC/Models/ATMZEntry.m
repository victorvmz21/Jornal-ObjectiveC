//
//  ATMZEntry.m
//  Journal-OBJC
//
//  Created by Victor Monteiro on 6/22/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

#import "ATMZEntry.h"

@implementation ATMZEntry

//implementing Initializer

- (instancetype)initWithEntry:(NSString *)entryTitle note:(NSString *)note
{
    self = [super init];
    
    if (self) {
        _entryTitle = entryTitle;
        _note = note;
    }

    return self;
}

@end

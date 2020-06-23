//
//  ATMZEntry.h
//  Journal-OBJC
//
//  Created by Victor Monteiro on 6/22/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ATMZEntry : NSObject

//MARK: Properties
@property (nonatomic, copy, readonly) NSString *entryTitle;
@property (nonatomic, copy, readonly) NSString *note;
//@property (nonatomic, strong) NSDate *timeStamp;

//Initializer
- (instancetype) initWithEntry:(NSString *)entryTitle note:(NSString *)note;


@end

NS_ASSUME_NONNULL_END

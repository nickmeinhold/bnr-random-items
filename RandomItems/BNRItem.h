//
//  BNRItem.h
//  RandomItems
//
//  Created by Nick Meinhold on 22/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (strong, nonatomic) BNRItem *containedItem;
@property (weak, nonatomic) BNRItem *container;

@property (copy, nonatomic) NSString *itemName;
@property (copy, nonatomic) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (strong, nonatomic, readonly) NSDate *dateCreated;

+(instancetype)randomItem;

// Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString*)name valueInDollars:(int)v serialNumber:(NSString*)sNumber;
-(instancetype)initWithItemName:(NSString*)name serialNumber:(NSString*)sNumber;
-(instancetype)initWithItemName:(NSString*)name;

@end

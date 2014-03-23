//
//  BNRItem.h
//  RandomItems
//
//  Created by Nick Meinhold on 22/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
    BNRItem *_containedItem;
    BNRItem *_container;
    
}

+(instancetype)randomItem;

// Designated initializer for BNRItem
-(instancetype)initWithItemName:(NSString*)name valueInDollars:(int)v serialNumber:(NSString*)sNumber;
-(instancetype)initWithItemName:(NSString*)name serialNumber:(NSString*)sNumber;
-(instancetype)initWithItemName:(NSString*)name;

-(void)setItemName:(NSString*)str;
-(NSString*)itemName;

-(void)setSerialNumber:(NSString*)str;
-(NSString*)serialNumber;

-(void)setValueInDollars:(int)v;
-(int)valueInDollars;

-(NSDate*)dateCreated;

@end

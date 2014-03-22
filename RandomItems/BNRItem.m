//
//  BNRItem.m
//  RandomItems
//
//  Created by Nick Meinhold on 22/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(instancetype)initWithItemName:(NSString*)name valueInDollars:(int)v serialNumber:(NSString*)sNumber
{
    self = [super init];
    
    if(self)
    {
        // give the instance variables inital values
        _itemName = name;
        _valueInDollars = v;
        _serialNumber = sNumber;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

-(instancetype)initWithItemName:(NSString*)name
{
    self = [super init];
    
    if(self)
    {
        // give the instance variables inital values
        _itemName = name;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;

}

-(NSString*)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}

-(void)setItemName:(NSString *)str
{
    _itemName = str;
}

-(NSString*)itemName
{
    return _itemName;
}

-(void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}

-(NSString*)serialNumber
{
    return _serialNumber;
}

-(void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}

-(int)valueInDollars
{
    return _valueInDollars;
}

-(NSDate *)dateCreated
{
    return _dateCreated; 
}

@end

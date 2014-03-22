//
//  main.m
//  RandomItems
//
//  Created by Nick Meinhold on 22/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc]init];
        // Send the message addobject
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // send another message, insertObject
        [items insertObject:@"Zero" atIndex:0];
        
        // for every item in the items array
        for(NSString *item in items)
        {
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc]init];
        
//        [item setItemName:@"Red Sofa"];
        item.itemName = @"Red Sofa";
//        [item setSerialNumber:@"1234"];
        item.serialNumber = @"1234";
//        [item setValueInDollars:100];
        item.valueInDollars = 100;
        NSLog(@"%@", item); 
        
        
        // destroy the mutable array
        items = nil;
        
    }
    return 0;
}


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
        
        for(int i = 0; i < 10; i++)
        {
            BNRItem *randomItem = [BNRItem randomItem];
            [items addObject:randomItem];
        }
        
        for(BNRItem *item in items)
        {
            NSLog(@"%@", item);
        }
        
        // destroy the mutable array
        NSLog(@"Setting items to nil..."); 
        items = nil;
        
    }
    return 0;
}


//
//  LSITip.m
//  Tips
//
//  Created by Craig Swanson on 4/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITip.h"

@implementation LSITip

- (instancetype)initWithName:(NSString *)name
                       total:(double)total
                  splitCount:(int)splitCount
               tipPercentage:(double)tipPercentage {
    
    if (self = [super init]) {
        _name = name.copy;
        _total = total;
        _splitCount = splitCount;
        _tipPercentage = tipPercentage;
    }
    return self;
}

@end

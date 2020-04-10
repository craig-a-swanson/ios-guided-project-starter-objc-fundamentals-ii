//
//  LSITipController.m
//  Tips
//
//  Created by Craig Swanson on 4/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITipController.h"
#import "LSITip.h"

@interface LSITipController () {
    
    NSMutableArray *_internalTips;
}
@end

@implementation LSITipController

- (instancetype)init
{
    if (self = [super init]) {
        _internalTips = [[NSMutableArray alloc] init];
        
#ifdef DEBUG  // for testing, this makes it work only during debugging
        [self addTestData];
#endif
    }
    return self;
}

- (void)addTestData
{
    [_internalTips addObject:[[LSITip alloc] initWithName:@"Sushi"
                                                    total:200.0
                                               splitCount:4
                                            tipPercentage:20.0]];
    
    [_internalTips addObject:[[LSITip alloc] initWithName:@"Pizza"
                                                    total:30.0
                                               splitCount:8
                                            tipPercentage:25]];
}

- (NSArray<LSITip *> *)tips
{
    return _internalTips.copy;
}

- (NSUInteger)tipCount {
    return _internalTips.count;
}

- (LSITip *)tipAtIndex:(NSUInteger)index
{
    return [_internalTips objectAtIndex:index]; // _internalTips[index]
}

- (void)addTip:(LSITip *)aTip
{
    [_internalTips addObject:aTip];
}

@end

//
//  Localization.m
//  archLandscapeMapping
//
//  Created by Perk on 2014/01/19.
//  Copyright (c) 2014 santiware. All rights reserved.
//

#import "Localization.h"

@implementation Localization

-(id)initWithHit:(double)phit AndMiss:(double)pmiss AndWorld:(NSMutableArray *)w{
    world = w;
    pHit = phit;
    pMiss = pmiss;
    utils = [[Utils alloc] init];
    return self;
}

-(NSMutableArray *)sense:(NSMutableArray *)p AndZ:(NSString *)Z{
    NSMutableArray *q;
    for (int i = 0; i < p.count; i++) {
        Boolean hit = (Z == [[world objectAtIndex:i] stringValue]);
        double pVal = [[p objectAtIndex:i] doubleValue]*(hit*pHit + (1-hit)*pMiss);
        [q insertObject:[NSNumber numberWithDouble:pVal] atIndex:i];
    }
    return q;
}
@end

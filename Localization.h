//
//  Localization.h
//  archLandscapeMapping
//
//  Created by Perk on 2014/01/19.
//  Copyright (c) 2014 santiware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utils.h"

@interface Localization : NSObject{
    double pHit;
    double pMiss;
    NSMutableArray *world;
    Utils *utils;
}

-(id) initWithHit: (double) phit AndMiss: (double) pmiss AndWorld: (NSMutableArray *) w;
-(NSMutableArray *) sense: (NSMutableArray *) p AndZ: (NSString *) Z;

@end

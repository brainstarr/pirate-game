//
//  BSFactory.h
//  Pirate Challenge
//
//  Created by Brian Starr on 9/5/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSCharacter.h"
#import "BSBoss.h"

@interface BSFactory : NSObject

-(NSArray *)tiles;

-(BSCharacter *)character;

-(BSBoss *) boss;

@end

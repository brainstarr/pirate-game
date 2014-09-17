//
//  BSCharacter.h
//  Pirate Challenge
//
//  Created by Brian Starr on 9/11/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSArmor.h"
#import "BSWeapon.h"

@interface BSCharacter : NSObject

@property (nonatomic) BSArmor *armor;
@property (nonatomic) BSWeapon *weapon;
@property (nonatomic) int health;
@property (nonatomic) int damage;

@end

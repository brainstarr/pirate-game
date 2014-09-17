//
//  BSTile.h
//  Pirate Challenge
//
//  Created by Brian Starr on 9/4/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BSCharacter.h"

@interface BSTile : NSObject

@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) NSString *buttonName;
@property (strong, nonatomic) BSWeapon *weapon;
@property (strong, nonatomic) BSArmor *armor;
@property (strong, nonatomic) NSString *actionButtonName;
@property (nonatomic) int healthEffect;

@end

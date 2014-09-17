//
//  BSFactory.m
//  Pirate Challenge
//
//  Created by Brian Starr on 9/5/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import "BSFactory.h"
#import "BSTile.h"

@implementation BSFactory

-(NSArray *)tiles{
    BSTile *tile1 = [[BSTile alloc]init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertage a voyage. You must defeat the evil pirate boss. Take the blunted sword to get started!";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    BSWeapon *bluntedSword = [[BSWeapon alloc]init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take Blunted Sword";
    
    BSTile *tile2 = [[BSTile alloc]init];
    tile2.story = @"You have come across an armory, would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    BSArmor *steelArmor = [[BSArmor alloc]init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Put on steel armor?";
    
    BSTile *tile3 = [[BSTile alloc]init];
    tile3.story = @"A mysterious dock appears on the horizon. Stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"ask for directions";
    
    NSArray *firstColumn = [[NSArray alloc]initWithObjects:tile1, tile2, tile3, nil];
    
    BSTile *tile4 = [[BSTile alloc]init];
    tile4.story = @"You have found a Parrot! Parrots can be added to your armor slot. Parrots are a great defender and fiercely loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    BSArmor *parrotArmor = [[BSArmor alloc]init];
    parrotArmor.name = @"Parrot";
    parrotArmor.health = 20;
    tile4.actionButtonName = @"Put Parrot on your shoulder?";
    
    BSTile *tile5 = [[BSTile alloc]init];
    tile5.story = @"You have stumbled across a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    BSWeapon *pistol = [[BSWeapon alloc]init];
    pistol.name = @"Pistol";
    pistol.damage = 17;
    tile5.actionButtonName = @"Take Pistol?";
    
    BSTile *tile6 = [[BSTile alloc]init];
    tile6.story = @"You have been captured and are ordered to walk the plank.";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear";
    
    NSArray *secondColumn = [[NSArray alloc]initWithObjects:tile4, tile5, tile6, nil];
    
    BSTile *tile7 = [[BSTile alloc]init];
    tile7.story = @"You have sighted a pirate battle in the distance. Do you engage?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 22;
    tile7.actionButtonName = @"Fight those scum!";
    
    BSTile *tile8 = [[BSTile alloc]init];
    tile8.story = @"The Legend of the deep - the mighty Kracken appears.";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -45;
    tile8.actionButtonName = @"Abandon ship!";
    
    
    BSTile *tile9 = [[BSTile alloc]init];
    tile9.story = @"You have stumbled across a cache of treasure!";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg" ];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasure";
    
    NSArray *thirdColumn = [[NSArray alloc]initWithObjects:tile7, tile8, tile9 , nil];
    
    BSTile *tile10 = [[BSTile alloc]init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    BSTile *tile11 = [[BSTile alloc]init];
    tile11.story = @"In the deep of the sea, many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim Deeper";
    
    BSTile *tile12 = [[BSTile alloc]init];
    tile12.story = @"Your final faceoff with the pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"fight!";
    
    NSArray *fourthColumn = [[NSArray alloc]initWithObjects:tile10, tile11, tile12, nil];
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(BSCharacter *)character
{
    BSCharacter *character = [[BSCharacter alloc] init];
    character.health = 100;
    BSArmor *armor = [[BSArmor alloc]init];
    armor.name = @"Cloak"; 
    armor.health = 5;
    character.armor = armor;
    
    BSWeapon *weapon = [[BSWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(BSBoss *) boss
{
    BSBoss *boss = [[BSBoss alloc]init];
    boss.health = 65;
    return boss;
}

@end

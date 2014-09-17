//
//  BSViewController.h
//  Pirate Challenge
//
//  Created by Brian Starr on 9/4/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSCharacter.h"
#import "BSBoss.h"

@interface BSViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;

//iVars

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) BSCharacter *character;
@property (nonatomic) BSBoss *boss; 

//Character Stats
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;

//Action
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
- (IBAction)actionButton:(UIButton *)sender;

//Story
@property (strong, nonatomic) IBOutlet UILabel *storyContent;

// Reset
- (IBAction)resetButton:(UIButton *)sender;

//Navigation
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

- (IBAction)northButton:(UIButton *)sender;
- (IBAction)eastButton:(UIButton *)sender;
- (IBAction)southButton:(UIButton *)sender;
- (IBAction)westButton:(UIButton *)sender;


@end

//
//  ViewController.h
//  NBARandomTeam
//
//  Created by Mike_Gazdich_rMBP on 11/30/13.
//  Copyright (c) 2013 Mike Gazdich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *team1;
@property (strong, nonatomic) IBOutlet UILabel *team2;
@property (strong, nonatomic) IBOutlet UILabel *team3;
- (IBAction)randomTeam:(id)sender;
- (IBAction)clearButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *team4;

@end

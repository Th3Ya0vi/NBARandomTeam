//
//  ViewController.m
//  NBARandomTeam
//
//  Created by Mike_Gazdich_rMBP on 11/30/13.
//  Copyright (c) 2013 Mike Gazdich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong)NSArray *teams;
@property BOOL fourth;


@end

@implementation ViewController

- (void)viewDidLoad
{
    self.fourth = FALSE;
    _teams = [NSArray arrayWithObjects:@"Hawks", @"Celtics", @"Nets", @"Bobcats",@"Bulls", @"Cavaliers", @"Mavericks", @"Nuggets", @"Pistons", @"Warriors", @"Rockets", @"Pacers", @"Clipers", @"Lakers", @"Grizzlies", @"Heat", @"Bucks", @"Timberwolves", @"Pelicans", @"Knicks", @"Thunder", @"Magic",@"76ers", @"Suns", @"Trailer Blazers", @"Kings", @"Spurs", @"Raptors", @"Jazz", @"Wizards", nil];
    [self.team1 setHidden:YES];
    [self.team2 setHidden:YES];
    [self.team3 setHidden:YES];
    [self.team4 setHidden:YES];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)randomTeam:(id)sender {
    
    int i = arc4random() % 30;
    NSString *team = [self.teams objectAtIndex:i];

    if(self.fourth) {
        while ([self.team1.text isEqualToString:team] || [self.team2.text isEqualToString:team] || [self.team3.text isEqualToString:team] ) {
            i = arc4random() % 30;
            team = [self.teams objectAtIndex:i];
        }
        self.team4.text = team;
        [self.team4 setHidden:NO];
        self.fourth = FALSE;
    }
    
    else {
        self.team4.text = @"";
        [self.team4 setHidden:YES];
        self.team1.text = team;
        [self.team1 setHidden:NO];
    i = arc4random() % 30;
    team = [self.teams objectAtIndex:i];
    while ([self.team1.text isEqualToString:team]) {
        i = arc4random()%30;
        team = [self.teams objectAtIndex:i];
    }
    self.team2.text = team;
    [self.team2 setHidden:NO];
    
    i = arc4random() % 30;
    team = [self.teams objectAtIndex:i];
    
    while ([self.team1.text isEqualToString:team] || [self.team2.text isEqualToString:team]) {
        i = arc4random() % 30;
        team = [self.teams objectAtIndex:i];
    }
    
    self.team3.text = team;
    [self.team3 setHidden:NO];
    self.fourth = TRUE;
    }

}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (IBAction)clearButton:(id)sender {
    self.team1.text = @"";
    [self.team1 setHidden:YES];
    self.team2.text = @"";
    [self.team2 setHidden:YES];
    self.team3.text = @"";
    [self.team3 setHidden:YES];
    self.team4.text = @"";
    [self.team4 setHidden:YES];
    self.fourth = FALSE;
    
    
}
@end

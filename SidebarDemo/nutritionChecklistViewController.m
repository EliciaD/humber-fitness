//
//  OngoingTasksViewController.m
//  Farm Fresh Simcoe
//
//  Created by
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "nutritionChecklistViewController.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>

@interface nutritionChecklistViewController ()

@end

@implementation nutritionChecklistViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [super viewDidLoad];
    // Do any additional setup after loading the view=['_{:view.backgroundColor = [UIColor colorWithRed:0.667 green:0.796 blue:0.655 alpha:1.0];
    
    self.view.backgroundColor=[UIColor colorWithRed:0.933 green:0.953 blue:0.961 alpha:1];
    self.title = @"";
   // self.subtitle = @"for Healthy Living ";
    [[UINavigationBar appearance] setBarTintColor:[UIColor yellowColor]];

    
    
    UIBarButtonItem* _sidebarButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(infoButtonSelected:)];
    self.navigationItem.leftBarButtonItem = _sidebarButton;
    
    
    
    
    
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    _sidebarButton.tintColor = [UIColor whiteColor];

   
    
    _trackWater.titleLabel.font = [UIFont systemFontOfSize:16];
    
    [_trackWater.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Light" size:16.0]];
    
    // Buttons
    
    [_trackVegetables setTitle:@" " forState:UIControlStateNormal];
    
    _trackWater.backgroundColor = [UIColor colorWithRed:0 green:0.608 blue:0.878 alpha:1]; /*#009be0*/
    

    _trackVegetables.backgroundColor = [UIColor colorWithRed:0.706 green:0.784 blue:0 alpha:1]; /*#b4c800*/
    
   
    _trackFruit.backgroundColor = [UIColor colorWithRed:0.875 green:0.275 blue:0.38 alpha:1]; /*#df4661*/
    

    _trackProtein.backgroundColor = [UIColor colorWithRed:0 green:0.592 blue:0.663 alpha:1]; /*#0097a9*/
    
    
    NSNumber *weight = [[PFUser currentUser] objectForKey:@"weight"];
    NSNumber *kgConvert = @2.2046;
    NSNumber *mlConversion = @0.0043994;
    
    double x = [weight doubleValue];
    double y = [kgConvert doubleValue];

    
    // calculates weight of user in kg
    double calc_result = x / y;
    NSLog(@"%f", calc_result);
    
    // calculates number ml of water should drink per day based on weight of user.
    double ml = calc_result * 30;
   
    
    // calculates number of cups of water user should drink per day based on weight of user.
    int cups = ml * [mlConversion doubleValue];
    

  //outputs in textfield amount of water that user should drink daily
    
    NSString *cupsLabel = @" c.";
    NSString *combined = [NSString stringWithFormat:@"%d%@", cups, cupsLabel];
    
    self.glassesOfWater.text = combined;
    
    //outputs number of grams
    
    weight = [[PFUser currentUser] objectForKey:@"weight"];
    kgConvert = @2.2046;
    
    x = [weight doubleValue];
    y = [kgConvert doubleValue];
    
    // calculates weight of user in kg
    calc_result = x / y;
    
    //calculates number of grams user should eat
    int grams = calc_result * 1.28;
    
    self.gramsOfProtien.text = [NSString stringWithFormat:@"%d%@", grams, @" g"];
   
    

}


- (IBAction)sedentary:(id)sender {
    
    NSNumber *weight = [[PFUser currentUser] objectForKey:@"weight"];
    NSNumber *kgConvert = @2.2046;
 
    double x = [weight doubleValue];
    double y = [kgConvert doubleValue];
  
    // calculates weight of user in kg
    double calc_result = x / y;
   
    //calculates number of grams user should eat
    int grams = calc_result * 0.8;
    
    //outputs number of grams
    self.gramsOfProtien.text = [NSString stringWithFormat:@"%d%@", grams, @" g"];

    
    
}

- (IBAction)moderatlyActive:(id)sender {
    
    NSNumber *weight = [[PFUser currentUser] objectForKey:@"weight"];
    NSNumber *kgConvert = @2.2046;
    
    double x = [weight doubleValue];
    double y = [kgConvert doubleValue];
    
    // calculates weight of user in kg
    double calc_result = x / y;
    
    //calculates number of grams user should eat
    int grams = calc_result * 1.28;
    
    //outputs number of grams
    self.gramsOfProtien.text = [NSString stringWithFormat:@"%d%@", grams, @" g"];
    
    
}

- (IBAction)veryActive:(id)sender {
    
    NSNumber *weight = [[PFUser currentUser] objectForKey:@"weight"];
    NSNumber *kgConvert = @2.2046;
    
    double x = [weight doubleValue];
    double y = [kgConvert doubleValue];
    
    // calculates weight of user in kg
    double calc_result = x / y;
    
    //calculates number of grams user should eat
    int grams = calc_result * 1.88;
    
    //outputs number of grams
       self.gramsOfProtien.text = [NSString stringWithFormat:@"%d%@", grams, @" g"];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

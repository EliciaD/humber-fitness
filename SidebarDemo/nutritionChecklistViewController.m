//
//  OngoingTasksViewController.m
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/16/14.
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
    
    UIBarButtonItem* _sidebarButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(infoButtonSelected:)];
    self.navigationItem.leftBarButtonItem = _sidebarButton;
    
    
    
    
    
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    _sidebarButton.tintColor = [UIColor whiteColor];

   
    
    
    // Buttons
    
    _trackWater.layer.cornerRadius = 5;
    _trackWater.layer.masksToBounds = YES;
    _trackWater.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    _trackVegetables.layer.cornerRadius = 5;
    _trackVegetables.layer.masksToBounds = YES;
    _trackVegetables.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    _trackFruit.layer.cornerRadius = 5;
    _trackFruit.layer.masksToBounds = YES;
    _trackFruit.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    
    _trackProtein.layer.cornerRadius = 5;
    _trackProtein.layer.masksToBounds = YES;
    _trackProtein.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];

 



}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  myWorkoutsViewController.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-12-03.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "myWorkoutsViewController.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>


@interface myWorkoutsViewController ()

@end

@implementation myWorkoutsViewController

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
    self.title = @"";
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bkg-7.jpg"]];
    // Do any additional setup after loading the view=['_{:view.backgroundColor = [UIColor colorWithRed:0.667 green:0.796 blue:0.655 alpha:1.0];
    UIBarButtonItem* _sidebarButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(infoButtonSelected:)];
    self.navigationItem.leftBarButtonItem = _sidebarButton;
    
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    _sidebarButton.tintColor = [UIColor whiteColor];

    // Do any additional setup after loading the view.

    PFQuery *query = [PFQuery queryWithClassName:@"myWorkouts"];
    [query getObjectInBackgroundWithId:@"xWMyZ4YEGZ" block:^(PFObject *gameScore, NSError *error) {
        
        
        
        
        
        
    }];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tableView: (UITableView*)tableView willDisplayCell: (UITableViewCell*)cell forRowAtIndexPath: (NSIndexPath*)indexPath
{
    
    if(indexPath.row % 2 == 0){
        cell.backgroundColor = [UIColor colorWithRed:0.976 green:0.976 blue:0.976 alpha:1]; /*#f9f9f9*/
    }
    else{
        cell.backgroundColor = [UIColor whiteColor];
    }
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

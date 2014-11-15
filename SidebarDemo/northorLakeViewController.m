//
//  northorLakeViewController.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-15.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "northorLakeViewController.h"
#import "SWRevealViewController.h"

@interface northorLakeViewController ()

@end

@implementation northorLakeViewController

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
    
    UIBarButtonItem* _sidebarButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(infoButtonSelected:)];
    self.navigationItem.leftBarButtonItem = _sidebarButton;
    
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    _sidebarButton.tintColor = [UIColor whiteColor];
    
    _northBtn.layer.cornerRadius = 5;
    _northBtn.layer.masksToBounds = YES;
    _northBtn.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    _lakeshoreBtn.layer.cornerRadius = 5;
    _lakeshoreBtn.layer.masksToBounds = YES;
    _lakeshoreBtn.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    // Do any additional setup after loading the view.
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

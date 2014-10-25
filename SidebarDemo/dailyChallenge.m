//
//  FindJobsViewController.m
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/16/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "dailyChallenge.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>

@interface dailyChallengeViewController ()



@end

@implementation dailyChallengeViewController
NSString *date;







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
    
    
    
    _challenge.layer.borderWidth=5.0f;
    _challenge.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _completeBtn.layer.cornerRadius = 5;
    _completeBtn.layer.masksToBounds = YES;
    _completeBtn.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    // outputs day of week :)
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE"];
   
    
    date = [dateFormatter stringFromDate:[NSDate date]];
    
// sets label to todays challenge based off day of the week
  
 NSLog(@"Today is %@", date);

    
    
    if ([date  isEqual: @"Monday"]){
      _challenge.text = @"Squats Time";
        
    }else if ([date isEqual:@"Tuesday"]){
    
    _challenge.text = @"Jumping Jacks";
    
    }else if([date isEqual:@"Wednesday"]){
         _challenge.text = @"Sit ups";
        
    
    }else if([date isEqual:@"Thursday"]){
      _challenge.text = @"Burpees";
        
    }else if([date isEqual:@"Friday"]){
         _challenge.text = @"Push Ups";
        
    }else if([date isEqual:@"Saturday"]){
        _challenge.text = @"Lunges";
        
    }else if([date isEqual:@"Sunday"]){
         NSLog(@"Rest");
        
        
    }else{
    
        NSLog(@"Is your calander set on your phone? There seems to be a problem");
    
    
    }
    
    
    
    
    
    
    
    
    
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

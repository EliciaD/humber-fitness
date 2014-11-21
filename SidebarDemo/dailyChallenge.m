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

@implementation dailyChallengeViewController{
int complete;
int challengesCompleted;
}
- (IBAction)trackReps:(id)sender {
}

NSString *date;
bool mybool;
int count;


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
    
    // grabs the daily challenge if complete or not
    PFUser *currentUser = [PFUser currentUser];

    PFQuery *query = [PFQuery queryWithClassName:@"dailyChallenge"];
    [query whereKey:@"email" equalTo:currentUser.email];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
          
            // Do something with the found objects
            for (PFObject *object in objects) {
       
                mybool = object[@"Completed"];
               
                
              
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    

    
    
    
    
    
    
    _challenge.layer.borderWidth=5.0f;
    _challenge.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _completeBtn.layer.cornerRadius = 5;
    _completeBtn.layer.masksToBounds = YES;
    _completeBtn.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    _trackReps.layer.cornerRadius = 5;
    _trackReps.layer.masksToBounds = YES;
    _trackReps.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    
    // outputs day of week :)
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE"];
   
    
    date = [dateFormatter stringFromDate:[NSDate date]];
    
// sets label to todays challenge based off day of the week
  
 NSLog(@"Today is %@", date);

    
    
    if ([date  isEqual: @"Monday"]){
        if(mybool == YES){
            _completeBtn.hidden=TRUE;
            _challenge.text = @"Challenge Complete!";
            
            count = count+1;
            NSLog(@"%d",count);
            
        }if(mybool == NO){
             _challenge.text = @"Squats";
        }

        
    }else if ([date isEqual:@"Tuesday"]){
        if(mybool == YES){
            _completeBtn.hidden=TRUE;
            _challenge.text = @"Challenge Complete!";
            
            count = count+1;
            NSLog(@"%d",count);
            
    
        }if(mybool == NO){
            _challenge.text = @"Planks";
        }
    
    }else if([date isEqual:@"Wednesday"]){
        
        if(mybool == YES){
            
            count = count+1;
            NSLog(@"%d",count);
            _completeBtn.hidden=TRUE;
            _challenge.text = @"Challenge Complete!";
            
            
        }if(mybool == NO){
             _challenge.text = @"Crunches";
        }

       
    
    }else if([date isEqual:@"Thursday"]){
     
        if(mybool == YES){
            
            count = count+1;
            NSLog(@"%d",count);
            _completeBtn.hidden=TRUE;
            _challenge.text = @"Challenge Complete!";
            
            
        }if(mybool == NO){
             _challenge.text = @"Push-ups";
        }

 
        
    }else if([date isEqual:@"Friday"]){
        if(mybool == YES){
            
            _completeBtn.hidden=TRUE;
            _challenge.text = @"Challenge Complete!";
            
            
        }if(mybool == NO){
            _challenge.text = @"Seated or bent over row";
        }
    
        
    }else if([date isEqual:@"Saturday"]){
        _challenge.text = @"Rest";
          _completeBtn.hidden=TRUE;
        
    }else if([date isEqual:@"Sunday"]){
         _completeBtn.hidden=TRUE;
        _challenge.text = @"Rest";
        
    }else{
    
    
    
    }
}


- (IBAction)complete:(id)sender {

     PFUser *currentUser = [PFUser currentUser];
    
    PFQuery *query = [PFQuery queryWithClassName:@"User"];
    [query whereKey:@"email" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d objects.", objects.count);
            // Do something with the found objects
            for (PFObject *object in objects) {
                challengesCompleted = object[@"challenges"];
                challengesCompleted = challengesCompleted + 1;
                object[@"challenges"] = @"%i", challengesCompleted;
                [object saveInBackground];
                
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    
    
    NSLog(@"button has been clicked");
    
    if(count == 100){
        NSLog(@"100 times!");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You did it!" message:@"You finished the 100 day challenge!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil]; [alert show];
        count = 0;
        // needs to email leanne at this point
     
        NSLog(@"%d",count);
        
        
    }else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Way to go!" message:@"You successfully finished today's daily challenge!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil]; [alert show];
        
    }
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) {
       
        _completeBtn.hidden=TRUE;
        _challenge.text = @"Challenge Complete!";
        
        
    }}








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

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

}
- (IBAction)trackReps:(id)sender {
}

NSString *date;
bool mybool;
int count;
int thisChallenger;


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
            _trackReps.hidden = true;
            _challenge.text = @"Challenge Complete!";
            
            count = count+1;
            NSLog(@"%d",count);
            
        }if(mybool == NO){
             _challenge.text = @"Squats";
        }

        
    }else if ([date isEqual:@"Tuesday"]){
        if(mybool == YES){
            _completeBtn.hidden=TRUE;
            _trackReps.hidden = true;
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
            _trackReps.hidden = true;
            _challenge.text = @"Challenge Complete!";
            
            
        }if(mybool == NO){
             _challenge.text = @"Crunches";
        }

       
    
    }else if([date isEqual:@"Thursday"]){
     
        if(mybool == YES){
            
            count = count+1;
            NSLog(@"%d",count);
            _completeBtn.hidden=TRUE;
            _trackReps.hidden = true;
            _challenge.text = @"Challenge Complete!";
            
            
        }if(mybool == NO){
             _challenge.text = @"Push-ups";
        }

 
        
    }else if([date isEqual:@"Friday"]){
        if(mybool == YES){
            
            _completeBtn.hidden=TRUE;
            _trackReps.hidden = TRUE;
            _challenge.text = @"Challenge Complete!";
            
            
        }if(mybool == NO){
            _challenge.text = @"Seated or bent over row";
        }
    
        
    }else if([date isEqual:@"Saturday"]){
        _challenge.text = @"Rest";
          _completeBtn.hidden=TRUE;
        _trackReps.hidden = true;
        
    }else if([date isEqual:@"Sunday"]){
         _completeBtn.hidden=TRUE;
        _trackReps.hidden = true;
        _challenge.text = @"Rest";
        
    }else{
    
    
    
    }
}


- (IBAction)complete:(id)sender {
    
    PFQuery *query= [PFUser query];
    
    [query whereKey:@"username" equalTo:[[PFUser currentUser]username]];
    
    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error){
        NSNumber *challengeTemp = [object objectForKey:@"challenges"];
        self.thisChallenger = [challengeTemp integerValue] + 1;
        
        if (self.thisChallenger >= 100){
            
            //creation of email
            // Email Subject
            NSString *emailTitle = @"100 Challenges Complete";
            // Email Content
            NSString *messageBody = @"I've completed the 100 day daily challenges from the Humber Fitness app!";
            // To address
            NSArray *toRecipents = [NSArray arrayWithObject:@"leanne.henwoodadam@humber.ca"];
            
            MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
            mc.mailComposeDelegate = self;
            [mc setSubject:emailTitle];
            [mc setMessageBody:messageBody isHTML:NO];
            [mc setToRecipients:toRecipents];
            
            // Present mail view controller on screen
            [self presentViewController:mc animated:YES completion:NULL];
            object[@"challenges"] = @0;
            [object saveInBackground];
            
        } else {
            object[@"challenges"] = @(self.thisChallenger);
            [object saveInBackground];
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


- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) {
       
        _completeBtn.hidden=TRUE;
        _challenge.text = @"Challenge Complete!";
        
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


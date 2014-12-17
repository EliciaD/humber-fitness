//
//  trackRepsViewController.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-28.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "trackRepsViewController.h"
#import <Parse/Parse.h>


@interface trackRepsViewController ()

@end

@implementation trackRepsViewController
NSString *date;
int trackCount;
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
  // style buttons
    _ten.layer.cornerRadius = 25;
    _ten.layer.masksToBounds = YES;
    
    _ten.layer.borderWidth=3.0f;
    _ten.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _twenty.layer.cornerRadius = 25;
    _twenty.layer.masksToBounds = YES;
    
    _twenty.layer.borderWidth=3.0f;
    _twenty.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _thirty.layer.cornerRadius = 25;
    _thirty.layer.masksToBounds = YES;
    
    _thirty.layer.borderWidth=3.0f;
    _thirty.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _fourty.layer.cornerRadius = 25;
    _fourty.layer.masksToBounds = YES;
    
    _fourty.layer.borderWidth=3.0f;
    _fourty.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _fifty.layer.cornerRadius = 25;
    _fifty.layer.masksToBounds = YES;
    
    _sixty.layer.borderWidth=3.0f;
    _sixty.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    _sixty.layer.cornerRadius = 25;
    _sixty.layer.masksToBounds = YES;
    
    _seventy.layer.borderWidth=3.0f;
    _seventy.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    _seventy.layer.cornerRadius = 25;
    _seventy.layer.masksToBounds = YES;
    
    _eighty.layer.borderWidth=3.0f;
    _eighty.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    _eighty.layer.cornerRadius = 25;
    _eighty.layer.masksToBounds = YES;
    
    _ninty.layer.borderWidth=3.0f;
    _ninty.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _ninty.layer.cornerRadius = 25;
    _ninty.layer.masksToBounds = YES;
    
    _oneHundred.layer.borderWidth=3.0f;
    _oneHundred.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    _oneHundred.layer.cornerRadius = 25;
    _oneHundred.layer.masksToBounds = YES;
    
    _fifty.layer.borderWidth=3.0f;
    _fifty.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _promptText.text = @"";
    
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            if (objects.count>0) {
                for (PFObject *object in objects) {
                    NSString *lastModDate = object[@"challengeDate"];
                    if ([lastModDate isEqualToString:dateString]) {
                        //do not clear information
                    }else{
                        //clear selected water
                        trackCount = 0;
                    }
                }
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];

    
    
    // saving
    if(trackCount == 1){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        
    }
    if(trackCount == 2){
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(trackCount == 3){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(trackCount == 4){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        
    }
    if(trackCount == 5){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fifty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fifty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        
    }
    if(trackCount == 6){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fifty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fifty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _sixty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_sixty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(trackCount == 7){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fifty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fifty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _sixty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_sixty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _seventy.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_seventy setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(trackCount == 8){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fifty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fifty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _sixty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_sixty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _seventy.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_seventy setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _eighty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_eighty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(trackCount == 9){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fifty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fifty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _sixty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_sixty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _seventy.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_seventy setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _eighty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_eighty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _ninty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ninty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(trackCount == 10){
        _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fifty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fifty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _sixty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_sixty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _seventy.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_seventy setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _eighty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_eighty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _ninty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_ninty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _oneHundred.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneHundred setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
       
        
    }

    

    
    
    
    
    // Do any additional setup after loading the view.
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE"];
    
    
    date = [dateFormatter stringFromDate:[NSDate date]];
    
    
    
    
    if ([date  isEqual: @"Monday"]){
        
        
    }
        
        
    if ([date isEqual:@"Tuesday"]){
         [_ten setTitle:@"1" forState:UIControlStateNormal];
         [_twenty setTitle:@"2" forState:UIControlStateNormal];
        [_thirty setTitle:@"3" forState:UIControlStateNormal];
        [_fourty setTitle:@"4" forState:UIControlStateNormal];
        [_fifty setTitle:@"5" forState:UIControlStateNormal];
        [_sixty setTitle:@"6" forState:UIControlStateNormal];
        [_seventy setTitle:@"7" forState:UIControlStateNormal];
        [_eighty setTitle:@"8" forState:UIControlStateNormal];
        [_ninty setTitle:@"9" forState:UIControlStateNormal];
        [_oneHundred setTitle:@"10" forState:UIControlStateNormal];
        
         _promptText.text = @"10 held for aslong as you can with good form - You are not doing 100 of these";
    } if ([date isEqual:@"Wednesday"]){
        
    
        
    } if([date isEqual:@"Thursday"]){
        
         _promptText.text = @"Floor or wall";
    } if([date isEqual:@"Friday"]){
         _promptText.text = @"With or without weights";
        
    }else{
        
        
        
    


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

- (IBAction)track1:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];

    
    _ten.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_ten setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
    
}

- (IBAction)track2:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _twenty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_twenty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track3:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _thirty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_thirty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track4:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _fourty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_fourty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track5:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _fifty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_fifty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track6:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _sixty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_sixty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track7:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _seventy.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_seventy setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track8:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _eighty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_eighty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track9:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _ninty.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_ninty setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)track10:(id)sender {
    
    //set current user
    PFUser *currentUser = [PFUser currentUser];
    
    //get todays date
    NSDate *today = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSString *dateString = [dateFormat stringFromDate:today];
    NSLog(@"date: %@", dateString);
    
    //change modification date
    PFQuery *query = [PFQuery queryWithClassName:@"ModificationDates"];
    [query whereKey:@"userEmail" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %d scores.", objects.count);
            
            //if there is no modification date, create one
            if (objects.count == 0) {
                PFObject *modDate = [PFObject objectWithClassName:@"ModificationDates"];
                modDate[@"userEmail"] = currentUser.email;
                modDate[@"waterDate"] = @"";
                modDate[@"fruitDate"] = @"";
                modDate[@"vegDate"] = @"";
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = dateString;
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"challengeDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _oneHundred.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_oneHundred setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    trackCount = trackCount + 1;
}

- (IBAction)clear:(id)sender {
    trackCount = 0;
    [self viewDidLoad];
       
}
@end

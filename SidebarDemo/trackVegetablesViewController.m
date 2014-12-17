//
//  trackVegetablesViewController.m
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/25/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "trackVegetablesViewController.h"
#import <Parse/Parse.h>

@interface trackVegetablesViewController ()

@end

@implementation trackVegetablesViewController
int vegCount;

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
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bkg-7.jpg"]];

    //button styles
    _oneServing.layer.cornerRadius = 25;
    _oneServing.layer.masksToBounds = YES;

    _oneServing.layer.borderWidth=3.0f;
   _oneServing.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    _twoServings.layer.cornerRadius = 25;
    _twoServings.layer.masksToBounds = YES;
    
    _twoServings.layer.borderWidth=3.0f;
    _twoServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    
    _threeServings.layer.cornerRadius = 25;
    _threeServings.layer.masksToBounds = YES;
    
    _threeServings.layer.borderWidth=3.0f;
    _threeServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _fourServings.layer.cornerRadius = 25;
    _fourServings.layer.masksToBounds = YES;
    
    _fourServings.layer.borderWidth=3.0f;
    _fourServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _fiveServings.layer.cornerRadius = 25;
    _fiveServings.layer.masksToBounds = YES;
    
    _fiveServings.layer.borderWidth=3.0f;
    _fiveServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _sixServings.layer.cornerRadius = 25;
    _sixServings.layer.masksToBounds = YES;
    
    _sixServings.layer.borderWidth=3.0f;
    _sixServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _saveBtn.layer.cornerRadius = 5;
    _saveBtn.layer.masksToBounds = YES;
    _saveBtn.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    
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
                    NSString *lastModDate = object[@"vegDate"];
                    if ([lastModDate isEqualToString:dateString]) {
                        //do not clear information
                    }else{
                        //clear selected water
                        vegCount = 0;
                    }
                }
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    
    if(vegCount == 1){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        
    }
    if(vegCount == 2){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(vegCount == 3){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(vegCount == 4){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(vegCount == 5){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fiveServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fiveServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    
    if(vegCount == 6){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fiveServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fiveServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _sixServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_sixServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
   
}

- (IBAction)oneClicked:(id)sender {
    
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
                modDate[@"vegDate"] = dateString;
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = @"";
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"vegDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];

    
 _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
     vegCount = vegCount + 1;
    
}

- (IBAction)twoClicked:(id)sender {
    
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
                modDate[@"vegDate"] = dateString;
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = @"";
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"vegDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
     vegCount = vegCount + 1;
}

- (IBAction)threeClicked:(id)sender {
    
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
                modDate[@"vegDate"] = dateString;
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = @"";
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"vegDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
     vegCount = vegCount + 1;
}

- (IBAction)fourClicked:(id)sender {
    
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
                modDate[@"vegDate"] = dateString;
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = @"";
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"vegDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
_fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
     vegCount = vegCount + 1;
}

- (IBAction)fiveClicked:(id)sender {
    
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
                modDate[@"vegDate"] = dateString;
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = @"";
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"vegDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _fiveServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_fiveServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
     vegCount = vegCount + 1;
}

- (IBAction)sixClicked:(id)sender {
    
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
                modDate[@"vegDate"] = dateString;
                modDate[@"proDate"] = @"";
                modDate[@"challengeDate"] = @"";
                [modDate saveInBackground];
            } else { // alter mod date
                for (PFObject *object in objects) {
                    object[@"vegDate"] = dateString;
                    [object saveInBackground];
                }
            }
            
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    _sixServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_sixServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
     vegCount = vegCount + 1;
}

- (IBAction)save:(id)sender {
    
    
    if(vegCount == 1){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        
    }
    if(vegCount == 2){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(vegCount == 3){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(vegCount == 4){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(vegCount == 5){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fiveServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fiveServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    
    if(vegCount == 6){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fiveServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fiveServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _sixServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_sixServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(vegCount == 6){
        NSLog(@"your a healthy one");
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



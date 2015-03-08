//
//  weightViewController+Weight.m
//  Humber Fitness
//
//  Created by Elicia Durtnall on 2015-02-26.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import "weightViewController.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>
#import <UIKit/UIKit.h>

@implementation weightViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"";
    
    self.updatedWeight.delegate = self;
    
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
    
    // Display Current Weight
     NSNumber *weight = [[PFUser currentUser] objectForKey:@"weight"];
    self.currentWeight.text = [NSString stringWithFormat:@"%@", weight];
    
    
    
}

- (IBAction)savedWeight:(id)sender {
    // retrieves new weight
    NSString *updatedWeight = [self.updatedWeight.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
   // logs new weight
    NSLog(@"%@",updatedWeight);

    // convert to int
    NSNumber *weightNew;
    weightNew = [NSNumber numberWithInteger: [updatedWeight intValue]];
    // alert
    UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Saved"
                                                       message:@"Your weight has been updated."
                                                      delegate:self
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
    
    // save
    PFUser *currentUser = [PFUser currentUser];
    
    PFQuery *query = [PFUser query];
    [query whereKey:@"email" equalTo:currentUser.email];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        
        if (!error) {
                
            // Do something with the found objects
            for (PFObject *object in objects) {
                
                // Now let's update it with some new data. In this case, only cheatMode and score
                // will get sent to the cloud. playerName hasn't changed.
                object[@"weight"] = weightNew;
                [object saveInBackground];
                [theAlert show];
            }
        }
            else{
                //do nothing
            }
    }];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


// moves view when keyboard is displayed

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self animateTextField: textField up: YES];
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [self animateTextField: textField up: NO];
}

- (void) animateTextField: (UITextField *)textField up: (BOOL) up
{
    const int movementDistance = 30;
    const float movementDuration = 0.3f;
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}


@end

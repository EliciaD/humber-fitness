//
//  signUpViewController.m
//  Farm Fresh Simcoe
//
//  Created by STEWART EMERSON G. on 2014-04-11.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "signUpViewController.h"
#import <Parse/Parse.h>

@interface signUpViewController ()

@end

@implementation signUpViewController



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

 /*   UISwitch *mySwitch = [[UISwitch alloc] initWithFrame:CGRectMake(130, 235, 0, 0)];
    [mySwitch addTarget:self action:@selector(changeSwitch:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:mySwitch]; */
    
    
    // Do any additional setup after loading the view.
    self.username.delegate = self;
    self.password.delegate = self;
    self.email.delegate = self;
    self.weight.delegate = self;
    
    UIColor *bgColour = [UIColor colorWithRed:0.694 green:0.878 blue:0.871 alpha:1];
    self.view.backgroundColor = bgColour;
    
	// Do any additional setup after loading the view.
    self.navigationItem.hidesBackButton = YES;
    
    self.username.borderStyle = UITextBorderStyleNone;
    self.username.backgroundColor = [UIColor whiteColor];
    self.email.borderStyle = UITextBorderStyleNone;
    self.email.backgroundColor = [UIColor whiteColor];
    self.password.borderStyle = UITextBorderStyleNone;
    self.password.backgroundColor = [UIColor whiteColor];
    
    self.weight.borderStyle = UITextBorderStyleNone;
    self.weight.backgroundColor = [UIColor whiteColor];
    
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    self.username.leftView = paddingView;
    self.username.leftViewMode = UITextFieldViewModeAlways;
    
    UIView *paddingView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    self.email.leftView = paddingView1;
    self.email.leftViewMode = UITextFieldViewModeAlways;

    
    UIView *paddingView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    self.password.leftView = paddingView2;
    self.password.leftViewMode = UITextFieldViewModeAlways;
  
    
    UIView *paddingView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    self.weight.leftView = paddingView3;
    self.weight.leftViewMode = UITextFieldViewModeAlways;
    
    
    
    self.weight.layer.cornerRadius = 5;
    self.weight.layer.masksToBounds = YES;
    self.password.layer.cornerRadius = 5;
    self.password.layer.masksToBounds = YES;
    self.email.layer.cornerRadius = 5;
    self.email.layer.masksToBounds = YES;
    self.username.layer.cornerRadius = 5;
    self.username.layer.masksToBounds = YES;
    _signup.layer.cornerRadius = 5;
    _signup.layer.masksToBounds = YES;
    _signup.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
  
    
    //Adding border Colours
    self.username.layer.borderColor=[[UIColor colorWithRed:84.0/255.0f green:84.0/255.0f blue:84.0/255.0f alpha:1.0] CGColor];
    self.username.layer.borderWidth=1.0;
    self.email.layer.borderColor=[[UIColor colorWithRed:84.0/255.0f green:84.0/255.0f blue:84.0/255.0f alpha:1.0] CGColor];
    self.email.layer.borderWidth=1.0;
    self.password.layer.borderColor=[[UIColor colorWithRed:84.0/255.0f green:84.0/255.0f blue:84.0/255.0f alpha:1.0] CGColor];
    self.password.layer.borderWidth=1.0;
    
    self.weight.layer.borderColor=[[UIColor colorWithRed:84.0/255.0f green:84.0/255.0f blue:84.0/255.0f alpha:1.0] CGColor];
    self.weight.layer.borderWidth=1.0;


    
    
    
}


/*- (void)changeSwitch:(id)sender{
    
    if([sender isOn]){
   [    NSNumber numberWithBool:YES];
        NSLog(@"Switch is ON");
        
        
        PFObject *s = [newUser setObject: [NSNumber numberWithBool:YES]  forKey:@"campus"];
        
    } else{
    [NSNumber numberWithBool:NO];
        NSLog(@"Switch is OFF");
    }
    
} */




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signup:(id)sender {
    
    

    
   // PFObject *addValues= [PFObject objectWithClassName:@"dance"];
    //[addValues setObject: dancePlaceText forKey:@"place_airport"];
    //[addValues saveInBackground];

    NSNumber *weightNum;

    
    NSString *username = [self.username.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.password.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *email = [self.email.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *weightString = [self.weight.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    weightNum = [NSNumber numberWithInteger: [weightString intValue]];

    
    if ([username length] == 0 || [password length] == 0 || [email length] == 0 || [weightString length] == 0) {
      
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!"
                                                            message:@"Make sure you enter a username, password, email address and your weight!"
                                                           delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
    else {
        PFUser *newUser = [PFUser user];
        newUser.username = username;
        newUser.password = password;
        newUser.email = email;
        
        

    [newUser setObject:weightNum forKey:@"weight"];
        
        
      
        
        [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (error) {
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!"
                                                                    message:[error.userInfo objectForKey:@"error"]
                                                                   delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [alertView show];
            }
            else {
                
                
                
                [self performSegueWithIdentifier:@"BringToApp" sender:sender];
            }
        }];
    }

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
    const int movementDistance = 100;
    const float movementDuration = 0.3f;
    int movement = (up ? -movementDistance : movementDistance);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}



- (IBAction)backbtn:(id)sender {
}
#pragma mark - UITextField delegate methods

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end

//
//  signUpViewController.h
//  Farm Fresh Simcoe
//
//  Created by ELICIA DURTNALL on 2014-04-11.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface signUpViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *email;
@property (strong, nonatomic) IBOutlet UITextField *weight;

@property (weak, nonatomic) IBOutlet UIButton *signup;
- (IBAction)signup:(id)sender;
- (IBAction)backbtn:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;


@end

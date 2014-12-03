//
//  trackRepsViewController.h
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-28.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface trackRepsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *promptText;
@property (strong, nonatomic) IBOutlet UIButton *ten;
@property (strong, nonatomic) IBOutlet UIButton *twenty;
@property (strong, nonatomic) IBOutlet UIButton *thirty;
@property (strong, nonatomic) IBOutlet UIButton *fourty;
@property (strong, nonatomic) IBOutlet UIButton *fifty;
@property (strong, nonatomic) IBOutlet UIButton *sixty;
@property (strong, nonatomic) IBOutlet UIButton *seventy;
@property (strong, nonatomic) IBOutlet UIButton *eighty;
@property (strong, nonatomic) IBOutlet UIButton *ninty;
@property (strong, nonatomic) IBOutlet UIButton *oneHundred;
- (IBAction)track1:(id)sender;
- (IBAction)track2:(id)sender;
- (IBAction)track3:(id)sender;
- (IBAction)track4:(id)sender;
- (IBAction)track5:(id)sender;
- (IBAction)track6:(id)sender;
- (IBAction)track7:(id)sender;
- (IBAction)track8:(id)sender;
- (IBAction)track9:(id)sender;
- (IBAction)track10:(id)sender;

@end

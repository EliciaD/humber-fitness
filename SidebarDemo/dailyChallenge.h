//
//  FindJobsViewController.h
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/16/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h> 

@interface dailyChallengeViewController : UIViewController <MFMailComposeViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (weak, nonatomic) IBOutlet UILabel *challenge;
@property (weak, nonatomic) IBOutlet UIButton *completeBtn;
@property (nonatomic, assign) int thisChallenger;
@property (strong, nonatomic) IBOutlet UIButton *trackReps;
- (IBAction)trackReps:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *completeimg;
@property (strong, nonatomic) IBOutlet UIImageView *trackimage;


@property(readonly, copy) NSDate *date;

- (IBAction)complete:(id)sender;

@end

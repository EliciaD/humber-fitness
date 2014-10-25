//
//  FindJobsViewController.h
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/16/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dailyChallengeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (weak, nonatomic) IBOutlet UILabel *challenge;
@property (weak, nonatomic) IBOutlet UIButton *completeBtn;
@property(readonly, copy) NSDate *date;


@end

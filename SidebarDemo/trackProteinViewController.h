//
//  trackProteinViewController.h
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 11/1/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface trackProteinViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *addProteinBtn;
@property (strong, nonatomic) IBOutlet UIButton *minusProteinBtn;
@property (strong, nonatomic) IBOutlet UILabel *gramLabel;
- (IBAction)minusProtein:(id)sender;
- (IBAction)addProtein:(id)sender;

@end

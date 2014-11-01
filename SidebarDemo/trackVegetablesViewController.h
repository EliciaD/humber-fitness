//
//  trackVegetablesViewController.h
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/25/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface trackVegetablesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *oneServing;
@property (weak, nonatomic) IBOutlet UIButton *twoServings;
@property (weak, nonatomic) IBOutlet UIButton *threeServings;
@property (weak, nonatomic) IBOutlet UIButton *fourServings;
@property (weak, nonatomic) IBOutlet UIButton *fiveServings;
@property (weak, nonatomic) IBOutlet UIButton *sixServings;
- (IBAction)oneClicked:(id)sender;
- (IBAction)twoClicked:(id)sender;
- (IBAction)threeClicked:(id)sender;
- (IBAction)fourClicked:(id)sender;
- (IBAction)fiveClicked:(id)sender;
- (IBAction)sixClicked:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *saveBtn;

@end

//
//  addClassViewController.h
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-20.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addClassViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) NSMutableArray *passedArray;
@property (strong, nonatomic) IBOutlet UIButton *addBtn;
- (IBAction)exit:(id)sender;
- (IBAction)addWorkout:(id)sender;

@end

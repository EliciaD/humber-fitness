//
//  OngoingTasksViewController.h
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/16/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface nutritionChecklistViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *trackWater;
@property (weak, nonatomic) IBOutlet UIButton *trackVegetables;
@property (weak, nonatomic) IBOutlet UIButton *trackFruit;
@property (weak, nonatomic) IBOutlet UIButton *trackProtein;
@property (weak, nonatomic) IBOutlet UILabel *glassesOfWater;

@property (weak, nonatomic) IBOutlet UILabel *gramsProtein;

@property (weak, nonatomic) IBOutlet UILabel *gramsOfProtien;



@end

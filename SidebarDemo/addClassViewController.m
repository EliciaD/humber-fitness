//
//  addClassViewController.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-20.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "addClassViewController.h"
#import <Parse/Parse.h>


@interface addClassViewController ()

@end

@implementation addClassViewController

@synthesize titleLabel;
@synthesize timeLabel;
@synthesize descriptionLabel;
@synthesize passedArray;


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
    self.title = @"";
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bkg-7.jpg"]];
   
    //clear fields
    titleLabel.text = @"";
    descriptionLabel.text = @"";
    timeLabel.text = @"";
    
    
    titleLabel.text = [passedArray objectAtIndex:0];
   descriptionLabel.text = [passedArray objectAtIndex:4];
    timeLabel.text = [passedArray objectAtIndex:2];
  

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addWorkout:(id)sender {
    UIAlertView* thanks = [[UIAlertView alloc] initWithTitle:@"Workout Added!"
                                                     message:@"Way to go, keep on living healthy!" delegate:self cancelButtonTitle:@"OK." otherButtonTitles: nil];
    [thanks show];
    

    
    PFUser *currentUser = [PFUser currentUser];
    
    PFObject *myWorkouts = [PFObject objectWithClassName:@"myWorkouts"];
    myWorkouts[@"workoutName"] = [passedArray objectAtIndex:0];
    myWorkouts[@"day"] = [passedArray objectAtIndex:1];
    myWorkouts[@"location"] = [passedArray objectAtIndex:2];
    myWorkouts[@"time"] = [passedArray objectAtIndex:3];
    myWorkouts[@"description"] = [passedArray objectAtIndex:4];
    [myWorkouts saveInBackground];
    
   }

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

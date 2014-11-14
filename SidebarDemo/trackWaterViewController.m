//
//  trackWaterViewController.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "trackWaterViewController.h"
#import <Parse/Parse.h>


@interface trackWaterViewController ()

@end

@implementation trackWaterViewController

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
    // Do any additional setup after loading the view.
    
    NSNumber *weight = [[PFUser currentUser] objectForKey:@"weight"];
    NSNumber *kgConvert = @2.2046;
    NSNumber *mlConversion = @0.0043994;
    
    double x = [weight doubleValue];
    double y = [kgConvert doubleValue];
    
    
    // calculates weight of user in kg
    double calc_result = x / y;
    NSLog(@"%f", calc_result);
    
    // calculates number ml of water should drink per day based on weight of user.
    double ml = calc_result * 30;
    
    
    // calculates number of cups of water user should drink per day based on weight of user.
    int cups = ml * [mlConversion doubleValue];
    int numofBtns = cups / 3;
    NSLog(@"%d",numofBtns);
   
    for( int i = 0; i <numofBtns; i++ ) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setTitle:@"Press Me" forState:UIControlStateNormal];
        [button sizeToFit];
        button.center = CGPointMake(100, 50);
        
    }
    
}

// my buttons
- (void)buttonClicked:(UIButton*)button
{
    NSLog(@"Button %ld clicked.", (long int)[button tag]);
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

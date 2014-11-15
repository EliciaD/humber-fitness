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
double xposition = 50.0;
double yposition = 120.0;
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
 
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bkg-7.jpg"]];

    // Do any additional setup after loading the view.
[self.view addSubview:_button];
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
    
    // set position
   
    
    // calculates number of cups of water user should drink per day based on weight of user.
    int cups = ml * [mlConversion doubleValue];
    int numofBtns = cups / 3;
    NSLog(@"%d",numofBtns);
   
    for( int i = 0; i <numofBtns; i++ ) {
    
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self
        action:@selector(aMethod:)
        forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"3" forState:UIControlStateNormal];
        button.frame = CGRectMake(50.0, 50.0, 50.0, 50.0);
        button.layer.cornerRadius = 25;
        button.layer.masksToBounds = YES;
        button.layer.borderWidth=3.0f;
        button.layer.borderColor=[[UIColor whiteColor] CGColor];
        button.center = CGPointMake(xposition++, yposition++);
        
        [self.view addSubview:button];
        
    
    }
    
    
    
      
    
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

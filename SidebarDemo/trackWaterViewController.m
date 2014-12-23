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
int waterCount;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    
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

    NSLog(@"%d",cups);
   
    for( int i = 0; i < cups; i++ ) {
        //set cup titles
        NSString *cupTitle = [NSString stringWithFormat:@"%d",i+1];
        
        //cups from 1 to 5
        if ( i < 5 ) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [button addTarget:self action:@selector(myCustomFunction:) forControlEvents:UIControlEventTouchUpInside];
 
            [button setTitle:cupTitle forState:UIControlStateNormal];
            button.tag = i+1;
            button.frame = CGRectMake((10.0+60*i), 90.0, 50.0, 50.0);
            button.layer.cornerRadius = 25;
            button.layer.masksToBounds = YES;
            button.layer.borderWidth=3.0f;
            button.layer.borderColor=[[UIColor whiteColor] CGColor];
            
            [self.view addSubview:button];
            
        }
        //cups from 5 to 10
        else if ( i < 10 && i > 4 ) {
            
            UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [button addTarget:self action:@selector(myCustomFunction:) forControlEvents:UIControlEventTouchUpInside];
            
            [button setTitle:cupTitle forState:UIControlStateNormal];
            button.frame = CGRectMake(((10.0+60*i)-300), 160.0, 50.0, 50.0);
            button.tag = i+1;
            button.layer.cornerRadius = 25;
            button.layer.masksToBounds = YES;
            button.layer.borderWidth=3.0f;
            button.layer.borderColor=[[UIColor whiteColor] CGColor];
            
            [self.view addSubview:button];

        }
        // cups from 10 to 15
        else if (i < 15 && i > 9){
            UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            [button addTarget:self action:@selector(myCustomFunction:) forControlEvents:UIControlEventTouchUpInside];

            [button setTitle:cupTitle forState:UIControlStateNormal];
            button.frame = CGRectMake(((10.0+60*i)-600), 230.0, 50.0, 50.0);
            button.tag = i+1;
            button.layer.cornerRadius = 25;
            button.layer.masksToBounds = YES;
            button.layer.borderWidth=3.0f;
            button.layer.borderColor=[[UIColor whiteColor] CGColor];
            
            [self.view addSubview:button];

        }
        // if more than 15 cups are required
        else {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            //[button addTarget:self
                   //    action:@selector(aMethod:)
             //forControlEvents:UIControlEventTouchUpInside];
            [button addTarget:self action:@selector(myCustomFunction:) forControlEvents:UIControlEventTouchUpInside];
            
            [button setTitle:cupTitle forState:UIControlStateNormal];
            button.frame = CGRectMake(((10.0+60*i)-900), 300.0, 50.0, 50.0);
            button.tag = i+1;
            button.layer.cornerRadius = 25;
            button.layer.masksToBounds = YES;
            button.layer.borderWidth=3.0f;
            button.layer.borderColor=[[UIColor whiteColor] CGColor];
            
            [self.view addSubview:button];
            
        }
    }
    
    }

- (void)viewDidAppear:(BOOL)animated {
    //Style for waters already clicked
    if (waterCount > 0) {
        UIButton* btn = (UIButton*)[self.view viewWithTag:1];
        btn.layer.borderColor=[[UIColor redColor] CGColor];
        btn.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        //[btn setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];

    }
    
    for(int i = 1; i < waterCount; i++){
        NSLog(@"TAG: %d", i);
        UIButton* btn = (UIButton*)[self.view viewWithTag:i];
        btn.layer.borderColor=[[UIColor redColor] CGColor];
        btn.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        //[btn setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
}


- (void)myCustomFunction:(id)sender{
    NSLog(@"button was clicked");
    UIButton *btn = (UIButton*)sender;
    btn.layer.borderColor=[[UIColor redColor] CGColor];
    waterCount = waterCount + 1;
    btn.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [btn setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    

    NSLog(@"%d", waterCount);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

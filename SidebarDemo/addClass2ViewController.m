//
//  addClass2ViewController.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-12-02.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "addClass2ViewController.h"
#import <Parse/Parse.h>

@interface addClass2ViewController ()

@end

@implementation addClass2ViewController
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
    titleLabel.text = [passedArray objectAtIndex:0];
    descriptionLabel.text = [passedArray objectAtIndex:4];
    timeLabel.text = [passedArray objectAtIndex:2];    // Do any additional setup after loading the view.
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

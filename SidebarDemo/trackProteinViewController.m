//
//  trackProteinViewController.m
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 11/1/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "trackProteinViewController.h"

@interface trackProteinViewController ()

@end

@implementation trackProteinViewController
int protein;

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
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)minusProtein:(id)sender {
    if(protein >= 1){
        protein = protein - 1;
        NSString *proteinString = [NSString stringWithFormat:@"%d",protein];
        NSString *gramSubText = @" g";
        NSString *combined = [NSString stringWithFormat:@"%@%@", proteinString, gramSubText];
        _gramLabel.text = combined;
    } else {
        //do nothing
    }
}

- (IBAction)addProtein:(id)sender {
    protein = protein + 1;
    NSString *proteinString = [NSString stringWithFormat:@"%d",protein];
    NSString *gramSubText = @" g";
    NSString *combined = [NSString stringWithFormat:@"%@%@", proteinString, gramSubText];
    _gramLabel.text = combined;
}
@end

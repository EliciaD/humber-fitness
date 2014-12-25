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
    
    NSString *proteinString = [NSString stringWithFormat:@"%d",protein];
    NSString *gramSubText = @" g";
    NSString *combined = [NSString stringWithFormat:@"%@%@", proteinString, gramSubText];
    _gramLabel.text = combined;
    
    //plus button
    UIBezierPath *maskPath3;
    maskPath3 = [UIBezierPath bezierPathWithRoundedRect:_minusProteinBtn.bounds
                                      byRoundingCorners:(UIRectCornerBottomRight | UIRectCornerTopRight)
                                            cornerRadii:CGSizeMake(22.0, 22.0)];
    
    CAShapeLayer *maskLayer3 = [[CAShapeLayer alloc] init];
    maskLayer3.frame = _minusProteinBtn.bounds;
    maskLayer3.path = maskPath3.CGPath;
    _minusProteinBtn.layer.mask = maskLayer3;
    
    //minus button
    UIBezierPath *maskPath2;
    maskPath2 = [UIBezierPath bezierPathWithRoundedRect:_addProteinBtn.bounds
                                      byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerTopLeft)
                                            cornerRadii:CGSizeMake(22.0, 22.0)];
    
    CAShapeLayer *maskLayer2 = [[CAShapeLayer alloc] init];
    maskLayer2.frame = _addProteinBtn.bounds;
    maskLayer2.path = maskPath2.CGPath;
    _addProteinBtn.layer.mask = maskLayer2;
    
    
    
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

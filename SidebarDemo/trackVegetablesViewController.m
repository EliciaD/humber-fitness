//
//  trackVegetablesViewController.m
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/25/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "trackVegetablesViewController.h"

@interface trackVegetablesViewController ()

@end

@implementation trackVegetablesViewController

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
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bkg-7.jpg"]];

    //button styles
    _oneServing.layer.cornerRadius = 25;
    _oneServing.layer.masksToBounds = YES;

    _oneServing.layer.borderWidth=3.0f;
   _oneServing.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    _twoServings.layer.cornerRadius = 25;
    _twoServings.layer.masksToBounds = YES;
    
    _twoServings.layer.borderWidth=3.0f;
    _twoServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    
    
    _threeServings.layer.cornerRadius = 25;
    _threeServings.layer.masksToBounds = YES;
    
    _threeServings.layer.borderWidth=3.0f;
    _threeServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _fourServings.layer.cornerRadius = 25;
    _fourServings.layer.masksToBounds = YES;
    
    _fourServings.layer.borderWidth=3.0f;
    _fourServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _fiveServings.layer.cornerRadius = 25;
    _fiveServings.layer.masksToBounds = YES;
    
    _fiveServings.layer.borderWidth=3.0f;
    _fiveServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _sixServings.layer.cornerRadius = 25;
    _sixServings.layer.masksToBounds = YES;
    
    _sixServings.layer.borderWidth=3.0f;
    _sixServings.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _saveBtn.layer.cornerRadius = 5;
    _saveBtn.layer.masksToBounds = YES;
    _saveBtn.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    

    
    
}

- (IBAction)oneClicked:(id)sender {
    
 _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    
}

- (IBAction)twoClicked:(id)sender {
    _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];

}

- (IBAction)threeClicked:(id)sender {
    _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
}

- (IBAction)fourClicked:(id)sender {
_fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
}

- (IBAction)fiveClicked:(id)sender {
    _fiveServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_fiveServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
}

- (IBAction)sixClicked:(id)sender {
    _sixServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
     [_sixServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
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



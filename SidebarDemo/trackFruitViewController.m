//
//  trackFruitViewController.m
//  Farm Fresh Simcoe
//
//  Created by Stewart Emerson on 10/25/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "trackFruitViewController.h"

@interface trackFruitViewController ()

@end

@implementation trackFruitViewController

int fruitCount;

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
    
    _saveBtn.layer.cornerRadius = 5;
    _saveBtn.layer.masksToBounds = YES;
    _saveBtn.backgroundColor = [UIColor colorWithRed:0 green:0.176 blue:0.384 alpha:1];
    
    if(fruitCount == 1){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    
    }
    if(fruitCount == 2){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(fruitCount == 3){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(fruitCount == 4){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
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


- (IBAction)oneClicked:(id)sender {
    
    _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    fruitCount = fruitCount + 1;
    
}

- (IBAction)twoClicked:(id)sender {
    _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
      fruitCount = fruitCount + 1;
}

- (IBAction)threeClicked:(id)sender {
    _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
      fruitCount = fruitCount + 1;
}

- (IBAction)fourClicked:(id)sender {
    _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
    [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
      fruitCount = fruitCount + 1;
}

- (IBAction)saveFruitBtn:(id)sender {
    
    if(fruitCount == 1){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        
    }
    if(fruitCount == 2){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(fruitCount == 3){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }
    if(fruitCount == 4){
        _oneServing.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_oneServing setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _twoServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_twoServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _threeServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_threeServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
        _fourServings.layer.borderColor=[[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] CGColor];
        [_fourServings setTitleColor:[UIColor colorWithRed:0.106 green:0.173 blue:0.357 alpha:1] forState:UIControlStateNormal];
    }

    if(fruitCount == 4){
        NSLog(@"your a healthy one");
    }

}


@end

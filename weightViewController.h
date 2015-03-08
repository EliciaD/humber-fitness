//
//  weightViewController+Weight.h
//  Humber Fitness
//
//  Created by Emerson Stewart on 2015-02-26.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//



@interface weightViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UILabel *currentWeight;

@property (strong, nonatomic) IBOutlet UITextField *updatedWeight;
- (IBAction)savedWeight:(id)sender;

@end

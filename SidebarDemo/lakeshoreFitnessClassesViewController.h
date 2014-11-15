//
//  lakeshoreFitnessClassesViewController.h
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-15.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface lakeshoreFitnessClassesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *titlesArray;
@property (strong, nonatomic) NSMutableArray *dateArray;
@property (strong, nonatomic) NSMutableArray *timeArray;
@property (strong, nonatomic) NSMutableArray *descriptionArray;
@property (strong, nonatomic) NSMutableArray *locationArray;
@property(nonatomic,strong)NSMutableArray *contentArray;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

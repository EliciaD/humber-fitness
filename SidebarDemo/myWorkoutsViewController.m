//
//  myWorkoutsViewController.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-12-03.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "myWorkoutsViewController.h"
#import "SWRevealViewController.h"
#import "TableViewCell.h"
#import "addClassViewController.h"
#import <Parse/Parse.h>


@interface myWorkoutsViewController ()

@end

@implementation myWorkoutsViewController

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
    self.title = @"";
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"bkg-7.jpg"]];
    // Do any additional setup after loading the view=['_{:view.backgroundColor = [UIColor colorWithRed:0.667 green:0.796 blue:0.655 alpha:1.0];
    UIBarButtonItem* _sidebarButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu"
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(infoButtonSelected:)];
    self.navigationItem.leftBarButtonItem = _sidebarButton;
    
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    _sidebarButton.tintColor = [UIColor whiteColor];

    // Do any additional setup after loading the view.
    
    self.titlesArray = [[NSMutableArray alloc] init];
    self.dateArray = [[NSMutableArray alloc] init];
    self.timeArray = [[NSMutableArray alloc] init];
    self.locationArray = [[NSMutableArray alloc] init];
    self.descriptionArray = [[NSMutableArray alloc] init];
    self.objectArray = [[NSMutableArray alloc] init];
    self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sorry.png"]];
    
    self.contentArray = [[NSMutableArray alloc] init];
    
   
    
    /* NSPredicate *predicate = [NSPredicate predicateWithFormat:
                              @"day == 'Monday'"
                              
     
                              ];
    */
    PFUser *currentUser = [PFUser currentUser];
    
    PFQuery *updateTableArray = [PFQuery queryWithClassName:@"myWorkouts" /*predicate:predicate*/];
    [updateTableArray whereKey:@"user" equalTo:currentUser.email];
    [updateTableArray findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            
            // Do something with the found objects
            for (PFObject *object in objects) {
                //Init variables from parse
                
                NSString *titleString = object[@"workoutName"];
                NSString *dateString = object[@"day"];
                NSString *timeString = object[@"time"];
                NSString *locationString = object[@"location"];
                NSString *descriptionString = object[@"description"];
                NSString *objectString = object.objectId;
                
                
                //add initialized vars into appropriate arrays
                [self.titlesArray addObject:titleString];
                [self.dateArray addObject:dateString];
                [self.timeArray addObject:timeString];
                [self.locationArray addObject:locationString];
                [self.descriptionArray addObject:descriptionString];
                [self.objectArray addObject:objectString];
                
                
            }
            [self.tableView reloadData];
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
}

- (void)viewDidAppear:(BOOL)animated {
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)tableView: (UITableView*)tableView willDisplayCell: (UITableViewCell*)cell forRowAtIndexPath: (NSIndexPath*)indexPath
{
    
    if(indexPath.row % 2 == 0){
        cell.backgroundColor = [UIColor colorWithRed:0.976 green:0.976 blue:0.976 alpha:1]; /*#f9f9f9*/
    }
    else{
        cell.backgroundColor = [UIColor whiteColor];
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.titlesArray count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *jobCellIdentifier = @"TableViewCell";
    
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:jobCellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.titleLabel.text = [self.titlesArray objectAtIndex:indexPath.row];
    cell.timeLabel.text = [self.timeArray objectAtIndex:indexPath.row];
    cell.locationLabel.text = [self.locationArray objectAtIndex:indexPath.row];
    
    return cell;
    
}



// Tap on table Row
- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath {
    
    self.contentArray = [[NSMutableArray alloc] init];
    
    NSString *myWorkout = @"true";
    
    [self.contentArray addObject:[self.titlesArray objectAtIndex:indexPath.row]];
    [self.contentArray addObject:[self.dateArray objectAtIndex:indexPath.row]];
    [self.contentArray addObject:[self.timeArray objectAtIndex:indexPath.row]];
    [self.contentArray addObject:[self.locationArray objectAtIndex:indexPath.row]];
    [self.contentArray addObject:[self.descriptionArray objectAtIndex:indexPath.row]];
    [self.contentArray addObject:myWorkout];
    [self.contentArray addObject:[self.objectArray objectAtIndex:indexPath.row]];
    [self performSegueWithIdentifier: @"classClicked" sender: self];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"classClicked"]) {
        
        addClassViewController *transferViewController = segue.destinationViewController;
        transferViewController.passedArray = [[NSMutableArray alloc]init];
        transferViewController.passedArray = self.contentArray;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

@end

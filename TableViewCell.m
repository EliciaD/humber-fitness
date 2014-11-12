//
//  TableViewCell.m
//  Humber Fitness
//
//  Created by Emerson Stewart on 2014-11-11.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize titleLabel = _titleLabel;
@synthesize timeLabel = _timeLabel;
@synthesize locationLabel = _locationLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

//
//  MeetingCell.m
//  StoryboardDemo
//
//  Created by Lingyong Wang on 10/31/12.
//  Copyright (c) 2012 Lingyong Wang. All rights reserved.
//

#import "MeetingCell.h"

@implementation MeetingCell

@synthesize nameLabel;
@synthesize descriptionLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

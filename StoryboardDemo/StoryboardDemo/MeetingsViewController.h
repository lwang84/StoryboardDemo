//
//  MeetingsViewController.h
//  StoryboardDemo
//
//  Created by Lingyong Wang on 10/31/12.
//  Copyright (c) 2012 Lingyong Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MeetingDetailViewController.h"

@interface MeetingsViewController : UITableViewController <MeetingDetailViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *meetings;

@end

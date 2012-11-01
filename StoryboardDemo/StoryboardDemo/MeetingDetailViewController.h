//
//  MeetingDetailViewController.h
//  StoryboardDemo
//
//  Created by Lingyong Wang on 11/1/12.
//  Copyright (c) 2012 Lingyong Wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Meeting.h"

@class Meeting;
@class MeetingDetailViewController;

@protocol MeetingDetailViewControllerDelegate <NSObject>
- (void)meetingDetailViewControllerDidCancel: (MeetingDetailViewController *)controller;
- (void)meetingDetailViewController: (MeetingDetailViewController *)controller didAddMeeting : (Meeting *)meeting;
@end

@interface MeetingDetailViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property (nonatomic, weak) id <MeetingDetailViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end

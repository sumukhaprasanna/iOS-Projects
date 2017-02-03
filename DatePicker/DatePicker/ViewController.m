//
//  ViewController.m
//  DatePicker
//
//  Created by Sumukha on 7/18/15.
//  Copyright (c) 2015 SKP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    label = [[UILabel alloc] initWithFrame:CGRectMake(90, 160, 200, 30)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    label.textColor=[UIColor redColor]; [self.view addSubview:label];
    UIButton *dateButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    dateButton.frame= CGRectMake(120, 210, 150, 30); dateButton.tag = 1;
    [dateButton setTitle:@"Select Date"
                forState:UIControlStateNormal];
    [dateButton setBackgroundColor:[UIColor lightGrayColor]]; [dateButton addTarget:self action:@selector(buttonAction:)
                                                                   forControlEvents:UIControlEventTouchUpInside]; [self.view addSubview:dateButton];
    UIButton *timeButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    timeButton.frame= CGRectMake(120, 270, 150, 30); timeButton.tag = 2;
    [timeButton setTitle:@"Select Time" forState:UIControlStateNormal];
    [timeButton setBackgroundColor:[UIColor lightGrayColor]];
    [timeButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:timeButton];
}
- (void)buttonAction:(UIButton *)sender {
    if ([self.view viewWithTag:9]) { return;
    }
    CGRect toolbarTargetFrame = CGRectMake(0, self.view.bounds.size.height-216-44, 375, 44);
    CGRect datePickerTargetFrame = CGRectMake(0, self.view.bounds.size.height-216, 375, 216);
    UIView *darkView = [[UIView alloc] initWithFrame:self.view.bounds];
    darkView.alpha = 0;
    darkView.backgroundColor = [UIColor brownColor]; darkView.tag = 9;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissDatePicker:)];
    [darkView addGestureRecognizer:tapGesture]; [self.view addSubview:darkView];
    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height+44, 375, 216)];
    if (sender.tag == 1) {
        datePicker.datePickerMode = UIDatePickerModeDate;
        dateTimeFlag = 1; } else {
            datePicker.datePickerMode = UIDatePickerModeTime; dateTimeFlag = 2;
        }
    datePicker.tag = 10;
    [datePicker addTarget:self action:@selector(changeDate:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height, 375, 44)];
    toolBar.tag = 11;
    toolBar.barStyle = UIBarStyleBlackTranslucent;
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                            target:nil action:nil];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(dismissDatePicker:)];
    [toolBar setItems:[NSArray arrayWithObjects:spacer, doneButton, nil]];
    [self.view addSubview:toolBar];
    [UIView beginAnimations:@"MoveIn" context:nil]; toolBar.frame = toolbarTargetFrame; datePicker.frame = datePickerTargetFrame; darkView.alpha = 0.5;
    [UIView commitAnimations]; }
- (void)changeDate:(UIDatePicker *)sender { NSDate * date = sender.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init]; if (dateTimeFlag == 1) {} else {
        datePicker.datePickerMode = UIDatePickerModeTime; dateTimeFlag = 2;
    }
    datePicker.tag = 10;
    [datePicker addTarget:self action:@selector(changeDate:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height, 375, 44)];
    toolBar.tag = 11;
    toolBar.barStyle = UIBarStyleBlackTranslucent;
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                            target:nil action:nil];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(dismissDatePicker:)];
    [toolBar setItems:[NSArray arrayWithObjects:spacer, doneButton, nil]];
    [self.view addSubview:toolBar];
    [UIView beginAnimations:@"MoveIn" context:nil]; toolBar.frame = toolbarTargetFrame; datePicker.frame = datePickerTargetFrame; darkView.alpha = 0.5;
    [UIView commitAnimations]; }

- (void)changeDate:(UIDatePicker *)sender { NSDate * date = sender.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];if (dateTimeFlag == 1) {
        [formatter setDateFormat:@"yyyy"];
        NSString *year = [formatter stringFromDate:date]; [formatter setDateFormat:@"MM"];
        NSString *month = [formatter stringFromDate:date]; [formatter setDateFormat:@"dd"];
        NSString *day = [formatter stringFromDate:date];
        label.text = [NSString stringWithFormat:@"Date: %@ - %@ - %@", month, day, year];
        NSLog(@"New Date: %@ - %@ - %@", month, day, year ); } else {
            [formatter setDateFormat:@"HH:mm"];
            NSString *time = [formatter stringFromDate:date];
            label.text = [NSString stringWithFormat:@"Time: %@", time]; }
}
- (void)removeViews:(id)object {
    [[self.view viewWithTag:9] removeFromSuperview]; [[self.view viewWithTag:10] removeFromSuperview]; [[self.view viewWithTag:11] removeFromSuperview];
}
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

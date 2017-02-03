//
//  ViewController.h
//  DatePicker
//
//  Created by Sumukha on 7/18/15.
//  Copyright (c) 2015 SKP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPopoverControllerDelegate>{
    UIDatePicker *datepicker; UIPopoverController *popOverForDatePicker; UILabel * label;
    int dateTimeFlag;
}


@end


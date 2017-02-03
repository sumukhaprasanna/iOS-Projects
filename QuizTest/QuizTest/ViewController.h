//
//  ViewController.h
//  QuizTest
//
//  Created by Sumukha on 7/18/15.
//  Copyright (c) 2015 SKP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int currentQuestionIndex;
    NSMutableArray *questions;
    NSMutableArray *answers;
    NSMutableArray *guess;
    }
@property (strong, nonatomic) IBOutlet UILabel *labelQuestion;
- (IBAction)questionButtonAction:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *labelAnswer;
- (IBAction)answerButtonAction:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *guessLabel;
- (IBAction)guessButtonAction:(UIButton *)sender;



@end


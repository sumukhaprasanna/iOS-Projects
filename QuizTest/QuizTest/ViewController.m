//
//  ViewController.m
//  QuizTest
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
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
    guess = [[NSMutableArray alloc] init];
    
    [questions addObject:@"What is 7+7 ?"];
    [answers addObject:@"14"];
    [guess addObject:@"add them"];
    
    [questions addObject:@"What is the capital of Vermont?"];
    [answers addObject:@"Montpelier"];
    [guess addObject:@"starts with M"];
    
    [questions addObject:@"From what is cognac made ?"];
    [answers addObject:@"Grapes"];
    [guess addObject:@"starts with G"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)questionButtonAction:(UIButton *)sender {
    currentQuestionIndex++;
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    NSString *question = [questions
                          objectAtIndex:currentQuestionIndex];
    self.labelQuestion.text = question;
    self.labelAnswer.text = @"????";
    self.guessLabel.text = @"????";
}

- (IBAction)answerButtonAction:(UIButton *)sender {NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    self.labelAnswer.text = answer;
}


- (IBAction)guessButtonAction:(UIButton *)sender {
    currentQuestionIndex++;
    NSString *guess = [guess objectAtIndex:currentQuestionIndex];
    self.guessLabel.text = guess;

    
}
@end

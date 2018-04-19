//
//  ViewController.m
//  TicTacToe
//
//  Created by Miles R. Basnillo on 19/04/2018.
//  Copyright © 2018 Miles R. Basnillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    count = 0;
}

- (void)checkWin {
    // Check all possible game states
    UIButton *button1 = (UIButton *)[self.view viewWithTag:1];
    UIButton *button2 = (UIButton *)[self.view viewWithTag:2];
    UIButton *button3 = (UIButton *)[self.view viewWithTag:3];
    UIButton *button4 = (UIButton *)[self.view viewWithTag:4];
    UIButton *button5 = (UIButton *)[self.view viewWithTag:5];
    UIButton *button6 = (UIButton *)[self.view viewWithTag:6];
    UIButton *button7 = (UIButton *)[self.view viewWithTag:7];
    UIButton *button8 = (UIButton *)[self.view viewWithTag:8];
    UIButton *button9 = (UIButton *)[self.view viewWithTag:9];
    
    if ([button1.titleLabel.text isEqualToString:button2.titleLabel.text] && [button1.titleLabel.text isEqualToString:button3.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button1.titleLabel.text];
    } else if ([button4.titleLabel.text isEqualToString:button5.titleLabel.text] && [button4.titleLabel.text isEqualToString:button6.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button4.titleLabel.text];
    } else if ([button7.titleLabel.text isEqualToString:button8.titleLabel.text] && [button7.titleLabel.text isEqualToString:button9.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button7.titleLabel.text];
    } else if ([button1.titleLabel.text isEqualToString:button4.titleLabel.text] && [button1.titleLabel.text isEqualToString:button7.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button1.titleLabel.text];
    } else if ([button2.titleLabel.text isEqualToString:button5.titleLabel.text] && [button2.titleLabel.text isEqualToString:button8.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button2.titleLabel.text];
    } else if ([button3.titleLabel.text isEqualToString:button6.titleLabel.text] && [button3.titleLabel.text isEqualToString:button9.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button3.titleLabel.text];
    } else if ([button1.titleLabel.text isEqualToString:button5.titleLabel.text] && [button1.titleLabel.text isEqualToString:button9.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button1.titleLabel.text];
    } else if ([button3.titleLabel.text isEqualToString:button5.titleLabel.text] && [button3.titleLabel.text isEqualToString:button7.titleLabel.text]) {
        _labelOutput.text = [NSString stringWithFormat:@"%@ is the winner!", button3.titleLabel.text];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)restartPressed:(id)sender {
    for (int i = 1; i <= 9; i++) {
        UIButton *button = (UIButton *)[self.view viewWithTag:i];
        [button setTitle:@"" forState:UIControlStateNormal];
        button.titleLabel.text = NULL;
    }
    _labelOutput.text = @"";
    count = 0;
}

- (IBAction)buttonPressed:(UIButton*)sender {
    if (sender.titleLabel.text == NULL) {
        if (count % 2 == 0) {
            [sender setTitle:@"X" forState:UIControlStateNormal];
            count++;
        } else {
            [sender setTitle:@"O" forState:UIControlStateNormal];
            count++;
        }
        [self checkWin];
    }
}

@end

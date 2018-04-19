//
//  ViewController.h
//  TicTacToe
//
//  Created by Miles R. Basnillo on 19/04/2018.
//  Copyright © 2018 Miles R. Basnillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    int count;
}

@property (weak, nonatomic) IBOutlet UILabel *labelOutput;

- (IBAction)restartPressed:(id)sender;
- (IBAction)buttonPressed:(UIButton*)sender;

@end


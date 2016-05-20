//
//  RGGuessViewController.h
//  GuessANumber
//
//  Created by Александр on 15.05.16.
//  Copyright © 2016 Alexander Besedin. All rights reserved.
//
// 26764
#import <UIKit/UIKit.h>

@interface RGGuessViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *numberInput;
@property (strong, nonatomic) IBOutlet UILabel *rangeLable;

@property NSInteger levelNumber;
@property NSInteger maxRangeValue;
@property NSInteger score;
@property NSInteger numberToGuess;
- (IBAction)action:(id)sender;

@end

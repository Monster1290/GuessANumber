//
//  RGGuessViewController.m
//  GuessANumber
//
//  Created by Александр on 15.05.16.
//  Copyright © 2016 Alexander Besedin. All rights reserved.
//

#import "RGGuessViewController.h"

@interface RGGuessViewController ()

@end

@implementation RGGuessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self prepareForLevel: 1];
}



- (void) prepareForLevel: (NSInteger) leverlNumber {
    self.levelNumber = leverlNumber;
    if (leverlNumber == 1) {
        self.score = 0;
    }
    self.maxRangeValue = leverlNumber * 2;
    self.numberInput.text = @"";
    self.rangeLable.text =  [NSString stringWithFormat: @"1..%ld", (long)self.maxRangeValue];
    self.numberToGuess =arc4random() % self.maxRangeValue + 1;
    self.maxRangeValue = leverlNumber;
    
}

- (IBAction)action:(id)sender {
    NSInteger number = self.numberInput.text.integerValue;
    NSLog(@"%d", number);
    if (number == self.numberToGuess) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"You guess!" message: @"You get 10 points!" delegate: nil cancelButtonTitle: nil otherButtonTitles: @"OK", nil];
        [alert show];
        self.score += 10;
        self.levelNumber += 1;
        [self prepareForLevel: self.levelNumber];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"You not guess!" message: @"Try again!" delegate: nil cancelButtonTitle: nil otherButtonTitles: @"OK", nil];
        self.score = self.score - 5 < 0 ? 0 : self.score - 5;
        [alert show];
    }
    NSLog(@"score %ld", (long)self.score);
}


@end

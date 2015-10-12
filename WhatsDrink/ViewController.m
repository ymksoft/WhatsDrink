//
//  ViewController.m
//  WhatsDrink
//
//  Created by Юрий Куприянов on 10.10.15.
//  Copyright © 2015 YMK Soft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *deviceValue;
@property (weak, nonatomic) IBOutlet UISlider *deviceSlider;

- (IBAction)deviceSliderAction:(id)sender;
- (IBAction)deviceValueDidEndOnExit:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *resultDrink;

@end

@implementation ViewController

-(Drink *)drink {
    if(!_drink) {
        _drink = [Drink new];
    }
    return _drink;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
    
-(void) UpdateModel {
    
    self.drink.deviceValue = [NSNumber numberWithFloat:self.deviceSlider.value];
    self.drink.resultDrink = self.drink.getResultDrink;
}

-(void) setSlider {
    
    if ([self.deviceValue.text isEqualToString:@""])
        self.deviceValue.text = @"0";
    
    CGFloat value = [self.deviceValue.text floatValue];
    
    [self.deviceSlider setValue:value animated:YES];
    
    
}

-(void) InvalidateView {
    
    self.resultDrink.text = self.drink.resultDrink;
    self.deviceValue.text = [NSString stringWithFormat:@"%.2f",self.drink.deviceValue.floatValue];
    
    if(self.drink.deviceValue.floatValue > 0) {
        self.resultDrink.textColor = [UIColor redColor];
        self.deviceValue.textColor = [UIColor redColor];
    } else {
        self.resultDrink.textColor = [UIColor blueColor];
        self.deviceValue.textColor = [UIColor blueColor];
    }
    
}

- (IBAction)deviceSliderAction:(id)sender {
    
    [self UpdateModel];
    [self InvalidateView];
    
}

- (IBAction)deviceValueDidEndOnExit:(id)sender {
    
    [self setSlider];
    [self UpdateModel];
    [self InvalidateView];
    
    [sender resignFirstResponder];
    
}

- (IBAction)changeValues:(id)sender {
    
    
    [self setSlider];
    [self UpdateModel];
    [self InvalidateView];
    
    [[self view] endEditing:YES];
}



@end

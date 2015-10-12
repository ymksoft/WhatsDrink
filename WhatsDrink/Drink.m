//
//  Drink.m
//  WhatsDrink
//
//  Created by Юрий Куприянов on 11.10.15.
//  Copyright © 2015 YMK Soft. All rights reserved.
//

#import "Drink.h"


@implementation Drink

- (NSString *) getResultDrink {
    
    NSString *resultDrink = [NSString new];
    
    
    if( self.deviceValue.intValue >= -50 && self.deviceValue.intValue < -15 ) {
        
        resultDrink = @"кофе [-50;-15)";
        
    } else if( self.deviceValue.intValue >= -15 && self.deviceValue.intValue < 5 ) {
        
        resultDrink = @"чай [-15;5)";
        
    } else if( self.deviceValue.intValue >= 5 && self.deviceValue.intValue < 15 ) {
        
        resultDrink = @"сок [5;15)";
        
    } else if( self.deviceValue.intValue >= 15 && self.deviceValue.intValue <= 40 )  {
        
        resultDrink = @"сок и лед [15;40)";
        
    } else {
        
        resultDrink = @"кондиционер [40;50]";
        
    }
    
    return resultDrink;
    
}

@end


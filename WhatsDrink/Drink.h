//
//  Drink.h
//  WhatsDrink
//
//  Created by Юрий Куприянов on 11.10.15.
//  Copyright © 2015 YMK Soft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Drink : NSObject

@property (nonatomic, strong) NSNumber *deviceValue;
@property (nonatomic, strong) NSString *resultDrink;

- (NSString *) getResultDrink;

@end

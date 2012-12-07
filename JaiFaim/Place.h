//
//  Place.h
//  JaiFaim
//
//  Created by Mathieu Darse on 07/12/12.
//  Copyright (c) 2012 Mathieu Darse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *type;
@property (strong, nonatomic) NSString *phoneNumber;

@property (strong, nonatomic) NSDecimalNumber *averagePrice;
@property (strong, nonatomic) NSDecimalNumber *minPrice;
@property (strong, nonatomic) NSDecimalNumber *maxPrice;

@property (nonatomic, assign) BOOL canEatIn;
@property (nonatomic, assign) BOOL canDeliver;
@property (nonatomic, assign) BOOL canTakeAway;

+ (NSArray *)places;

@end

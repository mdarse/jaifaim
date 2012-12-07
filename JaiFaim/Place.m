//
//  Place.m
//  JaiFaim
//
//  Created by Mathieu Darse on 07/12/12.
//  Copyright (c) 2012 Mathieu Darse. All rights reserved.
//

#import "Place.h"

@implementation Place

@synthesize name, description, type, phoneNumber;
@synthesize averagePrice, minPrice, maxPrice;
@synthesize canEatIn, canDeliver, canTakeAway;

+ (NSArray *)places
{
    NSMutableArray *places = [[NSMutableArray alloc] init];
    
    Place *place1 = [[Place alloc] init];
    place1.name = @"Spoons";
    place1.description = @"Cuisine traditionnelle et inventive/ produits fermiers-bio-label rouge";
    place1.phoneNumber = @"0184658723";
    place1.averagePrice = [[NSDecimalNumber alloc] initWithFloat:12.5f];
    place1.canDeliver = YES;
    place1.canEatIn = YES;
    place1.canTakeAway = NO;
    [places addObject:place1];
    
    Place *place2 = [[Place alloc] init];
    place2.name = @"Toninio Pizza";
    place2.description = @"Cuisine comme on l'aime";
    place2.phoneNumber = @"0184658700";
    place2.averagePrice = [[NSDecimalNumber alloc] initWithFloat:16.5f];
    place2.canDeliver = NO;
    place2.canEatIn = YES;
    place2.canTakeAway = NO;
    [places addObject:place2];
    
    Place *place3 = [[Place alloc] init];
    place3.name = @"Le Bistrot du Boucher la la laaaaa";
    place3.description = @"Cuisine traditionnelle et inventive/ produits fermiers-bio-label rouge";
    place3.phoneNumber = @"0184658711";
    place3.averagePrice = [[NSDecimalNumber alloc] initWithFloat:10.5f];
    place3.canDeliver = NO;
    place3.canEatIn = YES;
    place3.canTakeAway = YES;
    [places addObject:place3];
    
    return [NSArray arrayWithArray:places];
}


@end

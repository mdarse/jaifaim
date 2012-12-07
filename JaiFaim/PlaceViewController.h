//
//  DetailViewController.h
//  JaiFaim
//
//  Created by Mathieu Darse on 07/12/12.
//  Copyright (c) 2012 Mathieu Darse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaceViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

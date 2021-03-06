//
//  DetailViewController.m
//  JaiFaim
//
//  Created by Mathieu Darse on 07/12/12.
//  Copyright (c) 2012 Mathieu Darse. All rights reserved.
//

#import "PlaceViewController.h"

@interface PlaceViewController ()
- (void)configureView;
@end

@implementation PlaceViewController

#pragma mark - Managing the detail item

- (void)setPlaceItem:(Place *)newPlaceItem
{
    if (_placeItem != newPlaceItem) {
        _placeItem = newPlaceItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.placeItem) {
        self.detailDescriptionLabel.text = self.placeItem.description;
        self.navigationItem.title = self.placeItem.name;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

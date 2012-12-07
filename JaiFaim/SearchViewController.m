//
//  MasterViewController.m
//  JaiFaim
//
//  Created by Mathieu Darse on 07/12/12.
//  Copyright (c) 2012 Mathieu Darse. All rights reserved.
//

#import "SearchViewController.h"

#import "PlaceViewController.h"
#import "Place.h"

@interface SearchViewController () {
    NSArray *_places;
}

@end

@implementation SearchViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _places = [Place places];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _places.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Place *place = [_places objectAtIndex:indexPath.row];
    cell.textLabel.text = place.name;

    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showPlace"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Place *place = [_places objectAtIndex:indexPath.row];
        [[segue destinationViewController] setPlaceItem:place];
    }
}

@end

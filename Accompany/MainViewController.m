//
//  MainViewController.m
//  Accompany
//
//  Created by Pan Jacob on 12-7-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize MapView;
@synthesize TableView;
@synthesize Segment;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    arr = [[NSMutableArray alloc] initWithObjects:@"中大第一饭堂", @"都城食堂", @"君成湖畔餐厅", nil];
    
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [self setTableView:nil];
    [self setSegment:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [arr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"restaurantCell";
    
    RestaurantCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    cell.RestaurantName.text = [arr objectAtIndex:indexPath.row];
    [cell.RestaurantImage setImage:[UIImage imageNamed:@"restFlowDef.png"]];
    
    return cell;
}

#pragma mark - prepare for segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [segue.identifier isEqualToString:@"RestaurantDetail"] )
    {
        RestaurantCell *cell = sender;
        UIViewController *nextViewController = segue.destinationViewController;
        [nextViewController setValue:cell.RestaurantName.text forKey:@"RestareantNameStr"];
    }
}

- (IBAction)logout:(id)sender 
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)SegmentChanged:(id)sender {
    if ( [sender selectedSegmentIndex] == 0 )
    {
        self.TableView.hidden = NO;
        self.MapView.hidden = YES;
    }
    else if ( [sender selectedSegmentIndex] == 1 )
    {
        self.TableView.hidden = YES;
        self.MapView.hidden = NO;
    }
    
}
@end

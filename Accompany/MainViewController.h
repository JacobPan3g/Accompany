//
//  MainViewController.h
//  Accompany
//
//  Created by Pan Jacob on 12-7-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestaurantCell.h"

@interface MainViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *arr;
}
@property (weak, nonatomic) IBOutlet UIImageView *MapView;
@property (weak, nonatomic) IBOutlet UITableView *TableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *Segment;

- (IBAction)logout:(id)sender;
- (IBAction)SegmentChanged:(id)sender;


@end

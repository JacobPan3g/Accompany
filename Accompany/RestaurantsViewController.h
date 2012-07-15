//
//  RestaurantsViewController.h
//  Accompany
//
//  Created by Jacob Pan on 7/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantsViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *restaurantsArr;
    NSString *RestareantNameStr;
}
@property (weak, nonatomic) IBOutlet UILabel *RestareantName;

@end

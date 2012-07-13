//
//  MainViewController.h
//  Accompany
//
//  Created by Pan Jacob on 12-7-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol exit <NSObject>
@required
-(void)cancel;
@end

@interface MainViewController : UITableViewController

@property(nonatomic, retain) id<exit> delegate;

-(IBAction)cancelItemPressed;

@end

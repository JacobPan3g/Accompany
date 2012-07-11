//
//  JPViewController.h
//  Accompany
//
//  Created by Pan Jacob on 12-7-11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JPViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *usrField;
@property (nonatomic, retain) IBOutlet UITextField *pwdField;

@property (nonatomic, retain) UIViewController *mainViewController;

-(IBAction)closeKeyboard:(id)sender;
-(IBAction)nestInput;
-(IBAction)Login;

@end

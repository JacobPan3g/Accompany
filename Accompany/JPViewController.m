//
//  JPViewController.m
//  Accompany
//
//  Created by Pan Jacob on 12-7-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "JPViewController.h"

@interface JPViewController ()

@end

@implementation JPViewController

@synthesize usrField;
@synthesize pwdField;

- (IBAction)backgroundPressed:(id)sender
{
    [usrField resignFirstResponder];
    [pwdField resignFirstResponder];
}

- (IBAction)usrFieldInputFinish:(id)sender
{
    [self.pwdField becomeFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

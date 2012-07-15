//
//  JPViewController.m
//  Accompany
//
//  Created by Pan Jacob on 12-7-11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "JPViewController.h"

@implementation JPViewController

@synthesize usrField;
@synthesize pwdField;

- (void)closeKeyboard:(id)sender
{
    [self.usrField resignFirstResponder];
    [self.pwdField resignFirstResponder];
}

- (void)nestInput
{
    [self.pwdField becomeFirstResponder];
}

- (void)Login
{
    if ( [self.usrField.text isEqualToString:@"pig"] && [self.pwdField.text isEqualToString:@"pig"] )
    {
        [self performSegueWithIdentifier:@"login" sender:self];
    }
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    UITabBarController *tabbarController = segue.destinationViewController;
//    UINavigationController *navigationController = [[tabbarController viewControllers] objectAtIndex:0];
//    MainViewController *mainViewController = [[navigationController viewControllers] objectAtIndex:0];
//    mainViewController.delegate = self;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Read the data in the userDefault
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [usrField setText:[userDefault stringForKey:@"username"]];
    [pwdField setText:[userDefault stringForKey:@"password"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    //Save the data
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setValue:self.usrField.text forKey:@"username"];
    [userDefault setValue:self.pwdField.text forKey:@"password"];
    
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma delegate

- (void)cancel
{
    [self dismissModalViewControllerAnimated:YES];
}

@end

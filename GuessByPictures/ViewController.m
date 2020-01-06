//
//  ViewController.m
//  GuessByPictures
//
//  Created by Macbook on 18/07/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "ViewController.h"
#import "GuessPictureVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    self.navigationController.navigationBar.hidden = YES;
    
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
}

- (IBAction)guessCountryButtonTouched:(id)sender
{
    GuessPictureVC * view = [self.storyboard instantiateViewControllerWithIdentifier:@"GuessPictureVC"];
    view.type = @"Countries";
    [self.navigationController pushViewController:view animated:YES];
    
}


- (IBAction)guessCityButtonTouched:(id)sender
{
    GuessPictureVC * view = [self.storyboard instantiateViewControllerWithIdentifier:@"GuessPictureVC"];
    view.type = @"Cities";
    [self.navigationController pushViewController:view animated:YES];
}

@end

//
//  ViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "HillsViewController.h"

@implementation HillsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showHill"]) {
        HillViewController *hillVC = segue.destinationViewController;
        hillVC.hill = _currentHill;
    }
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Hills" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (IBAction)hillClicked:(UIButton *)sender {
    Hill *hill = [Hill forName:sender.titleLabel.text];
    [self showHill:hill];
}

- (void)showHill:(Hill *)hill
{
    _currentHill = hill;
    [self performSegueWithIdentifier:@"showHill" sender:self];
}

@end

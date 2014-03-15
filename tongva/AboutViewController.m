//
//  AboutViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/15/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "AboutViewController.h"

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)jeffDickeyClicked
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://dickey.xxx"]];
}

- (IBAction)codeForLosAngelesClicked {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://meetup.com/codeforla"]];
}

- (IBAction)tongaParkInfoClicked {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://tongvapark.squarespace.com/about/"]];
}


@end

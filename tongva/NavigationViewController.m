//
//  NavigationViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/11/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "NavigationViewController.h"

@implementation NavigationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    TongvaLocation.locationManager.delegate = self;
    [TongvaLocation startUpdatingLocation];
    _newHillAlert = [[NewHillAlert alloc] initWithFrame:CGRectMake(0.0, self.view.bounds.size.height-50, self.view.bounds.size.width, 50)];
    [self.view addSubview:_newHillAlert];
    [self.view sendSubviewToBack:_newHillAlert];
    _tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
    [_newHillAlert addGestureRecognizer:_tapGesture];
    _newHillAlert.clipsToBounds = NO;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [TongvaLocation startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation *loc = locations[0];
    Hill *hill = [Hill forLocation:loc.coordinate];
    if (hill) {
        if (!_previousHill || ![_previousHill.name isEqual:hill.name]) {
            _previousHill = hill;
            [self.view bringSubviewToFront:_newHillAlert];
            _newHillAlert.label.text = [NSString stringWithFormat:@"You are on %@", hill.name];
        }
    }
}

- (HillsViewController *)hillsViewController
{
    return self.viewControllers.firstObject;
}

- (void)handleTapFrom:(UITapGestureRecognizer *)recognizer;
{
    [self.hillsViewController showHill:_previousHill];
    [self.view sendSubviewToBack:_newHillAlert];
}

@end

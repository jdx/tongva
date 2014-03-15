//
//  TongvaLocation.m
//  tongva
//
//  Created by Jeff Dickey on 3/15/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "TongvaLocation.h"

@implementation TongvaLocation

static CLLocationManager *_locationManager;

+ (void)startUpdatingLocation
{
    if (!_locationManager) {
        _locationManager = [[CLLocationManager alloc] init];
        [_locationManager startUpdatingLocation];
    }
}

+ (CLLocationManager *)locationManager
{
    return _locationManager;
}

@end

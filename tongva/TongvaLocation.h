//
//  TongvaLocation.h
//  tongva
//
//  Created by Jeff Dickey on 3/15/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface TongvaLocation : NSObject

+ (void)startUpdatingLocation;
+ (CLLocationManager *)locationManager;

@end

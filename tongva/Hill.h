//
//  Hill.h
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

#import "Underscore.h"
#define _ Underscore

#import "TongvaData.h"
#import "Plant.h"

@interface Hill : NSObject

+ (NSArray *)hills;
+ (Hill *)forLocation:(CLLocationCoordinate2D)loc;
+ (Hill *)forName:(NSString *)name;

- (Hill *)initWithDict:(NSDictionary *)dict;

- (NSString *)name;
- (NSArray *)plantTypes;
- (BOOL)isLocationOnHill:(CLLocationCoordinate2D)loc;

@end

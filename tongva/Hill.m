//
//  Hill.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "Hill.h"

@interface Hill() {
    NSDictionary *_dict;
    MKPolygon *_polygon;
}
@end

@implementation Hill

+ (NSArray *)hills
{
    return _.array(TongvaData.json[@"features"])
    .map(^Hill *(NSDictionary *json) {
        return [[Hill alloc] initWithDict:json];
    })
    .unwrap;
}

- (Hill *)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        _dict = dict;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Hill: %@>", self.name];
}

- (NSString *)name
{
    return _dict[@"properties"][@"Area"];
}

- (NSArray *)plantTypes
{
    return _.array(_dict[@"properties"][@"PlantTypes"])
    .map(^NSArray *(NSDictionary *type) {
        return _.array(type[@"Plants"])
        .map(^Plant *(NSDictionary(*p)) {
            return [[Plant alloc] initWithDict:p];
        })
        .unwrap;
    })
    .unwrap;
}

- (BOOL)isLocationOnHill:(CLLocationCoordinate2D)loc
{
    CGMutablePathRef path = CGPathCreateMutable();
    NSArray *coords = _dict[@"geometry"][@"coordinates"][0];
    CGPathMoveToPoint(path, nil, [coords[0][0] floatValue], [coords[0][1] floatValue]);
    for(int i=0; i<coords.count; i++) {
        CGPathAddLineToPoint(path, nil, [coords[i][0] floatValue], [coords[i][1] floatValue]);
    }
    CGPathCloseSubpath(path);
    CGPoint p = CGPointMake(loc.longitude, loc.latitude);
    BOOL contains = CGPathContainsPoint(path, nil, p, false);
    CGPathRelease(path);
    return contains;
}

+ (Hill *)forLocation:(CLLocationCoordinate2D)loc
{
    for (Hill *h in self.hills) {
        if ([h isLocationOnHill:loc]) {
            return h;
        }
    }
    return nil;
}

+ (Hill *)forName:(NSString *)name
{
    for (Hill *h in self.hills) {
        if ([h.name isEqualToString:name]) {
            return h;
        }
    }
    return nil;
}

@end

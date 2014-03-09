//
//  GeoData.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "TongvaData.h"

@interface TongvaData ()
@end

@implementation TongvaData

static NSDictionary *_json;

+ (NSDictionary *)json
{
    if (_json == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"plants" ofType:@"geojson"];
        NSData *data = [NSData dataWithContentsOfFile:path options:NSDataReadingMappedIfSafe error:nil];
        _json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    }
    return _json;
}

@end

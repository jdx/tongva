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

@end

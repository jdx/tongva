//
//  Plant.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "Plant.h"

@interface Plant() {
    NSDictionary *_dict;
}
@end

@implementation Plant

- (Plant *)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        _dict = dict;
    }
    return self;
}

- (NSString *)commonName
{
    return _dict[@"CommonName"];
}

- (NSURL *)imageURL
{
    return [NSURL URLWithString:_dict[@"ImageURL"]];
}

@end

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

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Plant: %@ %@>", self.type, self.latinName];
}

- (NSString *)type
{
    return _dict[@"Type"];
}

- (NSString *)commonName
{
    return _dict[@"CommonName"];
}

- (NSString *)latinName
{
    return _dict[@"LatinName"];
}

- (NSURL *)imageURL
{
    return [NSURL URLWithString:_dict[@"ImageURL"]];
}

@end

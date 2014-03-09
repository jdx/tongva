//
//  Plant.h
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Plant : NSObject

- (Plant *)initWithDict:(NSDictionary *)dict;

- (NSString *)commonName;
- (NSURL *)imageURL;

@end

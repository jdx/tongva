//
//  PlantTest.m
//  tongva
//
//  Created by Jeff Dickey on 3/11/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Plant.h"

@interface PlantTest : XCTestCase {
    Plant *plant;
}

@end

@implementation PlantTest

- (void)setUp
{
    [super setUp];
    plant = [[Plant alloc] initWithDict:@{ @"CommonName": @"Douglas Iris" }];
}

- (void)testCommonName
{
    XCTAssertEqualObjects(@"Douglas Iris", plant.commonName);
}

@end

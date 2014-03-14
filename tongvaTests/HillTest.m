#import <XCTest/XCTest.h>

#import "Hill.h"

@interface HillTest : XCTestCase {
    Hill *hill;
}

@end

@implementation HillTest

- (void)setUp
{
    [super setUp];
    hill = [[Hill alloc] initWithDict:
            @{
              @"properties": @{
                      @"Area": @"Observation Hill"
                      },
              @"geometry": @{ @"coordinates": @{} }
              }];
//    NSArray *coords = [[NSArray alloc] initWithObjects:0.0, nil];
//    hill[@"geometry"][@"coordinates"] = coords;
}

- (void)testName
{
    XCTAssertEqualObjects(@"Observation Hill", hill.name);
}

- (void)testIsLocationOnHill
{
    CLLocationCoordinate2D loc = CLLocationCoordinate2DMake(1, 1);
    XCTAssert([hill isLocationOnHill:loc], @"Location on hill");
}

@end

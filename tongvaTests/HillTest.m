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
              @"geometry": @{ @"coordinates":
                                  @[@[@[@0.0f, @0.0f],
                                      @[@2.0f, @0.0f],
                                      @[@2.0f, @2.0f],
                                      @[@0.0f, @2.0f]]]}
              }];
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

- (void)testIsLocationNotOnHill
{
    CLLocationCoordinate2D loc = CLLocationCoordinate2DMake(3, 3);
    XCTAssertFalse([hill isLocationOnHill:loc], @"Location on hill");
}

@end

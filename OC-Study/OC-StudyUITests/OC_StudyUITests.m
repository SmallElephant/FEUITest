//
//  OC_StudyUITests.m
//  OC-StudyUITests
//
//  Created by keso on 2017/3/18.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface OC_StudyUITests : XCTestCase

@end

@implementation OC_StudyUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.staticTexts[@"FlyElephant"] tap];
    
    XCUIElement *switch2 = app.switches[@"1"];
    [switch2 tap];
    [app.activityIndicators[@"Progress halted"] tap];
    [[app.otherElements containingType:XCUIElementTypeStaticText identifier:@"FlyElephant"].element tap];
    [app.progressIndicators[@"Progress"] tap];
    
    XCUIElementQuery *steppersQuery = app.steppers;
    XCUIElement *incrementButton = steppersQuery.buttons[@"Increment"];
    [incrementButton tap];
    
    XCUIElement *slider = app.sliders[@"50%"];
    [slider tap];
    [slider tap];
    [slider tap];
    
    XCUIElement *switch3 = app.switches[@"0"];
    [switch3 tap];
    [switch2 tap];
    [switch3 tap];
    [switch2 tap];
    [switch3 tap];
    [switch2 tap];
    [incrementButton tap];
    [steppersQuery.buttons[@"Decrement"] tap];
    

    
    for (NSInteger i=0; i < 50; i++) {
        XCUIElement *button = app.buttons[@"Button"];
        [button tap];
    }
    
}

@end

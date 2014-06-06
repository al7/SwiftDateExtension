//
//  Created by Alex Leite on 6/5/14.
//  Copyright (c) 2014 al7dev. All rights reserved.
//

import XCTest

class DateExtensionTests: XCTestCase {
    var today:NSDate?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        today = NSDate()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        today = nil
        super.tearDown()
    }

    func testSecondsBetween() {
        let testDate = today!.plusMinutes(1)
        let secsBetween = NSDate.secondsBetween(date1: today!, date2: testDate)
        XCTAssert(secsBetween == 60, "There should be 60 seconds between today and test date")
    }
    
    func testMinutesBetween() {
        let testDate = today!.plusHours(2)
        let minBetween = NSDate.minutesBetween(date1: today!, date2: testDate)
        XCTAssert(minBetween == 120, "There should be 120 minutes between today and test date")
    }
    
    func testHoursBetween() {
        let testDate = today!.plusDays(1)
        let hoursBetween = NSDate.hoursBetween(date1: today!, date2: testDate)
        XCTAssert(hoursBetween == 24, "There should be 24 hours between today and test date")
    }
    
    func testDaysBetween() {
        let testDate = today!.plusWeeks(1)
        let daysBetween = NSDate.daysBetween(date1: today!, date2: testDate)
        XCTAssert(daysBetween == 7, "There should be 7 days between today and test date")
    }
    
    func testWeeksBetween() {
        let testDate = today!.plusDays(16)
        let weeksBetween = NSDate.weeksBetween(date1: today!, date2: testDate)
        XCTAssert(weeksBetween == 2, "There should be 2 weeks between today and test date")
    }
    
    func testMonthsBetween() {
        let testDate = today!.plusDays(65)
        let monthsBetween = NSDate.monthsBetween(date1: today!, date2: testDate)
        XCTAssert(monthsBetween == 2, "There should be 2 months between today and test date")
    }
    
    func testMonthsBetween2() {
        let testDate = today!.plusMonths(2).minusDays(3)
        let monthsBetween = NSDate.monthsBetween(date1: today!, date2: testDate)
        XCTAssert(monthsBetween == 1, "There should be 1 month between today and test date")
    }
    
    func testYearsBetween() {
        let testDate = today!.plusMonths(28)
        let secsBetween = NSDate.yearsBetween(date1: today!, date2: testDate)
        XCTAssert(secsBetween == 2, "There should be 2 years between today and test date")
    }    
}

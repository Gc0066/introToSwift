//
//  listMakerTests.swift
//  listMakerTests
//
//  Created by George Coleman on 18/10/2018.
//  Copyright © 2018 George Coleman. All rights reserved.
//

import XCTest
@testable import listMaker

class listMakerTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testAddItem() {
        let lister = Lister.sharedInstance
        lister.add(item: "Bread")
        do {
            let newItem = try lister.getItem(index: 0)
            XCTAssertEqual(newItem, "Bread")
        }
        catch {
            print("an error occurred")
            XCTFail()
        }
        
    }
    
    func testGetInvalidIndex() {
        let lister = Lister.sharedInstance
        lister.add(item: "Bread")
        lister.add(item: "Bread")
        print(lister.count)
        XCTAssertEqual(lister.count, 2)
		do {
			_ = try lister.getItem(index: 2)
			XCTFail()
		}
		catch ListError.outOfRange(let index){
			print("index \(index) is out of range")
		}
		catch {
			print("an error occurred")
		}
    }
    
    func testCounter() {
        let lister = Lister.sharedInstance
        var val = lister.counter
        XCTAssertEqual(val, 0)
        lister.counter = 5
        val = lister.counter
        XCTAssertEqual(val, 5)
    }
    
    func testClear() {
        let lister = Lister.sharedInstance
        lister.add(item: "Bread")
        lister.add(item: "Bread")
        print(lister.count)
        XCTAssertEqual(lister.count,2)
        lister.clearList()
        XCTAssertEqual(lister.count,0)
    }
    
  // func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
 //   }

  //  func testPerformanceExample() {
        // This is an example of a performance test case.
    //    self.measure {
            // Put the code you want to measure the time of here.
     //   }
    //}

}

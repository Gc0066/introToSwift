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
    
    var lister = Lister()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    func testAddItem() {
        self.lister.add(item: "Bread")
        let newItem = lister.getItem(index: 0)
        XCTAssertEqual(newItem, "Bread")
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

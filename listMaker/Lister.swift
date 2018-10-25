//
//  Lister.swift
//  listMaker
//
//  Created by George Coleman on 18/10/2018.
//  Copyright © 2018 George Coleman. All rights reserved.
//

import Foundation

enum ListError: Error {
    case emptyString
    case duplicateItem
    case outOfRange(invalidIndex: Int)
}

/**
 Class to maintain shopping lists.
 - Author: George Coleman
 - Copyright: Coventry University 2018
 - Requires: iOS 10
 */

public class Lister {
    var items: [String]
    var increment: Int
    
    //turns the lister class into a singleton.
    /**
     The first time this is
     accessed it instantiates an instance of the
     Lister class. On subsequent access it returns a
     pointer to the same object.
     */
    public static let sharedInstance = Lister()
    
    private init() {
        self.items = []
        self.increment = 0
    }
    
  /*  init() {
        self.items = []
        self.increment = 0
    }*/
    
    public func add(item: String) {
        self.items.append(item)
    }
    
    public func getItem(index: Int) throws -> String {
        if (index < 0 || index > (self.count-1)) {
            throw ListError.outOfRange(invalidIndex: index)
        }
        return self.items[index]
    }
    
    public var count:Int {
        get {
            return self.items.count
        }
    }
    
    public var counter:Int {
        get {
            return self.increment
        }
    
        set(check) {
            self.increment = check
        }
    }
    
    /**
     Clears the list of all items within it.
    ```
     let lister = Lister()
     let item = lister.clearList()
     ```
    */
    
    public func clearList() {
        self.items.removeAll()
    }
    
    /**
     inserts a new item at a specific element within the list of items.
     ```
     let lister = Lister()
     let item = lister.insert(newElement: "Bread", at: 2)
     ```
     - Parameter newElement: the new item to insert.
     - Parameter at: The index to insert the item into.
     */
    public func insert(newElement: String, at:Int) {
        
    }
    
    public func remove(at: Int)  throws {
        
    }
    
    public func moveItem(fromindex: Int, toIndex: Int) {
        
    }
    
    public func printTemp() {
        let temperature = 70
        switch temperature {
        case 65...75:
            print("The temperature is just right")
        case Int.min...64:
            print("temperature too cold")
        default:
            print("the temperature is too hot")
        }
    }
    
}

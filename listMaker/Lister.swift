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

public class Lister {
    var items: [String]
    var increment: Int
    
    init() {
        self.items = []
        self.increment = 0
    }
    
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
    
}

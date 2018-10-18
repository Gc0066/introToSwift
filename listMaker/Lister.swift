//
//  Lister.swift
//  listMaker
//
//  Created by George Coleman on 18/10/2018.
//  Copyright © 2018 George Coleman. All rights reserved.
//

import Foundation

public class Lister {
    var items: [String]
    
    init() {
        self.items = []
    }
    
    public func add(item: String) {
        self.items.append(item)
    }
    
    public func getItem(index: Int) -> String {
        return self.items[index]
    }
    
    public var count:Int {
        get {
            return self.items.count
        }
    }
    
}

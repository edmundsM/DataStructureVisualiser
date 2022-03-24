//
//  Stack.swift
//  DataStructureVisualiser
//
//  Created by Edmunds, Maximilian (NA) on 03/03/2022.
//

import Foundation

class Stack: ObservableObject {
    
    @Published var stack = [4,6,34,49,3,2,5]
    var pointer = 0
    
    func displayStack() -> [Int] {
        var tempArray: [Int] = []
        for item in stack {
            tempArray.append(item)
        }
        return tempArray
    }
    
    func push() {
        let pushValue = Int.random(in: 1..<50)
        stack.insert(pushValue, at: 0)
    }
    
    func pop() -> Int {
        let poppedValue = stack[0]
        self.stack.remove(at: 0)
        return poppedValue
    }
    
}

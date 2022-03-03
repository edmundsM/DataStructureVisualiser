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
    
    
    func push() {
        let pushValue = Int.random(in: 1..<50)
        stack[pointer] = pushValue
        pointer -= 1
    }
    
    func pop() {
        stack[pointer] = 0
        pointer += 1
    }
    
}

//
//  StackView.swift
//  DataStructureVisualiser
//
//  Created by Edmunds, Maximilian (NA) on 03/03/2022.
//

import SwiftUI

struct StackView: View {
    @StateObject var stack = Stack()
    
    
    
    var body: some View {
        VStack {
            Image(systemName: "\(stack.stack[0]).square")
                .resizable()
                .frame(width: 60, height: 60)
            Image(systemName: "\(stack.stack[1]).square")
                .resizable()
                .frame(width: 60, height: 60)
            Image(systemName: "\(stack.stack[2]).square")
                .resizable()
                .frame(width: 60, height: 60)
            Image(systemName: "\(stack.stack[3]).square")
                .resizable()
                .frame(width: 60, height: 60)
            Image(systemName: "\(stack.stack[4]).square")
                .resizable()
                .frame(width: 60, height: 60)
            Image(systemName: "\(stack.stack[5]).square")
                .resizable()
                .frame(width: 60, height: 60)
            Image(systemName: "\(stack.stack[6]).square")
                .resizable()
                .frame(width: 60, height: 60)
            Button("Push", action: {
                if stack.stack.count < 7 {
                    stack.push()
                }
            })
            Button("Pop", action: {
                if stack.stack.count > 0 {
                    stack.pop()
                }
            })
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}

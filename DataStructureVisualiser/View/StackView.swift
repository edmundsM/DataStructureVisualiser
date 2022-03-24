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
            Spacer()
            List(stack.displayStack(), id: \.self) {
                Image(systemName: "\($0.self).square")
                    .resizable()
                    .frame(width: 60, height: 60)
            }
            .frame(width: 120, height: 550, alignment: .center)
            HStack {
                Button("Push", action: {
                    if stack.stack.count < 7 {
                        stack.push()
                    }
                })
                    .padding()
                Button("Pop", action: {
                    if stack.stack.count > 0 {
                        let _ = stack.pop()
                    }
                })
                    .padding()
            }
            Spacer()
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}

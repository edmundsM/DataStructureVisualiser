//
//  ContentView.swift
//  DataStructureVisualiser
//
//  Created by Edmunds, Maximilian (NA) on 03/03/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            StackView()
                .tabItem {
                    Image(systemName: "rectangle.stack")
                    Text("Stack")
                }
            QueueView()
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Queue")
                    }
            LinkedListView()
                    .tabItem {
                        Image(systemName: "link")
                        Text("Linked List")
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}

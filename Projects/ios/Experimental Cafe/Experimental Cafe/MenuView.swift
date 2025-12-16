//
//  ContentView.swift
//  Experimental Cafe
//
//  Created by miracneroid on 13/12/25.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems) {item in
            
            RowView(item: item)
        }
        .listStyle(.plain)
        .onAppear{
            menuItems = dataService.getData()
        }
    }
}

#Preview {
    MenuView()
}

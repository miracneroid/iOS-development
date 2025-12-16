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
            
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                
                Spacer()
                VStack{
                    Text("$" + item.price)
                    Spacer()
                    Button {
                        order()
                    } label: {
                        Text("Order")
                            .foregroundColor(.blue)
                    }
                }
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )
        }
        .listStyle(.plain)
        .onAppear{
            menuItems = dataService.getData()
        }
    }
    func order() {
        print("Order Placed")
    }
}

#Preview {
    MenuView()
}

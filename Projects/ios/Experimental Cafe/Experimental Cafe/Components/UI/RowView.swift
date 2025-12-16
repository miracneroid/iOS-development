//
//  RowView.swift
//  Experimental Cafe
//
//  Created by Ayush Srivastava on 16/12/25.
//

import SwiftUI

struct RowView: View {
    
    var item: MenuItem
    
    var body: some View {
        
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
                Button {
                    order()
                } label: {
                    Text("Order")
                        .foregroundColor(.blue)
                }
            }
        }
        .padding(0.5)
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
        
    }
    func order() {
        print("Order Placed")
    }
}

#Preview {
    RowView(item: MenuItem(name: "Test Item", price: "3.99", imageName: "tako-sushi"))
}

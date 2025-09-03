//
//  ItemDetail.swift
//  iDine
//
//  Created by Aiden Baker on 9/3/25.
//

import SwiftUI

struct ItemDetail : View {
    @EnvironmentObject var order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(radius: 4, y: 2)
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            .padding(.horizontal)
            
            Text(item.description)
                .padding()
            Button("Order This") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example).environmentObject(Order())
    }
}

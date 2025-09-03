//
//  ItemRow.swift
//  iDine
//
//  Created by Aiden Baker on 9/3/25.
//

import SwiftUI

struct ItemRow : View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)

            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}

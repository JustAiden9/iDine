//
//  iDineApp.swift
//  iDine
//
//  Created by Aiden Baker on 8/29/25.
//


import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}

//
//  SwiftUITest02_WebkitApp.swift
//  SwiftUITest02-Webkit
//
//  Created by jae hwan choo on 2020/10/19.
//

import SwiftUI

@main
struct SwiftUITest02_WebkitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension View {
    func phoneOnlyStackNavigation() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        } else {
            return AnyView(self)
        }
    }
}

//
//  JerseyCookiesApp.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

@main
struct JerseyCookiesApp: App {
    @StateObject private var vm = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}

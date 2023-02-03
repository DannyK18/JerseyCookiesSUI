//
//  ContentView.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

enum Tab {
   case home
   case catalog
   case cart
}

struct ContentView: View {
    @State private var selection: Tab = .home
    
    var body: some View {
        TabView(selection: $selection) {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "star")
                }.tag(Tab.home)
            
//            CatalogView()
            CatalogView()
                .tabItem {
                    Label("Catalog", systemImage: "list.bullet")
                }.tag(Tab.catalog)
            
//            OrderView()
            CartView()
                .tabItem {
                    Label("", systemImage: "cart.badge.plus")
                }.tag(Tab.cart)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(OrderViewModel())
    }
}

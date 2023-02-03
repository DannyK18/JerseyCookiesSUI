//
//  OrderViewModel.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import Foundation

class OrderViewModel: ObservableObject {
    
    @Published var itemsInCart = [Product]()

    
    func addToCart(item: Product) {
        itemsInCart.append(item)
    }
    
    func remove(item: Product) {
        if let index = itemsInCart.firstIndex(of: item) {
            itemsInCart.remove(at: index)
        }
    }
}

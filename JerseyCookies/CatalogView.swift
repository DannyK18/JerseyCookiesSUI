//
//  CatalogView.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct CatalogView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(testDataProducts) { product in
                    NavigationLink(destination: ProductDetail(product: product)) {
                        ProductRow(product: product)
                    }
                }
            }
            .navigationTitle("Our products")
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}

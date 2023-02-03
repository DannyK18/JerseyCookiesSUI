//
//  ProductRow.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct ProductRow: View {
    var product: Product
    
    var body: some View {
        HStack {
            product.image
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
               Text(product.name)
                    .fontWeight(.semibold)
               Text("\(product.price) | \(product.calories)")
               Button("Show details"){}
               .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
           ProductRow(product: testDataProducts[0])
            
           ProductRow(product: testDataProducts[1])
            
        }.previewLayout(.fixed(width: 350, height: 100))
    }
}

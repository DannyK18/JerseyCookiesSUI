//
//  ProductDetail.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct ProductDetail: View {
    @EnvironmentObject var vm: OrderViewModel
    
    var product: Product
    
    var body: some View {
        VStack {
                product.image.resizable()
                        .frame(width: 200, height: 200)
                    .clipShape(Circle())
                
            HStack {
                Spacer()
                Text("\(product.price) | \(product.calories)")
                
            }
            .padding(.trailing)
            
            HStack {
                Text(product.name)
                    .font(.largeTitle)
            }
            
            Text(product.description)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing], 10.0)
            
            Spacer()
            
            Button(action: {
                vm.addToCart(item: product)
            })
            {
               RoundedButton(imageName: "cart.badge.plus", text: "Add to order")
            }
        }
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail(product: testDataProducts[0])
    }
}

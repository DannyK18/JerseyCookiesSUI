//
//  CartView.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var vm: OrderViewModel
    
    var body: some View {
        NavigationView {
            List {
//                Section {
//                    ForEach(vm.itemsInCart) { item in
//                                                Text("TOTAL: \(vm.totalPrice(items: item))")
//                                                Text("\(item.map { $0.price + $1.price })")
//
//
//                                                HStack {
//                                                    Text(item.name)
//
//                                                    Spacer()
//                        Text("\((item.price.slice(1, 4) as NSString).doubleValue)")
//                                                }
//                                            }
//                                            .onDelete(perform: deleteItems)
//                    }
            
                Section {
                    ForEach(vm.itemsInCart) { product in
                        NavigationLink(destination: ProductDetail(product: product)) {
                            ProductRow(product: product)
                        }
                    }
                    .onDelete(perform: deleteItems)
                    
                    Text("TOTAL: \(totalPrice.computeDecimal())")
                        .font(.title)
                }
                //                .disabled(order.items.isEmpty)
            }
            .navigationTitle("Cart")
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                EditButton()
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        vm.itemsInCart.remove(atOffsets: offsets)
    }
    
    var totalPrice: Double {

       let total = vm.itemsInCart.map({ (($0.price.dropFirst()) as NSString).doubleValue }).reduce(0, +)
        
        return total
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(OrderViewModel())
    }
}

//extension StringProtocol {
//    func slice(_ start: Int, _ end: Int) -> SubSequence {
//        let lower = index(self.startIndex, offsetBy: start)
//        let upper = index(lower, offsetBy: end - start)
//        return self[lower...upper]
//    }
//}

extension Double {
    func computeDecimal() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        numberFormatter.maximumFractionDigits = 2

        return numberFormatter.string(from: NSNumber(value:self)) ?? ""
    }
}

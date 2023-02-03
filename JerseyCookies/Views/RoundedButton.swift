//
//  RoundedButton.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct RoundedButton: View {
    
    var imageName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.title)
            Text(text)
                .fontWeight(.semibold)
                .font(.title)
            
        }.padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(40)
    }
}

struct RoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButton(imageName: "cart.badge.plus", text: "Add to order")
    }
}










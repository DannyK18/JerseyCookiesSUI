//
//  Product.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//


import Foundation
import SwiftUI

struct Product: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var calories: String
    var price: String
    var description: String
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    init(name: String, calories: String, imageName: String, price: String, description: String) {
//        self.id = UUID().uuidString
        self.name = name
        self.calories = calories
        self.imageName = imageName
        self.price = price
        self.description = description
    }
}

let testDataProducts = [
    Product(name:"Chocolate hearts", calories:"270 cal", imageName:"cookie1", price:"$1.55", description: "In the code above we created a custom button that has an image and a text. For the image, we used one of SF Symbols that is a library developed to integrate seamlessly with the system font and can be downloaded here. We used a corner radius modifier to round the button."),
    Product(name:"M&M cookies", calories:"300 cal", imageName:"cookie2", price:"$2.35", description: "In the code above we created a custom button that has an image and a text. For the image, we used one of SF Symbols that is a library developed to integrate seamlessly with the system font and can be downloaded here. We used a corner radius modifier to round the button."),
    Product(name:"Valentines cookies", calories:"250 cal", imageName:"cookie3", price:"$3.35", description: "In the code above we created a custom button that has an image and a text. For the image, we used one of SF Symbols that is a library developed to integrate seamlessly with the system font and can be downloaded here. We used a corner radius modifier to round the button."),
    Product(name:"Christmas cookies", calories:"270 cal", imageName:"cookie4", price:"$2.75", description: "In the code above we created a custom button that has an image and a text. For the image, we used one of SF Symbols that is a library developed to integrate seamlessly with the system font and can be downloaded here. We used a corner radius modifier to round the button."),
    Product(name:"Jelly cookies", calories:"300 cal", imageName:"cookie5", price:"$2.95", description: "In the code above we created a custom button that has an image and a text. For the image, we used one of SF Symbols that is a library developed to integrate seamlessly with the system font and can be downloaded here. We used a corner radius modifier to round the button.")]



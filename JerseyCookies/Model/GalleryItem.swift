//
//  GalleryItem.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import Foundation
import SwiftUI

struct GalleryItem: Identifiable {
   var id = UUID()
   var name: String
   private var imageName: String
    
   var image: Image {
      Image(imageName)
   }
    
   init(name: String, imageName: String) {
//      self.id = UUID().uuidString
      self.name = name
      self.imageName = imageName
   }
}
let testDataGalleryItems = [
   GalleryItem(name:"Delicious steaks", imageName:"fillet-steak"),
   GalleryItem(name:"Tableware Accessories", imageName:"fresh-baked-croissant-thumb"),
   GalleryItem(name:"Special Offers", imageName:"full-english"),
   GalleryItem(name:"Delicious Treats 🍪", imageName:"macarons-galore")
]

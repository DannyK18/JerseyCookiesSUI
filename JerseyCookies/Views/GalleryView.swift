//
//  GalleryView.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct GalleryView: View {
    
    var galleryName: String
    var items: [GalleryItem]
    
    init(galleryName: String, items: [GalleryItem]) {
        self.galleryName = galleryName
        self.items = items
        
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(galleryName)
                .font(.custom("Helvetica Neue", size: 20))
                .foregroundColor(.gray)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { key in
                        GalleryItemRow(galleryItem: key)
                    }
                }
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(galleryName: "Gallery", items: testDataGalleryItems)
    }
}

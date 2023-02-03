//
//  GalleryItemRow.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct GalleryItemRow: View {
    var galleryItem: GalleryItem
    
    var body: some View {
        VStack(alignment: .leading) {
            
            NavigationLink(destination: CatalogView()) {
                galleryItem.image
                    .resizable()
                    .frame(width: 255, height: 155)
                    .cornerRadius(5)
            }
            
            Text(galleryItem.name)
                .font(.custom("Helvetica Neue", size: 23))
        }
        .padding(.leading, 15)
    }
}

struct GalleryItemRow_Previews: PreviewProvider {
    static var previews: some View {
        GalleryItemRow(galleryItem: testDataGalleryItems[0])
    }
}

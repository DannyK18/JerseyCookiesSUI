//
//  HimeView.swift
//  JerseyCookies
//
//  Created by Daniel on 02.09.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Spacer(minLength: 50)
            HStack {
                 Text("Welcome")
                    .font(.largeTitle)
                    .frame(height: 30, alignment: .center)
                    .padding()
                
                 Spacer()
              }

            
            
            VStack(spacing: -10) {
            GalleryView(galleryName: "Explore our catalog", items: testDataGalleryItems)
            Text("Jersey Cookies")
                .font(.custom("Parisienne", size: 35))
                .frame(height: 100, alignment: .center)
            
            
                Image("fresh-baked-croissant-thumb")
                    .resizable()
                    .frame(height: 200)
                    .aspectRatio(contentMode: .fill)
//               Spacer()
            }
        }
        .padding(.bottom, 50)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

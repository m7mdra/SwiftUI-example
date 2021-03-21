//
//  ProductImageGallery.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct ProductImageGallery : View{
    @State var currentPage = 0
    
    var body: some View{
        HStack{
            PageViewController(pages: [ProductImage(),
                                       ProductImage(),
                                       ProductImage(),
                                       ProductImage(),
                                       ProductImage()
                ]
                , currentPage: $currentPage,orientation: .vertical)
            
            PageControl(numberOfPages: 5, currentPage: $currentPage)
                .rotationEffect(.degrees(90))
                .frame(width:40)
            
        }
        .frame(width:UIScreen.width,height: 300)
    .fixedSize(horizontal: false, vertical: true)
        .background(Color.black)
    }
}

struct ProductImage: View {
    var body: some View {
        AnyView(Image("SoteriaVazo")
            .resizable()
            .scaledToFit().frame(width:UIScreen.width,height:300)).background(Color.black)
        
    }
}

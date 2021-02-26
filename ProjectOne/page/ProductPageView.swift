//
//  ProductPageView.swift
//  ProjectOne
//
//  Created by Sharif on 26/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit
struct ProductPageView : View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}){
                    Image("arrow-left")
                        .foregroundColor(.black)
                }
                Spacer()
                Text("Product details")
                    .font(.custom("Book", size: 13))
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                    
                }){
                    Image("basket")
                        .renderingMode(.original)
                }
                
            }.padding().background(Color.white)
            
            ZStack(alignment:.top){
                ProductImageGallery()
                
                
                
                ScrollView(showsIndicators:false){
                    Rectangle()
                        .frame(height: 1000.0)
                        .foregroundColor(.red)
                        .cornerRadius(radius: 20,corners: [.topLeft,.topRight])
                    
                }
                
            }
        }
    }
}

struct ProductPageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPageView()
    }
}
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
    }
}

struct ProductImage: View {
    var body: some View {
        AnyView(Image("SoteriaVazo")
            .resizable()
            .scaledToFit().frame(width:UIScreen.width,height:300))
        
    }
}

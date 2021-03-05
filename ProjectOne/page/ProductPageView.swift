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
    @State var selection = 0
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
                
            }.padding(.horizontal).background(Color.white)
            ScrollView(showsIndicators:false){
                ZStack(alignment:.top){
                    ProductImageGallery()
                        .frame(height:300)
                    
                    
                    
              
                    
                    VStack{
                        Text("Hagia Sophia\nDeesis Mosaic Vase")
                            .foregroundColor(.black)
                            .font(.custom("Heavy", size: 30))
                            .padding(.top, 42)
                            .multilineTextAlignment(.center)
                        
                        HStack {
                            
                            
                            HStack(spacing:2) {
                                Image("star_filled")
                                Image("star_filled")
                                
                                Image("star_filled")
                                Image("star_filled")
                                Image("star")
                            }
                            Text("1.284 Reviews")
                                .font(.custom("Book", size: 12))
                                .foregroundColor(Color(hex:"#676870"))
                            
                        }
                        Text("The Virgin Mary in the “Deesis” scene in the south gallery of Hagia Sophia is depicted on the Hagia Sophia Mosaic Vase.")
                            .foregroundColor(Color(hex:"#676870"))
                            .font(.custom("book", size: 14))
                            .padding(.top,11)
                            .padding(.horizontal,30)
                            .multilineTextAlignment(.center)
                        
                        Text("€3450")
                            .foregroundColor(Color(hex:"#CC9D76"))
                                                   .font(.custom("Heavy", size: 30))
                                                   .padding(.top, 8)
                                                   .multilineTextAlignment(.center)
                             SlidingTabView(selection: $selection, tabs: ["Description","Specifications","Reviews"])
                        Rectangle()
                            .frame(height:400)
                        HStack{
                            Image("bookmark")
                            Button(action:{}){
                                 Text("Add to cart")
                                     .foregroundColor(.white)
                                     .kerning(3)
                                     .font(.custom("Medium", size: 15))
                                      
                                    
                                     .frame(width:UIScreen.width * 0.52)
                                  .padding()
                             }
                            
                             .background(Color(hex:"#CC9D76"))
                                 .cornerRadius(22)
                            Image("share")

                        }.padding()
                    }.frame(width:UIScreen.width)
                        .background(Color.white)
                        
                        .cornerRadius(radius: 22,corners: [.topLeft,.topRight])
                        .offset(x: 0, y: 300)
                    
                    
                    
                    
                }
            }.background(Color.black)
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
        .frame(width:UIScreen.width,height: 300).background(Color.black)
    }
}

struct ProductImage: View {
    var body: some View {
        AnyView(Image("SoteriaVazo")
            .resizable()
            .scaledToFit().frame(width:UIScreen.width,height:300)).background(Color.black)
        
    }
}

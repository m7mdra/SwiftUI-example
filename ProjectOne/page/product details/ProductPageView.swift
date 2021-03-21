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
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }){
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
                
            }.padding(.horizontal)
                .background(Color.white)
            ScrollView(showsIndicators:false){
                VStack{
                    ProductImageGallery()
                    
                    VStack{
                        Text("Hagia Sophia\nDeesis Mosaic Vase")
                            .foregroundColor(.black)
                            .font(.custom("Heavy", size: 30))
                            
                            .multilineTextAlignment(.center)
                            .padding(.vertical)
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
                        ProductDetailsTabs()
                        
                        HStack{
                            Spacer()
                            Text("Featured products")
                                .foregroundColor(.black)
                                .font(.custom("Heavy", size: 24))
                            Spacer()
                        }.padding(.horizontal)
                        Group{
                            ScrollView(.horizontal,showsIndicators: false) {
                                HStack(spacing: 10) {
                                    ForEach(0..<CategoryData.list.count) {index in
                                        
                                        HomeCategory(data: CategoryData.list[index])
                                    }
                                }
                            }
                            
                            HStack(alignment: .top, spacing: 0){
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
                        }
                    }.frame(width:UIScreen.width)
                        .background(Color.white)
                        
                        .cornerRadius(radius: 22,corners: [.topLeft,.topRight])
                    
                    
                    
                    
                    
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




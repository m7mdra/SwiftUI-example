//
//  FilterView.swift
//  ProjectOne
//
//  Created by Sharif on 23/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI

struct FilterView : View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var slider = CustomSlider(start: 0, end: 5000)
    
    var body: some View{
        ZStack {
            
            Color.black
            Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
            VStack(){
                VStack(alignment:.leading) {
                    Text("Select categories")
                        .font(.custom("Heavy", size: 20))
                        .padding(.top)
                    HStack{
                        Chip(text: "All Watches")
                        Chip(text: "Collections")
                        Chip(text: "Boutique")
                    }
                    
                    HStack{
                        Chip(text: "Limited")
                        Chip(text: "Expensive")
                        Chip(text: "Classical")
                    }
                }
                
                
                
                
                VStack(alignment:.leading) {
                    Text("Sort watches by")
                        .font(.custom("Heavy", size: 20))
                        .padding(.top)
                    HStack{
                        Chip(text: "Price")
                        Chip(text: "Popularity")
                        Chip(text: "Soteria")
                        Chip(text: "Vase")
                        
                    }
                    
                    HStack{
                        Chip(text: "Top Selling")
                        Chip(text: "Rating")
                        Chip(text: "Archeological")
                    }
                }
                
               
                
                VStack(alignment:.leading) {
                    Text("Select a price range")
                        .font(.custom("Heavy", size: 20))
                        .padding(.top)
                    SliderView(slider: slider)
                        .padding(.top,40)
                        .padding(.horizontal)
                }
                
                VStack(alignment:.center) {
                    Button(action:{
                        
                    }){
                               Text("APPLY")
                                   .foregroundColor(.white)
                                   .kerning(3)
                                   .font(.custom("Medium", size: 15))
                                    
                                  
                                .frame(width:UIScreen.width * 0.6,alignment: .center)
                                .padding()
                           }
                          
                           .background(Color(hex:"#CC9D76"))
                    .cornerRadius(22)
                    .padding(.top)
                    Button(action:{
                        
                    }){
                               Text("CLEAR FILTERS")
                                   .foregroundColor(.black)
                                   .kerning(3)
                                   .font(.custom("Medium", size: 15))
                                    
                                  
                                .frame(width:UIScreen.width * 0.6,alignment: .center)
                                .padding()
                           }
                          
                    .background(Color(hex:"#F7EFE9"))
                    .cornerRadius(22)
                    .padding(.top)
                }                    .padding(.top)

                
                
            }
            .navigationBarTitle("FILTER & SORT",displayMode: .inline)
            .navigationBarColor(.black)
            .navigationBarItems(leading: EmptyView(),trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss();
            }, label: {
                Image("close")
            }))
        }
        
    }
}

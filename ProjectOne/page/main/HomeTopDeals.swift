//
//  TopDeals.swift
//  ProjectOne
//
//  Created by Sharif on 24/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct HomeTopDeals : View{
    var data:HomeTopDealsData
    var body: some View{
        ZStack(alignment:.leading){
            LinearGradient(gradient: Gradient(colors: [ Color(hex:"B86518"),Color(hex:"#272833"),Color(hex:"#272833")]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .cornerRadius(4)
                .frame(height: 160)
            HStack{
                VStack(alignment:.leading){
                    Text(data.name)
                        .foregroundColor(.white)
                        .font(.custom("Heavy", size: 20))
                    Text(data.dimen)
                        .font(.custom("Book", size: 14))
                        .foregroundColor(Color.white)
                    Text(data.price)
                        .foregroundColor(.white)
                        .font(.custom("Heavy", size: 24))
                }.padding(.horizontal)
                Spacer()
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width:220, height:220)
                    .padding(.trailing,-36)
            }
        }.padding(.leading)
        
    }
}
struct HomeTopDealsData {
    var image:String
    var dimen:String
    var price:String
    var name:String
    
    static let list = [
        
        HomeTopDealsData(image: "Gulcehre_ibrik", dimen: "W:32cm H:26cm", price: "€1990", name: "Gulcehre\nIbrik"),
        HomeTopDealsData(image: "MysticalVase", dimen: "W:32cm H:30cm", price: "€3990", name: "Mystical\nVase")
        
    ]
}



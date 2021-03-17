//
//  HomeCategory.swift
//  ProjectOne
//
//  Created by Sharif on 24/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct HomeCategory : View{
    var data:CategoryData
    var body: some View{
        VStack{
            Image(data.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width:138, height:138)
                
                
            
            Text(data.title)
                .foregroundColor(.black)
                
                .font(.custom("Book", size: 14))
            Text(data.price)
                .foregroundColor(.black)
                .font(.custom("Heavy", size: 20))
        }
    }
}
struct CategoryData {
    var image:String
    var title:String
    var price:String
    static let list = [
        CategoryData(image: "thank_god_bowl", title: "Thank God Bowl", price: "€1750"),
        CategoryData(image: "kavuk_vase", title: "Kavuk Vase", price: "€4250"),
        CategoryData(image: "rumili_kase", title: "Rumili Kase", price: "€2350"),
        
    ]
    static let list1 = [
        CategoryData(image: "SoteriaVazo", title: "Hagia Sophia Deesis", price: "€3450"),
        CategoryData(image: "kavuk_vase", title: "Kavuk Vase", price: "€4250"),
        CategoryData(image: "soteria_vase", title: "Soteria Vase", price: "€2950"),
        
    ]
}


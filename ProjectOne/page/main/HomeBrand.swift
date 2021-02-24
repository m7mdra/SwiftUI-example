//
//  HomeBrand.swift
//  ProjectOne
//
//  Created by Sharif on 24/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct HomeBrand : View{
    var data: BrandData
    var body: some View{
        VStack{
            Image(data.image)
                .resizable()
                .scaledToFit()
                .frame(width:122,height:100)
            
            Text(data.name)
                .foregroundColor(.black)
                
                .font(.custom("Book", size: 14))
            
        }
    }
}


struct BrandData {
    var image:String
    var name:String
    
    static var list = [
        BrandData(image: "İnandık_vase", name: "İnandık Vase"),
        BrandData(image: "_devr-i_alem_flask", name: "\"Devr-i Alem\" Flask"),
        BrandData(image: "soteria_vase", name: "\"Soteria\" Vase")
        
    ]
}

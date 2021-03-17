//
//  Section.swift
//  ProjectOne
//
//  Created by Sharif on 17/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct DescriptionSection : View {
    var key:String
    var value:String
    var body: some View{
        VStack {
            HStack{
                Text(key)
                    .foregroundColor(Color(hex:"#676870"))
                    .multilineTextAlignment(.center)
                    .font(.custom("book", size: 14))
                Spacer()
                Text(value  )
                    .foregroundColor(Color(hex:"#272833"))
                    .multilineTextAlignment(.center)
                    .font(.custom("book", size: 14))
                
            }.padding(.vertical,20)
            Divider()
        }.padding(.horizontal,25)
    }
}

struct DescriptionSection_Previews: PreviewProvider {
    static var previews: some View {
        VStack(){
            DescriptionSection(key: "Case diameter", value: "Diameter: 20 cm Length: 40 cm")
            DescriptionSection(key: "Product Origin", value: "Turkey")
            DescriptionSection(key: "Production method", value: "100% handmade.")
            DescriptionSection(key: "Material", value: "Gold and Glass crafting")
            DescriptionSection(key: "Strap color", value: "Gold Color")
        }
    }
}

//
//  Chip.swift
//  ProjectOne
//
//  Created by Sharif on 23/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct Chip : View {
    @State var isSelected = false
    var text:String
    var body: some View{
        Text(text)
            .font(.custom("Book", size: 14))
            
            
            .padding(.top, 10)
            .padding(.bottom,10)
            .padding(.leading,15)
            .padding(.trailing,15)
            .foregroundColor(isSelected ? Color.white: Color(hex:"#272833"))
            .background(isSelected ? Color(hex:"#CC9D76"):Color(hex:"#F7F7F7"))
        .cornerRadius(15)
            .onTapGesture {
                withAnimation {
                    self.isSelected = !self.isSelected
                }
        }.padding(4)

    }
}

struct Chip_Previews: PreviewProvider {
    static var previews: some View {
        Chip(text: "Hello")
    }
}

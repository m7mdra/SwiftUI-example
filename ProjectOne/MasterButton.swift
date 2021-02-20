//
//  MasterButton.swift
//  testProject
//
//  Created by Sharif on 20/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct MasterButton : View{
    var action: () -> Void
    var label:String
    var body:some View{
        Button(action:action){
            Text(label)
                .foregroundColor(.white)
                .kerning(3)
                .font(.custom("Medium", size: 15))
                 
               
                .frame(width:UIScreen.width * 0.6)
             .padding()
        }
       
        .background(with: Color(hex:"#D7A324"))
            .cornerRadius(22)
            
        
    }
}

struct MasterButton_Previews: PreviewProvider {
    static var previews: some View {
        MasterButton(action: {}, label: "MASTER BUTTON")
    }
}

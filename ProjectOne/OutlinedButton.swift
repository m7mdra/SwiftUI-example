//
//  OutlinedButton.swift
//  testProject
//
//  Created by Sharif on 20/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct OutlinedButton : View{
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

                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 1)
                )

        }
        
        
    }
}

struct OutlinedButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
              MasterButton(action:{},label: "SIGN IN").background(with: Color.black)
        OutlinedButton(action:{},label: "CREATE  ACCOUNT").background(with: Color.black)
    }
    }
}

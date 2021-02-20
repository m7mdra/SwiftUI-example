//
//  SocialButton.swift
//  ProjectOne
//
//  Created by Sharif on 20/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct SocialButton : View{
    var action: () -> Void
    var label:String
    var image:String
    var hexColor:String
    var body:some View{
        Button(action:action){
            HStack{
                Image(image)
                    .foregroundColor(Color(hex:hexColor))
                    .padding(.leading,8)
                Text(label)
                    
                    .foregroundColor(Color(hex:hexColor))
                    .font(.custom("Book", size: 14))
                    
                    .frame(width:UIScreen.width * 0.5)
                
                
                
            }.padding(.horizontal)
                .padding(.vertical)
                .overlay(
                    RoundedRectangle(cornerRadius: 22)
                        .stroke(Color(hex:hexColor), lineWidth: 1)
            )
        }
        
    }
}

struct SocialButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            MasterButton(action: {
                
            }, label: "SIGN UP")
            SocialButton(action: {
                  
              }, label: "Continue with Google",image: "google",hexColor: "#DE4D3B")
            SocialButton(action: {
                  
              }, label: "Continue with Facebook",image: "facebook",hexColor: "#4267B2")
        }
    }
}

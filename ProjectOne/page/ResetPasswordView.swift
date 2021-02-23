//
//  ResetPasswordView.swift
//  ProjectOne
//
//  Created by Sharif on 23/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct ResetPasswordView : View{
    @State private var username:String = ""

    var body: some View{
        NavigationContent( label: "RESET PASSWORD"){
            AnyView(
                VStack{
                    Text("Forgot your password?")
                        .foregroundColor(.black)
                        .font(.custom("Heavy", size: 30))
                        .padding(.top, 16)
                    Text("Enter your email address and we will send you instructions on how to reset your password.")
                        .font(.custom("Book", size: 14))
                        .foregroundColor(Color(hex:"#676870"))
                        .padding(.top, 4)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                    UnderlineTextField(lable: "Email", text: self.$username)
                        .padding(.top, 12)
                  Spacer()
                    MasterButton(action: {
                        
                    }, label: "RECOVER EMAIL")
                        .padding(.vertical, 16)

          
                    
                }
            )
        }
    }
}

struct ResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ResetPasswordView()
    }
}

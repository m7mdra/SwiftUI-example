//
//  LoginView.swift
//  ProjectOne
//
//  Created by Sharif on 21/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct LoginView : View  {
    @State private var username:String = ""
    var body : some View {
        NavigationContent( label: "Login"){
            AnyView(
                VStack{
                    Text("Let’s sign you in")
                        .foregroundColor(.black)
                        .font(.custom("Heavy", size: 30))
                        .padding(.top, 16)
                    Text("Welcome back, you’ve been missed!")
                        .font(.custom("Book", size: 14))
                        .foregroundColor(Color(hex:"#676870"))
                        .padding(.top, 4)
                        .multilineTextAlignment(.center)
                    UnderlineTextField(lable: "Username or email", text: self.$username)
                        .padding(.top, 12)
                    
                    SecureUnderlineTextField(lable:"Password", text: self.$username)
                        .padding(.top, 12)
                
                    MasterButton(action: {
                        
                    }, label: "LOG IN").padding(.top, 16)
                    HStack(){
                        CheckBox()
                        Spacer()
                        Text("Forgot password?")
                        .font(.custom("Book", size: 14))
                                               .foregroundColor(.black)
                    }.padding(.horizontal, 30)
                        .padding(.vertical,16)
                      Spacer()
                    SocialButton(action: {
                        
                    }, label: "Continue with Google",image: "google",hexColor: "#DE4D3B")
                    SocialButton(action: {
                        
                    }, label: "Continue with Facebook",image: "facebook",hexColor: "#4267B2")
                    
                    HStack{
                        Text("Don’t have an account? ")
                            .foregroundColor(Color(hex:"#676870"))
                            .font(.custom("Book", size: 14))
                        Text("Sign Up")
                            .foregroundColor(.black)
                            .font(.custom("Book", size: 14))
                    }.padding(.vertical, 16)
                    
                }
            )
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

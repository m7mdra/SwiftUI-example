//
//  RegisterView.swift
//  ProjectOne
//
//  Created by Sharif on 20/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI

struct NavigationContent : View {
    var label:String
    var leading : AnyView  = Backbutton().toAnyView()
    var trailing : AnyView = Text("").toAnyView()
    var content: () -> AnyView

    var body:some View{
        ZStack(alignment:.top){
            Color.black
            VStack{
                HStack{
                    leading
                    Spacer()
                    Text(label)
                        .font(.custom("Book", size: 13))
                        .foregroundColor(.white)
                        .offset(x:-5)
                    Spacer()
                    trailing
                }.padding()
                ZStack{
                    Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
                    content()
                }
            }
        }
    }
}
struct Backbutton : View {
    var body: some View{
        Image("arrow-left")
                                .foregroundColor(.white)
    }
}
struct RegisterView : View {
    @State private var username:String = ""
    var body: some View{
        NavigationContent( label: "REGISTER"){
            AnyView(ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Text("Create your account")
                        .foregroundColor(.black)
                        .font(.custom("Heavy", size: 30))
                        .padding(.top, 16)
                    Text("After your registration is complete,\nyou can see our opportunity products.")
                        .font(.custom("Book", size: 14))
                        .foregroundColor(Color(hex:"#676870"))
                        .padding(.top, 4)
                        .multilineTextAlignment(.center)
                    UnderlineTextField(lable: "Username", text: self.$username)
                        .padding(.top, 12)
                    UnderlineTextField(lable: "Email", text: self.$username)
                        .padding(.top, 12)
                    SecureUnderlineTextField(lable: "Password", text: self.$username)
                        .padding(.top, 12)
                    UnderlineTextField(lable: "Phone", text: self.$username)
                        .padding(.top, 12)
                    MasterButton(action: {
                        
                    }, label: "SIGN UP").padding(.top, 8)
                    SocialButton(action: {
                          
                      }, label: "Continue with Google",image: "google",hexColor: "#DE4D3B")
                    SocialButton(action: {
                          
                      }, label: "Continue with Facebook",image: "facebook",hexColor: "#4267B2")
                    
                    HStack{
                        Text("Already have an account?")
                            .foregroundColor(Color(hex:"#676870"))
                                              .font(.custom("Book", size: 14))
                        Text("Sign In")
                        .foregroundColor(.black)
                                              .font(.custom("Book", size: 14))
                    }.padding(.vertical, 8)
                    
                }
            })
        }
    }
}
extension View{
    func toAnyView() -> AnyView{
        return AnyView(self)
    }
}
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}


struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner
    
    struct CornerRadiusShape: Shape {
        
        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners
        
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }
    
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

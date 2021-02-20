//
//  RegisterView.swift
//  ProjectOne
//
//  Created by Sharif on 20/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI

struct CreateAccountView : View {
    var body:some View{
        ZStack(alignment:.top){
            Color.black
            VStack{
            HStack{
                
                Button(action: {
                    
                }, label: {
                    Image("arrow-left")
                        .foregroundColor(.white)
                })
                Spacer()
                Text("REGISTER")
                    .font(.custom("Book", size: 13))
                    .foregroundColor(.white)
                    .offset(x:-10)
                Spacer()
            }.padding()
                Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
            }
        }.preferredColorScheme(.dark)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
       CreateAccountView()
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

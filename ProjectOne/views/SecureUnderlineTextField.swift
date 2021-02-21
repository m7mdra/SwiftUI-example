//
//  SecureUnderlineTextField.swift
//  ProjectOne
//
//  Created by Sharif on 21/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct SecureUnderlineTextField :View {
    var lable: String = ""
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    @State private var showPassword : Bool = false
    var body: some View{
        VStack{
            ZStack(alignment:.leading){
                if text.isEmpty {
                    Text(lable)
                        .font(.custom("Book", size: 16))
                        .foregroundColor(.black)
                        .padding(.horizontal, 4)
                }
                HStack{
                    SecureField("", text: self.$text, onCommit: commit)
                        .font(.custom("Book", size: 16))
                        .padding()
                    
                    Button(action: {
                        self.showPassword = !self.showPassword
                    }, label: {
                        return  Image(self.showPassword ? "password_off" : "password_on")
                            .renderingMode(.original)
                    })
                    
                }
            }.padding(.horizontal, 30)
            
            
            Rectangle()
                .fill(Color.black.opacity(0.1))
                .frame(height: 1)
                .edgesIgnoringSafeArea(.horizontal)
                .padding(.horizontal, 30)
        }
    }
}

struct SecureUnderlineTextField_Previews: PreviewProvider {
    static var previews: some View {
        SecureUnderlineTextField(lable: "", text: .constant(""))
    }
}

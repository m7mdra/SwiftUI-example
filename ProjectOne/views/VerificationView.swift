//
//  VerificationView.swift
//  ProjectOne
//
//  Created by Sharif on 20/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
struct VerificationView : View {
    @State var isEditing = false
    @State var value = "2"
    var body: some View{
        VStack{
            TextField("•", text: $value,onEditingChanged: {editing in
                self.isEditing = editing
            })
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .textFieldStyle(PlainTextFieldStyle())
                .onReceive(Just(value)) { _ in self.limitText(1) }
            
            if(!isEditing){
                Rectangle()
                    .fill(Color.black.opacity(0.1))
                    .frame(height: 1)
                    .padding(.horizontal, 12)
            }else{
                Rectangle()
                    .fill(Color(hex:"#CC9D76"))
                    .frame(height: 1)
                    .padding(.horizontal, 12)
                
            }
        }
    }
    //Function to keep text length in limits
    func limitText(_ upper: Int) {
        if value.count > upper {
            value = String(value.prefix(upper))
        }
    }
}

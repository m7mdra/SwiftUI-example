//
//  UnderlineTextField.swift
//  ProjectOne
//
//  Created by Sharif on 20/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct UnderlineTextField :View {
    var lable: String = ""
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    var body: some View{
        VStack{
            ZStack(alignment:.leading){
                if text.isEmpty {
                    Text(lable)
                        .font(.custom("Book", size: 16))
                        .foregroundColor(.black)
                    .padding(.horizontal, 4)
                }
                TextField("", text: self.$text,onEditingChanged: editingChanged, onCommit: commit)
                    .font(.custom("Book", size: 16))
                .padding()
                
                
            }.padding(.horizontal, 30)
            
            Rectangle()
                .fill(Color.black.opacity(0.1))
                .frame(height: 1)
                .edgesIgnoringSafeArea(.horizontal)
                .padding(.horizontal, 30)
        }
    }
}

struct UnderlineTextField_Previews: PreviewProvider {
    
    static var previews: some View {
        
        UnderlineTextField(lable: "User", text: .constant(""))
        
    }
}
struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State var value: Value
    var content: (Binding<Value>) -> Content
    
    var body: some View {
        content($value)
    }
    
    init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
        self._value = State(wrappedValue: value)
        self.content = content
    }
}

//
//  CheckBox.swift
//  ProjectOne
//
//  Created by Sharif on 21/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct CheckBox : View{
    @State var isChecked = false
    var onChecked:(Bool)->Void = {_ in }
    var body: some View{
            Button(action: {
                self.isChecked = !self.isChecked
            }) {
                return HStack{
                    Image(self.isChecked ? "checkbox" : "checkedbox")
                    .renderingMode(.original)
                    Text("Remember me")
                        .font(.custom("Book", size: 14))
                        .foregroundColor(.black)
                }
            }
           
        
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
   
        CheckBox { isChecked in
            
        }

        
    }
}

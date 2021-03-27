//
//  AddressView.swift
//  ProjectOne
//
//  Created by Sharif on 24/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import SwiftUI
struct AddressView: View {
    var action:()->Void = {}
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text("HOME ADDRESS")
                    .font(.custom("Book", size: 14))
                    .foregroundColor(Color(hex:"#676870"))
                Spacer()
                
                Button(action: {
                    self.action()
                }, label: {
                    Text("Change")
                    .font(.custom("Book", size: 14))
                    .foregroundColor(Color(hex:"#cc9d76"))
                })
            }.padding(.bottom)
            Text("Dereboyu Cad. 23,")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#272833"))
            Text("34410 - Istanbul/Türkiye")
                .font(.custom("Book", size: 14))
                .foregroundColor(Color(hex:"#272833"))
            
            Divider().padding(.vertical,4)
        }.padding(.horizontal,30)
            .padding(.vertical)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
        
    }
}

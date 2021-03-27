//
//  AddAddressView.swift
//  ProjectOne
//
//  Created by Sharif on 27/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import SwiftUI
struct AddAddressView :  View {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View{
        NavigationView {
            Text("Hello")
            .navigationBarColor(.clear)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss();
            }, label: {
                Image("arrow-left-black")
                    .renderingMode(.original)
        }))
        }
    }
}

struct AddAddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddAddressView()
    }
}

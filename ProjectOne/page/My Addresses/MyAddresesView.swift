//
//  MyAddresesView.swift
//  ProjectOne
//
//  Created by Sharif on 24/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import SwiftUI
struct MyAddresesView : View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View{
        ZStack {
            Color.black
            Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
            VStack{
                AddressView()
                AddressView()
                Spacer()
                MasterButton(action: {}, label: "Add another address".uppercased())
            }
                
            .navigationBarTitle("My addresses",displayMode: .inline)
            .navigationBarColor(.black)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss();
            }, label: {
                Image("arrow-left")
            }))
        }
    }
}

struct MyAddresesView_Previews: PreviewProvider {
    static var previews: some View {
        MyAddresesView()
    }
}


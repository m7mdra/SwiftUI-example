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
   @State var isActive = false
    var body: some View{
        ZStack {
            Color.black
            Color.white.cornerRadius(radius: 20,  corners: [.topLeft,.topRight])
            VStack{
                NavigationLink(destination: AddAddressView(),isActive:$isActive ){
                    AddressView{
                        
                        self.isActive = true
                    }
                }
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


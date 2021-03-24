//
//  SettingsView.swift
//  ProjectOne
//
//  Created by Sharif on 24/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI

struct SettingsView :View {
    var body: some View{
        VStack{
            ZStack(alignment:.bottomTrailing){
                Image("avatar")
                Image("camera_button")
            }.padding(.vertical)
            Text("Ugur Ates")
                .font(.custom("Heavy", size: 20))
            Text("ugurates19@gmail.com")
                .font(.custom("Book", size: 14))
            ScrollView(showsIndicators:false){
                NavigationLink(destination: OrderHistoryView()){ SettingsTile(title: "Order History"){
                    
                    }
                }.accentColor(.black)
                SettingsTile(title: "My Addresses")
                SettingsTile(title: "My Cards")
                SettingsTile(title: "Vouchers")
                SettingsTile(title: "Nearby Stores")
                SettingsTile(title: "Latest Articles")
                SettingsTile(title: "Settings")
                
            }.padding()
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


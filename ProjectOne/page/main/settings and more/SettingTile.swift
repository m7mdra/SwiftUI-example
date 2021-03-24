//
//  SettingTile.swift
//  ProjectOne
//
//  Created by Sharif on 24/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import SwiftUI
struct SettingsTile: View {
    var title:String
    var action: ()->Void = {}
    var body: some View {
        VStack {
            HStack{
                Text(title)
                    .font(.custom("Book", size: 16))
                
                Spacer()
                Image("arrow_left")
                
            }
            Divider()
        }.padding(10)
            .onTapGesture(count: 1 ) {
                self.action()
        }
    }
}

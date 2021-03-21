//
//  OnBoardingThirdPage.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct OnBoardingThirdPage : View{
    var body: some View {
        VStack{
            Spacer()
            
            Image("MysticalVase")
                .resizable()
                .scaledToFit().padding(.top, 16)
            
            Text("€3450")
                .font(.custom("Heavy", size: 20))
            Text("HISTORY CULTURE GLASS")
                .font(.custom("Book", size: 13))
            Text("Mystical Vase\nLimited Edition")
                .font(.custom("Heavy", size: 40))
                .kerning(-3)
                .multilineTextAlignment(.center)
            
            
            Spacer()
            OutlinedButton(action: {
                
            }, label: "SIGN IN")
                .padding(.bottom, 8)
                .padding(.top, 8)
            
            MasterButton(action: {
                
            }, label: "CREATE ACCOUNT")
                .padding(.bottom, 8)
            
        }
    }
}

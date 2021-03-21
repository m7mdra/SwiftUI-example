//
//  OnBoardingFirstPage.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct OnBoardingFirstPage : View{
    var body: some View{
        VStack{
            Spacer()
            
            Image("Gulcehre_ibrik")
                .resizable()
                .scaledToFit()
            Text("€5650")
            
            Text("HISTORY CULTURE GLASS")
                .font(.custom("Book", size: 13))
            Text("Gülçehre İbrik\nLimited Edition")
                .font(.custom("Heavy", size: 40))
                .multilineTextAlignment(.center)
                .padding(.top, 8)
            Spacer()
            
            MasterButton(action: {
                
            }, label: "MASTER BUTTON")
                .padding(.bottom, 8)
            
        }
    }
}

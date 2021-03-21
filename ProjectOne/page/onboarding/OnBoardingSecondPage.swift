//
//  OnBoardingSecondPage.swift
//  ProjectOne
//
//  Created by Sharif on 21/03/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct OnBoardingSecondPage : View{
    var body: some View {
        VStack{
            Spacer()
            
            Text("HISTORY CULTURE GLASS")
                .font(.custom("Book", size: 13))
            
            
            Text("Hagia Sophia\nDeesis Mosaic Vase")
                .font(.custom("Heavy", size: 40))
                .kerning(-3)
                .multilineTextAlignment(.center)
            Text("€3450")
                .font(.custom("Heavy", size: 20))
            Image("SoteriaVazo")
                .resizable()
                .scaledToFit()
            Spacer()
            
            MasterButton(action: {
                
            }, label: "MASTER BUTTON")
                .padding(.bottom, 8)
            
        }
    }
}

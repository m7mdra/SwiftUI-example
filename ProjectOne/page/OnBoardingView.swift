//
//  ContentView.swift
//  ProjectOne
//
//  Created by Sharif on 20/02/2021.
//  Copyright © 2021 Sharif. All rights reserved.
//

import Foundation
import SwiftUI
struct OnBoardingView : View {
    @State var currentPage:Int = 0
    var body: some View{
        ZStack(alignment:.top){
            PageViewController<AnyView>(pages: [
                AnyView(OnBoardingFirstPage()),
                AnyView(OnBoardingSecondPage()),
                AnyView(OnBoardingThirdPage())], currentPage: $currentPage)
            PageControl(numberOfPages: 3, currentPage: $currentPage)
            
        }.preferredColorScheme(.dark)
    }
}

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
struct OnBoardingView_Previews: PreviewProvider {

    static var previews: some View {

        OnBoardingView()

    }

}

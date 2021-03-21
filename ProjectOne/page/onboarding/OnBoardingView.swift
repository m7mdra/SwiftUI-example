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




struct OnBoardingView_Previews: PreviewProvider {

    static var previews: some View {

        OnBoardingView()

    }

}
